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
	.globl	copy
	.type	copy, @function
copy:
.LFB34:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	movq	%rdi, %r15
	pushq	%r14
	pushq	%r13
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	leaq	0(,%rdi,8), %r13
	movq	%r13, %rsi
	pushq	%r12
	movl	$64, %edi
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$1088, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	call	aligned_alloc
	movq	%r13, %rsi
	movl	$64, %edi
	movq	%rax, %r12
	call	aligned_alloc
	movq	%rax, %r13
	leaq	-1(%r15), %rax
	movq	%rax, -1112(%rbp)
	testq	%r15, %r15
	jle	.L11
	cmpq	$2, %rax
	jbe	.L23
	movq	%r15, %rdx
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
	movq	%r15, %rsi
	andq	$-4, %rsi
	movl	%esi, %eax
	cmpq	%rsi, %r15
	je	.L107
	vzeroupper
.L12:
	vmovsd	.LC9(%rip), %xmm1
	leal	1(%rax), %r8d
	movslq	%eax, %rdi
	movslq	%r8d, %r9
	vmovsd	%xmm1, (%r12,%rdi,8)
	cmpq	%r9, %r15
	jle	.L11
	addl	$2, %eax
	cltq
	vmovsd	%xmm1, (%r12,%r9,8)
	cmpq	%rax, %r15
	jle	.L11
	vmovsd	%xmm1, (%r12,%rax,8)
.L11:
	movq	%r15, %r8
	shrq	$2, %r8
	movq	%r15, %rbx
	salq	$5, %r8
	andq	$-4, %rbx
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L22:
	movl	%edi, -1124(%rbp)
	leaq	-1088(%rbp), %rsi
	leaq	-1104(%rbp), %rdi
	movq	%r8, -1120(%rbp)
	call	timing
	movl	-1124(%rbp), %r11d
	movq	-1120(%rbp), %r10
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L21:
	vxorpd	%xmm7, %xmm7, %xmm7
	vcomisd	(%r12), %xmm7
	ja	.L108
.L15:
	testq	%r15, %r15
	jle	.L17
	xorl	%ecx, %ecx
	cmpq	$2, -1112(%rbp)
	jbe	.L18
	leaq	-32(%r10), %rdx
	shrq	$5, %rdx
	incq	%rdx
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
	movl	$32, %ecx
	vmovupd	%ymm3, 0(%r13)
.L84:
	vmovupd	(%r12,%rcx), %ymm2
	vmovupd	%ymm2, 0(%r13,%rcx)
	addq	$32, %rcx
.L83:
	vmovupd	(%r12,%rcx), %ymm4
	vmovupd	%ymm4, 0(%r13,%rcx)
	addq	$32, %rcx
.L82:
	vmovupd	(%r12,%rcx), %ymm5
	vmovupd	%ymm5, 0(%r13,%rcx)
	addq	$32, %rcx
.L81:
	vmovupd	(%r12,%rcx), %ymm6
	vmovupd	%ymm6, 0(%r13,%rcx)
	addq	$32, %rcx
.L80:
	vmovupd	(%r12,%rcx), %ymm8
	vmovupd	%ymm8, 0(%r13,%rcx)
	addq	$32, %rcx
.L79:
	vmovupd	(%r12,%rcx), %ymm9
	vmovupd	%ymm9, 0(%r13,%rcx)
	addq	$32, %rcx
	cmpq	%rcx, %r10
	je	.L102
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
# LLVM-MCA-BEGIN
.L19:
	vmovupd	(%r12,%rcx), %ymm10
	vmovupd	32(%r12,%rcx), %ymm11
	vmovupd	64(%r12,%rcx), %ymm12
	vmovupd	96(%r12,%rcx), %ymm13
	vmovupd	128(%r12,%rcx), %ymm14
	vmovupd	160(%r12,%rcx), %ymm15
	vmovupd	192(%r12,%rcx), %ymm0
	vmovupd	224(%r12,%rcx), %ymm1
	vmovupd	%ymm10, 0(%r13,%rcx)
	vmovupd	%ymm11, 32(%r13,%rcx)
	vmovupd	%ymm12, 64(%r13,%rcx)
	vmovupd	%ymm13, 96(%r13,%rcx)
	vmovupd	%ymm14, 128(%r13,%rcx)
	vmovupd	%ymm15, 160(%r13,%rcx)
	vmovupd	%ymm0, 192(%r13,%rcx)
	vmovupd	%ymm1, 224(%r13,%rcx)
	addq	$256, %rcx
	cmpq	%rcx, %r10
	jne	.L19
# LLVM-MCA-END
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L102:
	cmpq	%rbx, %r15
	je	.L17
	movq	%rbx, %rcx
