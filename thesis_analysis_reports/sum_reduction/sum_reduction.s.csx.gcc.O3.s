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
.LFB24:
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
	call	pow
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
	call	pow
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
	call	pow
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
.LFE24:
	.size	getFreq, .-getFreq
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC17:
	.string	"%12.1f | %11.8f | %9.3f | %7.2f | %7.1f | %7.1f | %6d | %4ld \n"
	.text
	.p2align 4
	.globl	sum_reduction
	.type	sum_reduction, @function
sum_reduction:
.LFB25:
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
	vmovsd	-1112(%rbp), %xmm15
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
	vmovapd	.LC8(%rip), %ymm1
	movq	%r12, %rbx
	andl	$7, %edx
	je	.L13
	cmpq	$1, %rdx
	je	.L61
	cmpq	$2, %rdx
	je	.L62
	cmpq	$3, %rdx
	je	.L63
	cmpq	$4, %rdx
	je	.L64
	cmpq	$5, %rdx
	je	.L65
	cmpq	$6, %rdx
	jne	.L86
.L66:
	vmovupd	%ymm1, (%rbx)
	addq	$32, %rbx
.L65:
	vmovupd	%ymm1, (%rbx)
	addq	$32, %rbx
.L64:
	vmovupd	%ymm1, (%rbx)
	addq	$32, %rbx
.L63:
	vmovupd	%ymm1, (%rbx)
	addq	$32, %rbx
.L62:
	vmovupd	%ymm1, (%rbx)
	addq	$32, %rbx
.L61:
	vmovupd	%ymm1, (%rbx)
	addq	$32, %rbx
	cmpq	%rcx, %rbx
	je	.L83
.L13:
	vmovupd	%ymm1, (%rbx)
	vmovupd	%ymm1, 32(%rbx)
	vmovupd	%ymm1, 64(%rbx)
	vmovupd	%ymm1, 96(%rbx)
	vmovupd	%ymm1, 128(%rbx)
	vmovupd	%ymm1, 160(%rbx)
	vmovupd	%ymm1, 192(%rbx)
	vmovupd	%ymm1, 224(%rbx)
	addq	$256, %rbx
	cmpq	%rcx, %rbx
	jne	.L13
.L83:
	movq	%r14, %rsi
	andq	$-4, %rsi
	movl	%esi, %eax
	cmpq	%rsi, %r14
	je	.L87
	vzeroupper
.L12:
	vmovsd	.LC9(%rip), %xmm2
	leal	1(%rax), %r8d
	movslq	%eax, %rdi
	movslq	%r8d, %r9
	vmovsd	%xmm2, (%r12,%rdi,8)
	cmpq	%r9, %r14
	jle	.L11
	addl	$2, %eax
	cltq
	vmovsd	%xmm2, (%r12,%r9,8)
	cmpq	%rax, %r14
	jle	.L11
	vmovsd	%xmm2, (%r12,%rax,8)
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
	vmovsd	%xmm15, -1128(%rbp)
	call	timing
	vmovsd	-1128(%rbp), %xmm0
	movl	-1120(%rbp), %r11d
	xorl	%r13d, %r13d
	.p2align 4,,10
	.p2align 3
.L21:
	vxorpd	%xmm4, %xmm4, %xmm4
	vcomisd	(%r12), %xmm4
	ja	.L88
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
	andl	$3, %edx
	je	.L19
	cmpq	$1, %rdx
	je	.L67
	cmpq	$2, %rdx
	je	.L68
	vmovupd	(%r12), %ymm5
	leaq	32(%r12), %rcx
	vaddsd	%xmm5, %xmm0, %xmm0
	vunpckhpd	%xmm5, %xmm5, %xmm7
	vextractf64x2	$0x1, %ymm5, %xmm9
	vaddsd	%xmm0, %xmm7, %xmm8
	vunpckhpd	%xmm9, %xmm9, %xmm12
	vaddsd	%xmm8, %xmm9, %xmm11
	vaddsd	%xmm12, %xmm11, %xmm0
.L68:
	vmovupd	(%rcx), %ymm13
	addq	$32, %rcx
	vaddsd	%xmm13, %xmm0, %xmm1
	vunpckhpd	%xmm13, %xmm13, %xmm2
	vextractf64x2	$0x1, %ymm13, %xmm5
	vaddsd	%xmm1, %xmm2, %xmm4
	vunpckhpd	%xmm5, %xmm5, %xmm0
	vaddsd	%xmm4, %xmm5, %xmm3
	vaddsd	%xmm0, %xmm3, %xmm0
