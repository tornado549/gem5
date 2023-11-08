	.text
	.file	"main.cc"
	.globl	_Z13__reset_statsv              # -- Begin function _Z13__reset_statsv
	.p2align	4, 0x90
	.type	_Z13__reset_statsv,@function
_Z13__reset_statsv:                     # @_Z13__reset_statsv
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%edi, %edi
	xorl	%esi, %esi
	jmp	m5_reset_stats                  # TAILCALL
.Lfunc_end0:
	.size	_Z13__reset_statsv, .Lfunc_end0-_Z13__reset_statsv
	.cfi_endproc
                                        # -- End function
	.globl	_Z12__dump_statsv               # -- Begin function _Z12__dump_statsv
	.p2align	4, 0x90
	.type	_Z12__dump_statsv,@function
_Z12__dump_statsv:                      # @_Z12__dump_statsv
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%edi, %edi
	xorl	%esi, %esi
	jmp	m5_dump_stats                   # TAILCALL
.Lfunc_end1:
	.size	_Z12__dump_statsv, .Lfunc_end1-_Z12__dump_statsv
	.cfi_endproc
                                        # -- End function
	.globl	_Z17fillArrayRandomlyPii        # -- Begin function _Z17fillArrayRandomlyPii
	.p2align	4, 0x90
	.type	_Z17fillArrayRandomlyPii,@function
_Z17fillArrayRandomlyPii:               # @_Z17fillArrayRandomlyPii
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$5008, %rsp                     # imm = 0x1390
	.cfi_def_cfa_offset 5056
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
                                        # kill: def $esi killed $esi def $rsi
	movq	%rdi, %r14
	movq	$1000, 8(%rsp)                  # imm = 0x3E8
	movl	$1, %r9d
	movl	$1000, %edi                     # imm = 0x3E8
	movl	$16, %ecx
	movl	$2, %r11d
	xorl	%r10d, %r10d
	movabsq	$945986875574848801, %r8        # imm = 0xD20D20D20D20D21
	.p2align	4, 0x90
.LBB2_1:                                # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r11, %rdx
	shrq	$4, %rdx
	mulxq	%r8, %rbx, %rbx
	movq	%r10, %rdx
	shrq	$4, %rdx
	mulxq	%r8, %rdx, %rdx
	shrq	%rdx
	imull	$624, %edx, %edx                # imm = 0x270
	movl	%r9d, %eax
	subl	%edx, %eax
	movq	%rdi, %rdx
	shrq	$30, %rdx
	xorl	%edi, %edx
	imull	$1812433253, %edx, %edx         # imm = 0x6C078965
	addl	%eax, %edx
	movq	%rdx, (%rsp,%rcx)
	cmpq	$4992, %rcx                     # imm = 0x1380
	je	.LBB2_2
# %bb.6:                                # %for.body.i.i.1
                                        #   in Loop: Header=BB2_1 Depth=1
	shrq	%rbx
	imulq	$624, %rbx, %rax                # imm = 0x270
	movq	%r11, %rdi
	subq	%rax, %rdi
	movq	%rdx, %rax
	shrq	$30, %rax
	xorl	%edx, %eax
	imull	$1812433253, %eax, %eax         # imm = 0x6C078965
	addl	%eax, %edi
	movq	%rdi, 8(%rsp,%rcx)
	addq	$2, %r9
	addq	$16, %rcx
	addq	$2, %r11
	addq	$2, %r10
	jmp	.LBB2_1
.LBB2_2:                                # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit
	movq	$624, 5000(%rsp)                # imm = 0x270
	leal	-1(%rsi), %eax
	movl	$0, (%rsp)
	movl	%eax, 4(%rsp)
	testl	%esi, %esi
	jle	.LBB2_5
# %bb.3:                                # %for.body.preheader
	movl	%esi, %r12d
	xorl	%ebx, %ebx
	leaq	8(%rsp), %r15
	movq	%rsp, %r13
	.p2align	4, 0x90
.LBB2_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	cltq
	imulq	$1759218605, %rax, %rcx         # imm = 0x68DB8BAD
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$51, %rcx
	addl	%edx, %ecx
	imull	$1280000, %ecx, %ecx            # imm = 0x138800
	subl	%ecx, %eax
	movl	%eax, (%r14,%rbx,4)
	incq	%rbx
	cmpq	%rbx, %r12
	jne	.LBB2_4
.LBB2_5:                                # %for.cond.cleanup
	addq	$5008, %rsp                     # imm = 0x1390
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_Z17fillArrayRandomlyPii, .Lfunc_end2-_Z17fillArrayRandomlyPii
	.cfi_endproc
                                        # -- End function
	.globl	_Z10clearCachev                 # -- Begin function _Z10clearCachev
	.p2align	4, 0x90
	.type	_Z10clearCachev,@function
_Z10clearCachev:                        # @_Z10clearCachev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$5016, %rsp                     # imm = 0x1398
	.cfi_def_cfa_offset 5056
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$16777216, %edi                 # imm = 0x1000000
	callq	_Znam
	movq	%rax, %r12
	movq	$1000, 16(%rsp)                 # imm = 0x3E8
	movl	$1, %r9d
	movl	$1000, %esi                     # imm = 0x3E8
	movl	$16, %ecx
	movl	$2, %eax
	xorl	%r10d, %r10d
	movabsq	$945986875574848801, %r8        # imm = 0xD20D20D20D20D21
	.p2align	4, 0x90
.LBB3_1:                                # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdx
	shrq	$4, %rdx
	mulxq	%r8, %rbx, %rbx
	movq	%r10, %rdx
	shrq	$4, %rdx
	mulxq	%r8, %rdx, %rdx
	shrq	%rdx
	imull	$624, %edx, %edx                # imm = 0x270
	movl	%r9d, %edi
	subl	%edx, %edi
	movq	%rsi, %rdx
	shrq	$30, %rdx
	xorl	%esi, %edx
	imull	$1812433253, %edx, %edx         # imm = 0x6C078965
	addl	%edi, %edx
	movq	%rdx, 8(%rsp,%rcx)
	cmpq	$4992, %rcx                     # imm = 0x1380
	je	.LBB3_2
# %bb.7:                                # %for.body.i.i.i.1
                                        #   in Loop: Header=BB3_1 Depth=1
	shrq	%rbx
	imulq	$624, %rbx, %rdi                # imm = 0x270
	movq	%rax, %rsi
	subq	%rdi, %rsi
	movq	%rdx, %rdi
	shrq	$30, %rdi
	xorl	%edx, %edi
	imull	$1812433253, %edi, %edx         # imm = 0x6C078965
	addl	%edx, %esi
	movq	%rsi, 16(%rsp,%rcx)
	addq	$2, %r9
	addq	$16, %rcx
	addq	$2, %rax
	addq	$2, %r10
	jmp	.LBB3_1
.LBB3_2:                                # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
	movq	$624, 5008(%rsp)                # imm = 0x270
	movabsq	$18014394214514688, %rax        # imm = 0x3FFFFF00000000
	movq	%rax, 8(%rsp)
	xorl	%ebx, %ebx
	leaq	16(%rsp), %r14
	leaq	8(%rsp), %r15
	.p2align	4, 0x90
.LBB3_3:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	cltq
	imulq	$1759218605, %rax, %rcx         # imm = 0x68DB8BAD
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$51, %rcx
	addl	%edx, %ecx
	imull	$1280000, %ecx, %ecx            # imm = 0x138800
	subl	%ecx, %eax
	movl	%eax, (%r12,%rbx,4)
	incq	%rbx
	cmpq	$4194304, %rbx                  # imm = 0x400000
	jne	.LBB3_3
# %bb.4:                                # %_Z17fillArrayRandomlyPii.exit
	vpxor	%xmm0, %xmm0, %xmm0
	movl	$28, %eax
	vpxor	%xmm1, %xmm1, %xmm1
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm3, %xmm3, %xmm3
	.p2align	4, 0x90
.LBB3_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vpmovsxdq	-112(%r12,%rax,4), %ymm4
	vpaddq	%ymm4, %ymm0, %ymm0
	vpmovsxdq	-96(%r12,%rax,4), %ymm4
	vpaddq	%ymm4, %ymm1, %ymm1
	vpmovsxdq	-80(%r12,%rax,4), %ymm4
	vpaddq	%ymm4, %ymm2, %ymm2
	vpmovsxdq	-64(%r12,%rax,4), %ymm4
	vpaddq	%ymm4, %ymm3, %ymm3
	vpmovsxdq	-48(%r12,%rax,4), %ymm4
	vpaddq	%ymm4, %ymm0, %ymm0
	vpmovsxdq	-32(%r12,%rax,4), %ymm4
	vpaddq	%ymm4, %ymm1, %ymm1
	vpmovsxdq	-16(%r12,%rax,4), %ymm4
	vpaddq	%ymm4, %ymm2, %ymm2
	vpmovsxdq	(%r12,%rax,4), %ymm4
	vpaddq	%ymm4, %ymm3, %ymm3
	addq	$32, %rax
	cmpq	$4194332, %rax                  # imm = 0x40001C
	jne	.LBB3_5
# %bb.6:                                # %middle.block
	vpaddq	%ymm0, %ymm1, %ymm0
	vpaddq	%ymm0, %ymm2, %ymm0
	vpaddq	%ymm0, %ymm3, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %r14
	movl	$_ZSt4cout, %edi
	movl	$.L.str, %esi
	movl	$20, %edx
	vzeroupper
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%r12, %rdi
	callq	_ZdaPv
	movq	%r14, %rax
	addq	$5016, %rsp                     # imm = 0x1398
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_Z10clearCachev, .Lfunc_end3-_Z10clearCachev
	.cfi_endproc
                                        # -- End function
	.globl	_Z12testFunctionPl              # -- Begin function _Z12testFunctionPl
	.p2align	4, 0x90
	.type	_Z12testFunctionPl,@function
_Z12testFunctionPl:                     # @_Z12testFunctionPl
	.cfi_startproc
# %bb.0:                                # %entry
	vmovq	(%rdi), %xmm2                   # xmm2 = mem[0],zero
	vpxor	%xmm3, %xmm3, %xmm3
	movq	$-5120000, %rax                 # imm = 0xFFB1E000
	vpxor	%xmm8, %xmm8, %xmm8
	vpxor	%xmm1, %xmm1, %xmm1
	.p2align	4, 0x90
.LBB4_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vmovdqa	B+5120000(%rax), %xmm4
	vmovdqa	B+5120016(%rax), %xmm5
	vmovdqa	B+5120032(%rax), %xmm6
	vmovdqa	B+5120048(%rax), %xmm7
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%xmm4,4), %xmm0 {%k1}
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%xmm5,4), %xmm4 {%k1}
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%xmm6,4), %xmm5 {%k1}
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%xmm7,4), %xmm9 {%k1}
	vpmovsxdq	%xmm0, %ymm0
	vpaddq	%ymm0, %ymm2, %ymm10
	vpmovsxdq	%xmm4, %ymm2
	vpaddq	%ymm2, %ymm3, %ymm3
	vpmovsxdq	%xmm5, %ymm2
	vmovdqa	B+5120064(%rax), %xmm4
	vmovdqa	B+5120080(%rax), %xmm5
	vmovdqa	B+5120096(%rax), %xmm7
	vmovdqa	B+5120112(%rax), %xmm6
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%xmm4,4), %xmm0 {%k1}
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%xmm5,4), %xmm4 {%k1}
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%xmm7,4), %xmm5 {%k1}
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%xmm6,4), %xmm7 {%k1}
	vpaddq	%ymm2, %ymm8, %ymm6
	vpmovsxdq	%xmm9, %ymm2
	vpaddq	%ymm2, %ymm1, %ymm1
	vpmovsxdq	%xmm0, %ymm0
	vpaddq	%ymm0, %ymm10, %ymm2
	vpmovsxdq	%xmm4, %ymm0
	vpaddq	%ymm0, %ymm3, %ymm3
	vpmovsxdq	%xmm5, %ymm0
	vpaddq	%ymm0, %ymm6, %ymm8
	vpmovsxdq	%xmm7, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm1
	subq	$-128, %rax
	jne	.LBB4_1
# %bb.2:                                # %middle.block
	vpaddq	%ymm2, %ymm3, %ymm0
	vpaddq	%ymm0, %ymm8, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, (%rdi)
	vzeroupper
	retq
.Lfunc_end4:
	.size	_Z12testFunctionPl, .Lfunc_end4-_Z12testFunctionPl
	.cfi_endproc
                                        # -- End function
	.globl	_Z26testFunction_manual_avx512Pl # -- Begin function _Z26testFunction_manual_avx512Pl
	.p2align	4, 0x90
	.type	_Z26testFunction_manual_avx512Pl,@function
_Z26testFunction_manual_avx512Pl:       # @_Z26testFunction_manual_avx512Pl
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$-160, %rax
	.p2align	4, 0x90
.LBB5_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	vmovdqa64	B+640(,%rax,4), %zmm0
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm0,4), %zmm1 {%k1}
	vmovdqa64	%zmm1, C+640(,%rax,4)
	vmovdqa64	B+704(,%rax,4), %zmm0
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm0,4), %zmm1 {%k1}
	vmovdqa64	%zmm1, C+704(,%rax,4)
	vmovdqa64	B+768(,%rax,4), %zmm0
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm0,4), %zmm1 {%k1}
	vmovdqa64	%zmm1, C+768(,%rax,4)
	vmovdqa64	B+832(,%rax,4), %zmm0
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm0,4), %zmm1 {%k1}
	vmovdqa64	%zmm1, C+832(,%rax,4)
	vmovdqa64	B+896(,%rax,4), %zmm0
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm0,4), %zmm1 {%k1}
	vmovdqa64	%zmm1, C+896(,%rax,4)
	vmovdqa64	B+960(,%rax,4), %zmm0
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm0,4), %zmm1 {%k1}
	vmovdqa64	%zmm1, C+960(,%rax,4)
	vmovdqa64	B+1024(,%rax,4), %zmm0
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm0,4), %zmm1 {%k1}
	vmovdqa64	%zmm1, C+1024(,%rax,4)
	vmovdqa64	B+1088(,%rax,4), %zmm0
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm0,4), %zmm1 {%k1}
	vmovdqa64	%zmm1, C+1088(,%rax,4)
	vmovdqa64	B+1152(,%rax,4), %zmm0
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm0,4), %zmm1 {%k1}
	vmovdqa64	%zmm1, C+1152(,%rax,4)
	vmovdqa64	B+1216(,%rax,4), %zmm0
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm0,4), %zmm1 {%k1}
	vmovdqa64	%zmm1, C+1216(,%rax,4)
	addq	$160, %rax
	cmpq	$1279840, %rax                  # imm = 0x138760
	jb	.LBB5_1
# %bb.2:                                # %for.cond.cleanup
	vzeroupper
	retq
.Lfunc_end5:
	.size	_Z26testFunction_manual_avx512Pl, .Lfunc_end5-_Z26testFunction_manual_avx512Pl
	.cfi_endproc
                                        # -- End function
	.globl	_Z10show512RegRDv8_x            # -- Begin function _Z10show512RegRDv8_x
	.p2align	4, 0x90
	.type	_Z10show512RegRDv8_x,@function
_Z10show512RegRDv8_x:                   # @_Z10show512RegRDv8_x
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$88, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	vmovdqa64	(%rdi), %zmm0
	vmovdqu64	%zmm0, 16(%rsp)         # 64-byte Spill
	movl	(%rdi), %esi
	movl	$_ZSt4cout, %edi
	vzeroupper
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB6_69
# %bb.1:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit383
	cmpb	$0, 56(%rbx)
	je	.LBB6_3
# %bb.2:                                # %if.then.i190
	movb	67(%rbx), %al
	jmp	.LBB6_4
.LBB6_3:                                # %if.end.i194
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_4:                                # %_ZNKSt5ctypeIcE5widenEc.exit196
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	vmovdqu64	16(%rsp), %zmm0         # 64-byte Reload
	vpextrd	$1, %xmm0, %esi
	movl	$_ZSt4cout, %edi
	vzeroupper
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB6_69
# %bb.5:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit387
	cmpb	$0, 56(%rbx)
	je	.LBB6_7
# %bb.6:                                # %if.then.i202
	movb	67(%rbx), %al
	jmp	.LBB6_8
.LBB6_7:                                # %if.end.i206
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_8:                                # %_ZNKSt5ctypeIcE5widenEc.exit208
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	vmovdqu64	16(%rsp), %zmm0         # 64-byte Reload
	vpextrd	$2, %xmm0, %esi
	movl	$_ZSt4cout, %edi
	vzeroupper
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB6_69
# %bb.9:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit391
	cmpb	$0, 56(%rbx)
	je	.LBB6_11
# %bb.10:                               # %if.then.i214
	movb	67(%rbx), %al
	jmp	.LBB6_12
.LBB6_11:                               # %if.end.i218
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_12:                               # %_ZNKSt5ctypeIcE5widenEc.exit220
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	vmovdqu64	16(%rsp), %zmm0         # 64-byte Reload
	vpextrd	$3, %xmm0, %esi
	movl	$_ZSt4cout, %edi
	vzeroupper
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB6_69
# %bb.13:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit395
	cmpb	$0, 56(%rbx)
	je	.LBB6_15
# %bb.14:                               # %if.then.i226
	movb	67(%rbx), %al
	jmp	.LBB6_16
.LBB6_15:                               # %if.end.i230
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_16:                               # %_ZNKSt5ctypeIcE5widenEc.exit232
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	vmovdqu64	16(%rsp), %zmm0         # 64-byte Reload
	vextracti128	$1, %ymm0, %xmm0
	vmovd	%xmm0, %esi
	movl	$_ZSt4cout, %edi
	vzeroupper
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB6_69
# %bb.17:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit399
	cmpb	$0, 56(%rbx)
	je	.LBB6_19
# %bb.18:                               # %if.then.i238
	movb	67(%rbx), %al
	jmp	.LBB6_20
.LBB6_19:                               # %if.end.i242
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_20:                               # %_ZNKSt5ctypeIcE5widenEc.exit244
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	vmovdqu64	16(%rsp), %zmm0         # 64-byte Reload
	vextracti128	$1, %ymm0, %xmm0
	vpextrd	$1, %xmm0, %esi
	movl	$_ZSt4cout, %edi
	vzeroupper
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB6_69
# %bb.21:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit403
	cmpb	$0, 56(%rbx)
	je	.LBB6_23
# %bb.22:                               # %if.then.i250
	movb	67(%rbx), %al
	jmp	.LBB6_24
.LBB6_23:                               # %if.end.i254
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_24:                               # %_ZNKSt5ctypeIcE5widenEc.exit256
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	vmovdqu64	16(%rsp), %zmm0         # 64-byte Reload
	vextracti128	$1, %ymm0, %xmm0
	vpextrd	$2, %xmm0, %esi
	movl	$_ZSt4cout, %edi
	vzeroupper
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB6_69
# %bb.25:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit407
	cmpb	$0, 56(%rbx)
	je	.LBB6_27
# %bb.26:                               # %if.then.i262
	movb	67(%rbx), %al
	jmp	.LBB6_28
.LBB6_27:                               # %if.end.i266
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_28:                               # %_ZNKSt5ctypeIcE5widenEc.exit268
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	vmovdqu64	16(%rsp), %zmm0         # 64-byte Reload
	vextracti128	$1, %ymm0, %xmm0
	vpextrd	$3, %xmm0, %esi
	movl	$_ZSt4cout, %edi
	vzeroupper
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB6_69
# %bb.29:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit411
	cmpb	$0, 56(%rbx)
	je	.LBB6_31
# %bb.30:                               # %if.then.i274
	movb	67(%rbx), %al
	jmp	.LBB6_32
.LBB6_31:                               # %if.end.i278
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_32:                               # %_ZNKSt5ctypeIcE5widenEc.exit280
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	vmovdqu64	16(%rsp), %zmm0         # 64-byte Reload
	vextracti32x4	$2, %zmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)                   # 16-byte Spill
	vmovd	%xmm0, %esi
	movl	$_ZSt4cout, %edi
	vzeroupper
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB6_69
# %bb.33:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit415
	cmpb	$0, 56(%rbx)
	je	.LBB6_35
# %bb.34:                               # %if.then.i286
	movb	67(%rbx), %al
	jmp	.LBB6_36
.LBB6_35:                               # %if.end.i290
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_36:                               # %_ZNKSt5ctypeIcE5widenEc.exit292
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	vmovdqa	(%rsp), %xmm0                   # 16-byte Reload
	vpextrd	$1, %xmm0, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB6_69
# %bb.37:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit419
	cmpb	$0, 56(%rbx)
	je	.LBB6_39
# %bb.38:                               # %if.then.i298
	movb	67(%rbx), %al
	jmp	.LBB6_40
.LBB6_39:                               # %if.end.i302
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_40:                               # %_ZNKSt5ctypeIcE5widenEc.exit304
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	vmovdqa	(%rsp), %xmm0                   # 16-byte Reload
	vpextrd	$2, %xmm0, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB6_69
