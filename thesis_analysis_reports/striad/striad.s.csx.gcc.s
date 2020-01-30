	.file	"striad.c"
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
.LC22:
	.string	"%12.1f | %11.8f | %9.3f | %7.2f | %7.1f | %7.1f | %6d | %4ld \n"
	.text
	.p2align 4
	.globl	striad
	.type	striad, @function
striad:
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
	leaq	0(,%rdi,8), %r15
	movq	%r15, %rsi
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
	movq	%rdi, %rbx
	movl	$64, %edi
	subq	$1120, %rsp
	call	aligned_alloc
	movq	%r15, %rsi
	movl	$64, %edi
	movq	%rax, %r12
	call	aligned_alloc
	movq	%r15, %rsi
	movl	$64, %edi
	movq	%rax, %r13
	call	aligned_alloc
	movq	%r15, %rsi
	movl	$64, %edi
	movq	%rax, %r14
	call	aligned_alloc
	movq	%rax, %r15
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
	vmovapd	.LC8(%rip), %ymm2
	vmovapd	.LC9(%rip), %ymm1
	vmovapd	.LC10(%rip), %ymm0
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
	vmovupd	%ymm2, 0(%r13,%rsi)
	vmovupd	%ymm1, (%r14,%rsi)
	vmovupd	%ymm0, (%r15,%rsi)
	addq	$32, %rsi
.L77:
	vmovupd	%ymm2, 0(%r13,%rsi)
	vmovupd	%ymm1, (%r14,%rsi)
	vmovupd	%ymm0, (%r15,%rsi)
	addq	$32, %rsi
.L76:
	vmovupd	%ymm2, 0(%r13,%rsi)
	vmovupd	%ymm1, (%r14,%rsi)
	vmovupd	%ymm0, (%r15,%rsi)
	addq	$32, %rsi
.L75:
	vmovupd	%ymm2, 0(%r13,%rsi)
	vmovupd	%ymm1, (%r14,%rsi)
	vmovupd	%ymm0, (%r15,%rsi)
	addq	$32, %rsi
.L74:
	vmovupd	%ymm2, 0(%r13,%rsi)
	vmovupd	%ymm1, (%r14,%rsi)
	vmovupd	%ymm0, (%r15,%rsi)
	addq	$32, %rsi
.L73:
	vmovupd	%ymm2, 0(%r13,%rsi)
	vmovupd	%ymm1, (%r14,%rsi)
	vmovupd	%ymm0, (%r15,%rsi)
	addq	$32, %rsi
	cmpq	%rsi, %rcx
	je	.L103
.L13:
	vmovupd	%ymm2, 0(%r13,%rsi)
	vmovupd	%ymm1, (%r14,%rsi)
	vmovupd	%ymm0, (%r15,%rsi)
	vmovupd	%ymm2, 32(%r13,%rsi)
	vmovupd	%ymm1, 32(%r14,%rsi)
	vmovupd	%ymm0, 32(%r15,%rsi)
	vmovupd	%ymm2, 64(%r13,%rsi)
	vmovupd	%ymm1, 64(%r14,%rsi)
	vmovupd	%ymm0, 64(%r15,%rsi)
	vmovupd	%ymm2, 96(%r13,%rsi)
	vmovupd	%ymm1, 96(%r14,%rsi)
	vmovupd	%ymm0, 96(%r15,%rsi)
	vmovupd	%ymm2, 128(%r13,%rsi)
	vmovupd	%ymm1, 128(%r14,%rsi)
	vmovupd	%ymm0, 128(%r15,%rsi)
	vmovupd	%ymm2, 160(%r13,%rsi)
	vmovupd	%ymm1, 160(%r14,%rsi)
	vmovupd	%ymm0, 160(%r15,%rsi)
	vmovupd	%ymm2, 192(%r13,%rsi)
	vmovupd	%ymm1, 192(%r14,%rsi)
	vmovupd	%ymm0, 192(%r15,%rsi)
	vmovupd	%ymm2, 224(%r13,%rsi)
	vmovupd	%ymm1, 224(%r14,%rsi)
	vmovupd	%ymm0, 224(%r15,%rsi)
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
	vmovsd	.LC11(%rip), %xmm3
	vmovsd	.LC12(%rip), %xmm4
	vmovsd	.LC13(%rip), %xmm5
	leal	1(%rax), %r9d
	movslq	%eax, %r8
	movslq	%r9d, %r11
	vmovsd	%xmm3, 0(%r13,%r8,8)
	vmovsd	%xmm4, (%r14,%r8,8)
	vmovsd	%xmm5, (%r15,%r8,8)
	cmpq	%r11, %rbx
	jle	.L11
	addl	$2, %eax
	cltq
	vmovsd	%xmm3, 0(%r13,%r11,8)
	vmovsd	%xmm4, (%r14,%r11,8)
	vmovsd	%xmm5, (%r15,%r11,8)
	cmpq	%rax, %rbx
	jle	.L11
	vmovsd	%xmm3, 0(%r13,%rax,8)
	vmovsd	%xmm4, (%r14,%rax,8)
	vmovsd	%xmm5, (%r15,%rax,8)
