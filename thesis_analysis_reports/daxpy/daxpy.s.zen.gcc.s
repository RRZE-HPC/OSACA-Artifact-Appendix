	.file	"daxpy.c"
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
.LC20:
	.string	"%12.1f | %11.8f | %9.3f | %7.2f | %7.1f | %7.1f | %6d | %4ld \n"
	.text
	.p2align 4
	.globl	daxpy
	.type	daxpy, @function
daxpy:
.LFB34:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	0(,%rdi,8), %r12
	movl	$64, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%r12, %rsi
	subq	$1080, %rsp
	.cfi_def_cfa_offset 1136
	vmovsd	%xmm0, (%rsp)
	call	aligned_alloc
	movq	%r12, %rsi
	movl	$64, %edi
	movq	%rax, %rbp
	call	aligned_alloc
	testq	%r14, %r14
	vmovsd	(%rsp), %xmm8
	movq	%rax, %r12
	jle	.L11
	cmpq	$1, %r14
	je	.L23
	movq	%r14, %rcx
	xorl	%ebx, %ebx
	vmovaps	.LC8(%rip), %xmm1
	vmovaps	.LC9(%rip), %xmm0
	shrq	%rcx
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
	vmovups	%xmm1, 0(%rbp,%rbx)
	vmovups	%xmm0, (%r12,%rbx)
	addq	$16, %rbx
.L76:
	vmovups	%xmm1, 0(%rbp,%rbx)
	vmovups	%xmm0, (%r12,%rbx)
	addq	$16, %rbx
.L75:
	vmovups	%xmm1, 0(%rbp,%rbx)
	vmovups	%xmm0, (%r12,%rbx)
	addq	$16, %rbx
.L74:
	vmovups	%xmm1, 0(%rbp,%rbx)
	vmovups	%xmm0, (%r12,%rbx)
	addq	$16, %rbx
.L73:
	vmovups	%xmm1, 0(%rbp,%rbx)
	vmovups	%xmm0, (%r12,%rbx)
	addq	$16, %rbx
.L72:
	vmovups	%xmm1, 0(%rbp,%rbx)
	vmovups	%xmm0, (%r12,%rbx)
	addq	$16, %rbx
	cmpq	%rbx, %rcx
	je	.L101
.L13:
	vmovups	%xmm1, 0(%rbp,%rbx)
	vmovups	%xmm0, (%r12,%rbx)
	vmovups	%xmm1, 16(%rbp,%rbx)
	vmovups	%xmm0, 16(%r12,%rbx)
	vmovups	%xmm1, 32(%rbp,%rbx)
	vmovups	%xmm0, 32(%r12,%rbx)
	vmovups	%xmm1, 48(%rbp,%rbx)
	vmovups	%xmm0, 48(%r12,%rbx)
	vmovups	%xmm1, 64(%rbp,%rbx)
	vmovups	%xmm0, 64(%r12,%rbx)
	vmovups	%xmm1, 80(%rbp,%rbx)
	vmovups	%xmm0, 80(%r12,%rbx)
	vmovups	%xmm1, 96(%rbp,%rbx)
	vmovups	%xmm0, 96(%r12,%rbx)
	vmovups	%xmm1, 112(%rbp,%rbx)
	vmovups	%xmm0, 112(%r12,%rbx)
	subq	$-128, %rbx
	cmpq	%rbx, %rcx
	jne	.L13
.L101:
	movq	%r14, %rsi
	andq	$-2, %rsi
	movslq	%esi, %rax
	cmpq	%rsi, %r14
	je	.L11
.L12:
	movq	.LC10(%rip), %rdi
	movq	.LC11(%rip), %r8
	salq	$3, %rax
	movq	%rdi, 0(%rbp,%rax)
	movq	%r8, (%r12,%rax)
.L11:
	movq	%r14, %r15
	movq	%r14, %rbx
	movl	$1, %edx
	shrq	%r15
	andq	$-2, %rbx
	salq	$4, %r15
	.p2align 4
	.p2align 3
