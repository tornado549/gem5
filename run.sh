set -e
set -x

WORKDIR=`pwd`

# exit 0

# clang++ $1 -o $2 -I${GEM5_HOME}/include/ -L${GEM5_HOME}/util/m5/build/x86/out -lm5 -static

EXEC=$1

# build/X86/gem5.opt configs/deprecated/example/se.py --cmd=$EXEC --cpu-type=TimingSimpleCPU --l1d_size=128B --l1i_size=16kB --caches
sudo build/X86/gem5.opt configs/deprecated/example/se.py --cmd=$EXEC --cpu-type=X86TimingSimpleCPU --l1d_size=32kB --l1i_size=32kB --l2_size=1024kB --l3_size=12MB --caches --mem-size=20GB
# sudo build/X86/gem5.opt configs/deprecated/example/se.py --cmd=$EXEC --cpu-type=TimingSimpleCPU --l1d_size=32kB --l1i_size=32kB --l2_size=1024kB --l3_size=28160kB --caches --mem-size=20GB