	.file	"sum_reduction.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"casclakesp2"
.LC4:
	.string	"warmup"
.LC6:
	.string	"naples1"
	.text
	.p2align 4
	.globl	getFreq
	.type	getFreq, @function
getFreq:
.LFB33:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movl	$.LC0, %esi
	call	strcmp
	testl	%eax, %eax
	je	.L8
	movl	$.LC4, %esi
	movq	%rbp, %rdi
	call	strcmp
	movl	%eax, %r12d
	testl	%eax, %eax
	je	.L9
	movl	$.LC6, %esi
	movq	%rbp, %rdi
	call	strcmp
	movl	%eax, %r12d
	testl	%eax, %eax
	jne	.L5
	vmovsd	.LC1(%rip), %xmm1
	vmovsd	.LC2(%rip), %xmm0
	call	__pow_finite
	vmulsd	.LC7(%rip), %xmm0, %xmm0
	vcvttsd2siq	%xmm0, %rax
	movq	%rax, (%rbx)
.L1:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	movl	%r12d, %eax
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	.cfi_restore_state
	vmovsd	.LC1(%rip), %xmm1
	vmovsd	.LC2(%rip), %xmm0
	movl	%eax, %r12d
	call	__pow_finite
	vmulsd	.LC3(%rip), %xmm0, %xmm2
	movl	%r12d, %eax
	vcvttsd2siq	%xmm2, %rcx
	movq	%rcx, (%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	.cfi_restore_state
	vmovsd	.LC1(%rip), %xmm1
	vmovsd	.LC2(%rip), %xmm0
	call	__pow_finite
	vmulsd	.LC5(%rip), %xmm0, %xmm1
	movl	%r12d, %eax
	vcvttsd2siq	%xmm1, %rdx
	movq	%rdx, (%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	.cfi_restore_state
	movl	$-1, %r12d
	jmp	.L1
	.cfi_endproc
.LFE33:
	.size	getFreq, .-getFreq
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC16:
	.string	"%12.1f | %11.8f | %9.3f | %7.2f | %7.1f | %7.1f | %6d | %4ld \n"
	.text
	.p2align 4
	.globl	sum_reduction
	.type	sum_reduction, @function
sum_reduction:
.LFB34:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	leaq	0(,%rdi,8), %rsi
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	movq	%rdi, %r14
	movl	$64, %edi
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$1088, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	vmovsd	%xmm0, -1112(%rbp)
	call	aligned_alloc
	movq	%rax, %r12
	testq	%r14, %r14
	leaq	-1(%r14), %rax
	vmovsd	-1112(%rbp), %xmm7
	movq	%rax, -1112(%rbp)
	jle	.L11
	cmpq	$2, %rax
	jbe	.L23
	movq	%r14, %rdx
	shrq	$2, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%r12), %rcx
	subq	$32, %rdx
	shrq	$5, %rdx
	incq	%rdx
	vmovapd	.LC8(%rip), %ymm0
	movq	%r12, %rbx
	andl	$7, %edx
	je	.L13
	cmpq	$1, %rdx
	je	.L73
	cmpq	$2, %rdx
	je	.L74
	cmpq	$3, %rdx
	je	.L75
	cmpq	$4, %rdx
	je	.L76
	cmpq	$5, %rdx
	je	.L77
	cmpq	$6, %rdx
	jne	.L106
.L78:
	vmovupd	%ymm0, (%rbx)
	addq	$32, %rbx
.L77:
	vmovupd	%ymm0, (%rbx)
	addq	$32, %rbx
.L76:
	vmovupd	%ymm0, (%rbx)
	addq	$32, %rbx
.L75:
	vmovupd	%ymm0, (%rbx)
	addq	$32, %rbx
.L74:
	vmovupd	%ymm0, (%rbx)
	addq	$32, %rbx
.L73:
	vmovupd	%ymm0, (%rbx)
	addq	$32, %rbx
	cmpq	%rcx, %rbx
	je	.L103
.L13:
	vmovupd	%ymm0, (%rbx)
	vmovupd	%ymm0, 32(%rbx)
	vmovupd	%ymm0, 64(%rbx)
	vmovupd	%ymm0, 96(%rbx)
	vmovupd	%ymm0, 128(%rbx)
	vmovupd	%ymm0, 160(%rbx)
	vmovupd	%ymm0, 192(%rbx)
	vmovupd	%ymm0, 224(%rbx)
	addq	$256, %rbx
	cmpq	%rcx, %rbx
	jne	.L13
.L103:
	movq	%r14, %rsi
	andq	$-4, %rsi
	movl	%esi, %eax
	cmpq	%rsi, %r14
	je	.L107
	vzeroupper
.L12:
	vmovsd	.LC9(%rip), %xmm1
	leal	1(%rax), %r8d
	movslq	%eax, %rdi
	movslq	%r8d, %r9
	vmovsd	%xmm1, (%r12,%rdi,8)
	cmpq	%r9, %r14
	jle	.L11
	addl	$2, %eax
	cltq
	vmovsd	%xmm1, (%r12,%r9,8)
	cmpq	%rax, %r14
	jle	.L11
	vmovsd	%xmm1, (%r12,%rax,8)
.L11:
	movq	%r14, %r15
	shrq	$2, %r15
	salq	$5, %r15
	movq	%r14, %rbx
	addq	%r12, %r15
	andq	$-4, %rbx
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L22:
	movl	%edi, -1120(%rbp)
	leaq	-1088(%rbp), %rsi
	leaq	-1104(%rbp), %rdi
	vmovsd	%xmm7, -1128(%rbp)
	call	timing
	vmovsd	-1128(%rbp), %xmm2
	movl	-1120(%rbp), %r11d
	xorl	%r13d, %r13d
	.p2align 4,,10
	.p2align 3
.L21:
	vxorpd	%xmm7, %xmm7, %xmm7
	vcomisd	(%r12), %xmm7
	ja	.L108
.L15:
	testq	%r14, %r14
	jle	.L17
	cmpq	$2, -1112(%rbp)
	jbe	.L24
	movq	%r15, %rdx
	subq	%r12, %rdx
	subq	$32, %rdx
	shrq	$5, %rdx
	incq	%rdx
	movq	%r12, %rcx
	vxorpd	%xmm3, %xmm3, %xmm3
	andl	$7, %edx
	je	.L19
	cmpq	$1, %rdx
	je	.L79
	cmpq	$2, %rdx
	je	.L80
	cmpq	$3, %rdx
	je	.L81
	cmpq	$4, %rdx
	je	.L82
	cmpq	$5, %rdx
	je	.L83
	cmpq	$6, %rdx
	je	.L84
	vmovupd	(%r12), %ymm3
	leaq	32(%r12), %rcx
.L84:
	vaddpd	(%rcx), %ymm3, %ymm3
	addq	$32, %rcx
.L83:
	vaddpd	(%rcx), %ymm3, %ymm3
	addq	$32, %rcx
.L82:
	vaddpd	(%rcx), %ymm3, %ymm3
	addq	$32, %rcx
.L81:
	vaddpd	(%rcx), %ymm3, %ymm3
	addq	$32, %rcx
.L80:
	vaddpd	(%rcx), %ymm3, %ymm3
	addq	$32, %rcx
.L79:
	vaddpd	(%rcx), %ymm3, %ymm3
	addq	$32, %rcx
	cmpq	%rcx, %r15
	je	.L102
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
# LLVM-MCA-BEGIN
.L19:
	vaddpd	(%rcx), %ymm3, %ymm4
	addq	$256, %rcx
	vaddpd	-224(%rcx), %ymm4, %ymm5
	vaddpd	-192(%rcx), %ymm5, %ymm6
	vaddpd	-160(%rcx), %ymm6, %ymm8
	vaddpd	-128(%rcx), %ymm8, %ymm9
	vaddpd	-96(%rcx), %ymm9, %ymm10
	vaddpd	-64(%rcx), %ymm10, %ymm11
	vaddpd	-32(%rcx), %ymm11, %ymm3
	cmpq	%rcx, %r15
	jne	.L19
# LLVM-MCA-END
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L102:
	vextractf64x2	$0x1, %ymm3, %xmm12
	vaddpd	%xmm3, %xmm12, %xmm13
	movq	%rbx, %r10
	vunpckhpd	%xmm13, %xmm13, %xmm14
	vaddpd	%xmm13, %xmm14, %xmm15
	vaddsd	%xmm15, %xmm2, %xmm2
	cmpq	%rbx, %r14
	je	.L17
.L18:
	leaq	1(%r10), %rsi
	vaddsd	(%r12,%r10,8), %xmm2, %xmm2
	leaq	0(,%r10,8), %rax
	cmpq	%r14, %rsi
	jge	.L17
	addq	$2, %r10
	vaddsd	8(%r12,%rax), %xmm2, %xmm2
	cmpq	%r14, %r10
	jge	.L17
	vaddsd	16(%r12,%rax), %xmm2, %xmm2
.L17:
	incl	%r13d
	cmpl	%r11d, %r13d
	jne	.L21
	leaq	-1088(%rbp), %rsi
	leaq	-1096(%rbp), %rdi
	vmovsd	%xmm2, -1120(%rbp)
	vzeroupper
	call	timing
	vmovsd	-1096(%rbp), %xmm0
	vmovsd	.LC11(%rip), %xmm3
	vsubsd	-1104(%rbp), %xmm0, %xmm1
	vmovsd	-1120(%rbp), %xmm7
	leal	(%r13,%r13), %edi
	vcomisd	%xmm1, %xmm3
	vmovsd	%xmm7, (%r12)
	ja	.L22
	sarl	%edi
	movl	%edi, %r15d
	movl	$1024, %esi
	leaq	-1072(%rbp), %rdi
	vmovsd	%xmm1, -1112(%rbp)
	call	gethostname
	leaq	-1080(%rbp), %rsi
	leaq	-1072(%rbp), %rdi
	call	getFreq
	vxorps	%xmm5, %xmm5, %xmm5
	vcvtsi2sdq	%r14, %xmm5, %xmm6
	vcvtsi2sdl	%r15d, %xmm5, %xmm4
	vcvtsi2sdq	-1080(%rbp), %xmm5, %xmm11
	movslq	%r15d, %r8
	vmovsd	-1112(%rbp), %xmm1
	vmulsd	%xmm6, %xmm4, %xmm8
	vmulsd	.LC14(%rip), %xmm11, %xmm12
	imulq	%r14, %r8
	vmulsd	.LC15(%rip), %xmm6, %xmm0
	movq	%r14, %rdx
	vmulsd	.LC12(%rip), %xmm8, %xmm9
	vmulsd	.LC13(%rip), %xmm8, %xmm10
	vmulsd	%xmm1, %xmm12, %xmm13
	vcvtsi2sdq	%r8, %xmm5, %xmm14
	movl	%r15d, %esi
	vdivsd	%xmm1, %xmm9, %xmm2
	movl	$.LC16, %edi
	movl	$6, %eax
	vdivsd	%xmm1, %xmm10, %xmm4
	vmovapd	%xmm2, %xmm5
	vdivsd	%xmm14, %xmm13, %xmm3
	call	printf
	movq	%r12, %rdi
	call	free
	addq	$1088, %rsp
	popq	%rbx
	popq	%r9
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r9), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L108:
	.cfi_restore_state
	movq	%r12, %rdi
	movl	%r11d, -1120(%rbp)
	vmovsd	%xmm2, -1128(%rbp)
	vzeroupper
	call	dummy
	vmovsd	-1128(%rbp), %xmm2
	movl	-1120(%rbp), %r11d
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L24:
	xorl	%r10d, %r10d
	jmp	.L18
