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
	.globl	add
	.type	add, @function
add:
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
	pushq	%r14
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	leaq	0(,%rdi,8), %r14
	movq	%r14, %rsi
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rdi, %rbx
	movl	$64, %edi
	subq	$1088, %rsp
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
	leaq	-1(%rbx), %rax
	movq	%rax, -1112(%rbp)
	testq	%rbx, %rbx
	jle	.L11
	cmpq	$2, %rax
	jbe	.L23
	movq	%rbx, %rcx
	shrq	$2, %rcx
	salq	$5, %rcx
	leaq	-32(%rcx), %rdx
	shrq	$5, %rdx
	incq	%rdx
	vmovapd	.LC8(%rip), %ymm1
	vmovapd	.LC9(%rip), %ymm0
	xorl	%esi, %esi
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
	vmovupd	%ymm1, 0(%r13,%rsi)
	vmovupd	%ymm0, (%r14,%rsi)
	addq	$32, %rsi
.L77:
	vmovupd	%ymm1, 0(%r13,%rsi)
	vmovupd	%ymm0, (%r14,%rsi)
	addq	$32, %rsi
.L76:
	vmovupd	%ymm1, 0(%r13,%rsi)
	vmovupd	%ymm0, (%r14,%rsi)
	addq	$32, %rsi
.L75:
	vmovupd	%ymm1, 0(%r13,%rsi)
	vmovupd	%ymm0, (%r14,%rsi)
	addq	$32, %rsi
.L74:
	vmovupd	%ymm1, 0(%r13,%rsi)
	vmovupd	%ymm0, (%r14,%rsi)
	addq	$32, %rsi
.L73:
	vmovupd	%ymm1, 0(%r13,%rsi)
	vmovupd	%ymm0, (%r14,%rsi)
	addq	$32, %rsi
	cmpq	%rsi, %rcx
	je	.L103
.L13:
	vmovupd	%ymm1, 0(%r13,%rsi)
	vmovupd	%ymm0, (%r14,%rsi)
	vmovupd	%ymm1, 32(%r13,%rsi)
	vmovupd	%ymm0, 32(%r14,%rsi)
	vmovupd	%ymm1, 64(%r13,%rsi)
	vmovupd	%ymm0, 64(%r14,%rsi)
	vmovupd	%ymm1, 96(%r13,%rsi)
	vmovupd	%ymm0, 96(%r14,%rsi)
	vmovupd	%ymm1, 128(%r13,%rsi)
	vmovupd	%ymm0, 128(%r14,%rsi)
	vmovupd	%ymm1, 160(%r13,%rsi)
	vmovupd	%ymm0, 160(%r14,%rsi)
	vmovupd	%ymm1, 192(%r13,%rsi)
	vmovupd	%ymm0, 192(%r14,%rsi)
	vmovupd	%ymm1, 224(%r13,%rsi)
	vmovupd	%ymm0, 224(%r14,%rsi)
	addq	$256, %rsi
	cmpq	%rsi, %rcx
	jne	.L13
.L103:
	movq	%rbx, %rdi
	andq	$-4, %rdi
	movl	%edi, %eax
	cmpq	%rdi, %rbx
	je	.L107
	vzeroupper
.L12:
	vmovsd	.LC10(%rip), %xmm2
	vmovsd	.LC11(%rip), %xmm3
	leal	1(%rax), %r9d
	movslq	%eax, %r8
	movslq	%r9d, %r11
	vmovsd	%xmm2, 0(%r13,%r8,8)
	vmovsd	%xmm3, (%r14,%r8,8)
	cmpq	%r11, %rbx
	jle	.L11
	addl	$2, %eax
	cltq
	vmovsd	%xmm2, 0(%r13,%r11,8)
	vmovsd	%xmm3, (%r14,%r11,8)
	cmpq	%rax, %rbx
	jle	.L11
	vmovsd	%xmm2, 0(%r13,%rax,8)
	vmovsd	%xmm3, (%r14,%rax,8)
.L11:
	movq	%rbx, %r15
	shrq	$2, %r15
	movq	%rbx, %r9
	salq	$5, %r15
	andq	$-4, %r9
	movl	$1, %r11d
	.p2align 4,,10
	.p2align 3
.L22:
	leaq	-1104(%rbp), %rdi
	leaq	-1088(%rbp), %rsi
	movq	%r15, -1120(%rbp)
	movq	%r9, -1136(%rbp)
	movl	%r11d, -1128(%rbp)
	call	timing
	movq	-1136(%rbp), %rdi
	movl	-1128(%rbp), %r10d
	movq	-1120(%rbp), %rcx
	xorl	%r15d, %r15d
	.p2align 4,,10
	.p2align 3
.L21:
	vxorpd	%xmm7, %xmm7, %xmm7
	vcomisd	(%r12), %xmm7
	ja	.L108
