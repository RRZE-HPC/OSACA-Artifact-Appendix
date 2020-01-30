	.file	"striad.c"
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
.LC22:
	.string	"%12.1f | %11.8f | %9.3f | %7.2f | %7.1f | %7.1f | %6d | %4ld \n"
	.text
	.p2align 4
	.globl	striad
	.type	striad, @function
striad:
.LFB34:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	0(,%rdi,8), %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%r14, %rsi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	movl	$64, %edi
	subq	$1096, %rsp
	.cfi_def_cfa_offset 1152
	call	aligned_alloc
	movq	%r14, %rsi
	movl	$64, %edi
	movq	%rax, %rbp
	call	aligned_alloc
	movq	%r14, %rsi
	movl	$64, %edi
	movq	%rax, %r12
	call	aligned_alloc
	movq	%r14, %rsi
	movl	$64, %edi
	movq	%rax, %r13
	call	aligned_alloc
	movq	%rax, %r14
	testq	%rbx, %rbx
	jle	.L11
	cmpq	$1, %rbx
	je	.L23
	movq	%rbx, %rcx
	xorl	%esi, %esi
	vmovaps	.LC8(%rip), %xmm2
	vmovaps	.LC9(%rip), %xmm1
	shrq	%rcx
	vmovaps	.LC10(%rip), %xmm0
	salq	$4, %rcx
	leaq	-16(%rcx), %rdx
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
	vmovups	%xmm2, (%r12,%rsi)
	vmovups	%xmm1, 0(%r13,%rsi)
	vmovups	%xmm0, (%r14,%rsi)
	addq	$16, %rsi
.L76:
	vmovups	%xmm2, (%r12,%rsi)
	vmovups	%xmm1, 0(%r13,%rsi)
	vmovups	%xmm0, (%r14,%rsi)
	addq	$16, %rsi
.L75:
	vmovups	%xmm2, (%r12,%rsi)
	vmovups	%xmm1, 0(%r13,%rsi)
	vmovups	%xmm0, (%r14,%rsi)
	addq	$16, %rsi
.L74:
	vmovups	%xmm2, (%r12,%rsi)
	vmovups	%xmm1, 0(%r13,%rsi)
	vmovups	%xmm0, (%r14,%rsi)
	addq	$16, %rsi
.L73:
	vmovups	%xmm2, (%r12,%rsi)
	vmovups	%xmm1, 0(%r13,%rsi)
	vmovups	%xmm0, (%r14,%rsi)
	addq	$16, %rsi
.L72:
	vmovups	%xmm2, (%r12,%rsi)
	vmovups	%xmm1, 0(%r13,%rsi)
	vmovups	%xmm0, (%r14,%rsi)
	addq	$16, %rsi
	cmpq	%rsi, %rcx
	je	.L101
.L13:
	vmovups	%xmm2, (%r12,%rsi)
	vmovups	%xmm1, 0(%r13,%rsi)
	vmovups	%xmm0, (%r14,%rsi)
	vmovups	%xmm2, 16(%r12,%rsi)
	vmovups	%xmm1, 16(%r13,%rsi)
	vmovups	%xmm0, 16(%r14,%rsi)
	vmovups	%xmm2, 32(%r12,%rsi)
	vmovups	%xmm1, 32(%r13,%rsi)
	vmovups	%xmm0, 32(%r14,%rsi)
	vmovups	%xmm2, 48(%r12,%rsi)
	vmovups	%xmm1, 48(%r13,%rsi)
	vmovups	%xmm0, 48(%r14,%rsi)
	vmovups	%xmm2, 64(%r12,%rsi)
	vmovups	%xmm1, 64(%r13,%rsi)
	vmovups	%xmm0, 64(%r14,%rsi)
	vmovups	%xmm2, 80(%r12,%rsi)
	vmovups	%xmm1, 80(%r13,%rsi)
	vmovups	%xmm0, 80(%r14,%rsi)
	vmovups	%xmm2, 96(%r12,%rsi)
	vmovups	%xmm1, 96(%r13,%rsi)
	vmovups	%xmm0, 96(%r14,%rsi)
	vmovups	%xmm2, 112(%r12,%rsi)
	vmovups	%xmm1, 112(%r13,%rsi)
	vmovups	%xmm0, 112(%r14,%rsi)
	subq	$-128, %rsi
	cmpq	%rsi, %rcx
	jne	.L13
.L101:
	movq	%rbx, %rdi
	andq	$-2, %rdi
	movslq	%edi, %rax
	cmpq	%rdi, %rbx
	je	.L11
