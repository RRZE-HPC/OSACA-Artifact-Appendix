	.file	"update.c"
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
	movl	%r12d, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
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
	.p2align 4
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
	.p2align 4
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
	.globl	scale
	.type	scale, @function
scale:
.LFB34:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	0(,%rdi,8), %rsi
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r13
	movl	$64, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$1080, %rsp
	.cfi_def_cfa_offset 1136
	vmovsd	%xmm0, 8(%rsp)
	call	aligned_alloc
	testq	%r13, %r13
	vmovsd	8(%rsp), %xmm6
	movq	%rax, %rbp
	jle	.L11
	cmpq	$1, %r13
	je	.L23
	movq	%r13, %rdx
	vmovaps	.LC8(%rip), %xmm0
	movq	%rax, %rbx
	shrq	%rdx
	salq	$4, %rdx
	leaq	(%rdx,%rax), %rcx
	subq	$16, %rdx
	shrq	$4, %rdx
	incq	%rdx
	andl	$7, %edx
	je	.L13
	cmpq	$1, %rdx
	je	.L72
	cmpq	$2, %rdx
	je	.L73
	cmpq	$3, %rdx
	je	.L74
	cmpq	$4, %rdx
	je	.L75
	cmpq	$5, %rdx
	je	.L76
	cmpq	$6, %rdx
	jne	.L103
.L77:
	vmovups	%xmm0, (%rbx)
	addq	$16, %rbx
.L76:
	vmovups	%xmm0, (%rbx)
	addq	$16, %rbx
.L75:
	vmovups	%xmm0, (%rbx)
	addq	$16, %rbx
.L74:
	vmovups	%xmm0, (%rbx)
	addq	$16, %rbx
.L73:
	vmovups	%xmm0, (%rbx)
	addq	$16, %rbx
.L72:
	vmovups	%xmm0, (%rbx)
	addq	$16, %rbx
	cmpq	%rcx, %rbx
	je	.L101
.L13:
	vmovups	%xmm0, (%rbx)
	vmovups	%xmm0, 16(%rbx)
	subq	$-128, %rbx
	vmovups	%xmm0, -96(%rbx)
	vmovups	%xmm0, -80(%rbx)
	vmovups	%xmm0, -64(%rbx)
	vmovups	%xmm0, -48(%rbx)
	vmovups	%xmm0, -32(%rbx)
	vmovups	%xmm0, -16(%rbx)
	cmpq	%rcx, %rbx
	jne	.L13
.L101:
	movq	%r13, %rsi
	andq	$-2, %rsi
	movslq	%esi, %rax
	cmpq	%rsi, %r13
	je	.L11
.L12:
	movq	.LC9(%rip), %rdi
	movq	%rdi, 0(%rbp,%rax,8)
.L11:
	movq	%r13, %r14
	movq	%r13, %rbx
	movl	$1, %r15d
	shrq	%r14
	andq	$-2, %rbx
	salq	$4, %r14
	addq	%rbp, %r14
	.p2align 4
	.p2align 3
.L22:
	leaq	32(%rsp), %rsi
	leaq	16(%rsp), %rdi
	vmovsd	%xmm6, 8(%rsp)
	xorl	%r12d, %r12d
	call	timing
	vmovsd	8(%rsp), %xmm2
	.p2align 4
	.p2align 3
.L21:
	vxorpd	%xmm7, %xmm7, %xmm7
	vcomisd	0(%rbp), %xmm7
	ja	.L104
.L15:
	testq	%r13, %r13
	jle	.L17
	cmpq	$1, %r13
	je	.L24
	movq	%r14, %r9
	vmovddup	%xmm2, %xmm3
	movq	%rbp, %r10
	subq	%rbp, %r9
	subq	$16, %r9
	shrq	$4, %r9
	incq	%r9
	andl	$7, %r9d
	je	.L19
	cmpq	$1, %r9
	je	.L78
	cmpq	$2, %r9
	je	.L79
	cmpq	$3, %r9
	je	.L80
	cmpq	$4, %r9
	je	.L81
	cmpq	$5, %r9
	je	.L82
	cmpq	$6, %r9
	je	.L83
	vmulpd	0(%rbp), %xmm3, %xmm1
	leaq	16(%rbp), %r10
	vmovups	%xmm1, 0(%rbp)
