	.file	"triad.c"
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
.LC20:
	.string	"%12.1f | %11.8f | %9.3f | %7.2f | %7.1f | %7.1f | %6d | %4ld \n"
	.text
	.p2align 4
	.globl	triad
	.type	triad, @function
triad:
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
	subq	$1120, %rsp
	vmovsd	%xmm0, -1112(%rbp)
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
	leaq	-1(%rbx), %rax
	vmovsd	-1112(%rbp), %xmm12
	movq	%rax, -1112(%rbp)
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
	vmovsd	.LC10(%rip), %xmm3
	vmovsd	.LC11(%rip), %xmm4
	leal	1(%rax), %r9d
	movslq	%eax, %r8
	movslq	%r9d, %r11
	vmovsd	%xmm3, 0(%r13,%r8,8)
	vmovsd	%xmm4, (%r14,%r8,8)
	cmpq	%r11, %rbx
	jle	.L11
	addl	$2, %eax
	cltq
	vmovsd	%xmm3, 0(%r13,%r11,8)
	vmovsd	%xmm4, (%r14,%r11,8)
	cmpq	%rax, %rbx
	jle	.L11
	vmovsd	%xmm3, 0(%r13,%rax,8)
	vmovsd	%xmm4, (%r14,%rax,8)
.L11:
	movq	%rbx, %r15
	shrq	$2, %r15
	movq	%rbx, %rdi
	salq	$5, %r15
	andq	$-4, %rdi
	movl	$1, %r11d
	.p2align 4,,10
	.p2align 3
.L22:
	movq	%rdi, -1136(%rbp)
	leaq	-1088(%rbp), %rsi
	leaq	-1104(%rbp), %rdi
	movq	%r15, -1120(%rbp)
	movl	%r11d, -1128(%rbp)
	vmovsd	%xmm12, -1144(%rbp)
	call	timing
	vmovsd	-1144(%rbp), %xmm2
	movq	-1136(%rbp), %rdi
	movl	-1128(%rbp), %r10d
	movq	-1120(%rbp), %rcx
	xorl	%r15d, %r15d
	.p2align 4,,10
	.p2align 3
.L21:
	vxorpd	%xmm5, %xmm5, %xmm5
	vcomisd	(%r12), %xmm5
	ja	.L108
.L15:
	testq	%rbx, %rbx
	jle	.L17
	cmpq	$2, -1112(%rbp)
	jbe	.L24
	leaq	-32(%rcx), %rdx
	shrq	$5, %rdx
	incq	%rdx
	vbroadcastsd	%xmm2, %ymm6
	xorl	%esi, %esi
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
	vmovupd	(%r14), %ymm7
	movl	$32, %esi
	vfmadd213pd	0(%r13), %ymm6, %ymm7
	vmovupd	%ymm7, (%r12)
.L84:
	vmovupd	(%r14,%rsi), %ymm8
	vfmadd213pd	0(%r13,%rsi), %ymm6, %ymm8
	vmovupd	%ymm8, (%r12,%rsi)
	addq	$32, %rsi
.L83:
	vmovupd	(%r14,%rsi), %ymm9
	vfmadd213pd	0(%r13,%rsi), %ymm6, %ymm9
	vmovupd	%ymm9, (%r12,%rsi)
	addq	$32, %rsi
.L82:
	vmovupd	(%r14,%rsi), %ymm10
	vfmadd213pd	0(%r13,%rsi), %ymm6, %ymm10
	vmovupd	%ymm10, (%r12,%rsi)
	addq	$32, %rsi
.L81:
	vmovupd	(%r14,%rsi), %ymm11
	vfmadd213pd	0(%r13,%rsi), %ymm6, %ymm11
	vmovupd	%ymm11, (%r12,%rsi)
	addq	$32, %rsi
.L80:
	vmovupd	(%r14,%rsi), %ymm12
	vfmadd213pd	0(%r13,%rsi), %ymm6, %ymm12
	vmovupd	%ymm12, (%r12,%rsi)
	addq	$32, %rsi