# %bb.41:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit423
	cmpb	$0, 56(%rbx)
	je	.LBB6_43
# %bb.42:                               # %if.then.i310
	movb	67(%rbx), %al
	jmp	.LBB6_44
.LBB6_43:                               # %if.end.i314
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_44:                               # %_ZNKSt5ctypeIcE5widenEc.exit316
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	vmovdqa	(%rsp), %xmm0                   # 16-byte Reload
	vpextrd	$3, %xmm0, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB6_69
# %bb.45:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit427
	cmpb	$0, 56(%rbx)
	je	.LBB6_47
# %bb.46:                               # %if.then.i322
	movb	67(%rbx), %al
	jmp	.LBB6_48
.LBB6_47:                               # %if.end.i326
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_48:                               # %_ZNKSt5ctypeIcE5widenEc.exit328
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	vmovdqu64	16(%rsp), %zmm0         # 64-byte Reload
	vextracti32x4	$3, %zmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)                 # 16-byte Spill
	vmovd	%xmm0, %esi
	movl	$_ZSt4cout, %edi
	vzeroupper
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB6_69
# %bb.49:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit431
	cmpb	$0, 56(%rbx)
	je	.LBB6_51
# %bb.50:                               # %if.then.i334
	movb	67(%rbx), %al
	jmp	.LBB6_52
.LBB6_51:                               # %if.end.i338
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_52:                               # %_ZNKSt5ctypeIcE5widenEc.exit340
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	vmovdqa	16(%rsp), %xmm0                 # 16-byte Reload
	vpextrd	$1, %xmm0, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB6_69
# %bb.53:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit435
	cmpb	$0, 56(%rbx)
	je	.LBB6_55
# %bb.54:                               # %if.then.i346
	movb	67(%rbx), %al
	jmp	.LBB6_56
.LBB6_55:                               # %if.end.i350
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_56:                               # %_ZNKSt5ctypeIcE5widenEc.exit352
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	vmovdqa	16(%rsp), %xmm0                 # 16-byte Reload
	vpextrd	$2, %xmm0, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB6_69
# %bb.57:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit439
	cmpb	$0, 56(%rbx)
	je	.LBB6_59
# %bb.58:                               # %if.then.i358
	movb	67(%rbx), %al
	jmp	.LBB6_60
.LBB6_59:                               # %if.end.i362
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_60:                               # %_ZNKSt5ctypeIcE5widenEc.exit364
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	vmovdqa	16(%rsp), %xmm0                 # 16-byte Reload
	vpextrd	$3, %xmm0, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB6_69
# %bb.61:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit443
	cmpb	$0, 56(%rbx)
	je	.LBB6_63
# %bb.62:                               # %if.then.i370
	movb	67(%rbx), %al
	jmp	.LBB6_64
.LBB6_63:                               # %if.end.i374
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_64:                               # %_ZNKSt5ctypeIcE5widenEc.exit376
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB6_69
# %bb.65:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
	cmpb	$0, 56(%rbx)
	je	.LBB6_67
# %bb.66:                               # %if.then.i
	movb	67(%rbx), %al
	jmp	.LBB6_68
.LBB6_67:                               # %if.end.i
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_68:                               # %_ZNKSt5ctypeIcE5widenEc.exit
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	addq	$88, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv                   # TAILCALL
.LBB6_69:                               # %if.then.i381
	.cfi_def_cfa_offset 112
	callq	_ZSt16__throw_bad_castv
.Lfunc_end6:
	.size	_Z10show512RegRDv8_x, .Lfunc_end6-_Z10show512RegRDv8_x
	.cfi_endproc
                                        # -- End function
	.globl	_Z27pipeline_512_8_8vreg_reducePlii # -- Begin function _Z27pipeline_512_8_8vreg_reducePlii
	.p2align	4, 0x90
	.type	_Z27pipeline_512_8_8vreg_reducePlii,@function
_Z27pipeline_512_8_8vreg_reducePlii:    # @_Z27pipeline_512_8_8vreg_reducePlii
	.cfi_startproc
# %bb.0:                                # %entry
	vmovdqa64	B(%rip), %zmm1
	vmovdqa64	B+64(%rip), %zmm2
	vmovdqa64	B+128(%rip), %zmm3
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm0, %xmm0, %xmm0
	vpgatherdd	A(,%zmm1,4), %zmm0 {%k1}
	vmovdqa64	B+192(%rip), %zmm4
	vmovdqa64	B+256(%rip), %zmm5
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm2,4), %zmm1 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm2, %xmm2, %xmm2
	vpgatherdd	A(,%zmm3,4), %zmm2 {%k1}
	vmovdqa64	B+320(%rip), %zmm6
	vmovdqa64	B+384(%rip), %zmm8
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm3, %xmm3, %xmm3
	vpgatherdd	A(,%zmm4,4), %zmm3 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm4, %xmm4, %xmm4
	vpgatherdd	A(,%zmm5,4), %zmm4 {%k1}
	vmovdqa64	B+448(%rip), %zmm9
	kxnorw	%k0, %k0, %k1
	kxnorw	%k0, %k0, %k2
	vpxor	%xmm5, %xmm5, %xmm5
	vpgatherdd	A(,%zmm6,4), %zmm5 {%k2}
	kxnorw	%k0, %k0, %k2
	vpxor	%xmm7, %xmm7, %xmm7
	vpgatherdd	A(,%zmm8,4), %zmm7 {%k2}
	vpxor	%xmm6, %xmm6, %xmm6
	vpgatherdd	A(,%zmm9,4), %zmm6 {%k1}
	movslq	%edx, %rcx
	xorl	%r11d, %r11d
	movl	$1280000, %eax                  # imm = 0x138800
	xorl	%edx, %edx
	idivl	%ecx
                                        # kill: def $eax killed $eax def $rax
	vmovdqa64	B+960(%rip), %zmm8
	vmovdqa64	B+896(%rip), %zmm9
	vmovdqa64	B+832(%rip), %zmm10
	vmovdqa64	B+768(%rip), %zmm11
	vmovdqa64	B+704(%rip), %zmm12
	vmovdqa64	B+640(%rip), %zmm13
	movslq	%eax, %r10
	vmovdqa64	B+576(%rip), %zmm14
	vmovdqa64	B+512(%rip), %zmm15
	cmpl	$3, %r10d
	jl	.LBB7_3
# %bb.1:                                # %for.body.preheader
	leaq	-2(%r10), %r11
	leaq	(,%rcx,4), %rdx
	movl	$448, %edi                      # imm = 0x1C0
	movq	%r11, %rsi
	.p2align	4, 0x90
.LBB7_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	vmovdqa64	%zmm0, C-448(%rdi)
	vmovdqa64	%zmm1, C-384(%rdi)
	vmovdqa64	%zmm2, C-320(%rdi)
	vmovdqa64	%zmm3, C-256(%rdi)
	vmovdqa64	%zmm4, C-192(%rdi)
	vmovdqa64	%zmm5, C-128(%rdi)
	vmovdqa64	%zmm7, C-64(%rdi)
	vmovdqa64	%zmm6, C(%rdi)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm0, %xmm0, %xmm0
	vpgatherdd	A(,%zmm15,4), %zmm0 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm14,4), %zmm1 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm2, %xmm2, %xmm2
	vpgatherdd	A(,%zmm13,4), %zmm2 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm3, %xmm3, %xmm3
	vpgatherdd	A(,%zmm12,4), %zmm3 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm4, %xmm4, %xmm4
	vpgatherdd	A(,%zmm11,4), %zmm4 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm5, %xmm5, %xmm5
	vpgatherdd	A(,%zmm10,4), %zmm5 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm7, %xmm7, %xmm7
	vpgatherdd	A(,%zmm9,4), %zmm7 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm6, %xmm6, %xmm6
	vpgatherdd	A(,%zmm8,4), %zmm6 {%k1}
	vmovdqa64	B(%rdi,%rcx,4), %zmm8
	vmovdqa64	B-64(%rdi,%rcx,4), %zmm9
	vmovdqa64	B-128(%rdi,%rcx,4), %zmm10
	vmovdqa64	B-192(%rdi,%rcx,4), %zmm11
	vmovdqa64	B-256(%rdi,%rcx,4), %zmm12
	vmovdqa64	B-320(%rdi,%rcx,4), %zmm13
	vmovdqa64	B-384(%rdi,%rcx,4), %zmm14
	vmovdqa64	B-448(%rdi,%rcx,4), %zmm15
	addq	%rdx, %rdi
	decq	%rsi
	jne	.LBB7_2
.LBB7_3:                                # %for.cond109.preheader
	leaq	-1(%r10), %r8
	cmpq	%r8, %r11
	jge	.LBB7_8
# %bb.4:                                # %for.body114.preheader
	leaq	2(%r11), %rdx
	subl	%edx, %eax
	incl	%eax
	testb	$1, %al
	je	.LBB7_6
# %bb.5:                                # %for.body114.prol
	movq	%r11, %rax
	imulq	%rcx, %rax
	vmovdqa64	%zmm0, C(,%rax,4)
	vmovdqa64	%zmm1, C+64(,%rax,4)
	vmovdqa64	%zmm2, C+128(,%rax,4)
	vmovdqa64	%zmm3, C+192(,%rax,4)
	vmovdqa64	%zmm4, C+256(,%rax,4)
	vmovdqa64	%zmm5, C+320(,%rax,4)
	vmovdqa64	%zmm7, C+384(,%rax,4)
	vmovdqa64	%zmm6, C+448(,%rax,4)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm0, %xmm0, %xmm0
	vpgatherdd	A(,%zmm15,4), %zmm0 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm14,4), %zmm1 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm2, %xmm2, %xmm2
	vpgatherdd	A(,%zmm13,4), %zmm2 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm3, %xmm3, %xmm3
	vpgatherdd	A(,%zmm12,4), %zmm3 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm4, %xmm4, %xmm4
	vpgatherdd	A(,%zmm11,4), %zmm4 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm6, %xmm6, %xmm6
	kxnorw	%k0, %k0, %k2
	vpxor	%xmm5, %xmm5, %xmm5
	vpgatherdd	A(,%zmm10,4), %zmm5 {%k2}
	kxnorw	%k0, %k0, %k2
	vpxor	%xmm7, %xmm7, %xmm7
	vpgatherdd	A(,%zmm9,4), %zmm7 {%k2}
	vpgatherdd	A(,%zmm8,4), %zmm6 {%k1}
	incq	%r11
.LBB7_6:                                # %for.body114.prol.loopexit
	cmpq	%r10, %rdx
	je	.LBB7_11
# %bb.9:                                # %for.body114.preheader2
	movq	%r11, %rax
	notq	%rax
	addq	%r10, %rax
	leaq	1(%r11), %rdi
	imulq	%rcx, %rdi
	leaq	(,%rcx,8), %r9
	imulq	%rcx, %r11
	movl	$C+448, %edx
	.p2align	4, 0x90
.LBB7_10:                               # %for.body114
                                        # =>This Inner Loop Header: Depth=1
	vmovdqa64	%zmm0, -448(%rdx,%r11,4)
	vmovdqa64	%zmm1, -384(%rdx,%r11,4)
	vmovdqa64	%zmm2, -320(%rdx,%r11,4)
	vmovdqa64	%zmm3, -256(%rdx,%r11,4)
	vmovdqa64	%zmm4, -192(%rdx,%r11,4)
	vmovdqa64	%zmm5, -128(%rdx,%r11,4)
	vmovdqa64	%zmm7, -64(%rdx,%r11,4)
	vmovdqa64	%zmm6, (%rdx,%r11,4)
	vpxor	%xmm0, %xmm0, %xmm0
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%zmm15,4), %zmm0 {%k1}
	vpxor	%xmm1, %xmm1, %xmm1
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%zmm14,4), %zmm1 {%k1}
	vpxor	%xmm2, %xmm2, %xmm2
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%zmm13,4), %zmm2 {%k1}
	vpxor	%xmm3, %xmm3, %xmm3
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%zmm12,4), %zmm3 {%k1}
	vpxor	%xmm4, %xmm4, %xmm4
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%zmm11,4), %zmm4 {%k1}
	vpxor	%xmm5, %xmm5, %xmm5
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%zmm10,4), %zmm5 {%k1}
	vpxor	%xmm6, %xmm6, %xmm6
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%zmm9,4), %zmm6 {%k1}
	vpxor	%xmm7, %xmm7, %xmm7
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%zmm8,4), %zmm7 {%k1}
	vmovdqa64	%zmm0, -448(%rdx,%rdi,4)
	vmovdqa64	%zmm1, -384(%rdx,%rdi,4)
	vmovdqa64	%zmm2, -320(%rdx,%rdi,4)
	vmovdqa64	%zmm3, -256(%rdx,%rdi,4)
	vmovdqa64	%zmm4, -192(%rdx,%rdi,4)
	vmovdqa64	%zmm5, -128(%rdx,%rdi,4)
	vmovdqa64	%zmm6, -64(%rdx,%rdi,4)
	vmovdqa64	%zmm7, (%rdx,%rdi,4)
	vpxor	%xmm0, %xmm0, %xmm0
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%zmm15,4), %zmm0 {%k1}
	vpxor	%xmm1, %xmm1, %xmm1
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%zmm14,4), %zmm1 {%k1}
	vpxor	%xmm2, %xmm2, %xmm2
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%zmm13,4), %zmm2 {%k1}
	vpxor	%xmm3, %xmm3, %xmm3
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%zmm12,4), %zmm3 {%k1}
	vpxor	%xmm4, %xmm4, %xmm4
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%zmm11,4), %zmm4 {%k1}
	vpxor	%xmm5, %xmm5, %xmm5
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%zmm10,4), %zmm5 {%k1}
	vpxor	%xmm7, %xmm7, %xmm7
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%zmm9,4), %zmm7 {%k1}
	vpxor	%xmm6, %xmm6, %xmm6
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%zmm8,4), %zmm6 {%k1}
	addq	%r9, %rdx
	addq	$-2, %rax
	jne	.LBB7_10
.LBB7_11:
	movq	%r8, %r11
	jmp	.LBB7_12
.LBB7_8:                                # %for.cond158.preheader
	cmpq	%r10, %r11
	jge	.LBB7_19
.LBB7_12:                               # %for.body162.preheader
	movl	%r10d, %edx
	subl	%r11d, %edx
	movq	%r11, %r8
	notq	%r8
	addq	%r10, %r8
	andq	$3, %rdx
	je	.LBB7_16
# %bb.13:                               # %for.body162.prol.preheader
	movq	%r11, %rax
	imulq	%rcx, %rax
	leaq	C+448(,%rax,4), %rsi
	leaq	(,%rcx,4), %rdi
	negq	%rdx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB7_14:                               # %for.body162.prol
                                        # =>This Inner Loop Header: Depth=1
	vmovdqa64	%zmm0, -448(%rsi)
	vmovdqa64	%zmm1, -384(%rsi)
	vmovdqa64	%zmm2, -320(%rsi)
	vmovdqa64	%zmm3, -256(%rsi)
	vmovdqa64	%zmm4, -192(%rsi)
	vmovdqa64	%zmm5, -128(%rsi)
	vmovdqa64	%zmm7, -64(%rsi)
	vmovdqa64	%zmm6, (%rsi)
	decq	%rax
	addq	%rdi, %rsi
	cmpq	%rax, %rdx
	jne	.LBB7_14
# %bb.15:                               # %for.body162.prol.loopexit.loopexit
	subq	%rax, %r11
.LBB7_16:                               # %for.body162.prol.loopexit
	cmpq	$3, %r8
	jb	.LBB7_19
# %bb.17:                               # %for.body162.preheader1
	subq	%r11, %r10
	imulq	%rcx, %r11
	leaq	C(,%r11,4), %rax
	movq	%rcx, %rdx
	shlq	$4, %rdx
	leaq	(,%rcx,4), %rsi
	.p2align	4, 0x90
.LBB7_18:                               # %for.body162
                                        # =>This Inner Loop Header: Depth=1
	vmovdqa64	%zmm0, (%rax)
	vmovdqa64	%zmm1, 64(%rax)
	vmovdqa64	%zmm2, 128(%rax)
	vmovdqa64	%zmm3, 192(%rax)
	vmovdqa64	%zmm4, 256(%rax)
	vmovdqa64	%zmm5, 320(%rax)
	vmovdqa64	%zmm7, 384(%rax)
	vmovdqa64	%zmm6, 448(%rax)
	vmovdqa64	%zmm0, (%rax,%rcx,4)
	vmovdqa64	%zmm1, 64(%rax,%rcx,4)
	vmovdqa64	%zmm2, 128(%rax,%rcx,4)
	vmovdqa64	%zmm3, 192(%rax,%rcx,4)
	vmovdqa64	%zmm4, 256(%rax,%rcx,4)
	vmovdqa64	%zmm5, 320(%rax,%rcx,4)
	vmovdqa64	%zmm7, 384(%rax,%rcx,4)
	vmovdqa64	%zmm6, 448(%rax,%rcx,4)
	leaq	(%rax,%rsi), %rdi
	addq	%rsi, %rdi
	vmovdqa64	%zmm0, (%rax,%rcx,8)
	vmovdqa64	%zmm1, 64(%rax,%rcx,8)
	vmovdqa64	%zmm2, 128(%rax,%rcx,8)
	vmovdqa64	%zmm3, 192(%rax,%rcx,8)
	vmovdqa64	%zmm4, 256(%rax,%rcx,8)
	vmovdqa64	%zmm5, 320(%rax,%rcx,8)
	vmovdqa64	%zmm7, 384(%rax,%rcx,8)
	vmovdqa64	%zmm6, 448(%rax,%rcx,8)
	vmovdqa64	%zmm0, (%rdi,%rcx,4)
	vmovdqa64	%zmm1, 64(%rdi,%rcx,4)
	vmovdqa64	%zmm2, 128(%rdi,%rcx,4)
	vmovdqa64	%zmm3, 192(%rdi,%rcx,4)
	vmovdqa64	%zmm4, 256(%rdi,%rcx,4)
	vmovdqa64	%zmm5, 320(%rdi,%rcx,4)
	vmovdqa64	%zmm7, 384(%rdi,%rcx,4)
	vmovdqa64	%zmm6, 448(%rdi,%rcx,4)
	addq	%rdx, %rax
	addq	$-4, %r10
	jne	.LBB7_18
.LBB7_19:                               # %for.end197
	vzeroupper
	retq
.Lfunc_end7:
	.size	_Z27pipeline_512_8_8vreg_reducePlii, .Lfunc_end7-_Z27pipeline_512_8_8vreg_reducePlii
	.cfi_endproc
                                        # -- End function
	.globl	_Z31pipeline_512_8_8vreg_add_reducePlii # -- Begin function _Z31pipeline_512_8_8vreg_add_reducePlii
	.p2align	4, 0x90
	.type	_Z31pipeline_512_8_8vreg_add_reducePlii,@function
_Z31pipeline_512_8_8vreg_add_reducePlii: # @_Z31pipeline_512_8_8vreg_add_reducePlii
	.cfi_startproc
# %bb.0:                                # %entry
	vmovdqa64	B(%rip), %zmm0
	vmovdqa64	B+64(%rip), %zmm3
	vmovdqa64	B+128(%rip), %zmm4
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm0,4), %zmm1 {%k1}
	vmovdqa64	B+192(%rip), %zmm0
	vmovdqa64	B+256(%rip), %zmm5
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm2, %xmm2, %xmm2
	vpgatherdd	A(,%zmm3,4), %zmm2 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm3, %xmm3, %xmm3
	vpgatherdd	A(,%zmm4,4), %zmm3 {%k1}
	vmovdqa64	B+320(%rip), %zmm6
	vmovdqa64	B+384(%rip), %zmm8
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm4, %xmm4, %xmm4
	vpgatherdd	A(,%zmm0,4), %zmm4 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm7, %xmm7, %xmm7
	vpgatherdd	A(,%zmm5,4), %zmm7 {%k1}
	vmovdqa64	B+448(%rip), %zmm0
	kxnorw	%k0, %k0, %k1
	kxnorw	%k0, %k0, %k2
	vpxor	%xmm10, %xmm10, %xmm10
	vpgatherdd	A(,%zmm6,4), %zmm10 {%k2}
	kxnorw	%k0, %k0, %k2
	vpxor	%xmm11, %xmm11, %xmm11
	vpgatherdd	A(,%zmm8,4), %zmm11 {%k2}
	vpxord	%xmm16, %xmm16, %xmm16
	vpgatherdd	A(,%zmm0,4), %zmm16 {%k1}
	movl	%edx, %esi
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%ecx, %ecx
	movl	$1280000, %eax                  # imm = 0x138800
	xorl	%edx, %edx
	idivl	%esi
	vmovdqa64	B+960(%rip), %zmm5
	vmovdqa64	B+896(%rip), %zmm6
	vmovdqa64	B+832(%rip), %zmm8
	vmovdqa64	B+768(%rip), %zmm9
	vmovdqa64	B+704(%rip), %zmm12
	vmovdqa64	B+640(%rip), %zmm13
	movslq	%eax, %r9
	vmovdqa64	B+576(%rip), %zmm14
	vmovdqa64	B+512(%rip), %zmm15
	cmpl	$3, %r9d
	jl	.LBB8_3
