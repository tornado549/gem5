# Copyright (c) 2006-2007 The Regents of The University of Michigan
# Copyright (c) 2009 Advanced Micro Devices, Inc.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met: redistributions of source code must retain the above copyright
# notice, this list of conditions and the following disclaimer;
# redistributions in binary form must reproduce the above copyright
# notice, this list of conditions and the following disclaimer in the
# documentation and/or other materials provided with the distribution;
# neither the name of the copyright holders nor the names of its
# contributors may be used to endorse or promote products derived from
# this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
# OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# Authors: Ron Dreslinski
#          Brad Beckmann

import m5
from m5.objects import *
from m5.defines import buildEnv
from m5.util import addToPath
import os, optparse, sys
addToPath('../common')

parser = optparse.OptionParser()

parser.add_option("-a", "--atomic", action="store_true",
                  help="Use atomic (non-timing) mode")
parser.add_option("-b", "--blocking", action="store_true",
                  help="Use blocking caches")
parser.add_option("-l", "--maxloads", metavar="N", default=0,
                  help="Stop after N loads")
parser.add_option("-m", "--maxtick", type="int", default=m5.MaxTick,
                  metavar="T",
                  help="Stop after T ticks")

parser.add_option("-t", "--testers", type="int", metavar="N", default=1,
                  help="number of testers/cores")

parser.add_option("-f", "--functional", type="int", default=0,
                  metavar="PCT",
                  help="Target percentage of functional accesses "
                  "[default: %default]")
parser.add_option("-u", "--uncacheable", type="int", default=0,
                  metavar="PCT",
                  help="Target percentage of uncacheable accesses "
                  "[default: %default]")

parser.add_option("--progress", type="int", default=1000,
                  metavar="NLOADS",
                  help="Progress message interval "
                  "[default: %default]")

(options, args) = parser.parse_args()

if args:
     print "Error: script doesn't take any positional arguments"
     sys.exit(1)

block_size = 64

if options.testers > block_size:
     print "Error: Number of testers %d limited to %d because of false sharing" \
           % (options.testers, block_size)
     sys.exit(1)

cpus = [ MemTest(atomic=options.atomic, max_loads=options.maxloads, \
                 percent_functional=options.functional, \
                 percent_uncacheable=options.uncacheable, \
                 progress_interval=options.progress) \
         for i in xrange(options.testers) ]

system = System(cpu = cpus,
                funcmem = PhysicalMemory(),
                physmem = PhysicalMemory())

class L1Cache(RubyCache):
    assoc = 2
    latency = 3
    size = 32768

class L2Cache(RubyCache):
    assoc = 16
    latency = 15
    size = 1048576

#
# The ruby network creation expects the list of nodes in the system to be
# consistent with the NetDest list.  Therefore the l1 controller nodes must be
# listed before the directory nodes and directory nodes before dma nodes, etc.
#
l1_cntrl_nodes = []
dir_cntrl_nodes = []
dma_cntrl_nodes = []

#
# Must create the individual controllers before the network to ensure the
# controller constructors are called before the network constructor
#
for (i, cpu) in enumerate(cpus):
    #
    # First create the Ruby objects associated with this cpu
    # Eventually this code should go in a python file specific to the
    # MOESI_hammer protocol
    #
    l1i_profiler = CacheProfiler(description = ("l1i_%s_profiler" % i))
    l1i_cache = L1Cache(cache_profiler = l1i_profiler)

    l1d_profiler = CacheProfiler(description = ("l1d_%s_profiler" % i))
    l1d_cache = L1Cache(cache_profiler = l1d_profiler)

    l2_profiler = CacheProfiler(description = ("l2_%s_profiler" % i))
    l2_cache = L2Cache(cache_profiler = l2_profiler)

    cpu_seq = RubySequencer(icache = l1i_cache,
                            dcache = l1d_cache,
                            funcmem_port = system.physmem.port)

    l1_cntrl = L1Cache_Controller(version = i,
                                  sequencer = cpu_seq,
                                  L1IcacheMemory = l1i_cache,
                                  L1DcacheMemory = l1d_cache,
                                  L2cacheMemory = l2_cache)

    mem_cntrl = RubyMemoryControl(version = i)
    
    dir_cntrl = Directory_Controller(version = i,
                                     directory = RubyDirectoryMemory(),
                                     memBuffer = mem_cntrl)

    dma_cntrl = DMA_Controller(version = i,
                               dma_sequencer = DMASequencer())
    #
    # As noted above: Two independent list are track to maintain the order of
    # nodes/controllers assumed by the ruby network
    #
    l1_cntrl_nodes.append(l1_cntrl)
    dir_cntrl_nodes.append(dir_cntrl)
    dma_cntrl_nodes.append(dma_cntrl)

    #
    # Finally tie the memtester ports to the correct system ports
    #
    cpu.test = cpu_seq.port
    cpu.functional = system.funcmem.port
    

#
# Important: the topology constructor must be called before the network
# constructor.
#
network = SimpleNetwork(topology = makeCrossbar(l1_cntrl_nodes + \
                                                dir_cntrl_nodes + \
                                                dma_cntrl_nodes))

mem_size_mb = sum([int(dir_cntrl.directory.size_mb) \
                   for dir_cntrl in dir_cntrl_nodes])

#
# determine the number of memory controllers and other memory controller
# parameters for the profiler
#
mcCount = len(dir_cntrl_nodes)
banksPerRank = dir_cntrl_nodes[0].memBuffer.banks_per_rank
ranksPerDimm = dir_cntrl_nodes[0].memBuffer.ranks_per_dimm
dimmsPerChannel = dir_cntrl_nodes[0].memBuffer.dimms_per_channel

ruby_profiler = RubyProfiler(mem_cntrl_count = mcCount,
                             banks_per_rank = banksPerRank,
                             ranks_per_dimm = ranksPerDimm,
                             dimms_per_channel = dimmsPerChannel)

system.ruby = RubySystem(clock = '1GHz',
                         network = network,
                         profiler = ruby_profiler,
                         tracer = RubyTracer(),
                         debug = RubyDebug(filter_string = 'none',
                                           verbosity_string = 'none',
                                           protocol_trace = False),
                         mem_size_mb = mem_size_mb)


# -----------------------
# run simulation
# -----------------------

root = Root( system = system )
if options.atomic:
    root.system.mem_mode = 'atomic'
else:
    root.system.mem_mode = 'timing'

# Not much point in this being higher than the L1 latency
m5.ticks.setGlobalFrequency('1ns')

# instantiate configuration
m5.instantiate(root)

# simulate until program terminates
exit_event = m5.simulate(options.maxtick)

print 'Exiting @ tick', m5.curTick(), 'because', exit_event.getCause()
