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
	.globl	stencil
	.type	stencil, @function
stencil:
.LFB34:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%edi, %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%edi, %r15d
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	imull	%ebp, %eax
	subq	$1144, %rsp
	.cfi_def_cfa_offset 1200
	movl	%edi, 72(%rsp)
	movl	%esi, 8(%rsp)
	movl	$64, %edi
	vmovsd	%xmm0, 16(%rsp)
	movslq	%eax, %r13
	movl	%eax, 76(%rsp)
	salq	$3, %r13
	leaq	1(%r13), %rsi
	call	aligned_alloc
	movq	%r13, %rsi
	movl	$64, %edi
	movq	%rax, %r12
	call	aligned_alloc
	testl	%r15d, %r15d
	vmovsd	16(%rsp), %xmm5
	movl	8(%rsp), %r9d
	movq	%rax, %r13
	leaq	8(%r12), %rbx
	jle	.L11
	testl	%r9d, %r9d
	jle	.L11
	vmovsd	.LC9(%rip), %xmm1
	vmovaps	.LC8(%rip), %xmm0
	movl	%r9d, %esi
	movslq	%ebp, %r11
	shrl	%esi
	movl	%r9d, %r14d
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
	leaq	(%rdi,%rsi), %r10
	movq	%rdi, %r15
	shrq	$4, %rdx
	incq	%rdx
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
	vmovups	%xmm0, (%rdi)
	leaq	16(%rdi), %r15
.L69:
	vmovups	%xmm0, (%r15)
	addq	$16, %r15
.L68:
	vmovups	%xmm0, (%r15)
	addq	$16, %r15
.L67:
	vmovups	%xmm0, (%r15)
	addq	$16, %r15
.L66:
	vmovups	%xmm0, (%r15)
	addq	$16, %r15
.L65:
	vmovups	%xmm0, (%r15)
	addq	$16, %r15
.L64:
	vmovups	%xmm0, (%r15)
	addq	$16, %r15
	cmpq	%r10, %r15
	je	.L84
.L13:
	vmovups	%xmm0, (%r15)
	vmovups	%xmm0, 16(%r15)
	subq	$-128, %r15
	vmovups	%xmm0, -96(%r15)
	vmovups	%xmm0, -80(%r15)
	vmovups	%xmm0, -64(%r15)
	vmovups	%xmm0, -48(%r15)
	vmovups	%xmm0, -32(%r15)
	vmovups	%xmm0, -16(%r15)
	cmpq	%r10, %r15
	jne	.L13
.L84:
	movl	%r14d, %eax
	cmpl	%r9d, %r14d
	je	.L14
.L15:
	addl	%ecx, %eax
	cltq
	vmovsd	%xmm1, (%rbx,%rax,8)
.L14:
	incl	%r8d
	addl	%ebp, %ecx
	addq	%r11, %rdi
	cmpl	%r8d, 72(%rsp)
	jne	.L12
.L11:
	leal	-1(%r9), %eax
	movl	72(%rsp), %ecx
	movl	$1, 36(%rsp)
	movslq	%ebp, %rbp
	movl	%eax, 64(%rsp)
	cltq
	decq	%rax
	movq	%rax, %r14
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)
	orq	$1, %rax
	leal	-1(%rcx), %esi
	shrq	%r14
	andq	$-2, %rdi
	movq	%rax, 24(%rsp)
	movslq	%esi, %r15
	salq	$4, %r14
	movq	%rdi, 8(%rsp)
.L25:
	leaq	96(%rsp), %rsi
	leaq	80(%rsp), %rdi
	movl	%r9d, 48(%rsp)
	vmovsd	%xmm5, 40(%rsp)
	call	timing
	vmovsd	40(%rsp), %xmm3
	movl	$0, 32(%rsp)
	movl	48(%rsp), %r9d
	vmovddup	%xmm3, %xmm2
	.p2align 4
	.p2align 3