.L22:
	leaq	32(%rsp), %rsi
	leaq	16(%rsp), %rdi
	vmovsd	%xmm8, 8(%rsp)
	movl	%edx, (%rsp)
	xorl	%r13d, %r13d
	call	timing
	vmovsd	8(%rsp), %xmm2
	movl	(%rsp), %r9d
	.p2align 4
	.p2align 3
.L21:
	vxorpd	%xmm4, %xmm4, %xmm4
	vcomisd	0(%rbp), %xmm4
	ja	.L104
.L15:
	testq	%r14, %r14
	jle	.L17
	cmpq	$1, %r14
	je	.L24
	leaq	-16(%r15), %r11
	xorl	%eax, %eax
	vmovddup	%xmm2, %xmm3
	shrq	$4, %r11
	incq	%r11
	andl	$7, %r11d
	je	.L19
	cmpq	$1, %r11
	je	.L78
	cmpq	$2, %r11
	je	.L79
	cmpq	$3, %r11
	je	.L80
	cmpq	$4, %r11
	je	.L81
	cmpq	$5, %r11
	je	.L82
	cmpq	$6, %r11
	je	.L83
	vmovups	(%r12), %xmm5
	movl	$16, %eax
	vfmadd213pd	0(%rbp), %xmm3, %xmm5
	vmovups	%xmm5, 0(%rbp)
.L83:
	vmovups	(%r12,%rax), %xmm6
	vfmadd213pd	0(%rbp,%rax), %xmm3, %xmm6
	vmovups	%xmm6, 0(%rbp,%rax)
	addq	$16, %rax
.L82:
	vmovups	(%r12,%rax), %xmm7
	vfmadd213pd	0(%rbp,%rax), %xmm3, %xmm7
	vmovups	%xmm7, 0(%rbp,%rax)
	addq	$16, %rax
.L81:
	vmovups	(%r12,%rax), %xmm8
	vfmadd213pd	0(%rbp,%rax), %xmm3, %xmm8
	vmovups	%xmm8, 0(%rbp,%rax)
	addq	$16, %rax
.L80:
	vmovups	(%r12,%rax), %xmm9
	vfmadd213pd	0(%rbp,%rax), %xmm3, %xmm9
	vmovups	%xmm9, 0(%rbp,%rax)
	addq	$16, %rax
.L79:
	vmovups	(%r12,%rax), %xmm10
	vfmadd213pd	0(%rbp,%rax), %xmm3, %xmm10
	vmovups	%xmm10, 0(%rbp,%rax)
	addq	$16, %rax
.L78:
	vmovups	(%r12,%rax), %xmm11
	vfmadd213pd	0(%rbp,%rax), %xmm3, %xmm11
	vmovups	%xmm11, 0(%rbp,%rax)
	addq	$16, %rax
	cmpq	%r15, %rax
	je	.L100
# LLVM-MCA-BEGIN
# OSACA-BEGIN
.L19:
	vmovups	(%r12,%rax), %xmm12
	vmovups	16(%r12,%rax), %xmm13
	vmovups	32(%r12,%rax), %xmm14
	vmovups	48(%r12,%rax), %xmm15
	vmovups	64(%r12,%rax), %xmm1
	vmovups	80(%r12,%rax), %xmm0
	vmovups	96(%r12,%rax), %xmm4
	vmovups	112(%r12,%rax), %xmm5
	vfmadd213pd	0(%rbp,%rax), %xmm3, %xmm12
	vfmadd213pd	16(%rbp,%rax), %xmm3, %xmm13
	vfmadd213pd	32(%rbp,%rax), %xmm3, %xmm14
	vfmadd213pd	48(%rbp,%rax), %xmm3, %xmm15
	vfmadd213pd	64(%rbp,%rax), %xmm3, %xmm1
	vfmadd213pd	80(%rbp,%rax), %xmm3, %xmm0
	vfmadd213pd	96(%rbp,%rax), %xmm3, %xmm4
	vfmadd213pd	112(%rbp,%rax), %xmm3, %xmm5
	vmovups	%xmm12, 0(%rbp,%rax)
	vmovups	%xmm13, 16(%rbp,%rax)
	vmovups	%xmm14, 32(%rbp,%rax)
	vmovups	%xmm15, 48(%rbp,%rax)
	vmovups	%xmm1, 64(%rbp,%rax)
	vmovups	%xmm0, 80(%rbp,%rax)
	vmovups	%xmm4, 96(%rbp,%rax)
	vmovups	%xmm5, 112(%rbp,%rax)
	subq	$-128, %rax
	cmpq	%r15, %rax
	jne	.L19
