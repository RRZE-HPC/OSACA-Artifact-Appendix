	.arch armv8.1-a+crypto+crc
	.file	"sum_reduction.c"
	.text
	.align	2
	.p2align 4,,15
	.global	getFreq
	.type	getFreq, %function
getFreq:
.LFB33:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	adrp	x2, .LC0
	mov	x29, sp
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	mov	x21, x1
	add	x1, x2, :lo12:.LC0
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x20, x0
	bl	strcmp
	cbz	w0, .L8
	adrp	x1, .LC1
	mov	x0, x20
	add	x1, x1, :lo12:.LC1
	bl	strcmp
	mov	w19, w0
	cbz	w0, .L9
	adrp	x3, .LC2
	mov	x0, x20
	add	x1, x3, :lo12:.LC2
	bl	strcmp
	mov	w19, w0
	cbnz	w0, .L5
	fmov	d1, 9.0e+0
	fmov	d0, 1.0e+1
	bl	__pow_finite
	mov	x0, 7378697629483820646
	movk	x0, 0x4002, lsl 48
	fmov	d1, x0
	fmul	d0, d0, d1
	fcvtzs	d2, d0
	str	d2, [x21]
.L1:
	mov	w0, w19
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 3
.L8:
	.cfi_restore_state
	fmov	d1, 9.0e+0
	fmov	d0, 1.0e+1
	mov	w19, w0
	bl	__pow_finite
	fmov	d6, 2.5e+0
	mov	w0, w19
	ldp	x19, x20, [sp, 16]
	fmul	d7, d0, d6
	fcvtzs	d16, d7
	str	d16, [x21]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 3
