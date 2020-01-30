# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.5.281 Build 20190815";
# mark_description "-qopenmp-simd -fno-alias -unroll -fno-builtin -xCORE-AVX512 -qopt-zmm-usage=high -Ofast -S -use-msasm -o cop";
# mark_description "y.s.csx.icc.s";
	.file "copy.c"
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
                                                          #68.1
        pushq     %rbp                                          #68.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #68.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-128, %rsp                                   #68.1
        pushq     %r12                                          #68.1
        pushq     %r13                                          #68.1
        pushq     %r14                                          #68.1
        pushq     %r15                                          #68.1
        pushq     %rbx                                          #68.1
        subq      $2136, %rsp                                   #68.1
        movq      $0x64199d9ffe, %rsi                           #68.1
        movl      $3, %edi                                      #68.1
        call      __intel_new_feature_proc_init                 #68.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE r12 r13 r14 r15
..B1.70:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        vstmxcsr  1024(%rsp)                                    #68.1
        movl      $1024, %esi                                   #70.3
        lea       (%rsp), %rdi                                  #70.3
        orl       $32832, 1024(%rdi)                            #68.1
        vldmxcsr  1024(%rdi)                                    #68.1
..___tag_value_main.11:
#       gethostname(char *, size_t)
        call      gethostname                                   #70.3
..___tag_value_main.12:
                                # LOE r12 r13 r14 r15
..B1.2:                         # Preds ..B1.70
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.0, %esi                         #72.3
        lea       (%rsp), %rdi                                  #72.3
..___tag_value_main.13:
#       strcmp(const char *, const char *)
        call      strcmp                                        #72.3
..___tag_value_main.14:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.71:                        # Preds ..B1.2
                                # Execution count [1.00e+00]
        testl     %eax, %eax                                    #72.3
        je        ..B1.66       # Prob 9%                       #72.3
                                # LOE rbx r12 r13 r14 r15
..B1.3:                         # Preds ..B1.71
                                # Execution count [9.01e-01]
        movl      $.L_2__STRING.1, %esi                         #72.3
        lea       (%rsp), %rdi                                  #72.3
..___tag_value_main.15:
#       strcmp(const char *, const char *)
        call      strcmp                                        #72.3
..___tag_value_main.16:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.72:                        # Preds ..B1.3
                                # Execution count [9.01e-01]
        testl     %eax, %eax                                    #72.3
        je        ..B1.64       # Prob 9%                       #72.3
                                # LOE rbx r12 r13 r14 r15
..B1.4:                         # Preds ..B1.72
                                # Execution count [8.12e-01]
        movl      $.L_2__STRING.2, %esi                         #72.3
        lea       (%rsp), %rdi                                  #72.3
..___tag_value_main.17:
#       strcmp(const char *, const char *)
        call      strcmp                                        #72.3
..___tag_value_main.18:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.73:                        # Preds ..B1.4
                                # Execution count [8.12e-01]
        testl     %eax, %eax                                    #72.3
        je        ..B1.5        # Prob 22%                      #72.3
                                # LOE rbx r12 r13 r14 r15
..B1.86:                        # Preds ..B1.73
                                # Execution count [6.33e-01]
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #72.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #72.3
        vmovsd    %xmm0, 2048(%rsp)                             #72.3[spill]
        vmovsd    %xmm1, 2056(%rsp)                             #72.3[spill]
        jmp       ..B1.7        # Prob 100%                     #72.3
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.73
                                # Execution count [1.79e-01]
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #72.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #72.3
        vmovsd    %xmm0, 2048(%rsp)                             #72.3[spill]
        vmovsd    %xmm1, 2056(%rsp)                             #72.3[spill]
..___tag_value_main.22:
#       pow(double, double)
        call      pow                                           #72.3
..___tag_value_main.23:
                                # LOE r12 r13 r14 r15 xmm0
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.79e-01]
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #72.3
        vcvttsd2si %xmm0, %rbx                                  #72.3
                                # LOE rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.67 ..B1.65 ..B1.6 ..B1.86
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.4, %edi                         #73.3
        xorl      %eax, %eax                                    #73.3
..___tag_value_main.25:
#       printf(const char *__restrict__, ...)
        call      printf                                        #73.3
..___tag_value_main.26:
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
                                # Execution count [1.00e+00]
        vxorpd    %xmm0, %xmm0, %xmm0                           #74.3
        lea       (%rsp), %rsi                                  #74.3
        vcvtsi2sdq %rbx, %xmm0, %xmm0                           #74.3
        movl      $.L_2__STRING.5, %edi                         #74.3
        movl      $1, %eax                                      #74.3
        vmulsd    .L_2il0floatpacket.4(%rip), %xmm0, %xmm0      #74.3
..___tag_value_main.27:
#       printf(const char *__restrict__, ...)
        call      printf                                        #74.3
..___tag_value_main.28:
                                # LOE r12 r13 r14 r15
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.6, %edi                         #75.3
        xorl      %eax, %eax                                    #75.3
..___tag_value_main.29:
#       printf(const char *__restrict__, ...)
        call      printf                                        #75.3
..___tag_value_main.30:
                                # LOE r12 r13 r14 r15
..B1.10:                        # Preds ..B1.9
                                # Execution count [1.00e+00]
        xorb      %dl, %dl                                      #76.3
        movl      $20, %eax                                     #76.3
        vmovsd    .L_2il0floatpacket.5(%rip), %xmm12            #79.5
        vmovsd    .L_2il0floatpacket.3(%rip), %xmm11            #79.5
        vxorpd    %xmm10, %xmm10, %xmm10                        #79.5
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm9             #79.5
        vmovsd    .L_2il0floatpacket.8(%rip), %xmm8             #79.5
        vmovsd    .L_2il0floatpacket.9(%rip), %xmm7             #79.5
        vmovsd    .L_2il0floatpacket.15(%rip), %xmm6            #79.5
        vmovsd    .L_2il0floatpacket.10(%rip), %xmm5            #79.5
        vmovsd    .L_2il0floatpacket.11(%rip), %xmm4            #79.5
        vmovsd    .L_2il0floatpacket.2(%rip), %xmm3             #79.5
        vmovups   .L_2il0floatpacket.12(%rip), %zmm2            #79.5
        vmovdqu   .L_2il0floatpacket.14(%rip), %ymm0            #79.5
        movl      %eax, 2072(%rsp)                              #76.3[spill]
        movb      %dl, 2080(%rsp)                               #76.3[spill]
                                # LOE
..B1.11:                        # Preds ..B1.57 ..B1.10
                                # Execution count [1.60e+01]
        vxorpd    %xmm1, %xmm1, %xmm1                           #77.21
        vcvtsi2sd 2072(%rsp), %xmm1, %xmm1                      #77.21[spill]
        vzeroupper                                              #77.21
        vmovsd    .L_2il0floatpacket.6(%rip), %xmm0             #77.21
..___tag_value_main.34:
#       pow(double, double)
        call      pow                                           #77.21
..___tag_value_main.35:
                                # LOE xmm0
