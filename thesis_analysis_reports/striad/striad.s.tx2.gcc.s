	.arch armv8.1-a+crypto+crc
	.file	"striad.c"
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
	.global	striad
	.type	striad, %function
striad:
.LFB34:
	.cfi_startproc
	sub	sp, sp, #1168
	.cfi_def_cfa_offset 1168
	stp	x29, x30, [sp]
	.cfi_offset 29, -1168
	.cfi_offset 30, -1160
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -1120
	.cfi_offset 24, -1112
	mov	x24, x0
	mov	x0, 64
	lsl	x23, x24, 3
	mov	x1, x23
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	stp	d8, d9, [sp, 96]
	.cfi_offset 19, -1152
	.cfi_offset 20, -1144
	.cfi_offset 21, -1136
	.cfi_offset 22, -1128
	.cfi_offset 25, -1104
	.cfi_offset 26, -1096
	.cfi_offset 27, -1088
	.cfi_offset 72, -1072
	.cfi_offset 73, -1064
	bl	aligned_alloc
	mov	x19, x0
	mov	x0, 64
	mov	x1, x23
	bl	aligned_alloc
	mov	x20, x0
	mov	x0, 64
	mov	x1, x23
	bl	aligned_alloc
	mov	x21, x0
	mov	x0, 64
	mov	x1, x23
	bl	aligned_alloc
	mov	x22, x0
	cmp	x24, 0
	ble	.L11
	sub	x4, x23, #8
	adrp	x1, .LC5
	adrp	x2, .LC6
	lsr	x5, x4, 3
	adrp	x6, .LC7
	mov	x0, 0
	add	x7, x5, 1
	ldr	x3, [x1, #:lo12:.LC5]
	ldr	x11, [x2, #:lo12:.LC6]
	ldr	x12, [x6, #:lo12:.LC7]
	ands	x8, x7, 7
	beq	.L12
	cmp	x8, 1
	beq	.L69
	cmp	x8, 2
	beq	.L70
	cmp	x8, 3
	beq	.L71
	cmp	x8, 4
	beq	.L72
	cmp	x8, 5
	beq	.L73
	cmp	x8, 6
	bne	.L99
.L74:
	str	x3, [x20, x0]
	str	x11, [x21, x0]
	str	x12, [x22, x0]
	add	x0, x0, 8
.L73:
	str	x3, [x20, x0]
	str	x11, [x21, x0]
	str	x12, [x22, x0]
	add	x0, x0, 8
.L72:
	str	x3, [x20, x0]
	str	x11, [x21, x0]
	str	x12, [x22, x0]
	add	x0, x0, 8
.L71:
	str	x3, [x20, x0]
	str	x11, [x21, x0]
	str	x12, [x22, x0]
	add	x0, x0, 8
.L70:
	str	x3, [x20, x0]
	str	x11, [x21, x0]
	str	x12, [x22, x0]
	add	x0, x0, 8
.L69:
	str	x3, [x20, x0]
	str	x11, [x21, x0]
	str	x12, [x22, x0]
	add	x0, x0, 8
	cmp	x23, x0
	beq	.L11
.L12:
	add	x13, x0, 8
	str	x3, [x20, x0]
	add	x10, x0, 16
	add	x9, x0, 24
	str	x11, [x21, x0]
	add	x14, x0, 32
	add	x15, x0, 40
	add	x16, x0, 48
	str	x12, [x22, x0]
	add	x17, x0, 56
	add	x0, x0, 64
	str	x3, [x20, x13]
	str	x11, [x21, x13]
	str	x12, [x22, x13]
	str	x3, [x20, x10]
	str	x11, [x21, x10]
	str	x12, [x22, x10]
	str	x3, [x20, x9]
	str	x11, [x21, x9]
	str	x12, [x22, x9]
	str	x3, [x20, x14]
	str	x11, [x21, x14]
	str	x12, [x22, x14]
	str	x3, [x20, x15]
	str	x11, [x21, x15]
	str	x12, [x22, x15]
	str	x3, [x20, x16]
	str	x11, [x21, x16]
	str	x12, [x22, x16]
	str	x3, [x20, x17]
	str	x11, [x21, x17]
	str	x12, [x22, x17]
	cmp	x23, x0
	bne	.L12
.L11:
	adrp	x18, .LC8
	lsr	x25, x24, 1
	and	x26, x24, -2
	ldr	d8, [x18, #:lo12:.LC8]
	mov	w27, 1
	lsl	x25, x25, 4
	.p2align 4
.L20:
	add	x1, sp, 128
	add	x0, sp, 112
	mov	w23, 0
	bl	timing
	.p2align 4
.L19:
	ldr	d0, [x19]
	fcmpe	d0, #0.0
	bmi	.L100
.L13:
	cmp	x24, 0
	ble	.L15
	cmp	x24, 1
	beq	.L21
	sub	x4, x25, #16
	mov	x11, 0
	lsr	x1, x4, 4
	add	x3, x1, 1
	ands	x2, x3, 7
	beq	.L17
	cmp	x2, 1
	beq	.L75
	cmp	x2, 2
	beq	.L76
	cmp	x2, 3
	beq	.L77
	cmp	x2, 4
	beq	.L78
	cmp	x2, 5
	beq	.L79
	cmp	x2, 6
	beq	.L80
	ldr	q2, [x22]
	ldr	q3, [x20]
	mov	x11, 16
	ldr	q1, [x21]
	fmla	v3.2d, v2.2d, v1.2d
	str	q3, [x19]
.L80:
	ldr	q4, [x22, x11]
	ldr	q5, [x20, x11]
	ldr	q6, [x21, x11]
	fmla	v5.2d, v4.2d, v6.2d
	str	q5, [x19, x11]
	add	x11, x11, 16
.L79:
	ldr	q7, [x22, x11]
	ldr	q9, [x20, x11]
	ldr	q16, [x21, x11]
	fmla	v9.2d, v7.2d, v16.2d
	str	q9, [x19, x11]
	add	x11, x11, 16
.L78:
	ldr	q17, [x22, x11]
	ldr	q18, [x20, x11]
	ldr	q19, [x21, x11]
	fmla	v18.2d, v17.2d, v19.2d
	str	q18, [x19, x11]
	add	x11, x11, 16
.L77:
	ldr	q20, [x22, x11]
	ldr	q21, [x20, x11]
	ldr	q22, [x21, x11]
	fmla	v21.2d, v20.2d, v22.2d
	str	q21, [x19, x11]
	add	x11, x11, 16
.L76:
	ldr	q23, [x22, x11]
	ldr	q24, [x20, x11]
	ldr	q25, [x21, x11]
	fmla	v24.2d, v23.2d, v25.2d
	str	q24, [x19, x11]
	add	x11, x11, 16
.L75:
	ldr	q26, [x22, x11]
	ldr	q27, [x20, x11]
	ldr	q28, [x21, x11]
	fmla	v27.2d, v26.2d, v28.2d
	str	q27, [x19, x11]
	add	x11, x11, 16
	cmp	x25, x11
	beq	.L97
    # LLVM-MCA-BEGIN
    // OSACA-BEGIN
.L17:
	add	x12, x11, 16
	ldr	q29, [x22, x11]
	ldr	q30, [x20, x11]
	add	x7, x11, 32
	ldr	q31, [x21, x11]
	ldr	q7, [x22, x12]
	add	x6, x11, 48
	add	x5, x11, 64
	ldr	q6, [x20, x12]
	ldr	q2, [x21, x12]
	add	x8, x11, 80
	add	x0, x11, 96
	ldr	q9, [x22, x7]
	ldr	q5, [x20, x7]
	add	x13, x11, 112
	ldr	q1, [x21, x7]
	ldr	q16, [x22, x6]
	ldr	q4, [x20, x6]
	ldr	q0, [x21, x6]
	fmla	v30.2d, v29.2d, v31.2d
	ldr	q23, [x22, x5]
	ldr	q3, [x20, x5]
	fmla	v6.2d, v7.2d, v2.2d
	ldr	q22, [x21, x5]
	ldr	q21, [x22, x8]
	ldr	q24, [x20, x8]
	ldr	q20, [x21, x8]
	fmla	v5.2d, v9.2d, v1.2d
	ldr	q19, [x22, x0]
	ldr	q25, [x20, x0]
	fmla	v4.2d, v16.2d, v0.2d
	ldr	q18, [x21, x0]
	ldr	q17, [x22, x13]
	ldr	q26, [x20, x13]
	ldr	q27, [x21, x13]
	fmla	v3.2d, v23.2d, v22.2d
	fmla	v24.2d, v21.2d, v20.2d
	str	q30, [x19, x11]
	add	x11, x11, 128
	str	q6, [x19, x12]
	fmla	v25.2d, v19.2d, v18.2d
	str	q5, [x19, x7]
	fmla	v26.2d, v17.2d, v27.2d
	str	q4, [x19, x6]
	str	q3, [x19, x5]
	str	q24, [x19, x8]
	str	q25, [x19, x0]
	str	q26, [x19, x13]
	cmp	x25, x11
	bne	.L17
    // OSACA-END
    # LLVM-MCA-END
.L97:
	mov	x30, x26
	cmp	x24, x26
	beq	.L15
.L16:
	lsl	x9, x30, 3
	ldr	d28, [x22, x9]
	ldr	d29, [x21, x9]
	ldr	d30, [x20, x9]
	fmadd	d31, d28, d29, d30
	str	d31, [x19, x9]
.L15:
	add	w23, w23, 1
	cmp	w23, w27
	bne	.L19
	add	x1, sp, 128
	add	x0, sp, 120
	lsl	w27, w23, 1
	bl	timing
	ldp	d7, d6, [sp, 112]
	fsub	d9, d6, d7
	fcmpe	d9, d8
	bmi	.L20
	mov	x1, 1024
	add	x0, sp, 144
	asr	w26, w27, 1
	bl	gethostname
	adrp	x25, .LC4
	add	x1, sp, 136
	add	x0, sp, 144
	bl	getFreq
	fmov	d4, 1.0e+0
	ldr	d20, [sp, 136]
	fmov	d23, 8.0e+0
	sxtw	x14, w26
	scvtf	d2, w26
	scvtf	d0, x24
	mul	x16, x14, x24
	adrp	x15, .LC9
	ldr	d5, [x15, #:lo12:.LC9]
	mov	x10, 4537376624575774720
	adrp	x17, .LC10
	adrp	x18, .LC11
	fmov	d22, x10
	ldr	d8, [x17, #:lo12:.LC10]
	ldr	d16, [x18, #:lo12:.LC11]
	fmov	d1, d9
	fdiv	d21, d4, d9
	add	x0, x25, :lo12:.LC4
	mov	w1, w26
	mov	x2, x24
	scvtf	d19, d20
	fmul	d25, d19, d23
	scvtf	d18, x16
	fmul	d24, d2, d0
	fmul	d0, d0, d16
	fmul	d17, d25, d9
	fmul	d3, d21, d5
	fmul	d27, d21, d8
	fmul	d26, d21, d22
	fmul	d5, d3, d24
	fdiv	d3, d17, d18
	fmul	d4, d26, d24
	fmul	d2, d27, d24
	bl	printf
	mov	x0, x19
	bl	free
	mov	x0, x20
	bl	free
	mov	x0, x21
	bl	free
	mov	x0, x22
	bl	free
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	d8, d9, [sp, 96]
	add	sp, sp, 1168
	.cfi_remember_state
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 3
.L100:
	.cfi_restore_state
	mov	x0, x19
	bl	dummy
	b	.L13
	.p2align 3
.L21:
	mov	x30, 0
	b	.L16
.L99:
	mov	x0, 8
	str	x3, [x20]
	str	x11, [x21]
	str	x12, [x22]
	b	.L74
	.cfi_endproc
.LFE34:
	.size	striad, .-striad
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
	adrp	x0, .LC15
	mov	x1, 1024
	stp	x29, x30, [sp]
	.cfi_offset 29, -1088
	.cfi_offset 30, -1080
	mov	x29, sp
	str	d8, [sp, 32]
	.cfi_offset 72, -1056
	ldr	d8, [x0, #:lo12:.LC15]
	add	x0, sp, 64
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -1072
	.cfi_offset 20, -1064
	mov	w19, 20
	bl	gethostname
	add	x1, sp, 56
	add	x0, sp, 64
	bl	getFreq
	adrp	x1, .LC12
	add	x0, x1, :lo12:.LC12
	bl	printf
	adrp	x2, .LC16
	ldr	d0, [sp, 56]
	adrp	x3, .LC13
	ldr	d1, [x2, #:lo12:.LC16]
	add	x0, x3, :lo12:.LC13
	add	x1, sp, 64
	scvtf	d2, d0
	fmul	d0, d2, d1
	bl	printf
	adrp	x4, .LC14
	add	x0, x4, :lo12:.LC14
	bl	printf
.L102:
	scvtf	d1, w19
	fmov	d0, d8
	add	w20, w19, 1
	bl	__pow_finite
	fcvtzs	w5, d0
	cmp	w5, 0
	add	w6, w5, 63
	csel	w7, w6, w5, lt
	and	w8, w7, -64
	sxtw	x0, w8
	bl	striad
	scvtf	d1, w20
	fmov	d0, d8
	bl	__pow_finite
	fcvtzs	w9, d0
	cmp	w9, 0
	add	w10, w9, 63
	csel	w11, w10, w9, lt
	and	w12, w11, -64
	sxtw	x0, w12
	bl	striad
	add	w13, w20, 1
	fmov	d0, d8
	scvtf	d1, w13
	bl	__pow_finite
	fcvtzs	w14, d0
	cmp	w14, 0
	add	w15, w14, 63
	csel	w16, w15, w14, lt
	and	w17, w16, -64
	sxtw	x0, w17
	bl	striad
	add	w18, w19, 3
	fmov	d0, d8
	add	w19, w19, 4
	scvtf	d1, w18
	bl	__pow_finite
	fcvtzs	w1, d0
	cmp	w1, 0
	add	w0, w1, 63
	csel	w2, w0, w1, lt
	and	w3, w2, -64
	sxtw	x0, w3
	bl	striad
	cmp	w19, 36
	bne	.L102
	mov	w0, 0
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldr	d8, [sp, 32]
	add	sp, sp, 1088
	.cfi_restore 72
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
	.word	1524087310
	.word	1055485069
.LC7:
	.word	619800931
	.word	1057026584
.LC8:
	.word	2576980378
	.word	1070176665
.LC9:
	.word	2696277389
	.word	1051772663
.LC10:
	.word	2696277389
	.word	1052821239
.LC11:
	.word	3539053052
	.word	1065378381
.LC15:
	.word	3435973837
	.word	1073007820
.LC16:
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
.LC12:
	.string	"SCHOENAUER TRIAD a[i] = b[i] + c[i] * d[i], 24 byte/it, 2 Flop/it\n"
	.zero	5
.LC13:
	.string	"Checking for %s. Frequency *must* be set to %4.2f GHz for valid cy/CL.\n"
.LC14:
	.string	"Size (KByte) |   runtime   |  MFlop/s  |  cy/CL  |  MB/s   |  MLUP/s | repeat | size\n"
	.ident	"GCC: (ARM-build-8) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
