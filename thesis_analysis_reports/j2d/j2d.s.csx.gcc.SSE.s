	.file	"j2d.c"
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
	movsd	.LC1(%rip), %xmm1
	movsd	.LC2(%rip), %xmm0
	call	__pow_finite
	mulsd	.LC7(%rip), %xmm0
	cvttsd2siq	%xmm0, %rax
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
	movsd	.LC1(%rip), %xmm1
	movsd	.LC2(%rip), %xmm0
	movl	%eax, %r12d
	call	__pow_finite
	mulsd	.LC3(%rip), %xmm0
	movl	%r12d, %eax
	cvttsd2siq	%xmm0, %rcx
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
	movsd	.LC1(%rip), %xmm1
	movsd	.LC2(%rip), %xmm0
	call	__pow_finite
	mulsd	.LC5(%rip), %xmm0
	movl	%r12d, %eax
	cvttsd2siq	%xmm0, %rdx
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
.LC18:
	.string	"%12.1f | %11.8f | %9.3f | %7.2f | %7.1f | %7.1f | %6d | %4ld \n"
	.text
	.p2align 4
	.globl	stencil
	.type	stencil, @function
stencil:
.LFB34:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%edi, %eax
	movl	%edi, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	leal	1(%rsi), %ebp
	imull	%ebp, %eax
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movslq	%eax, %r13
	subq	$1144, %rsp
	.cfi_def_cfa_offset 1200
	salq	$3, %r13
	movl	%edi, 72(%rsp)
	movl	%esi, 8(%rsp)
	movl	$64, %edi
	leaq	1(%r13), %rsi
	movsd	%xmm0, 16(%rsp)
	movl	%eax, 76(%rsp)
	call	aligned_alloc
	movq	%r13, %rsi
	movl	$64, %edi
	movq	%rax, %r12
	call	aligned_alloc
	testl	%r15d, %r15d
	movl	8(%rsp), %r9d
	movsd	16(%rsp), %xmm5
	movq	%rax, %r13
	leaq	8(%r12), %rbx
	jle	.L11
	testl	%r9d, %r9d
	jle	.L11
	movl	%r9d, %esi
	movslq	%ebp, %r11
	shrl	%esi
	movl	%r9d, %r14d
	movsd	.LC9(%rip), %xmm1
	movapd	.LC8(%rip), %xmm0
	salq	$3, %r11
	movq	%rbx, %rdi
	salq	$4, %rsi
	andl	$-2, %r14d
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
.L12:
	cmpl	$1, %r9d
	je	.L90
	leaq	-16(%rsi), %rdx
	shrq	$4, %rdx
	incq	%rdx
	leaq	(%rdi,%rsi), %r10
	movq	%rdi, %r15
	andl	$7, %edx
	je	.L13
	cmpq	$1, %rdx
	je	.L64
	cmpq	$2, %rdx
	je	.L65
	cmpq	$3, %rdx
	je	.L66
	cmpq	$4, %rdx
	je	.L67
	cmpq	$5, %rdx
	je	.L68
	cmpq	$6, %rdx
	je	.L69
	movups	%xmm0, (%rdi)
	leaq	16(%rdi), %r15
.L69:
	movups	%xmm0, (%r15)
	addq	$16, %r15
.L68:
	movups	%xmm0, (%r15)
	addq	$16, %r15
.L67:
	movups	%xmm0, (%r15)
	addq	$16, %r15
.L66:
	movups	%xmm0, (%r15)
	addq	$16, %r15
.L65:
	movups	%xmm0, (%r15)
	addq	$16, %r15
.L64:
	movups	%xmm0, (%r15)
	addq	$16, %r15
	cmpq	%r10, %r15
	je	.L84
.L13:
	movups	%xmm0, (%r15)
	movups	%xmm0, 16(%r15)
	movups	%xmm0, 32(%r15)
	movups	%xmm0, 48(%r15)
	movups	%xmm0, 64(%r15)
	movups	%xmm0, 80(%r15)
	movups	%xmm0, 96(%r15)
	movups	%xmm0, 112(%r15)
	subq	$-128, %r15
	cmpq	%r10, %r15
	jne	.L13
.L84:
	movl	%r14d, %eax
	cmpl	%r9d, %r14d
	je	.L14
.L15:
	addl	%ecx, %eax
	cltq
	movsd	%xmm1, (%rbx,%rax,8)
.L14:
	incl	%r8d
	addl	%ebp, %ecx
	addq	%r11, %rdi
	cmpl	%r8d, 72(%rsp)
	jne	.L12
