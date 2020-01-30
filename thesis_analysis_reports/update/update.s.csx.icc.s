# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.5.281 Build 20190815";
# mark_description "-qopenmp-simd -fno-alias -unroll -fno-builtin -xCORE-AVX512 -qopt-zmm-usage=high -Ofast -S -use-msasm -o upd";
# mark_description "ate.s.csx.icc.s";
	.file "update.c"
	.text
..TXTST0:
.L_2__routine_start_main_0:
# -- Begin  main
	.text
# mark_begin;
       .align    16,0x90
	.globl main
# --- main(int, char **)
main:
# parameter 1: %edi
# parameter 2: %rsi
..B1.1:                         # Preds ..B1.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_main.1:
..L2:
                                                          #64.1
        pushq     %rbp                                          #64.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #64.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-128, %rsp                                   #64.1
        pushq     %r12                                          #64.1
        pushq     %r13                                          #64.1
        pushq     %r14                                          #64.1
        pushq     %r15                                          #64.1
        pushq     %rbx                                          #64.1
        subq      $2136, %rsp                                   #64.1
        movq      $0x64199d9ffe, %rsi                           #64.1
        movl      $3, %edi                                      #64.1
        call      __intel_new_feature_proc_init                 #64.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE r12 r13 r14 r15
..B1.68:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        vstmxcsr  1024(%rsp)                                    #64.1
        movl      $1024, %esi                                   #66.3
        lea       (%rsp), %rdi                                  #66.3
        orl       $32832, 1024(%rdi)                            #64.1
        vldmxcsr  1024(%rdi)                                    #64.1
..___tag_value_main.11:
#       gethostname(char *, size_t)
        call      gethostname                                   #66.3
..___tag_value_main.12:
                                # LOE r12 r13 r14 r15
..B1.2:                         # Preds ..B1.68
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.0, %esi                         #68.3
        lea       (%rsp), %rdi                                  #68.3
..___tag_value_main.13:
#       strcmp(const char *, const char *)
        call      strcmp                                        #68.3
..___tag_value_main.14:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.69:                        # Preds ..B1.2
                                # Execution count [1.00e+00]
        testl     %eax, %eax                                    #68.3
        je        ..B1.64       # Prob 9%                       #68.3
                                # LOE rbx r12 r13 r14 r15
..B1.3:                         # Preds ..B1.69
                                # Execution count [9.01e-01]
        movl      $.L_2__STRING.1, %esi                         #68.3
        lea       (%rsp), %rdi                                  #68.3
..___tag_value_main.15:
#       strcmp(const char *, const char *)
        call      strcmp                                        #68.3
..___tag_value_main.16:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.70:                        # Preds ..B1.3
                                # Execution count [9.01e-01]
        testl     %eax, %eax                                    #68.3
        je        ..B1.62       # Prob 9%                       #68.3
                                # LOE rbx r12 r13 r14 r15
..B1.4:                         # Preds ..B1.70
                                # Execution count [8.12e-01]
        movl      $.L_2__STRING.2, %esi                         #68.3
        lea       (%rsp), %rdi                                  #68.3
..___tag_value_main.17:
#       strcmp(const char *, const char *)
        call      strcmp                                        #68.3
..___tag_value_main.18:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.71:                        # Preds ..B1.4
                                # Execution count [8.12e-01]
        testl     %eax, %eax                                    #68.3
        je        ..B1.5        # Prob 22%                      #68.3
                                # LOE rbx r12 r13 r14 r15
..B1.83:                        # Preds ..B1.71
                                # Execution count [6.33e-01]
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #68.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #68.3
        vmovsd    %xmm0, 2048(%rsp)                             #68.3[spill]
        vmovsd    %xmm1, 2056(%rsp)                             #68.3[spill]
        jmp       ..B1.7        # Prob 100%                     #68.3
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.71
                                # Execution count [1.79e-01]
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #68.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #68.3
        vmovsd    %xmm0, 2048(%rsp)                             #68.3[spill]
        vmovsd    %xmm1, 2056(%rsp)                             #68.3[spill]
..___tag_value_main.22:
#       pow(double, double)
        call      pow                                           #68.3
..___tag_value_main.23:
                                # LOE r12 r13 r14 r15 xmm0
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.79e-01]
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #68.3
        vcvttsd2si %xmm0, %rbx                                  #68.3
                                # LOE rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.65 ..B1.63 ..B1.6 ..B1.83
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.4, %edi                         #69.3
        xorl      %eax, %eax                                    #69.3
..___tag_value_main.25:
#       printf(const char *__restrict__, ...)
        call      printf                                        #69.3
..___tag_value_main.26:
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
                                # Execution count [1.00e+00]
        vxorpd    %xmm0, %xmm0, %xmm0                           #70.3
        lea       (%rsp), %rsi                                  #70.3
        vcvtsi2sdq %rbx, %xmm0, %xmm0                           #70.3
        movl      $.L_2__STRING.5, %edi                         #70.3
        movl      $1, %eax                                      #70.3
        vmulsd    .L_2il0floatpacket.4(%rip), %xmm0, %xmm0      #70.3
..___tag_value_main.27:
#       printf(const char *__restrict__, ...)
        call      printf                                        #70.3
..___tag_value_main.28:
                                # LOE r12 r13 r14 r15
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.6, %edi                         #71.3
        xorl      %eax, %eax                                    #71.3
..___tag_value_main.29:
#       printf(const char *__restrict__, ...)
        call      printf                                        #71.3
..___tag_value_main.30:
                                # LOE r12 r13 r14 r15
..B1.10:                        # Preds ..B1.9
                                # Execution count [1.00e+00]
        xorb      %al, %al                                      #72.3
        movl      $20, %ebx                                     #72.3
        vmovsd    .L_2il0floatpacket.5(%rip), %xmm13            #75.5
        vxorpd    %xmm11, %xmm11, %xmm11                        #75.5
        vmovsd    .L_2il0floatpacket.3(%rip), %xmm12            #75.5
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm10            #75.5
        vmovsd    .L_2il0floatpacket.8(%rip), %xmm9             #75.5
        vmovsd    .L_2il0floatpacket.9(%rip), %xmm8             #75.5
        vmovsd    .L_2il0floatpacket.16(%rip), %xmm7            #75.5
        vmovsd    .L_2il0floatpacket.10(%rip), %xmm6            #75.5
        vmovsd    .L_2il0floatpacket.11(%rip), %xmm5            #75.5
        vmovsd    .L_2il0floatpacket.2(%rip), %xmm4             #75.5
        vmovups   .L_2il0floatpacket.12(%rip), %zmm3            #75.17
        vmovups   .L_2il0floatpacket.13(%rip), %zmm2            #75.5
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm0            #75.5
        movb      %al, 2064(%rsp)                               #72.3[spill]
                                # LOE ebx
..B1.11:                        # Preds ..B1.55 ..B1.10
                                # Execution count [1.60e+01]
        vxorpd    %xmm1, %xmm1, %xmm1                           #73.21
        vcvtsi2sd %ebx, %xmm1, %xmm1                            #73.21
        vzeroupper                                              #73.21
        vmovsd    .L_2il0floatpacket.6(%rip), %xmm0             #73.21
..___tag_value_main.32:
#       pow(double, double)
        call      pow                                           #73.21
..___tag_value_main.33:
                                # LOE ebx xmm0
..B1.12:                        # Preds ..B1.11
                                # Execution count [1.60e+01]
        vcvttsd2si %xmm0, %eax                                  #73.21
        movl      %eax, %r14d                                   #74.18
        movl      $64, %edi                                     #75.5
        sarl      $5, %r14d                                     #74.18
        shrl      $26, %r14d                                    #74.18
        addl      %eax, %r14d                                   #74.18
        sarl      $6, %r14d                                     #74.18
        movl      %r14d, %esi                                   #74.22
        shll      $6, %esi                                      #74.22
        movl      %esi, 2080(%rsp)                              #74.22[spill]
        movslq    %esi, %rsi                                    #75.5
        shlq      $3, %rsi                                      #75.5
..___tag_value_main.35:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #75.5
..___tag_value_main.36:
                                # LOE rax ebx r14d
..B1.74:                        # Preds ..B1.12
                                # Execution count [1.60e+01]
        movq      %rax, %r13                                    #75.5
                                # LOE r13 ebx r14d
..B1.13:                        # Preds ..B1.74
                                # Execution count [1.60e+01]
        movslq    %r14d, %r14                                   #75.11
        shlq      $6, %r14                                      #74.22
        testq     %r14, %r14                                    #75.5
        jle       ..B1.31       # Prob 50%                      #75.5
                                # LOE r13 r14 ebx
