	.file	"add.c"
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
.LC18:
	.string	"%12.1f | %11.8f | %9.3f | %7.2f | %7.1f | %7.1f | %6d | %4ld \n"
	.text
	.p2align 4
	.globl	add
	.type	add, @function
add:
.LFB34:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	0(,%rdi,8), %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	$64, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%r13, %rsi
	subq	$1080, %rsp
	.cfi_def_cfa_offset 1136
	call	aligned_alloc
	movq	%r13, %rsi
	movl	$64, %edi
	movq	%rax, %rbp
	call	aligned_alloc
	movq	%r13, %rsi
	movl	$64, %edi
	movq	%rax, %r12
	call	aligned_alloc
	movq	%rax, %r13
	testq	%r15, %r15
	jle	.L11
	cmpq	$1, %r15
	je	.L23
	movq	%r15, %rcx
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
	vmovups	%xmm1, (%r12,%rbx)
	vmovups	%xmm0, 0(%r13,%rbx)
	addq	$16, %rbx
.L76:
	vmovups	%xmm1, (%r12,%rbx)
	vmovups	%xmm0, 0(%r13,%rbx)
	addq	$16, %rbx
.L75:
	vmovups	%xmm1, (%r12,%rbx)
	vmovups	%xmm0, 0(%r13,%rbx)
	addq	$16, %rbx
.L74:
	vmovups	%xmm1, (%r12,%rbx)
	vmovups	%xmm0, 0(%r13,%rbx)
	addq	$16, %rbx
.L73:
	vmovups	%xmm1, (%r12,%rbx)
	vmovups	%xmm0, 0(%r13,%rbx)
	addq	$16, %rbx
.L72:
	vmovups	%xmm1, (%r12,%rbx)
	vmovups	%xmm0, 0(%r13,%rbx)
	addq	$16, %rbx
	cmpq	%rbx, %rcx
	je	.L101
.L13:
	vmovups	%xmm1, (%r12,%rbx)
	vmovups	%xmm0, 0(%r13,%rbx)
	vmovups	%xmm1, 16(%r12,%rbx)
	vmovups	%xmm0, 16(%r13,%rbx)
	vmovups	%xmm1, 32(%r12,%rbx)
	vmovups	%xmm0, 32(%r13,%rbx)
	vmovups	%xmm1, 48(%r12,%rbx)
	vmovups	%xmm0, 48(%r13,%rbx)
	vmovups	%xmm1, 64(%r12,%rbx)
	vmovups	%xmm0, 64(%r13,%rbx)
	vmovups	%xmm1, 80(%r12,%rbx)
	vmovups	%xmm0, 80(%r13,%rbx)
	vmovups	%xmm1, 96(%r12,%rbx)
	vmovups	%xmm0, 96(%r13,%rbx)
	vmovups	%xmm1, 112(%r12,%rbx)
	vmovups	%xmm0, 112(%r13,%rbx)
	subq	$-128, %rbx
	cmpq	%rbx, %rcx
	jne	.L13
.L101:
	movq	%r15, %rsi
	andq	$-2, %rsi
	movslq	%esi, %rax
	cmpq	%rsi, %r15
	je	.L11
.L12:
	movq	.LC10(%rip), %rdi
	movq	.LC11(%rip), %r8
	salq	$3, %rax
	movq	%rdi, (%r12,%rax)
	movq	%r8, 0(%r13,%rax)
.L11:
	movq	%r15, %rbx
	movq	%r15, %r9
	movl	$1, %ecx
	shrq	%rbx
	andq	$-2, %r9
	salq	$4, %rbx
	movq	%r9, (%rsp)
	.p2align 4
	.p2align 3
.L22:
	leaq	32(%rsp), %rsi
	leaq	16(%rsp), %rdi
	movl	%ecx, 12(%rsp)
	xorl	%r14d, %r14d
	call	timing
	movl	12(%rsp), %r10d
	.p2align 4
	.p2align 3
.L21:
	vxorpd	%xmm7, %xmm7, %xmm7
	vcomisd	0(%rbp), %xmm7
	ja	.L104