.L11:
	leal	-1(%r9), %eax
	movl	%eax, 64(%rsp)
	cltq
	decq	%rax
	movq	%rax, %rdi
	movq	%rax, %r14
	movq	%rax, 16(%rsp)
	movl	72(%rsp), %ecx
	andq	$-2, %rdi
	orq	$1, %rax
	movq	%rdi, 8(%rsp)
	movq	%rax, 24(%rsp)
	movl	$1, 36(%rsp)
	leal	-1(%rcx), %esi
	shrq	%r14
	movslq	%esi, %r15
	salq	$4, %r14
	movslq	%ebp, %rbp
.L25:
	leaq	96(%rsp), %rsi
	leaq	80(%rsp), %rdi
	movl	%r9d, 48(%rsp)
	movsd	%xmm5, 40(%rsp)
	call	timing
	movsd	40(%rsp), %xmm3
	movl	$0, 32(%rsp)
	movl	48(%rsp), %r9d
	movddup	%xmm3, %xmm2
	.p2align 4,,10
	.p2align 3
.L24:
	pxor	%xmm7, %xmm7
	comisd	8(%r12), %xmm7
	jnb	.L17
	movq	%r13, %rdi
	movl	%r9d, 68(%rsp)
	movaps	%xmm2, 48(%rsp)
	movsd	%xmm3, 40(%rsp)
	call	dummy
	movl	68(%rsp), %r9d
	movapd	48(%rsp), %xmm2
	movsd	40(%rsp), %xmm3
.L17:
	cmpq	$1, %r15
	jle	.L19
	cmpl	$1, 64(%rsp)
	jle	.L19
	movl	$1, %r11d
	.p2align 4,,10
	.p2align 3
.L23:
	movq	%rbp, %rdx
	imulq	%r11, %rdx
	cmpl	$3, %r9d
	je	.L27
	leaq	1(%rdx), %r10
	movq	%r10, %rcx
	subq	%rbp, %rcx
	leaq	1(%r10,%rbp), %rax
	leaq	8(%r12,%rcx,8), %rsi
	leaq	0(%r13,%r10,8), %rcx
	leaq	-16(%r14), %r10
	leaq	(%r12,%rax,8), %rdi
	shrq	$4, %r10
	leaq	24(,%rdx,8), %rax
	movupd	-16(%r12,%rax), %xmm14
	leaq	(%r12,%rax), %r8
	xorl	%eax, %eax
	andl	$3, %r10d
	je	.L21
	movupd	(%r8), %xmm4
	movupd	(%rdi), %xmm5
	movupd	(%rsi), %xmm6
	addpd	%xmm4, %xmm14
	addpd	%xmm6, %xmm5
	movl	$16, %eax
	addpd	%xmm5, %xmm14
	mulpd	%xmm2, %xmm14
	movups	%xmm14, (%rcx)
	movapd	%xmm4, %xmm14
	cmpq	$1, %r10
	je	.L21
	cmpq	$2, %r10
	je	.L70
	movupd	16(%r8), %xmm8
	movupd	16(%rdi), %xmm9
	movupd	16(%rsi), %xmm10
	addpd	%xmm8, %xmm14
	addpd	%xmm10, %xmm9
	movl	$32, %eax
	addpd	%xmm9, %xmm14
	mulpd	%xmm2, %xmm14
	movups	%xmm14, 16(%rcx)
	movapd	%xmm8, %xmm14
.L70:
	movupd	(%r8,%rax), %xmm11
	movupd	(%rdi,%rax), %xmm12
	movupd	(%rsi,%rax), %xmm13
	addpd	%xmm11, %xmm14
	addpd	%xmm13, %xmm12
	addpd	%xmm12, %xmm14
	mulpd	%xmm2, %xmm14
	movups	%xmm14, (%rcx,%rax)
	addq	$16, %rax
	movapd	%xmm11, %xmm14
	jmp	.L21
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
# LLVM-MCA-BEGIN
.L28:
	movupd	16(%r8,%rax), %xmm11
	movupd	16(%rdi,%rax), %xmm12
	movupd	16(%rsi,%rax), %xmm13
	addpd	%xmm11, %xmm15
	addpd	%xmm13, %xmm12
	movupd	32(%rdi,%rax), %xmm14
	movupd	32(%rsi,%rax), %xmm0
	addpd	%xmm15, %xmm12
	movupd	32(%r8,%rax), %xmm15
	addpd	%xmm0, %xmm14
	addpd	%xmm15, %xmm11
	movupd	48(%rdi,%rax), %xmm1
	movupd	48(%rsi,%rax), %xmm7
	addpd	%xmm11, %xmm14
	addpd	%xmm7, %xmm1
	mulpd	%xmm2, %xmm12
	mulpd	%xmm2, %xmm14
	movups	%xmm12, 16(%rcx,%rax)
	movups	%xmm14, 32(%rcx,%rax)
	movupd	48(%r8,%rax), %xmm14
	addpd	%xmm14, %xmm15
	addpd	%xmm15, %xmm1
	mulpd	%xmm2, %xmm1
	movups	%xmm1, 48(%rcx,%rax)
	addq	$64, %rax
