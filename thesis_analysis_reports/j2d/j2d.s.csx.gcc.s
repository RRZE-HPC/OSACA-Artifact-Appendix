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
.LC18:
	.string	"%12.1f | %11.8f | %9.3f | %7.2f | %7.1f | %7.1f | %6d | %4ld \n"
	.text
	.p2align 4
	.globl	stencil
	.type	stencil, @function
stencil:
.LFB34:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	movl	%edi, %eax
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	movl	%edi, %r15d
	pushq	%r14
	pushq	%r13
	pushq	%r12
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	leal	1(%rsi), %r12d
	imull	%r12d, %eax
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	movslq	%eax, %r14
	pushq	%rbx
	salq	$3, %r14
	subq	$1152, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movl	%edi, -1192(%rbp)
	movl	%esi, -1188(%rbp)
	movl	$64, %edi
	leaq	1(%r14), %rsi
	vmovsd	%xmm0, -1112(%rbp)
	movl	%eax, -1196(%rbp)
	call	aligned_alloc
	movq	%r14, %rsi
	movl	$64, %edi
	movq	%rax, %r13
	call	aligned_alloc
	testl	%r15d, %r15d
	vmovsd	-1112(%rbp), %xmm10
	movq	%rax, %r14
	leaq	8(%r13), %rbx
	jle	.L106
	movl	-1188(%rbp), %edx
	testl	%edx, %edx
	jle	.L106
	movl	-1188(%rbp), %r11d
	movslq	%r12d, %r15
	movl	%r11d, %ecx
	shrl	$2, %ecx
	vmovsd	.LC9(%rip), %xmm1
	vmovapd	.LC8(%rip), %ymm0
	leal	-1(%r11), %r8d
	salq	$3, %r15
	movq	%rbx, %rsi
	salq	$5, %rcx
	andl	$-4, %r11d
	xorl	%edi, %edi
	xorl	%r9d, %r9d
.L12:
	cmpl	$2, %r8d
	jbe	.L107
	leaq	-32(%rcx), %rdx
	shrq	$5, %rdx
	incq	%rdx
	leaq	(%rsi,%rcx), %r10
	movq	%rsi, %rax
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
	je	.L77
	vmovupd	%ymm0, (%rsi)
	leaq	32(%rsi), %rax
.L77:
	vmovupd	%ymm0, (%rax)
	addq	$32, %rax
.L76:
	vmovupd	%ymm0, (%rax)
	addq	$32, %rax
.L75:
	vmovupd	%ymm0, (%rax)
	addq	$32, %rax
.L74:
	vmovupd	%ymm0, (%rax)
	addq	$32, %rax
.L73:
	vmovupd	%ymm0, (%rax)
	addq	$32, %rax
.L72:
	vmovupd	%ymm0, (%rax)
	addq	$32, %rax
	cmpq	%r10, %rax
	je	.L98
.L13:
	vmovupd	%ymm0, (%rax)
	vmovupd	%ymm0, 32(%rax)
	vmovupd	%ymm0, 64(%rax)
	vmovupd	%ymm0, 96(%rax)
	vmovupd	%ymm0, 128(%rax)
	vmovupd	%ymm0, 160(%rax)
	vmovupd	%ymm0, 192(%rax)
	vmovupd	%ymm0, 224(%rax)
	addq	$256, %rax
	cmpq	%r10, %rax
	jne	.L13
.L98:
	movl	%r11d, %eax
	cmpl	%r11d, -1188(%rbp)
	je	.L14