.L11:
	movq	%rbx, %rdi
	shrq	$2, %rdi
	movq	%rbx, %r10
	salq	$5, %rdi
	andq	$-4, %r10
	movl	$1, %ecx
	.p2align 4,,10
	.p2align 3
.L22:
	movq	%rdi, -1120(%rbp)
	leaq	-1088(%rbp), %rsi
	leaq	-1104(%rbp), %rdi
	movq	%r10, -1136(%rbp)
	movl	%ecx, -1124(%rbp)
	call	timing
	movq	-1136(%rbp), %r10
	movl	-1124(%rbp), %edi
	movq	-1120(%rbp), %r8
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L21:
	vxorpd	%xmm6, %xmm6, %xmm6
	vcomisd	(%r12), %xmm6
	ja	.L108
.L15:
	testq	%rbx, %rbx
	jle	.L17
	xorl	%eax, %eax
	cmpq	$2, -1112(%rbp)
	jbe	.L18
	leaq	-32(%r8), %rdx
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
	vmovupd	(%r15), %ymm8
	vmovupd	0(%r13), %ymm7
	movl	$32, %eax
	vfmadd132pd	(%r14), %ymm7, %ymm8
	vmovupd	%ymm8, (%r12)
.L84:
	vmovupd	(%r15,%rax), %ymm9
	vmovupd	0(%r13,%rax), %ymm10
	vfmadd132pd	(%r14,%rax), %ymm10, %ymm9
	vmovupd	%ymm9, (%r12,%rax)
	addq	$32, %rax
.L83:
	vmovupd	(%r15,%rax), %ymm11
	vmovupd	0(%r13,%rax), %ymm12
	vfmadd132pd	(%r14,%rax), %ymm12, %ymm11
	vmovupd	%ymm11, (%r12,%rax)
	addq	$32, %rax
.L82:
	vmovupd	(%r15,%rax), %ymm13
	vmovupd	0(%r13,%rax), %ymm14
	vfmadd132pd	(%r14,%rax), %ymm14, %ymm13
	vmovupd	%ymm13, (%r12,%rax)
	addq	$32, %rax
.L81:
	vmovupd	(%r15,%rax), %ymm15
	vmovupd	0(%r13,%rax), %ymm2
	vfmadd132pd	(%r14,%rax), %ymm2, %ymm15
	vmovupd	%ymm15, (%r12,%rax)
	addq	$32, %rax
.L80:
	vmovupd	(%r15,%rax), %ymm1
	vmovupd	0(%r13,%rax), %ymm0
	vfmadd132pd	(%r14,%rax), %ymm0, %ymm1
	vmovupd	%ymm1, (%r12,%rax)
	addq	$32, %rax