..B1.12:                        # Preds ..B1.11
                                # Execution count [1.60e+01]
        vcvttsd2si %xmm0, %eax                                  #77.21
        movl      %eax, %r12d                                   #78.18
        movl      $64, %edi                                     #79.5
        sarl      $5, %r12d                                     #78.18
        shrl      $26, %r12d                                    #78.18
        addl      %eax, %r12d                                   #78.18
        sarl      $6, %r12d                                     #78.18
        movl      %r12d, %esi                                   #78.22
        shll      $6, %esi                                      #78.22
        movslq    %esi, %rbx                                    #79.5
        shlq      $3, %rbx                                      #79.5
        movl      %esi, 2064(%rsp)                              #78.22[spill]
        movq      %rbx, %rsi                                    #79.5
..___tag_value_main.37:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #79.5
..___tag_value_main.38:
                                # LOE rax rbx r12d
..B1.76:                        # Preds ..B1.12
                                # Execution count [1.60e+01]
        movq      %rax, %r14                                    #79.5
                                # LOE rbx r14 r12d
..B1.13:                        # Preds ..B1.76
                                # Execution count [1.60e+01]
        movl      $64, %edi                                     #79.5
        movq      %rbx, %rsi                                    #79.5
..___tag_value_main.39:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #79.5
..___tag_value_main.40:
                                # LOE rax r14 r12d
..B1.77:                        # Preds ..B1.13
                                # Execution count [1.60e+01]
        movq      %rax, %r13                                    #79.5
                                # LOE r13 r14 r12d
..B1.14:                        # Preds ..B1.77
                                # Execution count [1.60e+01]
        movslq    %r12d, %r12                                   #79.10
        shlq      $6, %r12                                      #78.22
        testq     %r12, %r12                                    #79.5
        jle       ..B1.32       # Prob 50%                      #79.5
                                # LOE r12 r13 r14
..B1.15:                        # Preds ..B1.14
                                # Execution count [1.44e+01]
        cmpq      $16, %r12                                     #79.5
        jl        ..B1.63       # Prob 10%                      #79.5
                                # LOE r12 r13 r14
..B1.16:                        # Preds ..B1.15
                                # Execution count [1.44e+01]
        movq      %r14, %rsi                                    #79.5
        andq      $63, %rsi                                     #79.5
        testq     $7, %rsi                                      #79.5
        je        ..B1.18       # Prob 50%                      #79.5
                                # LOE rsi r12 r13 r14
..B1.17:                        # Preds ..B1.16
                                # Execution count [7.20e+00]
        xorl      %esi, %esi                                    #79.5
        jmp       ..B1.20       # Prob 100%                     #79.5
                                # LOE rsi r12 r13 r14
..B1.18:                        # Preds ..B1.16
                                # Execution count [7.20e+00]
        testq     %rsi, %rsi                                    #79.5
        je        ..B1.20       # Prob 50%                      #79.5
                                # LOE rsi r12 r13 r14
..B1.19:                        # Preds ..B1.18
                                # Execution count [8.00e+01]
        negq      %rsi                                          #79.5
        addq      $64, %rsi                                     #79.5
        shrq      $3, %rsi                                      #79.5
        cmpq      %rsi, %r12                                    #79.5
        cmovl     %r12, %rsi                                    #79.5
                                # LOE rsi r12 r13 r14
..B1.20:                        # Preds ..B1.17 ..B1.19 ..B1.18
                                # Execution count [1.60e+01]
        movq      %r12, %rax                                    #79.5
        subq      %rsi, %rax                                    #79.5
        andq      $15, %rax                                     #79.5
        negq      %rax                                          #79.5
        addq      %r12, %rax                                    #79.5
        cmpq      $1, %rsi                                      #79.5
        jb        ..B1.24       # Prob 50%                      #79.5
                                # LOE rax rsi r12 r13 r14
..B1.21:                        # Preds ..B1.20
                                # Execution count [1.44e+01]
        vmovdqu   .L_2il0floatpacket.14(%rip), %ymm1            #79.5
        xorl      %ebx, %ebx                                    #79.5
        vmovdqu   .L_2il0floatpacket.13(%rip), %ymm3            #79.5
        vmovups   .L_2il0floatpacket.12(%rip), %zmm4            #79.5
        vpbroadcastq %rsi, %zmm0                                #79.5
        xorl      %ecx, %ecx                                    #79.5
                                # LOE rax rcx rsi r12 r13 r14 ebx ymm1 ymm3 zmm0 zmm4
..B1.22:                        # Preds ..B1.22 ..B1.21
                                # Execution count [8.00e+01]
        vpmovsxdq %ymm1, %zmm2                                  #79.5
        addl      $8, %ebx                                      #79.5
        vpaddd    %ymm3, %ymm1, %ymm1                           #79.5
        vpcmpgtq  %zmm2, %zmm0, %k1                             #79.5
        vmovupd   %zmm4, (%r14,%rcx,8){%k1}                     #79.5
        addq      $8, %rcx                                      #79.5
        cmpq      %rsi, %rbx                                    #79.5
        jb        ..B1.22       # Prob 82%                      #79.5
                                # LOE rax rcx rsi r12 r13 r14 ebx ymm1 ymm3 zmm0 zmm4
..B1.23:                        # Preds ..B1.22
                                # Execution count [1.44e+01]
        cmpq      %rsi, %r12                                    #79.5
        je        ..B1.32       # Prob 10%                      #79.5
                                # LOE rax rsi r12 r13 r14
..B1.24:                        # Preds ..B1.20 ..B1.23
                                # Execution count [8.00e+01]
        lea       16(%rsi), %rcx                                #79.5
        cmpq      %rcx, %rax                                    #79.5
        jl        ..B1.28       # Prob 50%                      #79.5
                                # LOE rax rsi r12 r13 r14
..B1.25:                        # Preds ..B1.24
                                # Execution count [1.44e+01]
        vmovups   .L_2il0floatpacket.12(%rip), %zmm0            #79.5
        movl      %esi, %ecx                                    #79.5
                                # LOE rax rsi r12 r13 r14 ecx zmm0
..B1.26:                        # Preds ..B1.26 ..B1.25
                                # Execution count [8.00e+01]
        addl      $16, %ecx                                     #79.5
        vmovupd   %zmm0, (%r14,%rsi,8)                          #79.5
        vmovupd   %zmm0, 64(%r14,%rsi,8)                        #79.5
        addq      $16, %rsi                                     #79.5
        cmpq      %rax, %rcx                                    #79.5
        jb        ..B1.26       # Prob 82%                      #79.5
                                # LOE rax rsi r12 r13 r14 ecx zmm0
..B1.28:                        # Preds ..B1.26 ..B1.24 ..B1.63
                                # Execution count [1.60e+01]
        lea       1(%rax), %rcx                                 #79.5
        cmpq      %r12, %rcx                                    #79.5
        ja        ..B1.32       # Prob 50%                      #79.5
                                # LOE rax r12 r13 r14
..B1.29:                        # Preds ..B1.28
                                # Execution count [1.44e+01]
        movslq    %eax, %rcx                                    #79.5
        negq      %rax                                          #79.5
        addq      %r12, %rax                                    #79.5
        xorl      %esi, %esi                                    #79.5
        vmovdqu   .L_2il0floatpacket.14(%rip), %ymm1            #79.5
        vmovdqu   .L_2il0floatpacket.13(%rip), %ymm3            #79.5
        vmovups   .L_2il0floatpacket.12(%rip), %zmm4            #79.5
        vpbroadcastq %rax, %zmm0                                #79.5
        lea       (%r14,%rcx,8), %rbx                           #79.5
        xorl      %ecx, %ecx                                    #79.5
                                # LOE rax rcx rbx r12 r13 r14 esi ymm1 ymm3 zmm0 zmm4