.L15:
	leal	(%rdi,%rax), %r10d
	movslq	%r10d, %rdx
	movl	-1188(%rbp), %r10d
	vmovsd	%xmm1, (%rbx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r10d
	jle	.L14
	addl	%edi, %edx
	movslq	%edx, %rdx
	addl	$2, %eax
	vmovsd	%xmm1, (%rbx,%rdx,8)
	cmpl	%eax, %r10d
	jle	.L14
	addl	%edi, %eax
	cltq
	vmovsd	%xmm1, (%rbx,%rax,8)
.L14:
	incl	%r9d
	addl	%r12d, %edi
	addq	%r15, %rsi
	cmpl	%r9d, -1192(%rbp)
	jne	.L12
	vzeroupper
.L11:
	movslq	%r8d, %rcx
	movl	-1192(%rbp), %eax
	leaq	-1(%rcx), %rsi
	movq	%rsi, %r15
	movq	%rsi, -1112(%rbp)
	decl	%eax
	andq	$-4, %rsi
	movq	%rcx, -1120(%rbp)
	cltq
	subq	$2, %rcx
	leaq	1(%rsi), %rdi
	movq	%rax, -1128(%rbp)
	movq	%rcx, -1136(%rbp)
	movq	%rsi, -1144(%rbp)
	movq	%rdi, -1152(%rbp)
	movl	$1, -1160(%rbp)
	shrq	$2, %r15
	salq	$5, %r15
	movslq	%r12d, %r12
	vmovddup	%xmm10, %xmm11
.L26:
	leaq	-1088(%rbp), %rsi
	leaq	-1104(%rbp), %rdi
	vmovaps	%xmm11, -1184(%rbp)
	vmovsd	%xmm10, -1168(%rbp)
	call	timing
	movl	$0, -1156(%rbp)
	vmovapd	-1184(%rbp), %xmm4
	vmovsd	-1168(%rbp), %xmm3
	.p2align 4,,10
	.p2align 3
.L25:
	vxorpd	%xmm2, %xmm2, %xmm2
	vcomisd	8(%r13), %xmm2
	jnb	.L17
	movq	%r14, %rdi
	vmovaps	%xmm4, -1184(%rbp)
	vmovsd	%xmm3, -1168(%rbp)
	vzeroupper
	call	dummy
	vmovapd	-1184(%rbp), %xmm4
	vmovsd	-1168(%rbp), %xmm3
.L17:
	cmpq	$1, -1128(%rbp)
	jle	.L19
	cmpq	$1, -1120(%rbp)
	jle	.L19
	movl	$1, %r11d
	vbroadcastsd	%xmm3, %ymm8
	.p2align 4,,10
	.p2align 3
.L24:
	movq	%r12, %r10
	imulq	%r11, %r10
	cmpq	$2, -1136(%rbp)
	jbe	.L28
	leaq	1(%r10), %rsi
	leaq	1(%rsi,%r12), %rcx
	leaq	0(%r13,%rcx,8), %rdi
	leaq	-32(%r15), %rcx
	movq	%rsi, %r8
	shrq	$5, %rcx
	leaq	0(,%rsi,8), %rdx
	subq	%r12, %r8
	incq	%rcx
	leaq	0(%r13,%rdx), %r9
	leaq	8(%r13,%r8,8), %r8
	leaq	24(%r13,%r10,8), %rsi
	addq	%r14, %rdx
	xorl	%eax, %eax
	andl	$3, %ecx
	je	.L21
	cmpq	$1, %rcx
	je	.L78
	cmpq	$2, %rcx
	je	.L79
	vmovupd	(%r8), %ymm7
	vmovupd	(%rsi), %ymm6
	vaddpd	(%r9), %ymm7, %ymm5
	vaddpd	(%rdi), %ymm6, %ymm9
	movl	$32, %eax
	vaddpd	%ymm9, %ymm5, %ymm10
	vmulpd	%ymm8, %ymm10, %ymm11
	vmovupd	%ymm11, (%rdx)
.L79:
	vmovupd	(%r8,%rax), %ymm12
	vmovupd	(%rsi,%rax), %ymm14
	vaddpd	(%r9,%rax), %ymm12, %ymm13
	vaddpd	(%rdi,%rax), %ymm14, %ymm15
	vaddpd	%ymm15, %ymm13, %ymm0
	vmulpd	%ymm8, %ymm0, %ymm1
	vmovupd	%ymm1, (%rdx,%rax)
	addq	$32, %rax
.L78:
	vmovupd	(%r8,%rax), %ymm2
	vmovupd	(%rsi,%rax), %ymm7
	vaddpd	(%r9,%rax), %ymm2, %ymm5
	vaddpd	(%rdi,%rax), %ymm7, %ymm6
	vaddpd	%ymm6, %ymm5, %ymm9
	vmulpd	%ymm8, %ymm9, %ymm10
	vmovupd	%ymm10, (%rdx,%rax)
	addq	$32, %rax
	cmpq	%rax, %r15
	je	.L97
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
# LLVM-MCA-BEGIN
.L21:
	vmovupd	(%r8,%rax), %ymm11
	vmovupd	(%rsi,%rax), %ymm13
	vaddpd	(%r9,%rax), %ymm11, %ymm12
	vaddpd	(%rdi,%rax), %ymm13, %ymm14
	vmovupd	32(%r8,%rax), %ymm1
	vmovupd	32(%rsi,%rax), %ymm2
	vaddpd	%ymm14, %ymm12, %ymm15
	vaddpd	32(%r9,%rax), %ymm1, %ymm5
	vaddpd	32(%rdi,%rax), %ymm2, %ymm7
	vmulpd	%ymm8, %ymm15, %ymm0
	vmovupd	64(%r8,%rax), %ymm10
	vaddpd	%ymm7, %ymm5, %ymm6
	vmovupd	64(%rsi,%rax), %ymm12
	vmovupd	96(%rsi,%rax), %ymm5
	vmovupd	%ymm0, (%rdx,%rax)
	vmovupd	96(%r8,%rax), %ymm0
	vaddpd	64(%r9,%rax), %ymm10, %ymm11
	vaddpd	64(%rdi,%rax), %ymm12, %ymm13
	vaddpd	96(%r9,%rax), %ymm0, %ymm1
	vaddpd	96(%rdi,%rax), %ymm5, %ymm2
	vaddpd	%ymm13, %ymm11, %ymm14
	vmulpd	%ymm8, %ymm6, %ymm9
	vaddpd	%ymm2, %ymm1, %ymm7
	vmulpd	%ymm8, %ymm14, %ymm15
	vmulpd	%ymm8, %ymm7, %ymm6
	vmovupd	%ymm9, 32(%rdx,%rax)
	vmovupd	%ymm15, 64(%rdx,%rax)
	vmovupd	%ymm6, 96(%rdx,%rax)
	subq	$-128, %rax
	cmpq	%rax, %r15
	jne	.L21
# LLVM-MCA-END
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L97:
	movq	-1112(%rbp), %rdx
	cmpq	%rdx, -1144(%rbp)
	je	.L22
	movq	-1152(%rbp), %rax
	movq	%rdx, %r9
.L20:
	leaq	(%r10,%rax), %rdx
	leaq	0(,%rdx,8), %r8
	leaq	1(%rax), %rdi
	leaq	0(%r13,%r8), %rsi
	cmpq	%rdi, %r9
	jle	.L29
	cmpq	%rax, -1120(%rbp)
	jle	.L29
	leaq	8(%rbx,%r8), %rcx
	leaq	1(%r10,%rdi), %r8
	vmovsd	(%rbx,%r8,8), %xmm10
	movq	%rdx, %r8
	subq	%r12, %r8
	vmovupd	(%rsi), %xmm13
	vmovupd	(%rbx,%r8,8), %xmm11
	leaq	(%r12,%rdx), %rdi
	vaddpd	(%rcx), %xmm13, %xmm14
	vaddpd	(%rbx,%rdi,8), %xmm11, %xmm12
	leaq	3(%rax), %rsi
	vmovsd	(%rcx), %xmm9
	vaddpd	%xmm14, %xmm12, %xmm15
	leaq	2(%rax), %rcx
	vmulpd	%xmm4, %xmm15, %xmm0
	vmovups	%xmm0, (%r14,%rdx,8)
	cmpq	%rsi, %r9
	jle	.L23
	addq	%r10, %rcx
	leaq	8(%rbx,%rcx,8), %rdi
	movq	%rcx, %r8
	vmovupd	(%rdi), %xmm5
	vunpcklpd	%xmm10, %xmm9, %xmm6
	vmovsd	32(%rbx,%rdx,8), %xmm2
	subq	%r12, %r8
	leaq	(%r12,%rcx), %rdx
	vaddpd	(%rbx,%rdx,8), %xmm5, %xmm7
	vaddpd	(%rbx,%r8,8), %xmm6, %xmm9
	leaq	5(%rax), %rsi
	vmovsd	(%rdi), %xmm1
	vaddpd	%xmm9, %xmm7, %xmm10
	vmulpd	%xmm4, %xmm10, %xmm11
	vmovups	%xmm11, (%r14,%rcx,8)
	leaq	4(%rax), %rcx
	cmpq	%rsi, %r9
	jle	.L23
	addq	%r10, %rcx
	leaq	(%r12,%rcx), %r9
	movq	%rcx, %rdi
	vmovupd	(%rbx,%r9,8), %xmm12
	vunpcklpd	%xmm2, %xmm1, %xmm14
	subq	%r12, %rdi
	vaddpd	8(%rbx,%rcx,8), %xmm12, %xmm13
	vaddpd	(%rbx,%rdi,8), %xmm14, %xmm15
	vaddpd	%xmm15, %xmm13, %xmm0
	vmulpd	%xmm4, %xmm0, %xmm1
	vmovups	%xmm1, (%r14,%rcx,8)
	leaq	6(%rax), %rcx
.L23:
	leaq	(%r10,%rcx), %rax
	movq	%rax, %r8
	subq	%r12, %r8
	vmovsd	(%rbx,%r8,8), %xmm2
	vmovsd	8(%rbx,%rax,8), %xmm7
	leaq	(%r12,%rax), %rdx
	vaddsd	(%rbx,%rdx,8), %xmm2, %xmm5
	vaddsd	0(%r13,%rax,8), %xmm7, %xmm6
	movq	-1120(%rbp), %rdi
	leaq	1(%rcx), %r9
	vaddsd	%xmm6, %xmm5, %xmm9
	vmulsd	%xmm3, %xmm9, %xmm10
	vmovsd	%xmm10, (%r14,%rax,8)
	cmpq	%r9, %rdi
	jle	.L22
	addq	%r10, %r9
	movq	%r9, %rsi
	subq	%r12, %rsi
	vmovsd	(%rbx,%rsi,8), %xmm11
	vmovsd	8(%rbx,%r9,8), %xmm13
	leaq	(%r12,%r9), %rax
	vaddsd	(%rbx,%rax,8), %xmm11, %xmm12
	vaddsd	0(%r13,%r9,8), %xmm13, %xmm14
	addq	$2, %rcx
	vaddsd	%xmm14, %xmm12, %xmm15
	vmulsd	%xmm3, %xmm15, %xmm0
	vmovsd	%xmm0, (%r14,%r9,8)
	cmpq	%rcx, %rdi
	jle	.L22
	addq	%rcx, %r10
	movq	%r10, %rcx
	subq	%r12, %rcx
	vmovsd	(%rbx,%rcx,8), %xmm1
	vmovsd	8(%rbx,%r10,8), %xmm2
	leaq	(%r12,%r10), %r8
	vaddsd	(%rbx,%r8,8), %xmm1, %xmm5
	vaddsd	0(%r13,%r10,8), %xmm2, %xmm7
	vaddsd	%xmm7, %xmm5, %xmm6
	vmulsd	%xmm3, %xmm6, %xmm9
	vmovsd	%xmm9, (%r14,%r10,8)
.L22:
	incq	%r11
	cmpq	-1128(%rbp), %r11
	jl	.L24
.L19:
	incl	-1156(%rbp)
	movl	-1156(%rbp), %r11d
	cmpl	-1160(%rbp), %r11d
	jne	.L25
	leaq	-1088(%rbp), %rsi
	leaq	-1096(%rbp), %rdi
	vmovaps	%xmm4, -1184(%rbp)
	vmovsd	%xmm3, -1168(%rbp)
	vzeroupper
	call	timing
	vmovsd	-1096(%rbp), %xmm4
	movl	-1156(%rbp), %r10d
	vsubsd	-1104(%rbp), %xmm4, %xmm8
	vmovsd	.LC11(%rip), %xmm3
	addl	%r10d, %r10d
	vcomisd	%xmm8, %xmm3
	movl	%r10d, -1160(%rbp)
	vmovsd	-1168(%rbp), %xmm10
	vmovapd	-1184(%rbp), %xmm11
	ja	.L26
	leaq	-1072(%rbp), %rdi
	movl	$1024, %esi
	movl	%r10d, %r15d
	vmovsd	%xmm8, -1112(%rbp)
	call	gethostname
	leaq	-1080(%rbp), %rsi
	leaq	-1072(%rbp), %rdi
	call	getFreq
	vxorps	%xmm12, %xmm12, %xmm12
	vcvtsi2sdq	-1080(%rbp), %xmm12, %xmm7
	movl	-1192(%rbp), %ebx
	movl	-1188(%rbp), %r9d
	vmovsd	-1112(%rbp), %xmm1
	vmovsd	.LC12(%rip), %xmm0
	leal	-2(%rbx), %r12d
	subl	$2, %r9d
	imull	%r12d, %r9d
	vdivsd	%xmm1, %xmm0, %xmm2
	vmulsd	.LC15(%rip), %xmm7, %xmm6
	sarl	%r15d
	movslq	%r9d, %rdx
	movslq	%r15d, %rdi
	imulq	%rdx, %rdi
	vmulsd	%xmm1, %xmm6, %xmm8
	vcvtsi2sdl	%r15d, %xmm12, %xmm3
	vcvtsi2sdq	%rdi, %xmm12, %xmm10
	vcvtsi2sdl	%r9d, %xmm12, %xmm14
	movl	-1196(%rbp), %esi
	movl	$.LC18, %edi
	subl	%ebx, %esi
	vmulsd	%xmm14, %xmm3, %xmm15
	subl	$4, %esi
	vcvtsi2sdl	%esi, %xmm12, %xmm4
	movl	$6, %eax
	movl	%r15d, %esi
	vmulsd	.LC17(%rip), %xmm4, %xmm0
	vdivsd	%xmm10, %xmm8, %xmm3
	vmulsd	.LC14(%rip), %xmm2, %xmm9
	vmulsd	.LC16(%rip), %xmm2, %xmm11
	vmulsd	.LC13(%rip), %xmm2, %xmm5
	vmulsd	%xmm15, %xmm9, %xmm4
	vmulsd	%xmm15, %xmm11, %xmm2
	vmulsd	%xmm15, %xmm5, %xmm5
	call	printf
	movq	%r13, %rdi
	call	free
	movq	%r14, %rdi
	call	free
	addq	$1152, %rsp
	popq	%rbx
	popq	%rdx
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%rdx), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	.cfi_restore_state
	movq	-1112(%rbp), %r9
	movl	$1, %eax
	jmp	.L20