..B1.14:                        # Preds ..B1.13
                                # Execution count [1.44e+01]
        cmpq      $16, %r14                                     #75.5
        jl        ..B1.61       # Prob 10%                      #75.5
                                # LOE r13 r14 ebx
..B1.15:                        # Preds ..B1.14
                                # Execution count [1.44e+01]
        movq      %r13, %r8                                     #75.5
        andq      $63, %r8                                      #75.5
        testq     $7, %r8                                       #75.5
        je        ..B1.17       # Prob 50%                      #75.5
                                # LOE r8 r13 r14 ebx
..B1.16:                        # Preds ..B1.15
                                # Execution count [7.20e+00]
        xorl      %r8d, %r8d                                    #75.5
        jmp       ..B1.19       # Prob 100%                     #75.5
                                # LOE r8 r13 r14 ebx
..B1.17:                        # Preds ..B1.15
                                # Execution count [7.20e+00]
        testq     %r8, %r8                                      #75.5
        je        ..B1.19       # Prob 50%                      #75.5
                                # LOE r8 r13 r14 ebx
..B1.18:                        # Preds ..B1.17
                                # Execution count [8.00e+01]
        negq      %r8                                           #75.5
        addq      $64, %r8                                      #75.5
        shrq      $3, %r8                                       #75.5
        cmpq      %r8, %r14                                     #75.5
        cmovl     %r14, %r8                                     #75.5
                                # LOE r8 r13 r14 ebx
..B1.19:                        # Preds ..B1.16 ..B1.18 ..B1.17
                                # Execution count [1.60e+01]
        movq      %r14, %rax                                    #75.5
        subq      %r8, %rax                                     #75.5
        andq      $15, %rax                                     #75.5
        negq      %rax                                          #75.5
        addq      %r14, %rax                                    #75.5
        cmpq      $1, %r8                                       #75.5
        jb        ..B1.23       # Prob 50%                      #75.5
                                # LOE rax r8 r13 r14 ebx
..B1.20:                        # Preds ..B1.19
                                # Execution count [1.44e+01]
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm1            #75.5
        xorl      %esi, %esi                                    #75.5
        vmovdqu   .L_2il0floatpacket.14(%rip), %ymm3            #75.5
        vmovups   .L_2il0floatpacket.13(%rip), %zmm4            #75.5
        vpbroadcastq %r8, %zmm0                                 #75.5
        xorl      %ecx, %ecx                                    #75.5
                                # LOE rax rcx r8 r13 r14 ebx esi ymm1 ymm3 zmm0 zmm4
..B1.21:                        # Preds ..B1.21 ..B1.20
                                # Execution count [8.00e+01]
        vpmovsxdq %ymm1, %zmm2                                  #75.5
        addl      $8, %esi                                      #75.5
        vpaddd    %ymm3, %ymm1, %ymm1                           #75.5
        vpcmpgtq  %zmm2, %zmm0, %k1                             #75.5
        vmovupd   %zmm4, (%r13,%rcx,8){%k1}                     #75.5
        addq      $8, %rcx                                      #75.5
        cmpq      %r8, %rsi                                     #75.5
        jb        ..B1.21       # Prob 82%                      #75.5
                                # LOE rax rcx r8 r13 r14 ebx esi ymm1 ymm3 zmm0 zmm4
..B1.22:                        # Preds ..B1.21
                                # Execution count [1.44e+01]
        cmpq      %r8, %r14                                     #75.5
        je        ..B1.31       # Prob 10%                      #75.5
                                # LOE rax r8 r13 r14 ebx
..B1.23:                        # Preds ..B1.19 ..B1.22
                                # Execution count [8.00e+01]
        lea       16(%r8), %rcx                                 #75.5
        cmpq      %rcx, %rax                                    #75.5
        jl        ..B1.27       # Prob 50%                      #75.5
                                # LOE rax r8 r13 r14 ebx
..B1.24:                        # Preds ..B1.23
                                # Execution count [1.44e+01]
        vmovups   .L_2il0floatpacket.13(%rip), %zmm0            #75.5
        movl      %r8d, %ecx                                    #75.5
                                # LOE rax r8 r13 r14 ecx ebx zmm0
..B1.25:                        # Preds ..B1.25 ..B1.24
                                # Execution count [8.00e+01]
        addl      $16, %ecx                                     #75.5
        vmovupd   %zmm0, (%r13,%r8,8)                           #75.5
        vmovupd   %zmm0, 64(%r13,%r8,8)                         #75.5
        addq      $16, %r8                                      #75.5
        cmpq      %rax, %rcx                                    #75.5
        jb        ..B1.25       # Prob 82%                      #75.5
                                # LOE rax r8 r13 r14 ecx ebx zmm0
..B1.27:                        # Preds ..B1.25 ..B1.23 ..B1.61
                                # Execution count [1.60e+01]
        lea       1(%rax), %rcx                                 #75.5
        cmpq      %r14, %rcx                                    #75.5
        ja        ..B1.31       # Prob 50%                      #75.5
                                # LOE rax r13 r14 ebx
..B1.28:                        # Preds ..B1.27
                                # Execution count [1.44e+01]
        movslq    %eax, %rcx                                    #75.5
        negq      %rax                                          #75.5
        addq      %r14, %rax                                    #75.5
        xorl      %r8d, %r8d                                    #75.5
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm1            #75.5
        vmovdqu   .L_2il0floatpacket.14(%rip), %ymm3            #75.5
        vmovups   .L_2il0floatpacket.13(%rip), %zmm4            #75.5
        vpbroadcastq %rax, %zmm0                                #75.5
        lea       (%r13,%rcx,8), %rsi                           #75.5
        xorl      %ecx, %ecx                                    #75.5
                                # LOE rax rcx rsi r13 r14 ebx r8d ymm1 ymm3 zmm0 zmm4
..B1.29:                        # Preds ..B1.29 ..B1.28
                                # Execution count [8.00e+01]
        vpmovsxdq %ymm1, %zmm2                                  #75.5
        addl      $8, %r8d                                      #75.5
        vpaddd    %ymm3, %ymm1, %ymm1                           #75.5
        vpcmpgtq  %zmm2, %zmm0, %k1                             #75.5
        vmovupd   %zmm4, (%rsi,%rcx,8){%k1}                     #75.5
        addq      $8, %rcx                                      #75.5
        cmpq      %rax, %r8                                     #75.5
        jb        ..B1.29       # Prob 82%                      #75.5
                                # LOE rax rcx rsi r13 r14 ebx r8d ymm1 ymm3 zmm0 zmm4
..B1.31:                        # Preds ..B1.29 ..B1.13 ..B1.22 ..B1.27
                                # Execution count [1.60e+01]
        vzeroupper                                              #75.5
        lea       2088(%rsp), %rdi                              #75.5
        movl      $1, %r12d                                     #75.5
        lea       2096(%rsp), %rsi                              #75.5
..___tag_value_main.37:
#       timing(double *, double *)
        call      timing                                        #75.5
..___tag_value_main.38:
                                # LOE r13 r14 ebx r12d
..B1.32:                        # Preds ..B1.31
                                # Execution count [1.44e+01]
        xorl      %r15d, %r15d                                  #75.5
        vxorpd    %xmm0, %xmm0, %xmm0                           #75.5
                                # LOE r13 r14 ebx r12d r15d xmm0
..B1.33:                        # Preds ..B1.32 ..B1.40 ..B1.46
                                # Execution count [4.44e+02]
        vcomisd   (%r13), %xmm0                                 #75.5
        jbe       ..B1.35       # Prob 78%                      #75.5
                                # LOE r13 r14 ebx r12d r15d xmm0
..B1.34:                        # Preds ..B1.33
                                # Execution count [9.78e+01]
        movq      %r13, %rdi                                    #75.5
        vzeroupper                                              #75.5
..___tag_value_main.39:
#       dummy(double *)
        call      dummy                                         #75.5
..___tag_value_main.40:
                                # LOE r13 r14 ebx r12d r15d
..B1.84:                        # Preds ..B1.34
                                # Execution count [9.78e+01]
        vxorpd    %xmm0, %xmm0, %xmm0                           #
                                # LOE r13 r14 ebx r12d r15d xmm0
..B1.35:                        # Preds ..B1.33 ..B1.84
                                # Execution count [4.44e+02]
        testq     %r14, %r14                                    #75.5
        jle       ..B1.40       # Prob 50%                      #75.5
                                # LOE r13 r14 ebx r12d r15d xmm0