.L15:
	testq	%rbx, %rbx
	jle	.L17
	xorl	%eax, %eax
	cmpq	$2, -1112(%rbp)
	jbe	.L18
	leaq	-32(%rcx), %rdx
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
	vmovupd	(%r14), %ymm4
	movl	$32, %eax
	vaddpd	0(%r13), %ymm4, %ymm5
	vmovupd	%ymm5, (%r12)
.L84:
	vmovupd	(%r14,%rax), %ymm6
	vaddpd	0(%r13,%rax), %ymm6, %ymm8
	vmovupd	%ymm8, (%r12,%rax)
	addq	$32, %rax
.L83:
	vmovupd	(%r14,%rax), %ymm9
	vaddpd	0(%r13,%rax), %ymm9, %ymm10
	vmovupd	%ymm10, (%r12,%rax)
	addq	$32, %rax
.L82:
	vmovupd	(%r14,%rax), %ymm11
	vaddpd	0(%r13,%rax), %ymm11, %ymm12
	vmovupd	%ymm12, (%r12,%rax)
	addq	$32, %rax
.L81:
	vmovupd	(%r14,%rax), %ymm13
	vaddpd	0(%r13,%rax), %ymm13, %ymm14
	vmovupd	%ymm14, (%r12,%rax)
	addq	$32, %rax
.L80:
	vmovupd	(%r14,%rax), %ymm15
	vaddpd	0(%r13,%rax), %ymm15, %ymm1
	vmovupd	%ymm1, (%r12,%rax)
	addq	$32, %rax
.L79:
	vmovupd	(%r14,%rax), %ymm0
	vaddpd	0(%r13,%rax), %ymm0, %ymm2
	vmovupd	%ymm2, (%r12,%rax)
	addq	$32, %rax
	cmpq	%rax, %rcx
	je	.L102
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
# LLVM-MCA-BEGIN
.L19:
	vmovupd	(%r14,%rax), %ymm3
	vmovupd	32(%r14,%rax), %ymm4
	vmovupd	64(%r14,%rax), %ymm6
	vmovupd	96(%r14,%rax), %ymm9
	vmovupd	128(%r14,%rax), %ymm11
	vmovupd	160(%r14,%rax), %ymm13
	vmovupd	192(%r14,%rax), %ymm15
	vmovupd	224(%r14,%rax), %ymm0
	vaddpd	0(%r13,%rax), %ymm3, %ymm7
	vaddpd	32(%r13,%rax), %ymm4, %ymm5
	vaddpd	64(%r13,%rax), %ymm6, %ymm8
	vaddpd	96(%r13,%rax), %ymm9, %ymm10
	vaddpd	128(%r13,%rax), %ymm11, %ymm12
	vaddpd	160(%r13,%rax), %ymm13, %ymm14
	vaddpd	192(%r13,%rax), %ymm15, %ymm1
	vaddpd	224(%r13,%rax), %ymm0, %ymm2
	vmovupd	%ymm7, (%r12,%rax)
	vmovupd	%ymm5, 32(%r12,%rax)
	vmovupd	%ymm8, 64(%r12,%rax)
	vmovupd	%ymm10, 96(%r12,%rax)
	vmovupd	%ymm12, 128(%r12,%rax)
	vmovupd	%ymm14, 160(%r12,%rax)
	vmovupd	%ymm1, 192(%r12,%rax)
	vmovupd	%ymm2, 224(%r12,%rax)
	addq	$256, %rax
	cmpq	%rax, %rcx
	jne	.L19
# LLVM-MCA-END
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L102:
	cmpq	%rdi, %rbx
	je	.L17
	movq	%rdi, %rax
.L18:
	vmovsd	0(%r13,%rax,8), %xmm3
	leaq	1(%rax), %rsi
	vaddsd	(%r14,%rax,8), %xmm3, %xmm7
	leaq	0(,%rax,8), %r8
	vmovsd	%xmm7, (%r12,%rax,8)
	cmpq	%rbx, %rsi
	jge	.L17
	vmovsd	8(%r13,%r8), %xmm4
	addq	$2, %rax
	vaddsd	8(%r14,%r8), %xmm4, %xmm5
	vmovsd	%xmm5, 8(%r12,%r8)
	cmpq	%rax, %rbx
	jle	.L17
	vmovsd	16(%r14,%r8), %xmm6
	vaddsd	16(%r13,%r8), %xmm6, %xmm8
	vmovsd	%xmm8, 16(%r12,%r8)