.L12:
	movq	.LC11(%rip), %r8
	movq	.LC12(%rip), %r9
	salq	$3, %rax
	movq	.LC13(%rip), %r10
	movq	%r8, (%r12,%rax)
	movq	%r9, 0(%r13,%rax)
	movq	%r10, (%r14,%rax)
.L11:
	movq	%rbx, %r8
	movq	%rbx, %r11
	movl	$1, %edi
	shrq	%r8
	andq	$-2, %r11
	salq	$4, %r8
	movq	%r11, 8(%rsp)
	.p2align 4
	.p2align 3
.L22:
	movl	%edi, 16(%rsp)
	leaq	48(%rsp), %rsi
	leaq	32(%rsp), %rdi
	movq	%r8, 24(%rsp)
	xorl	%r15d, %r15d
	call	timing
	movq	24(%rsp), %rcx
	movl	16(%rsp), %esi
	.p2align 4
	.p2align 3
.L21:
	vxorpd	%xmm5, %xmm5, %xmm5
	vcomisd	0(%rbp), %xmm5
	ja	.L104
.L15:
	testq	%rbx, %rbx
	jle	.L17
	xorl	%eax, %eax
	cmpq	$1, %rbx
	je	.L18
	leaq	-16(%rcx), %rdx
	shrq	$4, %rdx
	incq	%rdx
	andl	$7, %edx
	je	.L19
	cmpq	$1, %rdx
	je	.L78
	cmpq	$2, %rdx
	je	.L79
	cmpq	$3, %rdx
	je	.L80
	cmpq	$4, %rdx
	je	.L81
	cmpq	$5, %rdx
	je	.L82
	cmpq	$6, %rdx
	je	.L83
	vmovups	(%r14), %xmm3
	vmovups	(%r12), %xmm6
	movl	$16, %eax
	vfmadd132pd	0(%r13), %xmm6, %xmm3
	vmovups	%xmm3, 0(%rbp)
.L83:
	vmovups	(%r14,%rax), %xmm4
	vmovups	(%r12,%rax), %xmm7
	vfmadd132pd	0(%r13,%rax), %xmm7, %xmm4
	vmovups	%xmm4, 0(%rbp,%rax)
	addq	$16, %rax
.L82:
	vmovups	(%r14,%rax), %xmm8
	vmovups	(%r12,%rax), %xmm9
	vfmadd132pd	0(%r13,%rax), %xmm9, %xmm8
	vmovups	%xmm8, 0(%rbp,%rax)
	addq	$16, %rax
.L81:
	vmovups	(%r14,%rax), %xmm10
	vmovups	(%r12,%rax), %xmm11
	vfmadd132pd	0(%r13,%rax), %xmm11, %xmm10
	vmovups	%xmm10, 0(%rbp,%rax)
	addq	$16, %rax
.L80:
	vmovups	(%r14,%rax), %xmm12
	vmovups	(%r12,%rax), %xmm13
	vfmadd132pd	0(%r13,%rax), %xmm13, %xmm12
	vmovups	%xmm12, 0(%rbp,%rax)
	addq	$16, %rax
.L79:
	vmovups	(%r14,%rax), %xmm14
	vmovups	(%r12,%rax), %xmm15
	vfmadd132pd	0(%r13,%rax), %xmm15, %xmm14
	vmovups	%xmm14, 0(%rbp,%rax)
	addq	$16, %rax
.L78:
	vmovups	(%r14,%rax), %xmm2
	vmovups	(%r12,%rax), %xmm1
	vfmadd132pd	0(%r13,%rax), %xmm1, %xmm2
	vmovups	%xmm2, 0(%rbp,%rax)
	addq	$16, %rax
	cmpq	%rcx, %rax
	je	.L100