..B1.36:                        # Preds ..B1.35
                                # Execution count [4.00e+02]
        cmpq      $16, %r14                                     #75.5
        jl        ..B1.40       # Prob 10%                      #75.5
                                # LOE r13 r14 ebx r12d r15d xmm0
..B1.37:                        # Preds ..B1.36
                                # Execution count [4.00e+02]
        vmovups   .L_2il0floatpacket.12(%rip), %zmm3            #75.5
        xorl      %eax, %eax                                    #75.5
                                # LOE rax r13 r14 ebx r12d r15d xmm0 zmm3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
# LLVM-MCA-BEGIN
..B1.38:                        # Preds ..B1.38 ..B1.37
                                # Execution count [2.22e+03]
        vmulpd    (%r13,%rax,8), %zmm3, %zmm1                   #75.5
        vmulpd    64(%r13,%rax,8), %zmm3, %zmm2                 #75.5
        vmovupd   %zmm1, (%r13,%rax,8)                          #75.5
        vmovupd   %zmm2, 64(%r13,%rax,8)                        #75.5
        addq      $16, %rax                                     #75.5
        cmpq      %r14, %rax                                    #75.5
        jb        ..B1.38       # Prob 82%                      #75.5
# LLVM-MCA-END
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
                                # LOE rax r13 r14 ebx r12d r15d xmm0 zmm3
..B1.40:                        # Preds ..B1.38 ..B1.35 ..B1.36
                                # Execution count [4.44e+02]
        incl      %r15d                                         #75.5
        cmpl      %r12d, %r15d                                  #75.5
        jb        ..B1.33       # Prob 82%                      #75.5
                                # LOE r13 r14 ebx r12d r15d xmm0
..B1.42:                        # Preds ..B1.40 ..B1.45
                                # Execution count [8.89e+01]: Infreq
        vzeroupper                                              #75.5
        lea       2104(%rsp), %rdi                              #75.5
        lea       2096(%rsp), %rsi                              #75.5
..___tag_value_main.41:
#       timing(double *, double *)
        call      timing                                        #75.5
..___tag_value_main.42:
                                # LOE r13 r14 ebx r12d
..B1.43:                        # Preds ..B1.42
                                # Execution count [8.89e+01]: Infreq
        vmovsd    2104(%rsp), %xmm16                            #75.5
        addl      %r12d, %r12d                                  #75.5
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm0             #75.5
        vsubsd    2088(%rsp), %xmm16, %xmm1                     #75.5
        vcomisd   %xmm1, %xmm0                                  #75.5
        jbe       ..B1.47       # Prob 18%                      #75.5
                                # LOE r13 r14 ebx r12d xmm1
..B1.44:                        # Preds ..B1.43
                                # Execution count [7.29e+01]: Infreq
        lea       2088(%rsp), %rdi                              #75.5
        lea       2096(%rsp), %rsi                              #75.5
..___tag_value_main.43:
#       timing(double *, double *)
        call      timing                                        #75.5
..___tag_value_main.44:
                                # LOE r13 r14 ebx r12d
..B1.45:                        # Preds ..B1.44
                                # Execution count [7.29e+01]: Infreq
        xorl      %r15d, %r15d                                  #75.5
        testl     %r12d, %r12d                                  #75.5
        jle       ..B1.42       # Prob 10%                      #75.5
                                # LOE r13 r14 ebx r12d r15d
..B1.46:                        # Preds ..B1.45
                                # Execution count [6.56e+01]: Infreq
        .byte     15                                            #
        .byte     31                                            #
        .byte     0                                             #
        .byte     15                                            #
        .byte     31                                            #
        .byte     128                                           #
        .byte     0                                             #
        .byte     0                                             #
        .byte     0                                             #
        .byte     0                                             #
        vxorpd    %xmm0, %xmm0, %xmm0                           #
        jmp       ..B1.33       # Prob 100%                     #
                                # LOE r13 r14 ebx r12d r15d xmm0
..B1.47:                        # Preds ..B1.43
                                # Execution count [1.60e+01]: Infreq
        movl      %r12d, %eax                                   #75.5
        lea       1024(%rsp), %rdi                              #75.5
        shrl      $31, %eax                                     #75.5
        movl      $1024, %esi                                   #75.5
        addl      %eax, %r12d                                   #75.5
        vmovsd    %xmm1, 1048(%rdi)                             #[spill]
        sarl      $1, %r12d                                     #75.5
..___tag_value_main.46:
#       gethostname(char *, size_t)
        call      gethostname                                   #75.5
..___tag_value_main.47:
                                # LOE r13 r14 ebx r12d
..B1.48:                        # Preds ..B1.47
                                # Execution count [1.60e+01]: Infreq
        movl      $.L_2__STRING.0, %esi                         #75.5
        lea       1024(%rsp), %rdi                              #75.5
..___tag_value_main.48:
#       strcmp(const char *, const char *)
        call      strcmp                                        #75.5
..___tag_value_main.49:
                                # LOE r13 r14 r15 eax ebx r12d
..B1.75:                        # Preds ..B1.48
                                # Execution count [1.60e+01]: Infreq
        testl     %eax, %eax                                    #75.5
        je        ..B1.59       # Prob 9%                       #75.5
                                # LOE r13 r14 r15 ebx r12d
..B1.49:                        # Preds ..B1.75
                                # Execution count [1.44e+01]: Infreq
        movl      $.L_2__STRING.1, %esi                         #75.5
        lea       1024(%rsp), %rdi                              #75.5
..___tag_value_main.50:
#       strcmp(const char *, const char *)
        call      strcmp                                        #75.5
..___tag_value_main.51:
                                # LOE r13 r14 r15 eax ebx r12d
..B1.76:                        # Preds ..B1.49
                                # Execution count [1.44e+01]: Infreq
        testl     %eax, %eax                                    #75.5
        je        ..B1.57       # Prob 9%                       #75.5
                                # LOE r13 r14 r15 ebx r12d
..B1.50:                        # Preds ..B1.76
                                # Execution count [1.30e+01]: Infreq
        movl      $.L_2__STRING.2, %esi                         #75.5
        lea       1024(%rsp), %rdi                              #75.5
..___tag_value_main.52:
#       strcmp(const char *, const char *)
        call      strcmp                                        #75.5
..___tag_value_main.53:
                                # LOE r13 r14 r15 eax ebx r12d
..B1.77:                        # Preds ..B1.50
                                # Execution count [1.30e+01]: Infreq
        testl     %eax, %eax                                    #75.5
        jne       ..B1.53       # Prob 78%                      #75.5
                                # LOE r13 r14 r15 ebx r12d
..B1.51:                        # Preds ..B1.77
                                # Execution count [2.86e+00]: Infreq
        vmovsd    2048(%rsp), %xmm0                             #75.5[spill]
        vmovsd    2056(%rsp), %xmm1                             #75.5[spill]
..___tag_value_main.55:
#       pow(double, double)
        call      pow                                           #75.5
..___tag_value_main.56:
                                # LOE r13 r14 ebx r12d xmm0
..B1.52:                        # Preds ..B1.51
                                # Execution count [2.86e+00]: Infreq
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #75.5
        vcvttsd2si %xmm0, %r15                                  #75.5
                                # LOE r13 r14 r15 ebx r12d
..B1.53:                        # Preds ..B1.60 ..B1.58 ..B1.52 ..B1.77
                                # Execution count [1.60e+01]: Infreq
        movslq    %r12d, %rcx                                   #75.5
        vxorpd    %xmm13, %xmm13, %xmm13                        #75.5
        imulq     %r14, %rcx                                    #75.5
        vcvtsi2sdq %rcx, %xmm13, %xmm13                         #75.5
        vmovsd    .L_2il0floatpacket.16(%rip), %xmm5            #75.5
        vxorpd    %xmm8, %xmm8, %xmm8                           #75.5
        vmovsd    2072(%rsp), %xmm1                             #75.5[spill]
        vxorpd    %xmm16, %xmm16, %xmm16                        #75.5
        vdivsd    %xmm1, %xmm5, %xmm10                          #75.5
        vmulsd    .L_2il0floatpacket.10(%rip), %xmm13, %xmm14   #75.5
        vxorpd    %xmm12, %xmm12, %xmm12                        #75.5
        vcvtsi2sd 2080(%rsp), %xmm8, %xmm8                      #75.5[spill]
        vcvtsi2sdq %r15, %xmm16, %xmm16                         #75.5
        vdivsd    %xmm14, %xmm1, %xmm15                         #75.5
        vmulsd    .L_2il0floatpacket.9(%rip), %xmm8, %xmm6      #75.5
        movl      $.L_2__STRING.3, %edi                         #75.5
        vcvtsi2sd %r12d, %xmm12, %xmm12                         #75.5
        vmulsd    .L_2il0floatpacket.11(%rip), %xmm8, %xmm9     #75.5
        vmulsd    %xmm10, %xmm6, %xmm7                          #75.5
        vmulsd    .L_2il0floatpacket.8(%rip), %xmm8, %xmm0      #75.5
        vmulsd    %xmm10, %xmm9, %xmm11                         #75.5
        vmulsd    %xmm12, %xmm7, %xmm2                          #75.5
        vmulsd    %xmm16, %xmm15, %xmm3                         #75.5
        vmulsd    %xmm12, %xmm11, %xmm4                         #75.5
        movl      %r12d, %esi                                   #75.5
        movq      %r14, %rdx                                    #75.5
        movl      $6, %eax                                      #75.5
        vmovapd   %xmm2, %xmm5                                  #75.5
