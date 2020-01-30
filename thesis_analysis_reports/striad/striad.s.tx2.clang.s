	.text
	.file	"striad.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               // -- Begin function getFreq
.LCPI0_0:
	.xword	4612136378390124954     // double 2.2000000000000002
.LCPI0_1:
	.xword	4612361558371493478     // double 2.2999999999999998
	.text
	.globl	getFreq
	.p2align	6
	.type	getFreq,@function
getFreq:                                // @getFreq
	.cfi_startproc
// %bb.0:
	str	d8, [sp, #-48]!         // 8-byte Folded Spill
	stp	x20, x19, [sp, #16]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset b8, -48
	mov	x19, x1
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	x20, x0
	bl	strcmp
	cbz	w0, .LBB0_4
// %bb.1:
	adrp	x1, .L.str.1
	mov	x0, x20
	add	x1, x1, :lo12:.L.str.1
	bl	strcmp
	cbz	w0, .LBB0_5
// %bb.2:
	adrp	x1, .L.str.2
	mov	x0, x20
	add	x1, x1, :lo12:.L.str.2
	bl	strcmp
	cbz	w0, .LBB0_6
// %bb.3:
	mov	w0, #-1
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]     // 16-byte Folded Reload
	ldr	d8, [sp], #48           // 8-byte Folded Reload
	ret
.LBB0_4:
	fmov	d8, #2.50000000
	b	.LBB0_7
.LBB0_5:
	adrp	x8, .LCPI0_0
	ldr	d8, [x8, :lo12:.LCPI0_0]
	b	.LBB0_7
.LBB0_6:
	adrp	x8, .LCPI0_1
	ldr	d8, [x8, :lo12:.LCPI0_1]
.LBB0_7:
	fmov	d0, #10.00000000
	fmov	d1, #9.00000000
	bl	__pow_finite
	fmul	d0, d0, d8
	mov	w0, wzr
	fcvtzs	x8, d0
	str	x8, [x19]
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]     // 16-byte Folded Reload
	ldr	d8, [sp], #48           // 8-byte Folded Reload
	ret
.Lfunc_end0:
	.size	getFreq, .Lfunc_end0-getFreq
	.cfi_endproc
                                        // -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               // -- Begin function striad
.LCPI1_0:
	.xword	4596373779694328218     // double 0.20000000000000001
.LCPI1_1:
	.xword	4575765307799480828     // double 0.0080000000000000002
.LCPI1_2:
	.xword	4521832792735477133     // double 1.9999999999999999E-6
.LCPI1_3:
	.xword	4517329193108106637     // double 9.9999999999999995E-7
	.text
	.globl	striad
	.p2align	6
	.type	striad,@function
striad:                                 // @striad
	.cfi_startproc