# LLVM-MCA-BEGIN
# OSACA-BEGIN
.L19:
	vmovups	(%r14,%rax), %xmm0
	vmovups	(%r12,%rax), %xmm5
	vmovups	16(%r14,%rax), %xmm3
	vmovups	16(%r12,%rax), %xmm6
	vmovups	32(%r14,%rax), %xmm4
	vmovups	32(%r12,%rax), %xmm7
	vmovups	48(%r14,%rax), %xmm8
	vmovups	48(%r12,%rax), %xmm9
	vmovups	64(%r14,%rax), %xmm10
	vmovups	64(%r12,%rax), %xmm11
	vmovups	80(%r14,%rax), %xmm12
	vmovups	80(%r12,%rax), %xmm13
	vmovups	96(%r14,%rax), %xmm14
	vmovups	96(%r12,%rax), %xmm15
	vmovups	112(%r14,%rax), %xmm2
	vmovups	112(%r12,%rax), %xmm1
	vfmadd132pd	0(%r13,%rax), %xmm5, %xmm0
	vfmadd132pd	16(%r13,%rax), %xmm6, %xmm3
	vfmadd132pd	32(%r13,%rax), %xmm7, %xmm4
	vfmadd132pd	48(%r13,%rax), %xmm9, %xmm8
	vfmadd132pd	64(%r13,%rax), %xmm11, %xmm10
	vfmadd132pd	80(%r13,%rax), %xmm13, %xmm12
	vfmadd132pd	96(%r13,%rax), %xmm15, %xmm14
	vfmadd132pd	112(%r13,%rax), %xmm1, %xmm2
	vmovups	%xmm0, 0(%rbp,%rax)
	vmovups	%xmm3, 16(%rbp,%rax)
	vmovups	%xmm4, 32(%rbp,%rax)
	vmovups	%xmm8, 48(%rbp,%rax)
	vmovups	%xmm10, 64(%rbp,%rax)
	vmovups	%xmm12, 80(%rbp,%rax)
	vmovups	%xmm14, 96(%rbp,%rax)
	vmovups	%xmm2, 112(%rbp,%rax)
	subq	$-128, %rax
	cmpq	%rcx, %rax
	jne	.L19
# OSACA-END
# LLVM-MCA-END
.L100:
	movq	8(%rsp), %rax
	cmpq	%rax, %rbx
	je	.L17
.L18:
	vmovsd	(%r14,%rax,8), %xmm0
	vmovsd	(%r12,%rax,8), %xmm5
	vfmadd132sd	0(%r13,%rax,8), %xmm5, %xmm0
	vmovsd	%xmm0, 0(%rbp,%rax,8)
.L17:
	incl	%r15d
	cmpl	%esi, %r15d
	jne	.L21
	leaq	40(%rsp), %rdi
	leaq	48(%rsp), %rsi
	movq	%rcx, 16(%rsp)
	call	timing
	leal	(%r15,%r15), %edi
	vmovsd	40(%rsp), %xmm3
	vmovsd	.LC15(%rip), %xmm4
	vsubsd	32(%rsp), %xmm3, %xmm6
	movq	16(%rsp), %r8
	vcomisd	%xmm6, %xmm4
	ja	.L22
	sarl	%edi
	movl	$1024, %esi
	vmovsd	%xmm6, 8(%rsp)
	movl	%edi, %r15d
	leaq	64(%rsp), %rdi
	call	gethostname
	leaq	56(%rsp), %rsi
	leaq	64(%rsp), %rdi
	call	getFreq
	vmovsd	8(%rsp), %xmm1
	vxorps	%xmm8, %xmm8, %xmm8
	movslq	%r15d, %r9
	vmovsd	.LC16(%rip), %xmm11
	vcvtsi2sdq	56(%rsp), %xmm8, %xmm15
	vmulsd	.LC19(%rip), %xmm15, %xmm2
	imulq	%rbx, %r9
	vcvtsi2sdq	%rbx, %xmm8, %xmm7
	vcvtsi2sdl	%r15d, %xmm8, %xmm9
	movq	%rbx, %rdx
	movl	%r15d, %esi
	vmulsd	%xmm7, %xmm9, %xmm10
	movl	$.LC22, %edi
	movl	$6, %eax
	vcvtsi2sdq	%r9, %xmm8, %xmm0
	vmulsd	.LC21(%rip), %xmm7, %xmm8
	vdivsd	%xmm1, %xmm11, %xmm12
	vmulsd	%xmm1, %xmm2, %xmm3
	vmulsd	.LC17(%rip), %xmm12, %xmm13
	vmulsd	.LC18(%rip), %xmm12, %xmm14
	vmulsd	.LC20(%rip), %xmm12, %xmm6
	vdivsd	%xmm0, %xmm3, %xmm3
	vmovaps	%xmm8, %xmm0
	vmulsd	%xmm10, %xmm13, %xmm5
	vmulsd	%xmm10, %xmm14, %xmm4
	vmulsd	%xmm10, %xmm6, %xmm2
	call	printf
	movq	%rbp, %rdi
	call	free
	movq	%r12, %rdi
	call	free
	movq	%r13, %rdi
	call	free
	movq	%r14, %rdi
	call	free
	addq	$1096, %rsp
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
	movq	%rcx, 24(%rsp)
	movl	%esi, 16(%rsp)
	call	dummy
	movq	24(%rsp), %rcx
	movl	16(%rsp), %esi
	jmp	.L15