.L21:
	movupd	(%r8,%rax), %xmm15
	movupd	(%rdi,%rax), %xmm0
	movupd	(%rsi,%rax), %xmm1
	addpd	%xmm15, %xmm14
	addpd	%xmm1, %xmm0
	leaq	16(%rax), %r10
	addpd	%xmm0, %xmm14
	mulpd	%xmm2, %xmm14
	movups	%xmm14, (%rcx,%rax)
	cmpq	%r10, %r14
	jne	.L28
# LLVM-MCA-END
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movq	16(%rsp), %rsi
	cmpq	%rsi, 8(%rsp)
	je	.L22
	movq	24(%rsp), %r8
.L20:
	addq	%r8, %rdx
	leaq	0(%rbp,%rdx), %rdi
	movsd	(%rbx,%rdi,8), %xmm7
	movsd	8(%rbx,%rdx,8), %xmm4
	movq	%rdx, %r8
	subq	%rbp, %r8
	addsd	(%rbx,%r8,8), %xmm7
	addsd	(%r12,%rdx,8), %xmm4
	addsd	%xmm4, %xmm7
	mulsd	%xmm3, %xmm7
	movsd	%xmm7, 0(%r13,%rdx,8)
.L22:
	incq	%r11
	cmpq	%r15, %r11
	jl	.L23
.L19:
	incl	32(%rsp)
	movl	32(%rsp), %r11d
	cmpl	36(%rsp), %r11d
	jne	.L24
	leaq	96(%rsp), %rsi
	leaq	88(%rsp), %rdi
	movl	%r9d, 40(%rsp)
	movsd	%xmm3, 48(%rsp)
	call	timing
	movsd	88(%rsp), %xmm2
	movl	32(%rsp), %edx
	subsd	80(%rsp), %xmm2
	movsd	.LC11(%rip), %xmm3
	addl	%edx, %edx
	comisd	%xmm2, %xmm3
	movl	%edx, 36(%rsp)
	movl	40(%rsp), %r9d
	movsd	48(%rsp), %xmm5
	ja	.L25
	leaq	112(%rsp), %rdi
	movl	$1024, %esi
	movl	%r9d, 8(%rsp)
	movsd	%xmm2, 16(%rsp)
	movl	%edx, %ebx
	call	gethostname
	leaq	104(%rsp), %rsi
	leaq	112(%rsp), %rdi
	call	getFreq
	pxor	%xmm3, %xmm3
	movl	72(%rsp), %ebp
	movl	8(%rsp), %r15d
	cvtsi2sdq	104(%rsp), %xmm3
	movsd	16(%rsp), %xmm1
	leal	-2(%rbp), %r14d
	movsd	.LC12(%rip), %xmm9
	leal	-2(%r15), %ecx
	imull	%r14d, %ecx
	divsd	%xmm1, %xmm9
	mulsd	.LC15(%rip), %xmm3
	sarl	%ebx
	movslq	%ecx, %rdx
	movslq	%ebx, %rax
	imulq	%rdx, %rax
	mulsd	%xmm1, %xmm3
	pxor	%xmm10, %xmm10
	cvtsi2sdq	%rax, %xmm10
	pxor	%xmm6, %xmm6
	pxor	%xmm8, %xmm8
	cvtsi2sdl	%ecx, %xmm8
	cvtsi2sdl	%ebx, %xmm6
	movl	76(%rsp), %r10d
	movsd	.LC13(%rip), %xmm5
	movsd	.LC14(%rip), %xmm4
	movsd	.LC16(%rip), %xmm2
	subl	%ebp, %r10d
	mulsd	%xmm8, %xmm6
	subl	$4, %r10d
	divsd	%xmm10, %xmm3
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r10d, %xmm0
	movl	%ebx, %esi
	movl	$.LC18, %edi
	movl	$6, %eax
	mulsd	.LC17(%rip), %xmm0
	mulsd	%xmm9, %xmm5
	mulsd	%xmm9, %xmm4
	mulsd	%xmm9, %xmm2
	mulsd	%xmm6, %xmm5
	mulsd	%xmm6, %xmm4
	mulsd	%xmm6, %xmm2
	call	printf
	movq	%r12, %rdi
	call	free
	movq	%r13, %rdi
	call	free
	addq	$1144, %rsp
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
	.p2align 4,,10
	.p2align 3
