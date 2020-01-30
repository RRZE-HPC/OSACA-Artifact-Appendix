	.arch armv8.1-a+crypto+crc
	.file	"update.c"
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
	.global	scale
	.type	scale, %function
scale:
.LFB34:
	.cfi_startproc
	sub	sp, sp, #1168
	.cfi_def_cfa_offset 1168
	stp	x29, x30, [sp]
	.cfi_offset 29, -1168
	.cfi_offset 30, -1160
	mov	x29, sp
	stp	d8, d9, [sp, 64]
	.cfi_offset 72, -1104
	.cfi_offset 73, -1096
	fmov	d8, d0
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	.cfi_offset 19, -1152
	.cfi_offset 20, -1144
	.cfi_offset 21, -1136
	.cfi_offset 22, -1128
	mov	x21, x0
	mov	x0, 64
	lsl	x20, x21, 3
	mov	x1, x20
	stp	x23, x24, [sp, 48]
	str	d10, [sp, 80]
	.cfi_offset 23, -1120
	.cfi_offset 24, -1112
	.cfi_offset 74, -1088
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
	dup	v2.2d, v8.d[0]
	lsr	x22, x21, 1
	and	x23, x21, -2
	ldr	d9, [x9, #:lo12:.LC6]
	add	x22, x19, x22, lsl 4
	mov	w24, 1
	.p2align 4
.L20:
	add	x1, sp, 128
	add	x0, sp, 112
	str	q2, [sp, 96]
	bl	timing
	mov	w20, 0
	ldr	q2, [sp, 96]
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
	ldr	q1, [x19]
	fmul	v3.2d, v1.2d, v2.2d
	str	q3, [x16], 16
.L80:
	ldr	q4, [x16]
	fmul	v5.2d, v4.2d, v2.2d
	str	q5, [x16], 16
.L79:
	ldr	q6, [x16]
	fmul	v7.2d, v6.2d, v2.2d
	str	q7, [x16], 16
.L78:
	ldr	q10, [x16]
	fmul	v16.2d, v10.2d, v2.2d
	str	q16, [x16], 16
.L77:
	ldr	q17, [x16]
	fmul	v18.2d, v17.2d, v2.2d
	str	q18, [x16], 16
.L76:
	ldr	q19, [x16]
	fmul	v20.2d, v19.2d, v2.2d
	str	q20, [x16], 16
.L75:
	ldr	q21, [x16]
	fmul	v22.2d, v21.2d, v2.2d
	str	q22, [x16], 16
	cmp	x22, x16
	beq	.L97
    # LLVM-MCA-BEGIN
    // OSACA-BEGIN
.L17:
	ldr	q23, [x16]
	mov	x17, x16
	add	x16, x16, 128
	fmul	v24.2d, v23.2d, v2.2d
	str	q24, [x17], 16
	ldr	q25, [x16, -112]
	fmul	v26.2d, v25.2d, v2.2d
	str	q26, [x16, -112]
	ldr	q27, [x17, 16]
	fmul	v28.2d, v27.2d, v2.2d
	str	q28, [x17, 16]
	ldr	q29, [x16, -80]
	ldr	q30, [x16, -64]
	ldr	q31, [x16, -48]
	ldr	q1, [x16, -32]
	ldr	q0, [x16, -16]
	fmul	v5.2d, v29.2d, v2.2d
	fmul	v4.2d, v30.2d, v2.2d
	fmul	v3.2d, v31.2d, v2.2d
	fmul	v6.2d, v1.2d, v2.2d
	fmul	v7.2d, v0.2d, v2.2d
	str	q5, [x16, -80]
	str	q4, [x16, -64]
	str	q3, [x16, -48]
	str	q6, [x16, -32]
	str	q7, [x16, -16]
	cmp	x22, x16
	bne	.L17
    // OSACA-END
    # LLVM-MCA-END
.L97:
	mov	x10, x23
	cmp	x21, x23
	beq	.L15
.L16:
	add	x18, x19, x10, lsl 3
	ldr	d10, [x18]
	fmul	d16, d10, d8
	str	d16, [x18]
.L15:
	add	w20, w20, 1
	cmp	w20, w24
	bne	.L19
	add	x1, sp, 128
	add	x0, sp, 120
	str	q2, [sp, 96]
	lsl	w24, w20, 1
	bl	timing
	ldp	d17, d18, [sp, 112]
	ldr	q2, [sp, 96]
	fsub	d10, d18, d17
	fcmpe	d10, d9
	bmi	.L20
	mov	x1, 1024
	add	x0, sp, 144
	asr	w23, w24, 1
	bl	gethostname
	add	x1, sp, 136
	add	x0, sp, 144
	bl	getFreq
	fmov	d9, 1.0e+0
	ldr	d28, [sp, 136]
	fmov	d19, 8.0e+0
	sxtw	x2, w23
	mul	x4, x2, x21
	scvtf	d8, x21
	scvtf	d20, w23
	adrp	x3, .LC7
	ldr	d21, [x3, #:lo12:.LC7]
	mov	x1, 4530621225134718976
	mov	x5, 4575657221408423936
	fmov	d1, d10
	fmov	d22, x1
	fmov	d23, x5
	adrp	x6, .LC4
	mov	w1, w23
	fdiv	d24, d9, d10
	add	x0, x6, :lo12:.LC4
	mov	x2, x21
	scvtf	d29, d28
	fmul	d30, d29, d19
	scvtf	d31, x4
	fmul	d25, d20, d8
	fmul	d0, d8, d23
	fmul	d3, d30, d10
	fdiv	d3, d3, d31
	fmul	d26, d24, d21
	fmul	d27, d24, d22
	fmul	d5, d26, d25
	fmul	d4, d27, d25
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
	add	sp, sp, 1168
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
	str	q2, [sp, 96]
	bl	dummy
	ldr	q2, [sp, 96]
	b	.L13
	.p2align 3
.L21:
	mov	x10, 0
	b	.L16
	.cfi_endproc
.LFE34:
	.size	scale, .-scale
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
	adrp	x2, .LC12
	adrp	x0, .LC11
	stp	x29, x30, [sp]
	.cfi_offset 29, -1088
	.cfi_offset 30, -1080
	mov	x29, sp
	mov	x1, 1024
	stp	d8, d9, [sp, 32]
	.cfi_offset 72, -1056
	.cfi_offset 73, -1048
	ldr	d9, [x0, #:lo12:.LC11]
	add	x0, sp, 64
	ldr	d8, [x2, #:lo12:.LC12]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -1072
	.cfi_offset 20, -1064
	mov	w19, 20
	bl	gethostname
	add	x1, sp, 56
	add	x0, sp, 64
	bl	getFreq
	adrp	x1, .LC8
	add	x0, x1, :lo12:.LC8
	bl	printf
	adrp	x3, .LC13
	ldr	d0, [sp, 56]
	adrp	x4, .LC9
	ldr	d1, [x3, #:lo12:.LC13]
	add	x0, x4, :lo12:.LC9
	add	x1, sp, 64
	scvtf	d2, d0
	fmul	d0, d2, d1
	bl	printf
	adrp	x5, .LC10
	add	x0, x5, :lo12:.LC10
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
	bl	scale
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
	bl	scale
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
	bl	scale
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
	bl	scale
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
.LC11:
	.word	3435973837
	.word	1073007820
.LC12:
	.word	981314128
	.word	1072935710
.LC13:
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
.LC8:
	.string	"VECTOR UPDATE a[i] = s * a[i], 8 byte/it, 1 Flop/it\n"
	.zero	3
.LC9:
	.string	"Checking for %s. Frequency *must* be set to %4.2f GHz for valid cy/CL.\n"
.LC10:
	.string	"Size (KByte) |   runtime   |  MFlop/s  |  cy/CL  |  MB/s   |  MLUP/s | repeat | size\n"
	.ident	"GCC: (ARM-build-8) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