.L24:
	vxorpd	%xmm6, %xmm6, %xmm6
	vcomisd	8(%r12), %xmm6
	jnb	.L17
	movq	%r13, %rdi
	movl	%r9d, 68(%rsp)
	vmovaps	%xmm2, 48(%rsp)
	vmovsd	%xmm3, 40(%rsp)
	call	dummy
	vmovaps	48(%rsp), %xmm2
	vmovsd	40(%rsp), %xmm3
	movl	68(%rsp), %r9d
.L17:
	cmpq	$1, %r15
	jle	.L19
	cmpl	$1, 64(%rsp)
	jle	.L19
	movl	$1, %r11d
	.p2align 4
	.p2align 3
.L23:
	movq	%rbp, %rdx
	imulq	%r11, %rdx
	cmpl	$3, %r9d
	je	.L27
	leaq	1(%rdx), %rcx
	leaq	24(,%rdx,8), %rax
	leaq	1(%rcx,%rbp), %rsi
	movq	%rcx, %r10
	vmovups	-16(%r12,%rax), %xmm5
	leaq	(%r12,%rsi,8), %rdi
	leaq	0(%r13,%rcx,8), %rsi
	leaq	-16(%r14), %rcx
	subq	%rbp, %r10
	shrq	$4, %rcx
	leaq	8(%r12,%r10,8), %r8
	leaq	(%r12,%rax), %r10
	xorl	%eax, %eax
	andl	$3, %ecx
	je	.L21
	vmovups	(%rdi), %xmm7
	vaddpd	(%r10), %xmm5, %xmm5
	movl	$16, %eax
	vaddpd	(%r8), %xmm7, %xmm4
	vaddpd	%xmm5, %xmm4, %xmm8
	vmovups	(%r10), %xmm5
	vmulpd	%xmm2, %xmm8, %xmm9
	vmovups	%xmm9, (%rsi)
	cmpq	$1, %rcx
	je	.L21
	cmpq	$2, %rcx
	je	.L70
	vmovups	16(%rdi), %xmm10
	vaddpd	16(%r10), %xmm5, %xmm12
	movl	$32, %eax
	vaddpd	16(%r8), %xmm10, %xmm11
	vmovups	16(%r10), %xmm5
	vaddpd	%xmm12, %xmm11, %xmm13
	vmulpd	%xmm2, %xmm13, %xmm14
	vmovups	%xmm14, 16(%rsi)
.L70:
	vmovups	(%r10,%rax), %xmm15
	vmovups	(%rdi,%rax), %xmm1
	vaddpd	(%r8,%rax), %xmm1, %xmm6
	vaddpd	%xmm15, %xmm5, %xmm0
	vmovaps	%xmm15, %xmm5
	vaddpd	%xmm0, %xmm6, %xmm7
	vmulpd	%xmm2, %xmm7, %xmm4
	vmovups	%xmm4, (%rsi,%rax)
	addq	$16, %rax
	jmp	.L21
	.p2align 4
	.p2align 3
    # LLVM-MCA-BEGIN
    # OSACA-BEGIN
.L28:
	vmovups	(%r10,%rcx), %xmm5
	vmovups	32(%r10,%rax), %xmm13
	vmovups	(%rdi,%rcx), %xmm1
	vmovups	32(%rdi,%rax), %xmm14
	vmovups	48(%rdi,%rax), %xmm9
	vaddpd	(%r8,%rcx), %xmm1, %xmm10
	vaddpd	32(%r8,%rax), %xmm14, %xmm15
	vaddpd	48(%r8,%rax), %xmm9, %xmm1
	vaddpd	%xmm5, %xmm8, %xmm8
	vaddpd	%xmm13, %xmm5, %xmm6
	vmovups	48(%r10,%rax), %xmm5
	vaddpd	%xmm8, %xmm10, %xmm11
	vaddpd	%xmm6, %xmm15, %xmm0
	vmulpd	%xmm2, %xmm11, %xmm12
	vaddpd	%xmm5, %xmm13, %xmm4
	vmulpd	%xmm2, %xmm0, %xmm7
	vaddpd	%xmm4, %xmm1, %xmm10
	vmovups	%xmm12, (%rsi,%rcx)
	vmovups	%xmm7, 32(%rsi,%rax)
	vmulpd	%xmm2, %xmm10, %xmm8
	vmovups	%xmm8, 48(%rsi,%rax)
	addq	$64, %rax