.L83:
	vmulpd	(%r10), %xmm3, %xmm4
	addq	$16, %r10
	vmovups	%xmm4, -16(%r10)
.L82:
	vmulpd	(%r10), %xmm3, %xmm5
	addq	$16, %r10
	vmovups	%xmm5, -16(%r10)
.L81:
	vmulpd	(%r10), %xmm3, %xmm6
	addq	$16, %r10
	vmovups	%xmm6, -16(%r10)
.L80:
	vmulpd	(%r10), %xmm3, %xmm8
	addq	$16, %r10
	vmovups	%xmm8, -16(%r10)
.L79:
	vmulpd	(%r10), %xmm3, %xmm9
	addq	$16, %r10
	vmovups	%xmm9, -16(%r10)
.L78:
	vmulpd	(%r10), %xmm3, %xmm10
	addq	$16, %r10
	vmovups	%xmm10, -16(%r10)
	cmpq	%r10, %r14
	je	.L100
# LLVM-MCA-BEGIN
# OSACA-BEGIN
.L19:
	vmulpd	(%r10), %xmm3, %xmm11
	subq	$-128, %r10
	vmulpd	-112(%r10), %xmm3, %xmm12
	vmulpd	-96(%r10), %xmm3, %xmm13
	vmulpd	-80(%r10), %xmm3, %xmm14
	vmulpd	-64(%r10), %xmm3, %xmm15
	vmulpd	-48(%r10), %xmm3, %xmm0
	vmovups	%xmm11, -128(%r10)
	vmulpd	-32(%r10), %xmm3, %xmm7
	vmovups	%xmm12, -112(%r10)
	vmulpd	-16(%r10), %xmm3, %xmm1
	vmovups	%xmm13, -96(%r10)
	vmovups	%xmm14, -80(%r10)
	vmovups	%xmm15, -64(%r10)
	vmovups	%xmm0, -48(%r10)
	vmovups	%xmm7, -32(%r10)
	vmovups	%xmm1, -16(%r10)
	cmpq	%r10, %r14
	jne	.L19
# OSACA-END
# LLVM-MCA-END
.L100:
	movq	%rbx, %r8
	cmpq	%rbx, %r13
	je	.L17
.L18:
	leaq	0(%rbp,%r8,8), %r11
	vmulsd	(%r11), %xmm2, %xmm3
	vmovsd	%xmm3, (%r11)
.L17:
	incl	%r12d
	cmpl	%r15d, %r12d
	jne	.L21
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdi
	vmovsd	%xmm2, 8(%rsp)
	leal	(%r12,%r12), %r15d
	call	timing
	vmovsd	24(%rsp), %xmm2
	vmovsd	.LC11(%rip), %xmm5
	vsubsd	16(%rsp), %xmm2, %xmm4
	vmovsd	8(%rsp), %xmm6
	vcomisd	%xmm4, %xmm5
	ja	.L22
	leaq	48(%rsp), %rdi
	movl	$1024, %esi
	vmovsd	%xmm4, 8(%rsp)
	sarl	%r15d
	call	gethostname
	leaq	40(%rsp), %rsi
	leaq	48(%rsp), %rdi
	call	getFreq
	vxorps	%xmm8, %xmm8, %xmm8
	vmovsd	8(%rsp), %xmm1
	movslq	%r15d, %rax
	vcvtsi2sdq	40(%rsp), %xmm8, %xmm14
	vmulsd	.LC14(%rip), %xmm14, %xmm15
	vcvtsi2sdq	%r13, %xmm8, %xmm9
	vcvtsi2sdl	%r15d, %xmm8, %xmm10
	vmulsd	%xmm9, %xmm10, %xmm11
	imulq	%r13, %rax
	movq	%r13, %rdx
	movl	%r15d, %esi
	movl	$.LC16, %edi
	vmulsd	.LC12(%rip), %xmm11, %xmm12
	vmulsd	.LC13(%rip), %xmm11, %xmm13
	vcvtsi2sdq	%rax, %xmm8, %xmm0
	movl	$6, %eax
	vmulsd	.LC15(%rip), %xmm9, %xmm6
	vmulsd	%xmm1, %xmm15, %xmm7
	vdivsd	%xmm1, %xmm12, %xmm2
	vdivsd	%xmm0, %xmm7, %xmm3
	vmovaps	%xmm2, %xmm5
	vmovaps	%xmm6, %xmm0
	vdivsd	%xmm1, %xmm13, %xmm4
	call	printf
	movq	%rbp, %rdi
	call	free
	addq	$1080, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L104:
	.cfi_restore_state
	movq	%rbp, %rdi
	vmovsd	%xmm2, 8(%rsp)
	call	dummy
	vmovsd	8(%rsp), %xmm2
	jmp	.L15
	.p2align 4
	.p2align 3