.L17:
	incl	%r15d
	cmpl	%r10d, %r15d
	jne	.L21
	movq	%rdi, -1128(%rbp)
	leaq	-1088(%rbp), %rsi
	leaq	-1096(%rbp), %rdi
	movq	%rcx, -1120(%rbp)
	vzeroupper
	call	timing
	vmovsd	-1096(%rbp), %xmm9
	vmovsd	.LC13(%rip), %xmm11
	vsubsd	-1104(%rbp), %xmm9, %xmm10
	leal	(%r15,%r15), %r11d
	movq	-1128(%rbp), %r9
	vcomisd	%xmm10, %xmm11
	movq	-1120(%rbp), %r15
	ja	.L22
	sarl	%r11d
	leaq	-1072(%rbp), %rdi
	movl	$1024, %esi
	movl	%r11d, %r15d
	vmovsd	%xmm10, -1112(%rbp)
	call	gethostname
	leaq	-1080(%rbp), %rsi
	leaq	-1072(%rbp), %rdi
	call	getFreq
	vxorps	%xmm12, %xmm12, %xmm12
	vcvtsi2sdq	%rbx, %xmm12, %xmm13
	vcvtsi2sdl	%r15d, %xmm12, %xmm14
	vcvtsi2sdq	-1080(%rbp), %xmm12, %xmm3
	movslq	%r15d, %rdi
	vmovsd	-1112(%rbp), %xmm1
	vmulsd	%xmm13, %xmm14, %xmm15
	vmulsd	.LC16(%rip), %xmm3, %xmm4
	imulq	%rbx, %rdi
	movq	%rbx, %rdx
	movl	%r15d, %esi
	vmulsd	.LC14(%rip), %xmm15, %xmm0
	vmulsd	%xmm1, %xmm4, %xmm8
	vmulsd	.LC15(%rip), %xmm15, %xmm7
	vcvtsi2sdq	%rdi, %xmm12, %xmm9
	movl	$6, %eax
	vdivsd	%xmm1, %xmm0, %xmm2
	vmulsd	.LC17(%rip), %xmm13, %xmm0
	movl	$.LC18, %edi
	vdivsd	%xmm1, %xmm7, %xmm4
	vmovapd	%xmm2, %xmm5
	vdivsd	%xmm9, %xmm8, %xmm3
	call	printf
	movq	%r12, %rdi
	call	free
	movq	%r13, %rdi
	call	free
	movq	%r14, %rdi
	call	free
	addq	$1088, %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L108:
	.cfi_restore_state
	movq	%rdi, -1136(%rbp)
	movq	%r12, %rdi
	movl	%r10d, -1128(%rbp)
	movq	%rcx, -1120(%rbp)
	vzeroupper
	call	dummy
	movq	-1136(%rbp), %rdi
	movl	-1128(%rbp), %r10d
	movq	-1120(%rbp), %rcx
	jmp	.L15
.L107:
	vzeroupper
	jmp	.L11
.L106:
	vmovupd	%ymm1, 0(%r13)
	vmovupd	%ymm0, (%r14)
	movl	$32, %esi
	jmp	.L78
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
	vxorpd	%xmm3, %xmm3, %xmm3
	vcvtsi2sdq	8(%rsp), %xmm3, %xmm0
	leaq	16(%rsp), %rsi
	movl	$.LC21, %edi
	movl	$1, %eax
	vmulsd	.LC20(%rip), %xmm0, %xmm0
	call	printf
	movl	$.LC22, %edi
	xorl	%eax, %eax
	call	printf
.L110:
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtsi2sdl	%ebx, %xmm2, %xmm1
	movq	.LC23(%rip), %rax
	vmovq	%rax, %xmm0
	call	__pow_finite
	vcvttsd2sil	%xmm0, %edx
	testl	%edx, %edx
	leal	63(%rdx), %edi
	cmovns	%edx, %edi
	andl	$-64, %edi
	movslq	%edi, %rdi
	call	add
	leal	1(%rbx), %ecx
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdl	%ecx, %xmm1, %xmm1
	movq	.LC23(%rip), %rsi
	vmovq	%rsi, %xmm0
	call	__pow_finite
	vcvttsd2sil	%xmm0, %r8d
	testl	%r8d, %r8d
	leal	63(%r8), %r9d
	cmovns	%r8d, %r9d
	andl	$-64, %r9d
	movslq	%r9d, %rdi
	call	add
	leal	2(%rbx), %r10d
	vxorpd	%xmm4, %xmm4, %xmm4
	vcvtsi2sdl	%r10d, %xmm4, %xmm1
	movq	.LC23(%rip), %r11
	vmovq	%r11, %xmm0
	call	__pow_finite
	vcvttsd2sil	%xmm0, %eax
	testl	%eax, %eax
	leal	63(%rax), %edx
	cmovns	%eax, %edx
	andl	$-64, %edx
	movslq	%edx, %rdi
	call	add
	leal	3(%rbx), %edi
	vxorpd	%xmm5, %xmm5, %xmm5
	vcvtsi2sdl	%edi, %xmm5, %xmm1
	movq	.LC23(%rip), %rcx
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
	.align 32
.LC9:
	.long	1524087310
	.long	1055485069
	.long	1524087310
	.long	1055485069
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