.L21:
	vmovups	(%r10,%rax), %xmm8
	leaq	16(%rax), %rcx
	vmovups	(%rdi,%rax), %xmm9
	vaddpd	(%r8,%rax), %xmm9, %xmm10
	vaddpd	%xmm8, %xmm5, %xmm11
	vaddpd	%xmm11, %xmm10, %xmm12
	vmulpd	%xmm2, %xmm12, %xmm13
	vmovups	%xmm13, (%rsi,%rax)
	cmpq	%rcx, %r14
	jne	.L28
    # OSACA-END
    # LLVM-MCA-END
	movq	16(%rsp), %rdi
	cmpq	%rdi, 8(%rsp)
	je	.L22
	movq	24(%rsp), %r8
.L20:
	addq	%r8, %rdx
	leaq	0(,%rdx,8), %r8
	leaq	0(%rbp,%rdx), %r10
	subq	%rbp, %rdx
	vmovsd	(%rbx,%r10,8), %xmm14
	vmovsd	8(%rbx,%r8), %xmm1
	vaddsd	(%rbx,%rdx,8), %xmm14, %xmm15
	vaddsd	(%r12,%r8), %xmm1, %xmm6
	vaddsd	%xmm6, %xmm15, %xmm0
	vmulsd	%xmm3, %xmm0, %xmm7
	vmovsd	%xmm7, 0(%r13,%r8)
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
	vmovsd	%xmm3, 48(%rsp)
	movl	%r9d, 40(%rsp)
	call	timing
	vmovsd	88(%rsp), %xmm2
	vsubsd	80(%rsp), %xmm2, %xmm4
	vmovsd	.LC11(%rip), %xmm3
	movl	32(%rsp), %edx
	vmovsd	48(%rsp), %xmm5
	movl	40(%rsp), %r9d
	addl	%edx, %edx
	movl	%edx, 36(%rsp)
	vcomisd	%xmm4, %xmm3
	ja	.L25
	leaq	112(%rsp), %rdi
	movl	$1024, %esi
	movl	%r9d, 8(%rsp)
	vmovsd	%xmm4, 16(%rsp)
	movl	%edx, %ebx
	call	gethostname
	leaq	104(%rsp), %rsi
	leaq	112(%rsp), %rdi
	sarl	%ebx
	call	getFreq
	vxorps	%xmm8, %xmm8, %xmm8
	vmovsd	16(%rsp), %xmm1
	movslq	%ebx, %rax
	vmovsd	.LC12(%rip), %xmm12
	vcvtsi2sdq	104(%rsp), %xmm8, %xmm6
	vmulsd	.LC15(%rip), %xmm6, %xmm0
	vcvtsi2sdl	%ebx, %xmm8, %xmm3
	movl	72(%rsp), %ebp
	movl	8(%rsp), %r15d
	movl	$.LC18, %edi
	movl	76(%rsp), %ecx
	leal	-2(%rbp), %r14d
	leal	-2(%r15), %esi
	imull	%r14d, %esi
	subl	%ebp, %ecx
	subl	$4, %ecx
	vdivsd	%xmm1, %xmm12, %xmm13
	vcvtsi2sdl	%ecx, %xmm8, %xmm4
	movslq	%esi, %rdx
	vcvtsi2sdl	%esi, %xmm8, %xmm10
	vmulsd	%xmm10, %xmm3, %xmm11
	movl	%ebx, %esi
	imulq	%rdx, %rax
	vmulsd	%xmm1, %xmm0, %xmm7
	vmulsd	.LC17(%rip), %xmm4, %xmm0
	vcvtsi2sdq	%rax, %xmm8, %xmm2
	movl	$6, %eax
	vmulsd	.LC13(%rip), %xmm13, %xmm14
	vmulsd	.LC14(%rip), %xmm13, %xmm15
	vmulsd	.LC16(%rip), %xmm13, %xmm9
	vdivsd	%xmm2, %xmm7, %xmm3
	vmulsd	%xmm11, %xmm14, %xmm5
	vmulsd	%xmm11, %xmm15, %xmm4
	vmulsd	%xmm11, %xmm9, %xmm2
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
	.p2align 4
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
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	$1024, %esi
	movl	$1248, %r15d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	$10008, %r13d
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
	vxorps	%xmm4, %xmm4, %xmm4
	leaq	128(%rsp), %rsi
	movl	$.LC21, %edi
	vcvtsi2sdq	88(%rsp), %xmm4, %xmm0
	vmulsd	.LC20(%rip), %xmm0, %xmm0
	movl	$1, %eax
	call	printf
	movl	$.LC22, %edi
	xorl	%eax, %eax
	call	printf
	.p2align 4
	.p2align 3