..B1.30:                        # Preds ..B1.30 ..B1.29
                                # Execution count [8.00e+01]
        vpmovsxdq %ymm1, %zmm2                                  #79.5
        addl      $8, %esi                                      #79.5
        vpaddd    %ymm3, %ymm1, %ymm1                           #79.5
        vpcmpgtq  %zmm2, %zmm0, %k1                             #79.5
        vmovupd   %zmm4, (%rbx,%rcx,8){%k1}                     #79.5
        addq      $8, %rcx                                      #79.5
        cmpq      %rax, %rsi                                    #79.5
        jb        ..B1.30       # Prob 82%                      #79.5
                                # LOE rax rcx rbx r12 r13 r14 esi ymm1 ymm3 zmm0 zmm4
..B1.32:                        # Preds ..B1.30 ..B1.14 ..B1.23 ..B1.28
                                # Execution count [1.60e+01]
        vzeroupper                                              #79.5
        lea       2096(%rsp), %rdi                              #79.5
        movl      $1, %ebx                                      #79.5
        lea       2104(%rsp), %rsi                              #79.5
..___tag_value_main.41:
#       timing(double *, double *)
        call      timing                                        #79.5
..___tag_value_main.42:
                                # LOE r12 r13 r14 ebx
..B1.33:                        # Preds ..B1.32
                                # Execution count [1.44e+01]
        xorl      %r15d, %r15d                                  #79.5
        vxorpd    %xmm0, %xmm0, %xmm0                           #79.5
                                # LOE r12 r13 r14 ebx r15d xmm0
..B1.34:                        # Preds ..B1.33 ..B1.41 ..B1.47
                                # Execution count [4.44e+02]
        vcomisd   (%r14), %xmm0                                 #79.5
        jbe       ..B1.36       # Prob 78%                      #79.5
                                # LOE r12 r13 r14 ebx r15d xmm0
..B1.35:                        # Preds ..B1.34
                                # Execution count [9.78e+01]
        movq      %r14, %rdi                                    #79.5
        vzeroupper                                              #79.5
..___tag_value_main.43:
#       dummy(double *)
        call      dummy                                         #79.5
..___tag_value_main.44:
                                # LOE r12 r13 r14 ebx r15d
..B1.87:                        # Preds ..B1.35
                                # Execution count [9.78e+01]
        vxorpd    %xmm0, %xmm0, %xmm0                           #
                                # LOE r12 r13 r14 ebx r15d xmm0
..B1.36:                        # Preds ..B1.34 ..B1.87
                                # Execution count [4.44e+02]
        testq     %r12, %r12                                    #79.5
        jle       ..B1.41       # Prob 50%                      #79.5
                                # LOE r12 r13 r14 ebx r15d xmm0
..B1.37:                        # Preds ..B1.36
                                # Execution count [4.00e+02]
        cmpq      $8, %r12                                      #79.5
        jl        ..B1.41       # Prob 10%                      #79.5
                                # LOE r12 r13 r14 ebx r15d xmm0
..B1.38:                        # Preds ..B1.37
                                # Execution count [4.00e+02]
        xorl      %eax, %eax                                    #79.5
                                # LOE rax r12 r13 r14 ebx r15d xmm0
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        # LLVM-MCA-BEGIN
..B1.39:                        # Preds ..B1.39 ..B1.38
                                # Execution count [2.22e+03]
        vmovups   (%r14,%rax,8), %zmm1                          #79.5
        vmovupd   %zmm1, (%r13,%rax,8)                          #79.5
        addq      $8, %rax                                      #79.5
        cmpq      %r12, %rax                                    #79.5
        jb        ..B1.39       # Prob 82%                      #79.5
        # LLVM-MCA-END
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
                                # LOE rax r12 r13 r14 ebx r15d xmm0
..B1.41:                        # Preds ..B1.39 ..B1.36 ..B1.37
                                # Execution count [4.44e+02]
        incl      %r15d                                         #79.5
        cmpl      %ebx, %r15d                                   #79.5
        jb        ..B1.34       # Prob 82%                      #79.5
                                # LOE r12 r13 r14 ebx r15d xmm0
..B1.43:                        # Preds ..B1.41 ..B1.46
                                # Execution count [8.89e+01]: Infreq
        vzeroupper                                              #79.5
        lea       2112(%rsp), %rdi                              #79.5
        lea       2104(%rsp), %rsi                              #79.5
..___tag_value_main.45:
#       timing(double *, double *)
        call      timing                                        #79.5
..___tag_value_main.46:
                                # LOE r12 r13 r14 ebx
..B1.44:                        # Preds ..B1.43
                                # Execution count [8.89e+01]: Infreq
        vmovsd    2112(%rsp), %xmm16                            #79.5
        addl      %ebx, %ebx                                    #79.5
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm0             #79.5
        vsubsd    2096(%rsp), %xmm16, %xmm1                     #79.5
        vcomisd   %xmm1, %xmm0                                  #79.5
        jbe       ..B1.48       # Prob 18%                      #79.5
                                # LOE r12 r13 r14 ebx xmm1
..B1.45:                        # Preds ..B1.44
                                # Execution count [7.29e+01]: Infreq
        lea       2096(%rsp), %rdi                              #79.5
        lea       2104(%rsp), %rsi                              #79.5
..___tag_value_main.47:
#       timing(double *, double *)
        call      timing                                        #79.5
..___tag_value_main.48:
                                # LOE r12 r13 r14 ebx
..B1.46:                        # Preds ..B1.45
                                # Execution count [7.29e+01]: Infreq
        xorl      %r15d, %r15d                                  #79.5
        testl     %ebx, %ebx                                    #79.5
        jle       ..B1.43       # Prob 10%                      #79.5
                                # LOE r12 r13 r14 ebx r15d
..B1.47:                        # Preds ..B1.46
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
        jmp       ..B1.34       # Prob 100%                     #
                                # LOE r12 r13 r14 ebx r15d xmm0
..B1.48:                        # Preds ..B1.44
                                # Execution count [1.60e+01]: Infreq
        movl      %ebx, %eax                                    #79.5
        lea       1024(%rsp), %rdi                              #79.5
        shrl      $31, %eax                                     #79.5
        movl      $1024, %esi                                   #79.5
        addl      %eax, %ebx                                    #79.5
        vmovsd    %xmm1, 1064(%rdi)                             #[spill]
        sarl      $1, %ebx                                      #79.5
..___tag_value_main.50:
#       gethostname(char *, size_t)
        call      gethostname                                   #79.5
..___tag_value_main.51:
                                # LOE r12 r13 r14 ebx
..B1.49:                        # Preds ..B1.48
                                # Execution count [1.60e+01]: Infreq
        movl      $.L_2__STRING.0, %esi                         #79.5
        lea       1024(%rsp), %rdi                              #79.5
..___tag_value_main.52:
#       strcmp(const char *, const char *)
        call      strcmp                                        #79.5
..___tag_value_main.53:
                                # LOE r12 r13 r14 r15 eax ebx
..B1.78:                        # Preds ..B1.49
                                # Execution count [1.60e+01]: Infreq
        testl     %eax, %eax                                    #79.5
        je        ..B1.61       # Prob 9%                       #79.5
                                # LOE r12 r13 r14 r15 ebx
