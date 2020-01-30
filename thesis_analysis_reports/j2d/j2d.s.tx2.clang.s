	.text
	.file	"j2d.c"
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
	.p2align	3               // -- Begin function stencil
.LCPI1_0:
	.xword	4596373779694328218     // double 0.20000000000000001
.LCPI1_1:
	.xword	4575765307799480828     // double 0.0080000000000000002
.LCPI1_2:
	.xword	4526336392362847629     // double 3.9999999999999998E-6
.LCPI1_3:
	.xword	4517329193108106637     // double 9.9999999999999995E-7
	.text
	.globl	stencil
	.p2align	6
	.type	stencil,@function
stencil:                                // @stencil
	.cfi_startproc
// %bb.0:
	stp	d9, d8, [sp, #-112]!    // 16-byte Folded Spill
	stp	x28, x27, [sp, #16]     // 16-byte Folded Spill
	stp	x26, x25, [sp, #32]     // 16-byte Folded Spill
	stp	x24, x23, [sp, #48]     // 16-byte Folded Spill
	stp	x22, x21, [sp, #64]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #80]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #96]     // 16-byte Folded Spill
	add	x29, sp, #96            // =96
	sub	sp, sp, #1216           // =1216
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
	add	w19, w1, #1             // =1
	mov	w22, w1
	mul	w8, w19, w0
	sxtw	x9, w8
	orr	w1, wzr, #0x1
	mov	w25, w0
	orr	w0, wzr, #0x40
	str	q0, [sp, #80]           // 16-byte Folded Spill
	bfi	x1, x9, #3, #61
	sbfiz	x20, x8, #3, #32
	bl	aligned_alloc
	mov	x1, x20
	mov	x21, x0
	orr	w0, wzr, #0x40
	bl	aligned_alloc
	mov	x20, x0
	add	x23, x21, #8            // =8
	sxtw	x24, w19
	str	w25, [sp, #12]          // 4-byte Folded Spill
	subs	w8, w25, #1             // =1
	b.lt	.LBB1_15
// %bb.1:
	cmp	w22, #1                 // =1
	b.lt	.LBB1_15
// %bb.2:
	mov	w10, w22
	mov	x14, #28286
	movk	x14, #29109, lsl #16
	movk	x14, #34426, lsl #32
	and	x15, x10, #0xfffffff8
	movk	x14, #16000, lsl #48
	ldr	w11, [sp, #12]          // 4-byte Folded Reload
	sub	x16, x15, #8            // =8
	lsr	x17, x16, #3
	dup	v0.2d, x14
	add	w18, w17, #1            // =1
	mvn	x0, x17
	and	x17, x18, #0x7
	mov	x9, xzr
	mov	w11, w11
	add	x18, x17, x0
	mov	x1, x21
	add	x12, x21, #264          // =264
	lsl	x13, x24, #3
	lsl	x0, x17, #6
	.p2align	6
.LBB1_3:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB1_8 Depth 2
                                        //     Child Loop BB1_11 Depth 2
                                        //     Child Loop BB1_13 Depth 2
	cmp	w22, #8                 // =8
	b.hs	.LBB1_5
// %bb.4:                               //   in Loop: Header=BB1_3 Depth=1
	mov	x2, xzr
	b	.LBB1_13
	.p2align	6
.LBB1_5:                                //   in Loop: Header=BB1_3 Depth=1
	cmp	x16, #56                // =56
	b.hs	.LBB1_7
// %bb.6:                               //   in Loop: Header=BB1_3 Depth=1
	mov	x2, xzr
	cbnz	x17, .LBB1_10
	b	.LBB1_12
	.p2align	6
.LBB1_7:                                //   in Loop: Header=BB1_3 Depth=1
	mov	x2, xzr
	mov	x3, x12
	mov	x4, x18
	.p2align	6
.LBB1_8:                                //   Parent Loop BB1_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	stp	q0, q0, [x3, #-256]
	stp	q0, q0, [x3, #-224]
	stp	q0, q0, [x3, #-192]
	stp	q0, q0, [x3, #-160]
	stp	q0, q0, [x3, #-128]
	add	x2, x2, #64             // =64
	stp	q0, q0, [x3, #-96]
	stp	q0, q0, [x3, #-64]
	stp	q0, q0, [x3, #-32]
	stp	q0, q0, [x3]
	stp	q0, q0, [x3, #32]
	stp	q0, q0, [x3, #64]
	stp	q0, q0, [x3, #96]
	stp	q0, q0, [x3, #128]
	stp	q0, q0, [x3, #160]
	stp	q0, q0, [x3, #192]
	stp	q0, q0, [x3, #224]
	add	x3, x3, #512            // =512
	adds	x4, x4, #8              // =8
	b.ne	.LBB1_8
// %bb.9:                               //   in Loop: Header=BB1_3 Depth=1
	cbz	x17, .LBB1_12
.LBB1_10:                               //   in Loop: Header=BB1_3 Depth=1
	mov	x3, xzr
	add	x2, x1, x2, lsl #3
	.p2align	6
.LBB1_11:                               //   Parent Loop BB1_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x4, x2, x3
	add	x3, x3, #64             // =64
	stur	q0, [x4, #8]
	stur	q0, [x4, #24]
	stur	q0, [x4, #40]
	stur	q0, [x4, #56]
	cmp	x0, x3
	b.ne	.LBB1_11
.LBB1_12:                               //   in Loop: Header=BB1_3 Depth=1
	mov	x2, x15
	cmp	x15, x10
	b.eq	.LBB1_14
	.p2align	6
.LBB1_13:                               //   Parent Loop BB1_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x3, x1, x2, lsl #3
	add	x2, x2, #1              // =1
	str	x14, [x3, #8]
	cmp	x2, x10
	b.ne	.LBB1_13
.LBB1_14:                               //   in Loop: Header=BB1_3 Depth=1
	add	x12, x12, x13
	add	x1, x1, x13
	add	x9, x9, #1              // =1
	cmp	x9, x11
	b.ne	.LBB1_3
.LBB1_15:
	sxtw	x8, w8
	add	x28, x21, x24, lsl #4
	str	x8, [sp, #72]           // 8-byte Folded Spill
	sub	w8, w22, #1             // =1
	lsl	x9, x24, #3
	add	x26, x21, #16           // =16
	sxtw	x8, w8
	str	x21, [sp, #96]          // 8-byte Folded Spill
	add	x21, x21, x9
	sub	x27, x8, #1             // =1
	add	x8, x21, #8             // =8
	cmp	x27, #1                 // =1
	str	x8, [sp, #32]           // 8-byte Folded Spill
	csinc	x8, x27, xzr, gt
	str	x8, [sp, #40]           // 8-byte Folded Spill
	and	x8, x8, #0x7ffffffffffffff8
	str	x8, [sp, #144]          // 8-byte Folded Spill
	sub	x8, x8, #8              // =8
	ldr	q0, [sp, #80]           // 16-byte Folded Reload
	str	x8, [sp, #136]          // 8-byte Folded Spill
	lsr	x8, x8, #3
	str	w22, [sp, #108]         // 4-byte Folded Spill
	add	x22, x23, x9
	str	x9, [sp, #64]           // 8-byte Folded Spill
	add	x25, x20, x9
	add	w9, w8, #1              // =1
	mvn	x8, x8
	and	x9, x9, #0x3
	add	x8, x9, x8
	dup	v0.2d, v0.d[0]
	stp	x8, x9, [sp, #120]      // 16-byte Folded Spill
	lsl	x19, x9, #6
	adrp	x9, .LCPI1_0
	ldr	d9, [x9, :lo12:.LCPI1_0]
	add	x8, x28, #16            // =16
	str	x8, [sp, #24]           // 8-byte Folded Spill
	add	x8, x24, #1             // =1
	str	x8, [sp, #16]           // 8-byte Folded Spill
	orr	w8, wzr, #0x1
	str	q0, [sp, #48]           // 16-byte Folded Spill
	.p2align	6
.LBB1_16:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB1_38 Depth 2
                                        //     Child Loop BB1_19 Depth 2
                                        //       Child Loop BB1_24 Depth 3
                                        //         Child Loop BB1_29 Depth 4
                                        //         Child Loop BB1_32 Depth 4
                                        //         Child Loop BB1_35 Depth 4
	sub	x0, x29, #112           // =112
	sub	x1, x29, #128           // =128
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #112]          // 4-byte Folded Spill
	bl	timing
	ldr	q27, [sp, #80]          // 16-byte Folded Reload
	ldp	x7, x6, [sp, #64]       // 16-byte Folded Reload
	ldr	q28, [sp, #48]          // 16-byte Folded Reload
	ldr	x5, [sp, #96]           // 8-byte Folded Reload
	ldr	x30, [sp, #40]          // 8-byte Folded Reload
	ldr	w8, [sp, #112]          // 4-byte Folded Reload
	cbz	w8, .LBB1_41
// %bb.17:                              //   in Loop: Header=BB1_16 Depth=1
	ldr	w9, [sp, #112]          // 4-byte Folded Reload
	ldr	w8, [sp, #12]           // 4-byte Folded Reload
	cmp	w8, #2                  // =2
	b.le	.LBB1_38
// %bb.18:                              //   in Loop: Header=BB1_16 Depth=1
	mov	w9, wzr
	.p2align	6
.LBB1_19:                               //   Parent Loop BB1_16 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB1_24 Depth 3
                                        //         Child Loop BB1_29 Depth 4
                                        //         Child Loop BB1_32 Depth 4
                                        //         Child Loop BB1_35 Depth 4
	ldr	d0, [x23]
	fcmp	d0, #0.0
	str	w9, [sp, #116]          // 4-byte Folded Spill
	b.gt	.LBB1_22
// %bb.20:                              //   in Loop: Header=BB1_19 Depth=2
	ldr	w8, [sp, #108]          // 4-byte Folded Reload
	cmp	w8, #3                  // =3
	b.ge	.LBB1_23
.LBB1_21:                               //   in Loop: Header=BB1_19 Depth=2
	ldr	w8, [sp, #112]          // 4-byte Folded Reload
	add	w9, w9, #1              // =1
	cmp	w9, w8
	b.ne	.LBB1_19
	b	.LBB1_41
	.p2align	6
.LBB1_22:                               //   in Loop: Header=BB1_19 Depth=2
	mov	x0, x20
	bl	dummy
	ldr	q28, [sp, #48]          // 16-byte Folded Reload
	ldp	x7, x6, [sp, #64]       // 16-byte Folded Reload
	ldr	q27, [sp, #80]          // 16-byte Folded Reload
	ldr	w9, [sp, #116]          // 4-byte Folded Reload
	ldr	x30, [sp, #40]          // 8-byte Folded Reload
	ldr	x5, [sp, #96]           // 8-byte Folded Reload
	ldr	w8, [sp, #108]          // 4-byte Folded Reload
	cmp	w8, #3                  // =3
	b.lt	.LBB1_21
.LBB1_23:                               //   in Loop: Header=BB1_19 Depth=2
	ldp	x10, x11, [sp, #16]     // 16-byte Folded Reload
	ldr	x12, [sp, #32]          // 8-byte Folded Reload
	mov	x8, xzr
	mov	x9, x5
	mov	x13, x21
	orr	w14, wzr, #0x1
	.p2align	6
.LBB1_24:                               //   Parent Loop BB1_16 Depth=1
                                        //     Parent Loop BB1_19 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB1_29 Depth 4
                                        //         Child Loop BB1_32 Depth 4
                                        //         Child Loop BB1_35 Depth 4
	cmp	x30, #7                 // =7
	b.hi	.LBB1_26
// %bb.25:                              //   in Loop: Header=BB1_24 Depth=3
	mov	x15, xzr
	b	.LBB1_34
	.p2align	6
.LBB1_26:                               //   in Loop: Header=BB1_24 Depth=3
	ldr	x15, [sp, #136]         // 8-byte Folded Reload
	cmp	x15, #24                // =24
	b.hs	.LBB1_28
// %bb.27:                              //   in Loop: Header=BB1_24 Depth=3
	mov	x15, xzr
	ldr	x16, [sp, #128]         // 8-byte Folded Reload
	cbnz	x16, .LBB1_31
	b	.LBB1_33
	.p2align	6
.LBB1_28:                               //   in Loop: Header=BB1_24 Depth=3
	ldr	x17, [sp, #120]         // 8-byte Folded Reload
	mov	x15, xzr
	mov	x16, x8
	.p2align	6
    # LLVM-MCA-BEGIN
    // OSACA-BEGIN
.LBB1_29:                               //   Parent Loop BB1_16 Depth=1
                                        //     Parent Loop BB1_19 Depth=2
                                        //       Parent Loop BB1_24 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	add	x0, x5, x16
	add	x18, x21, x16
	ldp	q4, q5, [x0, #16]
	ldp	q6, q7, [x0, #48]
	ldur	q0, [x18, #8]
	ldur	q1, [x18, #24]
	ldur	q2, [x18, #40]
	ldur	q3, [x18, #56]
	add	x1, x28, x16
	add	x15, x15, #32           // =32
	fadd	v0.2d, v4.2d, v0.2d
	fadd	v4.2d, v5.2d, v1.2d
	fadd	v5.2d, v6.2d, v2.2d
	fadd	v6.2d, v7.2d, v3.2d
	ldp	q7, q16, [x1, #16]
	fadd	v1.2d, v7.2d, v1.2d
	ldp	q17, q18, [x1, #48]
	ldur	q19, [x18, #72]
	fadd	v0.2d, v0.2d, v1.2d
	fadd	v1.2d, v16.2d, v2.2d
	fadd	v2.2d, v17.2d, v3.2d
	fadd	v3.2d, v18.2d, v19.2d
	ldp	q16, q17, [x0, #80]
	ldp	q18, q19, [x0, #112]
	fadd	v1.2d, v4.2d, v1.2d
	fadd	v2.2d, v5.2d, v2.2d
	fadd	v3.2d, v6.2d, v3.2d
	ldur	q4, [x18, #72]
	ldur	q5, [x18, #88]
	ldur	q6, [x18, #104]
	ldur	q7, [x18, #120]
	fadd	v4.2d, v16.2d, v4.2d
	fadd	v16.2d, v17.2d, v5.2d
	fadd	v17.2d, v18.2d, v6.2d
	fadd	v18.2d, v19.2d, v7.2d
	ldp	q19, q20, [x1, #80]
	fadd	v5.2d, v19.2d, v5.2d
	ldp	q21, q22, [x1, #112]
	ldur	q23, [x18, #136]
	fadd	v4.2d, v4.2d, v5.2d
	fadd	v5.2d, v20.2d, v6.2d
	fadd	v6.2d, v21.2d, v7.2d
	fadd	v7.2d, v22.2d, v23.2d
	ldp	q20, q21, [x0, #144]
	ldp	q22, q23, [x0, #176]
	fadd	v5.2d, v16.2d, v5.2d
	fadd	v6.2d, v17.2d, v6.2d
	fadd	v7.2d, v18.2d, v7.2d
	ldur	q16, [x18, #136]
	ldur	q17, [x18, #152]
	ldur	q18, [x18, #168]
	ldur	q19, [x18, #184]
	fadd	v16.2d, v20.2d, v16.2d
	fadd	v20.2d, v21.2d, v17.2d
	fadd	v21.2d, v22.2d, v18.2d
	fadd	v22.2d, v23.2d, v19.2d
	ldp	q23, q24, [x1, #144]
	fadd	v17.2d, v23.2d, v17.2d
	ldp	q25, q26, [x1, #176]
	fadd	v16.2d, v16.2d, v17.2d
	fadd	v17.2d, v24.2d, v18.2d
	fadd	v18.2d, v25.2d, v19.2d
	ldp	q24, q25, [x0, #208]
	ldur	q23, [x18, #200]
	fadd	v17.2d, v20.2d, v17.2d
	fadd	v18.2d, v21.2d, v18.2d
	ldur	q20, [x18, #200]
	ldur	q21, [x18, #216]
	fadd	v19.2d, v26.2d, v23.2d
	fadd	v20.2d, v24.2d, v20.2d
	fadd	v24.2d, v25.2d, v21.2d
	ldp	q25, q26, [x1, #208]
	fadd	v21.2d, v25.2d, v21.2d
	fadd	v20.2d, v20.2d, v21.2d
	ldp	q21, q25, [x0, #240]
	fadd	v19.2d, v22.2d, v19.2d
	ldur	q22, [x18, #232]
	fadd	v21.2d, v21.2d, v22.2d
	fadd	v22.2d, v26.2d, v22.2d
	fadd	v22.2d, v24.2d, v22.2d
	ldp	q24, q26, [x1, #240]
	ldur	q23, [x18, #248]
	fadd	v25.2d, v25.2d, v23.2d
	fadd	v23.2d, v24.2d, v23.2d
	add	x18, x18, #264          // =264
	fmul	v0.2d, v0.2d, v28.2d
	fmul	v1.2d, v1.2d, v28.2d
	fmul	v2.2d, v2.2d, v28.2d
	fmul	v5.2d, v5.2d, v28.2d
	fadd	v21.2d, v21.2d, v23.2d
	ldr	q23, [x18]
	add	x18, x25, x16
	stur	q0, [x18, #8]
	stur	q1, [x18, #24]
	fmul	v3.2d, v3.2d, v28.2d
	stur	q2, [x18, #40]
	fadd	v23.2d, v26.2d, v23.2d
	stur	q5, [x18, #88]
	fmul	v4.2d, v4.2d, v28.2d
	stur	q3, [x18, #56]
	fmul	v6.2d, v6.2d, v28.2d
	stur	q4, [x18, #72]
	fmul	v0.2d, v7.2d, v28.2d
	stur	q6, [x18, #104]
	fmul	v1.2d, v16.2d, v28.2d
	stur	q0, [x18, #120]
	fmul	v2.2d, v17.2d, v28.2d
	stur	q1, [x18, #136]
	fmul	v4.2d, v19.2d, v28.2d
	stur	q2, [x18, #152]
	fadd	v5.2d, v25.2d, v23.2d
	stur	q4, [x18, #184]
	fmul	v3.2d, v18.2d, v28.2d
	stur	q3, [x18, #168]
	fmul	v6.2d, v20.2d, v28.2d
	stur	q6, [x18, #200]
	fmul	v0.2d, v22.2d, v28.2d
	stur	q0, [x18, #216]
	fmul	v1.2d, v21.2d, v28.2d
	stur	q1, [x18, #232]
	add	x16, x16, #256          // =256
	fmul	v2.2d, v5.2d, v28.2d
	stur	q2, [x18, #248]
	adds	x17, x17, #4            // =4
	b.ne	.LBB1_29
    // OSACA-END
    # LLVM-MCA-END
// %bb.30:                              //   in Loop: Header=BB1_24 Depth=3
	ldr	x16, [sp, #128]         // 8-byte Folded Reload
	cbz	x16, .LBB1_33
.LBB1_31:                               //   in Loop: Header=BB1_24 Depth=3
	mul	x18, x14, x24
	mov	x16, xzr
	add	x17, x13, x15, lsl #3
	.p2align	6
.LBB1_32:                               //   Parent Loop BB1_16 Depth=1
                                        //     Parent Loop BB1_19 Depth=2
                                        //       Parent Loop BB1_24 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	orr	x0, x15, #0x1
	add	x1, x17, x16
	add	x0, x18, x0
	add	x15, x15, #8            // =8
	ldur	q0, [x1, #8]
	ldur	q1, [x1, #24]
	ldur	q2, [x1, #40]
	ldur	q3, [x1, #56]
	sub	x1, x0, x24
	add	x1, x23, x1, lsl #3
	lsl	x0, x0, #3
	add	x16, x16, #64           // =64
	ldp	q4, q5, [x1]
	ldp	q6, q7, [x1, #32]
	add	x1, x22, x0
	ldp	q16, q17, [x1]
	ldp	q18, q19, [x1, #32]
	add	x1, x26, x0
	add	x0, x20, x0
	fadd	v0.2d, v0.2d, v16.2d
	fadd	v1.2d, v1.2d, v17.2d
	ldp	q16, q17, [x1]
	fadd	v4.2d, v4.2d, v16.2d
	fadd	v2.2d, v2.2d, v18.2d
	fadd	v3.2d, v3.2d, v19.2d
	fadd	v0.2d, v0.2d, v4.2d
	fadd	v4.2d, v5.2d, v17.2d
	ldp	q18, q19, [x1, #32]
	fadd	v1.2d, v1.2d, v4.2d
	fadd	v4.2d, v6.2d, v18.2d
	fmul	v0.2d, v0.2d, v28.2d
	fadd	v2.2d, v2.2d, v4.2d
	fadd	v4.2d, v7.2d, v19.2d
	fmul	v1.2d, v1.2d, v28.2d
	stp	q0, q1, [x0]
	fadd	v3.2d, v3.2d, v4.2d
	fmul	v2.2d, v2.2d, v28.2d
	fmul	v3.2d, v3.2d, v28.2d
	stp	q2, q3, [x0, #32]
	cmp	x19, x16
	b.ne	.LBB1_32
.LBB1_33:                               //   in Loop: Header=BB1_24 Depth=3
	ldr	x16, [sp, #144]         // 8-byte Folded Reload
	mov	x15, x16
	cmp	x30, x16
	b.eq	.LBB1_36
.LBB1_34:                               //   in Loop: Header=BB1_24 Depth=3
	add	x0, x15, x10
	lsl	x1, x15, #3
	mov	x16, xzr
	add	x17, x12, x1
	add	x18, x11, x1
	add	x0, x20, x0, lsl #3
	add	x1, x9, x1
	.p2align	6
.LBB1_35:                               //   Parent Loop BB1_16 Depth=1
                                        //     Parent Loop BB1_19 Depth=2
                                        //       Parent Loop BB1_24 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	lsl	x2, x16, #3
	add	x16, x16, #1            // =1
	add	x3, x17, x2
	add	x4, x1, x2
	ldr	d0, [x18, x2]
	ldr	d1, [x3]
	ldr	d2, [x4, #16]
	ldr	d3, [x3, #16]
	fadd	d1, d2, d1
	fadd	d0, d0, d3
	fadd	d0, d1, d0
	fmul	d0, d0, d27
	str	d0, [x0, x2]
	add	x2, x15, x16
	cmp	x2, x27
	b.lt	.LBB1_35
.LBB1_36:                               //   in Loop: Header=BB1_24 Depth=3
	add	x8, x8, x7
	add	x13, x13, x7
	add	x12, x12, x7
	add	x11, x11, x7
	add	x10, x10, x24
	add	x14, x14, #1            // =1
	add	x9, x9, x7
	cmp	x14, x6
	b.lt	.LBB1_24
// %bb.37:                              //   in Loop: Header=BB1_19 Depth=2
	ldr	w9, [sp, #116]          // 4-byte Folded Reload
	ldr	w8, [sp, #112]          // 4-byte Folded Reload
	add	w9, w9, #1              // =1
	cmp	w9, w8
	b.ne	.LBB1_19
	b	.LBB1_41
	.p2align	6
.LBB1_38:                               //   Parent Loop BB1_16 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	d0, [x23]
	fcmp	d0, #0.0
	b.le	.LBB1_40
// %bb.39:                              //   in Loop: Header=BB1_38 Depth=2
	mov	x0, x20
	str	w9, [sp, #116]          // 4-byte Folded Spill
	bl	dummy
	ldr	w9, [sp, #116]          // 4-byte Folded Reload
.LBB1_40:                               //   in Loop: Header=BB1_38 Depth=2
	subs	w9, w9, #1              // =1
	b.ne	.LBB1_38
.LBB1_41:                               //   in Loop: Header=BB1_16 Depth=1
	sub	x0, x29, #120           // =120
	sub	x1, x29, #128           // =128
	bl	timing
	ldp	d0, d1, [x29, #-120]
	fsub	d8, d0, d1
	ldr	w9, [sp, #112]          // 4-byte Folded Reload
	lsl	w8, w9, #1
	fcmp	d8, d9
	b.lt	.LBB1_16
// %bb.42:
	add	x0, sp, #160            // =160
	orr	w1, wzr, #0x400
	and	w23, w9, #0x7fffffff
	bl	gethostname
	add	x0, sp, #160            // =160
	add	x1, sp, #152            // =152
	bl	getFreq
	ldr	w10, [sp, #108]         // 4-byte Folded Reload
	ldr	w9, [sp, #12]           // 4-byte Folded Reload
	mul	w8, w10, w9
	sub	w9, w9, #2              // =2
	sub	w10, w10, #2            // =2
	scvtf	d2, w23
	mul	w9, w10, w9
	sub	w8, w8, #4              // =4
	fmov	d3, #1.00000000
	scvtf	d0, w8
	adrp	x8, .LCPI1_1
	sxtw	x2, w9
	fdiv	d5, d3, d8
	ldr	d3, [sp, #152]
	ldr	d1, [x8, :lo12:.LCPI1_1]
	adrp	x8, .LCPI1_2
	fmov	d6, #0.12500000
	fmul	d0, d0, d1
	scvtf	d1, w9
	scvtf	d3, d3
	fmul	d3, d8, d3
	adrp	x0, .L.str.3
	mov	w1, w23
	fmul	d1, d2, d1
	ldr	d2, [x8, :lo12:.LCPI1_2]
	mul	x8, x23, x2
	add	x0, x0, :lo12:.L.str.3
	scvtf	d4, x8
	mov	x8, #4629700416936869888
	fmul	d2, d1, d2
	fmul	d4, d4, d6
	fmul	d2, d2, d5
	fdiv	d3, d3, d4
	fmov	d4, x8
	mov	x8, #4517110426252607488
	fmov	d6, x8
	adrp	x8, .LCPI1_3
	fmul	d4, d1, d4
	fmul	d4, d4, d6
	ldr	d6, [x8, :lo12:.LCPI1_3]
	fmul	d1, d1, d6
	fmul	d4, d5, d4
	fmul	d5, d5, d1
	mov	v1.16b, v8.16b
	bl	printf
	ldr	x0, [sp, #96]           // 8-byte Folded Reload
	bl	free
	mov	x0, x20
	bl	free
	add	sp, sp, #1216           // =1216
	ldp	x29, x30, [sp, #96]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]     // 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]     // 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]     // 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]     // 16-byte Folded Reload
	ldp	d9, d8, [sp], #112      // 16-byte Folded Reload
	ret
.Lfunc_end1:
	.size	stencil, .Lfunc_end1-stencil
	.cfi_endproc
                                        // -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               // -- Begin function main
.LCPI2_0:
	.xword	4472406533629990549     // double 1.0000000000000001E-9
.LCPI2_1:
	.xword	4608533498688228557     // double 1.3
.LCPI2_2:
	.xword	4653212373585231872     // double 1250
.LCPI2_3:
	.xword	4590666818246524325     // double 0.083299999999999999
.LCPI2_4:
	.xword	4652930898608521216     // double 1186
.LCPI2_5:
	.xword	4652649423631810560     // double 1122
.LCPI2_6:
	.xword	4652367948655099904     // double 1058
.LCPI2_7:
	.xword	4651954532283056128     // double 994
.LCPI2_8:
	.xword	4651391582329634816     // double 930
.LCPI2_9:
	.xword	4650828632376213504     // double 866
.LCPI2_10:
	.xword	4650265682422792192     // double 802
.LCPI2_11:
	.xword	4649702732469370880     // double 738
.LCPI2_12:
	.xword	4649139782515949568     // double 674
.LCPI2_13:
	.xword	4648576832562528256     // double 610
.LCPI2_14:
	.xword	4648013882609106944     // double 546
.LCPI2_15:
	.xword	4647187049865019392     // double 482
.LCPI2_16:
	.xword	4646061149958176768     // double 418
.LCPI2_17:
	.xword	4644935250051334144     // double 354
.LCPI2_18:
	.xword	4643809350144491520     // double 290
.LCPI2_19:
	.xword	4642155684656316416     // double 226
	.text
	.globl	main
	.p2align	6
	.type	main,@function
main:                                   // @main
	.cfi_startproc
// %bb.0:
	stp	d9, d8, [sp, #-48]!     // 16-byte Folded Spill
	str	x28, [sp, #16]          // 8-byte Folded Spill
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	sub	sp, sp, #1024           // =1024
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w28, -32
	.cfi_offset b8, -40
	.cfi_offset b9, -48
	mov	x0, sp
	orr	w1, wzr, #0x400
	bl	gethostname
	mov	x0, sp
	sub	x1, x29, #8             // =8
	bl	getFreq
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	printf
	ldur	d0, [x29, #-8]
	scvtf	d0, d0
	adrp	x8, .LCPI2_0
	adrp	x0, .L.str.5
	ldr	d1, [x8, :lo12:.LCPI2_0]
	fmul	d0, d0, d1
	add	x0, x0, :lo12:.L.str.5
	mov	x1, sp
	bl	printf
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	printf
	adrp	x8, .LCPI2_1
	ldr	d8, [x8, :lo12:.LCPI2_1]
	adrp	x8, .LCPI2_2
	mov	v0.16b, v8.16b
	ldr	d1, [x8, :lo12:.LCPI2_2]
	bl	__pow_finite
	adrp	x8, .LCPI2_3
	orr	w0, wzr, #0x3
	ldr	d9, [x8, :lo12:.LCPI2_3]
	mov	v0.16b, v9.16b
	mov	w1, #1250
	bl	stencil
	adrp	x8, .LCPI2_4
	mov	v0.16b, v8.16b
	ldr	d1, [x8, :lo12:.LCPI2_4]
	bl	__pow_finite
	mov	v0.16b, v9.16b
	orr	w0, wzr, #0x3
	mov	w1, #1186
	bl	stencil
	adrp	x8, .LCPI2_5
	mov	v0.16b, v8.16b
	ldr	d1, [x8, :lo12:.LCPI2_5]
	bl	__pow_finite
	mov	v0.16b, v9.16b
	orr	w0, wzr, #0x3
	mov	w1, #1122
	bl	stencil
	adrp	x8, .LCPI2_6
	mov	v0.16b, v8.16b
	ldr	d1, [x8, :lo12:.LCPI2_6]
	bl	__pow_finite
	mov	v0.16b, v9.16b
	orr	w0, wzr, #0x3
	mov	w1, #1058
	bl	stencil
	adrp	x8, .LCPI2_7
	mov	v0.16b, v8.16b
	ldr	d1, [x8, :lo12:.LCPI2_7]
	bl	__pow_finite
	mov	v0.16b, v9.16b
	orr	w0, wzr, #0x3
	mov	w1, #994
	bl	stencil
	adrp	x8, .LCPI2_8
	mov	v0.16b, v8.16b
	ldr	d1, [x8, :lo12:.LCPI2_8]
	bl	__pow_finite
	mov	v0.16b, v9.16b
	orr	w0, wzr, #0x3
	mov	w1, #930
	bl	stencil
	adrp	x8, .LCPI2_9
	mov	v0.16b, v8.16b
	ldr	d1, [x8, :lo12:.LCPI2_9]
	bl	__pow_finite
	mov	v0.16b, v9.16b
	orr	w0, wzr, #0x3
	mov	w1, #866
	bl	stencil
	adrp	x8, .LCPI2_10
	mov	v0.16b, v8.16b
	ldr	d1, [x8, :lo12:.LCPI2_10]
	bl	__pow_finite
	mov	v0.16b, v9.16b
	orr	w0, wzr, #0x3
	mov	w1, #802
	bl	stencil
	adrp	x8, .LCPI2_11
	mov	v0.16b, v8.16b
	ldr	d1, [x8, :lo12:.LCPI2_11]
	bl	__pow_finite
	mov	v0.16b, v9.16b
	orr	w0, wzr, #0x3
	mov	w1, #738
	bl	stencil
	adrp	x8, .LCPI2_12
	mov	v0.16b, v8.16b
	ldr	d1, [x8, :lo12:.LCPI2_12]
	bl	__pow_finite
	mov	v0.16b, v9.16b
	orr	w0, wzr, #0x3
	mov	w1, #674
	bl	stencil
	adrp	x8, .LCPI2_13
	mov	v0.16b, v8.16b
	ldr	d1, [x8, :lo12:.LCPI2_13]
	bl	__pow_finite
	mov	v0.16b, v9.16b
	orr	w0, wzr, #0x3
	mov	w1, #610
	bl	stencil
	adrp	x8, .LCPI2_14
	mov	v0.16b, v8.16b
	ldr	d1, [x8, :lo12:.LCPI2_14]
	bl	__pow_finite
	mov	v0.16b, v9.16b
	orr	w0, wzr, #0x3
	mov	w1, #546
	bl	stencil
	adrp	x8, .LCPI2_15
	mov	v0.16b, v8.16b
	ldr	d1, [x8, :lo12:.LCPI2_15]
	bl	__pow_finite
	mov	v0.16b, v9.16b
	orr	w0, wzr, #0x3
	mov	w1, #482
	bl	stencil
	adrp	x8, .LCPI2_16
	mov	v0.16b, v8.16b
	ldr	d1, [x8, :lo12:.LCPI2_16]
	bl	__pow_finite
	mov	v0.16b, v9.16b
	orr	w0, wzr, #0x3
	mov	w1, #418
	bl	stencil
	adrp	x8, .LCPI2_17
	mov	v0.16b, v8.16b
	ldr	d1, [x8, :lo12:.LCPI2_17]
	bl	__pow_finite
	mov	v0.16b, v9.16b
	orr	w0, wzr, #0x3
	mov	w1, #354
	bl	stencil
	adrp	x8, .LCPI2_18
	mov	v0.16b, v8.16b
	ldr	d1, [x8, :lo12:.LCPI2_18]
	bl	__pow_finite
	mov	v0.16b, v9.16b
	orr	w0, wzr, #0x3
	mov	w1, #290
	bl	stencil
	adrp	x8, .LCPI2_19
	mov	v0.16b, v8.16b
	ldr	d1, [x8, :lo12:.LCPI2_19]
	bl	__pow_finite
	mov	v0.16b, v9.16b
	orr	w0, wzr, #0x3
	mov	w1, #226
	bl	stencil
	mov	w0, wzr
	add	sp, sp, #1024           // =1024
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	ldr	x28, [sp, #16]          // 8-byte Folded Reload
	ldp	d9, d8, [sp], #48       // 16-byte Folded Reload
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
	.asciz	"2D5PT b[j][i] = c0 * (a[j][i-1] + a[j+1][i] + ...), 32 byte/it, 4 Flop/it\n"
	.size	.L.str.4, 75

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