.L18:
	vmovsd	(%r12,%rcx,8), %xmm7
	leaq	1(%rcx), %rsi
	leaq	0(,%rcx,8), %rax
	vmovsd	%xmm7, 0(%r13,%rcx,8)
	cmpq	%r15, %rsi
	jge	.L17
	vmovsd	8(%r12,%rax), %xmm3
	addq	$2, %rcx
	vmovsd	%xmm3, 8(%r13,%rax)
	cmpq	%rcx, %r15
	jle	.L17
	vmovsd	16(%r12,%rax), %xmm2
	vmovsd	%xmm2, 16(%r13,%rax)
.L17:
	incl	%r14d
	cmpl	%r11d, %r14d
	jne	.L21
	leaq	-1088(%rbp), %rsi
	leaq	-1096(%rbp), %rdi
	movq	%r10, -1120(%rbp)
	vzeroupper
	call	timing
	vmovsd	-1096(%rbp), %xmm4
	vmovsd	.LC11(%rip), %xmm6
	vsubsd	-1104(%rbp), %xmm4, %xmm5
	movq	-1120(%rbp), %r8
	leal	(%r14,%r14), %edi
	vcomisd	%xmm5, %xmm6
	ja	.L22
	sarl	%edi
	movl	%edi, %ebx
	movl	$1024, %esi
	leaq	-1072(%rbp), %rdi
	vmovsd	%xmm5, -1112(%rbp)
	call	gethostname
	leaq	-1080(%rbp), %rsi
	leaq	-1072(%rbp), %rdi
	call	getFreq
	vxorps	%xmm8, %xmm8, %xmm8
	vcvtsi2sdq	%r15, %xmm8, %xmm9
	vcvtsi2sdl	%ebx, %xmm8, %xmm10
	vcvtsi2sdq	-1080(%rbp), %xmm8, %xmm14
	movslq	%ebx, %r9
	vmovsd	-1112(%rbp), %xmm1
	vmulsd	%xmm9, %xmm10, %xmm11
	vmulsd	.LC14(%rip), %xmm14, %xmm15
	imulq	%r15, %r9
	vmulsd	.LC15(%rip), %xmm9, %xmm6
	movq	%r15, %rdx
	vmulsd	.LC12(%rip), %xmm11, %xmm12
	vmulsd	.LC13(%rip), %xmm11, %xmm13
	vmulsd	%xmm1, %xmm15, %xmm7
	vcvtsi2sdq	%r9, %xmm8, %xmm0
	movl	%ebx, %esi
	vdivsd	%xmm1, %xmm12, %xmm2
	movl	$.LC16, %edi
	movl	$6, %eax
	vdivsd	%xmm0, %xmm7, %xmm3
	vmovapd	%xmm6, %xmm0
	vmovapd	%xmm2, %xmm5
	vdivsd	%xmm1, %xmm13, %xmm4
	call	printf
	movq	%r12, %rdi
	call	free
	movq	%r13, %rdi
	call	free
	addq	$1088, %rsp
	popq	%rbx
	popq	%r11
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r11), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L108:
	.cfi_restore_state
	movq	%r12, %rdi
	movl	%r11d, -1124(%rbp)
	movq	%r10, -1120(%rbp)
	vzeroupper
	call	dummy
	movl	-1124(%rbp), %r11d
	movq	-1120(%rbp), %r10
	jmp	.L15
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
	testl	%edx, %edx
	leal	63(%rdx), %edi
	cmovns	%edx, %edi
	andl	$-64, %edi
	movslq	%edi, %rdi
	call	copy
	leal	1(%rbx), %ecx
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdl	%ecx, %xmm1, %xmm1
	movq	.LC21(%rip), %rsi
	vmovq	%rsi, %xmm0
	call	__pow_finite
	vcvttsd2sil	%xmm0, %r8d
	testl	%r8d, %r8d
	leal	63(%r8), %r9d
	cmovns	%r8d, %r9d
	andl	$-64, %r9d
	movslq	%r9d, %rdi
	call	copy
	leal	2(%rbx), %r10d
	vxorpd	%xmm4, %xmm4, %xmm4
	vcvtsi2sdl	%r10d, %xmm4, %xmm1
	movq	.LC21(%rip), %r11
	vmovq	%r11, %xmm0
	call	__pow_finite
	vcvttsd2sil	%xmm0, %eax
	testl	%eax, %eax
	leal	63(%rax), %edx
	cmovns	%eax, %edx
	andl	$-64, %edx
	movslq	%edx, %rdi
	call	copy
	leal	3(%rbx), %edi
	vxorpd	%xmm5, %xmm5, %xmm5
	vcvtsi2sdl	%edi, %xmm5, %xmm1
	movq	.LC21(%rip), %rcx
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
	.ident	"GCC: (GNU) 9.1.0"
	.section	.note.GNU-stack,"",@progbits