.L67:
	vmovupd	(%rcx), %ymm7
	addq	$32, %rcx
	vaddsd	%xmm7, %xmm0, %xmm10
	vunpckhpd	%xmm7, %xmm7, %xmm11
	vextractf64x2	$0x1, %ymm7, %xmm13
	vaddsd	%xmm10, %xmm11, %xmm12
	vunpckhpd	%xmm13, %xmm13, %xmm1
	vaddsd	%xmm12, %xmm13, %xmm15
	vaddsd	%xmm1, %xmm15, %xmm0
	cmpq	%rcx, %r15
	je	.L82
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
# LLVM-MCA-BEGIN
.L19:
	vmovupd	(%rcx), %ymm4
	vmovupd	32(%rcx), %ymm13
	vaddsd	%xmm4, %xmm0, %xmm6
	vunpckhpd	%xmm4, %xmm4, %xmm3
	vextractf64x2	$0x1, %ymm4, %xmm8
	vaddsd	%xmm6, %xmm3, %xmm7
	vunpckhpd	%xmm8, %xmm8, %xmm11
	vunpckhpd	%xmm13, %xmm13, %xmm1
	vaddsd	%xmm7, %xmm8, %xmm10
	vextractf64x2	$0x1, %ymm13, %xmm2
	vunpckhpd	%xmm2, %xmm2, %xmm3
	vaddsd	%xmm11, %xmm10, %xmm12
	vmovupd	64(%rcx), %ymm8
	vmovupd	96(%rcx), %ymm5
	vaddsd	%xmm13, %xmm12, %xmm0
	vunpckhpd	%xmm8, %xmm8, %xmm12
	vextractf64x2	$0x1, %ymm8, %xmm14
	vaddsd	%xmm0, %xmm1, %xmm4
	vunpckhpd	%xmm14, %xmm14, %xmm0
	vextractf64x2	$0x1, %ymm5, %xmm9
	vaddsd	%xmm4, %xmm2, %xmm6
	subq	$-128, %rcx
	vaddsd	%xmm3, %xmm6, %xmm7
	vaddsd	%xmm8, %xmm7, %xmm11
	vunpckhpd	%xmm5, %xmm5, %xmm7
	vaddsd	%xmm11, %xmm12, %xmm13
	vunpckhpd	%xmm9, %xmm9, %xmm12
	vaddsd	%xmm13, %xmm14, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm4
	vaddsd	%xmm5, %xmm4, %xmm3
	vaddsd	%xmm3, %xmm7, %xmm8
	vaddsd	%xmm8, %xmm9, %xmm11
	vaddsd	%xmm12, %xmm11, %xmm0
	cmpq	%rcx, %r15
	jne	.L19
# LLVM-MCA-END
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L82:
	movq	%rbx, %r10
	cmpq	%rbx, %r14
	je	.L17
.L18:
	leaq	1(%r10), %rsi
	vaddsd	(%r12,%r10,8), %xmm0, %xmm0
	leaq	0(,%r10,8), %rax
	cmpq	%r14, %rsi
	jge	.L17
	addq	$2, %r10
	vaddsd	8(%r12,%rax), %xmm0, %xmm0
	cmpq	%r10, %r14
	jle	.L17
	vaddsd	16(%r12,%rax), %xmm0, %xmm0
.L17:
	incl	%r13d
	cmpl	%r11d, %r13d
	jne	.L21
	leaq	-1088(%rbp), %rsi
	leaq	-1096(%rbp), %rdi
	vmovsd	%xmm0, -1120(%rbp)
	vzeroupper
	call	timing
	vmovsd	-1096(%rbp), %xmm13
	vmovsd	.LC11(%rip), %xmm1
	vsubsd	-1104(%rbp), %xmm13, %xmm14
	vmovsd	-1120(%rbp), %xmm15
	leal	(%r13,%r13), %edi
	vcomisd	%xmm14, %xmm1
	vmovsd	%xmm15, (%r12)
	ja	.L22
	sarl	%edi
	movl	%edi, %r15d
	movl	$1024, %esi
	leaq	-1072(%rbp), %rdi
	vmovsd	%xmm14, -1112(%rbp)
	call	gethostname
	leaq	-1080(%rbp), %rsi
	leaq	-1072(%rbp), %rdi
	call	getFreq
	vxorps	%xmm2, %xmm2, %xmm2
	vcvtsi2sdl	%r15d, %xmm2, %xmm0
	vcvtsi2sdq	%r14, %xmm2, %xmm6
	vmovsd	-1112(%rbp), %xmm1
	vmovsd	.LC12(%rip), %xmm5
	vmovsd	.LC13(%rip), %xmm10
	vmulsd	%xmm6, %xmm0, %xmm8
	vmulsd	%xmm10, %xmm0, %xmm3
	movslq	%r15d, %r8
	imulq	%r14, %r8
	vcvtsi2sdq	-1080(%rbp), %xmm2, %xmm14
	vdivsd	%xmm1, %xmm8, %xmm4
	vmulsd	%xmm6, %xmm3, %xmm7
	vcvtsi2sdq	%r8, %xmm2, %xmm2
	vmulsd	%xmm10, %xmm6, %xmm6
	vmulsd	%xmm1, %xmm14, %xmm15
	vmulsd	.LC16(%rip), %xmm8, %xmm8
	vmulsd	.LC15(%rip), %xmm2, %xmm0
	vmovsd	.LC14(%rip), %xmm12
	movq	%r14, %rdx
	movl	%r15d, %esi
	movl	$.LC17, %edi
	movl	$6, %eax
	vdivsd	%xmm1, %xmm7, %xmm11
	vdivsd	%xmm5, %xmm4, %xmm9
	vmulsd	%xmm12, %xmm11, %xmm13
	vmulsd	%xmm12, %xmm13, %xmm4
	vdivsd	%xmm5, %xmm6, %xmm10
	vdivsd	%xmm0, %xmm15, %xmm3
	vmovapd	%xmm10, %xmm0
	vdivsd	%xmm5, %xmm9, %xmm5
	vdivsd	%xmm1, %xmm8, %xmm2
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
.L88:
	.cfi_restore_state
	movq	%r12, %rdi
	movl	%r11d, -1120(%rbp)
	vmovsd	%xmm0, -1128(%rbp)
	vzeroupper
	call	dummy
	vmovsd	-1128(%rbp), %xmm0
	movl	-1120(%rbp), %r11d
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L24:
	xorl	%r10d, %r10d
	jmp	.L18