.L107:
	vzeroupper
	jmp	.L11
.L106:
	vmovupd	%ymm0, (%r12)
	leaq	32(%r12), %rbx
	jmp	.L78
.L23:
	xorl	%eax, %eax
	jmp	.L12
	.cfi_endproc
.LFE34:
	.size	sum_reduction, .-sum_reduction
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"SUM REDUCTION s = s + a[i], 8 byte/it, 1 Flop/it\n"
	.align 8
.LC19:
	.string	"Checking for %s. Frequency *must* be set to %4.2f GHz for valid cy/CL.\n"
	.align 8
.LC20:
	.string	"Size (KByte) |   runtime   |  MFlop/s  |  cy/CL  |  MB/s   |  MLUP/s | repeat | size\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB35:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$1024, %esi
	movl	$20, %ebx
	subq	$1040, %rsp
	.cfi_def_cfa_offset 1056
	leaq	16(%rsp), %rdi
	call	gethostname
	leaq	8(%rsp), %rsi
	leaq	16(%rsp), %rdi
	call	getFreq
	movl	$.LC17, %edi
	xorl	%eax, %eax
	call	printf
	vxorpd	%xmm3, %xmm3, %xmm3
	vcvtsi2sdq	8(%rsp), %xmm3, %xmm0
	leaq	16(%rsp), %rsi
	movl	$.LC19, %edi
	movl	$1, %eax
	vmulsd	.LC18(%rip), %xmm0, %xmm0
	call	printf
	movl	$.LC20, %edi
	xorl	%eax, %eax
	call	printf