..___tag_value_main.60:
#       printf(const char *__restrict__, ...)
        call      printf                                        #75.5
..___tag_value_main.61:
                                # LOE r13 ebx
..B1.54:                        # Preds ..B1.53
                                # Execution count [1.60e+01]: Infreq
        movq      %r13, %rdi                                    #75.5
..___tag_value_main.62:
#       free(void *)
        call      free                                          #75.5
..___tag_value_main.63:
                                # LOE ebx
..B1.55:                        # Preds ..B1.54
                                # Execution count [1.60e+01]: Infreq
        movb      2064(%rsp), %al                               #72.3[spill]
        incl      %ebx                                          #72.3
        incb      %al                                           #72.3
        movb      %al, 2064(%rsp)                               #72.3[spill]
        cmpb      $16, %al                                      #72.3
        jb        ..B1.11       # Prob 93%                      #72.3
                                # LOE ebx
..B1.56:                        # Preds ..B1.55
                                # Execution count [1.00e+00]: Infreq
        xorl      %eax, %eax                                    #77.10
        addq      $2136, %rsp                                   #77.10
	.cfi_restore 3
        popq      %rbx                                          #77.10
	.cfi_restore 15
        popq      %r15                                          #77.10
	.cfi_restore 14
        popq      %r14                                          #77.10
	.cfi_restore 13
        popq      %r13                                          #77.10
	.cfi_restore 12
        popq      %r12                                          #77.10
        movq      %rbp, %rsp                                    #77.10
        popq      %rbp                                          #77.10
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #77.10
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.57:                        # Preds ..B1.76
                                # Execution count [1.43e+00]: Infreq
        vmovsd    2048(%rsp), %xmm0                             #75.5[spill]
        vmovsd    2056(%rsp), %xmm1                             #75.5[spill]
..___tag_value_main.81:
#       pow(double, double)
        call      pow                                           #75.5
..___tag_value_main.82:
                                # LOE r13 r14 ebx r12d xmm0
..B1.58:                        # Preds ..B1.57
                                # Execution count [1.43e+00]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #75.5
        vcvttsd2si %xmm0, %r15                                  #75.5
        jmp       ..B1.53       # Prob 100%                     #75.5
                                # LOE r13 r14 r15 ebx r12d
..B1.59:                        # Preds ..B1.75
                                # Execution count [1.58e+00]: Infreq
        vmovsd    2048(%rsp), %xmm0                             #75.5[spill]
        vmovsd    2056(%rsp), %xmm1                             #75.5[spill]
..___tag_value_main.85:
#       pow(double, double)
        call      pow                                           #75.5
..___tag_value_main.86:
                                # LOE r13 r14 ebx r12d xmm0
..B1.60:                        # Preds ..B1.59
                                # Execution count [1.58e+00]: Infreq
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm0, %xmm0      #75.5
        vcvttsd2si %xmm0, %r15                                  #75.5
        jmp       ..B1.53       # Prob 100%                     #75.5
                                # LOE r13 r14 r15 ebx r12d
..B1.61:                        # Preds ..B1.14
                                # Execution count [1.44e+00]: Infreq
        xorl      %eax, %eax                                    #75.5
        jmp       ..B1.27       # Prob 100%                     #75.5
                                # LOE rax r13 r14 ebx
..B1.62:                        # Preds ..B1.70
                                # Execution count [8.91e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #68.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #68.3
        vmovsd    %xmm0, 2048(%rsp)                             #68.3[spill]
        vmovsd    %xmm1, 2056(%rsp)                             #68.3[spill]
..___tag_value_main.89:
#       pow(double, double)
        call      pow                                           #68.3
..___tag_value_main.90:
                                # LOE r12 r13 r14 r15 xmm0
..B1.63:                        # Preds ..B1.62
                                # Execution count [8.91e-02]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #68.3
        vcvttsd2si %xmm0, %rbx                                  #68.3
        jmp       ..B1.7        # Prob 100%                     #68.3
                                # LOE rbx r12 r13 r14 r15
..B1.64:                        # Preds ..B1.69
                                # Execution count [9.88e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #68.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #68.3
        vmovsd    %xmm0, 2048(%rsp)                             #68.3[spill]
        vmovsd    %xmm1, 2056(%rsp)                             #68.3[spill]
..___tag_value_main.93:
#       pow(double, double)
        call      pow                                           #68.3
..___tag_value_main.94:
                                # LOE r12 r13 r14 r15 xmm0
..B1.65:                        # Preds ..B1.64
                                # Execution count [9.88e-02]: Infreq
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm0, %xmm0      #68.3
        vcvttsd2si %xmm0, %rbx                                  #68.3
        jmp       ..B1.7        # Prob 100%                     #68.3
        .align    16,0x90
                                # LOE rbx r12 r13 r14 r15
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.0:
	.data
# -- End  main
	.text
.L_2__routine_start_getFreq_1:
# -- Begin  getFreq
	.text
# mark_begin;
       .align    16,0x90
	.globl getFreq
# --- getFreq(char *, long *)
getFreq:
# parameter 1: %rdi
# parameter 2: %rsi
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_getFreq.97:
..L98:
                                                         #11.1
        pushq     %rbx                                          #11.1
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
        pushq     %rbp                                          #11.1
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
        pushq     %rsi                                          #11.1
	.cfi_def_cfa_offset 32
        movq      %rsi, %rbp                                    #11.1
        movl      $.L_2__STRING.0, %esi                         #12.7
        movq      %rdi, %rbx                                    #11.1
..___tag_value_getFreq.104:
#       strcmp(const char *, const char *)
        call      strcmp                                        #12.7
..___tag_value_getFreq.105:
                                # LOE rbx rbp r12 r13 r14 r15 eax
..B2.13:                        # Preds ..B2.1
                                # Execution count [1.00e+00]
        testl     %eax, %eax                                    #12.42
        je        ..B2.9        # Prob 9%                       #12.42
                                # LOE rbx rbp r12 r13 r14 r15
..B2.2:                         # Preds ..B2.13
                                # Execution count [9.01e-01]
        movq      %rbx, %rdi                                    #16.7
        movl      $.L_2__STRING.1, %esi                         #16.7
..___tag_value_getFreq.106:
#       strcmp(const char *, const char *)
        call      strcmp                                        #16.7
..___tag_value_getFreq.107:
                                # LOE rbx rbp r12 r13 r14 r15 eax
..B2.14:                        # Preds ..B2.2
                                # Execution count [9.01e-01]
        testl     %eax, %eax                                    #16.37
        je        ..B2.7        # Prob 9%                       #16.37
                                # LOE rbx rbp r12 r13 r14 r15
..B2.3:                         # Preds ..B2.14
                                # Execution count [8.12e-01]
        movq      %rbx, %rdi                                    #20.7
        movl      $.L_2__STRING.2, %esi                         #20.7
..___tag_value_getFreq.108:
#       strcmp(const char *, const char *)
        call      strcmp                                        #20.7
..___tag_value_getFreq.109:
                                # LOE rbp r12 r13 r14 r15 eax
..B2.15:                        # Preds ..B2.3
                                # Execution count [8.12e-01]
        testl     %eax, %eax                                    #20.38
        je        ..B2.5        # Prob 22%                      #20.38
                                # LOE rbp r12 r13 r14 r15
..B2.4:                         # Preds ..B2.15
                                # Execution count [6.33e-01]
        movl      $-1, %eax                                     #24.10
        popq      %rcx                                          #24.10
	.cfi_def_cfa_offset 24
	.cfi_restore 6
        popq      %rbp                                          #24.10
	.cfi_def_cfa_offset 16
	.cfi_restore 3
        popq      %rbx                                          #24.10
	.cfi_def_cfa_offset 8
        ret                                                     #24.10
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -16
	.cfi_offset 6, -24
                                # LOE