# %bb.1:                                # %for.body.preheader
	leaq	-2(%r9), %rcx
	movslq	%esi, %r8
	leaq	B+448(,%r8,4), %rdx
	shlq	$2, %r8
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rcx, %rsi
	.p2align	4, 0x90
.LBB8_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	vpaddd	%zmm0, %zmm16, %zmm0
	vpaddd	%zmm10, %zmm7, %zmm7
	vpaddd	%zmm11, %zmm7, %zmm7
	vpaddd	%zmm4, %zmm3, %zmm3
	vpaddd	%zmm1, %zmm2, %zmm1
	vpaddd	%zmm3, %zmm1, %zmm1
	vpaddd	%zmm7, %zmm1, %zmm1
	vpaddd	%zmm0, %zmm1, %zmm0
	vextracti64x4	$1, %zmm0, %ymm1
	vpaddd	%zmm1, %zmm0, %zmm1
	vextracti128	$1, %ymm1, %xmm2
	vpaddd	%xmm2, %xmm1, %xmm1
	vpshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	vpaddd	%xmm2, %xmm1, %xmm1
	vpshufd	$85, %xmm1, %xmm2               # xmm2 = xmm1[1,1,1,1]
	vpaddd	%xmm2, %xmm1, %xmm1
	vmovd	%xmm1, %eax
	cltq
	movq	%rax, (%rdi)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm15,4), %zmm1 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm2, %xmm2, %xmm2
	vpgatherdd	A(,%zmm14,4), %zmm2 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm3, %xmm3, %xmm3
	vpgatherdd	A(,%zmm13,4), %zmm3 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm4, %xmm4, %xmm4
	vpgatherdd	A(,%zmm12,4), %zmm4 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm7, %xmm7, %xmm7
	vpgatherdd	A(,%zmm9,4), %zmm7 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm10, %xmm10, %xmm10
	vpgatherdd	A(,%zmm8,4), %zmm10 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm11, %xmm11, %xmm11
	vpgatherdd	A(,%zmm6,4), %zmm11 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxord	%xmm16, %xmm16, %xmm16
	vpgatherdd	A(,%zmm5,4), %zmm16 {%k1}
	vmovdqa64	(%rdx), %zmm5
	vmovdqa64	-64(%rdx), %zmm6
	vmovdqa64	-128(%rdx), %zmm8
	vmovdqa64	-192(%rdx), %zmm9
	vmovdqa64	-448(%rdx), %zmm15
	vmovdqa64	-384(%rdx), %zmm14
	vmovdqa64	-320(%rdx), %zmm13
	vmovdqa64	-256(%rdx), %zmm12
	addq	%r8, %rdx
	decq	%rsi
	jne	.LBB8_2
.LBB8_3:                                # %for.cond88.preheader
	leaq	-1(%r9), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB8_4
# %bb.7:                                # %for.cond115.preheader
	cmpq	%r9, %rcx
	jl	.LBB8_8
.LBB8_16:                               # %for.end132
	vzeroupper
	retq
.LBB8_4:                                # %for.body93.preheader
	notq	%rcx
	addq	%r9, %rcx
	.p2align	4, 0x90
.LBB8_5:                                # %for.body93
                                        # =>This Inner Loop Header: Depth=1
	vpaddd	%zmm0, %zmm16, %zmm0
	vpaddd	%zmm10, %zmm7, %zmm7
	vpaddd	%zmm11, %zmm7, %zmm7
	vpaddd	%zmm4, %zmm3, %zmm3
	vpaddd	%zmm1, %zmm2, %zmm1
	vpaddd	%zmm3, %zmm1, %zmm1
	vpaddd	%zmm7, %zmm1, %zmm1
	vpaddd	%zmm0, %zmm1, %zmm0
	vextracti64x4	$1, %zmm0, %ymm1
	vpaddd	%zmm1, %zmm0, %zmm1
	vextracti128	$1, %ymm1, %xmm2
	vpaddd	%xmm2, %xmm1, %xmm1
	vpshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	vpaddd	%xmm2, %xmm1, %xmm1
	vpshufd	$85, %xmm1, %xmm2               # xmm2 = xmm1[1,1,1,1]
	vpaddd	%xmm2, %xmm1, %xmm1
	vmovd	%xmm1, %eax
	cltq
	movq	%rax, (%rdi)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm15,4), %zmm1 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm2, %xmm2, %xmm2
	vpgatherdd	A(,%zmm14,4), %zmm2 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm3, %xmm3, %xmm3
	vpgatherdd	A(,%zmm13,4), %zmm3 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm4, %xmm4, %xmm4
	vpgatherdd	A(,%zmm12,4), %zmm4 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm7, %xmm7, %xmm7
	vpgatherdd	A(,%zmm9,4), %zmm7 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm10, %xmm10, %xmm10
	vpgatherdd	A(,%zmm8,4), %zmm10 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm11, %xmm11, %xmm11
	vpgatherdd	A(,%zmm6,4), %zmm11 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxord	%xmm16, %xmm16, %xmm16
	vpgatherdd	A(,%zmm5,4), %zmm16 {%k1}
	decq	%rcx
	jne	.LBB8_5
# %bb.6:
	movq	%rdx, %rcx
	cmpq	%r9, %rcx
	jge	.LBB8_16
.LBB8_8:                                # %for.body119.preheader
	vpaddd	%zmm3, %zmm1, %zmm1
	vpaddd	%zmm4, %zmm2, %zmm2
	vpaddd	%zmm2, %zmm1, %zmm1
	vpaddd	%zmm10, %zmm7, %zmm2
	vpaddd	%zmm11, %zmm2, %zmm2
	vpaddd	%zmm2, %zmm1, %zmm1
	vpaddd	%zmm16, %zmm1, %zmm1
	movl	%r9d, %esi
	subl	%ecx, %esi
	movq	%rcx, %r8
	notq	%r8
	addq	%r9, %r8
	andq	$7, %rsi
	je	.LBB8_12
# %bb.9:                                # %for.body119.prol.preheader
	negq	%rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB8_10:                               # %for.body119.prol
                                        # =>This Inner Loop Header: Depth=1
	vpaddd	%zmm0, %zmm1, %zmm0
	decq	%rdx
	cmpq	%rdx, %rsi
	jne	.LBB8_10
# %bb.11:                               # %for.body119.prol.loopexit.loopexit
	subq	%rdx, %rcx
.LBB8_12:                               # %for.body119.prol.loopexit
	cmpq	$7, %r8
	jb	.LBB8_15
# %bb.13:                               # %for.body119.preheader.new
	vpaddd	%zmm1, %zmm1, %zmm1
	subq	%rcx, %r9
	.p2align	4, 0x90
.LBB8_14:                               # %for.body119
                                        # =>This Inner Loop Header: Depth=1
	vpaddd	%zmm1, %zmm0, %zmm0
	vpaddd	%zmm1, %zmm0, %zmm0
	vpaddd	%zmm1, %zmm0, %zmm0
	vpaddd	%zmm1, %zmm0, %zmm0
	addq	$-8, %r9
	jne	.LBB8_14
.LBB8_15:                               # %for.cond115.for.end132_crit_edge
	vextracti64x4	$1, %zmm0, %ymm1
	vpaddd	%zmm1, %zmm0, %zmm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	cltq
	movq	%rax, (%rdi)
	vzeroupper
	retq
.Lfunc_end8:
	.size	_Z31pipeline_512_8_8vreg_add_reducePlii, .Lfunc_end8-_Z31pipeline_512_8_8vreg_add_reducePlii
	.cfi_endproc
                                        # -- End function
	.globl	_Z26pipeline_512_8_8vreg_1sregPlii # -- Begin function _Z26pipeline_512_8_8vreg_1sregPlii
	.p2align	4, 0x90
	.type	_Z26pipeline_512_8_8vreg_1sregPlii,@function
_Z26pipeline_512_8_8vreg_1sregPlii:     # @_Z26pipeline_512_8_8vreg_1sregPlii
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$872, %rsp                      # imm = 0x368
	.cfi_def_cfa_offset 928
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	vmovdqa64	B(%rip), %zmm0
	vmovdqa64	B+64(%rip), %zmm1
	vmovdqa64	B+128(%rip), %zmm2
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm7, %xmm7, %xmm7
	vpgatherdd	A(,%zmm0,4), %zmm7 {%k1}
	vmovdqa64	B+192(%rip), %zmm3
	vmovdqa64	B+256(%rip), %zmm4
	kxnorw	%k0, %k0, %k1
	vpxord	%xmm16, %xmm16, %xmm16
	vpgatherdd	A(,%zmm1,4), %zmm16 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm2,4), %zmm1 {%k1}
	vmovdqa64	B+320(%rip), %zmm5
	vmovdqa64	B+384(%rip), %zmm6
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm2, %xmm2, %xmm2
	vpgatherdd	A(,%zmm3,4), %zmm2 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm3, %xmm3, %xmm3
	vpgatherdd	A(,%zmm4,4), %zmm3 {%k1}
	vmovdqa64	B+448(%rip), %zmm8
	kxnorw	%k0, %k0, %k1
	kxnorw	%k0, %k0, %k2
	vpxor	%xmm4, %xmm4, %xmm4
	vpgatherdd	A(,%zmm5,4), %zmm4 {%k2}
	kxnorw	%k0, %k0, %k2
	vpxor	%xmm5, %xmm5, %xmm5
	vpgatherdd	A(,%zmm6,4), %zmm5 {%k2}
	vpxor	%xmm6, %xmm6, %xmm6
	vpgatherdd	A(,%zmm8,4), %zmm6 {%k1}
	movl	%edx, %ecx
	xorl	%r8d, %r8d
	movl	$1280000, %eax                  # imm = 0x138800
	xorl	%edx, %edx
	idivl	%ecx
	vmovdqa64	B+512(%rip), %zmm8
	vmovdqa64	B+576(%rip), %zmm10
	vmovdqa64	B+640(%rip), %zmm11
	vmovdqa64	B+704(%rip), %zmm13
	vmovdqa64	B+768(%rip), %zmm14
	vmovdqa64	B+832(%rip), %zmm15
	movslq	%eax, %r9
	vmovdqa64	B+896(%rip), %zmm12
	vmovdqa64	B+960(%rip), %zmm9
	cmpl	$3, %r9d
	jl	.LBB9_3
# %bb.1:                                # %for.body.preheader
	leaq	-2(%r9), %r8
	movslq	%ecx, %r10
	movq	(%rdi), %rcx
	leaq	B+448(,%r10,4), %rbp
	shlq	$2, %r10
	movq	%r8, %r11
	.p2align	4, 0x90
.LBB9_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	vmovd	%xmm5, %ebx
	vmovd	%xmm6, %edx
	movslq	%edx, %rdx
	vpextrd	$1, %xmm6, %eax
	cltq
	addq	%rdx, %rax
	vpextrd	$2, %xmm6, %edx
	movslq	%edx, %rdx
	addq	%rax, %rdx
	vpextrd	$3, %xmm6, %eax
	cltq
	addq	%rdx, %rax
	vextracti128	$1, %ymm6, %xmm0
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rax, %rdx
	vpextrd	$1, %xmm0, %eax
	cltq
	addq	%rdx, %rax
	vpextrd	$2, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rax, %rdx
	vpextrd	$3, %xmm0, %eax
	cltq
	addq	%rdx, %rax
	vextracti32x4	$2, %zmm6, %xmm0
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rax, %rdx
	vpextrd	$1, %xmm0, %eax
	cltq
	addq	%rdx, %rax
	vpextrd	$2, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rax, %rdx
	vpextrd	$3, %xmm0, %eax
	cltq
	addq	%rdx, %rax
	vextracti32x4	$3, %zmm6, %xmm0
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rax, %rdx
	vpextrd	$1, %xmm0, %eax
	cltq
	addq	%rdx, %rax
	vpextrd	$2, %xmm0, %edx
	movslq	%ebx, %rsi
	movslq	%edx, %rdx
	addq	%rax, %rdx
	vpextrd	$3, %xmm0, %eax
	movslq	%eax, %rbx
	addq	%rdx, %rbx
	vpextrd	$1, %xmm5, %eax
	addq	%rsi, %rbx
	vpextrd	$2, %xmm5, %edx
	cltq
	movslq	%edx, %rdx
	addq	%rax, %rbx
	vpextrd	$3, %xmm5, %eax
	cltq
	vextracti128	$1, %ymm5, %xmm0
	addq	%rdx, %rbx
	vmovd	%xmm0, %edx
	addq	%rax, %rbx
	vpextrd	$1, %xmm0, %eax
	movslq	%edx, %rdx
	cltq
	addq	%rdx, %rbx
	vpextrd	$2, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rax, %rbx
	vpextrd	$3, %xmm0, %eax
	cltq
	vextracti32x4	$2, %zmm5, %xmm0
	addq	%rdx, %rbx
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rax, %rbx
	vpextrd	$1, %xmm0, %eax
	cltq
	addq	%rdx, %rbx
	vpextrd	$2, %xmm0, %edx
	addq	%rax, %rbx
	vpextrd	$3, %xmm0, %eax
	movslq	%edx, %rdx
	cltq
	vextracti32x4	$3, %zmm5, %xmm0
	addq	%rdx, %rbx
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rax, %rbx
	vpextrd	$1, %xmm0, %eax
	addq	%rdx, %rbx
	vpextrd	$2, %xmm0, %edx
	cltq
	movslq	%edx, %rdx
	addq	%rax, %rbx
	vpextrd	$3, %xmm0, %eax
	addq	%rdx, %rbx
	vmovd	%xmm3, %edx
	cltq
	addq	%rax, %rbx
	vmovd	%xmm4, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$1, %xmm4, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$2, %xmm4, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$3, %xmm4, %eax
	cltq
	vextracti128	$1, %ymm4, %xmm0
	addq	%rax, %rbx
	vmovd	%xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$1, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$2, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$3, %xmm0, %eax
	cltq
	vextracti32x4	$2, %zmm4, %xmm0
	addq	%rax, %rbx
	vmovd	%xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$1, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$2, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$3, %xmm0, %eax
	cltq
	vextracti32x4	$3, %zmm4, %xmm0
	addq	%rax, %rbx
	vmovd	%xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$1, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$2, %xmm0, %eax
	movslq	%edx, %rdx
	cltq
	addq	%rax, %rbx
	vpextrd	$3, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$1, %xmm3, %eax
	addq	%rdx, %rbx
	vpextrd	$2, %xmm3, %edx
	cltq
	movslq	%edx, %rdx
	addq	%rax, %rbx
	vpextrd	$3, %xmm3, %eax
	cltq
	vextracti128	$1, %ymm3, %xmm0
	addq	%rdx, %rbx
	vmovd	%xmm0, %edx
	addq	%rax, %rbx
	vpextrd	$1, %xmm0, %eax
	movslq	%edx, %rdx
	cltq
	addq	%rdx, %rbx
	vpextrd	$2, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rax, %rbx
	vpextrd	$3, %xmm0, %eax
	cltq
	vextracti32x4	$2, %zmm3, %xmm0
	addq	%rdx, %rbx
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rax, %rbx
	vpextrd	$1, %xmm0, %eax
	cltq
	addq	%rdx, %rbx
	vpextrd	$2, %xmm0, %edx
	addq	%rax, %rbx
	vpextrd	$3, %xmm0, %eax
	movslq	%edx, %rdx
	cltq
	vextracti32x4	$3, %zmm3, %xmm0
	addq	%rdx, %rbx
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rax, %rbx
	vpextrd	$1, %xmm0, %eax
	addq	%rdx, %rbx
	vpextrd	$2, %xmm0, %edx
	cltq
	movslq	%edx, %rdx
	addq	%rax, %rbx
	vpextrd	$3, %xmm0, %eax
	addq	%rdx, %rbx
	vmovd	%xmm16, %edx
	cltq
	addq	%rax, %rbx
	vmovd	%xmm2, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$1, %xmm2, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$2, %xmm2, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$3, %xmm2, %eax
	cltq
	vextracti128	$1, %ymm2, %xmm0
	addq	%rax, %rbx
	vmovd	%xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$1, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$2, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$3, %xmm0, %eax
	cltq
	vextracti32x4	$2, %zmm2, %xmm0
	addq	%rax, %rbx
	vmovd	%xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$1, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$2, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$3, %xmm0, %eax
	cltq
	vextracti32x4	$3, %zmm2, %xmm0
	addq	%rax, %rbx
	vmovd	%xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$1, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$2, %xmm0, %eax
	movslq	%edx, %rdx
	cltq
	addq	%rax, %rbx
	vpextrd	$3, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vmovd	%xmm1, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$1, %xmm1, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$2, %xmm1, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$3, %xmm1, %eax
	cltq
	vextracti128	$1, %ymm1, %xmm0
	addq	%rax, %rbx
	vmovd	%xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$1, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$2, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$3, %xmm0, %eax
	cltq
	vextracti32x4	$2, %zmm1, %xmm0
	addq	%rax, %rbx
	vmovd	%xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$1, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$2, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$3, %xmm0, %eax
	cltq
	vextracti32x4	$3, %zmm1, %xmm0
	addq	%rax, %rbx
	vmovd	%xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$1, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$2, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$3, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$1, %xmm16, %eax
	cltq
	addq	%rdx, %rbx
	vpextrd	$2, %xmm16, %edx
	movslq	%edx, %rdx
	addq	%rax, %rbx
	vpextrd	$3, %xmm16, %eax
	cltq
	vextracti32x4	$1, %ymm16, %xmm0
	addq	%rdx, %rbx
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rax, %rbx
	vpextrd	$1, %xmm0, %eax
	cltq
	addq	%rdx, %rbx
	vpextrd	$2, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rax, %rbx
	vpextrd	$3, %xmm0, %eax
	cltq
	vextracti32x4	$2, %zmm16, %xmm0
	addq	%rdx, %rbx
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rax, %rbx
	vpextrd	$1, %xmm0, %eax
	cltq
	addq	%rdx, %rbx
	vpextrd	$2, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rax, %rbx
	vpextrd	$3, %xmm0, %eax
	cltq
	vextracti32x4	$3, %zmm16, %xmm0
	addq	%rdx, %rbx
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rax, %rbx
	vpextrd	$1, %xmm0, %eax
	addq	%rdx, %rbx
	cltq
	addq	%rax, %rbx
	vpextrd	$2, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$3, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vmovd	%xmm7, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$1, %xmm7, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$2, %xmm7, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$3, %xmm7, %eax
	cltq
	vextracti128	$1, %ymm7, %xmm0
	addq	%rax, %rbx
	vmovd	%xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$1, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$2, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$3, %xmm0, %eax
	cltq
	vextracti32x4	$2, %zmm7, %xmm0
	addq	%rax, %rbx
	vmovd	%xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$1, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$2, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$3, %xmm0, %eax
	cltq
	vextracti32x4	$3, %zmm7, %xmm0
	addq	%rax, %rbx
	vmovd	%xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$1, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$2, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	vpextrd	$3, %xmm0, %eax
	cltq
	addq	%rax, %rbx
	addq	%rbx, %rcx
	movq	%rcx, (%rdi)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm7, %xmm7, %xmm7
	vpgatherdd	A(,%zmm8,4), %zmm7 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxord	%xmm16, %xmm16, %xmm16
	vpgatherdd	A(,%zmm10,4), %zmm16 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm11,4), %zmm1 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm2, %xmm2, %xmm2
	vpgatherdd	A(,%zmm13,4), %zmm2 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm3, %xmm3, %xmm3
	vpgatherdd	A(,%zmm14,4), %zmm3 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm4, %xmm4, %xmm4
	vpgatherdd	A(,%zmm15,4), %zmm4 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm5, %xmm5, %xmm5
	vpgatherdd	A(,%zmm12,4), %zmm5 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm6, %xmm6, %xmm6
	vpgatherdd	A(,%zmm9,4), %zmm6 {%k1}
	vmovdqa64	-448(%rbp), %zmm8
	vmovdqa64	-384(%rbp), %zmm10
	vmovdqa64	-320(%rbp), %zmm11
	vmovdqa64	-256(%rbp), %zmm13
	vmovdqa64	-192(%rbp), %zmm14
	vmovdqa64	-128(%rbp), %zmm15
	vmovdqa64	-64(%rbp), %zmm12
	vmovdqa64	(%rbp), %zmm9
	addq	%r10, %rbp
	decq	%r11
	jne	.LBB9_2
.LBB9_3:                                # %for.cond364.preheader
	leaq	-1(%r9), %rax
	cmpq	%rax, %r8
	jge	.LBB9_7