# OSACA-END
# LLVM-MCA-END
.L100:
	movq	%rbx, %r10
	cmpq	%rbx, %r14
	je	.L17
.L18:
	salq	$3, %r10
	leaq	0(%rbp,%r10), %rcx
	vmovsd	(%r12,%r10), %xmm3
	vfmadd213sd	(%rcx), %xmm2, %xmm3
	vmovsd	%xmm3, (%rcx)
.L17:
	incl	%r13d
	cmpl	%r9d, %r13d
	jne	.L21
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdi
	vmovsd	%xmm2, (%rsp)
	call	timing
	leal	(%r13,%r13), %edx
	vmovsd	24(%rsp), %xmm2
	vmovsd	.LC13(%rip), %xmm7
	vsubsd	16(%rsp), %xmm2, %xmm6
	vmovsd	(%rsp), %xmm8
	vcomisd	%xmm6, %xmm7
	ja	.L22
	sarl	%edx
	leaq	48(%rsp), %rdi
	movl	$1024, %esi
	vmovsd	%xmm6, (%rsp)
	movl	%edx, %r15d
	call	gethostname
	leaq	40(%rsp), %rsi
	leaq	48(%rsp), %rdi
	call	getFreq
	vxorps	%xmm9, %xmm9, %xmm9
	vmovsd	(%rsp), %xmm1
	movslq	%r15d, %rsi
	vmovsd	.LC14(%rip), %xmm13
	vcvtsi2sdq	40(%rsp), %xmm9, %xmm0
	vmulsd	.LC17(%rip), %xmm0, %xmm5
	imulq	%r14, %rsi
	vcvtsi2sdq	%r14, %xmm9, %xmm10
	vmulsd	.LC19(%rip), %xmm10, %xmm0
	vcvtsi2sdl	%r15d, %xmm9, %xmm11
	movq	%r14, %rdx
	movl	$.LC20, %edi
	movl	$6, %eax
	vcvtsi2sdq	%rsi, %xmm9, %xmm2
	movl	%r15d, %esi
	vmulsd	%xmm10, %xmm11, %xmm12
	vdivsd	%xmm1, %xmm13, %xmm14
	vmulsd	%xmm1, %xmm5, %xmm3
	vmulsd	.LC15(%rip), %xmm14, %xmm15
	vmulsd	.LC16(%rip), %xmm14, %xmm4
	vmulsd	.LC18(%rip), %xmm14, %xmm6
	vdivsd	%xmm2, %xmm3, %xmm3
	vmulsd	%xmm12, %xmm15, %xmm5
	vmulsd	%xmm12, %xmm4, %xmm4
	vmulsd	%xmm12, %xmm6, %xmm2
	call	printf
	movq	%rbp, %rdi
	call	free
	movq	%r12, %rdi
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
	movl	%r9d, (%rsp)
	call	dummy
	vmovsd	8(%rsp), %xmm2
	movl	(%rsp), %r9d
	jmp	.L15
	.p2align 4
	.p2align 3
.L24:
	xorl	%r10d, %r10d
	jmp	.L18
.L103:
	vmovups	%xmm1, 0(%rbp)
	vmovups	%xmm0, (%rax)
	movl	$16, %ebx
	jmp	.L77
.L23:
	xorl	%eax, %eax
	jmp	.L12
	.cfi_endproc
.LFE34:
	.size	daxpy, .-daxpy
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"DAXPY a[i] = a[i] + s * b[i], 16 byte/it, 2 Flop/it\n"
	.align 8