.L29:
	movq	%rax, %rcx
	jmp	.L23
.L107:
	xorl	%eax, %eax
	jmp	.L15
.L106:
	movl	-1188(%rbp), %ecx
	leal	-1(%rcx), %r8d
	jmp	.L11
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
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	movl	$1024, %esi
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	leaq	-2096(%rbp), %rdi
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	movl	$1250, %r15d
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movl	$1248, %ebx
	subq	$2240, %rsp
	call	gethostname
	leaq	-2136(%rbp), %rsi
	leaq	-2096(%rbp), %rdi
	call	getFreq
	movl	$.LC19, %edi
	xorl	%eax, %eax
	call	printf
	vxorpd	%xmm5, %xmm5, %xmm5
	vcvtsi2sdq	-2136(%rbp), %xmm5, %xmm0
	leaq	-2096(%rbp), %rsi
	movl	$.LC21, %edi
	movl	$1, %eax
	vmulsd	.LC20(%rip), %xmm0, %xmm0
	call	printf
	movl	$.LC22, %edi
	xorl	%eax, %eax
	call	printf
	movq	$10008, -2176(%rbp)
	movq	$1249, -2152(%rbp)
	.p2align 4,,10
	.p2align 3
.L121:
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtsi2sdl	%r15d, %xmm2, %xmm1
	movq	.LC23(%rip), %rax
	vmovq	%rax, %xmm0
	call	__pow_finite
	movq	-2176(%rbp), %rdx
	movl	$64, %edi
	leaq	(%rdx,%rdx,2), %r13
	leaq	1(%r13), %rsi
	call	aligned_alloc
	movq	%r13, %rsi
	movl	$64, %edi
	movq	%rax, %r12
	call	aligned_alloc
	movq	%rax, -2200(%rbp)
	movl	%r15d, %esi
	movl	%r15d, %r9d
	leal	3(%rbx), %ecx
	andl	$-4, %r9d
	leaq	8(%r12), %r14
	shrl	$2, %esi
	vmovsd	.LC9(%rip), %xmm3
	vmovapd	.LC8(%rip), %ymm6
	movl	%ecx, -2160(%rbp)
	movq	%r14, %rdi
	salq	$5, %rsi
	xorl	%ecx, %ecx
	movl	$3, %r8d
	leal	1(%r9), %r13d
	leal	2(%r9), %r11d
	.p2align 4,,10
	.p2align 3