# %bb.4:                                # %for.body369.preheader
	movq	(%rdi), %rcx
	notq	%r8
	addq	%r9, %r8
	.p2align	4, 0x90
.LBB9_5:                                # %for.body369
                                        # =>This Inner Loop Header: Depth=1
	vmovd	%xmm6, %edx
	movslq	%edx, %rdx
	vpextrd	$1, %xmm6, %esi
	movslq	%esi, %rsi
	addq	%rdx, %rsi
	vpextrd	$2, %xmm6, %edx
	movslq	%edx, %rdx
	addq	%rsi, %rdx
	vpextrd	$3, %xmm6, %esi
	movslq	%esi, %rsi
	addq	%rdx, %rsi
	vextracti128	$1, %ymm6, %xmm0
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rsi, %rdx
	vpextrd	$1, %xmm0, %esi
	movslq	%esi, %rsi
	addq	%rdx, %rsi
	vpextrd	$2, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rsi, %rdx
	vpextrd	$3, %xmm0, %esi
	movslq	%esi, %rsi
	addq	%rdx, %rsi
	vextracti32x4	$2, %zmm6, %xmm0
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rsi, %rdx
	vpextrd	$1, %xmm0, %esi
	movslq	%esi, %rsi
	addq	%rdx, %rsi
	vpextrd	$2, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rsi, %rdx
	vpextrd	$3, %xmm0, %esi
	movslq	%esi, %rsi
	addq	%rdx, %rsi
	vextracti32x4	$3, %zmm6, %xmm0
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rsi, %rdx
	vpextrd	$1, %xmm0, %esi
	movslq	%esi, %rsi
	addq	%rdx, %rsi
	vpextrd	$2, %xmm0, %edx
	vmovd	%xmm4, %ebp
	movslq	%edx, %rdx
	addq	%rsi, %rdx
	vpextrd	$3, %xmm0, %esi
	movslq	%esi, %rsi
	addq	%rdx, %rsi
	vmovd	%xmm5, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$1, %xmm5, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$2, %xmm5, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$3, %xmm5, %edx
	movslq	%edx, %rdx
	vextracti128	$1, %ymm5, %xmm0
	addq	%rdx, %rsi
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$1, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$2, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$3, %xmm0, %edx
	movslq	%edx, %rdx
	vextracti32x4	$2, %zmm5, %xmm0
	addq	%rdx, %rsi
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$1, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$2, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$3, %xmm0, %edx
	movslq	%edx, %rdx
	vextracti32x4	$3, %zmm5, %xmm0
	addq	%rdx, %rsi
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$1, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$2, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$3, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$1, %xmm4, %edx
	movslq	%ebp, %rbp
	movslq	%edx, %rdx
	addq	%rbp, %rsi
	vpextrd	$2, %xmm4, %ebp
	movslq	%ebp, %rbp
	addq	%rdx, %rsi
	vpextrd	$3, %xmm4, %edx
	movslq	%edx, %rdx
	vextracti128	$1, %ymm4, %xmm0
	addq	%rbp, %rsi
	vmovd	%xmm0, %ebp
	movslq	%ebp, %rbp
	addq	%rdx, %rsi
	vpextrd	$1, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rbp, %rsi
	vpextrd	$2, %xmm0, %ebp
	addq	%rdx, %rsi
	vpextrd	$3, %xmm0, %edx
	movslq	%ebp, %rbp
	movslq	%edx, %rdx
	vextracti32x4	$2, %zmm4, %xmm0
	addq	%rbp, %rsi
	vmovd	%xmm0, %ebp
	movslq	%ebp, %rbp
	addq	%rdx, %rsi
	vpextrd	$1, %xmm0, %edx
	addq	%rbp, %rsi
	vpextrd	$2, %xmm0, %ebp
	movslq	%edx, %rdx
	movslq	%ebp, %rbp
	addq	%rdx, %rsi
	vpextrd	$3, %xmm0, %edx
	movslq	%edx, %rdx
	vextracti32x4	$3, %zmm4, %xmm0
	addq	%rbp, %rsi
	vmovd	%xmm0, %ebp
	addq	%rdx, %rsi
	vpextrd	$1, %xmm0, %edx
	movslq	%ebp, %rbp
	movslq	%edx, %rdx
	addq	%rbp, %rsi
	vpextrd	$2, %xmm0, %ebp
	addq	%rdx, %rsi
	vmovd	%xmm2, %edx
	movslq	%ebp, %rbp
	addq	%rbp, %rsi
	vpextrd	$3, %xmm0, %ebp
	movslq	%ebp, %rbp
	addq	%rbp, %rsi
	vmovd	%xmm3, %ebp
	movslq	%ebp, %rbp
	addq	%rbp, %rsi
	vpextrd	$1, %xmm3, %ebp
	movslq	%ebp, %rbp
	addq	%rbp, %rsi
	vpextrd	$2, %xmm3, %ebp
	movslq	%ebp, %rbp
	addq	%rbp, %rsi
	vpextrd	$3, %xmm3, %ebp
	movslq	%ebp, %rbp
	vextracti128	$1, %ymm3, %xmm0
	addq	%rbp, %rsi
	vmovd	%xmm0, %ebp
	movslq	%ebp, %rbp
	addq	%rbp, %rsi
	vpextrd	$1, %xmm0, %ebp
	movslq	%ebp, %rbp
	addq	%rbp, %rsi
	vpextrd	$2, %xmm0, %ebp
	movslq	%ebp, %rbp
	addq	%rbp, %rsi
	vpextrd	$3, %xmm0, %ebp
	movslq	%ebp, %rbp
	vextracti32x4	$2, %zmm3, %xmm0
	addq	%rbp, %rsi
	vmovd	%xmm0, %ebp
	movslq	%ebp, %rbp
	addq	%rbp, %rsi
	vpextrd	$1, %xmm0, %ebp
	movslq	%ebp, %rbp
	addq	%rbp, %rsi
	vpextrd	$2, %xmm0, %ebp
	movslq	%ebp, %rbp
	addq	%rbp, %rsi
	vpextrd	$3, %xmm0, %ebp
	movslq	%ebp, %rbp
	vextracti32x4	$3, %zmm3, %xmm0
	addq	%rbp, %rsi
	vmovd	%xmm0, %ebp
	movslq	%ebp, %rbp
	addq	%rbp, %rsi
	vpextrd	$1, %xmm0, %ebp
	movslq	%ebp, %rbp
	addq	%rbp, %rsi
	vpextrd	$2, %xmm0, %ebp
	movslq	%ebp, %rbp
	addq	%rbp, %rsi
	vpextrd	$3, %xmm0, %ebp
	movslq	%ebp, %rbp
	addq	%rbp, %rsi
	vpextrd	$1, %xmm2, %ebp
	movslq	%edx, %rdx
	movslq	%ebp, %rbp
	addq	%rdx, %rsi
	vpextrd	$2, %xmm2, %edx
	movslq	%edx, %rdx
	addq	%rbp, %rsi
	vpextrd	$3, %xmm2, %ebp
	movslq	%ebp, %rbp
	vextracti128	$1, %ymm2, %xmm0
	addq	%rdx, %rsi
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rbp, %rsi
	vpextrd	$1, %xmm0, %ebp
	movslq	%ebp, %rbp
	addq	%rdx, %rsi
	vpextrd	$2, %xmm0, %edx
	addq	%rbp, %rsi
	vpextrd	$3, %xmm0, %ebp
	movslq	%edx, %rdx
	movslq	%ebp, %rbp
	vextracti32x4	$2, %zmm2, %xmm0
	addq	%rdx, %rsi
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rbp, %rsi
	vpextrd	$1, %xmm0, %ebp
	addq	%rdx, %rsi
	vpextrd	$2, %xmm0, %edx
	movslq	%ebp, %rbp
	movslq	%edx, %rdx
	addq	%rbp, %rsi
	vpextrd	$3, %xmm0, %ebp
	movslq	%ebp, %rbp
	vextracti32x4	$3, %zmm2, %xmm0
	addq	%rdx, %rsi
	vmovd	%xmm0, %edx
	addq	%rbp, %rsi
	vpextrd	$1, %xmm0, %ebp
	movslq	%edx, %rdx
	movslq	%ebp, %rbp
	addq	%rdx, %rsi
	vpextrd	$2, %xmm0, %edx
	addq	%rbp, %rsi
	vmovd	%xmm7, %ebp
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$3, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vmovd	%xmm1, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$1, %xmm1, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$2, %xmm1, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$3, %xmm1, %edx
	movslq	%edx, %rdx
	vextracti128	$1, %ymm1, %xmm0
	addq	%rdx, %rsi
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$1, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$2, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$3, %xmm0, %edx
	movslq	%edx, %rdx
	vextracti32x4	$2, %zmm1, %xmm0
	addq	%rdx, %rsi
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$1, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$2, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$3, %xmm0, %edx
	movslq	%edx, %rdx
	vextracti32x4	$3, %zmm1, %xmm0
	addq	%rdx, %rsi
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$1, %xmm0, %edx
	movslq	%ebp, %rbp
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$2, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$3, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vmovd	%xmm16, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$1, %xmm16, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$2, %xmm16, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$3, %xmm16, %edx
	movslq	%edx, %rdx
	vextracti32x4	$1, %ymm16, %xmm0
	addq	%rdx, %rsi
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$1, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$2, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$3, %xmm0, %edx
	movslq	%edx, %rdx
	vextracti32x4	$2, %zmm16, %xmm0
	addq	%rdx, %rsi
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$1, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$2, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$3, %xmm0, %edx
	movslq	%edx, %rdx
	vextracti32x4	$3, %zmm16, %xmm0
	addq	%rdx, %rsi
	vmovd	%xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$1, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$2, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$3, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	vpextrd	$1, %xmm7, %edx
	movslq	%edx, %rdx
	addq	%rbp, %rsi
	vpextrd	$2, %xmm7, %ebp
	movslq	%ebp, %rbp
	addq	%rdx, %rsi
	vpextrd	$3, %xmm7, %edx
	movslq	%edx, %rdx
	vextracti128	$1, %ymm7, %xmm0
	addq	%rbp, %rsi
	vmovd	%xmm0, %ebp
	movslq	%ebp, %rbp
	addq	%rdx, %rsi
	vpextrd	$1, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rbp, %rsi
	vpextrd	$2, %xmm0, %ebp
	movslq	%ebp, %rbp
	addq	%rdx, %rsi
	vpextrd	$3, %xmm0, %edx
	movslq	%edx, %rdx
	vextracti32x4	$2, %zmm7, %xmm0
	addq	%rbp, %rsi
	vmovd	%xmm0, %ebp
	movslq	%ebp, %rbp
	addq	%rdx, %rsi
	vpextrd	$1, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rbp, %rsi
	vpextrd	$2, %xmm0, %ebp
	movslq	%ebp, %rbp
	addq	%rdx, %rsi
	vpextrd	$3, %xmm0, %edx
	movslq	%edx, %rdx
	vextracti32x4	$3, %zmm7, %xmm0
	addq	%rbp, %rsi
	vmovd	%xmm0, %ebp
	movslq	%ebp, %rbp
	addq	%rdx, %rsi
	vpextrd	$1, %xmm0, %edx
	movslq	%edx, %rdx
	addq	%rbp, %rsi
	vpextrd	$2, %xmm0, %ebp
	movslq	%ebp, %rbp
	addq	%rdx, %rsi
	vpextrd	$3, %xmm0, %edx
	addq	%rbp, %rsi
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	addq	%rsi, %rcx
	movq	%rcx, (%rdi)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm7, %xmm7, %xmm7
	vpgatherdd	A(,%zmm8,4), %zmm7 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxord	%xmm16, %xmm16, %xmm16
	vpgatherdd	A(,%zmm10,4), %zmm16 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm11,4), %zmm1 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm2, %xmm2, %xmm2
	vpgatherdd	A(,%zmm13,4), %zmm2 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm3, %xmm3, %xmm3
	vpgatherdd	A(,%zmm14,4), %zmm3 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm4, %xmm4, %xmm4
	vpgatherdd	A(,%zmm15,4), %zmm4 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm5, %xmm5, %xmm5
	vpgatherdd	A(,%zmm12,4), %zmm5 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm6, %xmm6, %xmm6
	vpgatherdd	A(,%zmm9,4), %zmm6 {%k1}
	decq	%r8
	jne	.LBB9_5
# %bb.6:
	movq	%rax, %r8
.LBB9_7:                                # %for.cond686.preheader
	cmpq	%r9, %r8
	jge	.LBB9_9
