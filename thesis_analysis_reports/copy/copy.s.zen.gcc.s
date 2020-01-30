	.file	"copy.c"
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
	.globl	copy
	.type	copy, @function
copy:
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
	call	aligned_alloc
	movq	%r12, %rsi
	movl	$64, %edi
	movq	%rax, %rbp
	call	aligned_alloc
	movq	%rax, %r12
	testq	%r14, %r14
	jle	.L11
	cmpq	$1, %r14
	je	.L23
	movq	%r14, %rdx
	vmovaps	.LC8(%rip), %xmm0
	movq	%rbp, %rbx
	shrq	%rdx
	salq	$4, %rdx
	leaq	(%rdx,%rbp), %rcx
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
	cmpq	%rbx, %rcx
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
	cmpq	%rbx, %rcx
	jne	.L13
.L101:
	movq	%r14, %rsi
	andq	$-2, %rsi
	movslq	%esi, %rax
	cmpq	%rsi, %r14
	je	.L11
.L12:
	movq	.LC9(%rip), %rdi
	movq	%rdi, 0(%rbp,%rax,8)
.L11:
	movq	%r14, %r15
	movq	%r14, %rbx
	movl	$1, %r11d
	shrq	%r15
	andq	$-2, %rbx
	salq	$4, %r15
	.p2align 4
	.p2align 3
.L22:
	leaq	32(%rsp), %rsi
	leaq	16(%rsp), %rdi
	movl	%r11d, 8(%rsp)
	xorl	%r13d, %r13d
	call	timing
	movl	8(%rsp), %r8d
	.p2align 4
	.p2align 3
.L21:
	vxorpd	%xmm7, %xmm7, %xmm7
	vcomisd	0(%rbp), %xmm7
	ja	.L104
.L15:
	testq	%r14, %r14
	jle	.L17
	xorl	%r10d, %r10d
	cmpq	$1, %r14
	je	.L18
	leaq	-16(%r15), %r9
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
	vmovups	0(%rbp), %xmm3
	movl	$16, %r10d
	vmovups	%xmm3, (%r12)
.L83:
	vmovups	0(%rbp,%r10), %xmm1
	vmovups	%xmm1, (%r12,%r10)
	addq	$16, %r10
.L82:
	vmovups	0(%rbp,%r10), %xmm2
	vmovups	%xmm2, (%r12,%r10)
	addq	$16, %r10
.L81:
	vmovups	0(%rbp,%r10), %xmm4
	vmovups	%xmm4, (%r12,%r10)
	addq	$16, %r10
.L80:
	vmovups	0(%rbp,%r10), %xmm5
	vmovups	%xmm5, (%r12,%r10)
	addq	$16, %r10
.L79:
	vmovups	0(%rbp,%r10), %xmm6
	vmovups	%xmm6, (%r12,%r10)
	addq	$16, %r10
.L78:
	vmovups	0(%rbp,%r10), %xmm8
	vmovups	%xmm8, (%r12,%r10)
	addq	$16, %r10
	cmpq	%r10, %r15
	je	.L100
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
    # LLVM-MCA-BEGIN
.L19:
	vmovups	0(%rbp,%r10), %xmm9
	vmovups	16(%rbp,%r10), %xmm10
	vmovups	32(%rbp,%r10), %xmm11
	vmovups	48(%rbp,%r10), %xmm12
	vmovups	64(%rbp,%r10), %xmm13
	vmovups	80(%rbp,%r10), %xmm14
	vmovups	96(%rbp,%r10), %xmm15
	vmovups	112(%rbp,%r10), %xmm0
	vmovups	%xmm9, (%r12,%r10)
	vmovups	%xmm10, 16(%r12,%r10)
	vmovups	%xmm11, 32(%r12,%r10)
	vmovups	%xmm12, 48(%r12,%r10)
	vmovups	%xmm13, 64(%r12,%r10)
	vmovups	%xmm14, 80(%r12,%r10)
	vmovups	%xmm15, 96(%r12,%r10)
	vmovups	%xmm0, 112(%r12,%r10)
	subq	$-128, %r10
	cmpq	%r10, %r15
	jne	.L19
    # LLVM-MCA-END
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L100:
	cmpq	%rbx, %r14
	je	.L17
	movq	%rbx, %r10
.L18:
	salq	$3, %r10
	vmovsd	0(%rbp,%r10), %xmm7
	vmovsd	%xmm7, (%r12,%r10)
.L17:
	incl	%r13d
	cmpl	%r8d, %r13d
	jne	.L21
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdi
	call	timing
	vmovsd	24(%rsp), %xmm3
	leal	(%r13,%r13), %r11d
	vsubsd	16(%rsp), %xmm3, %xmm1
	vmovsd	.LC11(%rip), %xmm2
	vcomisd	%xmm1, %xmm2
	ja	.L22
	sarl	%r11d
	leaq	48(%rsp), %rdi
	movl	$1024, %esi
	vmovsd	%xmm1, 8(%rsp)
	movl	%r11d, %r15d
	call	gethostname
	leaq	40(%rsp), %rsi
	leaq	48(%rsp), %rdi
	call	getFreq
	vxorps	%xmm5, %xmm5, %xmm5
	vmovsd	8(%rsp), %xmm1
	movslq	%r15d, %rax
	vcvtsi2sdq	40(%rsp), %xmm5, %xmm11
	vmulsd	.LC14(%rip), %xmm11, %xmm12
	vcvtsi2sdq	%r14, %xmm5, %xmm6
	vcvtsi2sdl	%r15d, %xmm5, %xmm4
	vmulsd	%xmm6, %xmm4, %xmm8
	imulq	%r14, %rax
	movq	%r14, %rdx
	movl	%r15d, %esi
	movl	$.LC16, %edi
	vmulsd	.LC12(%rip), %xmm8, %xmm9
	vmulsd	.LC13(%rip), %xmm8, %xmm10
	vcvtsi2sdq	%rax, %xmm5, %xmm14
	movl	$6, %eax
	vmulsd	.LC15(%rip), %xmm6, %xmm0
	vmulsd	%xmm1, %xmm12, %xmm13
	vdivsd	%xmm1, %xmm9, %xmm2
	vdivsd	%xmm1, %xmm10, %xmm4
	vmovaps	%xmm2, %xmm5
	vdivsd	%xmm14, %xmm13, %xmm3
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
	movl	%r8d, 8(%rsp)
	call	dummy
	movl	8(%rsp), %r8d
	jmp	.L15
.L103:
	vmovups	%xmm0, 0(%rbp)
	leaq	16(%rbp), %rbx
	jmp	.L77
.L23:
	xorl	%eax, %eax
	jmp	.L12
	.cfi_endproc
.LFE34:
	.size	copy, .-copy
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"COPY b[i] = a[i], 8 byte/it, 0 Flop/it\n"
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
	vcvttsd2sil	%xmm0, %edx
	testl	%edx, %edx
	leal	63(%rdx), %edi
	cmovns	%edx, %edi
	andl	$-64, %edi
	movslq	%edi, %rdi
	call	copy
	movq	.LC21(%rip), %rsi
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
	call	copy
	movq	.LC21(%rip), %r11
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
	call	copy
	movq	.LC21(%rip), %rcx
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
	call	copy
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
	.ident	"GCC: (GNU) 9.1.0"
	.section	.note.GNU-stack,"",@progbits