.L109:
	cmpq	$2, -2152(%rbp)
	jbe	.L114
	leaq	-32(%rsi), %rdx
	shrq	$5, %rdx
	incq	%rdx
	leaq	(%rsi,%rdi), %r10
	movq	%rdi, %rax
	andl	$7, %edx
	je	.L111
	cmpq	$1, %rdx
	je	.L159
	cmpq	$2, %rdx
	je	.L160
	cmpq	$3, %rdx
	je	.L161
	cmpq	$4, %rdx
	je	.L162
	cmpq	$5, %rdx
	je	.L163
	cmpq	$6, %rdx
	je	.L164
	vmovupd	%ymm6, (%rdi)
	leaq	32(%rdi), %rax
.L164:
	vmovupd	%ymm6, (%rax)
	addq	$32, %rax
.L163:
	vmovupd	%ymm6, (%rax)
	addq	$32, %rax
.L162:
	vmovupd	%ymm6, (%rax)
	addq	$32, %rax
.L161:
	vmovupd	%ymm6, (%rax)
	addq	$32, %rax
.L160:
	vmovupd	%ymm6, (%rax)
	addq	$32, %rax
.L159:
	vmovupd	%ymm6, (%rax)
	addq	$32, %rax
	cmpq	%rax, %r10
	je	.L182