.L79:
	vmovupd	(%r15,%rax), %ymm3
	vmovupd	0(%r13,%rax), %ymm4
	vfmadd132pd	(%r14,%rax), %ymm4, %ymm3
	vmovupd	%ymm3, (%r12,%rax)
	addq	$32, %rax
	cmpq	%rax, %r8
	je	.L102
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
# LLVM-MCA-BEGIN
.L19:
	vmovupd	(%r15,%rax), %ymm5
	vmovupd	0(%r13,%rax), %ymm6
	vmovupd	32(%r15,%rax), %ymm8
	vmovupd	32(%r13,%rax), %ymm7
	vmovupd	64(%r15,%rax), %ymm9
	vmovupd	64(%r13,%rax), %ymm10
	vmovupd	96(%r15,%rax), %ymm11
	vmovupd	96(%r13,%rax), %ymm12
	vmovupd	128(%r15,%rax), %ymm13
	vmovupd	128(%r13,%rax), %ymm14
	vmovupd	160(%r15,%rax), %ymm15
	vmovupd	160(%r13,%rax), %ymm2
	vmovupd	192(%r15,%rax), %ymm0
	vmovupd	192(%r13,%rax), %ymm1
	vmovupd	224(%r15,%rax), %ymm3
	vmovupd	224(%r13,%rax), %ymm4
	vfmadd132pd	(%r14,%rax), %ymm6, %ymm5
	vfmadd132pd	32(%r14,%rax), %ymm7, %ymm8
	vfmadd132pd	64(%r14,%rax), %ymm10, %ymm9
	vfmadd132pd	96(%r14,%rax), %ymm12, %ymm11
	vfmadd132pd	128(%r14,%rax), %ymm14, %ymm13
	vfmadd132pd	160(%r14,%rax), %ymm2, %ymm15
	vfmadd132pd	192(%r14,%rax), %ymm1, %ymm0
	vfmadd132pd	224(%r14,%rax), %ymm4, %ymm3
	vmovupd	%ymm5, (%r12,%rax)
	vmovupd	%ymm8, 32(%r12,%rax)
	vmovupd	%ymm9, 64(%r12,%rax)
	vmovupd	%ymm11, 96(%r12,%rax)
	vmovupd	%ymm13, 128(%r12,%rax)
	vmovupd	%ymm15, 160(%r12,%rax)
	vmovupd	%ymm0, 192(%r12,%rax)
	vmovupd	%ymm3, 224(%r12,%rax)
	addq	$256, %rax
	cmpq	%rax, %r8
	jne	.L19
# LLVM-MCA-END
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L102:
	cmpq	%r10, %rbx
	je	.L17
	movq	%r10, %rax
.L18:
	vmovsd	(%r14,%rax,8), %xmm5
	vmovsd	0(%r13,%rax,8), %xmm6
	leaq	0(,%rax,8), %r9
	vfmadd132sd	(%r15,%rax,8), %xmm6, %xmm5
	leaq	1(%rax), %rsi
	vmovsd	%xmm5, (%r12,%r9)
	cmpq	%rbx, %rsi
	jge	.L17
	vmovsd	8(%r14,%r9), %xmm8
	vmovsd	8(%r13,%r9), %xmm7
	addq	$2, %rax
	vfmadd132sd	8(%r15,%r9), %xmm7, %xmm8
	vmovsd	%xmm8, 8(%r12,%r9)
	cmpq	%rax, %rbx
	jle	.L17
	vmovsd	16(%r15,%r9), %xmm9
	vmovsd	16(%r13,%r9), %xmm10
	vfmadd132sd	16(%r14,%r9), %xmm10, %xmm9
	vmovsd	%xmm9, 16(%r12,%r9)
