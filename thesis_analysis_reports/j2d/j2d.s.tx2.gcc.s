	.arch armv8.1-a+crypto+crc
	.file	"j2d.c"
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
	.global	stencil
	.type	stencil, %function
stencil:
.LFB34:
	.cfi_startproc
	sub	sp, sp, #1232
	.cfi_def_cfa_offset 1232
	stp	x29, x30, [sp]
	.cfi_offset 29, -1232
	.cfi_offset 30, -1224
	mov	x29, sp
	stp	x27, x28, [sp, 80]
	.cfi_offset 27, -1152
	.cfi_offset 28, -1144
	mov	w28, w1
	add	w1, w1, 1
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -1216
	.cfi_offset 20, -1208
	mov	w20, w0
	mul	w2, w1, w20
	stp	d8, d9, [sp, 96]
	.cfi_offset 72, -1136
	.cfi_offset 73, -1128
	fmov	d9, d0
	stp	w0, w1, [sp, 164]
	mov	x0, 64
	sbfiz	x19, x2, 3, 32
	stp	x21, x22, [sp, 32]
	add	x1, x19, 1
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	d10, [sp, 112]
	.cfi_offset 21, -1200
	.cfi_offset 22, -1192
	.cfi_offset 23, -1184
	.cfi_offset 24, -1176
	.cfi_offset 25, -1168
	.cfi_offset 26, -1160
	.cfi_offset 74, -1120
	str	w2, [sp, 172]
	bl	aligned_alloc
	mov	x1, x19
	mov	x24, x0
	add	x19, x0, 8
	mov	x0, 64
	bl	aligned_alloc
	mov	x25, x0
	sub	w8, w28, #1
	cmp	w20, 0
	ble	.L11
	cmp	w28, 0
	ble	.L11
	adrp	x7, .LC5
	ldr	w6, [sp, 168]
	mov	x3, 16
	mov	w5, 0
	ldr	x15, [x7, #:lo12:.LC5]
	add	x0, x3, x8, uxtw 3
	mov	x4, x19
	add	x18, x24, x0
	sbfiz	x16, x6, 3, 32
.L12:
	sub	x9, x18, x4
	mov	x14, x4
	sub	x10, x9, #8
	lsr	x11, x10, 3
	add	x12, x11, 1
	ands	x13, x12, 7
	beq	.L13
	cmp	x13, 1
	beq	.L62
	cmp	x13, 2
	beq	.L63
	cmp	x13, 3
	beq	.L64
	cmp	x13, 4
	beq	.L65
	cmp	x13, 5
	beq	.L66
	cmp	x13, 6
	beq	.L67
	str	x15, [x14], 8
.L67:
	str	x15, [x14], 8
.L66:
	str	x15, [x14], 8
.L65:
	str	x15, [x14], 8
.L64:
	str	x15, [x14], 8
.L63:
	str	x15, [x14], 8
.L62:
	str	x15, [x14], 8
	cmp	x14, x18
	beq	.L85
.L13:
	mov	x17, x14
	str	x15, [x17], 8
	str	x15, [x14, 8]
	str	x15, [x17, 8]
	stp	x15, x15, [x14, 24]
	stp	x15, x15, [x14, 40]
	add	x14, x14, 64
	str	x15, [x14, -8]
	cmp	x14, x18
	bne	.L13
.L85:
	ldr	w21, [sp, 164]
	add	w5, w5, 1
	add	x4, x4, x16
	add	x18, x18, x16
	cmp	w21, w5
	bne	.L12
.L11:
	ldr	w27, [sp, 164]
	dup	v5.2d, v9.d[0]
	sxtw	x23, w8
	adrp	x22, .LC6
	sub	x3, x23, #1
	ldr	d8, [x22, #:lo12:.LC6]
	mov	w21, 1
	lsr	x26, x3, 1
	and	x22, x3, -2
	lsl	x26, x26, 4
	add	x23, x22, 1
	sub	w30, w27, #1
	sxtw	x27, w30
.L22:
	mov	w20, 0
	add	x1, sp, 192
	add	x0, sp, 176
	str	x3, [sp, 136]
	str	w20, [sp, 132]
	str	q5, [sp, 144]
	str	w8, [sp, 160]
	bl	timing
	ldrsw	x20, [sp, 168]
	ldr	x3, [sp, 136]
	ldr	w6, [sp, 132]
	ldr	w8, [sp, 160]
	ldr	q5, [sp, 144]
	.p2align 4
.L21:
	ldr	d0, [x24, 8]
	fcmpe	d0, #0.0
	ble	.L14
	mov	x0, x25
	str	w6, [sp, 132]
	str	q5, [sp, 144]
	str	x3, [sp, 136]
	str	w8, [sp, 160]
	bl	dummy
	ldr	x3, [sp, 136]
	ldr	w6, [sp, 132]
	ldr	w8, [sp, 160]
	ldr	q5, [sp, 144]
.L14:
	cmp	x27, 1
	ble	.L16
	cmp	w8, 1
	ble	.L16
	mov	x12, 1
	.p2align 4
.L20:
	mul	x7, x20, x12
	cmp	w28, 3
	beq	.L23
	add	x2, x7, 1
	sub	x11, x26, #16
	add	x0, x24, x7, lsl 3
	sub	x9, x2, x20
	add	x10, x20, x2
	lsr	x13, x11, 4
	add	x14, x9, 1
	add	x15, x10, 1
	ldr	q6, [x0, 8]
	add	x17, x7, 3
	add	x16, x13, 1
	add	x5, x24, x14, lsl 3
	add	x4, x24, x15, lsl 3
	add	x18, x25, x2, lsl 3
	add	x30, x24, x17, lsl 3
	mov	x1, 0
	ands	x2, x16, 3
	beq	.L18
	cmp	x2, 1
	beq	.L68
	cmp	x2, 2
	beq	.L69
	ldr	q1, [x30]
	ldr	q4, [x4]
	mov	x1, 16
	ldr	q3, [x5]
	fadd	v2.2d, v6.2d, v1.2d
	mov	v6.16b, v1.16b
	fadd	v7.2d, v4.2d, v3.2d
	fadd	v10.2d, v7.2d, v2.2d
	fmul	v16.2d, v10.2d, v5.2d
	str	q16, [x18]
.L69:
	ldr	q17, [x30, x1]
	ldr	q18, [x4, x1]
	ldr	q19, [x5, x1]
	fadd	v20.2d, v6.2d, v17.2d
	mov	v6.16b, v17.16b
	fadd	v21.2d, v18.2d, v19.2d
	fadd	v22.2d, v21.2d, v20.2d
	fmul	v23.2d, v22.2d, v5.2d
	str	q23, [x18, x1]
	add	x1, x1, 16
.L68:
	ldr	q24, [x30, x1]
	ldr	q25, [x4, x1]
	ldr	q26, [x5, x1]
	fadd	v27.2d, v6.2d, v24.2d
	mov	v6.16b, v24.16b
	fadd	v28.2d, v25.2d, v26.2d
	fadd	v29.2d, v28.2d, v27.2d
	fmul	v30.2d, v29.2d, v5.2d
	str	q30, [x18, x1]
	add	x1, x1, 16
	cmp	x26, x1
	beq	.L84
.L18:
	add	x11, x1, 16
	ldr	q31, [x30, x1]
	ldr	q0, [x4, x1]
	add	x9, x1, 32
	ldr	q4, [x5, x1]
	ldr	q3, [x4, x11]
	add	x0, x1, 48
	ldr	q10, [x5, x11]
	ldr	q16, [x30, x11]
	ldr	q7, [x30, x9]
	ldr	q2, [x4, x9]
	ldr	q19, [x5, x9]
	ldr	q17, [x30, x0]
	fadd	v18.2d, v6.2d, v31.2d
	ldr	q1, [x4, x0]
	ldr	q20, [x5, x0]
	fadd	v21.2d, v0.2d, v4.2d
	fadd	v22.2d, v3.2d, v10.2d
	fadd	v23.2d, v31.2d, v16.2d
	fadd	v25.2d, v16.2d, v7.2d
	fadd	v24.2d, v2.2d, v19.2d
	fadd	v26.2d, v7.2d, v17.2d
	fadd	v27.2d, v1.2d, v20.2d
	mov	v6.16b, v17.16b
	fadd	v28.2d, v21.2d, v18.2d
	fadd	v29.2d, v22.2d, v23.2d
	fadd	v30.2d, v24.2d, v25.2d
	fadd	v31.2d, v27.2d, v26.2d
	fmul	v0.2d, v28.2d, v5.2d
	fmul	v4.2d, v29.2d, v5.2d
	fmul	v3.2d, v30.2d, v5.2d
	fmul	v10.2d, v31.2d, v5.2d
	str	q0, [x18, x1]
	add	x1, x1, 64
	str	q4, [x18, x11]
	str	q3, [x18, x9]
	str	q10, [x18, x0]
	cmp	x26, x1
	bne	.L18
.L84:
	mov	x1, x23
	cmp	x22, x3
	beq	.L19
.L17:
	add	x7, x7, x1
	add	x10, x20, x7
	sub	x13, x7, x20
	lsl	x14, x7, 3
	ldr	d6, [x19, x10, lsl 3]
	ldr	d16, [x19, x13, lsl 3]
	add	x15, x19, x14
	ldr	d2, [x24, x14]
	ldr	d17, [x15, 8]
	fadd	d19, d6, d16
	fadd	d7, d19, d2
	fadd	d18, d7, d17
	fmul	d1, d18, d9
	str	d1, [x25, x14]
.L19:
	add	x12, x12, 1
	cmp	x27, x12
	bgt	.L20
.L16:
	add	w6, w6, 1
	cmp	w6, w21
	bne	.L21
	add	x1, sp, 192
	add	x0, sp, 184
	str	w6, [sp, 132]
	str	q5, [sp, 144]
	str	x3, [sp, 136]
	str	w8, [sp, 160]
	bl	timing
	ldr	w21, [sp, 132]
	ldp	d20, d21, [sp, 176]
	ldr	w8, [sp, 160]
	ldr	x3, [sp, 136]
	ldr	q5, [sp, 144]
	lsl	w21, w21, 1
	fsub	d10, d21, d20
	fcmpe	d10, d8
	bmi	.L22
	mov	x1, 1024
	add	x0, sp, 208
	sub	w28, w28, #2
	bl	gethostname
	asr	w19, w21, 1
	mov	x22, 4539628424389459968
	add	x1, sp, 200
	add	x0, sp, 208
	bl	getFreq
	ldr	w26, [sp, 164]
	ldr	w23, [sp, 172]
	ldr	d4, [sp, 200]
	fmov	d22, 8.0e+0
	fmov	d8, 1.0e+0
	adrp	x16, .LC7
	scvtf	d9, w19
	fmov	d23, x22
	adrp	x5, .LC8
	ldr	d25, [x16, #:lo12:.LC7]
	ldr	d26, [x5, #:lo12:.LC8]
	adrp	x18, .LC9
	fmov	d1, d10
	adrp	x2, .LC4
	sub	w27, w26, #2
	sub	w17, w23, w26
	ldr	d27, [x18, #:lo12:.LC9]
	add	x0, x2, :lo12:.LC4
	mul	w20, w27, w28
	fdiv	d24, d8, d10
	sub	w4, w17, #4
	mov	w1, w19
	scvtf	d3, d4
	fmul	d6, d3, d22
	scvtf	d28, w4
	smull	x11, w19, w20
	scvtf	d29, w20
	sxtw	x2, w20
	fmul	d2, d6, d10
	scvtf	d16, x11
	fmul	d0, d28, d27
	fmul	d30, d29, d9
	fdiv	d3, d2, d16
	fmul	d31, d24, d25
	fmul	d19, d24, d23
	fmul	d7, d24, d26
	fmul	d5, d31, d30
	fmul	d4, d19, d30
	fmul	d2, d7, d30
	bl	printf
	mov	x0, x24
	bl	free
	mov	x0, x25
	bl	free
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	d8, d9, [sp, 96]
	ldr	d10, [sp, 112]
	add	sp, sp, 1232
	.cfi_remember_state
	.cfi_restore 74
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 28
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
.L23:
	.cfi_restore_state
	mov	x1, 1
	b	.L17
	.cfi_endproc
.LFE34:
	.size	stencil, .-stencil
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,15
	.global	main
	.type	main, %function
main:
.LFB35:
	.cfi_startproc
	sub	sp, sp, #2352
	.cfi_def_cfa_offset 2352
	adrp	x2, .LC5
	adrp	x0, .LC13
	stp	x29, x30, [sp]
	.cfi_offset 29, -2352
	.cfi_offset 30, -2344
	mov	x29, sp
	mov	x1, 1024
	stp	d8, d9, [sp, 96]
	.cfi_offset 72, -2256
	.cfi_offset 73, -2248
	ldr	d8, [x2, #:lo12:.LC5]
	stp	d12, d13, [sp, 128]
	.cfi_offset 76, -2224
	.cfi_offset 77, -2216
	ldr	d12, [x0, #:lo12:.LC13]
	add	x0, sp, 304
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -2336
	.cfi_offset 20, -2328
	mov	x20, 1248
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -2320
	.cfi_offset 22, -2312
	mov	x21, 10016
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	stp	d10, d11, [sp, 112]
	.cfi_offset 23, -2304
	.cfi_offset 24, -2296
	.cfi_offset 25, -2288
	.cfi_offset 26, -2280
	.cfi_offset 27, -2272
	.cfi_offset 28, -2264
	.cfi_offset 74, -2240
	.cfi_offset 75, -2232
	bl	gethostname
	adrp	x3, .LC6
	adrp	x4, .LC7
	adrp	x1, .LC14
	ldr	d10, [x1, #:lo12:.LC14]
	ldr	d9, [x3, #:lo12:.LC6]
	add	x1, sp, 264
	add	x0, sp, 304
	ldr	d11, [x4, #:lo12:.LC7]
	bl	getFreq
	adrp	x5, .LC10
	mov	w6, 3746
	mov	x7, 30025
	add	x0, x5, :lo12:.LC10
	str	x7, [sp, 160]
	str	w6, [sp, 244]
	bl	printf
	adrp	x8, .LC15
	ldr	d0, [sp, 264]
	adrp	x9, .LC11
	ldr	d1, [x8, #:lo12:.LC15]
	mov	w10, 1250
	add	x0, x9, :lo12:.LC11
	add	x1, sp, 304
	str	w10, [sp, 156]
	scvtf	d2, d0
	fmul	d0, d2, d1
	bl	printf
	adrp	x11, .LC12
	add	x0, x11, :lo12:.LC12
	bl	printf
	adrp	x12, .LC4
	add	x13, x12, :lo12:.LC4
	str	x13, [sp, 248]
	.p2align 4
.L97:
	ldr	w14, [sp, 156]
	fmov	d0, d12
	sub	x28, x21, #8
	sub	x26, x21, #16
	scvtf	d1, w14
	bl	__pow_finite
	ldr	x19, [sp, 160]
	mov	x0, 64
	mov	x1, x19
	bl	aligned_alloc
	add	x23, x0, 8
	mov	x27, x0
	sub	x1, x19, #1
	mov	x0, 64
	bl	aligned_alloc
	mov	w2, 3
	mov	x24, x0
	mov	x0, x23
	.p2align 4
.L88:
	sub	x15, x26, #8
	mov	x25, x0
	add	x16, x0, x26
	lsr	x17, x15, 3
	add	x18, x17, 1
	ands	x22, x18, 7
	beq	.L89
	cmp	x22, 1
	beq	.L134
	cmp	x22, 2
	beq	.L135
	cmp	x22, 3
	beq	.L136
	cmp	x22, 4
	beq	.L137
	cmp	x22, 5
	beq	.L138
	cmp	x22, 6
	beq	.L139
	str	d8, [x25], 8
.L139:
	str	d8, [x25], 8
.L138:
	str	d8, [x25], 8
.L137:
	str	d8, [x25], 8
.L136:
	str	d8, [x25], 8
.L135:
	str	d8, [x25], 8
.L134:
	str	d8, [x25], 8
	cmp	x16, x25
	beq	.L155
.L89:
	mov	x30, x25
	str	d8, [x30], 8
	str	d8, [x25, 8]
	str	d8, [x30, 8]
	stp	d8, d8, [x25, 24]
	stp	d8, d8, [x25, 40]
	add	x25, x25, 64
	str	d8, [x25, -8]
	cmp	x16, x25
	bne	.L89
.L155:
	add	x0, x0, x28
	subs	w2, w2, #1
	bne	.L88
	ldr	w4, [sp, 156]
	mov	x19, 1
	add	x1, x20, 3
	add	x3, x27, x26
	add	x11, x21, 16
	add	x25, x27, x21, lsl 1
	add	x28, x24, x21
	str	x1, [sp, 184]
	add	x22, x27, 16
	cmp	w4, 2
	csel	x5, x20, x19, gt
	and	x7, x5, -2
	lsr	x6, x5, 1
	stp	x5, x3, [sp, 208]
	add	x8, x7, 1
	lsl	x9, x6, 4
	add	x10, x1, x8
	str	x9, [sp, 144]
	lsl	x26, x10, 3
	stp	x8, x7, [sp, 192]
	stp	x11, x10, [sp, 224]
	.p2align 4
.L96:
	mov	w12, 0
	add	x1, sp, 288
	add	x0, sp, 272
	str	w12, [sp, 240]
	bl	timing
	ldr	x13, [sp, 224]
	ldr	w8, [sp, 240]
	add	x15, x23, x26
	add	x14, x27, x13
	.p2align 4
.L95:
	ldr	d3, [x27, 8]
	fcmpe	d3, #0.0
	ble	.L91
	mov	x0, x24
	stp	x14, x15, [sp, 168]
	str	w8, [sp, 240]
	bl	dummy
	ldp	x14, x15, [sp, 168]
	ldr	w8, [sp, 240]
.L91:
	ldr	x17, [sp, 144]
	ldr	x18, [sp, 216]
	adrp	x16, .LC16
	mov	x0, 0
	ldr	q21, [x16, #:lo12:.LC16]
	sub	x30, x17, #16
	ldr	q30, [x18, 16]
	lsr	x2, x30, 4
	add	x1, x2, 1
	ands	x3, x1, 3
	beq	.L93
	cmp	x3, 1
	beq	.L140
	cmp	x3, 2
	beq	.L141
	ldr	q6, [x14]
	ldr	q7, [x25]
	mov	x0, 16
	ldr	q5, [x22]
	fadd	v4.2d, v6.2d, v30.2d
	mov	v30.16b, v6.16b
	fadd	v13.2d, v7.2d, v5.2d
	fadd	v16.2d, v13.2d, v4.2d
	fmul	v17.2d, v16.2d, v21.2d
	str	q17, [x28]
.L141:
	ldr	q18, [x14, x0]
	ldr	q19, [x25, x0]
	ldr	q20, [x22, x0]
	fadd	v22.2d, v18.2d, v30.2d
	mov	v30.16b, v18.16b
	fadd	v23.2d, v19.2d, v20.2d
	fadd	v24.2d, v23.2d, v22.2d
	fmul	v25.2d, v24.2d, v21.2d
	str	q25, [x28, x0]
	add	x0, x0, 16
.L140:
	ldr	q26, [x14, x0]
	ldr	q27, [x25, x0]
	ldr	x4, [sp, 144]
	ldr	q28, [x22, x0]
	fadd	v29.2d, v26.2d, v30.2d
	mov	v30.16b, v26.16b
	fadd	v31.2d, v27.2d, v28.2d
	fadd	v1.2d, v31.2d, v29.2d
	fmul	v0.2d, v1.2d, v21.2d
	str	q0, [x28, x0]
	add	x0, x0, 16
	cmp	x4, x0
	beq	.L154
    # LLVM-MCA-BEGIN
    // OSACA-BEGIN
.L93:
	add	x5, x0, 16
	ldr	q2, [x14, x0]
	ldr	q5, [x25, x0]
	add	x7, x0, 32
	ldr	q13, [x22, x0]
	ldr	q4, [x25, x5]
	add	x6, x0, 48
	ldr	x9, [sp, 144]
	ldr	q19, [x22, x5]
	ldr	q7, [x14, x5]
	ldr	q6, [x14, x7]
	ldr	q3, [x25, x7]
	ldr	q18, [x22, x7]
	fadd	v17.2d, v2.2d, v30.2d
	ldr	q16, [x14, x6]
	ldr	q20, [x25, x6]
	fadd	v23.2d, v5.2d, v13.2d
	ldr	q22, [x22, x6]
	fadd	v24.2d, v4.2d, v19.2d
	fadd	v25.2d, v7.2d, v2.2d
	fadd	v27.2d, v6.2d, v7.2d
	fadd	v26.2d, v3.2d, v18.2d
	fadd	v28.2d, v16.2d, v6.2d
	mov	v30.16b, v16.16b
	fadd	v29.2d, v20.2d, v22.2d
	fadd	v31.2d, v23.2d, v17.2d
	fadd	v0.2d, v24.2d, v25.2d
	fadd	v2.2d, v26.2d, v27.2d
	fadd	v1.2d, v29.2d, v28.2d
	fmul	v5.2d, v31.2d, v21.2d
	fmul	v13.2d, v0.2d, v21.2d
	fmul	v4.2d, v2.2d, v21.2d
	fmul	v19.2d, v1.2d, v21.2d
	str	q5, [x28, x0]
	add	x0, x0, 64
	str	q13, [x28, x5]
	str	q4, [x28, x7]
	str	q19, [x28, x6]
	cmp	x9, x0
	bne	.L93
    // OSACA-END
    # LLVM-MCA-END
	.p2align 4
.L154:
	ldp	x10, x11, [sp, 200]
	cmp	x10, x11
	beq	.L94
	ldr	x12, [sp, 192]
	ldr	d21, [x27, x26]
	ldr	x16, [sp, 184]
	ldr	d30, [x15, 8]
	ldr	x13, [sp, 232]
	ldr	d7, [x23, x12, lsl 3]
	add	x17, x16, x13
	ldr	d18, [x23, x17, lsl 3]
	fadd	d3, d7, d21
	fadd	d6, d3, d18
	fadd	d16, d6, d30
	fmul	d17, d16, d10
	str	d17, [x24, x26]
.L94:
	add	w8, w8, 1
	cmp	w19, w8
	bne	.L95
	add	x1, sp, 288
	add	x0, sp, 280
	lsl	w19, w19, 1
	bl	timing
	ldp	d20, d22, [sp, 272]
	fsub	d13, d22, d20
	fcmpe	d13, d9
	bmi	.L96
	ldr	w25, [sp, 156]
	mov	x1, 1024
	add	x0, sp, 1328
	asr	w23, w19, 1
	sub	x21, x21, #512
	sub	w28, w25, #64
	str	w28, [sp, 156]
	bl	gethostname
	ldr	x22, [sp, 160]
	add	x1, sp, 296
	add	x0, sp, 1328
	sub	x26, x22, #1536
	str	x26, [sp, 160]
	bl	getFreq
	ldr	d5, [sp, 296]
	fmov	d23, 8.0e+0
	fmov	d24, 1.0e+0
	sxtw	x14, w23
	mul	x18, x14, x20
	scvtf	d26, w20
	scvtf	d25, w23
	mov	x15, 4539628424389459968
	ldr	w0, [sp, 244]
	fmov	d27, x15
	adrp	x2, .LC8
	adrp	x3, .LC9
	ldr	d28, [x2, #:lo12:.LC8]
	ldr	d29, [x3, #:lo12:.LC9]
	fmov	d1, d13
	mov	x2, x20
	fdiv	d31, d24, d13
	mov	w1, w23
	sub	x20, x20, #64
	scvtf	d21, d5
	fmul	d30, d21, d23
	scvtf	d7, x18
	sub	w4, w0, #192
	scvtf	d2, w0
	ldr	x0, [sp, 248]
	str	w4, [sp, 244]
	fmul	d19, d26, d25
	fmul	d3, d30, d13
	fdiv	d3, d3, d7
	fmul	d0, d31, d27
	fmul	d18, d31, d11
	fmul	d6, d31, d28
	fmul	d4, d0, d19
	fmul	d5, d18, d19
	fmul	d0, d2, d29
	fmul	d2, d6, d19
	bl	printf
	mov	x0, x27
	bl	free
	mov	x0, x24
	bl	free
	cmp	w28, 162
	bne	.L97
	mov	w0, 0
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	d8, d9, [sp, 96]
	ldp	d10, d11, [sp, 112]
	ldp	d12, d13, [sp, 128]
	add	sp, sp, 2352
	.cfi_restore 76
	.cfi_restore 77
	.cfi_restore 74
	.cfi_restore 75
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 28
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
	.cfi_endproc
.LFE35:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC16:
	.word	398572965
	.word	1068847910
	.word	398572965
	.word	1068847910
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
	.word	2696277389
	.word	1053869815
.LC9:
	.word	3539053052
	.word	1065378381
.LC13:
	.word	3435973837
	.word	1073007820
.LC14:
	.word	398572965
	.word	1068847910
.LC15:
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
.LC10:
	.string	"2D5PT b[j][i] = c0 * (a[j][i-1] + a[j+1][i] + ...), 32 byte/it, 4 Flop/it\n"
	.zero	5
.LC11:
	.string	"Checking for %s. Frequency *must* be set to %4.2f GHz for valid cy/CL.\n"
.LC12:
	.string	"Size (KByte) |   runtime   |  MFlop/s  |  cy/CL  |  MB/s   |  MLUP/s | repeat | size\n"
	.ident	"GCC: (ARM-build-8) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