..B2.5:                         # Preds ..B2.15
                                # Execution count [1.79e-01]
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #21.26
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #21.26
..___tag_value_getFreq.118:
#       pow(double, double)
        call      pow                                           #21.26
..___tag_value_getFreq.119:
                                # LOE rbp r12 r13 r14 r15 xmm0
..B2.6:                         # Preds ..B2.5
                                # Execution count [1.79e-01]
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #21.26
        vcvttsd2si %xmm0, %rax                                  #21.26
        movq      %rax, (%rbp)                                  #21.8
        xorl      %eax, %eax                                    #22.14
        popq      %rcx                                          #22.14
	.cfi_def_cfa_offset 24
	.cfi_restore 6
        popq      %rbp                                          #22.14
	.cfi_def_cfa_offset 16
	.cfi_restore 3
        popq      %rbx                                          #22.14
	.cfi_def_cfa_offset 8
        ret                                                     #22.14
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -16
	.cfi_offset 6, -24
                                # LOE
..B2.7:                         # Preds ..B2.14
                                # Execution count [8.91e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #17.26
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #17.26
..___tag_value_getFreq.128:
#       pow(double, double)
        call      pow                                           #17.26
..___tag_value_getFreq.129:
                                # LOE rbp r12 r13 r14 r15 xmm0
..B2.8:                         # Preds ..B2.7
                                # Execution count [8.91e-02]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #17.26
        vcvttsd2si %xmm0, %rax                                  #17.26
        movq      %rax, (%rbp)                                  #17.8
        xorl      %eax, %eax                                    #18.14
        popq      %rcx                                          #18.14
	.cfi_def_cfa_offset 24
	.cfi_restore 6
        popq      %rbp                                          #18.14
	.cfi_def_cfa_offset 16
	.cfi_restore 3
        popq      %rbx                                          #18.14
	.cfi_def_cfa_offset 8
        ret                                                     #18.14
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -16
	.cfi_offset 6, -24
                                # LOE
..B2.9:                         # Preds ..B2.13
                                # Execution count [9.88e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #13.26
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #13.26
..___tag_value_getFreq.138:
#       pow(double, double)
        call      pow                                           #13.26
..___tag_value_getFreq.139:
                                # LOE rbp r12 r13 r14 r15 xmm0
..B2.10:                        # Preds ..B2.9
                                # Execution count [9.88e-02]: Infreq
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm0, %xmm0      #13.26
        vcvttsd2si %xmm0, %rax                                  #13.26
        movq      %rax, (%rbp)                                  #13.8
        xorl      %eax, %eax                                    #14.14
        popq      %rcx                                          #14.14
	.cfi_def_cfa_offset 24
	.cfi_restore 6
        popq      %rbp                                          #14.14
	.cfi_def_cfa_offset 16
	.cfi_restore 3
        popq      %rbx                                          #14.14
	.cfi_def_cfa_offset 8
        ret                                                     #14.14
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	getFreq,@function
	.size	getFreq,.-getFreq
..LNgetFreq.1:
	.data
# -- End  getFreq
	.text
.L_2__routine_start_scale_2:
# -- Begin  scale
	.text
# mark_begin;
       .align    16,0x90
	.globl scale
# --- scale(long, double)
scale:
# parameter 1: %rdi
# parameter 2: %xmm0
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_scale.146:
..L147:
                                                        #27.37
        pushq     %rbp                                          #27.37
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #27.37
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-64, %rsp                                    #27.37
        pushq     %r12                                          #27.37
        pushq     %r13                                          #27.37
        pushq     %r14                                          #27.37
        pushq     %r15                                          #27.37
        subq      $1120, %rsp                                   #27.37
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
        movq      %rdi, %r14                                    #27.37
        movl      $64, %edi                                     #29.7
        vmovsd    %xmm0, (%rsp)                                 #27.37[spill]
        lea       (,%r14,8), %rsi                               #29.7
..___tag_value_scale.156:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #29.7
..___tag_value_scale.157:
                                # LOE rax rbx r14
..B3.57:                        # Preds ..B3.1
                                # Execution count [1.00e+00]
        movq      %rax, %r13                                    #29.7
                                # LOE rbx r13 r14
..B3.2:                         # Preds ..B3.57
                                # Execution count [1.00e+00]
        testq     %r14, %r14                                    #32.18
        jle       ..B3.20       # Prob 50%                      #32.18
                                # LOE rbx r13 r14
..B3.3:                         # Preds ..B3.2
                                # Execution count [9.00e-01]
        cmpq      $16, %r14                                     #32.3
        jl        ..B3.54       # Prob 10%                      #32.3
                                # LOE rbx r13 r14
..B3.4:                         # Preds ..B3.3
                                # Execution count [9.00e-01]
        movq      %r13, %r8                                     #32.3
        andq      $63, %r8                                      #32.3
        testq     $7, %r8                                       #32.3
        je        ..B3.6        # Prob 50%                      #32.3
                                # LOE rbx r8 r13 r14
..B3.5:                         # Preds ..B3.4
                                # Execution count [4.50e-01]
        xorl      %r8d, %r8d                                    #32.3
        jmp       ..B3.8        # Prob 100%                     #32.3
                                # LOE rbx r8 r13 r14
..B3.6:                         # Preds ..B3.4
                                # Execution count [4.50e-01]
        testq     %r8, %r8                                      #32.3
        je        ..B3.8        # Prob 50%                      #32.3
                                # LOE rbx r8 r13 r14
..B3.7:                         # Preds ..B3.6
                                # Execution count [5.00e+00]
        negq      %r8                                           #32.3
        addq      $64, %r8                                      #32.3
        shrq      $3, %r8                                       #32.3
        cmpq      %r8, %r14                                     #32.3
        cmovl     %r14, %r8                                     #32.3
                                # LOE rbx r8 r13 r14
..B3.8:                         # Preds ..B3.5 ..B3.7 ..B3.6
                                # Execution count [1.00e+00]
        movq      %r14, %rax                                    #32.3
        subq      %r8, %rax                                     #32.3
        andq      $15, %rax                                     #32.3
        negq      %rax                                          #32.3
        addq      %r14, %rax                                    #32.3
        cmpq      $1, %r8                                       #32.3
        jb        ..B3.12       # Prob 50%                      #32.3
                                # LOE rax rbx r8 r13 r14
..B3.9:                         # Preds ..B3.8
                                # Execution count [9.00e-01]
        vmovdqu   .L_2il0floatpacket.14(%rip), %ymm3            #32.3
        xorl      %esi, %esi                                    #32.3
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm2            #32.3
        vmovups   .L_2il0floatpacket.13(%rip), %zmm1            #33.12
        vpbroadcastq %r8, %zmm0                                 #32.3
        xorl      %ecx, %ecx                                    #32.3
                                # LOE rax rcx rbx r8 r13 r14 esi ymm2 ymm3 zmm0 zmm1
..B3.10:                        # Preds ..B3.10 ..B3.9
                                # Execution count [5.00e+00]
        vpmovsxdq %ymm2, %zmm4                                  #32.3
        addl      $8, %esi                                      #32.3
        vpaddd    %ymm3, %ymm2, %ymm2                           #32.3
        vpcmpgtq  %zmm4, %zmm0, %k1                             #32.3
        vmovupd   %zmm1, (%r13,%rcx,8){%k1}                     #33.5
        addq      $8, %rcx                                      #32.3
        cmpq      %r8, %rsi                                     #32.3
        jb        ..B3.10       # Prob 82%                      #32.3
                                # LOE rax rcx rbx r8 r13 r14 esi ymm2 ymm3 zmm0 zmm1
..B3.11:                        # Preds ..B3.10
                                # Execution count [9.00e-01]
        cmpq      %r8, %r14                                     #32.3
        je        ..B3.20       # Prob 10%                      #32.3
                                # LOE rax rbx r8 r13 r14
..B3.12:                        # Preds ..B3.8 ..B3.11
                                # Execution count [5.00e+00]
        lea       16(%r8), %rcx                                 #32.3
        cmpq      %rcx, %rax                                    #32.3
        jl        ..B3.16       # Prob 50%                      #32.3
                                # LOE rax rbx r8 r13 r14
..B3.13:                        # Preds ..B3.12
                                # Execution count [9.00e-01]
        movslq    %r8d, %rcx                                    #32.3
        movl      %r8d, %esi                                    #32.3
        vmovups   .L_2il0floatpacket.13(%rip), %zmm0            #33.12
                                # LOE rax rcx rbx r13 r14 esi zmm0
