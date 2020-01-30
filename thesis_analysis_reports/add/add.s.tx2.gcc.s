	.arch armv8.1-a+crypto+crc
	.file	"add.c"
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
	.global	add
	.type	add, %function
add:
.LFB34:
	.cfi_startproc
	sub	sp, sp, #1152
	.cfi_def_cfa_offset 1152
	stp	x29, x30, [sp]
	.cfi_offset 29, -1152
	.cfi_offset 30, -1144
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	.cfi_offset 21, -1120
	.cfi_offset 22, -1112
	.cfi_offset 23, -1104
	.cfi_offset 24, -1096
	mov	x23, x0
	mov	x0, 64
	lsl	x22, x23, 3
	mov	x1, x22
	stp	x19, x20, [sp, 16]
	stp	x25, x26, [sp, 64]
	stp	d8, d9, [sp, 80]
	.cfi_offset 19, -1136
	.cfi_offset 20, -1128
	.cfi_offset 25, -1088
	.cfi_offset 26, -1080
	.cfi_offset 72, -1072
	.cfi_offset 73, -1064
	bl	aligned_alloc
	mov	x19, x0
	mov	x0, 64
	mov	x1, x22
	bl	aligned_alloc
	mov	x20, x0
	mov	x0, 64
	mov	x1, x22
	bl	aligned_alloc
	mov	x21, x0
	cmp	x23, 0
	ble	.L11
	sub	x3, x22, #8
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
	str	x2, [x20, x0]
	str	x10, [x21, x0]
	add	x0, x0, 8
.L73:
	str	x2, [x20, x0]
	str	x10, [x21, x0]
	add	x0, x0, 8
.L72:
	str	x2, [x20, x0]
	str	x10, [x21, x0]
	add	x0, x0, 8
.L71:
	str	x2, [x20, x0]
	str	x10, [x21, x0]
	add	x0, x0, 8
.L70:
	str	x2, [x20, x0]
	str	x10, [x21, x0]
	add	x0, x0, 8
.L69:
	str	x2, [x20, x0]
	str	x10, [x21, x0]
	add	x0, x0, 8
	cmp	x22, x0
	beq	.L11
.L12:
	add	x11, x0, 8
	str	x2, [x20, x0]
	add	x9, x0, 16
	add	x8, x0, 24
	str	x10, [x21, x0]
	add	x12, x0, 32
	add	x13, x0, 40
	add	x14, x0, 48
	str	x2, [x20, x11]
	add	x15, x0, 56
	add	x0, x0, 64
	str	x10, [x21, x11]
	str	x2, [x20, x9]
	str	x10, [x21, x9]
	str	x2, [x20, x8]
	str	x10, [x21, x8]
	str	x2, [x20, x12]
	str	x10, [x21, x12]
	str	x2, [x20, x13]
	str	x10, [x21, x13]
	str	x2, [x20, x14]
	str	x10, [x21, x14]
	str	x2, [x20, x15]
	str	x10, [x21, x15]
	cmp	x22, x0
	bne	.L12