.L103:
	vmovups	%xmm2, (%r12)
	vmovups	%xmm1, 0(%r13)
	movl	$16, %esi
	vmovups	%xmm0, (%rax)
	jmp	.L77
.L23:
	xorl	%eax, %eax
	jmp	.L12
	.cfi_endproc
.LFE34:
	.size	striad, .-striad
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"SCHOENAUER TRIAD a[i] = b[i] + c[i] * d[i], 24 byte/it, 2 Flop/it\n"
	.align 8
.LC25:
	.string	"Checking for %s. Frequency *must* be set to %4.2f GHz for valid cy/CL.\n"
	.align 8
.LC26:
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
	movl	$.LC23, %edi
	xorl	%eax, %eax
	call	printf
	vxorps	%xmm3, %xmm3, %xmm3
	leaq	16(%rsp), %rsi
	movl	$.LC25, %edi
	vcvtsi2sdq	8(%rsp), %xmm3, %xmm0
	vmulsd	.LC24(%rip), %xmm0, %xmm0
	movl	$1, %eax
	call	printf
	movl	$.LC26, %edi
	xorl	%eax, %eax
	call	printf
.L106:
	movq	.LC27(%rip), %rax
	vxorps	%xmm2, %xmm2, %xmm2
	vcvtsi2sdl	%ebx, %xmm2, %xmm1
	vmovq	%rax, %xmm0
	call	__pow_finite
	vcvttsd2sil	%xmm0, %edx
	testl	%edx, %edx
	leal	63(%rdx), %edi
	cmovns	%edx, %edi
	andl	$-64, %edi
	movslq	%edi, %rdi
	call	striad
	movq	.LC27(%rip), %rsi
	leal	1(%rbx), %ecx
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2sdl	%ecx, %xmm1, %xmm1
	vmovq	%rsi, %xmm0
	call	__pow_finite
	vcvttsd2sil	%xmm0, %r8d
	testl	%r8d, %r8d
	leal	63(%r8), %r9d
	cmovns	%r8d, %r9d
	andl	$-64, %r9d
	movslq	%r9d, %rdi
	call	striad
	movq	.LC27(%rip), %r11
	leal	2(%rbx), %r10d
	vxorps	%xmm4, %xmm4, %xmm4
	vcvtsi2sdl	%r10d, %xmm4, %xmm1
	vmovq	%r11, %xmm0
	call	__pow_finite
	vcvttsd2sil	%xmm0, %eax
	testl	%eax, %eax
	leal	63(%rax), %edx
	cmovns	%eax, %edx
	andl	$-64, %edx
	movslq	%edx, %rdi
	call	striad
	movq	.LC27(%rip), %rcx
	leal	3(%rbx), %edi
	vxorps	%xmm5, %xmm5, %xmm5
	vcvtsi2sdl	%edi, %xmm5, %xmm1
	vmovq	%rcx, %xmm0
	call	__pow_finite
	vcvttsd2sil	%xmm0, %esi
	testl	%esi, %esi
	leal	63(%rsi), %r8d
	cmovns	%esi, %r8d
	addl	$4, %ebx
	andl	$-64, %r8d
	movslq	%r8d, %rdi
	call	striad
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
	.align 16
.LC9:
	.long	1524087310
	.long	1055485069
	.long	1524087310
	.long	1055485069
	.align 16
.LC10:
	.long	619800931
	.long	1057026584
	.long	619800931
	.long	1057026584
	.section	.rodata.cst8
	.align 8
.LC11:
	.long	1907715710
	.long	1048610426
	.align 8
.LC12:
	.long	1524087310
	.long	1055485069
	.align 8
.LC13:
	.long	619800931
	.long	1057026584
	.align 8
.LC15:
	.long	2576980378
	.long	1070176665
	.align 8
.LC16:
	.long	0
	.long	1072693248
	.align 8
.LC17:
	.long	2696277389
	.long	1051772663
	.align 8
.LC18:
	.long	0
	.long	1056440320
	.align 8
.LC19:
	.long	0
	.long	1075838976
	.align 8
.LC20:
	.long	2696277389
	.long	1052821239
	.align 8
.LC21:
	.long	3539053052
	.long	1065378381
	.align 8
.LC24:
	.long	3894859413
	.long	1041313291
	.align 8
.LC27:
	.long	3435973837
	.long	1073007820
	.ident	"GCC: (GNU) 9.1.0"
	.section	.note.GNU-stack,"",@progbits
