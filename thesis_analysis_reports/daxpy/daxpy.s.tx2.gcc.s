	.arch armv8.1-a+crypto+crc
	.file	"daxpy.c"
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
	.global	daxpy
	.type	daxpy, %function
daxpy:
.LFB34:
	.cfi_startproc
	sub	sp, sp, #1168
	.cfi_def_cfa_offset 1168
	stp	x29, x30, [sp]
	.cfi_offset 29, -1168
	.cfi_offset 30, -1160
	mov	x29, sp
	stp	d8, d9, [sp, 80]
	.cfi_offset 72, -1088
	.cfi_offset 73, -1080
	fmov	d8, d0
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -1136
	.cfi_offset 22, -1128
	mov	x22, x0
	mov	x0, 64
	lsl	x21, x22, 3
	mov	x1, x21
	stp	x19, x20, [sp, 16]
	stp	x23, x24, [sp, 48]
	str	x25, [sp, 64]
	str	d10, [sp, 72]
	.cfi_offset 19, -1152
	.cfi_offset 20, -1144
	.cfi_offset 23, -1120
	.cfi_offset 24, -1112
	.cfi_offset 25, -1104
	.cfi_offset 74, -1096
	bl	aligned_alloc
	mov	x19, x0
	mov	x0, 64
	mov	x1, x21
	bl	aligned_alloc
	mov	x20, x0
	cmp	x22, 0
	ble	.L11
	sub	x3, x21, #8
	adrp	x1, .LC5
	adrp	x4, .LC6
	lsr	x5, x3, 3
	mov	x0, 0
	ldr	x2, [x1, #:lo12:.LC5]
	add	x6, x5, 1
	ldr	x10, [x4, #:lo12:.LC6]
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
	bne	.L99
.L74:
	str	x2, [x19, x0]
	str	x10, [x20, x0]
	add	x0, x0, 8
.L73:
	str	x2, [x19, x0]
	str	x10, [x20, x0]
	add	x0, x0, 8
.L72:
	str	x2, [x19, x0]
	str	x10, [x20, x0]
	add	x0, x0, 8
.L71:
	str	x2, [x19, x0]
	str	x10, [x20, x0]
	add	x0, x0, 8
.L70:
	str	x2, [x19, x0]
	str	x10, [x20, x0]
	add	x0, x0, 8
.L69:
	str	x2, [x19, x0]
	str	x10, [x20, x0]
	add	x0, x0, 8
	cmp	x21, x0
	beq	.L11
.L12:
	add	x11, x0, 8
	str	x2, [x19, x0]
	add	x9, x0, 16
	add	x8, x0, 24
	str	x10, [x20, x0]
	add	x12, x0, 32
	add	x13, x0, 40
	add	x14, x0, 48
	str	x2, [x19, x11]
	add	x15, x0, 56
	add	x0, x0, 64
	str	x10, [x20, x11]
	str	x2, [x19, x9]
	str	x10, [x20, x9]
	str	x2, [x19, x8]
	str	x10, [x20, x8]
	str	x2, [x19, x12]
	str	x10, [x20, x12]
	str	x2, [x19, x13]
	str	x10, [x20, x13]
	str	x2, [x19, x14]
	str	x10, [x20, x14]
	str	x2, [x19, x15]
	str	x10, [x20, x15]
	cmp	x21, x0
	bne	.L12
.L11:
	adrp	x16, .LC7
	dup	v3.2d, v8.d[0]
	lsr	x23, x22, 1
	and	x24, x22, -2
	ldr	d9, [x16, #:lo12:.LC7]
	add	x23, x19, x23, lsl 4
	mov	w25, 1
	.p2align 4
.L20:
	add	x1, sp, 128
	add	x0, sp, 112
	str	q3, [sp, 96]
	bl	timing
	mov	w21, 0
	ldr	q3, [sp, 96]
	.p2align 4
.L19:
	ldr	d0, [x19]
	fcmpe	d0, #0.0
	bmi	.L100
.L13:
	cmp	x22, 0
	ble	.L15
	cmp	x22, 1
	beq	.L21
	sub	x18, x23, x19
	mov	x3, x20
	mov	x10, x19
	sub	x30, x18, #16
	lsr	x1, x30, 4
	add	x2, x1, 1
	ands	x4, x2, 7
	beq	.L17
	cmp	x4, 1
	beq	.L75
	cmp	x4, 2
	beq	.L76
	cmp	x4, 3
	beq	.L77
	cmp	x4, 4
	beq	.L78
	cmp	x4, 5
	beq	.L79
	cmp	x4, 6
	beq	.L80
	ldr	q2, [x19]
	ldr	q1, [x3], 16
	fmla	v2.2d, v3.2d, v1.2d
	str	q2, [x10], 16
.L80:
	ldr	q4, [x10]
	ldr	q5, [x3], 16
	fmla	v4.2d, v3.2d, v5.2d
	str	q4, [x10], 16
.L79:
	ldr	q6, [x10]
	ldr	q7, [x3], 16
	fmla	v6.2d, v3.2d, v7.2d
	str	q6, [x10], 16
.L78:
	ldr	q10, [x10]
	ldr	q16, [x3], 16
	fmla	v10.2d, v3.2d, v16.2d
	str	q10, [x10], 16
.L77:
	ldr	q17, [x10]
	ldr	q18, [x3], 16
	fmla	v17.2d, v3.2d, v18.2d
	str	q17, [x10], 16
.L76:
	ldr	q19, [x10]
	ldr	q20, [x3], 16
	fmla	v19.2d, v3.2d, v20.2d
	str	q19, [x10], 16
.L75:
	ldr	q21, [x10]
	ldr	q22, [x3], 16
	fmla	v21.2d, v3.2d, v22.2d
	str	q21, [x10], 16
	cmp	x23, x10
	beq	.L97
    # LLVM-MCA-BEGIN
    // OSACA-BEGIN
.L17:
	mov	x5, x3
	ldr	q23, [x10]
	ldr	q24, [x5], 16
	mov	x6, x10
	ldr	q25, [x3, 16]
	ldr	q26, [x3, 48]
	add	x10, x10, 128
	add	x3, x3, 128
	ldr	q27, [x3, -64]
	ldr	q28, [x3, -48]
	ldr	q29, [x3, -32]
	ldr	q30, [x3, -16]
	fmla	v23.2d, v3.2d, v24.2d
	ldr	q31, [x5, 16]
	str	q23, [x6], 16
	ldr	q0, [x10, -112]
	fmla	v0.2d, v3.2d, v25.2d
	str	q0, [x10, -112]
	ldr	q2, [x6, 16]
	fmla	v2.2d, v3.2d, v31.2d
	str	q2, [x6, 16]
	ldr	q5, [x10, -80]
	ldr	q4, [x10, -64]
	ldr	q6, [x10, -48]
	ldr	q1, [x10, -32]
	ldr	q7, [x10, -16]
	fmla	v5.2d, v3.2d, v26.2d
	fmla	v4.2d, v3.2d, v27.2d
	fmla	v6.2d, v3.2d, v28.2d
	fmla	v1.2d, v3.2d, v29.2d
	fmla	v7.2d, v3.2d, v30.2d
	str	q5, [x10, -80]
	str	q4, [x10, -64]
	str	q6, [x10, -48]
	str	q1, [x10, -32]
	str	q7, [x10, -16]
	cmp	x23, x10
	bne	.L17
    // OSACA-END
    # LLVM-MCA-END
.L97:
	mov	x17, x24
	cmp	x22, x24
	beq	.L15
.L16:
	lsl	x7, x17, 3
	add	x0, x19, x7
	ldr	d10, [x20, x7]
	ldr	d16, [x0]
	fmadd	d17, d8, d10, d16
	str	d17, [x0]
.L15:
	add	w21, w21, 1
	cmp	w21, w25
	bne	.L19
	add	x1, sp, 128
	add	x0, sp, 120
	str	q3, [sp, 96]
	lsl	w25, w21, 1
	bl	timing
	ldp	d18, d19, [sp, 112]
	ldr	q3, [sp, 96]
	fsub	d10, d19, d18
	fcmpe	d10, d9
	bmi	.L20
	mov	x1, 1024
	add	x0, sp, 144
	asr	w24, w25, 1
	bl	gethostname
	add	x1, sp, 136
	add	x0, sp, 144
	bl	getFreq
	ldr	d29, [sp, 136]
	fmov	d20, 8.0e+0
	fmov	d21, 1.0e+0
	sxtw	x11, w24
	mul	x9, x11, x22
	scvtf	d25, x22
	scvtf	d22, w24
	mov	x8, 4535124824762089472
	adrp	x12, .LC8
	fmov	d24, x8
	adrp	x13, .LC9
	adrp	x14, .LC10
	ldr	d8, [x13, #:lo12:.LC9]
	ldr	d23, [x12, #:lo12:.LC8]
	fmov	d1, d10
	adrp	x15, .LC4
	fdiv	d26, d21, d10
	ldr	d9, [x14, #:lo12:.LC10]
	add	x0, x15, :lo12:.LC4
	mov	w1, w24
	scvtf	d30, d29
	fmul	d31, d30, d20
	mov	x2, x22
	scvtf	d2, x9
	fmul	d27, d22, d25
	fmul	d0, d25, d9
	fmul	d4, d31, d10
	fdiv	d3, d4, d2
	fmul	d6, d26, d8
	fmul	d28, d26, d23
	fmul	d7, d26, d24
	fmul	d5, d28, d27
	fmul	d2, d6, d27
	fmul	d4, d7, d27
	bl	printf
	mov	x0, x19
	bl	free
	mov	x0, x20
	bl	free
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp]
	ldp	x23, x24, [sp, 48]
	ldr	x25, [sp, 64]
	ldr	d10, [sp, 72]
	ldp	d8, d9, [sp, 80]
	add	sp, sp, 1168
	.cfi_remember_state
	.cfi_restore 74
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 25
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
	str	q3, [sp, 96]
	bl	dummy
	ldr	q3, [sp, 96]
	b	.L13
	.p2align 3
.L21:
	mov	x17, 0
	b	.L16
.L99:
	mov	x0, 8
	str	x2, [x19]
	str	x10, [x20]
	b	.L74
	.cfi_endproc
.LFE34:
	.size	daxpy, .-daxpy
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
	adrp	x2, .LC15
	adrp	x0, .LC14
	stp	x29, x30, [sp]
	.cfi_offset 29, -1088
	.cfi_offset 30, -1080
	mov	x29, sp
	mov	x1, 1024
	stp	d8, d9, [sp, 32]
	.cfi_offset 72, -1056
	.cfi_offset 73, -1048
	ldr	d9, [x0, #:lo12:.LC14]
	add	x0, sp, 64
	ldr	d8, [x2, #:lo12:.LC15]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -1072
	.cfi_offset 20, -1064
	mov	w19, 20
	bl	gethostname
	add	x1, sp, 56
	add	x0, sp, 64
	bl	getFreq
	adrp	x1, .LC11
	add	x0, x1, :lo12:.LC11
	bl	printf
	adrp	x3, .LC16
	ldr	d0, [sp, 56]
	adrp	x4, .LC12
	ldr	d1, [x3, #:lo12:.LC16]
	add	x0, x4, :lo12:.LC12
	add	x1, sp, 64
	scvtf	d2, d0
	fmul	d0, d2, d1
	bl	printf
	adrp	x5, .LC13
	add	x0, x5, :lo12:.LC13
	bl	printf
.L102:
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
	bl	daxpy
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
	bl	daxpy
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
	bl	daxpy
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
	bl	daxpy
	cmp	w19, 36
	bne	.L102
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
	.word	1524087310
	.word	1055485069
.LC7:
	.word	2576980378
	.word	1070176665
.LC8:
	.word	2696277389
	.word	1051772663
.LC9:
	.word	2696277389
	.word	1052821239
.LC10:
	.word	3539053052
	.word	1065378381
.LC14:
	.word	3435973837
	.word	1073007820
.LC15:
	.word	981314128
	.word	1072935710
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
.LC11:
	.string	"DAXPY a[i] = a[i] + s * b[i], 16 byte/it, 2 Flop/it\n"
	.zero	3
.LC12:
	.string	"Checking for %s. Frequency *must* be set to %4.2f GHz for valid cy/CL.\n"
.LC13:
	.string	"Size (KByte) |   runtime   |  MFlop/s  |  cy/CL  |  MB/s   |  MLUP/s | repeat | size\n"
	.ident	"GCC: (ARM-build-8) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