.L102:
	movq	.LC23(%rip), %rax
	vxorps	%xmm7, %xmm7, %xmm7
	leal	2(%r15), %ebx
	leaq	0(%r13,%r13,2), %rbp
	vcvtsi2sdl	%ebx, %xmm7, %xmm1
	movl	%r15d, 68(%rsp)
	movl	%ebx, 64(%rsp)
	vmovq	%rax, %xmm0
	call	__pow_finite
	leaq	1(%rbp), %rsi
	movl	$64, %edi
	call	aligned_alloc
	movq	%rbp, %rsi
	movl	$64, %edi
	movq	%rax, %r14
	call	aligned_alloc
	vmovaps	.LC8(%rip), %xmm6
	movl	%ebx, %esi
	leaq	8(%r14), %rcx
	shrl	%esi
	movq	%rax, %rbp
	movq	%rcx, 24(%rsp)
	movq	%rcx, %r10
	salq	$4, %rsi
	movl	$3, %edi
	.p2align 4
	.p2align 3
.L92:
	leaq	-16(%rsi), %rdx
	leaq	(%rsi,%r10), %r8
	movq	%r10, %r9
	shrq	$4, %rdx
	incq	%rdx
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
	vmovups	%xmm6, (%r10)
	leaq	16(%r10), %r9
.L145:
	vmovups	%xmm6, (%r9)
	addq	$16, %r9
.L144:
	vmovups	%xmm6, (%r9)
	addq	$16, %r9
.L143:
	vmovups	%xmm6, (%r9)
	addq	$16, %r9
.L142:
	vmovups	%xmm6, (%r9)
	addq	$16, %r9
.L141:
	vmovups	%xmm6, (%r9)
	addq	$16, %r9
.L140:
	vmovups	%xmm6, (%r9)
	addq	$16, %r9
	cmpq	%r9, %r8
	je	.L159
.L93:
	vmovups	%xmm6, (%r9)
	vmovups	%xmm6, 16(%r9)
	subq	$-128, %r9
	vmovups	%xmm6, -96(%r9)
	vmovups	%xmm6, -80(%r9)
	vmovups	%xmm6, -64(%r9)
	vmovups	%xmm6, -48(%r9)
	vmovups	%xmm6, -32(%r9)
	vmovups	%xmm6, -16(%r9)
	cmpq	%r9, %r8
	jne	.L93
.L159:
	addq	%r13, %r10
	decl	%edi
	jne	.L92
	cmpl	$2, 64(%rsp)
	movl	$1, %ebx
	leaq	16(%r14,%r13,2), %r12
	leaq	3(%r15), %r11
	movq	%r15, 72(%rsp)
	movq	%r11, 32(%rsp)
	movl	$1, 12(%rsp)
	cmovg	%r15, %rbx
	movq	%r12, %r15
	movq	%r14, %r12
	movq	%rbx, %rax
	movq	%rbx, %rcx
	movq	%rbx, 56(%rsp)
	orq	$1, %rbx
	shrq	%rax
	andq	$-2, %rcx
	movq	%rbx, 40(%rsp)
	leaq	24(%r14,%r13), %rbx
	salq	$4, %rax
	movq	%rcx, 48(%rsp)
	movq	%r15, %r14
	movq	%rax, 16(%rsp)
	.p2align 4
	.p2align 3