.L17:
	incl	%ecx
	cmpl	%edi, %ecx
	jne	.L21
	leaq	-1088(%rbp), %rsi
	leaq	-1096(%rbp), %rdi
	movq	%r10, -1136(%rbp)
	movl	%ecx, -1124(%rbp)
	movq	%r8, -1120(%rbp)
	vzeroupper
	call	timing
	vmovsd	-1096(%rbp), %xmm11
	vmovsd	.LC15(%rip), %xmm13
	vsubsd	-1104(%rbp), %xmm11, %xmm12
	movl	-1124(%rbp), %r11d
	movq	-1120(%rbp), %rdi
	vcomisd	%xmm12, %xmm13
	movq	-1136(%rbp), %r10
	leal	(%r11,%r11), %ecx
	ja	.L22
	movl	%ecx, %r11d
	sarl	%r11d
	leaq	-1072(%rbp), %rdi
	movl	$1024, %esi
	movl	%r11d, -1112(%rbp)
	vmovsd	%xmm12, -1120(%rbp)
	call	gethostname
	leaq	-1080(%rbp), %rsi
	leaq	-1072(%rbp), %rdi
	call	getFreq
	vxorps	%xmm14, %xmm14, %xmm14
	vcvtsi2sdq	-1080(%rbp), %xmm14, %xmm3
	vmovsd	-1120(%rbp), %xmm1
	vmovsd	.LC16(%rip), %xmm0
	movslq	-1112(%rbp), %rdx
	vdivsd	%xmm1, %xmm0, %xmm6
	vmulsd	.LC19(%rip), %xmm3, %xmm7
	vcvtsi2sdl	%edx, %xmm14, %xmm2
	movq	%rdx, %rsi
	imulq	%rbx, %rdx
	vcvtsi2sdq	%rbx, %xmm14, %xmm15
	vmulsd	%xmm1, %xmm7, %xmm9
	vcvtsi2sdq	%rdx, %xmm14, %xmm10
	movl	$.LC22, %edi
	vmulsd	%xmm15, %xmm2, %xmm8
	vmulsd	.LC21(%rip), %xmm15, %xmm0
	movq	%rbx, %rdx
	movl	$6, %eax
	vdivsd	%xmm10, %xmm9, %xmm3
	vmulsd	.LC17(%rip), %xmm6, %xmm5
	vmulsd	.LC18(%rip), %xmm6, %xmm4
	vmulsd	.LC20(%rip), %xmm6, %xmm11
	vmulsd	%xmm8, %xmm5, %xmm5
	vmulsd	%xmm8, %xmm4, %xmm4
	vmulsd	%xmm8, %xmm11, %xmm2
	call	printf
	movq	%r12, %rdi
	call	free
	movq	%r13, %rdi
	call	free
	movq	%r14, %rdi
	call	free
	movq	%r15, %rdi
	call	free
	addq	$1120, %rsp
	popq	%rbx
	popq	%r8
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r8), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L108:
	.cfi_restore_state
	movl	%edi, -1124(%rbp)
	movq	%r12, %rdi
	movq	%r10, -1144(%rbp)
	movl	%ecx, -1136(%rbp)
	movq	%r8, -1120(%rbp)
	vzeroupper
	call	dummy
	movq	-1144(%rbp), %r10
	movl	-1136(%rbp), %ecx
	movl	-1124(%rbp), %edi
	movq	-1120(%rbp), %r8
	jmp	.L15
.L107:
	vzeroupper
	jmp	.L11
.L106:
	vmovupd	%ymm2, 0(%r13)
	vmovupd	%ymm1, (%r14)
	vmovupd	%ymm0, (%r15)
	movl	$32, %esi
	jmp	.L78
.L23:
	xorl	%eax, %eax
	jmp	.L12
	.cfi_endproc
.LFE34:
	.size	striad, .-striad
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"SCHOENAUER TRIAD a[i] = b[i] + c[i] * d[i], 24 byte/it, 2 Flop/it\n"
	.align 8