.L79:
	vmovupd	(%r14,%rsi), %ymm13
	vfmadd213pd	0(%r13,%rsi), %ymm6, %ymm13
	vmovupd	%ymm13, (%r12,%rsi)
	addq	$32, %rsi
	cmpq	%rsi, %rcx
	je	.L102
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
# LLVM-MCA-BEGIN
.L19:
	vmovupd	(%r14,%rsi), %ymm14
	vmovupd	32(%r14,%rsi), %ymm15
	vmovupd	64(%r14,%rsi), %ymm1
	vmovupd	96(%r14,%rsi), %ymm0
	vmovupd	128(%r14,%rsi), %ymm3
	vmovupd	160(%r14,%rsi), %ymm4
	vmovupd	192(%r14,%rsi), %ymm5
	vmovupd	224(%r14,%rsi), %ymm7
	vfmadd213pd	0(%r13,%rsi), %ymm6, %ymm14
	vfmadd213pd	32(%r13,%rsi), %ymm6, %ymm15
	vfmadd213pd	64(%r13,%rsi), %ymm6, %ymm1
	vfmadd213pd	96(%r13,%rsi), %ymm6, %ymm0
	vfmadd213pd	128(%r13,%rsi), %ymm6, %ymm3
	vfmadd213pd	160(%r13,%rsi), %ymm6, %ymm4
	vfmadd213pd	192(%r13,%rsi), %ymm6, %ymm5
	vfmadd213pd	224(%r13,%rsi), %ymm6, %ymm7
	vmovupd	%ymm14, (%r12,%rsi)
	vmovupd	%ymm15, 32(%r12,%rsi)
	vmovupd	%ymm1, 64(%r12,%rsi)
	vmovupd	%ymm0, 96(%r12,%rsi)
	vmovupd	%ymm3, 128(%r12,%rsi)
	vmovupd	%ymm4, 160(%r12,%rsi)
	vmovupd	%ymm5, 192(%r12,%rsi)
	vmovupd	%ymm7, 224(%r12,%rsi)
	addq	$256, %rsi
	cmpq	%rsi, %rcx
	jne	.L19
# LLVM-MCA-END
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L102:
	movq	%rdi, %rax
	cmpq	%rdi, %rbx
	je	.L17
.L18:
	vmovsd	(%r14,%rax,8), %xmm6
	leaq	0(,%rax,8), %r8
	vfmadd213sd	0(%r13,%rax,8), %xmm2, %xmm6
	leaq	1(%rax), %r9
	vmovsd	%xmm6, (%r12,%r8)
	cmpq	%rbx, %r9
	jge	.L17
	vmovsd	8(%r14,%r8), %xmm8
	addq	$2, %rax
	vfmadd213sd	8(%r13,%r8), %xmm2, %xmm8
	vmovsd	%xmm8, 8(%r12,%r8)
	cmpq	%rax, %rbx
	jle	.L17
	vmovsd	16(%r14,%r8), %xmm9
	vfmadd213sd	16(%r13,%r8), %xmm2, %xmm9
	vmovsd	%xmm9, 16(%r12,%r8)