.L101:
	leaq	112(%rsp), %rsi
	leaq	96(%rsp), %rdi
	movq	%rbp, %r15
	call	timing
	xorl	%eax, %eax
	movl	%eax, %ebp
	.p2align 4
	.p2align 3
.L100:
	vxorpd	%xmm1, %xmm1, %xmm1
	vcomisd	8(%r12), %xmm1
	jnb	.L95
	movq	%r15, %rdi
	call	dummy
.L95:
	cmpl	$2, 64(%rsp)
	je	.L103
	movq	16(%rsp), %r9
	xorl	%r10d, %r10d
	vmovups	8(%r12,%r13), %xmm8
	leaq	8(%r15,%r13), %rdi
	subq	$16, %r9
	shrq	$4, %r9
	andl	$3, %r9d
	je	.L98
	vmovups	(%r14), %xmm2
	vaddpd	(%rbx), %xmm8, %xmm5
	movl	$16, %r10d
	vaddpd	16(%r12), %xmm2, %xmm3
	vaddpd	%xmm5, %xmm3, %xmm8
	vmulpd	.LC24(%rip), %xmm8, %xmm9
	vmovups	(%rbx), %xmm8
	vmovups	%xmm9, (%rdi)
	cmpq	$1, %r9
	je	.L98
	cmpq	$2, %r9
	je	.L146
	vmovups	16(%r14), %xmm10
	vaddpd	16(%rbx), %xmm8, %xmm12
	movl	$32, %r10d
	vaddpd	32(%r12), %xmm10, %xmm11
	vmovups	16(%rbx), %xmm8
	vaddpd	%xmm12, %xmm11, %xmm13
	vmulpd	.LC24(%rip), %xmm13, %xmm14
	vmovups	%xmm14, 16(%rdi)
.L146:
	vmovups	(%rbx,%r10), %xmm15
	vmovups	(%r14,%r10), %xmm4
	vaddpd	16(%r12,%r10), %xmm4, %xmm7
	vaddpd	%xmm15, %xmm8, %xmm0
	vmovaps	%xmm15, %xmm8
	vaddpd	%xmm0, %xmm7, %xmm6
	vmulpd	.LC24(%rip), %xmm6, %xmm1
	vmovups	%xmm1, (%rdi,%r10)
	addq	$16, %r10
.L98:
	vmovups	(%rbx,%r10), %xmm2
	leaq	16(%r10), %rsi
	vmovups	(%r14,%r10), %xmm3
	vaddpd	16(%r12,%r10), %xmm3, %xmm5
	vaddpd	%xmm2, %xmm8, %xmm9
	vaddpd	%xmm9, %xmm5, %xmm10
	vmulpd	.LC24(%rip), %xmm10, %xmm11
	vmovups	%xmm11, (%rdi,%r10)
	cmpq	%rsi, 16(%rsp)
	je	.L162
	vmovups	(%rbx,%rsi), %xmm9
	vmovups	(%r14,%rsi), %xmm0
	vmovups	32(%rbx,%r10), %xmm11
	vaddpd	16(%r12,%rsi), %xmm0, %xmm1
	vmovups	32(%r14,%r10), %xmm3
	vmovups	48(%r14,%r10), %xmm15
	vaddpd	48(%r12,%r10), %xmm3, %xmm5
	vaddpd	64(%r12,%r10), %xmm15, %xmm7
	vaddpd	%xmm9, %xmm2, %xmm8
	vaddpd	%xmm11, %xmm9, %xmm12
	vaddpd	%xmm8, %xmm1, %xmm2
	vmovups	48(%rbx,%r10), %xmm8
	vmulpd	.LC24(%rip), %xmm2, %xmm10
	vaddpd	%xmm12, %xmm5, %xmm13
	vmulpd	.LC24(%rip), %xmm13, %xmm14
	vaddpd	%xmm8, %xmm11, %xmm6
	vaddpd	%xmm6, %xmm7, %xmm4
	vmulpd	.LC24(%rip), %xmm4, %xmm9
	vmovups	%xmm10, (%rdi,%rsi)
	vmovups	%xmm14, 32(%rdi,%r10)
	vmovups	%xmm9, 48(%rdi,%r10)
	addq	$64, %r10
	jmp	.L98
	.p2align 4
	.p2align 3