..B1.50:                        # Preds ..B1.78
                                # Execution count [1.44e+01]: Infreq
        movl      $.L_2__STRING.1, %esi                         #79.5
        lea       1024(%rsp), %rdi                              #79.5
..___tag_value_main.54:
#       strcmp(const char *, const char *)
        call      strcmp                                        #79.5
..___tag_value_main.55:
                                # LOE r12 r13 r14 r15 eax ebx
..B1.79:                        # Preds ..B1.50
                                # Execution count [1.44e+01]: Infreq
        testl     %eax, %eax                                    #79.5
        je        ..B1.59       # Prob 9%                       #79.5
                                # LOE r12 r13 r14 r15 ebx
..B1.51:                        # Preds ..B1.79
                                # Execution count [1.30e+01]: Infreq
        movl      $.L_2__STRING.2, %esi                         #79.5
        lea       1024(%rsp), %rdi                              #79.5
..___tag_value_main.56:
#       strcmp(const char *, const char *)
        call      strcmp                                        #79.5
..___tag_value_main.57:
                                # LOE r12 r13 r14 r15 eax ebx
..B1.80:                        # Preds ..B1.51
                                # Execution count [1.30e+01]: Infreq
        testl     %eax, %eax                                    #79.5
        jne       ..B1.54       # Prob 78%                      #79.5
                                # LOE r12 r13 r14 r15 ebx
..B1.52:                        # Preds ..B1.80
                                # Execution count [2.86e+00]: Infreq
        vmovsd    2048(%rsp), %xmm0                             #79.5[spill]
        vmovsd    2056(%rsp), %xmm1                             #79.5[spill]
..___tag_value_main.59:
#       pow(double, double)
        call      pow                                           #79.5
..___tag_value_main.60:
                                # LOE r12 r13 r14 ebx xmm0
..B1.53:                        # Preds ..B1.52
                                # Execution count [2.86e+00]: Infreq
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #79.5
        vcvttsd2si %xmm0, %r15                                  #79.5
                                # LOE r12 r13 r14 r15 ebx
..B1.54:                        # Preds ..B1.62 ..B1.60 ..B1.53 ..B1.80
                                # Execution count [1.60e+01]: Infreq
        movslq    %ebx, %rcx                                    #79.5
        vxorpd    %xmm13, %xmm13, %xmm13                        #79.5
        imulq     %r12, %rcx                                    #79.5
        vcvtsi2sdq %rcx, %xmm13, %xmm13                         #79.5
        vmovsd    .L_2il0floatpacket.15(%rip), %xmm5            #79.5
        vxorpd    %xmm8, %xmm8, %xmm8                           #79.5
        vmovsd    2088(%rsp), %xmm1                             #79.5[spill]
        vxorpd    %xmm16, %xmm16, %xmm16                        #79.5
        vdivsd    %xmm1, %xmm5, %xmm10                          #79.5
        vmulsd    .L_2il0floatpacket.10(%rip), %xmm13, %xmm14   #79.5
        vxorpd    %xmm12, %xmm12, %xmm12                        #79.5
        vcvtsi2sd 2064(%rsp), %xmm8, %xmm8                      #79.5[spill]
        vcvtsi2sdq %r15, %xmm16, %xmm16                         #79.5
        vdivsd    %xmm14, %xmm1, %xmm15                         #79.5
        vmulsd    .L_2il0floatpacket.9(%rip), %xmm8, %xmm6      #79.5
        movl      $.L_2__STRING.3, %edi                         #79.5
        vcvtsi2sd %ebx, %xmm12, %xmm12                          #79.5
        vmulsd    .L_2il0floatpacket.11(%rip), %xmm8, %xmm9     #79.5
        vmulsd    %xmm10, %xmm6, %xmm7                          #79.5
        vmulsd    .L_2il0floatpacket.8(%rip), %xmm8, %xmm0      #79.5
        vmulsd    %xmm10, %xmm9, %xmm11                         #79.5
        vmulsd    %xmm12, %xmm7, %xmm2                          #79.5
        vmulsd    %xmm16, %xmm15, %xmm3                         #79.5
        vmulsd    %xmm12, %xmm11, %xmm4                         #79.5
        movl      %ebx, %esi                                    #79.5
        movq      %r12, %rdx                                    #79.5
        movl      $6, %eax                                      #79.5
        vmovapd   %xmm2, %xmm5                                  #79.5
..___tag_value_main.64:
#       printf(const char *__restrict__, ...)
        call      printf                                        #79.5
..___tag_value_main.65:
                                # LOE r13 r14
..B1.55:                        # Preds ..B1.54
                                # Execution count [1.60e+01]: Infreq
        movq      %r14, %rdi                                    #79.5
..___tag_value_main.66:
#       free(void *)
        call      free                                          #79.5
..___tag_value_main.67:
                                # LOE r13
..B1.56:                        # Preds ..B1.55
                                # Execution count [1.60e+01]: Infreq
        movq      %r13, %rdi                                    #79.5
..___tag_value_main.68:
#       free(void *)
        call      free                                          #79.5
..___tag_value_main.69:
                                # LOE
..B1.57:                        # Preds ..B1.56
                                # Execution count [1.60e+01]: Infreq
        movb      2080(%rsp), %al                               #76.3[spill]
        incb      %al                                           #76.3
        incl      2072(%rsp)                                    #76.3[spill]
        movb      %al, 2080(%rsp)                               #76.3[spill]
        cmpb      $16, %al                                      #76.3
        jb        ..B1.11       # Prob 93%                      #76.3
                                # LOE
..B1.58:                        # Preds ..B1.57
                                # Execution count [1.00e+00]: Infreq
        xorl      %eax, %eax                                    #81.10
        addq      $2136, %rsp                                   #81.10
	.cfi_restore 3
        popq      %rbx                                          #81.10
	.cfi_restore 15
        popq      %r15                                          #81.10
	.cfi_restore 14
        popq      %r14                                          #81.10
	.cfi_restore 13
        popq      %r13                                          #81.10
	.cfi_restore 12
        popq      %r12                                          #81.10
        movq      %rbp, %rsp                                    #81.10
        popq      %rbp                                          #81.10
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #81.10
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.59:                        # Preds ..B1.79
                                # Execution count [1.43e+00]: Infreq
        vmovsd    2048(%rsp), %xmm0                             #79.5[spill]
        vmovsd    2056(%rsp), %xmm1                             #79.5[spill]
..___tag_value_main.88:
#       pow(double, double)
        call      pow                                           #79.5
..___tag_value_main.89:
                                # LOE r12 r13 r14 ebx xmm0
..B1.60:                        # Preds ..B1.59
                                # Execution count [1.43e+00]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #79.5
        vcvttsd2si %xmm0, %r15                                  #79.5
        jmp       ..B1.54       # Prob 100%                     #79.5
                                # LOE r12 r13 r14 r15 ebx
..B1.61:                        # Preds ..B1.78
                                # Execution count [1.58e+00]: Infreq
        vmovsd    2048(%rsp), %xmm0                             #79.5[spill]
        vmovsd    2056(%rsp), %xmm1                             #79.5[spill]
..___tag_value_main.92:
#       pow(double, double)
        call      pow                                           #79.5