.L27:
	.cfi_restore_state
	movl	$1, %r8d
	jmp	.L20
.L90:
	xorl	%eax, %eax
	jmp	.L15
	.cfi_endproc
.LFE34:
	.size	stencil, .-stencil
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"2D5PT b[j][i] = c0 * (a[j][i-1] + a[j+1][i] + ...), 32 byte/it, 4 Flop/it\n"
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
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$1024, %esi
	movl	$1248, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	$10016, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$2184, %rsp
	.cfi_def_cfa_offset 2240
	leaq	128(%rsp), %rdi
	call	gethostname
	leaq	88(%rsp), %rsi
	leaq	128(%rsp), %rdi
	call	getFreq
	movl	$.LC19, %edi
	xorl	%eax, %eax
	call	printf
	pxor	%xmm0, %xmm0
	cvtsi2sdq	88(%rsp), %xmm0
	leaq	128(%rsp), %rsi
	movl	$.LC21, %edi
	movl	$1, %eax
	mulsd	.LC20(%rip), %xmm0
	call	printf
	movl	$.LC22, %edi
	xorl	%eax, %eax
	call	printf
	.p2align 4,,10
	.p2align 3
.L102:
	leal	2(%r15), %r12d
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%r12d, %xmm1
	movq	.LC23(%rip), %rax
	leaq	0(%r13,%r13,2), %rbx
	movq	%rax, %xmm0
	movl	%r15d, 68(%rsp)
	movl	%r12d, 64(%rsp)
	call	__pow_finite
	leaq	-23(%rbx), %rsi
	movl	$64, %edi
	call	aligned_alloc
	leaq	-24(%rbx), %rsi
	movl	$64, %edi
	movq	%rax, %r14
	call	aligned_alloc
	movl	%r12d, %esi
	leaq	8(%r14), %rcx
	shrl	%esi
	movapd	.LC8(%rip), %xmm6
	movq	%rax, %rbp
	movq	%rcx, %r9
	leaq	-8(%r13), %r10
	movq	%rcx, %rax
	salq	$4, %rsi
	movl	$3, %edi
	.p2align 4,,10
	.p2align 3
.L92:
	leaq	-16(%rsi), %rdx
	shrq	$4, %rdx
	incq	%rdx
	leaq	(%rsi,%rax), %r8
	movq	%rax, %r11
	andl	$7, %edx
	je	.L93
	cmpq	$1, %rdx
	je	.L140
	cmpq	$2, %rdx
	je	.L141
	cmpq	$3, %rdx
	je	.L142
	cmpq	$4, %rdx
	je	.L143
	cmpq	$5, %rdx
	je	.L144
	cmpq	$6, %rdx
	je	.L145
	movups	%xmm6, (%rax)
	leaq	16(%rax), %r11
.L145:
	movups	%xmm6, (%r11)
	addq	$16, %r11
.L144:
	movups	%xmm6, (%r11)
	addq	$16, %r11
.L143:
	movups	%xmm6, (%r11)
	addq	$16, %r11
.L142:
	movups	%xmm6, (%r11)
	addq	$16, %r11
.L141:
	movups	%xmm6, (%r11)
	addq	$16, %r11
.L140:
	movups	%xmm6, (%r11)
	addq	$16, %r11
	cmpq	%r11, %r8
	je	.L159
.L93:
	movups	%xmm6, (%r11)
	movups	%xmm6, 16(%r11)
	movups	%xmm6, 32(%r11)
	movups	%xmm6, 48(%r11)
	movups	%xmm6, 64(%r11)
	movups	%xmm6, 80(%r11)
	movups	%xmm6, 96(%r11)
	movups	%xmm6, 112(%r11)
	subq	$-128, %r11
	cmpq	%r11, %r8
	jne	.L93