..B3.14:                        # Preds ..B3.14 ..B3.13
                                # Execution count [5.00e+00]
        addl      $16, %esi                                     #32.3
        vmovupd   %zmm0, (%r13,%rcx,8)                          #33.5
        vmovupd   %zmm0, 64(%r13,%rcx,8)                        #33.5
        addq      $16, %rcx                                     #32.3
        cmpq      %rax, %rsi                                    #32.3
        jb        ..B3.14       # Prob 82%                      #32.3
                                # LOE rax rcx rbx r13 r14 esi zmm0
..B3.16:                        # Preds ..B3.14 ..B3.12 ..B3.54
                                # Execution count [1.00e+00]
        lea       1(%rax), %rcx                                 #32.3
        cmpq      %r14, %rcx                                    #32.3
        ja        ..B3.20       # Prob 50%                      #32.3
                                # LOE rax rbx r13 r14
..B3.17:                        # Preds ..B3.16
                                # Execution count [9.00e-01]
        movslq    %eax, %rcx                                    #33.5
        negq      %rax                                          #32.3
        addq      %r14, %rax                                    #32.3
        xorl      %r8d, %r8d                                    #32.3
        vmovdqu   .L_2il0floatpacket.14(%rip), %ymm3            #32.3
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm2            #32.3
        vmovups   .L_2il0floatpacket.13(%rip), %zmm1            #33.12
        vpbroadcastq %rax, %zmm0                                #32.3
        lea       (%r13,%rcx,8), %rsi                           #33.5
        xorl      %ecx, %ecx                                    #32.3
                                # LOE rax rcx rbx rsi r13 r14 r8d ymm2 ymm3 zmm0 zmm1
..B3.18:                        # Preds ..B3.18 ..B3.17
                                # Execution count [5.00e+00]
        vpmovsxdq %ymm2, %zmm4                                  #32.3
        addl      $8, %r8d                                      #32.3
        vpaddd    %ymm3, %ymm2, %ymm2                           #32.3
        vpcmpgtq  %zmm4, %zmm0, %k1                             #32.3
        vmovupd   %zmm1, (%rsi,%rcx,8){%k1}                     #33.5
        addq      $8, %rcx                                      #32.3
        cmpq      %rax, %r8                                     #32.3
        jb        ..B3.18       # Prob 82%                      #32.3
                                # LOE rax rcx rbx rsi r13 r14 r8d ymm2 ymm3 zmm0 zmm1
..B3.20:                        # Preds ..B3.2 ..B3.18 ..B3.11 ..B3.16
                                # Execution count [1.00e+00]
        vzeroupper                                              #39.5
        lea       1040(%rsp), %rdi                              #39.5
        movl      $1, %r15d                                     #37.14
        lea       1048(%rsp), %rsi                              #39.5
..___tag_value_scale.158:
#       timing(double *, double *)
        call      timing                                        #39.5
..___tag_value_scale.159:
                                # LOE rbx r13 r14 r15d
..B3.21:                        # Preds ..B3.20
                                # Execution count [9.00e-01]
        vbroadcastsd (%rsp), %zmm3                              #27.6[spill]
        movq      %r14, %rax                                    #45.7
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm4             #38.30
        vxorpd    %xmm0, %xmm0, %xmm0                           #41.17
        andq      $-16, %rax                                    #45.7
        xorl      %r12d, %r12d                                  #40.5
        vmovups   .L_2il0floatpacket.17(%rip), %zmm2            #45.7
        vmovdqu32 .L_2il0floatpacket.18(%rip), %zmm1            #45.7
        vmovups   %zmm3, 64(%rsp)                               #45.7[spill]
        movq      %rbx, 1024(%rsp)                              #45.7[spill]
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x22
        movq      %rax, %rbx                                    #45.7
                                # LOE rbx r13 r14 r12d r15d xmm0
..B3.22:                        # Preds ..B3.21 ..B3.33 ..B3.39
                                # Execution count [2.78e+01]
        vcomisd   (%r13), %xmm0                                 #41.17
        jbe       ..B3.24       # Prob 78%                      #41.17
                                # LOE rbx r13 r14 r12d r15d xmm0
..B3.23:                        # Preds ..B3.22
                                # Execution count [6.11e+00]
        movq      %r13, %rdi                                    #41.20
        vzeroupper                                              #41.20
..___tag_value_scale.164:
#       dummy(double *)
        call      dummy                                         #41.20
..___tag_value_scale.165:
                                # LOE rbx r13 r14 r12d r15d
..B3.66:                        # Preds ..B3.23
                                # Execution count [6.11e+00]
        vxorpd    %xmm0, %xmm0, %xmm0                           #
                                # LOE rbx r13 r14 r12d r15d xmm0
..B3.24:                        # Preds ..B3.66 ..B3.22
                                # Execution count [2.78e+01]
        testq     %r14, %r14                                    #45.35
        jle       ..B3.33       # Prob 50%                      #45.35
                                # LOE rbx r13 r14 r12d r15d xmm0
..B3.25:                        # Preds ..B3.24
                                # Execution count [2.50e+01]
        cmpq      $16, %r14                                     #45.7
        jl        ..B3.53       # Prob 10%                      #45.7
                                # LOE rbx r13 r14 r12d r15d xmm0
..B3.26:                        # Preds ..B3.25
                                # Execution count [2.50e+01]
        vmovups   64(%rsp), %zmm3                               #45.7[spill]
        movq      %rbx, %r8                                     #45.7
        xorl      %ecx, %ecx                                    #45.7
                                # LOE rcx rbx r8 r13 r14 r12d r15d xmm0 zmm3
..B3.27:                        # Preds ..B3.27 ..B3.26
                                # Execution count [1.39e+02]
        vmulpd    (%r13,%rcx,8), %zmm3, %zmm1                   #46.24
        vmulpd    64(%r13,%rcx,8), %zmm3, %zmm2                 #46.24
        vmovupd   %zmm1, (%r13,%rcx,8)                          #46.9
        vmovupd   %zmm2, 64(%r13,%rcx,8)                        #46.9
        addq      $16, %rcx                                     #45.7
        cmpq      %rbx, %rcx                                    #45.7
        jb        ..B3.27       # Prob 82%                      #45.7
                                # LOE rcx rbx r8 r13 r14 r12d r15d xmm0 zmm3
..B3.29:                        # Preds ..B3.27 ..B3.53
                                # Execution count [2.78e+01]
        lea       1(%r8), %rcx                                  #45.7
        cmpq      %r14, %rcx                                    #45.7
        ja        ..B3.33       # Prob 50%                      #45.7
                                # LOE rbx r8 r13 r14 r12d r15d xmm0
..B3.30:                        # Preds ..B3.29
                                # Execution count [2.50e+01]
        vmovdqu32 .L_2il0floatpacket.18(%rip), %zmm2            #45.7
        lea       (%r13,%r8,8), %rcx                            #46.24
        vmovups   .L_2il0floatpacket.17(%rip), %zmm4            #45.7
        vmovups   64(%rsp), %zmm5                               #45.7[spill]
        negq      %r8                                           #45.7
        xorl      %r9d, %r9d                                    #45.7
        addq      %r14, %r8                                     #45.7
        vpbroadcastq %r8, %zmm1                                 #45.7
                                # LOE rcx rbx r8 r9 r13 r14 r12d r15d xmm0 zmm1 zmm2 zmm4 zmm5
..B3.31:                        # Preds ..B3.31 ..B3.30
                                # Execution count [1.39e+02]
        vmulpd    (%rcx), %zmm5, %zmm3                          #46.24
        addq      $8, %r9                                       #45.7
        vpcmpgtq  %zmm2, %zmm1, %k1                             #45.7
        vpaddq    %zmm4, %zmm2, %zmm2                           #45.7
        vmovupd   %zmm3, (%rcx){%k1}                            #46.9
        addq      $64, %rcx                                     #45.7
        cmpq      %r8, %r9                                      #45.7
        jb        ..B3.31       # Prob 82%                      #45.7
                                # LOE rcx rbx r8 r9 r13 r14 r12d r15d xmm0 zmm1 zmm2 zmm4 zmm5
..B3.33:                        # Preds ..B3.31 ..B3.24 ..B3.29
                                # Execution count [2.78e+01]
        incl      %r12d                                         #40.5
        cmpl      %r15d, %r12d                                  #40.5
        jb        ..B3.22       # Prob 82%                      #40.5
                                # LOE rbx r13 r14 r12d r15d xmm0