.L15:
	testq	%r15, %r15
	jle	.L17
	xorl	%eax, %eax
	cmpq	$1, %r15
	je	.L18
	leaq	-16(%rbx), %r11
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
	vmovups	0(%r13), %xmm3
	movl	$16, %eax
	vaddpd	(%r12), %xmm3, %xmm2
	vmovups	%xmm2, 0(%rbp)
.L83:
	vmovups	0(%r13,%rax), %xmm4
	vaddpd	(%r12,%rax), %xmm4, %xmm5
	vmovups	%xmm5, 0(%rbp,%rax)
	addq	$16, %rax
.L82:
	vmovups	0(%r13,%rax), %xmm6
	vaddpd	(%r12,%rax), %xmm6, %xmm8
	vmovups	%xmm8, 0(%rbp,%rax)
	addq	$16, %rax
.L81:
	vmovups	0(%r13,%rax), %xmm9
	vaddpd	(%r12,%rax), %xmm9, %xmm10
	vmovups	%xmm10, 0(%rbp,%rax)
	addq	$16, %rax
.L80:
	vmovups	0(%r13,%rax), %xmm11
	vaddpd	(%r12,%rax), %xmm11, %xmm12
	vmovups	%xmm12, 0(%rbp,%rax)
	addq	$16, %rax
.L79:
	vmovups	0(%r13,%rax), %xmm13
	vaddpd	(%r12,%rax), %xmm13, %xmm14
	vmovups	%xmm14, 0(%rbp,%rax)
	addq	$16, %rax
.L78:
	vmovups	0(%r13,%rax), %xmm15
	vaddpd	(%r12,%rax), %xmm15, %xmm1
	vmovups	%xmm1, 0(%rbp,%rax)
	addq	$16, %rax
	cmpq	%rbx, %rax
	je	.L100
# LLVM-MCA-BEGIN
# OSACA-BEGIN
.L19:
	vmovups	0(%r13,%rax), %xmm0
	vmovups	16(%r13,%rax), %xmm3
	vmovups	32(%r13,%rax), %xmm4
	vmovups	48(%r13,%rax), %xmm6
	vmovups	64(%r13,%rax), %xmm9
	vmovups	80(%r13,%rax), %xmm11
	vmovups	96(%r13,%rax), %xmm13
	vmovups	112(%r13,%rax), %xmm15
	vaddpd	(%r12,%rax), %xmm0, %xmm7
	vaddpd	16(%r12,%rax), %xmm3, %xmm2
	vaddpd	32(%r12,%rax), %xmm4, %xmm5
	vaddpd	48(%r12,%rax), %xmm6, %xmm8
	vaddpd	64(%r12,%rax), %xmm9, %xmm10
	vaddpd	80(%r12,%rax), %xmm11, %xmm12
	vaddpd	96(%r12,%rax), %xmm13, %xmm14
	vaddpd	112(%r12,%rax), %xmm15, %xmm1
	vmovups	%xmm7, 0(%rbp,%rax)
	vmovups	%xmm2, 16(%rbp,%rax)
	vmovups	%xmm5, 32(%rbp,%rax)
	vmovups	%xmm8, 48(%rbp,%rax)
	vmovups	%xmm10, 64(%rbp,%rax)
	vmovups	%xmm12, 80(%rbp,%rax)
	vmovups	%xmm14, 96(%rbp,%rax)
	vmovups	%xmm1, 112(%rbp,%rax)
	subq	$-128, %rax
	cmpq	%rbx, %rax
	jne	.L19
# OSACA-END
# LLVM-MCA-END
.L100:
	movq	(%rsp), %rax
	cmpq	%rax, %r15
	je	.L17
.L18:
	salq	$3, %rax
	vmovsd	0(%r13,%rax), %xmm0
	vaddsd	(%r12,%rax), %xmm0, %xmm7
	vmovsd	%xmm7, 0(%rbp,%rax)