# %bb.8:                                # %for.body690.lr.ph
	vmovd	%xmm7, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 616(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm7, %ecx
	vpextrd	$2, %xmm7, %edx
	movslq	%ecx, %rcx
	movq	%rcx, 696(%rsp)                 # 8-byte Spill
	movslq	%edx, %rcx
	movq	%rcx, 704(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm7, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 688(%rsp)                 # 8-byte Spill
	vextracti128	$1, %ymm7, %xmm0
	vmovd	%xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 680(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm0, %ecx
	vpextrd	$2, %xmm0, %edx
	movslq	%ecx, %rcx
	movq	%rcx, 664(%rsp)                 # 8-byte Spill
	movslq	%edx, %rcx
	movq	%rcx, 672(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 656(%rsp)                 # 8-byte Spill
	vextracti32x4	$2, %zmm7, %xmm0
	vmovd	%xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 648(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm0, %ecx
	vpextrd	$2, %xmm0, %edx
	movslq	%ecx, %rcx
	movq	%rcx, 632(%rsp)                 # 8-byte Spill
	movslq	%edx, %rcx
	movq	%rcx, 640(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 624(%rsp)                 # 8-byte Spill
	vextracti32x4	$3, %zmm7, %xmm7
	subq	%r8, %rax
	vmovd	%xmm7, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 608(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm7, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 600(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm7, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 592(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm7, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 584(%rsp)                 # 8-byte Spill
	vmovd	%xmm16, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 456(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm16, %ecx
	vpextrd	$2, %xmm16, %edx
	movslq	%ecx, %rcx
	movq	%rcx, 560(%rsp)                 # 8-byte Spill
	movslq	%edx, %rcx
	movq	%rcx, 576(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm16, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 568(%rsp)                 # 8-byte Spill
	vextracti32x4	$1, %ymm16, %xmm0
	vmovd	%xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 552(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm0, %ecx
	vpextrd	$2, %xmm0, %edx
	movslq	%ecx, %rcx
	movq	%rcx, 528(%rsp)                 # 8-byte Spill
	movslq	%edx, %rcx
	movq	%rcx, 544(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 536(%rsp)                 # 8-byte Spill
	vextracti32x4	$2, %zmm16, %xmm0
	vmovd	%xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 520(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm0, %ecx
	vpextrd	$2, %xmm0, %edx
	movslq	%ecx, %rcx
	movq	%rcx, 496(%rsp)                 # 8-byte Spill
	movslq	%edx, %rcx
	movq	%rcx, 512(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 504(%rsp)                 # 8-byte Spill
	vextracti32x4	$3, %zmm16, %xmm0
	vmovd	%xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 488(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm0, %ecx
	vpextrd	$2, %xmm0, %edx
	movslq	%ecx, %rcx
	movq	%rcx, 464(%rsp)                 # 8-byte Spill
	movslq	%edx, %rcx
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 472(%rsp)                 # 8-byte Spill
	vmovd	%xmm1, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 328(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm1, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 448(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm1, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 440(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm1, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 432(%rsp)                 # 8-byte Spill
	vextracti128	$1, %ymm1, %xmm0
	vmovd	%xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 424(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 416(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 408(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 400(%rsp)                 # 8-byte Spill
	vextracti32x4	$2, %zmm1, %xmm0
	vmovd	%xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 392(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 384(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 376(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 368(%rsp)                 # 8-byte Spill
	vextracti32x4	$3, %zmm1, %xmm0
	vmovd	%xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 360(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 352(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 344(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 336(%rsp)                 # 8-byte Spill
	vmovd	%xmm2, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm2, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 320(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm2, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 312(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm2, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 304(%rsp)                 # 8-byte Spill
	vextracti128	$1, %ymm2, %xmm0
	vmovd	%xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 296(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 288(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 280(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 272(%rsp)                 # 8-byte Spill
	vextracti32x4	$2, %zmm2, %xmm0
	vmovd	%xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 264(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 256(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 248(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 240(%rsp)                 # 8-byte Spill
	vextracti32x4	$3, %zmm2, %xmm0
	vmovd	%xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 232(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 224(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 216(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	vmovd	%xmm3, %ecx
	vpextrd	$1, %xmm3, %edx
	movslq	%ecx, %rcx
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	movslq	%edx, %rcx
	movq	%rcx, 856(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm3, %ecx
	vpextrd	$3, %xmm3, %edx
	movslq	%ecx, %rcx
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	movslq	%edx, %rcx
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	vextracti128	$1, %ymm3, %xmm0
	vmovd	%xmm0, %ecx
	vpextrd	$1, %xmm0, %edx
	movslq	%ecx, %rcx
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	movslq	%edx, %rcx
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm0, %ecx
	vpextrd	$3, %xmm0, %edx
	movslq	%ecx, %rcx
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	movslq	%edx, %rcx
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	vextracti32x4	$2, %zmm3, %xmm0
	vmovd	%xmm0, %ecx
	vpextrd	$1, %xmm0, %edx
	movslq	%ecx, %rcx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	movslq	%edx, %rcx
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm0, %ecx
	vpextrd	$3, %xmm0, %edx
	movslq	%ecx, %rcx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movslq	%edx, %rcx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	vextracti32x4	$3, %zmm3, %xmm0
	vmovd	%xmm0, %ecx
	vpextrd	$1, %xmm0, %edx
	movslq	%ecx, %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movslq	%edx, %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm0, %ecx
	vpextrd	$3, %xmm0, %edx
	movslq	%ecx, %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movslq	%edx, %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	vmovd	%xmm4, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	vpextrd	$1, %xmm4, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	vpextrd	$2, %xmm4, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	vpextrd	$3, %xmm4, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	vextracti128	$1, %ymm4, %xmm0
	vmovd	%xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	vpextrd	$1, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 768(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	vpextrd	$3, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 760(%rsp)                 # 8-byte Spill
	vextracti32x4	$2, %zmm4, %xmm0
	vmovd	%xmm0, %ecx
	movq	%rdi, 864(%rsp)                 # 8-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	vpextrd	$1, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 752(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	vpextrd	$3, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	vextracti32x4	$3, %zmm4, %xmm0
	vmovd	%xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	vpextrd	$1, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 744(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 736(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	vmovd	%xmm5, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm5, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm5, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm5, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	vextracti128	$1, %ymm5, %xmm0
	vmovd	%xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -104(%rsp)                # 8-byte Spill
	vpextrd	$3, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -120(%rsp)                # 8-byte Spill
	vextracti32x4	$2, %zmm5, %xmm0
	vmovd	%xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -112(%rsp)                # 8-byte Spill
	vpextrd	$1, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -96(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 728(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	vextracti32x4	$3, %zmm5, %xmm0
	vmovd	%xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -72(%rsp)                 # 8-byte Spill
	vpextrd	$2, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 720(%rsp)                 # 8-byte Spill
	vmovd	%xmm6, %ecx
	movslq	%ecx, %r12
	movq	%r12, 816(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm6, %ecx
	vpextrd	$2, %xmm6, %edx
	movslq	%ecx, %r15
	movq	%r15, 776(%rsp)                 # 8-byte Spill
	movslq	%edx, %rcx
	movq	%rcx, -128(%rsp)                # 8-byte Spill
	vpextrd	$3, %xmm6, %ecx
	movslq	%ecx, %r13
	movq	%r13, 784(%rsp)                 # 8-byte Spill
	vextracti128	$1, %ymm6, %xmm0
	vmovd	%xmm0, %ecx
	movslq	%ecx, %r14
	movq	%r14, 800(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm0, %ecx
	vpextrd	$2, %xmm0, %edx
	movslq	%ecx, %r10
	movq	%r10, 840(%rsp)                 # 8-byte Spill
	movslq	%edx, %r11
	movq	%r11, 792(%rsp)                 # 8-byte Spill
	vpextrd	$3, %xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 712(%rsp)                 # 8-byte Spill
	vextracti32x4	$2, %zmm6, %xmm0
	vmovd	%xmm0, %ecx
	movslq	%ecx, %rbx
	movq	%rbx, 848(%rsp)                 # 8-byte Spill
	vpextrd	$1, %xmm0, %ecx
	vpextrd	$2, %xmm0, %edx
	movslq	%ecx, %r9
	movq	%r9, 808(%rsp)                  # 8-byte Spill
	movslq	%edx, %r8
	movq	%r8, 824(%rsp)                  # 8-byte Spill
	vpextrd	$3, %xmm0, %ecx
	movslq	%ecx, %rdi
	movq	%rdi, 832(%rsp)                 # 8-byte Spill
	vextracti32x4	$3, %zmm6, %xmm0
	vmovd	%xmm0, %ecx
	movslq	%ecx, %rdx
	vpextrd	$1, %xmm0, %ecx
	vpextrd	$2, %xmm0, %ebp
	movslq	%ecx, %rcx
	movslq	%ebp, %rsi
	vpextrd	$3, %xmm0, %ebp
	movslq	%ebp, %rbp
	addq	%r15, %r12
	addq	-128(%rsp), %r12                # 8-byte Folded Reload
	addq	%r13, %r12
	addq	%r14, %r12
	addq	%r10, %r12
	addq	%r11, %r12
	movq	712(%rsp), %r11                 # 8-byte Reload
	addq	%r11, %r12
	addq	%rbx, %r12
	addq	%r9, %r12
	addq	%r8, %r12
	addq	%rdi, %r12
	addq	%rdx, %r12
	movq	%rdx, %r15
	addq	%rcx, %r12
	addq	%rsi, %r12
	addq	%rbp, %r12
	addq	-16(%rsp), %r12                 # 8-byte Folded Reload
	addq	-24(%rsp), %r12                 # 8-byte Folded Reload
	addq	-32(%rsp), %r12                 # 8-byte Folded Reload
	addq	-48(%rsp), %r12                 # 8-byte Folded Reload
	addq	-40(%rsp), %r12                 # 8-byte Folded Reload
	addq	-56(%rsp), %r12                 # 8-byte Folded Reload
	addq	-104(%rsp), %r12                # 8-byte Folded Reload
	addq	-120(%rsp), %r12                # 8-byte Folded Reload
	addq	-112(%rsp), %r12                # 8-byte Folded Reload
	addq	-96(%rsp), %r12                 # 8-byte Folded Reload
	movq	728(%rsp), %r8                  # 8-byte Reload
	addq	%r8, %r12
	addq	-88(%rsp), %r12                 # 8-byte Folded Reload
	addq	-80(%rsp), %r12                 # 8-byte Folded Reload
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	addq	-64(%rsp), %r12                 # 8-byte Folded Reload
	movq	720(%rsp), %rdx                 # 8-byte Reload
	addq	%rdx, %r12
	addq	48(%rsp), %r12                  # 8-byte Folded Reload
	addq	56(%rsp), %r12                  # 8-byte Folded Reload
	addq	40(%rsp), %r12                  # 8-byte Folded Reload
	addq	64(%rsp), %r12                  # 8-byte Folded Reload
	addq	32(%rsp), %r12                  # 8-byte Folded Reload
	movq	768(%rsp), %rdi                 # 8-byte Reload
	addq	%rdi, %r12
	addq	24(%rsp), %r12                  # 8-byte Folded Reload
	movq	760(%rsp), %r9                  # 8-byte Reload
	addq	%r9, %r12
	addq	16(%rsp), %r12                  # 8-byte Folded Reload
	movq	752(%rsp), %r10                 # 8-byte Reload
	addq	%r10, %r12
	addq	8(%rsp), %r12                   # 8-byte Folded Reload
	addq	72(%rsp), %r12                  # 8-byte Folded Reload
	addq	(%rsp), %r12                    # 8-byte Folded Reload
	movq	744(%rsp), %r14                 # 8-byte Reload
	addq	%r14, %r12
	movq	736(%rsp), %r13                 # 8-byte Reload
	addq	%r13, %r12
	addq	-8(%rsp), %r12                  # 8-byte Folded Reload
	addq	184(%rsp), %r12                 # 8-byte Folded Reload
	movq	856(%rsp), %rbx                 # 8-byte Reload
	addq	%rbx, %r12
	addq	176(%rsp), %r12                 # 8-byte Folded Reload
	addq	192(%rsp), %r12                 # 8-byte Folded Reload
	addq	152(%rsp), %r12                 # 8-byte Folded Reload
	addq	168(%rsp), %r12                 # 8-byte Folded Reload
	addq	144(%rsp), %r12                 # 8-byte Folded Reload
	addq	160(%rsp), %r12                 # 8-byte Folded Reload
	addq	120(%rsp), %r12                 # 8-byte Folded Reload
	addq	136(%rsp), %r12                 # 8-byte Folded Reload
	addq	112(%rsp), %r12                 # 8-byte Folded Reload
	addq	128(%rsp), %r12                 # 8-byte Folded Reload
	addq	88(%rsp), %r12                  # 8-byte Folded Reload
	addq	104(%rsp), %r12                 # 8-byte Folded Reload
	addq	80(%rsp), %r12                  # 8-byte Folded Reload
	addq	96(%rsp), %r12                  # 8-byte Folded Reload
	addq	200(%rsp), %r12                 # 8-byte Folded Reload
	addq	320(%rsp), %r12                 # 8-byte Folded Reload
	addq	312(%rsp), %r12                 # 8-byte Folded Reload
	addq	304(%rsp), %r12                 # 8-byte Folded Reload
	addq	296(%rsp), %r12                 # 8-byte Folded Reload
	addq	288(%rsp), %r12                 # 8-byte Folded Reload
	addq	280(%rsp), %r12                 # 8-byte Folded Reload
	addq	272(%rsp), %r12                 # 8-byte Folded Reload
	addq	264(%rsp), %r12                 # 8-byte Folded Reload
	addq	256(%rsp), %r12                 # 8-byte Folded Reload
	addq	248(%rsp), %r12                 # 8-byte Folded Reload
	addq	240(%rsp), %r12                 # 8-byte Folded Reload
	addq	232(%rsp), %r12                 # 8-byte Folded Reload
	addq	224(%rsp), %r12                 # 8-byte Folded Reload
	addq	216(%rsp), %r12                 # 8-byte Folded Reload
	addq	208(%rsp), %r12                 # 8-byte Folded Reload
	addq	328(%rsp), %r12                 # 8-byte Folded Reload
	addq	448(%rsp), %r12                 # 8-byte Folded Reload
	addq	440(%rsp), %r12                 # 8-byte Folded Reload
	addq	432(%rsp), %r12                 # 8-byte Folded Reload
	addq	424(%rsp), %r12                 # 8-byte Folded Reload
	addq	416(%rsp), %r12                 # 8-byte Folded Reload
	addq	408(%rsp), %r12                 # 8-byte Folded Reload
	addq	400(%rsp), %r12                 # 8-byte Folded Reload
	addq	392(%rsp), %r12                 # 8-byte Folded Reload
	addq	384(%rsp), %r12                 # 8-byte Folded Reload
	addq	376(%rsp), %r12                 # 8-byte Folded Reload
	addq	368(%rsp), %r12                 # 8-byte Folded Reload
	addq	360(%rsp), %r12                 # 8-byte Folded Reload
	addq	352(%rsp), %r12                 # 8-byte Folded Reload
	addq	344(%rsp), %r12                 # 8-byte Folded Reload
	addq	336(%rsp), %r12                 # 8-byte Folded Reload
	addq	456(%rsp), %r12                 # 8-byte Folded Reload
	addq	560(%rsp), %r12                 # 8-byte Folded Reload
	addq	576(%rsp), %r12                 # 8-byte Folded Reload
	addq	568(%rsp), %r12                 # 8-byte Folded Reload
	addq	552(%rsp), %r12                 # 8-byte Folded Reload
	addq	528(%rsp), %r12                 # 8-byte Folded Reload
	addq	544(%rsp), %r12                 # 8-byte Folded Reload
	addq	536(%rsp), %r12                 # 8-byte Folded Reload
	addq	520(%rsp), %r12                 # 8-byte Folded Reload
	addq	496(%rsp), %r12                 # 8-byte Folded Reload
	addq	512(%rsp), %r12                 # 8-byte Folded Reload
	addq	504(%rsp), %r12                 # 8-byte Folded Reload
	addq	488(%rsp), %r12                 # 8-byte Folded Reload
	addq	464(%rsp), %r12                 # 8-byte Folded Reload
	addq	480(%rsp), %r12                 # 8-byte Folded Reload
	addq	472(%rsp), %r12                 # 8-byte Folded Reload
	addq	616(%rsp), %r12                 # 8-byte Folded Reload
	addq	696(%rsp), %r12                 # 8-byte Folded Reload
	addq	704(%rsp), %r12                 # 8-byte Folded Reload
	addq	688(%rsp), %r12                 # 8-byte Folded Reload
	addq	680(%rsp), %r12                 # 8-byte Folded Reload
	addq	664(%rsp), %r12                 # 8-byte Folded Reload
	addq	672(%rsp), %r12                 # 8-byte Folded Reload
	addq	656(%rsp), %r12                 # 8-byte Folded Reload
	addq	648(%rsp), %r12                 # 8-byte Folded Reload
	addq	632(%rsp), %r12                 # 8-byte Folded Reload
	addq	640(%rsp), %r12                 # 8-byte Folded Reload
	addq	624(%rsp), %r12                 # 8-byte Folded Reload
	addq	608(%rsp), %r12                 # 8-byte Folded Reload
	addq	600(%rsp), %r12                 # 8-byte Folded Reload
	addq	592(%rsp), %r12                 # 8-byte Folded Reload
	addq	584(%rsp), %r12                 # 8-byte Folded Reload
	imulq	%r12, %rax
	movq	864(%rsp), %r12                 # 8-byte Reload
	addq	(%r12), %rax
	addq	776(%rsp), %rax                 # 8-byte Folded Reload
	addq	816(%rsp), %rax                 # 8-byte Folded Reload
	addq	-128(%rsp), %rax                # 8-byte Folded Reload
	addq	784(%rsp), %rax                 # 8-byte Folded Reload
	addq	800(%rsp), %rax                 # 8-byte Folded Reload
	addq	840(%rsp), %rax                 # 8-byte Folded Reload
	addq	792(%rsp), %rax                 # 8-byte Folded Reload
	addq	%r11, %rax
	addq	848(%rsp), %rax                 # 8-byte Folded Reload
	addq	808(%rsp), %rax                 # 8-byte Folded Reload
	addq	824(%rsp), %rax                 # 8-byte Folded Reload
	addq	832(%rsp), %rax                 # 8-byte Folded Reload
	addq	%r15, %rax
	addq	%rcx, %rax
	addq	%rsi, %rax
	addq	%rbp, %rax
	addq	-16(%rsp), %rax                 # 8-byte Folded Reload
	addq	-24(%rsp), %rax                 # 8-byte Folded Reload
	addq	-32(%rsp), %rax                 # 8-byte Folded Reload
	addq	-48(%rsp), %rax                 # 8-byte Folded Reload
	addq	-40(%rsp), %rax                 # 8-byte Folded Reload
	addq	-56(%rsp), %rax                 # 8-byte Folded Reload
	addq	-104(%rsp), %rax                # 8-byte Folded Reload
	addq	-120(%rsp), %rax                # 8-byte Folded Reload
	addq	-112(%rsp), %rax                # 8-byte Folded Reload
	addq	-96(%rsp), %rax                 # 8-byte Folded Reload
	addq	%r8, %rax
	addq	-88(%rsp), %rax                 # 8-byte Folded Reload
	addq	-80(%rsp), %rax                 # 8-byte Folded Reload
	addq	-72(%rsp), %rax                 # 8-byte Folded Reload
	addq	-64(%rsp), %rax                 # 8-byte Folded Reload
	addq	%rdx, %rax
	addq	48(%rsp), %rax                  # 8-byte Folded Reload
	addq	56(%rsp), %rax                  # 8-byte Folded Reload
	addq	40(%rsp), %rax                  # 8-byte Folded Reload
	addq	64(%rsp), %rax                  # 8-byte Folded Reload
	addq	32(%rsp), %rax                  # 8-byte Folded Reload
	addq	%rdi, %rax
	addq	24(%rsp), %rax                  # 8-byte Folded Reload
	addq	%r9, %rax
	addq	16(%rsp), %rax                  # 8-byte Folded Reload
	addq	%r10, %rax
	addq	8(%rsp), %rax                   # 8-byte Folded Reload
	addq	72(%rsp), %rax                  # 8-byte Folded Reload
	addq	(%rsp), %rax                    # 8-byte Folded Reload
	addq	%r14, %rax
	addq	%r13, %rax
	addq	-8(%rsp), %rax                  # 8-byte Folded Reload
	addq	184(%rsp), %rax                 # 8-byte Folded Reload
	addq	%rbx, %rax
	addq	176(%rsp), %rax                 # 8-byte Folded Reload
	addq	192(%rsp), %rax                 # 8-byte Folded Reload
	addq	152(%rsp), %rax                 # 8-byte Folded Reload
	addq	168(%rsp), %rax                 # 8-byte Folded Reload
	addq	144(%rsp), %rax                 # 8-byte Folded Reload
	addq	160(%rsp), %rax                 # 8-byte Folded Reload
	addq	120(%rsp), %rax                 # 8-byte Folded Reload
	addq	136(%rsp), %rax                 # 8-byte Folded Reload
	addq	112(%rsp), %rax                 # 8-byte Folded Reload
	addq	128(%rsp), %rax                 # 8-byte Folded Reload
	addq	88(%rsp), %rax                  # 8-byte Folded Reload
	addq	104(%rsp), %rax                 # 8-byte Folded Reload
	addq	80(%rsp), %rax                  # 8-byte Folded Reload
	addq	96(%rsp), %rax                  # 8-byte Folded Reload
	addq	200(%rsp), %rax                 # 8-byte Folded Reload
	addq	320(%rsp), %rax                 # 8-byte Folded Reload
	addq	312(%rsp), %rax                 # 8-byte Folded Reload
	addq	304(%rsp), %rax                 # 8-byte Folded Reload
	addq	296(%rsp), %rax                 # 8-byte Folded Reload
	addq	288(%rsp), %rax                 # 8-byte Folded Reload
	addq	280(%rsp), %rax                 # 8-byte Folded Reload
	addq	272(%rsp), %rax                 # 8-byte Folded Reload
	addq	264(%rsp), %rax                 # 8-byte Folded Reload
	addq	256(%rsp), %rax                 # 8-byte Folded Reload
	addq	248(%rsp), %rax                 # 8-byte Folded Reload
	addq	240(%rsp), %rax                 # 8-byte Folded Reload
	addq	232(%rsp), %rax                 # 8-byte Folded Reload
	addq	224(%rsp), %rax                 # 8-byte Folded Reload
	addq	216(%rsp), %rax                 # 8-byte Folded Reload
	addq	208(%rsp), %rax                 # 8-byte Folded Reload
	addq	328(%rsp), %rax                 # 8-byte Folded Reload
	addq	448(%rsp), %rax                 # 8-byte Folded Reload
	addq	440(%rsp), %rax                 # 8-byte Folded Reload
	addq	432(%rsp), %rax                 # 8-byte Folded Reload
	addq	424(%rsp), %rax                 # 8-byte Folded Reload
	addq	416(%rsp), %rax                 # 8-byte Folded Reload
	addq	408(%rsp), %rax                 # 8-byte Folded Reload
	addq	400(%rsp), %rax                 # 8-byte Folded Reload
	addq	392(%rsp), %rax                 # 8-byte Folded Reload
	addq	384(%rsp), %rax                 # 8-byte Folded Reload
	addq	376(%rsp), %rax                 # 8-byte Folded Reload
	addq	368(%rsp), %rax                 # 8-byte Folded Reload
	addq	360(%rsp), %rax                 # 8-byte Folded Reload
	addq	352(%rsp), %rax                 # 8-byte Folded Reload
	addq	344(%rsp), %rax                 # 8-byte Folded Reload
	addq	336(%rsp), %rax                 # 8-byte Folded Reload
	addq	456(%rsp), %rax                 # 8-byte Folded Reload
	addq	560(%rsp), %rax                 # 8-byte Folded Reload
	addq	576(%rsp), %rax                 # 8-byte Folded Reload
	addq	568(%rsp), %rax                 # 8-byte Folded Reload
	addq	552(%rsp), %rax                 # 8-byte Folded Reload
	addq	528(%rsp), %rax                 # 8-byte Folded Reload
	addq	544(%rsp), %rax                 # 8-byte Folded Reload
	addq	536(%rsp), %rax                 # 8-byte Folded Reload
	addq	520(%rsp), %rax                 # 8-byte Folded Reload
	addq	496(%rsp), %rax                 # 8-byte Folded Reload
	addq	512(%rsp), %rax                 # 8-byte Folded Reload
	addq	504(%rsp), %rax                 # 8-byte Folded Reload
	addq	488(%rsp), %rax                 # 8-byte Folded Reload
	addq	464(%rsp), %rax                 # 8-byte Folded Reload
	addq	480(%rsp), %rax                 # 8-byte Folded Reload
	addq	472(%rsp), %rax                 # 8-byte Folded Reload
	addq	616(%rsp), %rax                 # 8-byte Folded Reload
	addq	696(%rsp), %rax                 # 8-byte Folded Reload
	addq	704(%rsp), %rax                 # 8-byte Folded Reload
	addq	688(%rsp), %rax                 # 8-byte Folded Reload
	addq	680(%rsp), %rax                 # 8-byte Folded Reload
	addq	664(%rsp), %rax                 # 8-byte Folded Reload
	addq	672(%rsp), %rax                 # 8-byte Folded Reload
	addq	656(%rsp), %rax                 # 8-byte Folded Reload
	addq	648(%rsp), %rax                 # 8-byte Folded Reload
	addq	632(%rsp), %rax                 # 8-byte Folded Reload
	addq	640(%rsp), %rax                 # 8-byte Folded Reload
	addq	624(%rsp), %rax                 # 8-byte Folded Reload
	addq	608(%rsp), %rax                 # 8-byte Folded Reload
	addq	600(%rsp), %rax                 # 8-byte Folded Reload
	addq	592(%rsp), %rax                 # 8-byte Folded Reload
	addq	584(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rax, (%r12)
.LBB9_9:                                # %for.end998
	addq	$872, %rsp                      # imm = 0x368
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.Lfunc_end9:
	.size	_Z26pipeline_512_8_8vreg_1sregPlii, .Lfunc_end9-_Z26pipeline_512_8_8vreg_1sregPlii
	.cfi_endproc
                                        # -- End function
	.globl	_Z27pipeline_512_8_8_stagger1x1Plii # -- Begin function _Z27pipeline_512_8_8_stagger1x1Plii
	.p2align	4, 0x90
	.type	_Z27pipeline_512_8_8_stagger1x1Plii,@function
_Z27pipeline_512_8_8_stagger1x1Plii:    # @_Z27pipeline_512_8_8_stagger1x1Plii
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	vmovdqa64	B(%rip), %zmm1
	vmovdqa64	B+64(%rip), %zmm2
	vmovdqa64	B+128(%rip), %zmm4
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm0, %xmm0, %xmm0
	vpgatherdd	A(,%zmm1,4), %zmm0 {%k1}
	vmovdqa64	B+192(%rip), %zmm6
	kxnorw	%k0, %k0, %k1
	kxnorw	%k0, %k0, %k2
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm2,4), %zmm1 {%k2}
	kxnorw	%k0, %k0, %k2
	vpxor	%xmm3, %xmm3, %xmm3
	vpgatherdd	A(,%zmm4,4), %zmm3 {%k2}
	vpxor	%xmm5, %xmm5, %xmm5
	vpgatherdd	A(,%zmm6,4), %zmm5 {%k1}
	movslq	%edx, %rcx
	movl	$1280000, %eax                  # imm = 0x138800
	xorl	%edx, %edx
	idivl	%ecx
                                        # kill: def $eax killed $eax def $rax
	vmovdqa64	B+448(%rip), %zmm2
	vmovdqa64	B+384(%rip), %zmm4
	movslq	%eax, %r10
	vmovdqa64	B+320(%rip), %zmm6
	vmovdqa64	B+256(%rip), %zmm7
	cmpl	$3, %r10d
	jl	.LBB10_3
# %bb.1:                                # %for.body.preheader
	leaq	-2(%r10), %r8
	leaq	(,%rcx,4), %r9
	movl	$448, %esi                      # imm = 0x1C0
	movq	%r8, %rdi
	.p2align	4, 0x90
.LBB10_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	vmovdqa64	%zmm0, C-448(%rsi)
	vmovdqa64	%zmm1, C-384(%rsi)
	vmovdqa64	%zmm3, C-320(%rsi)
	vmovdqa64	%zmm5, C-256(%rsi)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm0, %xmm0, %xmm0
	vpgatherdd	A(,%zmm7,4), %zmm0 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm6,4), %zmm1 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm3, %xmm3, %xmm3
	vpgatherdd	A(,%zmm4,4), %zmm3 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm4, %xmm4, %xmm4
	vpgatherdd	A(,%zmm2,4), %zmm4 {%k1}
	vmovdqa64	B-448(%rsi,%rcx,4), %zmm2
	vmovdqa64	B-384(%rsi,%rcx,4), %zmm5
	vmovdqa64	%zmm0, C-192(%rsi)
	vmovdqa64	%zmm1, C-128(%rsi)
	vmovdqa64	%zmm3, C-64(%rsi)
	vmovdqa64	%zmm4, C(%rsi)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm0, %xmm0, %xmm0
	vpgatherdd	A(,%zmm2,4), %zmm0 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm5,4), %zmm1 {%k1}
	vmovdqa64	B-320(%rsi,%rcx,4), %zmm2
	vmovdqa64	B-256(%rsi,%rcx,4), %zmm4
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm3, %xmm3, %xmm3
	vpgatherdd	A(,%zmm2,4), %zmm3 {%k1}
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm5, %xmm5, %xmm5
	vpgatherdd	A(,%zmm4,4), %zmm5 {%k1}
	vmovdqa64	B(%rsi,%rcx,4), %zmm2
	vmovdqa64	B-64(%rsi,%rcx,4), %zmm4
	vmovdqa64	B-128(%rsi,%rcx,4), %zmm6
	vmovdqa64	B-192(%rsi,%rcx,4), %zmm7
	addq	%r9, %rsi
	decq	%rdi
	jne	.LBB10_2
	jmp	.LBB10_5
.LBB10_3:                               # %for.cond97.preheader
	cmpl	$2, %eax
	jne	.LBB10_13
# %bb.4:
	xorl	%r8d, %r8d
.LBB10_5:                               # %for.body102.preheader
	leaq	2(%r8), %rdx
	movl	%eax, %esi
	subl	%edx, %esi
	incl	%esi
	movq	%r10, %r9
	subq	%rdx, %r9
	andq	$7, %rsi
	je	.LBB10_9
# %bb.6:                                # %for.body102.prol.preheader
	movq	%r8, %rdx
	imulq	%rcx, %rdx
	leaq	C+192(,%rdx,4), %rdi
	leaq	(,%rcx,4), %r11
	negq	%rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB10_7:                               # %for.body102.prol
                                        # =>This Inner Loop Header: Depth=1
	vmovdqa64	%zmm0, -192(%rdi)
	vmovdqa64	%zmm1, -128(%rdi)
	vmovdqa64	%zmm3, -64(%rdi)
	vmovdqa64	%zmm5, (%rdi)
	decq	%rdx
	addq	%r11, %rdi
	cmpq	%rdx, %rsi
	jne	.LBB10_7
# %bb.8:                                # %for.body102.prol.loopexit.loopexit
	subq	%rdx, %r8
.LBB10_9:                               # %for.body102.prol.loopexit
	cmpq	$7, %r9
	jb	.LBB10_12
# %bb.10:                               # %for.body102.preheader2
	movq	%r8, %r9
	notq	%r9
	addq	%r10, %r9
	imulq	%rcx, %r8
	leaq	C(,%r8,4), %rdi
	movq	%rcx, %r8
	shlq	$5, %r8
	leaq	(,%rcx,4), %r11
	.p2align	4, 0x90
.LBB10_11:                              # %for.body102
                                        # =>This Inner Loop Header: Depth=1
	vmovdqa64	%zmm0, (%rdi)
	vmovdqa64	%zmm1, 64(%rdi)
	vmovdqa64	%zmm3, 128(%rdi)
	vmovdqa64	%zmm5, 192(%rdi)
	vmovdqa64	%zmm0, (%rdi,%rcx,4)
	vmovdqa64	%zmm1, 64(%rdi,%rcx,4)
	leaq	(%rdi,%r11), %rsi
	vmovdqa64	%zmm3, 128(%rdi,%rcx,4)
	vmovdqa64	%zmm5, 192(%rdi,%rcx,4)
	addq	%r11, %rsi
	vmovdqa64	%zmm0, (%rdi,%rcx,8)
	vmovdqa64	%zmm1, 64(%rdi,%rcx,8)
	vmovdqa64	%zmm3, 128(%rdi,%rcx,8)
	vmovdqa64	%zmm5, 192(%rdi,%rcx,8)
	vmovdqa64	%zmm0, (%rsi,%rcx,4)
	vmovdqa64	%zmm1, 64(%rsi,%rcx,4)
	leaq	(%rsi,%r11), %rdx
	vmovdqa64	%zmm3, 128(%rsi,%rcx,4)
	vmovdqa64	%zmm5, 192(%rsi,%rcx,4)
	leaq	(%rdx,%r11), %rbx
	vmovdqa64	%zmm0, (%rsi,%rcx,8)
	vmovdqa64	%zmm1, 64(%rsi,%rcx,8)
	vmovdqa64	%zmm3, 128(%rsi,%rcx,8)
	vmovdqa64	%zmm5, 192(%rsi,%rcx,8)
	vmovdqa64	%zmm0, (%rbx,%rcx,4)
	vmovdqa64	%zmm1, 64(%rdx,%rcx,8)
	leaq	(%rbx,%r11), %rsi
	vmovdqa64	%zmm3, 128(%rdx,%rcx,8)
	vmovdqa64	%zmm5, 192(%rdx,%rcx,8)
	leaq	(%rsi,%r11), %rdx
	vmovdqa64	%zmm0, (%rsi,%rcx,4)
	vmovdqa64	%zmm1, 64(%rbx,%rcx,8)
	vmovdqa64	%zmm3, 128(%rbx,%rcx,8)
	vmovdqa64	%zmm5, 192(%rbx,%rcx,8)
	vmovdqa64	%zmm0, (%rdx,%rcx,4)
	vmovdqa64	%zmm1, 64(%rsi,%rcx,8)
	vmovdqa64	%zmm3, 128(%rsi,%rcx,8)
	vmovdqa64	%zmm5, 192(%rsi,%rcx,8)
	addq	%r8, %rdi
	addq	$-8, %r9
	jne	.LBB10_11
.LBB10_12:                              # %for.cond126.preheader.thread
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm0, %xmm0, %xmm0
	vpgatherdd	A(,%zmm2,4), %zmm0 {%k1}
	leaq	-1(%r10), %r8
	kxnorw	%k0, %k0, %k1
	kxnorw	%k0, %k0, %k2
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm4,4), %zmm1 {%k2}
	kxnorw	%k0, %k0, %k2
	vpxor	%xmm2, %xmm2, %xmm2
	vpgatherdd	A(,%zmm6,4), %zmm2 {%k2}
	vpxor	%xmm3, %xmm3, %xmm3
	vpgatherdd	A(,%zmm7,4), %zmm3 {%k1}
.LBB10_15:                              # %for.body130.preheader
	subl	%r8d, %eax
	movq	%r8, %r9
	notq	%r9
	addq	%r10, %r9
	andq	$7, %rax
	je	.LBB10_19
# %bb.16:                               # %for.body130.prol.preheader
	movq	%r8, %rdx
	imulq	%rcx, %rdx
	leaq	C+448(,%rdx,4), %rdi
	leaq	(,%rcx,4), %rsi
	negq	%rax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB10_17:                              # %for.body130.prol
                                        # =>This Inner Loop Header: Depth=1
	vmovdqa64	%zmm3, -192(%rdi)
	vmovdqa64	%zmm2, -128(%rdi)
	vmovdqa64	%zmm1, -64(%rdi)
	vmovdqa64	%zmm0, (%rdi)
	decq	%rdx
	addq	%rsi, %rdi
	cmpq	%rdx, %rax
	jne	.LBB10_17
# %bb.18:                               # %for.body130.prol.loopexit.loopexit
	subq	%rdx, %r8
.LBB10_19:                              # %for.body130.prol.loopexit
	cmpq	$7, %r9
	jb	.LBB10_22
# %bb.20:                               # %for.body130.preheader1
	subq	%r8, %r10
	imulq	%rcx, %r8
	leaq	C+256(,%r8,4), %rax
	movq	%rcx, %r8
	shlq	$5, %r8
	leaq	(,%rcx,4), %rdx
	.p2align	4, 0x90
.LBB10_21:                              # %for.body130
                                        # =>This Inner Loop Header: Depth=1
	vmovdqa64	%zmm3, (%rax)
	vmovdqa64	%zmm2, 64(%rax)
	vmovdqa64	%zmm1, 128(%rax)
	vmovdqa64	%zmm0, 192(%rax)
	vmovdqa64	%zmm3, (%rax,%rcx,4)
	vmovdqa64	%zmm2, 64(%rax,%rcx,4)
	leaq	(%rax,%rdx), %rdi
	vmovdqa64	%zmm1, 128(%rax,%rcx,4)
	vmovdqa64	%zmm0, 192(%rax,%rcx,4)
	addq	%rdx, %rdi
	vmovdqa64	%zmm3, (%rax,%rcx,8)
	vmovdqa64	%zmm2, 64(%rax,%rcx,8)
	vmovdqa64	%zmm1, 128(%rax,%rcx,8)
	vmovdqa64	%zmm0, 192(%rax,%rcx,8)
	vmovdqa64	%zmm3, (%rdi,%rcx,4)
	vmovdqa64	%zmm2, 64(%rdi,%rcx,4)
	leaq	(%rdi,%rdx), %rbx
	vmovdqa64	%zmm1, 128(%rdi,%rcx,4)
	vmovdqa64	%zmm0, 192(%rdi,%rcx,4)
	leaq	(%rbx,%rdx), %rsi
	vmovdqa64	%zmm3, (%rdi,%rcx,8)
	vmovdqa64	%zmm2, 64(%rdi,%rcx,8)
	vmovdqa64	%zmm1, 128(%rdi,%rcx,8)
	vmovdqa64	%zmm0, 192(%rdi,%rcx,8)
	vmovdqa64	%zmm3, (%rsi,%rcx,4)
	vmovdqa64	%zmm2, 64(%rbx,%rcx,8)
	leaq	(%rsi,%rdx), %rdi
	vmovdqa64	%zmm1, 128(%rbx,%rcx,8)
	vmovdqa64	%zmm0, 192(%rbx,%rcx,8)
	leaq	(%rdi,%rdx), %rbx
	vmovdqa64	%zmm3, (%rdi,%rcx,4)
	vmovdqa64	%zmm2, 64(%rsi,%rcx,8)
	vmovdqa64	%zmm1, 128(%rsi,%rcx,8)
	vmovdqa64	%zmm0, 192(%rsi,%rcx,8)
	vmovdqa64	%zmm3, (%rbx,%rcx,4)
	vmovdqa64	%zmm2, 64(%rdi,%rcx,8)
	vmovdqa64	%zmm1, 128(%rdi,%rcx,8)
	vmovdqa64	%zmm0, 192(%rdi,%rcx,8)
	addq	%r8, %rax
	addq	$-8, %r10
	jne	.LBB10_21
.LBB10_22:                              # %for.end149
	popq	%rbx
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.LBB10_13:                              # %for.cond126.preheader
	.cfi_def_cfa_offset 16
	testl	%eax, %eax
	jle	.LBB10_22
# %bb.14:
	xorl	%r8d, %r8d
                                        # implicit-def: $zmm0
                                        # implicit-def: $zmm1
                                        # implicit-def: $zmm2
                                        # implicit-def: $zmm3
	jmp	.LBB10_15
.Lfunc_end10:
	.size	_Z27pipeline_512_8_8_stagger1x1Plii, .Lfunc_end10-_Z27pipeline_512_8_8_stagger1x1Plii
	.cfi_endproc
                                        # -- End function
	.globl	_Z24pipeline_512_8_8_staggerPlii # -- Begin function _Z24pipeline_512_8_8_staggerPlii
	.p2align	4, 0x90
	.type	_Z24pipeline_512_8_8_staggerPlii,@function
_Z24pipeline_512_8_8_staggerPlii:       # @_Z24pipeline_512_8_8_staggerPlii
	.cfi_startproc
# %bb.0:                                # %entry
	vmovdqa64	B(%rip), %zmm2
	vmovdqa64	B+64(%rip), %zmm4
	vmovdqa64	B+128(%rip), %zmm5
	vmovdqa64	B+192(%rip), %zmm6
	vmovdqa64	B+256(%rip), %zmm0
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm2,4), %zmm1 {%k1}
	kxnorw	%k0, %k0, %k1
	vmovdqa64	B+320(%rip), %zmm3
	kxnorw	%k0, %k0, %k2
	vpxor	%xmm2, %xmm2, %xmm2
	vpgatherdd	A(,%zmm4,4), %zmm2 {%k2}
	kxnorw	%k0, %k0, %k2
	vpxor	%xmm4, %xmm4, %xmm4
	vpgatherdd	A(,%zmm5,4), %zmm4 {%k2}
	vpxor	%xmm5, %xmm5, %xmm5
	vpgatherdd	A(,%zmm6,4), %zmm5 {%k1}
	vmovdqa64	B+384(%rip), %zmm7
	movslq	%edx, %rcx
	movl	$1280000, %eax                  # imm = 0x138800
	xorl	%edx, %edx
	idivl	%ecx
                                        # kill: def $eax killed $eax def $rax
	movslq	%eax, %r10
	vmovdqa64	B+448(%rip), %zmm6
	cmpl	$3, %r10d
	jl	.LBB11_3
# %bb.1:                                # %for.body.preheader
	leaq	-2(%r10), %r8
	leaq	(,%rcx,4), %r9
	movl	$448, %esi                      # imm = 0x1C0
	movq	%r8, %rdi
	.p2align	4, 0x90
.LBB11_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	vmovdqa64	%zmm1, C-448(%rsi)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm0,4), %zmm1 {%k1}
	vmovdqa64	%zmm2, C-384(%rsi)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm0, %xmm0, %xmm0
	vpgatherdd	A(,%zmm3,4), %zmm0 {%k1}
	vmovdqa64	B-448(%rsi,%rcx,4), %zmm2
	vmovdqa64	%zmm4, C-320(%rsi)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm3, %xmm3, %xmm3
	vpgatherdd	A(,%zmm7,4), %zmm3 {%k1}
	vmovdqa64	B-384(%rsi,%rcx,4), %zmm4
	vmovdqa64	%zmm5, C-256(%rsi)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm5, %xmm5, %xmm5
	vpgatherdd	A(,%zmm6,4), %zmm5 {%k1}
	vmovdqa64	B-320(%rsi,%rcx,4), %zmm6
	vmovdqa64	%zmm1, C-192(%rsi)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm1, %xmm1, %xmm1
	vpgatherdd	A(,%zmm2,4), %zmm1 {%k1}
	vmovdqa64	B-256(%rsi,%rcx,4), %zmm7
	vmovdqa64	%zmm0, C-128(%rsi)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm2, %xmm2, %xmm2
	vpgatherdd	A(,%zmm4,4), %zmm2 {%k1}
	vmovdqa64	B-192(%rsi,%rcx,4), %zmm0
	vmovdqa64	%zmm3, C-64(%rsi)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm4, %xmm4, %xmm4
	vpgatherdd	A(,%zmm6,4), %zmm4 {%k1}
	vmovdqa64	B-128(%rsi,%rcx,4), %zmm3
	vmovdqa64	%zmm5, C(%rsi)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm5, %xmm5, %xmm5
	vpgatherdd	A(,%zmm7,4), %zmm5 {%k1}
	vmovdqa64	B-64(%rsi,%rcx,4), %zmm7
	vmovdqa64	B(%rsi,%rcx,4), %zmm6
	addq	%r9, %rsi
	decq	%rdi
	jne	.LBB11_2
	jmp	.LBB11_5
.LBB11_3:                               # %for.cond97.preheader
	cmpl	$2, %eax
	jne	.LBB11_14
# %bb.4:
	xorl	%r8d, %r8d
.LBB11_5:                               # %for.body102.preheader
	leaq	2(%r8), %rdx
	movl	%eax, %edi
	subl	%edx, %edi
	incl	%edi
	movq	%r10, %r9
	subq	%rdx, %r9
	andq	$3, %rdi
	je	.LBB11_6
# %bb.7:                                # %for.body102.prol.preheader
	movq	%r8, %rdx
	imulq	%rcx, %rdx
	leaq	C+192(,%rdx,4), %rdx
	leaq	(,%rcx,4), %r11
	negq	%rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB11_8:                               # %for.body102.prol
                                        # =>This Inner Loop Header: Depth=1
	vmovdqa64	%zmm1, -192(%rdx)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm8, %xmm8, %xmm8
	vpgatherdd	A(,%zmm0,4), %zmm8 {%k1}
	vmovdqa64	%zmm2, -128(%rdx)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm9, %xmm9, %xmm9
	vpgatherdd	A(,%zmm3,4), %zmm9 {%k1}
	vmovdqa64	%zmm4, -64(%rdx)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm10, %xmm10, %xmm10
	vpgatherdd	A(,%zmm7,4), %zmm10 {%k1}
	vmovdqa64	%zmm5, (%rdx)
	decq	%rsi
	addq	%r11, %rdx
	cmpq	%rsi, %rdi
	jne	.LBB11_8
# %bb.9:                                # %for.body102.prol.loopexit.loopexit
	subq	%rsi, %r8
	cmpq	$3, %r9
	jae	.LBB11_11
	jmp	.LBB11_13
.LBB11_6:
                                        # implicit-def: $zmm8
                                        # implicit-def: $zmm9
                                        # implicit-def: $zmm10
	cmpq	$3, %r9
	jb	.LBB11_13
.LBB11_11:                              # %for.body102.preheader2
	movq	%r8, %rsi
	notq	%rsi
	addq	%r10, %rsi
	imulq	%rcx, %r8
	leaq	C(,%r8,4), %rdi
	movq	%rcx, %r8
	shlq	$4, %r8
	leaq	(,%rcx,4), %r9
	.p2align	4, 0x90
.LBB11_12:                              # %for.body102
                                        # =>This Inner Loop Header: Depth=1
	vmovdqa64	%zmm1, (%rdi)
	vmovdqa64	%zmm2, 64(%rdi)
	vmovdqa64	%zmm4, 128(%rdi)
	vmovdqa64	%zmm5, 192(%rdi)
	leaq	(%rdi,%r9), %rdx
	vmovdqa64	%zmm1, (%rdi,%rcx,4)
	vmovdqa64	%zmm2, 64(%rdi,%rcx,4)
	vmovdqa64	%zmm4, 128(%rdi,%rcx,4)
	vmovdqa64	%zmm5, 192(%rdi,%rcx,4)
	vmovdqa64	%zmm1, (%rdi,%rcx,8)
	vmovdqa64	%zmm2, 64(%rdi,%rcx,8)
	vmovdqa64	%zmm4, 128(%rdi,%rcx,8)
	addq	%r9, %rdx
	vmovdqa64	%zmm5, 192(%rdi,%rcx,8)
	vmovdqa64	%zmm1, (%rdx,%rcx,4)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm8, %xmm8, %xmm8
	vpgatherdd	A(,%zmm0,4), %zmm8 {%k1}
	vmovdqa64	%zmm2, 64(%rdx,%rcx,4)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm9, %xmm9, %xmm9
	vpgatherdd	A(,%zmm3,4), %zmm9 {%k1}
	vmovdqa64	%zmm4, 128(%rdx,%rcx,4)
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm10, %xmm10, %xmm10
	vpgatherdd	A(,%zmm7,4), %zmm10 {%k1}
	vmovdqa64	%zmm5, 192(%rdx,%rcx,4)
	addq	%r8, %rdi
	addq	$-4, %rsi
	jne	.LBB11_12
.LBB11_13:                              # %for.cond126.preheader.thread
	leaq	-1(%r10), %r8
	kxnorw	%k0, %k0, %k1
	vpxor	%xmm0, %xmm0, %xmm0
	vpgatherdd	A(,%zmm6,4), %zmm0 {%k1}
.LBB11_16:                              # %for.body130.preheader
	subl	%r8d, %eax
	movq	%r8, %r9
	notq	%r9
	addq	%r10, %r9
	andq	$7, %rax
	je	.LBB11_20
# %bb.17:                               # %for.body130.prol.preheader
	movq	%r8, %rdx
	imulq	%rcx, %rdx
	leaq	C+448(,%rdx,4), %rdi
	leaq	(,%rcx,4), %rsi
	negq	%rax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB11_18:                              # %for.body130.prol
                                        # =>This Inner Loop Header: Depth=1
	vmovdqa64	%zmm8, -192(%rdi)
	vmovdqa64	%zmm9, -128(%rdi)
	vmovdqa64	%zmm10, -64(%rdi)
	vmovdqa64	%zmm0, (%rdi)
	decq	%rdx
	addq	%rsi, %rdi
	cmpq	%rdx, %rax
	jne	.LBB11_18
# %bb.19:                               # %for.body130.prol.loopexit.loopexit
	subq	%rdx, %r8
.LBB11_20:                              # %for.body130.prol.loopexit
	cmpq	$7, %r9
	jb	.LBB11_23
# %bb.21:                               # %for.body130.preheader1
	subq	%r8, %r10
	imulq	%rcx, %r8
	leaq	C+256(,%r8,4), %rax
	movq	%rcx, %r8
	shlq	$5, %r8
	leaq	(,%rcx,4), %r9
	.p2align	4, 0x90
.LBB11_22:                              # %for.body130
                                        # =>This Inner Loop Header: Depth=1
	vmovdqa64	%zmm8, (%rax)
	vmovdqa64	%zmm9, 64(%rax)
	vmovdqa64	%zmm10, 128(%rax)
	vmovdqa64	%zmm0, 192(%rax)
	vmovdqa64	%zmm8, (%rax,%rcx,4)
	vmovdqa64	%zmm9, 64(%rax,%rcx,4)
	leaq	(%rax,%r9), %rdx
	vmovdqa64	%zmm10, 128(%rax,%rcx,4)
	vmovdqa64	%zmm0, 192(%rax,%rcx,4)
	addq	%r9, %rdx
	vmovdqa64	%zmm8, (%rax,%rcx,8)
	vmovdqa64	%zmm9, 64(%rax,%rcx,8)
	vmovdqa64	%zmm10, 128(%rax,%rcx,8)
	vmovdqa64	%zmm0, 192(%rax,%rcx,8)
	vmovdqa64	%zmm8, (%rdx,%rcx,4)
	vmovdqa64	%zmm9, 64(%rdx,%rcx,4)
	leaq	(%rdx,%r9), %rsi
	vmovdqa64	%zmm10, 128(%rdx,%rcx,4)
	vmovdqa64	%zmm0, 192(%rdx,%rcx,4)
	leaq	(%rsi,%r9), %rdi
	vmovdqa64	%zmm8, (%rdx,%rcx,8)
	vmovdqa64	%zmm9, 64(%rdx,%rcx,8)
	vmovdqa64	%zmm10, 128(%rdx,%rcx,8)
	vmovdqa64	%zmm0, 192(%rdx,%rcx,8)
	vmovdqa64	%zmm8, (%rdi,%rcx,4)
	vmovdqa64	%zmm9, 64(%rsi,%rcx,8)
	leaq	(%rdi,%r9), %rdx
	vmovdqa64	%zmm10, 128(%rsi,%rcx,8)
	vmovdqa64	%zmm0, 192(%rsi,%rcx,8)
	leaq	(%rdx,%r9), %rsi
	vmovdqa64	%zmm8, (%rdx,%rcx,4)
	vmovdqa64	%zmm9, 64(%rdi,%rcx,8)
	vmovdqa64	%zmm10, 128(%rdi,%rcx,8)
	vmovdqa64	%zmm0, 192(%rdi,%rcx,8)
	vmovdqa64	%zmm8, (%rsi,%rcx,4)
	vmovdqa64	%zmm9, 64(%rdx,%rcx,8)
	vmovdqa64	%zmm10, 128(%rdx,%rcx,8)
	vmovdqa64	%zmm0, 192(%rdx,%rcx,8)
	addq	%r8, %rax
	addq	$-8, %r10
	jne	.LBB11_22
.LBB11_23:                              # %for.end149
	vzeroupper
	retq
.LBB11_14:                              # %for.cond126.preheader
	testl	%eax, %eax
	jle	.LBB11_23
# %bb.15:
	xorl	%r8d, %r8d
                                        # implicit-def: $zmm0
                                        # implicit-def: $zmm10
                                        # implicit-def: $zmm9
                                        # implicit-def: $zmm8
	jmp	.LBB11_16
.Lfunc_end11:
	.size	_Z24pipeline_512_8_8_staggerPlii, .Lfunc_end11-_Z24pipeline_512_8_8_staggerPlii
	.cfi_endproc
                                        # -- End function
	.globl	_Z15pipeline_scalarPl           # -- Begin function _Z15pipeline_scalarPl
	.p2align	4, 0x90
	.type	_Z15pipeline_scalarPl,@function
_Z15pipeline_scalarPl:                  # @_Z15pipeline_scalarPl
	.cfi_startproc
# %bb.0:                                # %entry
	vmovq	(%rdi), %xmm2                   # xmm2 = mem[0],zero
	vpxor	%xmm3, %xmm3, %xmm3
	movq	$-5120000, %rax                 # imm = 0xFFB1E000
	vpxor	%xmm8, %xmm8, %xmm8
	vpxor	%xmm1, %xmm1, %xmm1
	.p2align	4, 0x90
.LBB12_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vmovdqa	B+5120000(%rax), %xmm4
	vmovdqa	B+5120016(%rax), %xmm5
	vmovdqa	B+5120032(%rax), %xmm6
	vmovdqa	B+5120048(%rax), %xmm7
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%xmm4,4), %xmm0 {%k1}
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%xmm5,4), %xmm4 {%k1}
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%xmm6,4), %xmm5 {%k1}
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%xmm7,4), %xmm9 {%k1}
	vpmovsxdq	%xmm0, %ymm0
	vpaddq	%ymm0, %ymm2, %ymm10
	vpmovsxdq	%xmm4, %ymm2
	vpaddq	%ymm2, %ymm3, %ymm3
	vpmovsxdq	%xmm5, %ymm2
	vmovdqa	B+5120064(%rax), %xmm4
	vmovdqa	B+5120080(%rax), %xmm5
	vmovdqa	B+5120096(%rax), %xmm7
	vmovdqa	B+5120112(%rax), %xmm6
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%xmm4,4), %xmm0 {%k1}
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%xmm5,4), %xmm4 {%k1}
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%xmm7,4), %xmm5 {%k1}
	kxnorw	%k0, %k0, %k1
	vpgatherdd	A(,%xmm6,4), %xmm7 {%k1}
	vpaddq	%ymm2, %ymm8, %ymm6
	vpmovsxdq	%xmm9, %ymm2
	vpaddq	%ymm2, %ymm1, %ymm1
	vpmovsxdq	%xmm0, %ymm0
	vpaddq	%ymm0, %ymm10, %ymm2
	vpmovsxdq	%xmm4, %ymm0
	vpaddq	%ymm0, %ymm3, %ymm3
	vpmovsxdq	%xmm5, %ymm0
	vpaddq	%ymm0, %ymm6, %ymm8
	vpmovsxdq	%xmm7, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm1
	subq	$-128, %rax
	jne	.LBB12_1
# %bb.2:                                # %middle.block
	vpaddq	%ymm2, %ymm3, %ymm0
	vpaddq	%ymm0, %ymm8, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, (%rdi)
	vzeroupper
	retq
.Lfunc_end12:
	.size	_Z15pipeline_scalarPl, .Lfunc_end12-_Z15pipeline_scalarPl
	.cfi_endproc
                                        # -- End function
	.globl	_Z9startTestPFvPlE              # -- Begin function _Z9startTestPFvPlE
	.p2align	4, 0x90
	.type	_Z9startTestPFvPlE,@function
_Z9startTestPFvPlE:                     # @_Z9startTestPFvPlE
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	$0, 8(%rsp)
	movl	$C, %edi
	movl	$5120000, %edx                  # imm = 0x4E2000
	xorl	%esi, %esi
	callq	memset@PLT
	callq	_Z10clearCachev
	movq	%rax, %r14
	leaq	8(%rsp), %rdi
	callq	*%rbx
	vmovq	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vpxor	%xmm1, %xmm1, %xmm1
	movq	$-5120000, %rax                 # imm = 0xFFB1E000
	vpxor	%xmm3, %xmm3, %xmm3
	vpxor	%xmm2, %xmm2, %xmm2
	.p2align	4, 0x90
.LBB13_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vpmovsxdq	C+5120000(%rax), %ymm4
	vpaddq	%ymm4, %ymm0, %ymm0
	vpmovsxdq	C+5120016(%rax), %ymm4
	vpmovsxdq	C+5120032(%rax), %ymm5
	vpaddq	%ymm4, %ymm1, %ymm1
	vpaddq	%ymm5, %ymm3, %ymm3
	vpmovsxdq	C+5120048(%rax), %ymm4
	vpmovsxdq	C+5120064(%rax), %ymm5
	vpaddq	%ymm4, %ymm2, %ymm2
	vpaddq	%ymm5, %ymm0, %ymm0
	vpmovsxdq	C+5120080(%rax), %ymm4
	vpmovsxdq	C+5120096(%rax), %ymm5
	vpaddq	%ymm4, %ymm1, %ymm1
	vpaddq	%ymm5, %ymm3, %ymm3
	vpmovsxdq	C+5120112(%rax), %ymm4
	vpaddq	%ymm4, %ymm2, %ymm2
	subq	$-128, %rax
	jne	.LBB13_1
# %bb.2:                                # %middle.block
	vpaddq	%ymm0, %ymm1, %ymm0
	vpaddq	%ymm0, %ymm3, %ymm0
	vpaddq	%ymm0, %ymm2, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, 8(%rsp)
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1, %esi
	movl	$6, %edx
	vzeroupper
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	8(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIlEERSoT_
	movq	%rax, %r15
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB13_11
# %bb.3:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%rbx)
	je	.LBB13_5
# %bb.4:                                # %if.then.i4.i.i
	movb	67(%rbx), %al
	jmp	.LBB13_6
.LBB13_5:                               # %if.end.i.i.i
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB13_6:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %esi
	movq	%r15, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.2, %esi
	movl	$6, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movq	%r14, %rsi
	callq	_ZNSo9_M_insertIlEERSoT_
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB13_11
# %bb.7:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
	cmpb	$0, 56(%rbx)
	je	.LBB13_9
# %bb.8:                                # %if.then.i4.i.i44
	movb	67(%rbx), %al
	jmp	.LBB13_10
.LBB13_9:                               # %if.end.i.i.i48
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB13_10:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit52
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB13_11:                              # %if.then.i.i.i
	.cfi_def_cfa_offset 48
	callq	_ZSt16__throw_bad_castv
.Lfunc_end13:
	.size	_Z9startTestPFvPlE, .Lfunc_end13-_Z9startTestPFvPlE
	.cfi_endproc
                                        # -- End function
	.globl	_Z13startTest_a_bPFvPliEi       # -- Begin function _Z13startTest_a_bPFvPliEi
	.p2align	4, 0x90
	.type	_Z13startTest_a_bPFvPliEi,@function
_Z13startTest_a_bPFvPliEi:              # @_Z13startTest_a_bPFvPliEi
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	%esi, %ebx
	movq	%rdi, %r15
	movq	$0, 8(%rsp)
	movl	$C, %edi
	movl	$5120000, %edx                  # imm = 0x4E2000
	xorl	%esi, %esi
	callq	memset@PLT
	callq	_Z10clearCachev
	movq	%rax, %r14
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	m5_dump_stats
	leaq	8(%rsp), %rdi
	movl	%ebx, %esi
	callq	*%r15
	vmovq	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vpxor	%xmm1, %xmm1, %xmm1
	movq	$-5120000, %rax                 # imm = 0xFFB1E000
	vpxor	%xmm3, %xmm3, %xmm3
	vpxor	%xmm2, %xmm2, %xmm2
	.p2align	4, 0x90
.LBB14_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vpmovsxdq	C+5120000(%rax), %ymm4
	vpaddq	%ymm4, %ymm0, %ymm0
	vpmovsxdq	C+5120016(%rax), %ymm4
	vpmovsxdq	C+5120032(%rax), %ymm5
	vpaddq	%ymm4, %ymm1, %ymm1
	vpaddq	%ymm5, %ymm3, %ymm3
	vpmovsxdq	C+5120048(%rax), %ymm4
	vpmovsxdq	C+5120064(%rax), %ymm5
	vpaddq	%ymm4, %ymm2, %ymm2
	vpaddq	%ymm5, %ymm0, %ymm0
	vpmovsxdq	C+5120080(%rax), %ymm4
	vpmovsxdq	C+5120096(%rax), %ymm5
	vpaddq	%ymm4, %ymm1, %ymm1
	vpaddq	%ymm5, %ymm3, %ymm3
	vpmovsxdq	C+5120112(%rax), %ymm4
	vpaddq	%ymm4, %ymm2, %ymm2
	subq	$-128, %rax
	jne	.LBB14_1
# %bb.2:                                # %middle.block
	vpaddq	%ymm0, %ymm1, %ymm0
	vpaddq	%ymm0, %ymm3, %ymm0
	vpaddq	%ymm0, %ymm2, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, 8(%rsp)
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1, %esi
	movl	$6, %edx
	vzeroupper
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	8(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIlEERSoT_
	movq	%rax, %r15
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB14_11
# %bb.3:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%rbx)
	je	.LBB14_5
# %bb.4:                                # %if.then.i4.i.i
	movb	67(%rbx), %al
	jmp	.LBB14_6
.LBB14_5:                               # %if.end.i.i.i
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB14_6:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %esi
	movq	%r15, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.2, %esi
	movl	$6, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movq	%r14, %rsi
	callq	_ZNSo9_M_insertIlEERSoT_
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB14_11
# %bb.7:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
	cmpb	$0, 56(%rbx)
	je	.LBB14_9
# %bb.8:                                # %if.then.i4.i.i44
	movb	67(%rbx), %al
	jmp	.LBB14_10
.LBB14_9:                               # %if.end.i.i.i48
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB14_10:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit52
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB14_11:                              # %if.then.i.i.i
	.cfi_def_cfa_offset 48
	callq	_ZSt16__throw_bad_castv
.Lfunc_end14:
	.size	_Z13startTest_a_bPFvPliEi, .Lfunc_end14-_Z13startTest_a_bPFvPliEi
	.cfi_endproc
                                        # -- End function
	.globl	_Z15startTest_l_i_iPFvPliiEii   # -- Begin function _Z15startTest_l_i_iPFvPliiEii
	.p2align	4, 0x90
	.type	_Z15startTest_l_i_iPFvPliiEii,@function
_Z15startTest_l_i_iPFvPliiEii:          # @_Z15startTest_l_i_iPFvPliiEii
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	$0, (%rsp)
	movl	$C, %edi
	movl	$5120000, %edx                  # imm = 0x4E2000
	xorl	%esi, %esi
	callq	memset@PLT
	callq	_Z10clearCachev
	movq	%rax, %r14
	movq	%rsp, %rdi
	movl	%ebp, %esi
	movl	%r15d, %edx
	callq	*%rbx
	vmovq	(%rsp), %xmm0                   # xmm0 = mem[0],zero
	vpxor	%xmm1, %xmm1, %xmm1
	movq	$-5120000, %rax                 # imm = 0xFFB1E000
	vpxor	%xmm3, %xmm3, %xmm3
	vpxor	%xmm2, %xmm2, %xmm2
	.p2align	4, 0x90
.LBB15_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vpmovsxdq	C+5120000(%rax), %ymm4
	vpaddq	%ymm4, %ymm0, %ymm0
	vpmovsxdq	C+5120016(%rax), %ymm4
	vpmovsxdq	C+5120032(%rax), %ymm5
	vpaddq	%ymm4, %ymm1, %ymm1
	vpaddq	%ymm5, %ymm3, %ymm3
	vpmovsxdq	C+5120048(%rax), %ymm4
	vpmovsxdq	C+5120064(%rax), %ymm5
	vpaddq	%ymm4, %ymm2, %ymm2
	vpaddq	%ymm5, %ymm0, %ymm0
	vpmovsxdq	C+5120080(%rax), %ymm4
	vpmovsxdq	C+5120096(%rax), %ymm5
	vpaddq	%ymm4, %ymm1, %ymm1
	vpaddq	%ymm5, %ymm3, %ymm3
	vpmovsxdq	C+5120112(%rax), %ymm4
	vpaddq	%ymm4, %ymm2, %ymm2
	subq	$-128, %rax
	jne	.LBB15_1
# %bb.2:                                # %middle.block
	vpaddq	%ymm0, %ymm1, %ymm0
	vpaddq	%ymm0, %ymm3, %ymm0
	vpaddq	%ymm0, %ymm2, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, (%rsp)
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1, %esi
	movl	$6, %edx
	vzeroupper
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIlEERSoT_
	movq	%rax, %r15
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB15_11
# %bb.3:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%rbx)
	je	.LBB15_5
# %bb.4:                                # %if.then.i4.i.i
	movb	67(%rbx), %al
	jmp	.LBB15_6
.LBB15_5:                               # %if.end.i.i.i
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB15_6:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %esi
	movq	%r15, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.2, %esi
	movl	$6, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movq	%r14, %rsi
	callq	_ZNSo9_M_insertIlEERSoT_
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB15_11
# %bb.7:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
	cmpb	$0, 56(%rbx)
	je	.LBB15_9
# %bb.8:                                # %if.then.i4.i.i44
	movb	67(%rbx), %al
	jmp	.LBB15_10
.LBB15_9:                               # %if.end.i.i.i48
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB15_10:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit52
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB15_11:                              # %if.then.i.i.i
	.cfi_def_cfa_offset 48
	callq	_ZSt16__throw_bad_castv
.Lfunc_end15:
	.size	_Z15startTest_l_i_iPFvPliiEii, .Lfunc_end15-_Z15startTest_l_i_iPFvPliiEii
	.cfi_endproc
                                        # -- End function
	.globl	_Z18startTest_pipelinePFvPliiiEiii # -- Begin function _Z18startTest_pipelinePFvPliiiEiii
	.p2align	4, 0x90
	.type	_Z18startTest_pipelinePFvPliiiEiii,@function
_Z18startTest_pipelinePFvPliiiEiii:     # @_Z18startTest_pipelinePFvPliiiEiii
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movl	%edx, %ebp
	movl	%esi, %ebx
	movq	%rdi, %r12
	movq	$0, 8(%rsp)
	movl	$C, %edi
	movl	$5120000, %edx                  # imm = 0x4E2000
	xorl	%esi, %esi
	callq	memset@PLT
	callq	_Z10clearCachev
	movq	%rax, %r14
	leaq	8(%rsp), %rdi
	movl	%ebx, %esi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	*%r12
	vmovq	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vpxor	%xmm1, %xmm1, %xmm1
	movq	$-5120000, %rax                 # imm = 0xFFB1E000
	vpxor	%xmm3, %xmm3, %xmm3
	vpxor	%xmm2, %xmm2, %xmm2
	.p2align	4, 0x90
.LBB16_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vpmovsxdq	C+5120000(%rax), %ymm4
	vpaddq	%ymm4, %ymm0, %ymm0
	vpmovsxdq	C+5120016(%rax), %ymm4
	vpmovsxdq	C+5120032(%rax), %ymm5
	vpaddq	%ymm4, %ymm1, %ymm1
	vpaddq	%ymm5, %ymm3, %ymm3
	vpmovsxdq	C+5120048(%rax), %ymm4
	vpmovsxdq	C+5120064(%rax), %ymm5
	vpaddq	%ymm4, %ymm2, %ymm2
	vpaddq	%ymm5, %ymm0, %ymm0
	vpmovsxdq	C+5120080(%rax), %ymm4
	vpmovsxdq	C+5120096(%rax), %ymm5
	vpaddq	%ymm4, %ymm1, %ymm1
	vpaddq	%ymm5, %ymm3, %ymm3
	vpmovsxdq	C+5120112(%rax), %ymm4
	vpaddq	%ymm4, %ymm2, %ymm2
	subq	$-128, %rax
	jne	.LBB16_1
# %bb.2:                                # %middle.block
	vpaddq	%ymm0, %ymm1, %ymm0
	vpaddq	%ymm0, %ymm3, %ymm0
	vpaddq	%ymm0, %ymm2, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, 8(%rsp)
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1, %esi
	movl	$6, %edx
	vzeroupper
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	8(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIlEERSoT_
	movq	%rax, %r15
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB16_11
# %bb.3:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%rbx)
	je	.LBB16_5
# %bb.4:                                # %if.then.i4.i.i
	movb	67(%rbx), %al
	jmp	.LBB16_6
.LBB16_5:                               # %if.end.i.i.i
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB16_6:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %esi
	movq	%r15, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.2, %esi
	movl	$6, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movq	%r14, %rsi
	callq	_ZNSo9_M_insertIlEERSoT_
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB16_11
# %bb.7:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
	cmpb	$0, 56(%rbx)
	je	.LBB16_9
# %bb.8:                                # %if.then.i4.i.i44
	movb	67(%rbx), %al
	jmp	.LBB16_10
.LBB16_9:                               # %if.end.i.i.i48
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB16_10:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit52
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB16_11:                              # %if.then.i.i.i
	.cfi_def_cfa_offset 64
	callq	_ZSt16__throw_bad_castv
.Lfunc_end16:
	.size	_Z18startTest_pipelinePFvPliiiEiii, .Lfunc_end16-_Z18startTest_pipelinePFvPliiiEiii
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$5008, %rsp                     # imm = 0x1390
	.cfi_def_cfa_offset 5056
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	$1000, 8(%rsp)                  # imm = 0x3E8
	movl	$1, %r8d
	movl	$1000, %esi                     # imm = 0x3E8
	movl	$16, %ecx
	movl	$2, %ebx
	xorl	%r9d, %r9d
	movabsq	$945986875574848801, %r15       # imm = 0xD20D20D20D20D21
	.p2align	4, 0x90
.LBB17_1:                               # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdx
	shrq	$4, %rdx
	mulxq	%r15, %rax, %rax
	movq	%r9, %rdx
	shrq	$4, %rdx
	mulxq	%r15, %rdx, %rdx
	shrq	%rdx
	imull	$624, %edx, %edx                # imm = 0x270
	movl	%r8d, %edi
	subl	%edx, %edi
	movq	%rsi, %rdx
	shrq	$30, %rdx
	xorl	%esi, %edx
	imull	$1812433253, %edx, %edx         # imm = 0x6C078965
	addl	%edi, %edx
	movq	%rdx, (%rsp,%rcx)
	cmpq	$4992, %rcx                     # imm = 0x1380
	je	.LBB17_2
# %bb.10:                               # %for.body.i.i.i.1
                                        #   in Loop: Header=BB17_1 Depth=1
	shrq	%rax
	imulq	$624, %rax, %rax                # imm = 0x270
	movq	%rbx, %rsi
	subq	%rax, %rsi
	movq	%rdx, %rax
	shrq	$30, %rax
	xorl	%edx, %eax
	imull	$1812433253, %eax, %eax         # imm = 0x6C078965
	addl	%eax, %esi
	movq	%rsi, 8(%rsp,%rcx)
	addq	$2, %r8
	addq	$16, %rcx
	addq	$2, %rbx
	addq	$2, %r9
	jmp	.LBB17_1
.LBB17_2:                               # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i
	movq	$624, 5000(%rsp)                # imm = 0x270
	movabsq	$5497553843912704, %r12         # imm = 0x1387FF00000000
	movq	%r12, (%rsp)
	movq	$-5120000, %rbx                 # imm = 0xFFB1E000
	leaq	8(%rsp), %r14
	movq	%rsp, %r13
	.p2align	4, 0x90
.LBB17_3:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	cltq
	imulq	$1759218605, %rax, %rcx         # imm = 0x68DB8BAD
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$51, %rcx
	addl	%edx, %ecx
	imull	$1280000, %ecx, %ecx            # imm = 0x138800
	subl	%ecx, %eax
	movl	%eax, A+5120000(%rbx)
	addq	$4, %rbx
	jne	.LBB17_3
# %bb.4:                                # %_Z17fillArrayRandomlyPii.exit
	movq	$1000, 8(%rsp)                  # imm = 0x3E8
	movl	$1, %r8d
	movl	$1000, %esi                     # imm = 0x3E8
	movl	$16, %ecx
	movl	$2, %ebx
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB17_5:                               # %for.body.i.i.i25
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdx
	shrq	$4, %rdx
	mulxq	%r15, %rax, %rax
	movq	%r9, %rdx
	shrq	$4, %rdx
	mulxq	%r15, %rdx, %rdx
	shrq	%rdx
	imull	$624, %edx, %edx                # imm = 0x270
	movl	%r8d, %edi
	subl	%edx, %edi
	movq	%rsi, %rdx
	shrq	$30, %rdx
	xorl	%esi, %edx
	imull	$1812433253, %edx, %edx         # imm = 0x6C078965
	addl	%edi, %edx
	movq	%rdx, (%rsp,%rcx)
	cmpq	$4992, %rcx                     # imm = 0x1380
	je	.LBB17_6
# %bb.9:                                # %for.body.i.i.i25.1
                                        #   in Loop: Header=BB17_5 Depth=1
	shrq	%rax
	imulq	$624, %rax, %rax                # imm = 0x270
	movq	%rbx, %rsi
	subq	%rax, %rsi
	movq	%rdx, %rax
	shrq	$30, %rax
	xorl	%edx, %eax
	imull	$1812433253, %eax, %eax         # imm = 0x6C078965
	addl	%eax, %esi
	movq	%rsi, 8(%rsp,%rcx)
	addq	$2, %r8
	addq	$16, %rcx
	addq	$2, %rbx
	addq	$2, %r9
	jmp	.LBB17_5
.LBB17_6:                               # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit.i30
	movq	$624, 5000(%rsp)                # imm = 0x270
	movq	%r12, (%rsp)
	movq	$-5120000, %rbx                 # imm = 0xFFB1E000
	leaq	8(%rsp), %r14
	movq	%rsp, %r15
	.p2align	4, 0x90
.LBB17_7:                               # %for.body.i37
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	cltq
	imulq	$1759218605, %rax, %rcx         # imm = 0x68DB8BAD
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$51, %rcx
	addl	%edx, %ecx
	imull	$1280000, %ecx, %ecx            # imm = 0x138800
	subl	%ecx, %eax
	movl	%eax, B+5120000(%rbx)
	addq	$4, %rbx
	jne	.LBB17_7
# %bb.8:                                # %_Z17fillArrayRandomlyPii.exit38
	movl	$_ZSt4cout, %edi
	movl	$.L.str.3, %esi
	movl	$15, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	m5_reset_stats
	movl	$_Z12testFunctionPl, %edi
	callq	_Z9startTestPFvPlE
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	m5_dump_stats
	movl	$_ZSt4cout, %edi
	movl	$.L.str.4, %esi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movl	$.L.str.5, %esi
	movl	$15, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	m5_reset_stats
	movl	$_Z26testFunction_manual_avx512Pl, %edi
	callq	_Z9startTestPFvPlE
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	m5_dump_stats
	movl	$_ZSt4cout, %edi
	movl	$.L.str.4, %esi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movl	$.L.str.6, %esi
	movl	$29, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	m5_reset_stats
	movl	$_Z27pipeline_512_8_8vreg_reducePlii, %edi
	movl	$8, %esi
	movl	$128, %edx
	callq	_Z15startTest_l_i_iPFvPliiEii
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	m5_dump_stats
	movl	$_ZSt4cout, %edi
	movl	$.L.str.4, %esi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movl	$.L.str.7, %esi
	movl	$29, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	m5_reset_stats
	movl	$_Z27pipeline_512_8_8_stagger1x1Plii, %edi
	movl	$8, %esi
	movl	$128, %edx
	callq	_Z15startTest_l_i_iPFvPliiEii
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	m5_dump_stats
	movl	$_ZSt4cout, %edi
	movl	$.L.str.4, %esi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movl	$.L.str.8, %esi
	movl	$26, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	m5_reset_stats
	movl	$_Z24pipeline_512_8_8_staggerPlii, %edi
	movl	$8, %esi
	movl	$128, %edx
	callq	_Z15startTest_l_i_iPFvPliiEii
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	m5_dump_stats
	movl	$_ZSt4cout, %edi
	movl	$.L.str.4, %esi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	xorl	%eax, %eax
	addq	$5008, %rsp                     # imm = 0x1390
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end17:
	.size	main, .Lfunc_end17-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE # -- Begin function _ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	.p2align	4, 0x90
	.type	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE,@function
_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE: # @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r13
	movslq	4(%rdx), %rbp
	movslq	(%rdx), %rax
	subq	%rax, %rbp
	movl	$4294967294, %eax               # imm = 0xFFFFFFFE
	cmpq	%rax, %rbp
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	ja	.LBB18_6
# %bb.1:                                # %if.then
	incq	%rbp
	movl	$-1, %eax
	xorl	%edx, %edx
	divl	%ebp
	movl	%eax, %r15d
	imulq	%r15, %rbp
	.p2align	4, 0x90
.LBB18_2:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	callq	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	cmpq	%rbp, %rax
	jae	.LBB18_2
# %bb.3:                                # %do.end
	movq	%rax, %rcx
	shrq	$32, %rcx
	je	.LBB18_4
# %bb.5:
	xorl	%edx, %edx
	divq	%r15
	jmp	.LBB18_11
.LBB18_6:                               # %if.else
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	cmpq	%rax, %rbp
	jne	.LBB18_7
# %bb.10:                               # %if.else27
	movq	%r13, %rdi
	callq	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	jmp	.LBB18_11
.LBB18_7:                               # %do.body13.preheader
	movq	%rdi, %r15
	movq	%rbp, %r14
	shrq	$32, %r14
	leaq	8(%rsp), %r12
	.p2align	4, 0x90
.LBB18_8:                               # %do.body13
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 8(%rsp)
	movl	%r14d, 12(%rsp)
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	movl	%eax, %ebx
	shlq	$32, %rbx
	movq	%r13, %rdi
	callq	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	addq	%rbx, %rax
	setb	%cl
	cmpq	%rbp, %rax
	ja	.LBB18_8
# %bb.9:                                # %do.body13
                                        #   in Loop: Header=BB18_8 Depth=1
	testb	%cl, %cl
	jne	.LBB18_8
	jmp	.LBB18_11
.LBB18_4:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r15d
                                        # kill: def $eax killed $eax def $rax
.LBB18_11:                              # %if.end30
	movq	16(%rsp), %rcx                  # 8-byte Reload
	addl	(%rcx), %eax
                                        # kill: def $eax killed $eax killed $rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end18:
	.size	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE, .Lfunc_end18-_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function _ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
.LCPI19_0:
	.quad	-2147483648                     # 0xffffffff80000000
.LCPI19_1:
	.quad	2147483646                      # 0x7ffffffe
.LCPI19_2:
	.quad	1                               # 0x1
.LCPI19_3:
	.quad	2567483615                      # 0x9908b0df
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI19_4:
	.quad	-2147483648                     # 0xffffffff80000000
	.quad	-2147483648                     # 0xffffffff80000000
.LCPI19_5:
	.quad	2147483646                      # 0x7ffffffe
	.quad	2147483646                      # 0x7ffffffe
.LCPI19_6:
	.quad	1                               # 0x1
	.quad	1                               # 0x1
.LCPI19_7:
	.quad	2567483615                      # 0x9908b0df
	.quad	2567483615                      # 0x9908b0df
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.p2align	4, 0x90
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,@function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv: # @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.cfi_startproc
# %bb.0:                                # %entry
	movq	4992(%rdi), %rax
	cmpq	$624, %rax                      # imm = 0x270
	jb	.LBB19_6
# %bb.1:                                # %if.then
	vpbroadcastq	(%rdi), %ymm0
	xorl	%eax, %eax
	vpbroadcastq	.LCPI19_0(%rip), %ymm1  # ymm1 = [18446744071562067968,18446744071562067968,18446744071562067968,18446744071562067968]
	vpbroadcastq	.LCPI19_1(%rip), %ymm2  # ymm2 = [2147483646,2147483646,2147483646,2147483646]
	vpbroadcastq	.LCPI19_2(%rip), %ymm3  # ymm3 = [1,1,1,1]
	vpbroadcastq	.LCPI19_3(%rip), %ymm4  # ymm4 = [2567483615,2567483615,2567483615,2567483615]
	.p2align	4, 0x90
.LBB19_2:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vmovdqa	%ymm0, %ymm5
	vmovdqu	8(%rdi,%rax,8), %ymm6
	vmovdqu	40(%rdi,%rax,8), %ymm7
	vmovdqu	72(%rdi,%rax,8), %ymm8
	vmovdqu	104(%rdi,%rax,8), %ymm0
	valignq	$3, %ymm5, %ymm6, %ymm5         # ymm5 = ymm5[3],ymm6[0,1,2]
	valignq	$3, %ymm6, %ymm7, %ymm9         # ymm9 = ymm6[3],ymm7[0,1,2]
	valignq	$3, %ymm7, %ymm8, %ymm10        # ymm10 = ymm7[3],ymm8[0,1,2]
	valignq	$3, %ymm8, %ymm0, %ymm11        # ymm11 = ymm8[3],ymm0[0,1,2]
	vpand	%ymm2, %ymm6, %ymm12
	vpand	%ymm2, %ymm7, %ymm13
	vpand	%ymm2, %ymm8, %ymm14
	vpand	%ymm2, %ymm0, %ymm15
	vpternlogq	$248, %ymm1, %ymm5, %ymm12
	vpternlogq	$248, %ymm1, %ymm9, %ymm13
	vpternlogq	$248, %ymm1, %ymm10, %ymm14
	vpternlogq	$248, %ymm1, %ymm11, %ymm15
	vpsrlq	$1, %ymm12, %ymm5
	vpsrlq	$1, %ymm13, %ymm9
	vpsrlq	$1, %ymm14, %ymm10
	vpsrlq	$1, %ymm15, %ymm11
	vptestmq	%ymm3, %ymm6, %k1
	vptestmq	%ymm3, %ymm7, %k2
	vptestmq	%ymm3, %ymm8, %k3
	vptestmq	%ymm3, %ymm0, %k4
	vmovdqa64	%ymm4, %ymm6 {%k1} {z}
	vmovdqa64	%ymm4, %ymm7 {%k2} {z}
	vmovdqa64	%ymm4, %ymm8 {%k3} {z}
	vmovdqa64	%ymm4, %ymm12 {%k4} {z}
	vpternlogq	$150, 3176(%rdi,%rax,8), %ymm5, %ymm6
	vpternlogq	$150, 3208(%rdi,%rax,8), %ymm9, %ymm7
	vpternlogq	$150, 3240(%rdi,%rax,8), %ymm10, %ymm8
	vpternlogq	$150, 3272(%rdi,%rax,8), %ymm11, %ymm12
	vmovdqu	%ymm6, (%rdi,%rax,8)
	vmovdqu	%ymm7, 32(%rdi,%rax,8)
	vmovdqu	%ymm8, 64(%rdi,%rax,8)
	vmovdqu	%ymm12, 96(%rdi,%rax,8)
	addq	$16, %rax
	cmpq	$224, %rax
	jne	.LBB19_2
# %bb.3:                                # %for.body.i
	movl	$2567483615, %r8d               # imm = 0x9908B0DF
	vextracti128	$1, %ymm0, %xmm0
	vpextrq	$1, %xmm0, %rdx
	andq	$-2147483648, %rdx              # imm = 0x80000000
	movq	1800(%rdi), %rax
	movq	1808(%rdi), %rcx
	movl	%eax, %esi
	andl	$2147483646, %esi               # imm = 0x7FFFFFFE
	orq	%rdx, %rsi
	shrq	%rsi
	xorq	4968(%rdi), %rsi
	movl	%eax, %edx
	andl	$1, %edx
	negl	%edx
	andl	$-1727483681, %edx              # imm = 0x9908B0DF
	xorq	%rsi, %rdx
	movq	%rdx, 1792(%rdi)
	andq	$-2147483648, %rax              # imm = 0x80000000
	movl	%ecx, %edx
	andl	$2147483646, %edx               # imm = 0x7FFFFFFE
	orq	%rax, %rdx
	shrq	%rdx
	xorq	4976(%rdi), %rdx
	movl	%ecx, %eax
	andl	$1, %eax
	negl	%eax
	andl	$-1727483681, %eax              # imm = 0x9908B0DF
	xorq	%rdx, %rax
	movq	%rax, 1800(%rdi)
	andq	$-2147483648, %rcx              # imm = 0x80000000
	movq	1816(%rdi), %rax
	movl	%eax, %edx
	vpbroadcastq	%rax, %xmm4
                                        # kill: def $eax killed $eax killed $rax def $rax
	andl	$2147483646, %eax               # imm = 0x7FFFFFFE
	orq	%rcx, %rax
	shrq	%rax
	xorq	4984(%rdi), %rax
	andl	$1, %edx
	negl	%edx
	andl	$-1727483681, %edx              # imm = 0x9908B0DF
	xorq	%rax, %rdx
	movq	%rdx, 1808(%rdi)
	xorl	%ecx, %ecx
	vmovdqa	.LCPI19_4(%rip), %xmm8          # xmm8 = [18446744071562067968,18446744071562067968]
	vmovdqa	.LCPI19_5(%rip), %xmm1          # xmm1 = [2147483646,2147483646]
	vmovdqa	.LCPI19_6(%rip), %xmm2          # xmm2 = [1,1]
	vmovdqa	.LCPI19_7(%rip), %xmm3          # xmm3 = [2567483615,2567483615]
	.p2align	4, 0x90
.LBB19_4:                               # %vector.body28
                                        # =>This Inner Loop Header: Depth=1
	vmovdqu	1824(%rdi,%rcx,8), %xmm5
	vmovdqu	1840(%rdi,%rcx,8), %xmm6
	vpalignr	$8, %xmm4, %xmm5, %xmm4         # xmm4 = xmm4[8,9,10,11,12,13,14,15],xmm5[0,1,2,3,4,5,6,7]
	vmovdqu	1856(%rdi,%rcx,8), %xmm7
	vpand	%xmm1, %xmm5, %xmm0
	vpternlogq	$248, %xmm8, %xmm4, %xmm0
	vpsrlq	$1, %xmm0, %xmm0
	vptestmq	%xmm2, %xmm5, %k1
	vmovdqa64	%xmm3, %xmm4 {%k1} {z}
	vpternlogq	$150, (%rdi,%rcx,8), %xmm0, %xmm4
	vmovdqu	%xmm4, 1816(%rdi,%rcx,8)
	vpalignr	$8, %xmm5, %xmm6, %xmm0         # xmm0 = xmm5[8,9,10,11,12,13,14,15],xmm6[0,1,2,3,4,5,6,7]
	vpand	%xmm1, %xmm6, %xmm4
	vpternlogq	$248, %xmm8, %xmm0, %xmm4
	vpsrlq	$1, %xmm4, %xmm0
	vptestmq	%xmm2, %xmm6, %k1
	vmovdqa64	%xmm3, %xmm4 {%k1} {z}
	vpternlogq	$150, 16(%rdi,%rcx,8), %xmm0, %xmm4
	vmovdqu	%xmm4, 1832(%rdi,%rcx,8)
	vpalignr	$8, %xmm6, %xmm7, %xmm0         # xmm0 = xmm6[8,9,10,11,12,13,14,15],xmm7[0,1,2,3,4,5,6,7]
	vpand	%xmm1, %xmm7, %xmm4
	vpternlogq	$248, %xmm8, %xmm0, %xmm4
	vpsrlq	$1, %xmm4, %xmm0
	vptestmq	%xmm2, %xmm7, %k1
	vmovdqa64	%xmm3, %xmm4 {%k1} {z}
	vpternlogq	$150, 32(%rdi,%rcx,8), %xmm0, %xmm4
	vmovdqu	%xmm4, 1848(%rdi,%rcx,8)
	addq	$6, %rcx
	vmovdqa	%xmm7, %xmm4
	cmpq	$396, %rcx                      # imm = 0x18C
	jne	.LBB19_4
# %bb.5:                                # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit
	movq	$-2147483648, %rax              # imm = 0x80000000
	andq	4984(%rdi), %rax
	movq	(%rdi), %rcx
	movl	%ecx, %edx
	andl	$2147483646, %edx               # imm = 0x7FFFFFFE
	orq	%rax, %rdx
	shrq	%rdx
	xorq	3168(%rdi), %rdx
	andl	$1, %ecx
	negl	%ecx
	andl	%ecx, %r8d
	xorq	%rdx, %r8
	movq	%r8, 4984(%rdi)
	xorl	%eax, %eax
.LBB19_6:                               # %if.end
	leaq	1(%rax), %rcx
	movq	%rcx, 4992(%rdi)
	movq	(%rdi,%rax,8), %rax
	movq	%rax, %rcx
	shrq	$11, %rcx
	movl	%ecx, %ecx
	xorq	%rax, %rcx
	movl	%ecx, %eax
	andl	$20601005, %eax                 # imm = 0x13A58AD
	shlq	$7, %rax
	xorq	%rcx, %rax
	movl	%eax, %ecx
	andl	$122764, %ecx                   # imm = 0x1DF8C
	shlq	$15, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$18, %rax
	xorq	%rcx, %rax
	vzeroupper
	retq
.Lfunc_end19:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .Lfunc_end19-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_main.cc
	.type	_GLOBAL__sub_I_main.cc,@function
_GLOBAL__sub_I_main.cc:                 # @_GLOBAL__sub_I_main.cc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit                    # TAILCALL
.Lfunc_end20:
	.size	_GLOBAL__sub_I_main.cc, .Lfunc_end20-_GLOBAL__sub_I_main.cc
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"[cache is cleared!]\n"
	.size	.L.str, 21

	.type	A,@object                       # @A
	.bss
	.globl	A
	.p2align	6
A:
	.zero	5120000
	.size	A, 5120000

	.type	B,@object                       # @B
	.globl	B
	.p2align	6
B:
	.zero	5120000
	.size	B, 5120000

	.type	C,@object                       # @C
	.globl	C
	.p2align	6
C:
	.zero	5120000
	.size	C, 5120000

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"\tsum: "
	.size	.L.str.1, 7

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\t\ttemp"
	.size	.L.str.2, 7

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"scalar to AVX:\n"
	.size	.L.str.3, 16

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"manual_avx512:\n"
	.size	.L.str.5, 16

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"pipeline_512_8_8vreg_reduce:\n"
	.size	.L.str.6, 30

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"pipeline_512_8_8_stagger1x1:\n"
	.size	.L.str.7, 30

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"pipeline_512_8_8_stagger:\n"
	.size	.L.str.8, 27

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_main.cc
	.ident	"clang version 13.0.0 (git@git.enflame.cn:xiaofeng.guan/llvm-project.git 1ce133e2b5d5d82d39c547de39047c496cbb7240)"
	.section	".note.GNU-stack","",@progbits