.L87:
	vzeroupper
	jmp	.L11
.L86:
	vmovupd	%ymm1, (%r12)
	leaq	32(%r12), %rbx
	jmp	.L66
.L23:
	xorl	%eax, %eax
	jmp	.L12
	.cfi_endproc
.LFE25:
	.size	sum_reduction, .-sum_reduction
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"SUM REDUCTION s = s + a[i], 8 byte/it, 1 Flop/it\n"
	.align 8
.LC20:
	.string	"Checking for %s. Frequency *must* be set to %4.2f GHz for valid cy/CL.\n"
	.align 8
.LC21:
	.string	"Size (KByte) |   runtime   |  MFlop/s  |  cy/CL  |  MB/s   |  MLUP/s | repeat | size\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB26:
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
	movl	$.LC18, %edi
	xorl	%eax, %eax
	call	printf
	vxorpd	%xmm3, %xmm3, %xmm3
	vcvtsi2sdq	8(%rsp), %xmm3, %xmm0
	leaq	16(%rsp), %rsi
	movl	$.LC20, %edi
	movl	$1, %eax
	vdivsd	.LC19(%rip), %xmm0, %xmm0
	call	printf
	movl	$.LC21, %edi
	xorl	%eax, %eax
	call	printf
.L90:
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtsi2sdl	%ebx, %xmm2, %xmm1
	movq	.LC22(%rip), %rax
	vmovq	%rax, %xmm0
	call	pow
	vcvttsd2sil	%xmm0, %edx
	movq	.LC23(%rip), %rcx
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
	movq	.LC22(%rip), %r8
	vmovq	%r8, %xmm0
	call	pow
	vcvttsd2sil	%xmm0, %r9d
	movq	.LC23(%rip), %r11
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
	movq	.LC22(%rip), %rdx
	vmovq	%rdx, %xmm0
	call	pow
	vcvttsd2sil	%xmm0, %ecx
	movq	.LC23(%rip), %rsi
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
	movq	.LC22(%rip), %r9
	vmovq	%r9, %xmm0
	call	pow
	vcvttsd2sil	%xmm0, %r10d
	movq	.LC23(%rip), %rax
	vmovq	%rax, %xmm0
	testl	%r10d, %r10d
	leal	63(%r10), %r11d
	cmovns	%r10d, %r11d
	addl	$4, %ebx
	andl	$-64, %r11d
	movslq	%r11d, %rdi
	call	sum_reduction
	cmpl	$36, %ebx
	jne	.L90
	addq	$1040, %rsp
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE26:
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
	.long	1083129856
	.align 8
.LC13:
	.long	0
	.long	1075838976
	.align 8
.LC14:
	.long	0
	.long	1062207488
	.align 8
.LC15:
	.long	0
	.long	1069547520
	.align 8
.LC16:
	.long	2696277389
	.long	1051772663
	.align 8
.LC19:
	.long	0
	.long	1104006501
	.align 8
.LC22:
	.long	3435973837
	.long	1073007820
	.align 8
.LC23:
	.long	981314128
	.long	1072935710
	.ident	"GCC: (GNU) 9.1.0"
	.section	.note.GNU-stack,"",@progbits