.L11:
	adrp	x16, .LC7
	lsr	x24, x23, 1
	and	x25, x23, -2
	ldr	d8, [x16, #:lo12:.LC7]
	mov	w26, 1
	lsl	x24, x24, 4
	.p2align 4
.L20:
	add	x1, sp, 112
	add	x0, sp, 96
	mov	w22, 0
	bl	timing
	.p2align 4
.L19:
	ldr	d0, [x19]
	fcmpe	d0, #0.0
	bmi	.L100
.L13:
	cmp	x23, 0
	ble	.L15
	cmp	x23, 1
	beq	.L21
	sub	x18, x24, #16
	mov	x10, 0
	lsr	x30, x18, 4
	add	x3, x30, 1
	ands	x1, x3, 7
	beq	.L17
	cmp	x1, 1
	beq	.L75
	cmp	x1, 2
	beq	.L76
	cmp	x1, 3
	beq	.L77
	cmp	x1, 4
	beq	.L78
	cmp	x1, 5
	beq	.L79
	cmp	x1, 6
	beq	.L80
	ldr	q2, [x21]
	ldr	q1, [x20]
	mov	x10, 16
	fadd	v3.2d, v2.2d, v1.2d
	str	q3, [x19]
.L80:
	ldr	q4, [x21, x10]
	ldr	q5, [x20, x10]
	fadd	v6.2d, v4.2d, v5.2d
	str	q6, [x19, x10]
	add	x10, x10, 16
.L79:
	ldr	q7, [x21, x10]
	ldr	q9, [x20, x10]
	fadd	v16.2d, v7.2d, v9.2d
	str	q16, [x19, x10]
	add	x10, x10, 16
.L78:
	ldr	q17, [x21, x10]
	ldr	q18, [x20, x10]
	fadd	v19.2d, v17.2d, v18.2d
	str	q19, [x19, x10]
	add	x10, x10, 16
.L77:
	ldr	q20, [x21, x10]
	ldr	q21, [x20, x10]
	fadd	v22.2d, v20.2d, v21.2d
	str	q22, [x19, x10]
	add	x10, x10, 16
.L76:
	ldr	q23, [x21, x10]
	ldr	q24, [x20, x10]
	fadd	v25.2d, v23.2d, v24.2d
	str	q25, [x19, x10]
	add	x10, x10, 16
.L75:
	ldr	q26, [x21, x10]
	ldr	q27, [x20, x10]
	fadd	v28.2d, v26.2d, v27.2d
	str	q28, [x19, x10]
	add	x10, x10, 16
	cmp	x24, x10
	beq	.L97
    # LLVM-MCA-BEGIN
    // OSACA-BEGIN
.L17:
	add	x0, x10, 16
	ldr	q29, [x21, x10]
	ldr	q30, [x20, x10]
	add	x7, x10, 32
	ldr	q31, [x21, x0]
	ldr	q2, [x20, x0]
	add	x6, x10, 48
	add	x5, x10, 64
	ldr	q5, [x21, x7]
	ldr	q1, [x20, x7]
	add	x4, x10, 80
	add	x11, x10, 96
	ldr	q4, [x21, x6]
	ldr	q0, [x20, x6]
	add	x2, x10, 112
	fadd	v7.2d, v29.2d, v30.2d
	ldr	q3, [x21, x5]
	ldr	q9, [x20, x5]
	fadd	v6.2d, v31.2d, v2.2d
	ldr	q19, [x21, x4]
	ldr	q18, [x20, x4]
	fadd	v20.2d, v5.2d, v1.2d
	ldr	q21, [x21, x11]
	ldr	q17, [x20, x11]
	fadd	v22.2d, v4.2d, v0.2d
	ldr	q23, [x21, x2]
	ldr	q16, [x20, x2]
	fadd	v24.2d, v3.2d, v9.2d
	fadd	v25.2d, v19.2d, v18.2d
	fadd	v26.2d, v21.2d, v17.2d
	str	q7, [x19, x10]
	add	x10, x10, 128
	fadd	v27.2d, v23.2d, v16.2d
	str	q6, [x19, x0]
	str	q20, [x19, x7]
	str	q22, [x19, x6]
	str	q24, [x19, x5]
	str	q25, [x19, x4]
	str	q26, [x19, x11]
	str	q27, [x19, x2]
	cmp	x24, x10
	bne	.L17
    // OSACA-END
    # LLVM-MCA-END
.L97:
	mov	x17, x25
	cmp	x23, x25
	beq	.L15
.L16:
	lsl	x8, x17, 3
	ldr	d28, [x21, x8]
	ldr	d29, [x20, x8]
	fadd	d30, d28, d29
	str	d30, [x19, x8]
.L15:
	add	w22, w22, 1
	cmp	w22, w26
	bne	.L19
	add	x1, sp, 112
	add	x0, sp, 104
	lsl	w26, w22, 1
	bl	timing
	ldp	d31, d2, [sp, 96]
	fsub	d9, d2, d31
	fcmpe	d9, d8
	bmi	.L20
	mov	x1, 1024
	add	x0, sp, 128
	asr	w25, w26, 1
	bl	gethostname
	add	x1, sp, 120
	add	x0, sp, 128
	bl	getFreq
	fmov	d6, 1.0e+0
	ldr	d17, [sp, 120]
	fmov	d3, 8.0e+0
	sxtw	x12, w25
	mul	x14, x12, x23
	scvtf	d8, x23
	scvtf	d4, w25
	adrp	x9, .LC8
	ldr	d5, [x9, #:lo12:.LC8]
	mov	x13, 4537376624575774720
	mov	x15, 4575657221408423936
	fmov	d1, d9
	fmov	d7, x13
	fmov	d0, x15
	adrp	x16, .LC4
	mov	w1, w25
	fdiv	d19, d6, d9
	add	x0, x16, :lo12:.LC4
	mov	x2, x23
	scvtf	d22, d17
	fmul	d23, d22, d3
	scvtf	d16, x14
	fmul	d18, d4, d8
	fmul	d0, d8, d0
	fmul	d24, d23, d9
	fdiv	d3, d24, d16
	fmul	d20, d19, d5
	fmul	d21, d19, d7
	fmul	d5, d20, d18
	fmul	d4, d21, d18
	fmov	d2, d5
	bl	printf
	mov	x0, x19
	bl	free
	mov	x0, x20
	bl	free
	mov	x0, x21
	bl	free
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	d8, d9, [sp, 80]
	add	sp, sp, 1152
	.cfi_remember_state
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 29
	.cfi_restore 30
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
	mov	x17, 0
	b	.L16
.L99:
	mov	x0, 8
	str	x2, [x20]
	str	x10, [x21]
	b	.L74
	.cfi_endproc
.LFE34:
	.size	add, .-add
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
	adrp	x0, .LC12
	mov	x1, 1024
	stp	x29, x30, [sp]
	.cfi_offset 29, -1088
	.cfi_offset 30, -1080
	mov	x29, sp
	str	d8, [sp, 32]
	.cfi_offset 72, -1056
	ldr	d8, [x0, #:lo12:.LC12]
	add	x0, sp, 64
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
	adrp	x2, .LC13
	ldr	d0, [sp, 56]
	adrp	x3, .LC10
	ldr	d1, [x2, #:lo12:.LC13]
	add	x0, x3, :lo12:.LC10
	add	x1, sp, 64
	scvtf	d2, d0
	fmul	d0, d2, d1
	bl	printf
	adrp	x4, .LC11
	add	x0, x4, :lo12:.LC11
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
	bl	add
	scvtf	d1, w20
	fmov	d0, d8
	bl	__pow_finite
	fcvtzs	w9, d0
	cmp	w9, 0
	add	w10, w9, 63
	csel	w11, w10, w9, lt
	and	w12, w11, -64
	sxtw	x0, w12
	bl	add
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
	bl	add
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
	bl	add
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
	.word	2576980378
	.word	1070176665
.LC8:
	.word	2696277389
	.word	1051772663
.LC12:
	.word	3435973837
	.word	1073007820
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
.LC9:
	.string	"ADD a[i] = b[i] + c[i], 24 byte/it, 1 Flop/it\n"
	.zero	1
.LC10:
	.string	"Checking for %s. Frequency *must* be set to %4.2f GHz for valid cy/CL.\n"
.LC11:
	.string	"Size (KByte) |   runtime   |  MFlop/s  |  cy/CL  |  MB/s   |  MLUP/s | repeat | size\n"
	.ident	"GCC: (ARM-build-8) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