.L9:
	.cfi_restore_state
	fmov	d1, 9.0e+0
	fmov	d0, 1.0e+1
	bl	__pow_finite
	adrp	x4, .LC3
	mov	w0, w19
	ldp	x19, x20, [sp, 16]
	ldr	d3, [x4, #:lo12:.LC3]
	fmul	d4, d0, d3
	fcvtzs	d5, d4
	str	d5, [x21]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 3
.L5:
	.cfi_restore_state
	mov	w19, -1
	b	.L1
	.cfi_endproc
.LFE33:
	.size	getFreq, .-getFreq
	.align	2
	.p2align 4,,15
	.global	sum_reduction
	.type	sum_reduction, %function
sum_reduction:
.LFB34:
	.cfi_startproc
	sub	sp, sp, #1152
	.cfi_def_cfa_offset 1152
	stp	x29, x30, [sp]
	.cfi_offset 29, -1152
	.cfi_offset 30, -1144
	mov	x29, sp
	stp	d8, d9, [sp, 64]
	.cfi_offset 72, -1088
	.cfi_offset 73, -1080
	fmov	d9, d0
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	.cfi_offset 19, -1136
	.cfi_offset 20, -1128
	.cfi_offset 21, -1120
	.cfi_offset 22, -1112
	mov	x21, x0
	mov	x0, 64
	lsl	x20, x21, 3
	mov	x1, x20
	stp	x23, x24, [sp, 48]
	str	d10, [sp, 80]
	.cfi_offset 23, -1104
	.cfi_offset 24, -1096
	.cfi_offset 74, -1072
	bl	aligned_alloc
	mov	x19, x0
	cmp	x21, 0
	ble	.L11
	sub	x2, x20, #8
	adrp	x1, .LC5
	add	x3, x20, x0
	lsr	x5, x2, 3
	ldr	x4, [x1, #:lo12:.LC5]
	add	x6, x5, 1
	ands	x7, x6, 7
	beq	.L12
	cmp	x7, 1
	beq	.L69
	cmp	x7, 2
	beq	.L70
	cmp	x7, 3
	beq	.L71
	cmp	x7, 4
	beq	.L72
	cmp	x7, 5
	beq	.L73
	cmp	x7, 6
	beq	.L74
	str	x4, [x0], 8
.L74:
	str	x4, [x0], 8
.L73:
	str	x4, [x0], 8
.L72:
	str	x4, [x0], 8
.L71:
	str	x4, [x0], 8
.L70:
	str	x4, [x0], 8
.L69:
	str	x4, [x0], 8
	cmp	x0, x3
	beq	.L11
.L12:
	mov	x8, x0
	str	x4, [x8], 8
	str	x4, [x0, 8]
	str	x4, [x8, 8]
	stp	x4, x4, [x0, 24]
	stp	x4, x4, [x0, 40]
	add	x0, x0, 64
	str	x4, [x0, -8]
	cmp	x0, x3
	bne	.L12
.L11:
	adrp	x9, .LC6
	lsr	x22, x21, 1
	and	x23, x21, -2
	ldr	d8, [x9, #:lo12:.LC6]
	add	x22, x19, x22, lsl 4
	mov	w24, 1
	.p2align 4
.L20:
	add	x1, sp, 112
	add	x0, sp, 96
	mov	w20, 0
	bl	timing
	.p2align 4
.L19:
	ldr	d0, [x19]
	fcmpe	d0, #0.0
	bmi	.L99
.L13:
	cmp	x21, 0
	ble	.L15
	cmp	x21, 1
	beq	.L21
	sub	x11, x22, x19
	mov	x16, x19
	movi	v1.2d, 0
	sub	x12, x11, #16
	lsr	x13, x12, 4
	add	x14, x13, 1
	ands	x15, x14, 7
	beq	.L17
	cmp	x15, 1
	beq	.L75
	cmp	x15, 2
	beq	.L76
	cmp	x15, 3
	beq	.L77
	cmp	x15, 4
	beq	.L78
	cmp	x15, 5
	beq	.L79
	cmp	x15, 6
	beq	.L80
	ldr	q1, [x16], 16
.L80:
	ldr	q2, [x16], 16
	fadd	v1.2d, v1.2d, v2.2d
.L79:
	ldr	q3, [x16], 16
	fadd	v1.2d, v1.2d, v3.2d
.L78:
	ldr	q4, [x16], 16
	fadd	v1.2d, v1.2d, v4.2d
.L77:
	ldr	q5, [x16], 16
	fadd	v1.2d, v1.2d, v5.2d
.L76:
	ldr	q6, [x16], 16
	fadd	v1.2d, v1.2d, v6.2d
.L75:
	ldr	q7, [x16], 16
	fadd	v1.2d, v1.2d, v7.2d
	cmp	x22, x16
	beq	.L97
    # LLVM-MCA-BEGIN
    // OSACA-BEGIN
.L17:
	mov	x17, x16
	ldr	q10, [x17], 16
	ldr	q16, [x16, 16]
	add	x16, x16, 128
	ldr	q17, [x16, -80]
	ldr	q18, [x16, -64]
	ldr	q19, [x16, -48]
	ldr	q20, [x16, -32]
	ldr	q21, [x16, -16]
	fadd	v22.2d, v1.2d, v10.2d
	ldr	q23, [x17, 16]
	fadd	v24.2d, v22.2d, v16.2d
	fadd	v25.2d, v24.2d, v23.2d
	fadd	v26.2d, v25.2d, v17.2d
	fadd	v27.2d, v26.2d, v18.2d
	fadd	v28.2d, v27.2d, v19.2d
	fadd	v29.2d, v28.2d, v20.2d
	fadd	v1.2d, v29.2d, v21.2d
	cmp	x22, x16
	bne	.L17
    // OSACA-END
    # LLVM-MCA-END
.L97:
	faddp	d30, v1.2d
	mov	x10, x23
	fadd	d9, d9, d30
	cmp	x21, x23
	beq	.L15
.L16:
	ldr	d31, [x19, x10, lsl 3]
	fadd	d9, d9, d31
.L15:
	add	w20, w20, 1
	cmp	w20, w24
	bne	.L19
	add	x1, sp, 112
	add	x0, sp, 104
	lsl	w24, w20, 1
	bl	timing
	ldp	d0, d2, [sp, 96]
	str	d9, [x19]
	fsub	d10, d2, d0
	fcmpe	d10, d8
	bmi	.L20
	mov	x1, 1024
	add	x0, sp, 128
	asr	w23, w24, 1
	bl	gethostname
	add	x1, sp, 120
	add	x0, sp, 128
	bl	getFreq
	fmov	d6, 1.0e+0
	ldr	d21, [sp, 120]
	fmov	d3, 8.0e+0
	sxtw	x18, w23
	mul	x3, x18, x21
	scvtf	d8, x21
	scvtf	d4, w23
	adrp	x2, .LC7
	ldr	d5, [x2, #:lo12:.LC7]
	mov	x1, 4530621225134718976
	adrp	x4, .LC8
	fmov	d1, d10
	fmov	d7, x1
	ldr	d16, [x4, #:lo12:.LC8]
	adrp	x5, .LC4
	mov	w1, w23
	fdiv	d17, d6, d10
	add	x0, x5, :lo12:.LC4
	mov	x2, x21
	scvtf	d22, d21
	fmul	d23, d22, d3
	scvtf	d24, x3
	fmul	d18, d4, d8
	fmul	d0, d8, d16
	fmul	d25, d23, d10
	fdiv	d3, d25, d24
	fmul	d19, d17, d5
	fmul	d20, d17, d7
	fmul	d5, d19, d18
	fmul	d4, d20, d18
	fmov	d2, d5
	bl	printf
	mov	x0, x19
	bl	free
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp]
	ldp	x23, x24, [sp, 48]
	ldp	d8, d9, [sp, 64]
	ldr	d10, [sp, 80]
	add	sp, sp, 1152
	.cfi_remember_state
	.cfi_restore 74
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 3
.L99:
	.cfi_restore_state
	mov	x0, x19
	bl	dummy
	b	.L13
	.p2align 3
.L21:
	mov	x10, 0
	b	.L16
	.cfi_endproc
.LFE34:
	.size	sum_reduction, .-sum_reduction
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,15
	.global	main
	.type	main, %function
main:
.LFB35:
	.cfi_startproc
	sub	sp, sp, #1088
	.cfi_def_cfa_offset 1088
	adrp	x2, .LC13
	adrp	x0, .LC12
	stp	x29, x30, [sp]
	.cfi_offset 29, -1088
	.cfi_offset 30, -1080
	mov	x29, sp
	mov	x1, 1024
	stp	d8, d9, [sp, 32]
	.cfi_offset 72, -1056
	.cfi_offset 73, -1048
	ldr	d9, [x0, #:lo12:.LC12]
	add	x0, sp, 64
	ldr	d8, [x2, #:lo12:.LC13]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -1072
	.cfi_offset 20, -1064
	mov	w19, 20
	bl	gethostname
	add	x1, sp, 56
	add	x0, sp, 64
	bl	getFreq
	adrp	x1, .LC9
	add	x0, x1, :lo12:.LC9
	bl	printf
	adrp	x3, .LC14
	ldr	d0, [sp, 56]
	adrp	x4, .LC10
	ldr	d1, [x3, #:lo12:.LC14]
	add	x0, x4, :lo12:.LC10
	add	x1, sp, 64
	scvtf	d2, d0
	fmul	d0, d2, d1
	bl	printf
	adrp	x5, .LC11
	add	x0, x5, :lo12:.LC11
	bl	printf
.L101:
	scvtf	d1, w19
	fmov	d0, d9
	add	w20, w19, 1
	bl	__pow_finite
	fcvtzs	w6, d0
	fmov	d0, d8
	cmp	w6, 0
	add	w7, w6, 63
	csel	w8, w7, w6, lt
	and	w9, w8, -64
	sxtw	x0, w9
	bl	sum_reduction
	scvtf	d1, w20
	fmov	d0, d9
	bl	__pow_finite
	fcvtzs	w10, d0
	fmov	d0, d8
	cmp	w10, 0
	add	w11, w10, 63
	csel	w12, w11, w10, lt
	and	w13, w12, -64
	sxtw	x0, w13
	bl	sum_reduction
	add	w14, w20, 1
	fmov	d0, d9
	scvtf	d1, w14
	bl	__pow_finite
	fcvtzs	w15, d0
	fmov	d0, d8
	cmp	w15, 0
	add	w16, w15, 63
	csel	w17, w16, w15, lt
	and	w18, w17, -64
	sxtw	x0, w18
	bl	sum_reduction
	add	w0, w19, 3
	fmov	d0, d9
	add	w19, w19, 4
	scvtf	d1, w0
	bl	__pow_finite
	fcvtzs	w2, d0
	fmov	d0, d8
	cmp	w2, 0
	add	w1, w2, 63
	csel	w3, w1, w2, lt
	and	w4, w3, -64
	sxtw	x0, w4
	bl	sum_reduction
	cmp	w19, 36
	bne	.L101
	mov	w0, 0
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldp	d8, d9, [sp, 32]
	add	sp, sp, 1088
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE35:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LC3:
	.word	2576980378
	.word	1073846681
.LC5:
	.word	1907715710
	.word	1048610426
.LC6:
	.word	2576980378
	.word	1070176665
.LC7:
	.word	2696277389
	.word	1051772663
.LC8:
	.word	3539053052
	.word	1065378381
.LC12:
	.word	3435973837
	.word	1073007820
.LC13:
	.word	981314128
	.word	1072935710
.LC14:
	.word	3894859413
	.word	1041313291
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"casclakesp2"
	.zero	4
.LC1:
	.string	"warmup"
	.zero	1
.LC2:
	.string	"naples1"
.LC4:
	.string	"%12.1f | %11.8f | %9.3f | %7.2f | %7.1f | %7.1f | %6d | %4ld \n"
	.zero	1
.LC9:
	.string	"SUM REDUCTION s = s + a[i], 8 byte/it, 1 Flop/it\n"
	.zero	6
.LC10:
	.string	"Checking for %s. Frequency *must* be set to %4.2f GHz for valid cy/CL.\n"
.LC11:
	.string	"Size (KByte) |   runtime   |  MFlop/s  |  cy/CL  |  MB/s   |  MLUP/s | repeat | size\n"
	.ident	"GCC: (ARM-build-8) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