.L103:
	movl	$1, %edx
	.p2align 4
	.p2align 3
.L97:
	movq	32(%rsp), %r11
	movq	24(%rsp), %r8
	leaq	(%r11,%rdx), %rax
	vmovsd	(%r8,%rdx,8), %xmm14
	leaq	(%r11,%rax), %rcx
	vaddsd	(%r12,%rax,8), %xmm14, %xmm15
	vmovsd	(%r8,%rcx,8), %xmm12
	vaddsd	8(%r8,%rax,8), %xmm12, %xmm13
	vaddsd	%xmm15, %xmm13, %xmm4
	vmulsd	.LC25(%rip), %xmm4, %xmm7
	vmovsd	%xmm7, (%r15,%rax,8)
.L99:
	incl	%ebp
	cmpl	%ebp, 12(%rsp)
	jne	.L100
	leaq	112(%rsp), %rsi
	leaq	104(%rsp), %rdi
	movq	%r15, %rbp
	call	timing
	vmovsd	104(%rsp), %xmm0
	vsubsd	96(%rsp), %xmm0, %xmm6
	vmovsd	.LC11(%rip), %xmm1
	sall	12(%rsp)
	vcomisd	%xmm6, %xmm1
	ja	.L101
	movl	$1024, %esi
	leaq	1152(%rsp), %rdi
	movq	72(%rsp), %r15
	vmovsd	%xmm6, 16(%rsp)
	movl	12(%rsp), %ebx
	movq	%r12, %r14
	subq	$512, %r13
	call	gethostname
	leaq	120(%rsp), %rsi
	leaq	1152(%rsp), %rdi
	call	getFreq
	vxorps	%xmm9, %xmm9, %xmm9
	vmovsd	16(%rsp), %xmm1
	movl	$.LC18, %edi
	vmovsd	.LC12(%rip), %xmm3
	vcvtsi2sdq	120(%rsp), %xmm9, %xmm13
	vmulsd	.LC15(%rip), %xmm13, %xmm14
	vcvtsi2sdl	%r15d, %xmm9, %xmm2
	sarl	%ebx
	movl	68(%rsp), %edx
	movl	$6, %eax
	movslq	%ebx, %r12
	vcvtsi2sdl	%ebx, %xmm9, %xmm8
	vmulsd	%xmm2, %xmm8, %xmm10
	movl	%ebx, %esi
	imulq	%r15, %r12
	leal	2(%rdx,%rdx,2), %r9d
	movq	%r15, %rdx
	subq	$64, %r15
	vcvtsi2sdq	%r12, %xmm9, %xmm7
	vcvtsi2sdl	%r9d, %xmm9, %xmm4
	vmulsd	.LC17(%rip), %xmm4, %xmm0
	vdivsd	%xmm1, %xmm3, %xmm11
	vmulsd	%xmm1, %xmm14, %xmm15
	vmulsd	.LC13(%rip), %xmm11, %xmm5
	vmulsd	.LC14(%rip), %xmm11, %xmm12
	vmulsd	.LC16(%rip), %xmm11, %xmm6
	vdivsd	%xmm7, %xmm15, %xmm3
	vmulsd	%xmm10, %xmm5, %xmm5
	vmulsd	%xmm10, %xmm12, %xmm4
	vmulsd	%xmm10, %xmm6, %xmm2
	call	printf
	movq	%r14, %rdi
	call	free
	movq	%rbp, %rdi
	call	free
	cmpq	$160, %r15
	jne	.L102
	addq	$2184, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
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
.L162:
	.cfi_restore_state
	movq	56(%rsp), %rdi
	cmpq	%rdi, 48(%rsp)
	je	.L99
	movq	40(%rsp), %rdx
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