.L110:
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtsi2sdl	%ebx, %xmm2, %xmm1
	movq	.LC21(%rip), %rax
	vmovq	%rax, %xmm0
	call	__pow_finite
	vcvttsd2sil	%xmm0, %edx
	movq	.LC22(%rip), %rcx
	vmovq	%rcx, %xmm0
	testl	%edx, %edx
	leal	63(%rdx), %edi
	cmovns	%edx, %edi
	andl	$-64, %edi
	movslq	%edi, %rdi
	call	sum_reduction
	leal	1(%rbx), %esi
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdl	%esi, %xmm1, %xmm1
	movq	.LC21(%rip), %r8
	vmovq	%r8, %xmm0
	call	__pow_finite
	vcvttsd2sil	%xmm0, %r9d
	movq	.LC22(%rip), %r11
	vmovq	%r11, %xmm0
	testl	%r9d, %r9d
	leal	63(%r9), %r10d
	cmovns	%r9d, %r10d
	andl	$-64, %r10d
	movslq	%r10d, %rdi
	call	sum_reduction
	leal	2(%rbx), %eax
	vxorpd	%xmm4, %xmm4, %xmm4
	vcvtsi2sdl	%eax, %xmm4, %xmm1
	movq	.LC21(%rip), %rdx
	vmovq	%rdx, %xmm0
	call	__pow_finite
	vcvttsd2sil	%xmm0, %ecx
	movq	.LC22(%rip), %rsi
	vmovq	%rsi, %xmm0
	testl	%ecx, %ecx
	leal	63(%rcx), %edi
	cmovns	%ecx, %edi
	andl	$-64, %edi
	movslq	%edi, %rdi
	call	sum_reduction
	leal	3(%rbx), %r8d
	vxorpd	%xmm5, %xmm5, %xmm5
	vcvtsi2sdl	%r8d, %xmm5, %xmm1
	movq	.LC21(%rip), %r9
	vmovq	%r9, %xmm0
	call	__pow_finite
	vcvttsd2sil	%xmm0, %r10d
	movq	.LC22(%rip), %rax
	vmovq	%rax, %xmm0
	testl	%r10d, %r10d
	leal	63(%r10), %r11d
	cmovns	%r10d, %r11d
	addl	$4, %ebx
	andl	$-64, %r11d
	movslq	%r11d, %rdi
	call	sum_reduction
	cmpl	$36, %ebx
	jne	.L110
	addq	$1040, %rsp
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE35:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1075970048
	.align 8
.LC2:
	.long	0
	.long	1076101120
	.align 8
.LC3:
	.long	0
	.long	1074003968
	.align 8
.LC5:
	.long	2576980378
	.long	1073846681
	.align 8
.LC7:
	.long	1717986918
	.long	1073899110
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC8:
	.long	1907715710
	.long	1048610426
	.long	1907715710
	.long	1048610426
	.long	1907715710
	.long	1048610426
	.long	1907715710
	.long	1048610426
	.section	.rodata.cst8
	.align 8
.LC9:
	.long	1907715710
	.long	1048610426
	.align 8
.LC11:
	.long	2576980378
	.long	1070176665
	.align 8
.LC12:
	.long	2696277389
	.long	1051772663
	.align 8
.LC13:
	.long	0
	.long	1054867456
	.align 8
.LC14:
	.long	0
	.long	1075838976
	.align 8
.LC15:
	.long	3539053052
	.long	1065378381
	.align 8
.LC18:
	.long	3894859413
	.long	1041313291
	.align 8
.LC21:
	.long	3435973837
	.long	1073007820
	.align 8
.LC22:
	.long	981314128
	.long	1072935710
	.ident	"GCC: (GNU) 9.1.0"
	.section	.note.GNU-stack,"",@progbits