.LC23:
	.string	"Checking for %s. Frequency *must* be set to %4.2f GHz for valid cy/CL.\n"
	.align 8
.LC24:
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
	movl	$.LC21, %edi
	xorl	%eax, %eax
	call	printf
	vxorps	%xmm3, %xmm3, %xmm3
	leaq	16(%rsp), %rsi
	movl	$.LC23, %edi
	vcvtsi2sdq	8(%rsp), %xmm3, %xmm0
	vmulsd	.LC22(%rip), %xmm0, %xmm0
	movl	$1, %eax
	call	printf
	movl	$.LC24, %edi
	xorl	%eax, %eax
	call	printf
.L106:
	movq	.LC25(%rip), %rax
	vxorps	%xmm2, %xmm2, %xmm2
	vcvtsi2sdl	%ebx, %xmm2, %xmm1
	vmovq	%rax, %xmm0
	call	__pow_finite
	movq	.LC26(%rip), %rcx
	vcvttsd2sil	%xmm0, %edx
	testl	%edx, %edx
	leal	63(%rdx), %edi
	cmovns	%edx, %edi
	andl	$-64, %edi
	movslq	%edi, %rdi
	vmovq	%rcx, %xmm0
	call	daxpy
	movq	.LC25(%rip), %r8
	leal	1(%rbx), %esi
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2sdl	%esi, %xmm1, %xmm1
	vmovq	%r8, %xmm0
	call	__pow_finite
	movq	.LC26(%rip), %r11
	vcvttsd2sil	%xmm0, %r9d
	testl	%r9d, %r9d
	leal	63(%r9), %r10d
	cmovns	%r9d, %r10d
	andl	$-64, %r10d
	movslq	%r10d, %rdi
	vmovq	%r11, %xmm0
	call	daxpy
	movq	.LC25(%rip), %rdx
	leal	2(%rbx), %eax
	vxorps	%xmm4, %xmm4, %xmm4
	vcvtsi2sdl	%eax, %xmm4, %xmm1
	vmovq	%rdx, %xmm0
	call	__pow_finite
	movq	.LC26(%rip), %rsi
	vcvttsd2sil	%xmm0, %ecx
	testl	%ecx, %ecx
	leal	63(%rcx), %edi
	cmovns	%ecx, %edi
	andl	$-64, %edi
	movslq	%edi, %rdi
	vmovq	%rsi, %xmm0
	call	daxpy
	movq	.LC25(%rip), %r9
	leal	3(%rbx), %r8d
	vxorps	%xmm5, %xmm5, %xmm5
	vcvtsi2sdl	%r8d, %xmm5, %xmm1
	vmovq	%r9, %xmm0
	call	__pow_finite
	movq	.LC26(%rip), %rax
	vcvttsd2sil	%xmm0, %r10d
	testl	%r10d, %r10d
	leal	63(%r10), %r11d
	cmovns	%r10d, %r11d
	addl	$4, %ebx
	andl	$-64, %r11d
	movslq	%r11d, %rdi
	vmovq	%rax, %xmm0
	call	daxpy
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
	.section	.rodata.cst8
	.align 8
.LC10:
	.long	1907715710
	.long	1048610426
	.align 8
.LC11:
	.long	1524087310
	.long	1055485069
	.align 8
.LC13:
	.long	2576980378
	.long	1070176665
	.align 8
.LC14:
	.long	0
	.long	1072693248
	.align 8
.LC15:
	.long	2696277389
	.long	1051772663
	.align 8
.LC16:
	.long	0
	.long	1055916032
	.align 8
.LC17:
	.long	0
	.long	1075838976
	.align 8
.LC18:
	.long	2696277389
	.long	1052821239
	.align 8
.LC19:
	.long	3539053052
	.long	1065378381
	.align 8
.LC22:
	.long	3894859413
	.long	1041313291
	.align 8
.LC25:
	.long	3435973837
	.long	1073007820
	.align 8
.LC26:
	.long	981314128
	.long	1072935710
	.ident	"GCC: (GNU) 9.1.0"
	.section	.note.GNU-stack,"",@progbits