..___tag_value_main.93:
                                # LOE r12 r13 r14 ebx xmm0
..B1.62:                        # Preds ..B1.61
                                # Execution count [1.58e+00]: Infreq
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm0, %xmm0      #79.5
        vcvttsd2si %xmm0, %r15                                  #79.5
        jmp       ..B1.54       # Prob 100%                     #79.5
                                # LOE r12 r13 r14 r15 ebx
..B1.63:                        # Preds ..B1.15
                                # Execution count [1.44e+00]: Infreq
        xorl      %eax, %eax                                    #79.5
        jmp       ..B1.28       # Prob 100%                     #79.5
                                # LOE rax r12 r13 r14
..B1.64:                        # Preds ..B1.72
                                # Execution count [8.91e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #72.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #72.3
        vmovsd    %xmm0, 2048(%rsp)                             #72.3[spill]
        vmovsd    %xmm1, 2056(%rsp)                             #72.3[spill]
..___tag_value_main.96:
#       pow(double, double)
        call      pow                                           #72.3
..___tag_value_main.97:
                                # LOE r12 r13 r14 r15 xmm0
..B1.65:                        # Preds ..B1.64
                                # Execution count [8.91e-02]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #72.3
        vcvttsd2si %xmm0, %rbx                                  #72.3
        jmp       ..B1.7        # Prob 100%                     #72.3
                                # LOE rbx r12 r13 r14 r15
..B1.66:                        # Preds ..B1.71
                                # Execution count [9.88e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #72.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #72.3
        vmovsd    %xmm0, 2048(%rsp)                             #72.3[spill]
        vmovsd    %xmm1, 2056(%rsp)                             #72.3[spill]
..___tag_value_main.100:
#       pow(double, double)
        call      pow                                           #72.3
..___tag_value_main.101:
                                # LOE r12 r13 r14 r15 xmm0
..B1.67:                        # Preds ..B1.66
                                # Execution count [9.88e-02]: Infreq
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm0, %xmm0      #72.3
        vcvttsd2si %xmm0, %rbx                                  #72.3
        jmp       ..B1.7        # Prob 100%                     #72.3
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
..___tag_value_getFreq.104:
..L105:
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
..___tag_value_getFreq.111:
#       strcmp(const char *, const char *)
        call      strcmp                                        #12.7
..___tag_value_getFreq.112:
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
..___tag_value_getFreq.113:
#       strcmp(const char *, const char *)
        call      strcmp                                        #16.7
..___tag_value_getFreq.114:
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
..___tag_value_getFreq.115:
#       strcmp(const char *, const char *)
        call      strcmp                                        #20.7
..___tag_value_getFreq.116:
                                # LOE rbp r12 r13 r14 r15 eax
..B2.15:                        # Preds ..B2.3
                                # Execution count [8.12e-01]
        testl     %eax, %eax                                    #20.38
        je        ..B2.5        # Prob 22%                      #20.38
                                # LOE rbp r12 r13 r14 r15
..B2.4:                         # Preds ..B2.15
                                # Execution count [6.33e-01]
        movl      $-1, %eax                                     #25.10
        popq      %rcx                                          #25.10
	.cfi_def_cfa_offset 24
	.cfi_restore 6
        popq      %rbp                                          #25.10
	.cfi_def_cfa_offset 16
	.cfi_restore 3
        popq      %rbx                                          #25.10
	.cfi_def_cfa_offset 8
        ret                                                     #25.10
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -16
	.cfi_offset 6, -24
                                # LOE
..B2.5:                         # Preds ..B2.15
                                # Execution count [1.79e-01]
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #21.26
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #21.26
..___tag_value_getFreq.125:
#       pow(double, double)
        call      pow                                           #21.26
..___tag_value_getFreq.126:
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
..___tag_value_getFreq.135:
#       pow(double, double)
        call      pow                                           #17.26
..___tag_value_getFreq.136:
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
..___tag_value_getFreq.145:
#       pow(double, double)
        call      pow                                           #13.26
..___tag_value_getFreq.146:
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
.L_2__routine_start_copy_2:
# -- Begin  copy
	.text
# mark_begin;
       .align    16,0x90
	.globl copy
# --- copy(long)
copy:
# parameter 1: %rdi
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_copy.153:
..L154:
                                                        #28.22
        pushq     %rbp                                          #28.22
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #28.22
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-64, %rsp                                    #28.22
        pushq     %r12                                          #28.22
        pushq     %r13                                          #28.22
        pushq     %r14                                          #28.22
        pushq     %r15                                          #28.22
        pushq     %rbx                                          #28.22
        subq      $1112, %rsp                                   #28.22
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
        movq      %rdi, %r14                                    #28.22
        movl      $64, %edi                                     #31.7
        lea       (,%r14,8), %rbx                               #31.30
        movq      %rbx, %rsi                                    #31.7
..___tag_value_copy.163:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #31.7
..___tag_value_copy.164:
                                # LOE rax rbx r14
..B3.57:                        # Preds ..B3.1
                                # Execution count [1.00e+00]
        movq      %rax, %r13                                    #31.7
                                # LOE rbx r13 r14
..B3.2:                         # Preds ..B3.57
                                # Execution count [1.00e+00]
        movl      $64, %edi                                     #32.7
        movq      %rbx, %rsi                                    #32.7
..___tag_value_copy.165:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #32.7
..___tag_value_copy.166:
                                # LOE rax r13 r14
..B3.58:                        # Preds ..B3.2
                                # Execution count [1.00e+00]
        movq      %rax, %r12                                    #32.7
                                # LOE r12 r13 r14
..B3.3:                         # Preds ..B3.58
                                # Execution count [1.00e+00]
        testq     %r14, %r14                                    #36.18
        jle       ..B3.21       # Prob 50%                      #36.18
                                # LOE r12 r13 r14
..B3.4:                         # Preds ..B3.3
                                # Execution count [9.00e-01]
        cmpq      $16, %r14                                     #36.3
        jl        ..B3.54       # Prob 10%                      #36.3
                                # LOE r12 r13 r14
..B3.5:                         # Preds ..B3.4
                                # Execution count [9.00e-01]
        movq      %r13, %rsi                                    #36.3
        andq      $63, %rsi                                     #36.3
        testq     $7, %rsi                                      #36.3
        je        ..B3.7        # Prob 50%                      #36.3
                                # LOE rsi r12 r13 r14
..B3.6:                         # Preds ..B3.5
                                # Execution count [4.50e-01]
        xorl      %esi, %esi                                    #36.3
        jmp       ..B3.9        # Prob 100%                     #36.3
                                # LOE rsi r12 r13 r14
..B3.7:                         # Preds ..B3.5
                                # Execution count [4.50e-01]
        testq     %rsi, %rsi                                    #36.3
        je        ..B3.9        # Prob 50%                      #36.3
                                # LOE rsi r12 r13 r14
..B3.8:                         # Preds ..B3.7
                                # Execution count [5.00e+00]
        negq      %rsi                                          #36.3
        addq      $64, %rsi                                     #36.3
        shrq      $3, %rsi                                      #36.3
        cmpq      %rsi, %r14                                    #36.3
        cmovl     %r14, %rsi                                    #36.3
                                # LOE rsi r12 r13 r14