.L159:
	addq	%r10, %rax
	decl	%edi
	jne	.L92
	cmpl	$2, 64(%rsp)
	movl	$1, %ecx
	cmovg	%r15, %rcx
	movl	$1, 12(%rsp)
	movq	%rcx, %r8
	movq	%rcx, %rdx
	shrq	%r8
	movq	%rcx, 56(%rsp)
	salq	$4, %r8
	andq	$-2, %rdx
	orq	$1, %rcx
	movq	%r8, 16(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	leaq	3(%r15), %r12
	leaq	(%r14,%r13,2), %rbx
	leaq	16(%r14,%r13), %r11
	movq	%r12, 32(%rsp)
	movq	%r15, 72(%rsp)
	movq	%r14, %r12
	movq	%r11, %r15
	movq	%rbx, %r14
	movq	%r9, %rbx
	.p2align 4,,10
	.p2align 3
.L101:
	leaq	112(%rsp), %rsi
	leaq	96(%rsp), %rdi
	call	timing
	xorl	%eax, %eax
	movq	%rbp, %rsi
	movl	%eax, %ebp
	.p2align 4,,10
	.p2align 3
.L100:
	pxor	%xmm4, %xmm4
	comisd	8(%r12), %xmm4
	jnb	.L95
	movq	%rsi, %rdi
	movq	%rsi, 24(%rsp)
	call	dummy
	movq	24(%rsp), %rsi
.L95:
	cmpl	$2, 64(%rsp)
	je	.L103
	movq	16(%rsp), %r9
	movupd	(%r12,%r13), %xmm0
	subq	$16, %r9
	shrq	$4, %r9
	leaq	(%rsi,%r13), %rdi
	xorl	%r10d, %r10d
	andl	$3, %r9d
	je	.L98
	movupd	(%r15), %xmm2
	movupd	(%r14), %xmm1
	movupd	16(%r12), %xmm3
	addpd	%xmm2, %xmm0
	addpd	%xmm3, %xmm1
	movl	$16, %r10d
	addpd	%xmm1, %xmm0
	mulpd	.LC24(%rip), %xmm0
	movups	%xmm0, (%rdi)
	movapd	%xmm2, %xmm0
	cmpq	$1, %r9
	je	.L98
	cmpq	$2, %r9
	je	.L146
	movupd	16(%r15), %xmm7
	movupd	16(%r14), %xmm8
	movupd	32(%r12), %xmm5
	addpd	%xmm7, %xmm0
	addpd	%xmm5, %xmm8
	movl	$32, %r10d
	addpd	%xmm8, %xmm0
	mulpd	.LC24(%rip), %xmm0
	movups	%xmm0, 16(%rdi)
	movapd	%xmm7, %xmm0
.L146:
	movupd	(%r15,%r10), %xmm9
	movupd	(%r14,%r10), %xmm10
	movupd	16(%r12,%r10), %xmm11
	addpd	%xmm9, %xmm0
	addpd	%xmm11, %xmm10
	addpd	%xmm10, %xmm0
	mulpd	.LC24(%rip), %xmm0
	movups	%xmm0, (%rdi,%r10)
	addq	$16, %r10
	movapd	%xmm9, %xmm0
.L98:
	movupd	(%r15,%r10), %xmm12
	movupd	(%r14,%r10), %xmm13
	movupd	16(%r12,%r10), %xmm14
	addpd	%xmm12, %xmm0
	addpd	%xmm14, %xmm13
	leaq	16(%r10), %rcx
	addpd	%xmm13, %xmm0
	mulpd	.LC24(%rip), %xmm0
	movups	%xmm0, (%rdi,%r10)
	cmpq	%rcx, 16(%rsp)
	je	.L162
	movupd	16(%r15,%r10), %xmm3
	movupd	16(%r14,%r10), %xmm5
	movupd	16(%r12,%rcx), %xmm9
	addpd	%xmm3, %xmm12
	addpd	%xmm5, %xmm9
	movupd	48(%r12,%r10), %xmm0
	movupd	32(%r14,%r10), %xmm11
	movupd	32(%r15,%r10), %xmm10
	addpd	%xmm12, %xmm9
	addpd	%xmm0, %xmm11
	movupd	48(%r14,%r10), %xmm12
	movupd	48(%r15,%r10), %xmm0
	movupd	64(%r12,%r10), %xmm13
	addpd	%xmm10, %xmm3
	addpd	%xmm13, %xmm12
	addpd	%xmm0, %xmm10
	addpd	%xmm3, %xmm11
	mulpd	.LC24(%rip), %xmm9
	addpd	%xmm10, %xmm12
	mulpd	.LC24(%rip), %xmm11
	mulpd	.LC24(%rip), %xmm12
	movups	%xmm9, 16(%rdi,%r10)
	movups	%xmm11, 32(%rdi,%r10)
	movups	%xmm12, 48(%rdi,%r10)
	addq	$64, %r10
	jmp	.L98
	.p2align 4,,10
	.p2align 3
.L103:
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L97:
	movq	32(%rsp), %rdx
	movsd	(%rbx,%rdi,8), %xmm6
	leaq	(%rdx,%rdi), %r11
	addq	%r11, %rdx
	movsd	(%rbx,%rdx,8), %xmm15
	addsd	(%r12,%r11,8), %xmm6
	addsd	8(%rbx,%r11,8), %xmm15
	addsd	%xmm6, %xmm15
	mulsd	.LC25(%rip), %xmm15
	movsd	%xmm15, (%rsi,%r11,8)
.L99:
	incl	%ebp
	cmpl	%ebp, 12(%rsp)
	jne	.L100
	movq	%rsi, %rbp
	leaq	104(%rsp), %rdi
	leaq	112(%rsp), %rsi
	call	timing
	movsd	104(%rsp), %xmm4
	movsd	.LC11(%rip), %xmm2
	subsd	96(%rsp), %xmm4
	sall	12(%rsp)
	comisd	%xmm4, %xmm2
	ja	.L101
	movq	%r12, %r14
	movl	$1024, %esi
	movl	12(%rsp), %r12d
	leaq	1152(%rsp), %rdi
	movq	72(%rsp), %r15
	movsd	%xmm4, 16(%rsp)
	call	gethostname
	leaq	120(%rsp), %rsi
	leaq	1152(%rsp), %rdi
	call	getFreq
	sarl	%r12d
	pxor	%xmm7, %xmm7
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%r15d, %xmm1
	cvtsi2sdl	%r12d, %xmm7
	pxor	%xmm3, %xmm3
	cvtsi2sdq	120(%rsp), %xmm3
	movsd	.LC12(%rip), %xmm2
	mulsd	%xmm1, %xmm7
	movsd	16(%rsp), %xmm1
	mulsd	.LC15(%rip), %xmm3
	divsd	%xmm1, %xmm2
	movslq	%r12d, %rsi
	imulq	%r15, %rsi
	pxor	%xmm8, %xmm8
	mulsd	%xmm1, %xmm3
	cvtsi2sdq	%rsi, %xmm8
	movsd	.LC13(%rip), %xmm5
	movsd	.LC14(%rip), %xmm4
	movl	68(%rsp), %ebx
	pxor	%xmm0, %xmm0
	leal	2(%rbx,%rbx,2), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	%r15, %rdx
	movl	%r12d, %esi
	movl	$.LC18, %edi
	mulsd	.LC17(%rip), %xmm0
	movl	$6, %eax
	subq	$512, %r13
	subq	$64, %r15
	divsd	%xmm8, %xmm3
	mulsd	%xmm2, %xmm5
	mulsd	%xmm2, %xmm4
	mulsd	.LC16(%rip), %xmm2
	mulsd	%xmm7, %xmm5
	mulsd	%xmm7, %xmm4
	mulsd	%xmm7, %xmm2
	call	printf
	movq	%r14, %rdi
	call	free
	movq	%rbp, %rdi
	call	free
	cmpq	$1312, %r13
	jne	.L102
	addq	$2184, %rsp
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
	xorl	%eax, %eax
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L162:
	.cfi_restore_state
	movq	56(%rsp), %r8
	cmpq	%r8, 48(%rsp)
	je	.L99
	movq	40(%rsp), %rdi
	jmp	.L97
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
	.long	0
	.long	1072693248
	.align 8
.LC13:
	.long	2696277389
	.long	1051772663
	.align 8
.LC14:
	.long	0
	.long	1056964608
	.align 8
.LC15:
	.long	0
	.long	1075838976
	.align 8
.LC16:
	.long	2696277389
	.long	1053869815
	.align 8
.LC17:
	.long	3539053052
	.long	1065378381
	.align 8
.LC20:
	.long	3894859413
	.long	1041313291
	.align 8
.LC23:
	.long	3435973837
	.long	1073007820
	.section	.rodata.cst16
	.align 16
.LC24:
	.long	398572965
	.long	1068847910
	.long	398572965
	.long	1068847910
	.section	.rodata.cst8
	.align 8
.LC25:
	.long	398572965
	.long	1068847910
	.ident	"GCC: (GNU) 9.1.0"
	.section	.note.GNU-stack,"",@progbits