.L111:
	vmovupd	%ymm6, (%rax)
	vmovupd	%ymm6, 32(%rax)
	vmovupd	%ymm6, 64(%rax)
	vmovupd	%ymm6, 96(%rax)
	vmovupd	%ymm6, 128(%rax)
	vmovupd	%ymm6, 160(%rax)
	vmovupd	%ymm6, 192(%rax)
	vmovupd	%ymm6, 224(%rax)
	addq	$256, %rax
	cmpq	%rax, %r10
	jne	.L111
.L182:
	cmpl	%r15d, %r9d
	je	.L110
	leal	(%rcx,%r9), %eax
	cltq
	vmovapd	%xmm3, %xmm1
	vmovsd	%xmm3, (%r14,%rax,8)
	cmpl	%r13d, %r15d
	jle	.L110
	leal	(%rcx,%r13), %eax
	cltq
	vmovsd	%xmm3, (%r14,%rax,8)
	movl	%r11d, %eax
	cmpl	%r11d, %r15d
	jle	.L110
.L122:
	addl	%ecx, %eax
	cltq
	vmovsd	%xmm1, (%r14,%rax,8)
.L110:
	addl	-2160(%rbp), %ecx
	addq	-2176(%rbp), %rdi
	decl	%r8d
	jne	.L109
	movl	$1, %edx
	cmpl	$2, %r15d
	movq	%rdx, %rcx
	cmovg	%rbx, %rcx
	movq	%rbx, %rsi
	movq	%rcx, -2232(%rbp)
	movq	%rcx, %r8
	andq	$-4, %rcx
	movq	%rcx, %r9
	leaq	3(%rbx), %r10
	movq	-2176(%rbp), %r13
	addq	$2, %r9
	salq	$4, %rsi
	movq	%r9, -2248(%rbp)
	leaq	64(%r12,%rsi), %rdi
	addq	%r10, %r9
	shrq	$2, %r8
	leaq	8(%r13), %rax
	movq	%r9, -2256(%rbp)
	movl	%r15d, -2168(%rbp)
	movq	%rbx, -2272(%rbp)
	salq	$5, %r8
	leaq	1(%rcx), %r11
	addq	$24, %r13
	salq	$3, %r9
	movq	%r14, %r15
	movq	%rdi, %rbx
	movq	%r10, %r14
	movq	%r8, -2160(%rbp)
	movq	%rcx, -2184(%rbp)
	movq	%r11, -2224(%rbp)
	movl	$1, -2164(%rbp)
	movq	%rax, -2192(%rbp)
	movq	%r13, -2240(%rbp)
	movq	%r9, -2264(%rbp)
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L120:
	leaq	-2112(%rbp), %rsi
	leaq	-2128(%rbp), %rdi
	call	timing
	movq	-2192(%rbp), %r10
	movq	%r14, %r8
	movq	%rbx, %r14
	movq	-2200(%rbp), %rbx
	xorl	%r13d, %r13d
	leaq	(%r12,%r10), %rsi
	.p2align 4,,10
	.p2align 3