// %bb.0:
	stp	d15, d14, [sp, #-160]!  // 16-byte Folded Spill
	stp	d13, d12, [sp, #16]     // 16-byte Folded Spill
	stp	d11, d10, [sp, #32]     // 16-byte Folded Spill
	stp	d9, d8, [sp, #48]       // 16-byte Folded Spill
	stp	x28, x27, [sp, #64]     // 16-byte Folded Spill
	stp	x26, x25, [sp, #80]     // 16-byte Folded Spill
	stp	x24, x23, [sp, #96]     // 16-byte Folded Spill
	stp	x22, x21, [sp, #112]    // 16-byte Folded Spill
	stp	x20, x19, [sp, #128]    // 16-byte Folded Spill
	stp	x29, x30, [sp, #144]    // 16-byte Folded Spill
	add	x29, sp, #144           // =144
	sub	sp, sp, #1200           // =1200
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	.cfi_offset b10, -120
	.cfi_offset b11, -128
	.cfi_offset b12, -136
	.cfi_offset b13, -144
	.cfi_offset b14, -152
	.cfi_offset b15, -160
	lsl	x23, x0, #3
	mov	x1, x23
	mov	x19, x0
	orr	w0, wzr, #0x40
	bl	aligned_alloc
	mov	x1, x23
	mov	x20, x0
	orr	w0, wzr, #0x40
	bl	aligned_alloc
	mov	x1, x23
	mov	x21, x0
	orr	w0, wzr, #0x40
	bl	aligned_alloc
	mov	x1, x23
	mov	x22, x0
	orr	w0, wzr, #0x40
	bl	aligned_alloc
	mov	x23, x0
	cmp	x19, #1                 // =1
	b.lt	.LBB1_3
// %bb.1:
	cmp	x19, #7                 // =7
	b.hi	.LBB1_9
// %bb.2:
	mov	x8, xzr
	b	.LBB1_17
.LBB1_3:
	adrp	x8, .LCPI1_0
	orr	w24, wzr, #0x1
	ldr	d9, [x8, :lo12:.LCPI1_0]
	.p2align	6
.LBB1_4:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB1_5 Depth 2
	sub	x0, x29, #160           // =160
	sub	x1, x29, #176           // =176
	bl	timing
	mov	w25, w24
	cbz	w24, .LBB1_8
	.p2align	6
.LBB1_5:                                //   Parent Loop BB1_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	d0, [x20]
	fcmp	d0, #0.0
	b.ge	.LBB1_7
// %bb.6:                               //   in Loop: Header=BB1_5 Depth=2
	mov	x0, x20
	bl	dummy
.LBB1_7:                                //   in Loop: Header=BB1_5 Depth=2
	subs	w25, w25, #1            // =1
	b.ne	.LBB1_5
.LBB1_8:                                //   in Loop: Header=BB1_4 Depth=1
	sub	x0, x29, #168           // =168
	sub	x1, x29, #176           // =176
	bl	timing
	ldp	d0, d1, [x29, #-168]
	fsub	d8, d0, d1
	lsl	w24, w24, #1
	fcmp	d8, d9
	b.lt	.LBB1_4
	b	.LBB1_38
.LBB1_9:
	and	x8, x19, #0xfffffffffffffff8
	sub	x10, x8, #8             // =8
	lsr	x11, x10, #3
	add	w9, w11, #1             // =1
	and	x9, x9, #0x7
	cmp	x10, #56                // =56
	b.hs	.LBB1_11
// %bb.10:
	orr	w12, wzr, #0x20
	cbnz	x9, .LBB1_14
	b	.LBB1_16
.LBB1_11:
	mov	x15, #28286
	movk	x15, #29109, lsl #16
	movk	x15, #34426, lsl #32
	movk	x15, #16000, lsl #48
	dup	v0.2d, x15
	mov	x15, #47630
	movk	x15, #23255, lsl #16
	movk	x15, #27789, lsl #32
	movk	x15, #16105, lsl #48
	dup	v1.2d, x15
	mov	x15, #26979
	movk	x15, #9457, lsl #16
	movk	x15, #61976, lsl #32
	movk	x15, #16128, lsl #48
	dup	v2.2d, x15
	mvn	x11, x11
	mov	x10, xzr
	add	x11, x9, x11
	add	x12, x23, #256          // =256
	add	x13, x22, #256          // =256
	add	x14, x21, #256          // =256
	.p2align	6
.LBB1_12:                               // =>This Inner Loop Header: Depth=1
	stp	q0, q0, [x14, #-256]
	stp	q0, q0, [x14, #-224]
	stp	q1, q1, [x13, #-256]
	stp	q1, q1, [x13, #-224]
	stp	q2, q2, [x12, #-256]
	add	x10, x10, #64           // =64
	stp	q2, q2, [x12, #-224]
	stp	q0, q0, [x14, #-192]
	stp	q0, q0, [x14, #-160]
	stp	q1, q1, [x13, #-192]
	stp	q1, q1, [x13, #-160]
	stp	q2, q2, [x12, #-192]
	stp	q2, q2, [x12, #-160]
	stp	q0, q0, [x14, #-128]
	stp	q1, q1, [x13, #-128]
	stp	q1, q1, [x13, #-96]
	stp	q2, q2, [x12, #-128]
	stp	q2, q2, [x12, #-96]
	stp	q1, q1, [x13, #-64]
	stp	q1, q1, [x13, #-32]
	stp	q2, q2, [x12, #-64]
	stp	q2, q2, [x12, #-32]
	stp	q1, q1, [x13]
	stp	q1, q1, [x13, #32]
	stp	q2, q2, [x12]
	stp	q2, q2, [x12, #32]
	stp	q1, q1, [x13, #64]
	stp	q1, q1, [x13, #96]
	stp	q2, q2, [x12, #64]
	stp	q2, q2, [x12, #96]
	stp	q1, q1, [x13, #128]
	stp	q1, q1, [x13, #160]
	stp	q2, q2, [x12, #128]
	stp	q2, q2, [x12, #160]
	stp	q1, q1, [x13, #192]
	stp	q1, q1, [x13, #224]
	add	x13, x13, #512          // =512
	stp	q2, q2, [x12, #192]
	stp	q2, q2, [x12, #224]
	add	x12, x12, #512          // =512
	stp	q0, q0, [x14, #-96]
	stp	q0, q0, [x14, #-64]
	stp	q0, q0, [x14, #-32]
	stp	q0, q0, [x14]
	stp	q0, q0, [x14, #32]
	stp	q0, q0, [x14, #64]
	stp	q0, q0, [x14, #96]
	stp	q0, q0, [x14, #128]
	stp	q0, q0, [x14, #160]
	stp	q0, q0, [x14, #192]
	stp	q0, q0, [x14, #224]
	add	x14, x14, #512          // =512
	adds	x11, x11, #8            // =8
	b.ne	.LBB1_12
// %bb.13:
	lsl	x10, x10, #3
	orr	x12, x10, #0x20
	cbz	x9, .LBB1_16
.LBB1_14:
	mov	x13, #28286
	movk	x13, #29109, lsl #16
	movk	x13, #34426, lsl #32
	movk	x13, #16000, lsl #48
	dup	v0.2d, x13
	mov	x13, #47630
	movk	x13, #23255, lsl #16
	movk	x13, #27789, lsl #32
	movk	x13, #16105, lsl #48
	dup	v1.2d, x13
	mov	x13, #26979
	movk	x13, #9457, lsl #16
	movk	x13, #61976, lsl #32
	movk	x13, #16128, lsl #48
	dup	v2.2d, x13
	neg	x9, x9
	add	x10, x21, x12
	add	x11, x22, x12
	add	x12, x23, x12
	.p2align	6
.LBB1_15:                               // =>This Inner Loop Header: Depth=1
	stp	q0, q0, [x10, #-32]
	stp	q1, q1, [x11, #-32]
	stp	q2, q2, [x12, #-32]
	stp	q0, q0, [x10], #64
	stp	q1, q1, [x11], #64
	stp	q2, q2, [x12], #64
	adds	x9, x9, #1              // =1
	b.ne	.LBB1_15
.LBB1_16:
	cmp	x8, x19
	b.eq	.LBB1_19
.LBB1_17:
	mov	x12, #28286
	mov	x13, #47630
	mov	x14, #26979
	lsl	x11, x8, #3
	movk	x12, #29109, lsl #16
	movk	x13, #23255, lsl #16
	movk	x14, #9457, lsl #16
	add	x9, x21, x11
	add	x10, x22, x11
	add	x11, x23, x11
	sub	x8, x19, x8
	movk	x12, #34426, lsl #32
	movk	x13, #27789, lsl #32
	movk	x14, #61976, lsl #32
	movk	x12, #16000, lsl #48
	movk	x13, #16105, lsl #48
	movk	x14, #16128, lsl #48
	.p2align	6
.LBB1_18:                               // =>This Inner Loop Header: Depth=1
	str	x12, [x9], #8
	str	x13, [x10], #8
	str	x14, [x11], #8
	subs	x8, x8, #1              // =1
	b.ne	.LBB1_18
.LBB1_19:
	add	x8, x20, #256           // =256
	str	x8, [sp, #48]           // 8-byte Folded Spill
	add	x8, x23, #256           // =256
	sub	x25, x19, #8            // =8
	str	x8, [sp, #40]           // 8-byte Folded Spill
	add	x8, x22, #256           // =256
	str	x8, [sp, #32]           // 8-byte Folded Spill
	lsr	x8, x25, #3
	add	w9, w8, #1              // =1
	mvn	x8, x8
	and	x28, x9, #0x7
	add	x8, x28, x8
	str	x8, [sp, #24]           // 8-byte Folded Spill
	add	x8, x21, #256           // =256
	str	x8, [sp, #16]           // 8-byte Folded Spill
	neg	x8, x28
	str	x8, [sp, #88]           // 8-byte Folded Spill
	add	x8, x21, #32            // =32
	str	x8, [sp, #80]           // 8-byte Folded Spill
	add	x8, x22, #32            // =32
	str	x8, [sp, #72]           // 8-byte Folded Spill
	add	x8, x20, #32            // =32
	str	x8, [sp, #64]           // 8-byte Folded Spill
	add	x8, x23, #32            // =32
	str	x8, [sp, #56]           // 8-byte Folded Spill
	adrp	x8, .LCPI1_0
	ldr	d0, [x8, :lo12:.LCPI1_0]
	and	x26, x19, #0xfffffffffffffff8
	orr	w24, wzr, #0x1
	str	d0, [sp, #8]            // 8-byte Folded Spill
	.p2align	6
.LBB1_20:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB1_22 Depth 2
                                        //       Child Loop BB1_29 Depth 3
                                        //       Child Loop BB1_32 Depth 3
                                        //       Child Loop BB1_35 Depth 3
	sub	x0, x29, #160           // =160
	sub	x1, x29, #176           // =176
	bl	timing
	cbz	w24, .LBB1_37
// %bb.21:                              //   in Loop: Header=BB1_20 Depth=1
	mov	w27, wzr
	.p2align	6
.LBB1_22:                               //   Parent Loop BB1_20 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB1_29 Depth 3
                                        //       Child Loop BB1_32 Depth 3
                                        //       Child Loop BB1_35 Depth 3
	ldr	d0, [x20]
	fcmp	d0, #0.0
	b.ge	.LBB1_24
// %bb.23:                              //   in Loop: Header=BB1_22 Depth=2
	mov	x0, x20
	bl	dummy
.LBB1_24:                               //   in Loop: Header=BB1_22 Depth=2
	cmp	x19, #7                 // =7
	b.hi	.LBB1_26
// %bb.25:                              //   in Loop: Header=BB1_22 Depth=2
	mov	x9, xzr
	b	.LBB1_34
	.p2align	6
.LBB1_26:                               //   in Loop: Header=BB1_22 Depth=2
	cmp	x25, #56                // =56
	b.hs	.LBB1_28
// %bb.27:                              //   in Loop: Header=BB1_22 Depth=2
	mov	x8, xzr
	cbnz	x28, .LBB1_31
	b	.LBB1_33
	.p2align	6
.LBB1_28:                               //   in Loop: Header=BB1_22 Depth=2
	ldp	x9, x13, [sp, #16]      // 16-byte Folded Reload
	ldp	x10, x11, [sp, #32]     // 16-byte Folded Reload
	ldr	x12, [sp, #48]          // 8-byte Folded Reload
	mov	x8, xzr
	.p2align	6
    # LLVM-MCA-BEGIN
    // OSACA-BEGIN
.LBB1_29:                               //   Parent Loop BB1_20 Depth=1
                                        //     Parent Loop BB1_22 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldp	q0, q1, [x9, #-256]
	ldp	q2, q3, [x9, #-224]
	ldp	q4, q5, [x10, #-256]
	ldp	q6, q7, [x10, #-224]
	ldp	q16, q17, [x11, #-256]
	ldp	q18, q19, [x11, #-224]
	fmla	v0.2d, v16.2d, v4.2d
	fmla	v1.2d, v17.2d, v5.2d
	stp	q1, q0, [sp, #96]       // 32-byte Folded Spill
	fmla	v2.2d, v18.2d, v6.2d
	fmla	v3.2d, v19.2d, v7.2d
	ldp	q4, q5, [x9, #-192]
	ldp	q6, q7, [x9, #-160]
	ldp	q16, q17, [x10, #-192]
	ldp	q18, q19, [x10, #-160]
	ldp	q20, q21, [x11, #-192]
	ldp	q22, q23, [x11, #-160]
	fmla	v4.2d, v20.2d, v16.2d
	stp	q3, q4, [x12, #-208]
	fmla	v5.2d, v21.2d, v17.2d
	fmla	v6.2d, v22.2d, v18.2d
	stp	q5, q6, [x12, #-176]
	fmla	v7.2d, v23.2d, v19.2d
	ldp	q16, q18, [x9, #-128]
	ldp	q17, q19, [x9, #-96]
	ldp	q20, q21, [x10, #-128]
	ldp	q22, q23, [x10, #-96]
	ldp	q24, q25, [x11, #-128]
	ldp	q26, q27, [x11, #-96]
	fmla	v16.2d, v24.2d, v20.2d
	stp	q7, q16, [x12, #-144]
	fmla	v18.2d, v25.2d, v21.2d
	fmla	v17.2d, v26.2d, v22.2d
	stp	q18, q17, [x12, #-112]
	fmla	v19.2d, v27.2d, v23.2d
	ldp	q22, q23, [x9, #-64]
	ldp	q20, q21, [x9, #-32]
	ldp	q24, q25, [x10, #-64]
	ldp	q26, q27, [x10, #-32]
	ldp	q28, q29, [x11, #-64]
	ldp	q30, q31, [x11, #-32]
	fmla	v22.2d, v28.2d, v24.2d
	stp	q19, q22, [x12, #-80]
	fmla	v23.2d, v29.2d, v25.2d
	fmla	v20.2d, v30.2d, v26.2d
	stp	q23, q20, [x12, #-48]
	fmla	v21.2d, v31.2d, v27.2d
	stur	q21, [x12, #-16]
	ldp	q24, q25, [x9]
	ldp	q26, q27, [x9, #32]
	ldp	q28, q29, [x10]
	ldp	q30, q31, [x10, #32]
	ldp	q8, q10, [x11]
	ldp	q11, q12, [x11, #32]
	fmla	v24.2d, v8.2d, v28.2d
	fmla	v25.2d, v10.2d, v29.2d
	stp	q24, q25, [x12]
	fmla	v26.2d, v11.2d, v30.2d
	fmla	v27.2d, v12.2d, v31.2d
	stp	q26, q27, [x12, #32]
	ldp	q28, q29, [x9, #64]
	ldp	q30, q31, [x9, #96]
	ldp	q8, q10, [x10, #64]
	ldp	q11, q12, [x10, #96]
	ldp	q13, q14, [x11, #64]
	ldp	q15, q9, [x11, #96]
	fmla	v28.2d, v13.2d, v8.2d
	fmla	v29.2d, v14.2d, v10.2d
	stp	q28, q29, [x12, #64]
	fmla	v30.2d, v15.2d, v11.2d
	fmla	v31.2d, v9.2d, v12.2d
	stp	q30, q31, [x12, #96]
	ldp	q8, q9, [x9, #128]
	ldp	q12, q13, [x10, #128]
	ldp	q14, q15, [x11, #128]
	ldp	q10, q11, [x9, #160]
	fmla	v8.2d, v14.2d, v12.2d
	ldp	q12, q14, [x10, #160]
	fmla	v9.2d, v15.2d, v13.2d
	stp	q8, q9, [x12, #128]
	ldp	q13, q15, [x11, #160]
	fmla	v10.2d, v13.2d, v12.2d
	fmla	v11.2d, v15.2d, v14.2d
	stp	q10, q11, [x12, #160]
	ldp	q12, q13, [x9, #192]
	ldp	q14, q15, [x10, #192]
	ldp	q0, q1, [x11, #192]
	fmla	v12.2d, v0.2d, v14.2d
	ldr	q0, [sp, #112]          // 16-byte Folded Reload
	stur	q0, [x12, #-256]
	ldr	q0, [sp, #96]           // 16-byte Folded Reload
	stp	q0, q2, [x12, #-240]
	ldp	q0, q2, [x9, #224]
	ldp	q3, q4, [x10, #224]
	ldp	q5, q6, [x11, #224]
	fmla	v13.2d, v1.2d, v15.2d
	stp	q12, q13, [x12, #192]
	fmla	v0.2d, v5.2d, v3.2d
	fmla	v2.2d, v6.2d, v4.2d
	stp	q0, q2, [x12, #224]
	add	x8, x8, #64             // =64
	add	x12, x12, #512          // =512
	add	x11, x11, #512          // =512
	add	x10, x10, #512          // =512
	add	x9, x9, #512            // =512
	adds	x13, x13, #8            // =8
	b.ne	.LBB1_29
    // OSACA-END
    # LLVM-MCA-END
// %bb.30:                              //   in Loop: Header=BB1_22 Depth=2
	cbz	x28, .LBB1_33
.LBB1_31:                               //   in Loop: Header=BB1_22 Depth=2
	lsl	x11, x8, #3
	ldp	x9, x8, [sp, #72]       // 16-byte Folded Reload
	ldp	x12, x10, [sp, #56]     // 16-byte Folded Reload
	add	x8, x8, x11
	add	x9, x9, x11
	add	x10, x10, x11
	add	x11, x12, x11
	ldr	x12, [sp, #88]          // 8-byte Folded Reload
	.p2align	6
.LBB1_32:                               //   Parent Loop BB1_20 Depth=1
                                        //     Parent Loop BB1_22 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldp	q0, q1, [x8, #-32]
	ldp	q2, q3, [x8], #64
	ldp	q4, q5, [x9, #-32]
	ldp	q6, q7, [x9], #64
	ldp	q16, q17, [x11, #-32]
	ldp	q18, q19, [x11], #64
	fmla	v0.2d, v16.2d, v4.2d
	fmla	v1.2d, v17.2d, v5.2d
	stp	q0, q1, [x10, #-32]
	fmla	v2.2d, v18.2d, v6.2d
	fmla	v3.2d, v19.2d, v7.2d
	stp	q2, q3, [x10], #64
	adds	x12, x12, #1            // =1
	b.ne	.LBB1_32
.LBB1_33:                               //   in Loop: Header=BB1_22 Depth=2
	mov	x9, x26
	cmp	x26, x19
	b.eq	.LBB1_36
.LBB1_34:                               //   in Loop: Header=BB1_22 Depth=2
	lsl	x12, x9, #3
	sub	x8, x19, x9
	add	x9, x20, x12
	add	x10, x23, x12
	add	x11, x22, x12
	add	x12, x21, x12
	.p2align	6
.LBB1_35:                               //   Parent Loop BB1_20 Depth=1
                                        //     Parent Loop BB1_22 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	d0, [x12], #8
	ldr	d1, [x11], #8
	ldr	d2, [x10], #8
	fmadd	d0, d2, d1, d0
	str	d0, [x9], #8
	subs	x8, x8, #1              // =1
	b.ne	.LBB1_35
.LBB1_36:                               //   in Loop: Header=BB1_22 Depth=2
	add	w27, w27, #1            // =1
	cmp	w27, w24
	b.ne	.LBB1_22
.LBB1_37:                               //   in Loop: Header=BB1_20 Depth=1
	sub	x0, x29, #168           // =168
	sub	x1, x29, #176           // =176
	bl	timing
	ldp	d0, d1, [x29, #-168]
	fsub	d8, d0, d1
	ldr	d0, [sp, #8]            // 8-byte Folded Reload
	fcmp	d8, d0
	lsl	w24, w24, #1
	b.lt	.LBB1_20
.LBB1_38:
	add	x0, sp, #144            // =144
	orr	w1, wzr, #0x400
	lsr	w24, w24, #1
	bl	gethostname
	add	x0, sp, #144            // =144
	add	x1, sp, #136            // =136
	bl	getFreq
	scvtf	d1, x19
	scvtf	d2, w24
	adrp	x8, .LCPI1_1
	fmov	d3, #1.00000000
	ldr	d0, [x8, :lo12:.LCPI1_1]
	adrp	x8, .LCPI1_2
	adrp	x0, .L.str.3
	ldr	d5, [x8, :lo12:.LCPI1_2]
	mul	x8, x24, x19
	ldr	d4, [sp, #136]
	fmul	d0, d1, d0
	fmul	d1, d2, d1
	fdiv	d6, d3, d8
	scvtf	d3, d4
	scvtf	d4, x8
	fmul	d2, d1, d5
	fmov	d5, #0.12500000
	mov	x8, #4517110426252607488
	fmul	d3, d8, d3
	fmul	d4, d4, d5
	fmov	d5, x8
	adrp	x8, .LCPI1_3
	fdiv	d3, d3, d4
	fmov	d4, #24.00000000
	mov	w1, w24
	fmul	d4, d1, d4
	fmul	d2, d2, d6
	mov	x2, x19
	add	x0, x0, :lo12:.L.str.3
	fmul	d4, d4, d5
	ldr	d5, [x8, :lo12:.LCPI1_3]
	fmul	d1, d1, d5
	fmul	d4, d6, d4
	fmul	d5, d6, d1
	mov	v1.16b, v8.16b
	bl	printf
	mov	x0, x20
	bl	free
	mov	x0, x21
	bl	free
	mov	x0, x22
	bl	free
	mov	x0, x23
	bl	free
	add	sp, sp, #1200           // =1200
	ldp	x29, x30, [sp, #144]    // 16-byte Folded Reload
	ldp	x20, x19, [sp, #128]    // 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]    // 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]     // 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]     // 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]     // 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]       // 16-byte Folded Reload
	ldp	d11, d10, [sp, #32]     // 16-byte Folded Reload
	ldp	d13, d12, [sp, #16]     // 16-byte Folded Reload
	ldp	d15, d14, [sp], #160    // 16-byte Folded Reload
	ret
.Lfunc_end1:
	.size	striad, .Lfunc_end1-striad
	.cfi_endproc
                                        // -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               // -- Begin function main
.LCPI2_0:
	.xword	4472406533629990549     // double 1.0000000000000001E-9
.LCPI2_1:
	.xword	4608533498688228557     // double 1.3
.LCPI2_2:
	.xword	4629841154425225216     // double 33
.LCPI2_3:
	.xword	4630122629401935872     // double 35
	.text
	.globl	main
	.p2align	6
	.type	main,@function
main:                                   // @main
	.cfi_startproc
// %bb.0:
	str	d8, [sp, #-32]!         // 8-byte Folded Spill
	str	x28, [sp, #8]           // 8-byte Folded Spill
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	sub	sp, sp, #1040           // =1040
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w28, -24
	.cfi_offset b8, -32
	add	x0, sp, #16             // =16
	orr	w1, wzr, #0x400
	bl	gethostname
	add	x0, sp, #16             // =16
	add	x1, sp, #8              // =8
	bl	getFreq
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	printf
	ldr	d0, [sp, #8]
	scvtf	d0, d0
	adrp	x8, .LCPI2_0
	adrp	x0, .L.str.5
	ldr	d1, [x8, :lo12:.LCPI2_0]
	fmul	d0, d0, d1
	add	x0, x0, :lo12:.L.str.5
	add	x1, sp, #16             // =16
	bl	printf
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	printf
	adrp	x8, .LCPI2_1
	fmov	d1, #20.00000000
	ldr	d8, [x8, :lo12:.LCPI2_1]
	mov	v0.16b, v8.16b
	bl	__pow_finite
	fcvtzs	w8, d0
	add	w9, w8, #63             // =63
	cmp	w8, #0                  // =0
	csel	w8, w9, w8, lt
	and	w8, w8, #0xffffffc0
	sxtw	x0, w8
	bl	striad
	mov	v0.16b, v8.16b
	fmov	d1, #21.00000000
	bl	__pow_finite
	fcvtzs	w8, d0
	add	w9, w8, #63             // =63
	cmp	w8, #0                  // =0
	csel	w8, w9, w8, lt
	and	w8, w8, #0xffffffc0
	sxtw	x0, w8
	bl	striad
	mov	v0.16b, v8.16b
	fmov	d1, #22.00000000
	bl	__pow_finite
	fcvtzs	w8, d0
	add	w9, w8, #63             // =63
	cmp	w8, #0                  // =0
	csel	w8, w9, w8, lt
	and	w8, w8, #0xffffffc0
	sxtw	x0, w8
	bl	striad
	mov	v0.16b, v8.16b
	fmov	d1, #23.00000000
	bl	__pow_finite
	fcvtzs	w8, d0
	add	w9, w8, #63             // =63
	cmp	w8, #0                  // =0
	csel	w8, w9, w8, lt
	and	w8, w8, #0xffffffc0
	sxtw	x0, w8
	bl	striad
	mov	v0.16b, v8.16b
	fmov	d1, #24.00000000
	bl	__pow_finite
	fcvtzs	w8, d0
	add	w9, w8, #63             // =63
	cmp	w8, #0                  // =0
	csel	w8, w9, w8, lt
	and	w8, w8, #0xffffffc0
	sxtw	x0, w8
	bl	striad
	mov	v0.16b, v8.16b
	fmov	d1, #25.00000000
	bl	__pow_finite
	fcvtzs	w8, d0
	add	w9, w8, #63             // =63
	cmp	w8, #0                  // =0
	csel	w8, w9, w8, lt
	and	w8, w8, #0xffffffc0
	sxtw	x0, w8
	bl	striad
	mov	v0.16b, v8.16b
	fmov	d1, #26.00000000
	bl	__pow_finite
	fcvtzs	w8, d0
	add	w9, w8, #63             // =63
	cmp	w8, #0                  // =0
	csel	w8, w9, w8, lt
	and	w8, w8, #0xffffffc0
	sxtw	x0, w8
	bl	striad
	mov	v0.16b, v8.16b
	fmov	d1, #27.00000000
	bl	__pow_finite
	fcvtzs	w8, d0
	add	w9, w8, #63             // =63
	cmp	w8, #0                  // =0
	csel	w8, w9, w8, lt
	and	w8, w8, #0xffffffc0
	sxtw	x0, w8
	bl	striad
	mov	v0.16b, v8.16b
	fmov	d1, #28.00000000
	bl	__pow_finite
	fcvtzs	w8, d0
	add	w9, w8, #63             // =63
	cmp	w8, #0                  // =0
	csel	w8, w9, w8, lt
	and	w8, w8, #0xffffffc0
	sxtw	x0, w8
	bl	striad
	mov	v0.16b, v8.16b
	fmov	d1, #29.00000000
	bl	__pow_finite
	fcvtzs	w8, d0
	add	w9, w8, #63             // =63
	cmp	w8, #0                  // =0
	csel	w8, w9, w8, lt
	and	w8, w8, #0xffffffc0
	sxtw	x0, w8
	bl	striad
	mov	v0.16b, v8.16b
	fmov	d1, #30.00000000
	bl	__pow_finite
	fcvtzs	w8, d0
	add	w9, w8, #63             // =63
	cmp	w8, #0                  // =0
	csel	w8, w9, w8, lt
	and	w8, w8, #0xffffffc0
	sxtw	x0, w8
	bl	striad
	mov	v0.16b, v8.16b
	fmov	d1, #31.00000000
	bl	__pow_finite
	fcvtzs	w8, d0
	add	w9, w8, #63             // =63
	cmp	w8, #0                  // =0
	csel	w8, w9, w8, lt
	and	w8, w8, #0xffffffc0
	sxtw	x0, w8
	bl	striad
	mov	x8, #4629700416936869888
	mov	v0.16b, v8.16b
	fmov	d1, x8
	bl	__pow_finite
	fcvtzs	w8, d0
	add	w9, w8, #63             // =63
	cmp	w8, #0                  // =0
	csel	w8, w9, w8, lt
	and	w8, w8, #0xffffffc0
	sxtw	x0, w8
	bl	striad
	adrp	x8, .LCPI2_2
	mov	v0.16b, v8.16b
	ldr	d1, [x8, :lo12:.LCPI2_2]
	bl	__pow_finite
	fcvtzs	w8, d0
	add	w9, w8, #63             // =63
	cmp	w8, #0                  // =0
	csel	w8, w9, w8, lt
	and	w8, w8, #0xffffffc0
	sxtw	x0, w8
	bl	striad
	mov	x8, #4629981891913580544
	mov	v0.16b, v8.16b
	fmov	d1, x8
	bl	__pow_finite
	fcvtzs	w8, d0
	add	w9, w8, #63             // =63
	cmp	w8, #0                  // =0
	csel	w8, w9, w8, lt
	and	w8, w8, #0xffffffc0
	sxtw	x0, w8
	bl	striad
	adrp	x8, .LCPI2_3
	mov	v0.16b, v8.16b
	ldr	d1, [x8, :lo12:.LCPI2_3]
	bl	__pow_finite
	fcvtzs	w8, d0
	add	w9, w8, #63             // =63
	cmp	w8, #0                  // =0
	csel	w8, w9, w8, lt
	and	w8, w8, #0xffffffc0
	sxtw	x0, w8
	bl	striad
	mov	w0, wzr
	add	sp, sp, #1040           // =1040
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp, #8]           // 8-byte Folded Reload
	ldr	d8, [sp], #32           // 8-byte Folded Reload
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        // -- End function
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"casclakesp2"
	.size	.L.str, 12

	.type	.L.str.1,@object        // @.str.1
.L.str.1:
	.asciz	"warmup"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        // @.str.2
.L.str.2:
	.asciz	"naples1"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        // @.str.3
.L.str.3:
	.asciz	"%12.1f | %11.8f | %9.3f | %7.2f | %7.1f | %7.1f | %6d | %4ld \n"
	.size	.L.str.3, 63

	.type	.L.str.4,@object        // @.str.4
.L.str.4:
	.asciz	"SCHOENAUER TRIAD a[i] = b[i] + c[i] * d[i], 24 byte/it, 2 Flop/it\n"
	.size	.L.str.4, 67

	.type	.L.str.5,@object        // @.str.5
.L.str.5:
	.asciz	"Checking for %s. Frequency *must* be set to %4.2f GHz for valid cy/CL.\n"
	.size	.L.str.5, 72

	.type	.L.str.6,@object        // @.str.6
.L.str.6:
	.asciz	"Size (KByte) |   runtime   |  MFlop/s  |  cy/CL  |  MB/s   |  MLUP/s | repeat | size\n"
	.size	.L.str.6, 86


	.ident	"Arm C/C++/Fortran Compiler version 19.2 (build number 155) (based on LLVM 7.1.0)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