.L17:
	incl	%r14d
	cmpl	%r10d, %r14d
	jne	.L21
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdi
	call	timing
	vmovsd	24(%rsp), %xmm3
	leal	(%r14,%r14), %ecx
	vsubsd	16(%rsp), %xmm3, %xmm2
	vmovsd	.LC13(%rip), %xmm4
	vcomisd	%xmm2, %xmm4
	ja	.L22
	sarl	%ecx
	leaq	48(%rsp), %rdi
	movl	$1024, %esi
	vmovsd	%xmm2, (%rsp)
	movl	%ecx, %ebx
	call	gethostname
	leaq	40(%rsp), %rsi
	leaq	48(%rsp), %rdi
	call	getFreq
	vxorps	%xmm5, %xmm5, %xmm5
	vmovsd	(%rsp), %xmm1
	movslq	%ebx, %rdx
	vcvtsi2sdq	40(%rsp), %xmm5, %xmm12
	vmulsd	.LC16(%rip), %xmm12, %xmm13
	vcvtsi2sdq	%r15, %xmm5, %xmm6
	vcvtsi2sdl	%ebx, %xmm5, %xmm8
	vmulsd	%xmm6, %xmm8, %xmm9
	imulq	%r15, %rdx
	movl	%ebx, %esi
	movl	$.LC18, %edi
	movl	$6, %eax
	vmulsd	.LC14(%rip), %xmm9, %xmm10
	vmulsd	.LC15(%rip), %xmm9, %xmm11
	vcvtsi2sdq	%rdx, %xmm5, %xmm15
	movq	%r15, %rdx
	vmulsd	.LC17(%rip), %xmm6, %xmm0
	vmulsd	%xmm1, %xmm13, %xmm14
	vdivsd	%xmm1, %xmm10, %xmm2
	vdivsd	%xmm1, %xmm11, %xmm4
	vmovaps	%xmm2, %xmm5
	vdivsd	%xmm15, %xmm14, %xmm3
	call	printf
	movq	%rbp, %rdi
	call	free
	movq	%r12, %rdi
	call	free
	movq	%r13, %rdi
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
	movl	%r10d, 12(%rsp)
	call	dummy
	movl	12(%rsp), %r10d
	jmp	.L15
.L103:
	vmovups	%xmm1, (%r12)
	vmovups	%xmm0, (%rax)
	movl	$16, %ebx
	jmp	.L77
.L23:
	xorl	%eax, %eax
	jmp	.L12
	.cfi_endproc
.LFE34:
	.size	add, .-add
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"ADD a[i] = b[i] + c[i], 24 byte/it, 1 Flop/it\n"
	.align 8
.LC21:
	.string	"Checking for %s. Frequency *must* be set to %4.2f GHz for valid cy/CL.\n"
	.align 8
.LC22:
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
	movl	$.LC19, %edi
	xorl	%eax, %eax
	call	printf
	vxorps	%xmm3, %xmm3, %xmm3
	leaq	16(%rsp), %rsi
	movl	$.LC21, %edi
	vcvtsi2sdq	8(%rsp), %xmm3, %xmm0
	vmulsd	.LC20(%rip), %xmm0, %xmm0
	movl	$1, %eax
	call	printf
	movl	$.LC22, %edi
	xorl	%eax, %eax
	call	printf
.L106:
	movq	.LC23(%rip), %rax
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
	call	add
	movq	.LC23(%rip), %rsi
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
	call	add
	movq	.LC23(%rip), %r11
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
	call	add
	movq	.LC23(%rip), %rcx
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
	call	add
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
	.long	2696277389
	.long	1051772663
	.align 8
.LC15:
	.long	0
	.long	1056440320
	.align 8
.LC16:
	.long	0
	.long	1075838976
	.align 8
.LC17:
	.long	0
	.long	1065353216
	.align 8
.LC20:
	.long	3894859413
	.long	1041313291
	.align 8
.LC23:
	.long	3435973837
	.long	1073007820
	.ident	"GCC: (GNU) 9.1.0"
	.section	.note.GNU-stack,"",@progbits