..B3.9:                         # Preds ..B3.6 ..B3.8 ..B3.7
                                # Execution count [1.00e+00]
        movq      %r14, %rax                                    #36.3
        subq      %rsi, %rax                                    #36.3
        andq      $15, %rax                                     #36.3
        negq      %rax                                          #36.3
        addq      %r14, %rax                                    #36.3
        cmpq      $1, %rsi                                      #36.3
        jb        ..B3.13       # Prob 50%                      #36.3
                                # LOE rax rsi r12 r13 r14
..B3.10:                        # Preds ..B3.9
                                # Execution count [9.00e-01]
        vmovdqu   .L_2il0floatpacket.13(%rip), %ymm3            #36.3
        xorl      %ebx, %ebx                                    #36.3
        vmovdqu   .L_2il0floatpacket.14(%rip), %ymm2            #36.3
        vmovups   .L_2il0floatpacket.12(%rip), %zmm1            #37.12
        vpbroadcastq %rsi, %zmm0                                #36.3
        xorl      %ecx, %ecx                                    #36.3
                                # LOE rax rcx rsi r12 r13 r14 ebx ymm2 ymm3 zmm0 zmm1
..B3.11:                        # Preds ..B3.11 ..B3.10
                                # Execution count [5.00e+00]
        vpmovsxdq %ymm2, %zmm4                                  #36.3
        addl      $8, %ebx                                      #36.3
        vpaddd    %ymm3, %ymm2, %ymm2                           #36.3
        vpcmpgtq  %zmm4, %zmm0, %k1                             #36.3
        vmovupd   %zmm1, (%r13,%rcx,8){%k1}                     #37.5
        addq      $8, %rcx                                      #36.3
        cmpq      %rsi, %rbx                                    #36.3
        jb        ..B3.11       # Prob 82%                      #36.3
                                # LOE rax rcx rsi r12 r13 r14 ebx ymm2 ymm3 zmm0 zmm1
..B3.12:                        # Preds ..B3.11
                                # Execution count [9.00e-01]
        cmpq      %rsi, %r14                                    #36.3
        je        ..B3.21       # Prob 10%                      #36.3
                                # LOE rax rsi r12 r13 r14
..B3.13:                        # Preds ..B3.9 ..B3.12
                                # Execution count [5.00e+00]
        lea       16(%rsi), %rcx                                #36.3
        cmpq      %rcx, %rax                                    #36.3
        jl        ..B3.17       # Prob 50%                      #36.3
                                # LOE rax rsi r12 r13 r14
..B3.14:                        # Preds ..B3.13
                                # Execution count [9.00e-01]
        movslq    %esi, %rcx                                    #36.3
        movl      %esi, %ebx                                    #36.3
        vmovups   .L_2il0floatpacket.12(%rip), %zmm0            #37.12
                                # LOE rax rcx r12 r13 r14 ebx zmm0
..B3.15:                        # Preds ..B3.15 ..B3.14
                                # Execution count [5.00e+00]
        addl      $16, %ebx                                     #36.3
        vmovupd   %zmm0, (%r13,%rcx,8)                          #37.5
        vmovupd   %zmm0, 64(%r13,%rcx,8)                        #37.5
        addq      $16, %rcx                                     #36.3
        cmpq      %rax, %rbx                                    #36.3
        jb        ..B3.15       # Prob 82%                      #36.3
                                # LOE rax rcx r12 r13 r14 ebx zmm0
..B3.17:                        # Preds ..B3.15 ..B3.13 ..B3.54
                                # Execution count [1.00e+00]
        lea       1(%rax), %rcx                                 #36.3
        cmpq      %r14, %rcx                                    #36.3
        ja        ..B3.21       # Prob 50%                      #36.3
                                # LOE rax r12 r13 r14
..B3.18:                        # Preds ..B3.17
                                # Execution count [9.00e-01]
        movslq    %eax, %rcx                                    #37.5
        negq      %rax                                          #36.3
        addq      %r14, %rax                                    #36.3
        xorl      %esi, %esi                                    #36.3
        vmovdqu   .L_2il0floatpacket.13(%rip), %ymm3            #36.3
        vmovdqu   .L_2il0floatpacket.14(%rip), %ymm2            #36.3
        vmovups   .L_2il0floatpacket.12(%rip), %zmm1            #37.12
        vpbroadcastq %rax, %zmm0                                #36.3
        lea       (%r13,%rcx,8), %rbx                           #37.5
        xorl      %ecx, %ecx                                    #36.3
                                # LOE rax rcx rbx r12 r13 r14 esi ymm2 ymm3 zmm0 zmm1
..B3.19:                        # Preds ..B3.19 ..B3.18
                                # Execution count [5.00e+00]
        vpmovsxdq %ymm2, %zmm4                                  #36.3
        addl      $8, %esi                                      #36.3
        vpaddd    %ymm3, %ymm2, %ymm2                           #36.3
        vpcmpgtq  %zmm4, %zmm0, %k1                             #36.3
        vmovupd   %zmm1, (%rbx,%rcx,8){%k1}                     #37.5
        addq      $8, %rcx                                      #36.3
        cmpq      %rax, %rsi                                    #36.3
        jb        ..B3.19       # Prob 82%                      #36.3
                                # LOE rax rcx rbx r12 r13 r14 esi ymm2 ymm3 zmm0 zmm1
..B3.21:                        # Preds ..B3.3 ..B3.19 ..B3.12 ..B3.17
                                # Execution count [1.00e+00]
        vzeroupper                                              #43.5
        lea       1032(%rsp), %rdi                              #43.5
        movl      $1, %ebx                                      #41.14
        lea       1040(%rsp), %rsi                              #43.5
..___tag_value_copy.167:
#       timing(double *, double *)
        call      timing                                        #43.5
..___tag_value_copy.168:
                                # LOE r12 r13 r14 ebx
..B3.22:                        # Preds ..B3.21
                                # Execution count [9.00e-01]
        movq      %r14, %rax                                    #49.7
        xorl      %r15d, %r15d                                  #44.5
        andq      $-8, %rax                                     #49.7
        vxorpd    %xmm0, %xmm0, %xmm0                           #45.17
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm2             #42.30
        vmovdqu32 .L_2il0floatpacket.16(%rip), %zmm1            #49.7
        movq      %rax, (%rsp)                                  #49.7[spill]
                                # LOE r12 r13 r14 ebx r15d xmm0
..B3.23:                        # Preds ..B3.22 ..B3.32 ..B3.38
                                # Execution count [2.78e+01]
        vcomisd   (%r13), %xmm0                                 #45.17
        jbe       ..B3.25       # Prob 78%                      #45.17
                                # LOE r12 r13 r14 ebx r15d xmm0
..B3.24:                        # Preds ..B3.23
                                # Execution count [6.11e+00]
        movq      %r13, %rdi                                    #45.20
        vzeroupper                                              #45.20
..___tag_value_copy.170:
#       dummy(double *)
        call      dummy                                         #45.20
..___tag_value_copy.171:
                                # LOE r12 r13 r14 ebx r15d
..B3.67:                        # Preds ..B3.24
                                # Execution count [6.11e+00]
        vxorpd    %xmm0, %xmm0, %xmm0                           #
                                # LOE r12 r13 r14 ebx r15d xmm0
..B3.25:                        # Preds ..B3.23 ..B3.67
                                # Execution count [2.78e+01]
        testq     %r14, %r14                                    #49.35
        jle       ..B3.32       # Prob 50%                      #49.35
                                # LOE r12 r13 r14 ebx r15d xmm0