.L119:
	vxorpd	%xmm4, %xmm4, %xmm4
	vcomisd	8(%r12), %xmm4
	jnb	.L115
	movq	%rbx, %rdi
	movq	%r8, -2216(%rbp)
	movq	%rsi, -2208(%rbp)
	vzeroupper
	call	dummy
	movq	-2216(%rbp), %r8
	movq	-2208(%rbp), %rsi
.L115:
	movq	-2160(%rbp), %r11
	movq	-2240(%rbp), %rdx
	subq	$32, %r11
	movq	-2192(%rbp), %rcx
	shrq	$5, %r11
	incq	%r11
	leaq	(%r12,%rdx), %rdi
	leaq	(%rbx,%rcx), %r9
	xorl	%eax, %eax
	andl	$3, %r11d
	je	.L117
	cmpq	$1, %r11
	je	.L165
	cmpq	$2, %r11
	je	.L166
	vmovupd	(%rdi), %ymm7
	vmovupd	16(%r12), %ymm9
	vaddpd	(%r14), %ymm7, %ymm8
	vaddpd	(%rsi), %ymm9, %ymm10
	movl	$32, %eax
	vaddpd	%ymm10, %ymm8, %ymm11
	vmulpd	.LC24(%rip), %ymm11, %ymm12
	vmovupd	%ymm12, (%r9)