.L17:
	incl	%r15d
	cmpl	%r10d, %r15d
	jne	.L21
	movq	%rdi, -1128(%rbp)
	leaq	-1088(%rbp), %rsi
	leaq	-1096(%rbp), %rdi
	movq	%rcx, -1120(%rbp)
	vmovsd	%xmm2, -1136(%rbp)
	vzeroupper
	call	timing
	vmovsd	-1096(%rbp), %xmm2
	vmovsd	.LC13(%rip), %xmm11
	vsubsd	-1104(%rbp), %xmm2, %xmm10
	leal	(%r15,%r15), %r11d
	movq	-1128(%rbp), %rdi
	vcomisd	%xmm10, %xmm11
	movq	-1120(%rbp), %r15
	vmovsd	-1136(%rbp), %xmm12
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
	vxorps	%xmm13, %xmm13, %xmm13
	vcvtsi2sdq	-1080(%rbp), %xmm13, %xmm3
	vmovsd	-1112(%rbp), %xmm1
	vmovsd	.LC14(%rip), %xmm0
	movslq	%r15d, %r10
	vdivsd	%xmm1, %xmm0, %xmm7
	vmulsd	.LC17(%rip), %xmm3, %xmm6
	imulq	%rbx, %r10
	vcvtsi2sdq	%rbx, %xmm13, %xmm14
	vcvtsi2sdl	%r15d, %xmm13, %xmm15
	vcvtsi2sdq	%r10, %xmm13, %xmm2
	vmulsd	%xmm1, %xmm6, %xmm9
	vmulsd	.LC19(%rip), %xmm14, %xmm0
	vmulsd	%xmm14, %xmm15, %xmm8
	movq	%rbx, %rdx
	movl	%r15d, %esi
	movl	$.LC20, %edi
	movl	$6, %eax
	vdivsd	%xmm2, %xmm9, %xmm3
	vmulsd	.LC15(%rip), %xmm7, %xmm5
	vmulsd	.LC16(%rip), %xmm7, %xmm4
	vmulsd	.LC18(%rip), %xmm7, %xmm10
	vmulsd	%xmm8, %xmm5, %xmm5
	vmulsd	%xmm8, %xmm4, %xmm4
	vmulsd	%xmm8, %xmm10, %xmm2
	call	printf
	movq	%r12, %rdi
	call	free
	movq	%r13, %rdi
	call	free
	movq	%r14, %rdi
	call	free
	addq	$1120, %rsp
	popq	%rbx
	popq	%rcx
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%rcx), %rsp
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
	vmovsd	%xmm2, -1144(%rbp)
	vzeroupper
	call	dummy
	vmovsd	-1144(%rbp), %xmm2
	movq	-1136(%rbp), %rdi
	movl	-1128(%rbp), %r10d
	movq	-1120(%rbp), %rcx
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L24:
	xorl	%eax, %eax
	jmp	.L18
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
	.size	triad, .-triad
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"TRIAD a[i] = b[i] + s * c[i], 16 byte/it, 2 Flop/it\n"
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
	vxorpd	%xmm3, %xmm3, %xmm3
	vcvtsi2sdq	8(%rsp), %xmm3, %xmm0
	leaq	16(%rsp), %rsi
	movl	$.LC23, %edi
	movl	$1, %eax
	vmulsd	.LC22(%rip), %xmm0, %xmm0
	call	printf
	movl	$.LC24, %edi
	xorl	%eax, %eax
	call	printf
.L110:
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtsi2sdl	%ebx, %xmm2, %xmm1
	movq	.LC25(%rip), %rax
	vmovq	%rax, %xmm0
	call	__pow_finite
	vcvttsd2sil	%xmm0, %edx
	movq	.LC26(%rip), %rcx
	vmovq	%rcx, %xmm0
	testl	%edx, %edx
	leal	63(%rdx), %edi
	cmovns	%edx, %edi
	andl	$-64, %edi
	movslq	%edi, %rdi
	call	triad
	leal	1(%rbx), %esi
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdl	%esi, %xmm1, %xmm1
	movq	.LC25(%rip), %r8
	vmovq	%r8, %xmm0
	call	__pow_finite
	vcvttsd2sil	%xmm0, %r9d
	movq	.LC26(%rip), %r11
	vmovq	%r11, %xmm0
	testl	%r9d, %r9d
	leal	63(%r9), %r10d
	cmovns	%r9d, %r10d
	andl	$-64, %r10d
	movslq	%r10d, %rdi
	call	triad
	leal	2(%rbx), %eax
	vxorpd	%xmm4, %xmm4, %xmm4
	vcvtsi2sdl	%eax, %xmm4, %xmm1
	movq	.LC25(%rip), %rdx
	vmovq	%rdx, %xmm0
	call	__pow_finite
	vcvttsd2sil	%xmm0, %ecx
	movq	.LC26(%rip), %rsi
	vmovq	%rsi, %xmm0
	testl	%ecx, %ecx
	leal	63(%rcx), %edi
	cmovns	%ecx, %edi
	andl	$-64, %edi
	movslq	%edi, %rdi
	call	triad
	leal	3(%rbx), %r8d
	vxorpd	%xmm5, %xmm5, %xmm5
	vcvtsi2sdl	%r8d, %xmm5, %xmm1
	movq	.LC25(%rip), %r9
	vmovq	%r9, %xmm0
	call	__pow_finite
	vcvttsd2sil	%xmm0, %r10d
	movq	.LC26(%rip), %rax
	vmovq	%rax, %xmm0
	testl	%r10d, %r10d
	leal	63(%r10), %r11d
	cmovns	%r10d, %r11d
	addl	$4, %ebx
	andl	$-64, %r11d
	movslq	%r11d, %rdi
	call	triad
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