..B3.26:                        # Preds ..B3.25
                                # Execution count [2.50e+01]
        cmpq      $8, %r14                                      #49.7
        jl        ..B3.53       # Prob 10%                      #49.7
                                # LOE r12 r13 r14 ebx r15d xmm0
..B3.27:                        # Preds ..B3.26
                                # Execution count [2.50e+01]
        movq      (%rsp), %rcx                                  #49.7[spill]
        xorl      %eax, %eax                                    #49.7
        movq      %rcx, %r8                                     #49.7
                                # LOE rax rcx r8 r12 r13 r14 ebx r15d xmm0
..B3.28:                        # Preds ..B3.28 ..B3.27
                                # Execution count [1.39e+02]
        vmovups   (%r13,%rax,8), %zmm1                          #50.16
        vmovupd   %zmm1, (%r12,%rax,8)                          #50.9
        addq      $8, %rax                                      #49.7
        cmpq      %r8, %rax                                     #49.7
        jb        ..B3.28       # Prob 82%                      #49.7
                                # LOE rax rcx r8 r12 r13 r14 ebx r15d xmm0
..B3.30:                        # Preds ..B3.28 ..B3.53
                                # Execution count [2.78e+01]
        lea       1(%rcx), %rax                                 #49.7
        cmpq      %r14, %rax                                    #49.7
        ja        ..B3.32       # Prob 50%                      #49.7
                                # LOE rcx r12 r13 r14 ebx r15d xmm0
..B3.31:                        # Preds ..B3.30
                                # Execution count [1.39e+02]
        movq      %r14, %rax                                    #49.7
        subq      %rcx, %rax                                    #49.7
        vpbroadcastq %rax, %zmm1                                #49.7
        vmovups   (%r13,%rcx,8), %zmm2                          #50.16
        vpcmpgtq  .L_2il0floatpacket.16(%rip), %zmm1, %k1       #49.7
        vmovupd   %zmm2, (%r12,%rcx,8){%k1}                     #50.9
                                # LOE r12 r13 r14 ebx r15d xmm0
..B3.32:                        # Preds ..B3.25 ..B3.30 ..B3.31
                                # Execution count [2.78e+01]
        incl      %r15d                                         #44.5
        cmpl      %ebx, %r15d                                   #44.5
        jb        ..B3.23       # Prob 82%                      #44.5
                                # LOE r12 r13 r14 ebx r15d xmm0
..B3.34:                        # Preds ..B3.32 ..B3.37
                                # Execution count [5.56e+00]: Infreq
        vzeroupper                                              #53.5
        lea       1048(%rsp), %rdi                              #53.5
        lea       1040(%rsp), %rsi                              #53.5
..___tag_value_copy.173:
#       timing(double *, double *)
        call      timing                                        #53.5
..___tag_value_copy.174:
                                # LOE r12 r13 r14 ebx
..B3.35:                        # Preds ..B3.34
                                # Execution count [5.56e+00]: Infreq
        vmovsd    1048(%rsp), %xmm16                            #54.15
        addl      %ebx, %ebx                                    #42.34
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm0             #42.30
        vsubsd    1032(%rsp), %xmm16, %xmm1                     #54.19
        vcomisd   %xmm1, %xmm0                                  #42.30
        jbe       ..B3.39       # Prob 18%                      #42.30
                                # LOE r12 r13 r14 ebx xmm1
..B3.36:                        # Preds ..B3.35
                                # Execution count [4.56e+00]: Infreq
        lea       1032(%rsp), %rdi                              #43.5
        lea       1040(%rsp), %rsi                              #43.5
..___tag_value_copy.175:
#       timing(double *, double *)
        call      timing                                        #43.5
..___tag_value_copy.176:
                                # LOE r12 r13 r14 ebx
..B3.37:                        # Preds ..B3.36
                                # Execution count [4.56e+00]: Infreq
        xorl      %r15d, %r15d                                  #44.5
        testl     %ebx, %ebx                                    #44.20
        jle       ..B3.34       # Prob 10%                      #44.20
                                # LOE r12 r13 r14 ebx r15d
..B3.38:                        # Preds ..B3.37
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
        jmp       ..B3.23       # Prob 100%                     #
                                # LOE r12 r13 r14 ebx r15d xmm0
..B3.39:                        # Preds ..B3.35
                                # Execution count [1.00e+00]: Infreq
        movl      %ebx, %eax                                    #56.3
        lea       (%rsp), %rdi                                  #58.3
        shrl      $31, %eax                                     #56.3
        movl      $1024, %esi                                   #58.3
        addl      %eax, %ebx                                    #56.3
        vmovsd    %xmm1, 1024(%rdi)                             #[spill]
        sarl      $1, %ebx                                      #56.3
..___tag_value_copy.178:
#       gethostname(char *, size_t)
        call      gethostname                                   #58.3
..___tag_value_copy.179:
                                # LOE r12 r13 r14 ebx
..B3.40:                        # Preds ..B3.39
                                # Execution count [1.00e+00]: Infreq
        movl      $.L_2__STRING.0, %esi                         #60.12
        lea       (%rsp), %rdi                                  #60.12
..___tag_value_copy.180:
#       strcmp(const char *, const char *)
        call      strcmp                                        #60.12
..___tag_value_copy.181:
                                # LOE r12 r13 r14 r15 eax ebx
..B3.59:                        # Preds ..B3.40
                                # Execution count [1.00e+00]: Infreq
        testl     %eax, %eax                                    #60.12
        je        ..B3.51       # Prob 9%                       #60.12
                                # LOE r12 r13 r14 r15 ebx
..B3.41:                        # Preds ..B3.59
                                # Execution count [9.01e-01]: Infreq
        movl      $.L_2__STRING.1, %esi                         #60.12
        lea       (%rsp), %rdi                                  #60.12
..___tag_value_copy.182:
#       strcmp(const char *, const char *)
        call      strcmp                                        #60.12
..___tag_value_copy.183:
                                # LOE r12 r13 r14 r15 eax ebx
..B3.60:                        # Preds ..B3.41
                                # Execution count [9.01e-01]: Infreq
        testl     %eax, %eax                                    #60.12
        je        ..B3.49       # Prob 9%                       #60.12
                                # LOE r12 r13 r14 r15 ebx
..B3.42:                        # Preds ..B3.60
                                # Execution count [8.12e-01]: Infreq
        movl      $.L_2__STRING.2, %esi                         #60.12
        lea       (%rsp), %rdi                                  #60.12
..___tag_value_copy.184:
#       strcmp(const char *, const char *)
        call      strcmp                                        #60.12
..___tag_value_copy.185:
                                # LOE r12 r13 r14 r15 eax ebx
..B3.61:                        # Preds ..B3.42
                                # Execution count [8.12e-01]: Infreq
        testl     %eax, %eax                                    #60.12
        jne       ..B3.45       # Prob 78%                      #60.12
                                # LOE r12 r13 r14 r15 ebx
..B3.43:                        # Preds ..B3.61
                                # Execution count [1.79e-01]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #60.12
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #60.12
..___tag_value_copy.186:
#       pow(double, double)
        call      pow                                           #60.12
..___tag_value_copy.187:
                                # LOE r12 r13 r14 ebx xmm0