.L166:
	vmovupd	(%rdi,%rax), %ymm13
	vmovupd	16(%r12,%rax), %ymm15
	vaddpd	(%r14,%rax), %ymm13, %ymm14
	vaddpd	(%rsi,%rax), %ymm15, %ymm5
	vaddpd	%ymm5, %ymm14, %ymm0
	vmulpd	.LC24(%rip), %ymm0, %ymm2
	vmovupd	%ymm2, (%r9,%rax)
	addq	$32, %rax
.L165:
	vmovupd	(%rdi,%rax), %ymm1
	vmovupd	16(%r12,%rax), %ymm6
	vaddpd	(%r14,%rax), %ymm1, %ymm3
	vaddpd	(%rsi,%rax), %ymm6, %ymm4
	vaddpd	%ymm4, %ymm3, %ymm7
	vmulpd	.LC24(%rip), %ymm7, %ymm8
	vmovupd	%ymm8, (%r9,%rax)
	addq	$32, %rax
	cmpq	%rax, -2160(%rbp)
	je	.L181
.L117:
	vmovupd	(%rdi,%rax), %ymm9
	vmovupd	16(%r12,%rax), %ymm11
	vaddpd	(%r14,%rax), %ymm9, %ymm10
	vaddpd	(%rsi,%rax), %ymm11, %ymm12
	vmovupd	32(%rdi,%rax), %ymm15
	vmovupd	48(%r12,%rax), %ymm0
	vaddpd	%ymm12, %ymm10, %ymm13
	vmovupd	64(%rdi,%rax), %ymm6
	vmovupd	80(%r12,%rax), %ymm7
	vmulpd	.LC24(%rip), %ymm13, %ymm14
	vmovupd	96(%rdi,%rax), %ymm11
	vmovupd	112(%r12,%rax), %ymm13
	vaddpd	32(%r14,%rax), %ymm15, %ymm5
	vaddpd	32(%rsi,%rax), %ymm0, %ymm2
	vaddpd	64(%r14,%rax), %ymm6, %ymm4
	vaddpd	64(%rsi,%rax), %ymm7, %ymm8
	vaddpd	96(%r14,%rax), %ymm11, %ymm12
	vmovupd	%ymm14, (%r9,%rax)
	vaddpd	96(%rsi,%rax), %ymm13, %ymm14
	vaddpd	%ymm2, %ymm5, %ymm1
	vaddpd	%ymm8, %ymm4, %ymm9
	vaddpd	%ymm14, %ymm12, %ymm15
	vmulpd	.LC24(%rip), %ymm1, %ymm3
	vmulpd	.LC24(%rip), %ymm9, %ymm10
	vmulpd	.LC24(%rip), %ymm15, %ymm5
	vmovupd	%ymm3, 32(%r9,%rax)
	vmovupd	%ymm10, 64(%r9,%rax)
	vmovupd	%ymm5, 96(%r9,%rax)
	subq	$-128, %rax
	cmpq	%rax, -2160(%rbp)
	jne	.L117
	.p2align 4,,10
	.p2align 3
.L181:
	movq	-2232(%rbp), %r10
	cmpq	%r10, -2184(%rbp)
	je	.L118
	movq	-2224(%rbp), %rdi
	vmovsd	.LC25(%rip), %xmm4
	leaq	(%rdi,%r8), %r9
	leaq	(%r9,%r8), %rcx
	vmovsd	(%r15,%rcx,8), %xmm0
	vmovsd	(%r12,%r9,8), %xmm1
	vaddsd	8(%r15,%r9,8), %xmm0, %xmm2
	vaddsd	(%r15,%rdi,8), %xmm1, %xmm3
	movq	-2152(%rbp), %r11
	leaq	0(,%rdi,8), %rdx
	vaddsd	%xmm3, %xmm2, %xmm6
	vmulsd	%xmm4, %xmm6, %xmm7
	vmovsd	%xmm7, (%rbx,%r9,8)
	cmpq	%r11, -2248(%rbp)
	jl	.L188