.LC25:
	.string	"Checking for %s. Frequency *must* be set to %4.2f GHz for valid cy/CL.\n"
	.align 8
.LC26:
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
	movl	$.LC23, %edi
	xorl	%eax, %eax
	call	printf
	vxorpd	%xmm3, %xmm3, %xmm3
	vcvtsi2sdq	8(%rsp), %xmm3, %xmm0
	leaq	16(%rsp), %rsi
	movl	$.LC25, %edi
	movl	$1, %eax
	vmulsd	.LC24(%rip), %xmm0, %xmm0
	call	printf
	movl	$.LC26, %edi
	xorl	%eax, %eax
	call	printf
.L110:
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtsi2sdl	%ebx, %xmm2, %xmm1
	movq	.LC27(%rip), %rax
	vmovq	%rax, %xmm0
	call	__pow_finite
	vcvttsd2sil	%xmm0, %edx
	testl	%edx, %edx
	leal	63(%rdx), %edi
	cmovns	%edx, %edi
	andl	$-64, %edi
	movslq	%edi, %rdi
	call	striad
	leal	1(%rbx), %ecx
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdl	%ecx, %xmm1, %xmm1
	movq	.LC27(%rip), %rsi
	vmovq	%rsi, %xmm0
	call	__pow_finite
	vcvttsd2sil	%xmm0, %r8d
	testl	%r8d, %r8d
	leal	63(%r8), %r9d
	cmovns	%r8d, %r9d
	andl	$-64, %r9d
	movslq	%r9d, %rdi
	call	striad
	leal	2(%rbx), %r10d
	vxorpd	%xmm4, %xmm4, %xmm4
	vcvtsi2sdl	%r10d, %xmm4, %xmm1
	movq	.LC27(%rip), %r11
	vmovq	%r11, %xmm0
	call	__pow_finite
	vcvttsd2sil	%xmm0, %eax
	testl	%eax, %eax
	leal	63(%rax), %edx
	cmovns	%eax, %edx
	andl	$-64, %edx
	movslq	%edx, %rdi
	call	striad
	leal	3(%rbx), %edi
	vxorpd	%xmm5, %xmm5, %xmm5
	vcvtsi2sdl	%edi, %xmm5, %xmm1
	movq	.LC27(%rip), %rcx
	vmovq	%rcx, %xmm0
	call	__pow_finite
	vcvttsd2sil	%xmm0, %esi
	testl	%esi, %esi
	leal	63(%rsi), %r8d
	cmovns	%esi, %r8d
	addl	$4, %ebx
	andl	$-64, %r8d
	movslq	%r8d, %rdi
	call	striad
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
	.align 32
.LC10:
	.long	619800931
	.long	1057026584
	.long	619800931
	.long	1057026584
	.long	619800931
	.long	1057026584
	.long	619800931
	.long	1057026584
	.section	.rodata.cst8
	.align 8
.LC11:
	.long	1907715710
	.long	1048610426
	.align 8
.LC12:
	.long	1524087310
	.long	1055485069
	.align 8
.LC13:
	.long	619800931
	.long	1057026584
	.align 8
.LC15:
	.long	2576980378
	.long	1070176665
	.align 8
.LC16:
	.long	0
	.long	1072693248
	.align 8
.LC17:
	.long	2696277389
	.long	1051772663
	.align 8
.LC18:
	.long	0
	.long	1056440320
	.align 8
.LC19:
	.long	0
	.long	1075838976
	.align 8
.LC20:
	.long	2696277389
	.long	1052821239
	.align 8
.LC21:
	.long	3539053052
	.long	1065378381
	.align 8
.LC24:
	.long	3894859413
	.long	1041313291
	.align 8
.LC27:
	.long	3435973837
	.long	1073007820
	.ident	"GCC: (GNU) 9.1.0"
	.section	.note.GNU-stack,"",@progbits