..B3.35:                        # Preds ..B3.33 ..B3.38
                                # Execution count [5.56e+00]: Infreq
        vzeroupper                                              #49.5
        lea       1056(%rsp), %rdi                              #49.5
        lea       1048(%rsp), %rsi                              #49.5
..___tag_value_scale.168:
#       timing(double *, double *)
        call      timing                                        #49.5
..___tag_value_scale.169:
                                # LOE rbx r13 r14 r15d
..B3.36:                        # Preds ..B3.35
                                # Execution count [5.56e+00]: Infreq
        vmovsd    1056(%rsp), %xmm16                            #50.15
        addl      %r15d, %r15d                                  #38.34
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm0             #38.30
        vsubsd    1040(%rsp), %xmm16, %xmm1                     #50.19
        vcomisd   %xmm1, %xmm0                                  #38.30
        jbe       ..B3.40       # Prob 18%                      #38.30
                                # LOE rbx r13 r14 r15d xmm1
..B3.37:                        # Preds ..B3.36
                                # Execution count [4.56e+00]: Infreq
        lea       1040(%rsp), %rdi                              #39.5
        lea       1048(%rsp), %rsi                              #39.5
..___tag_value_scale.170:
#       timing(double *, double *)
        call      timing                                        #39.5
..___tag_value_scale.171:
                                # LOE rbx r13 r14 r15d
..B3.38:                        # Preds ..B3.37
                                # Execution count [4.56e+00]: Infreq
        xorl      %r12d, %r12d                                  #40.5
        testl     %r15d, %r15d                                  #40.20
        jle       ..B3.35       # Prob 10%                      #40.20
                                # LOE rbx r13 r14 r12d r15d
..B3.39:                        # Preds ..B3.38
                                # Execution count [4.10e+00]: Infreq
        .byte     15                                            #
        .byte     31                                            #
        .byte     0                                             #
        .byte     15                                            #
        .byte     31                                            #
        .byte     128                                           #
        .byte     0                                             #
        .byte     0                                             #
        .byte     0                                             #
        .byte     0                                             #
        vxorpd    %xmm0, %xmm0, %xmm0                           #
        jmp       ..B3.22       # Prob 100%                     #
                                # LOE rbx r13 r14 r12d r15d xmm0
..B3.40:                        # Preds ..B3.36
                                # Execution count [1.00e+00]: Infreq
        movl      %r15d, %eax                                   #52.3
        lea       (%rsp), %rdi                                  #54.3
        shrl      $31, %eax                                     #52.3
        movl      $1024, %esi                                   #54.3
        addl      %eax, %r15d                                   #52.3
        vmovsd    %xmm1, 1032(%rdi)                             #[spill]
        movq      1024(%rsp), %rbx                              #[spill]
	.cfi_restore 3
        sarl      $1, %r15d                                     #52.3
..___tag_value_scale.175:
#       gethostname(char *, size_t)
        call      gethostname                                   #54.3
..___tag_value_scale.176:
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x22
                                # LOE rbx r13 r14 r15d
..B3.41:                        # Preds ..B3.40
                                # Execution count [1.00e+00]: Infreq
        movl      $.L_2__STRING.0, %esi                         #56.12
        lea       (%rsp), %rdi                                  #56.12
..___tag_value_scale.178:
#       strcmp(const char *, const char *)
        call      strcmp                                        #56.12
..___tag_value_scale.179:
                                # LOE rbx r12 r13 r14 eax r15d
..B3.58:                        # Preds ..B3.41
                                # Execution count [1.00e+00]: Infreq
        testl     %eax, %eax                                    #56.12
        je        ..B3.51       # Prob 9%                       #56.12
                                # LOE rbx r12 r13 r14 r15d
..B3.42:                        # Preds ..B3.58
                                # Execution count [9.01e-01]: Infreq
        movl      $.L_2__STRING.1, %esi                         #56.12
        lea       (%rsp), %rdi                                  #56.12
..___tag_value_scale.180:
#       strcmp(const char *, const char *)
        call      strcmp                                        #56.12
..___tag_value_scale.181:
                                # LOE rbx r12 r13 r14 eax r15d
..B3.59:                        # Preds ..B3.42
                                # Execution count [9.01e-01]: Infreq
        testl     %eax, %eax                                    #56.12
        je        ..B3.49       # Prob 9%                       #56.12
                                # LOE rbx r12 r13 r14 r15d
..B3.43:                        # Preds ..B3.59
                                # Execution count [8.12e-01]: Infreq
        movl      $.L_2__STRING.2, %esi                         #56.12
        lea       (%rsp), %rdi                                  #56.12
..___tag_value_scale.182:
#       strcmp(const char *, const char *)
        call      strcmp                                        #56.12
..___tag_value_scale.183:
                                # LOE rbx r12 r13 r14 eax r15d
..B3.60:                        # Preds ..B3.43
                                # Execution count [8.12e-01]: Infreq
        testl     %eax, %eax                                    #56.12
        jne       ..B3.46       # Prob 78%                      #56.12
                                # LOE rbx r12 r13 r14 r15d
..B3.44:                        # Preds ..B3.60
                                # Execution count [1.79e-01]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #56.12
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #56.12
..___tag_value_scale.184:
#       pow(double, double)
        call      pow                                           #56.12
..___tag_value_scale.185:
                                # LOE rbx r13 r14 r15d xmm0
..B3.45:                        # Preds ..B3.44
                                # Execution count [1.79e-01]: Infreq
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #56.12
        vcvttsd2si %xmm0, %r12                                  #56.12
                                # LOE rbx r12 r13 r14 r15d
..B3.46:                        # Preds ..B3.52 ..B3.50 ..B3.45 ..B3.60
                                # Execution count [1.00e+00]: Infreq
        movslq    %r15d, %rcx                                   #57.3
        vxorpd    %xmm8, %xmm8, %xmm8                           #57.3
        imulq     %r14, %rcx                                    #57.3
        vcvtsi2sdq %rcx, %xmm8, %xmm8                           #57.3
        vmovsd    .L_2il0floatpacket.16(%rip), %xmm5            #57.3
        vxorpd    %xmm12, %xmm12, %xmm12                        #57.85
        vmovsd    1032(%rsp), %xmm1                             #57.300[spill]
        vxorpd    %xmm16, %xmm16, %xmm16                        #57.147
        vdivsd    %xmm1, %xmm5, %xmm14                          #57.300
        vmulsd    .L_2il0floatpacket.10(%rip), %xmm8, %xmm9     #57.3
        vxorpd    %xmm11, %xmm11, %xmm11                        #57.3
        vcvtsi2sdq %r14, %xmm12, %xmm12                         #57.85
        vcvtsi2sd %r15d, %xmm16, %xmm16                         #57.147
        vdivsd    %xmm9, %xmm1, %xmm10                          #57.3
        vmulsd    .L_2il0floatpacket.9(%rip), %xmm12, %xmm6     #57.300
        movl      $.L_2__STRING.3, %edi                         #57.3
        vcvtsi2sdq %r12, %xmm11, %xmm11                         #57.3
        vmulsd    .L_2il0floatpacket.11(%rip), %xmm12, %xmm13   #57.3
        vmulsd    %xmm14, %xmm6, %xmm7                          #57.154
        vmulsd    .L_2il0floatpacket.8(%rip), %xmm12, %xmm0     #57.3
        vmulsd    %xmm14, %xmm13, %xmm15                        #57.3
        vmulsd    %xmm16, %xmm7, %xmm2                          #57.315
        vmulsd    %xmm11, %xmm10, %xmm3                         #57.3
        vmulsd    %xmm16, %xmm15, %xmm4                         #57.3
        movl      %r15d, %esi                                   #57.3
        movq      %r14, %rdx                                    #57.3
        movl      $6, %eax                                      #57.3
        vmovapd   %xmm2, %xmm5                                  #57.3
..___tag_value_scale.187:
#       printf(const char *__restrict__, ...)
        call      printf                                        #57.3
..___tag_value_scale.188:
                                # LOE rbx r13
..B3.47:                        # Preds ..B3.46
                                # Execution count [1.00e+00]: Infreq
        movq      %r13, %rdi                                    #59.3
..___tag_value_scale.189:
#       free(void *)
        call      free                                          #59.3
..___tag_value_scale.190:
                                # LOE rbx
..B3.48:                        # Preds ..B3.47
                                # Execution count [1.00e+00]: Infreq
        addq      $1120, %rsp                                   #60.1
	.cfi_restore 15
        popq      %r15                                          #60.1
	.cfi_restore 14
        popq      %r14                                          #60.1
	.cfi_restore 13
        popq      %r13                                          #60.1
	.cfi_restore 12
        popq      %r12                                          #60.1
        movq      %rbp, %rsp                                    #60.1
        popq      %rbp                                          #60.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #60.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B3.49:                        # Preds ..B3.59
                                # Execution count [8.91e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #56.12
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #56.12
..___tag_value_scale.203:
#       pow(double, double)
        call      pow                                           #56.12