.L118:
	incl	%r13d
	cmpl	%r13d, -2164(%rbp)
	jne	.L119
	movq	%r14, %rbx
	leaq	-2112(%rbp), %rsi
	movq	%r8, %r14
	leaq	-2120(%rbp), %rdi
	vzeroupper
	call	timing
	vmovsd	-2120(%rbp), %xmm3
	vmovsd	.LC11(%rip), %xmm4
	vsubsd	-2128(%rbp), %xmm3, %xmm6
	sall	-2164(%rbp)
	vcomisd	%xmm6, %xmm4
	ja	.L120
	movl	$1024, %esi
	leaq	-1072(%rbp), %rdi
	movq	-2272(%rbp), %rbx
	movl	-2168(%rbp), %r15d
	vmovsd	%xmm6, -2160(%rbp)
	movl	-2164(%rbp), %r13d
	call	gethostname
	leaq	-2104(%rbp), %rsi
	leaq	-1072(%rbp), %rdi
	call	getFreq
	vxorpd	%xmm9, %xmm9, %xmm9
	vcvtsi2sdq	-2104(%rbp), %xmm9, %xmm15
	vmovsd	-2160(%rbp), %xmm1
	vmovsd	.LC12(%rip), %xmm11
	sarl	%r13d
	vdivsd	%xmm1, %xmm11, %xmm12
	vmulsd	.LC15(%rip), %xmm15, %xmm5
	vcvtsi2sdl	%r13d, %xmm9, %xmm8
	vcvtsi2sdl	%ebx, %xmm9, %xmm7
	movslq	%r13d, %r8
	imulq	%rbx, %r8
	leal	-4(%r15,%r15,2), %esi
	vmulsd	%xmm7, %xmm8, %xmm10
	vmulsd	%xmm1, %xmm5, %xmm8
	vcvtsi2sdq	%r8, %xmm9, %xmm3
	vcvtsi2sdl	%esi, %xmm9, %xmm6
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movl	$.LC18, %edi
	vmulsd	.LC17(%rip), %xmm6, %xmm0
	movl	$6, %eax
	subl	$64, %r15d
	subq	$64, %rbx
	vdivsd	%xmm3, %xmm8, %xmm3
	vmulsd	.LC13(%rip), %xmm12, %xmm13
	vmulsd	.LC14(%rip), %xmm12, %xmm14
	vmulsd	.LC16(%rip), %xmm12, %xmm2
	vmulsd	%xmm10, %xmm13, %xmm5
	vmulsd	%xmm10, %xmm14, %xmm4
	vmulsd	%xmm10, %xmm2, %xmm2
	call	printf
	movq	%r12, %rdi
	call	free
	movq	-2200(%rbp), %rdi
	call	free
	subq	$64, -2152(%rbp)
	subq	$512, -2176(%rbp)
	cmpl	$162, %r15d
	jne	.L121
	addq	$2240, %rsp
	popq	%rbx
	popq	%rdx
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	xorl	%eax, %eax
	popq	%rbp
	leaq	-8(%rdx), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L188:
	.cfi_restore_state
	movq	-2256(%rbp), %rax
	movq	-2264(%rbp), %r10
	addq	%r8, %rax
	vmovsd	(%r15,%rax,8), %xmm8
	vmovsd	8(%r15,%rdx), %xmm10
	vaddsd	8(%r15,%r10), %xmm8, %xmm9
	vaddsd	(%r12,%r10), %xmm10, %xmm11
	movq	-2184(%rbp), %rdi
	vaddsd	%xmm11, %xmm9, %xmm12
	addq	$3, %rdi
	vmulsd	%xmm4, %xmm12, %xmm13
	vmovsd	%xmm13, (%rbx,%r10)
	cmpq	%r11, %rdi
	jge	.L118
	addq	%r8, %rdi
	leaq	(%rdi,%r8), %r9
	vmovsd	(%r15,%r9,8), %xmm14
	vmovsd	16(%r15,%rdx), %xmm5
	vaddsd	8(%r15,%rdi,8), %xmm14, %xmm15
	vaddsd	(%r12,%rdi,8), %xmm5, %xmm0
	vaddsd	%xmm0, %xmm15, %xmm2
	vmulsd	%xmm4, %xmm2, %xmm1
	vmovsd	%xmm1, (%rbx,%rdi,8)
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L114:
	movq	.LC9(%rip), %rdx
	leal	1(%rcx), %eax
	cltq
	movslq	%ecx, %r10
	movq	%rdx, (%r14,%r10,8)
	vmovq	%rdx, %xmm1
	movq	%rdx, (%r14,%rax,8)
	movl	$2, %eax
	jmp	.L122
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
	.section	.rodata.cst32
	.align 32
.LC24:
	.long	398572965
	.long	1068847910
	.long	398572965
	.long	1068847910
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