..B3.44:                        # Preds ..B3.43
                                # Execution count [1.79e-01]: Infreq
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #60.12
        vcvttsd2si %xmm0, %r15                                  #60.12
                                # LOE r12 r13 r14 r15 ebx
..B3.45:                        # Preds ..B3.52 ..B3.50 ..B3.44 ..B3.61
                                # Execution count [1.00e+00]: Infreq
        movslq    %ebx, %rcx                                    #61.3
        vxorpd    %xmm8, %xmm8, %xmm8                           #61.3
        imulq     %r14, %rcx                                    #61.3
        vcvtsi2sdq %rcx, %xmm8, %xmm8                           #61.3
        vmovsd    .L_2il0floatpacket.15(%rip), %xmm5            #61.3
        vxorpd    %xmm12, %xmm12, %xmm12                        #61.85
        vmovsd    1024(%rsp), %xmm1                             #61.300[spill]
        vxorpd    %xmm16, %xmm16, %xmm16                        #61.147
        vdivsd    %xmm1, %xmm5, %xmm14                          #61.300
        vmulsd    .L_2il0floatpacket.10(%rip), %xmm8, %xmm9     #61.3
        vxorpd    %xmm11, %xmm11, %xmm11                        #61.3
        vcvtsi2sdq %r14, %xmm12, %xmm12                         #61.85
        vcvtsi2sd %ebx, %xmm16, %xmm16                          #61.147
        vdivsd    %xmm9, %xmm1, %xmm10                          #61.3
        vmulsd    .L_2il0floatpacket.9(%rip), %xmm12, %xmm6     #61.300
        movl      $.L_2__STRING.3, %edi                         #61.3
        vcvtsi2sdq %r15, %xmm11, %xmm11                         #61.3
        vmulsd    .L_2il0floatpacket.11(%rip), %xmm12, %xmm13   #61.3
        vmulsd    %xmm14, %xmm6, %xmm7                          #61.154
        vmulsd    .L_2il0floatpacket.8(%rip), %xmm12, %xmm0     #61.3
        vmulsd    %xmm14, %xmm13, %xmm15                        #61.3
        vmulsd    %xmm16, %xmm7, %xmm2                          #61.315
        vmulsd    %xmm11, %xmm10, %xmm3                         #61.3
        vmulsd    %xmm16, %xmm15, %xmm4                         #61.3
        movl      %ebx, %esi                                    #61.3
        movq      %r14, %rdx                                    #61.3
        movl      $6, %eax                                      #61.3
        vmovapd   %xmm2, %xmm5                                  #61.3
..___tag_value_copy.189:
#       printf(const char *__restrict__, ...)
        call      printf                                        #61.3
..___tag_value_copy.190:
                                # LOE r12 r13
..B3.46:                        # Preds ..B3.45
                                # Execution count [1.00e+00]: Infreq
        movq      %r13, %rdi                                    #63.3
..___tag_value_copy.191:
#       free(void *)
        call      free                                          #63.3
..___tag_value_copy.192:
                                # LOE r12
..B3.47:                        # Preds ..B3.46
                                # Execution count [1.00e+00]: Infreq
        movq      %r12, %rdi                                    #63.12
..___tag_value_copy.193:
#       free(void *)
        call      free                                          #63.12
..___tag_value_copy.194:
                                # LOE
..B3.48:                        # Preds ..B3.47
                                # Execution count [1.00e+00]: Infreq
        addq      $1112, %rsp                                   #64.1
	.cfi_restore 3
        popq      %rbx                                          #64.1
	.cfi_restore 15
        popq      %r15                                          #64.1
	.cfi_restore 14
        popq      %r14                                          #64.1
	.cfi_restore 13
        popq      %r13                                          #64.1
	.cfi_restore 12
        popq      %r12                                          #64.1
        movq      %rbp, %rsp                                    #64.1
        popq      %rbp                                          #64.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #64.1
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B3.49:                        # Preds ..B3.60
                                # Execution count [8.91e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #60.12
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #60.12
..___tag_value_copy.209:
#       pow(double, double)
        call      pow                                           #60.12
..___tag_value_copy.210:
                                # LOE r12 r13 r14 ebx xmm0
..B3.50:                        # Preds ..B3.49
                                # Execution count [8.91e-02]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #60.12
        vcvttsd2si %xmm0, %r15                                  #60.12
        jmp       ..B3.45       # Prob 100%                     #60.12
                                # LOE r12 r13 r14 r15 ebx
..B3.51:                        # Preds ..B3.59
                                # Execution count [9.88e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #60.12
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #60.12
..___tag_value_copy.211:
#       pow(double, double)
        call      pow                                           #60.12
..___tag_value_copy.212:
                                # LOE r12 r13 r14 ebx xmm0
..B3.52:                        # Preds ..B3.51
                                # Execution count [9.88e-02]: Infreq
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm0, %xmm0      #60.12
        vcvttsd2si %xmm0, %r15                                  #60.12
        jmp       ..B3.45       # Prob 100%                     #60.12
                                # LOE r12 r13 r14 r15 ebx
..B3.53:                        # Preds ..B3.26
                                # Execution count [2.50e+00]: Infreq
        xorl      %ecx, %ecx                                    #49.7
        jmp       ..B3.30       # Prob 100%                     #49.7
                                # LOE rcx r12 r13 r14 ebx r15d xmm0
..B3.54:                        # Preds ..B3.4
                                # Execution count [9.00e-02]: Infreq
        xorl      %eax, %eax                                    #36.3
        jmp       ..B3.17       # Prob 100%                     #36.3
        .align    16,0x90
                                # LOE rax r12 r13 r14
	.cfi_endproc
# mark_end;
	.type	copy,@function
	.size	copy,.-copy
..LNcopy.2:
	.data
# -- End  copy
	.section .rodata, "a"
	.align 64
	.align 64
.L_2il0floatpacket.12:
	.long	0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a
	.type	.L_2il0floatpacket.12,@object
	.size	.L_2il0floatpacket.12,64
	.align 64
.L_2il0floatpacket.16:
	.long	0x00000000,0x00000000,0x00000001,0x00000000,0x00000002,0x00000000,0x00000003,0x00000000,0x00000004,0x00000000,0x00000005,0x00000000,0x00000006,0x00000000,0x00000007,0x00000000
	.type	.L_2il0floatpacket.16,@object
	.size	.L_2il0floatpacket.16,64
	.align 32
.L_2il0floatpacket.13:
	.long	0x00000008,0x00000008,0x00000008,0x00000008,0x00000008,0x00000008,0x00000008,0x00000008
	.type	.L_2il0floatpacket.13,@object
	.size	.L_2il0floatpacket.13,32
	.align 32
.L_2il0floatpacket.14:
	.long	0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007
	.type	.L_2il0floatpacket.14,@object
	.size	.L_2il0floatpacket.14,32
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
	.long	0xd2f1a9fc,0x3f80624d
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
.L_2il0floatpacket.15:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.15,@object
	.size	.L_2il0floatpacket.15,8
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
	.long	1498435395
	.long	1767596576
	.long	540876893
	.long	1567185761
	.long	540549164
	.long	1702132066
	.long	745826607
	.long	1176514592
	.long	795897708
	.long	685161
	.type	.L_2__STRING.4,@object
	.size	.L_2__STRING.4,40
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