..___tag_value_scale.204:
                                # LOE rbx r13 r14 r15d xmm0
..B3.50:                        # Preds ..B3.49
                                # Execution count [8.91e-02]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #56.12
        vcvttsd2si %xmm0, %r12                                  #56.12
        jmp       ..B3.46       # Prob 100%                     #56.12
                                # LOE rbx r12 r13 r14 r15d
..B3.51:                        # Preds ..B3.58
                                # Execution count [9.88e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #56.12
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #56.12
..___tag_value_scale.205:
#       pow(double, double)
        call      pow                                           #56.12
..___tag_value_scale.206:
                                # LOE rbx r13 r14 r15d xmm0
..B3.52:                        # Preds ..B3.51
                                # Execution count [9.88e-02]: Infreq
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm0, %xmm0      #56.12
        vcvttsd2si %xmm0, %r12                                  #56.12
        jmp       ..B3.46       # Prob 100%                     #56.12
                                # LOE rbx r12 r13 r14 r15d
..B3.53:                        # Preds ..B3.25
                                # Execution count [2.50e+00]: Infreq
        xorl      %r8d, %r8d                                    #45.7
        jmp       ..B3.29       # Prob 100%                     #45.7
	.cfi_restore 3
                                # LOE rbx r8 r13 r14 r12d r15d xmm0
..B3.54:                        # Preds ..B3.3
                                # Execution count [9.00e-02]: Infreq
        xorl      %eax, %eax                                    #32.3
        jmp       ..B3.16       # Prob 100%                     #32.3
        .align    16,0x90
                                # LOE rax rbx r13 r14
	.cfi_endproc
# mark_end;
	.type	scale,@function
	.size	scale,.-scale
..LNscale.2:
	.data
# -- End  scale
	.section .rodata, "a"
	.align 64
	.align 64
.L_2il0floatpacket.12:
	.long	0x3a7daa50,0x3ff3b31e,0x3a7daa50,0x3ff3b31e,0x3a7daa50,0x3ff3b31e,0x3a7daa50,0x3ff3b31e,0x3a7daa50,0x3ff3b31e,0x3a7daa50,0x3ff3b31e,0x3a7daa50,0x3ff3b31e,0x3a7daa50,0x3ff3b31e
	.type	.L_2il0floatpacket.12,@object
	.size	.L_2il0floatpacket.12,64
	.align 64
.L_2il0floatpacket.13:
	.long	0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a
	.type	.L_2il0floatpacket.13,@object
	.size	.L_2il0floatpacket.13,64
	.align 64
.L_2il0floatpacket.17:
	.long	0x00000008,0x00000000,0x00000008,0x00000000,0x00000008,0x00000000,0x00000008,0x00000000,0x00000008,0x00000000,0x00000008,0x00000000,0x00000008,0x00000000,0x00000008,0x00000000
	.type	.L_2il0floatpacket.17,@object
	.size	.L_2il0floatpacket.17,64
	.align 64
.L_2il0floatpacket.18:
	.long	0x00000000,0x00000000,0x00000001,0x00000000,0x00000002,0x00000000,0x00000003,0x00000000,0x00000004,0x00000000,0x00000005,0x00000000,0x00000006,0x00000000,0x00000007,0x00000000
	.type	.L_2il0floatpacket.18,@object
	.size	.L_2il0floatpacket.18,64
	.align 32
.L_2il0floatpacket.14:
	.long	0x00000008,0x00000008,0x00000008,0x00000008,0x00000008,0x00000008,0x00000008,0x00000008
	.type	.L_2il0floatpacket.14,@object
	.size	.L_2il0floatpacket.14,32
	.align 32
.L_2il0floatpacket.15:
	.long	0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007
	.type	.L_2il0floatpacket.15,@object
	.size	.L_2il0floatpacket.15,32
	.align 8
.L_2il0floatpacket.0:
	.long	0x00000000,0x40240000
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,8
	.align 8
.L_2il0floatpacket.1:
	.long	0x00000000,0x40220000
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,8
	.align 8
.L_2il0floatpacket.2:
	.long	0x00000000,0x40040000
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,8
	.align 8
.L_2il0floatpacket.3:
	.long	0x9999999a,0x40019999
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,8
	.align 8
.L_2il0floatpacket.4:
	.long	0xe826d695,0x3e112e0b
	.type	.L_2il0floatpacket.4,@object
	.size	.L_2il0floatpacket.4,8
	.align 8
.L_2il0floatpacket.5:
	.long	0x66666666,0x40026666
	.type	.L_2il0floatpacket.5,@object
	.size	.L_2il0floatpacket.5,8
	.align 8
.L_2il0floatpacket.6:
	.long	0xcccccccd,0x3ff4cccc
	.type	.L_2il0floatpacket.6,@object
	.size	.L_2il0floatpacket.6,8
	.align 8
.L_2il0floatpacket.7:
	.long	0x9999999a,0x3fc99999
	.type	.L_2il0floatpacket.7,@object
	.size	.L_2il0floatpacket.7,8
	.align 8
.L_2il0floatpacket.8:
	.long	0x00000000,0x3f800000
	.type	.L_2il0floatpacket.8,@object
	.size	.L_2il0floatpacket.8,8
	.align 8
.L_2il0floatpacket.9:
	.long	0xa0b5ed8d,0x3eb0c6f7
	.type	.L_2il0floatpacket.9,@object
	.size	.L_2il0floatpacket.9,8
	.align 8
.L_2il0floatpacket.10:
	.long	0x00000000,0x3fc00000
	.type	.L_2il0floatpacket.10,@object
	.size	.L_2il0floatpacket.10,8
	.align 8
.L_2il0floatpacket.11:
	.long	0x00000000,0x3ee00000
	.type	.L_2il0floatpacket.11,@object
	.size	.L_2il0floatpacket.11,8
	.align 8
.L_2il0floatpacket.16:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.16,@object
	.size	.L_2il0floatpacket.16,8
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.0:
	.long	1668505955
	.long	1701536108
	.long	3305587
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,12
	.align 4
.L_2__STRING.1:
	.long	1836212599
	.word	28789
	.byte	0
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,7
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.2:
	.long	1819304302
	.long	3240805
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,8
	.align 4
.L_2__STRING.4:
	.long	1413694806
	.long	1428181583
	.long	1413563472
	.long	1533091909
	.long	1025531241
	.long	706769696
	.long	1767596320
	.long	941632605
	.long	1954112032
	.long	1953050469
	.long	540090412
	.long	1886350406
	.long	175401263
	.byte	0
	.type	.L_2__STRING.4,@object
	.size	.L_2__STRING.4,53
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.3:
	.long	775041317
	.long	2082498097
	.long	825304352
	.long	543569966
	.long	958734460
	.long	543568686
	.long	925180028
	.long	543568430
	.long	925180028
	.long	543568174
	.long	925180028
	.long	543568174
	.long	908402812
	.long	545005668
	.long	1684812837
	.word	2592
	.byte	0
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,63
	.section .rodata.str1.32, "aMS",@progbits,1
	.align 32
	.align 32
.L_2__STRING.5:
	.long	1667590211
	.long	1735289195
	.long	1919903264
	.long	779298080
	.long	1701987872
	.long	1852142961
	.long	706771299
	.long	1953723757
	.long	1700929578
	.long	1952805664
	.long	544175136
	.long	841888805
	.long	1212620902
	.long	1868963962
	.long	1635131506
	.long	543451500
	.long	1127184739
	.long	667212
	.type	.L_2__STRING.5,@object
	.size	.L_2__STRING.5,72
	.space 24, 0x00 	# pad
	.align 32
.L_2__STRING.6:
	.long	1702521171
	.long	1112221728
	.long	694514809
	.long	538999840
	.long	1853190688
	.long	1701669236
	.long	2082480160
	.long	1179459616
	.long	795897708
	.long	2082480243
	.long	2036539424
	.long	541868847
	.long	538999840
	.long	1932477005
	.long	2082480160
	.long	1280122912
	.long	1932480597
	.long	1914731552
	.long	1634037861
	.long	545005684
	.long	1702521203
	.word	10
	.type	.L_2__STRING.6,@object
	.size	.L_2__STRING.6,86
	.data
	.section .note.GNU-stack, ""
# End
