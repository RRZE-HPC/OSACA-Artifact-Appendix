	.arch armv8.1-a+crypto+crc
	.file	"copy.c"
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
	.global	copy
	.type	copy, %function
copy:
.LFB34:
	.cfi_startproc
	sub	sp, sp, #1152
	.cfi_def_cfa_offset 1152
	stp	x29, x30, [sp]
	.cfi_offset 29, -1152
	.cfi_offset 30, -1144
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -1120
	.cfi_offset 22, -1112
	mov	x22, x0
	mov	x0, 64
	lsl	x21, x22, 3
	mov	x1, x21
	stp	x19, x20, [sp, 16]
	stp	x23, x24, [sp, 48]
	str	x25, [sp, 64]
	stp	d8, d9, [sp, 80]
	.cfi_offset 19, -1136
	.cfi_offset 20, -1128
	.cfi_offset 23, -1104
	.cfi_offset 24, -1096
	.cfi_offset 25, -1088
	.cfi_offset 72, -1072
	.cfi_offset 73, -1064
	bl	aligned_alloc
	mov	x19, x0
	mov	x0, 64
	mov	x1, x21
	bl	aligned_alloc
	mov	x20, x0
	cmp	x22, 0
	ble	.L11
	sub	x2, x21, #8
	adrp	x1, .LC5
	add	x3, x21, x19
	mov	x0, x19
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
	lsr	x23, x22, 1
	and	x24, x22, -2
	ldr	d8, [x9, #:lo12:.LC6]
	mov	w25, 1
	lsl	x23, x23, 4
	.p2align 4
.L20:
	add	x1, sp, 112
	add	x0, sp, 96
	mov	w21, 0
	bl	timing
	.p2align 4
.L19:
	ldr	d0, [x19]
	fcmpe	d0, #0.0
	bmi	.L99
.L13:
	cmp	x22, 0
	ble	.L15
	cmp	x22, 1
	beq	.L21
	sub	x11, x23, #16
	mov	x15, 0
	lsr	x12, x11, 4
	add	x13, x12, 1
	ands	x14, x13, 7
	beq	.L17
	cmp	x14, 1
	beq	.L75
	cmp	x14, 2
	beq	.L76
	cmp	x14, 3
	beq	.L77
	cmp	x14, 4
	beq	.L78
	cmp	x14, 5
	beq	.L79
	cmp	x14, 6
	beq	.L80
	ldr	q1, [x19]
	mov	x15, 16
	str	q1, [x20]
.L80:
	ldr	q2, [x19, x15]
	str	q2, [x20, x15]
	add	x15, x15, 16
.L79:
	ldr	q3, [x19, x15]
	str	q3, [x20, x15]
	add	x15, x15, 16
.L78:
	ldr	q4, [x19, x15]
	str	q4, [x20, x15]
	add	x15, x15, 16
.L77:
	ldr	q5, [x19, x15]
	str	q5, [x20, x15]
	add	x15, x15, 16
.L76:
	ldr	q6, [x19, x15]
	str	q6, [x20, x15]
	add	x15, x15, 16
.L75:
	ldr	q7, [x19, x15]
	str	q7, [x20, x15]
	add	x15, x15, 16
	cmp	x23, x15
	beq	.L97
# LLVM-MCA-BEGIN
    // OSACA-BEGIN
.L17:
	add	x16, x15, 16
	ldr	q9, [x19, x15]
	add	x30, x15, 32
	add	x17, x15, 48
	ldr	q16, [x19, x16]
	ldr	q18, [x19, x30]
	add	x18, x15, 64
	add	x1, x15, 80
	ldr	q17, [x19, x17]
	ldr	q19, [x19, x18]
	add	x3, x15, 96
	add	x2, x15, 112
	ldr	q20, [x19, x1]
	ldr	q21, [x19, x3]
	str	q9, [x20, x15]
	ldr	q22, [x19, x2]
	add	x15, x15, 128
	str	q16, [x20, x16]
	str	q18, [x20, x30]
	str	q17, [x20, x17]
	str	q19, [x20, x18]
	str	q20, [x20, x1]
	str	q21, [x20, x3]
	str	q22, [x20, x2]
	cmp	x23, x15
	bne	.L17
    // OSACA-END
    # LLVM-MCA-END
.L97:
	mov	x10, x24
	cmp	x22, x24
	beq	.L15
.L16:
	lsl	x4, x10, 3
	ldr	x5, [x19, x4]
	str	x5, [x20, x4]
.L15:
	add	w21, w21, 1
	cmp	w21, w25
	bne	.L19
	add	x1, sp, 112
	add	x0, sp, 104
	lsl	w25, w21, 1
	bl	timing
	ldp	d23, d24, [sp, 96]
	fsub	d9, d24, d23
	fcmpe	d9, d8
	bmi	.L20
	mov	x1, 1024
	add	x0, sp, 128
	asr	w24, w25, 1
	bl	gethostname
	adrp	x23, .LC4
	add	x1, sp, 120
	add	x0, sp, 128
	bl	getFreq
	fmov	d25, 1.0e+0
	ldr	d6, [sp, 120]
	fmov	d26, 8.0e+0
	sxtw	x6, w24
	scvtf	d29, x22
	scvtf	d27, w24
	mul	x8, x6, x22
	adrp	x7, .LC7
	ldr	d28, [x7, #:lo12:.LC7]
	mov	x0, 4530621225134718976
	adrp	x9, .LC8
	fmov	d1, d9
	fmov	d30, x0
	ldr	d31, [x9, #:lo12:.LC8]
	add	x0, x23, :lo12:.LC4
	mov	w1, w24
	fdiv	d8, d25, d9
	mov	x2, x22
	scvtf	d7, d6
	fmul	d16, d7, d26
	scvtf	d17, x8
	fmul	d2, d27, d29
	fmul	d0, d29, d31
	fmul	d18, d16, d9
	fmul	d3, d8, d28
	fmul	d4, d8, d30
	fmul	d5, d3, d2
	fdiv	d3, d18, d17
	fmul	d4, d4, d2
	fmov	d2, d5
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
	ldp	d8, d9, [sp, 80]
	add	sp, sp, 1152
	.cfi_remember_state
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
	.size	copy, .-copy
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
.L101:
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
	bl	copy
	scvtf	d1, w20
	fmov	d0, d8
	bl	__pow_finite
	fcvtzs	w9, d0
	cmp	w9, 0
	add	w10, w9, 63
	csel	w11, w10, w9, lt
	and	w12, w11, -64
	sxtw	x0, w12
	bl	copy
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
	bl	copy
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
	bl	copy
	cmp	w19, 36
	bne	.L101
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
	.string	"COPY b[i] = a[i], 8 byte/it, 0 Flop/it\n"
.LC10:
	.string	"Checking for %s. Frequency *must* be set to %4.2f GHz for valid cy/CL.\n"
.LC11:
	.string	"Size (KByte) |   runtime   |  MFlop/s  |  cy/CL  |  MB/s   |  MLUP/s | repeat | size\n"
	.ident	"GCC: (ARM-build-8) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