.L24:
	xorl	%r8d, %r8d
	jmp	.L18
.L103:
	vmovups	%xmm0, (%rax)
	leaq	16(%rax), %rbx
	jmp	.L77
.L23:
	xorl	%eax, %eax
	jmp	.L12
	.cfi_endproc
.LFE34:
	.size	scale, .-scale
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"VECTOR UPDATE a[i] = s * a[i], 8 byte/it, 1 Flop/it\n"
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
	vxorps	%xmm3, %xmm3, %xmm3
	leaq	16(%rsp), %rsi
	movl	$.LC19, %edi
	vcvtsi2sdq	8(%rsp), %xmm3, %xmm0
	vmulsd	.LC18(%rip), %xmm0, %xmm0
	movl	$1, %eax
	call	printf
	movl	$.LC20, %edi
	xorl	%eax, %eax
	call	printf
.L106:
	movq	.LC21(%rip), %rax
	vxorps	%xmm2, %xmm2, %xmm2
	vcvtsi2sdl	%ebx, %xmm2, %xmm1
	vmovq	%rax, %xmm0
	call	__pow_finite
	movq	.LC22(%rip), %rcx
	vcvttsd2sil	%xmm0, %edx
	testl	%edx, %edx
	leal	63(%rdx), %edi
	cmovns	%edx, %edi
	andl	$-64, %edi
	movslq	%edi, %rdi
	vmovq	%rcx, %xmm0
	call	scale
	movq	.LC21(%rip), %r8
	leal	1(%rbx), %esi
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2sdl	%esi, %xmm1, %xmm1
	vmovq	%r8, %xmm0
	call	__pow_finite
	movq	.LC22(%rip), %r11
	vcvttsd2sil	%xmm0, %r9d
	testl	%r9d, %r9d
	leal	63(%r9), %r10d
	cmovns	%r9d, %r10d
	andl	$-64, %r10d
	movslq	%r10d, %rdi
	vmovq	%r11, %xmm0
	call	scale
	movq	.LC21(%rip), %rdx
	leal	2(%rbx), %eax
	vxorps	%xmm4, %xmm4, %xmm4
	vcvtsi2sdl	%eax, %xmm4, %xmm1
	vmovq	%rdx, %xmm0
	call	__pow_finite
	movq	.LC22(%rip), %rsi
	vcvttsd2sil	%xmm0, %ecx
	testl	%ecx, %ecx
	leal	63(%rcx), %edi
	cmovns	%ecx, %edi
	andl	$-64, %edi
	movslq	%edi, %rdi
	vmovq	%rsi, %xmm0
	call	scale
	movq	.LC21(%rip), %r9
	leal	3(%rbx), %r8d
	vxorps	%xmm5, %xmm5, %xmm5
	vcvtsi2sdl	%r8d, %xmm5, %xmm1
	vmovq	%r9, %xmm0
	call	__pow_finite
	movq	.LC22(%rip), %rax
	vcvttsd2sil	%xmm0, %r10d
	testl	%r10d, %r10d
	leal	63(%r10), %r11d
	cmovns	%r10d, %r11d
	addl	$4, %ebx
	andl	$-64, %r11d
	movslq	%r11d, %rdi
	vmovq	%rax, %xmm0
	call	scale
	cmpl	$36, %ebx
	jne	.L106
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
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC8:
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
	.long	0
	.long	1065353216
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
