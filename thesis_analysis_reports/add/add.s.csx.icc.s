# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.5.281 Build 20190815";
# mark_description "-qopenmp-simd -fno-alias -unroll -fno-builtin -xCORE-AVX512 -qopt-zmm-usage=high -Ofast -S -use-msasm -o add";
# mark_description ".s.csx.icc.s";
	.file "add.c"
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
                                                          #67.1
        pushq     %rbp                                          #67.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #67.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-128, %rsp                                   #67.1
        pushq     %r12                                          #67.1
        pushq     %r13                                          #67.1
        pushq     %r14                                          #67.1
        pushq     %r15                                          #67.1
        pushq     %rbx                                          #67.1
        subq      $2136, %rsp                                   #67.1
        movq      $0x64199d9ffe, %rsi                           #67.1
        movl      $3, %edi                                      #67.1
        call      __intel_new_feature_proc_init                 #67.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE r12 r13 r14 r15
..B1.72:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        vstmxcsr  1024(%rsp)                                    #67.1
        movl      $1024, %esi                                   #69.3
        lea       (%rsp), %rdi                                  #69.3
        orl       $32832, 1024(%rdi)                            #67.1
        vldmxcsr  1024(%rdi)                                    #67.1
..___tag_value_main.11:
#       gethostname(char *, size_t)
        call      gethostname                                   #69.3
..___tag_value_main.12:
                                # LOE r12 r13 r14 r15
..B1.2:                         # Preds ..B1.72
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.0, %esi                         #71.3
        lea       (%rsp), %rdi                                  #71.3
..___tag_value_main.13:
#       strcmp(const char *, const char *)
        call      strcmp                                        #71.3
..___tag_value_main.14:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.73:                        # Preds ..B1.2
                                # Execution count [1.00e+00]
        testl     %eax, %eax                                    #71.3
        je        ..B1.68       # Prob 9%                       #71.3
                                # LOE rbx r12 r13 r14 r15
..B1.3:                         # Preds ..B1.73
                                # Execution count [9.01e-01]
        movl      $.L_2__STRING.1, %esi                         #71.3
        lea       (%rsp), %rdi                                  #71.3
..___tag_value_main.15:
#       strcmp(const char *, const char *)
        call      strcmp                                        #71.3
..___tag_value_main.16:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.74:                        # Preds ..B1.3
                                # Execution count [9.01e-01]
        testl     %eax, %eax                                    #71.3
        je        ..B1.66       # Prob 9%                       #71.3
                                # LOE rbx r12 r13 r14 r15
..B1.4:                         # Preds ..B1.74
                                # Execution count [8.12e-01]
        movl      $.L_2__STRING.2, %esi                         #71.3
        lea       (%rsp), %rdi                                  #71.3
..___tag_value_main.17:
#       strcmp(const char *, const char *)
        call      strcmp                                        #71.3
..___tag_value_main.18:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.75:                        # Preds ..B1.4
                                # Execution count [8.12e-01]
        testl     %eax, %eax                                    #71.3
        je        ..B1.5        # Prob 22%                      #71.3
                                # LOE rbx r12 r13 r14 r15
..B1.89:                        # Preds ..B1.75
                                # Execution count [6.33e-01]
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #71.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #71.3
        vmovsd    %xmm0, 2048(%rsp)                             #71.3[spill]
        vmovsd    %xmm1, 2056(%rsp)                             #71.3[spill]
        jmp       ..B1.7        # Prob 100%                     #71.3
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.75
                                # Execution count [1.79e-01]
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #71.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #71.3
        vmovsd    %xmm0, 2048(%rsp)                             #71.3[spill]
        vmovsd    %xmm1, 2056(%rsp)                             #71.3[spill]
..___tag_value_main.22:
#       pow(double, double)
        call      pow                                           #71.3
..___tag_value_main.23:
                                # LOE r12 r13 r14 r15 xmm0
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.79e-01]
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #71.3
        vcvttsd2si %xmm0, %rbx                                  #71.3
                                # LOE rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.69 ..B1.67 ..B1.6 ..B1.89
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.4, %edi                         #72.3
        xorl      %eax, %eax                                    #72.3
..___tag_value_main.25:
#       printf(const char *__restrict__, ...)
        call      printf                                        #72.3
..___tag_value_main.26:
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
                                # Execution count [1.00e+00]
        vxorpd    %xmm0, %xmm0, %xmm0                           #73.3
        lea       (%rsp), %rsi                                  #73.3
        vcvtsi2sdq %rbx, %xmm0, %xmm0                           #73.3
        movl      $.L_2__STRING.5, %edi                         #73.3
        movl      $1, %eax                                      #73.3
        vmulsd    .L_2il0floatpacket.4(%rip), %xmm0, %xmm0      #73.3
..___tag_value_main.27:
#       printf(const char *__restrict__, ...)
        call      printf                                        #73.3
..___tag_value_main.28:
                                # LOE r12 r13 r14 r15
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.6, %edi                         #74.3
        xorl      %eax, %eax                                    #74.3
..___tag_value_main.29:
#       printf(const char *__restrict__, ...)
        call      printf                                        #74.3
..___tag_value_main.30:
                                # LOE r12 r13 r14 r15
..B1.10:                        # Preds ..B1.9
                                # Execution count [1.00e+00]
        xorb      %dl, %dl                                      #75.3
        movl      $20, %eax                                     #75.3
        vmovsd    .L_2il0floatpacket.5(%rip), %xmm13            #78.5
        vmovsd    .L_2il0floatpacket.3(%rip), %xmm12            #78.5
        vxorpd    %xmm11, %xmm11, %xmm11                        #78.5
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm10            #78.5
        vmovsd    .L_2il0floatpacket.8(%rip), %xmm9             #78.5
        vmovsd    .L_2il0floatpacket.9(%rip), %xmm8             #78.5
        vmovsd    .L_2il0floatpacket.16(%rip), %xmm7            #78.5
        vmovsd    .L_2il0floatpacket.10(%rip), %xmm6            #78.5
        vmovsd    .L_2il0floatpacket.11(%rip), %xmm5            #78.5
        vmovsd    .L_2il0floatpacket.2(%rip), %xmm4             #78.5
        vmovups   .L_2il0floatpacket.12(%rip), %zmm3            #78.5
        vmovups   .L_2il0floatpacket.13(%rip), %zmm2            #78.5
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm0            #78.5
        movl      %eax, 2072(%rsp)                              #75.3[spill]
        movb      %dl, 2080(%rsp)                               #75.3[spill]
                                # LOE
..B1.11:                        # Preds ..B1.59 ..B1.10
                                # Execution count [1.60e+01]
        vxorpd    %xmm1, %xmm1, %xmm1                           #76.21
        vcvtsi2sd 2072(%rsp), %xmm1, %xmm1                      #76.21[spill]
        vzeroupper                                              #76.21
        vmovsd    .L_2il0floatpacket.6(%rip), %xmm0             #76.21
..___tag_value_main.34:
#       pow(double, double)
        call      pow                                           #76.21
..___tag_value_main.35:
                                # LOE xmm0
..B1.12:                        # Preds ..B1.11
                                # Execution count [1.60e+01]
        vcvttsd2si %xmm0, %eax                                  #76.21
        movl      %eax, %r12d                                   #77.18
        movl      $64, %edi                                     #78.5
        sarl      $5, %r12d                                     #77.18
        shrl      $26, %r12d                                    #77.18
        addl      %eax, %r12d                                   #77.18
        sarl      $6, %r12d                                     #77.18
        movl      %r12d, %esi                                   #77.22
        shll      $6, %esi                                      #77.22
        movslq    %esi, %rbx                                    #78.5
        shlq      $3, %rbx                                      #78.5
        movl      %esi, 2064(%rsp)                              #77.22[spill]
        movq      %rbx, %rsi                                    #78.5
..___tag_value_main.37:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #78.5
..___tag_value_main.38:
                                # LOE rax rbx r12d
..B1.78:                        # Preds ..B1.12
                                # Execution count [1.60e+01]
        movq      %rax, %r14                                    #78.5
                                # LOE rbx r14 r12d
..B1.13:                        # Preds ..B1.78
                                # Execution count [1.60e+01]
        movl      $64, %edi                                     #78.5
        movq      %rbx, %rsi                                    #78.5
..___tag_value_main.39:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #78.5
..___tag_value_main.40:
                                # LOE rax rbx r14 r12d
..B1.79:                        # Preds ..B1.13
                                # Execution count [1.60e+01]
        movq      %rax, 2120(%rsp)                              #78.5[spill]
                                # LOE rbx r14 r12d
..B1.14:                        # Preds ..B1.79
                                # Execution count [1.60e+01]
        movl      $64, %edi                                     #78.5
        movq      %rbx, %rsi                                    #78.5
..___tag_value_main.42:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #78.5
..___tag_value_main.43:
                                # LOE rax r14 r12d
..B1.80:                        # Preds ..B1.14
                                # Execution count [1.60e+01]
        movq      %rax, %r13                                    #78.5
                                # LOE r13 r14 r12d
..B1.15:                        # Preds ..B1.80
                                # Execution count [1.60e+01]
        movslq    %r12d, %r12                                   #78.9
        shlq      $6, %r12                                      #77.22
        testq     %r12, %r12                                    #78.5
        jle       ..B1.33       # Prob 50%                      #78.5
                                # LOE r12 r13 r14
..B1.16:                        # Preds ..B1.15
                                # Execution count [1.44e+01]
        cmpq      $16, %r12                                     #78.5
        jl        ..B1.65       # Prob 10%                      #78.5
                                # LOE r12 r13 r14
..B1.17:                        # Preds ..B1.16
                                # Execution count [1.44e+01]
        movq      %r13, %rsi                                    #78.5
        andq      $63, %rsi                                     #78.5
        testq     $7, %rsi                                      #78.5
        je        ..B1.19       # Prob 50%                      #78.5
                                # LOE rsi r12 r13 r14
..B1.18:                        # Preds ..B1.17
                                # Execution count [7.20e+00]
        xorl      %esi, %esi                                    #78.5
        jmp       ..B1.21       # Prob 100%                     #78.5
                                # LOE rsi r12 r13 r14
..B1.19:                        # Preds ..B1.17
                                # Execution count [7.20e+00]
        testq     %rsi, %rsi                                    #78.5
        je        ..B1.21       # Prob 50%                      #78.5
                                # LOE rsi r12 r13 r14
..B1.20:                        # Preds ..B1.19
                                # Execution count [8.00e+01]
        negq      %rsi                                          #78.5
        addq      $64, %rsi                                     #78.5
        shrq      $3, %rsi                                      #78.5
        cmpq      %rsi, %r12                                    #78.5
        cmovl     %r12, %rsi                                    #78.5
                                # LOE rsi r12 r13 r14
..B1.21:                        # Preds ..B1.18 ..B1.20 ..B1.19
                                # Execution count [1.60e+01]
        movq      %r12, %rax                                    #78.5
        subq      %rsi, %rax                                    #78.5
        andq      $15, %rax                                     #78.5
        negq      %rax                                          #78.5
        addq      %r12, %rax                                    #78.5
        cmpq      $1, %rsi                                      #78.5
        jb        ..B1.25       # Prob 50%                      #78.5
                                # LOE rax rsi r12 r13 r14
..B1.22:                        # Preds ..B1.21
                                # Execution count [1.44e+01]
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm1            #78.5
        xorl      %ebx, %ebx                                    #78.5
        vmovdqu   .L_2il0floatpacket.14(%rip), %ymm3            #78.5
        vmovups   .L_2il0floatpacket.13(%rip), %zmm4            #78.5
        vmovups   .L_2il0floatpacket.12(%rip), %zmm5            #78.5
        vpbroadcastq %rsi, %zmm0                                #78.5
        movq      2120(%rsp), %r8                               #78.5[spill]
        xorl      %ecx, %ecx                                    #78.5
                                # LOE rax rcx rsi r8 r12 r13 r14 ebx ymm1 ymm3 zmm0 zmm4 zmm5
..B1.23:                        # Preds ..B1.23 ..B1.22
                                # Execution count [8.00e+01]
        vpmovsxdq %ymm1, %zmm2                                  #78.5
        addl      $8, %ebx                                      #78.5
        vpaddd    %ymm3, %ymm1, %ymm1                           #78.5
        vpcmpgtq  %zmm2, %zmm0, %k1                             #78.5
        vmovupd   %zmm5, (%r8,%rcx,8){%k1}                      #78.5
        vmovupd   %zmm4, (%r13,%rcx,8){%k1}                     #78.5
        addq      $8, %rcx                                      #78.5
        cmpq      %rsi, %rbx                                    #78.5
        jb        ..B1.23       # Prob 82%                      #78.5
                                # LOE rax rcx rsi r8 r12 r13 r14 ebx ymm1 ymm3 zmm0 zmm4 zmm5
..B1.24:                        # Preds ..B1.23
                                # Execution count [1.44e+01]
        cmpq      %rsi, %r12                                    #78.5
        je        ..B1.33       # Prob 10%                      #78.5
                                # LOE rax rsi r12 r13 r14
..B1.25:                        # Preds ..B1.21 ..B1.24
                                # Execution count [8.00e+01]
        lea       16(%rsi), %rcx                                #78.5
        cmpq      %rcx, %rax                                    #78.5
        jl        ..B1.29       # Prob 50%                      #78.5
                                # LOE rax rsi r12 r13 r14
..B1.26:                        # Preds ..B1.25
                                # Execution count [1.44e+01]
        vmovups   .L_2il0floatpacket.13(%rip), %zmm0            #78.5
        movl      %esi, %ecx                                    #78.5
        vmovups   .L_2il0floatpacket.12(%rip), %zmm1            #78.5
        movq      2120(%rsp), %rbx                              #78.5[spill]
                                # LOE rax rbx rsi r12 r13 r14 ecx zmm0 zmm1
..B1.27:                        # Preds ..B1.27 ..B1.26
                                # Execution count [8.00e+01]
        addl      $16, %ecx                                     #78.5
        vmovupd   %zmm1, (%rbx,%rsi,8)                          #78.5
        vmovupd   %zmm0, (%r13,%rsi,8)                          #78.5
        vmovupd   %zmm1, 64(%rbx,%rsi,8)                        #78.5
        vmovupd   %zmm0, 64(%r13,%rsi,8)                        #78.5
        addq      $16, %rsi                                     #78.5
        cmpq      %rax, %rcx                                    #78.5
        jb        ..B1.27       # Prob 82%                      #78.5
                                # LOE rax rbx rsi r12 r13 r14 ecx zmm0 zmm1
..B1.29:                        # Preds ..B1.27 ..B1.25 ..B1.65
                                # Execution count [1.60e+01]
        lea       1(%rax), %rcx                                 #78.5
        cmpq      %r12, %rcx                                    #78.5
        ja        ..B1.33       # Prob 50%                      #78.5
                                # LOE rax r12 r13 r14
..B1.30:                        # Preds ..B1.29
                                # Execution count [1.44e+01]
        movq      %r12, %rsi                                    #78.5
        xorl      %r8d, %r8d                                    #78.5
        subq      %rax, %rsi                                    #78.5
        movslq    %eax, %rax                                    #78.5
        movq      2120(%rsp), %rbx                              #78.5[spill]
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm1            #78.5
        vmovdqu   .L_2il0floatpacket.14(%rip), %ymm3            #78.5
        vmovups   .L_2il0floatpacket.13(%rip), %zmm4            #78.5
        vmovups   .L_2il0floatpacket.12(%rip), %zmm5            #78.5
        vpbroadcastq %rsi, %zmm0                                #78.5
        lea       (%rbx,%rax,8), %rbx                           #78.5
        lea       (%r13,%rax,8), %rcx                           #78.5
        xorl      %eax, %eax                                    #78.5
                                # LOE rax rcx rbx rsi r12 r13 r14 r8d ymm1 ymm3 zmm0 zmm4 zmm5
..B1.31:                        # Preds ..B1.31 ..B1.30
                                # Execution count [8.00e+01]
        vpmovsxdq %ymm1, %zmm2                                  #78.5
        addl      $8, %r8d                                      #78.5
        vpaddd    %ymm3, %ymm1, %ymm1                           #78.5
        vpcmpgtq  %zmm2, %zmm0, %k1                             #78.5
        vmovupd   %zmm5, (%rbx,%rax,8){%k1}                     #78.5
        vmovupd   %zmm4, (%rcx,%rax,8){%k1}                     #78.5
        addq      $8, %rax                                      #78.5
        cmpq      %rsi, %r8                                     #78.5
        jb        ..B1.31       # Prob 82%                      #78.5
                                # LOE rax rcx rbx rsi r12 r13 r14 r8d ymm1 ymm3 zmm0 zmm4 zmm5
..B1.33:                        # Preds ..B1.31 ..B1.15 ..B1.24 ..B1.29
                                # Execution count [1.60e+01]
        vzeroupper                                              #78.5
        lea       2096(%rsp), %rdi                              #78.5
        movl      $1, %ebx                                      #78.5
        lea       2104(%rsp), %rsi                              #78.5
..___tag_value_main.47:
#       timing(double *, double *)
        call      timing                                        #78.5
..___tag_value_main.48:
                                # LOE r12 r13 r14 ebx
..B1.34:                        # Preds ..B1.33
                                # Execution count [1.44e+01]
        xorl      %r15d, %r15d                                  #78.5
        vxorpd    %xmm0, %xmm0, %xmm0                           #78.5
                                # LOE r12 r13 r14 ebx r15d xmm0
..B1.35:                        # Preds ..B1.34 ..B1.42 ..B1.48
                                # Execution count [4.44e+02]
        vcomisd   (%r14), %xmm0                                 #78.5
        jbe       ..B1.37       # Prob 78%                      #78.5
                                # LOE r12 r13 r14 ebx r15d xmm0
..B1.36:                        # Preds ..B1.35
                                # Execution count [9.78e+01]
        movq      %r14, %rdi                                    #78.5
        vzeroupper                                              #78.5
..___tag_value_main.49:
#       dummy(double *)
        call      dummy                                         #78.5
..___tag_value_main.50:
                                # LOE r12 r13 r14 ebx r15d
..B1.90:                        # Preds ..B1.36
                                # Execution count [9.78e+01]
        vxorpd    %xmm0, %xmm0, %xmm0                           #
                                # LOE r12 r13 r14 ebx r15d xmm0
..B1.37:                        # Preds ..B1.35 ..B1.90
                                # Execution count [4.44e+02]
        testq     %r12, %r12                                    #78.5
        jle       ..B1.42       # Prob 50%                      #78.5
                                # LOE r12 r13 r14 ebx r15d xmm0
..B1.38:                        # Preds ..B1.37
                                # Execution count [4.00e+02]
        cmpq      $16, %r12                                     #78.5
        jl        ..B1.42       # Prob 10%                      #78.5
                                # LOE r12 r13 r14 ebx r15d xmm0
..B1.39:                        # Preds ..B1.38
                                # Execution count [4.00e+02]
        movq      2120(%rsp), %rcx                              #78.5[spill]
        xorl      %eax, %eax                                    #78.5
                                # LOE rax rcx r12 r13 r14 ebx r15d xmm0
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
# LLVM-MCA-BEGIN
..B1.40:                        # Preds ..B1.40 ..B1.39
                                # Execution count [2.22e+03]
        vmovups   (%rcx,%rax,8), %zmm1                          #78.5
        vmovups   64(%rcx,%rax,8), %zmm3                        #78.5
        vaddpd    (%r13,%rax,8), %zmm1, %zmm2                   #78.5
        vaddpd    64(%r13,%rax,8), %zmm3, %zmm4                 #78.5
        vmovupd   %zmm2, (%r14,%rax,8)                          #78.5
        vmovupd   %zmm4, 64(%r14,%rax,8)                        #78.5
        addq      $16, %rax                                     #78.5
        cmpq      %r12, %rax                                    #78.5
        jb        ..B1.40       # Prob 82%                      #78.5
# LLVM-MCA-END
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
                                # LOE rax rcx r12 r13 r14 ebx r15d xmm0
..B1.42:                        # Preds ..B1.40 ..B1.37 ..B1.38
                                # Execution count [4.44e+02]
        incl      %r15d                                         #78.5
        cmpl      %ebx, %r15d                                   #78.5
        jb        ..B1.35       # Prob 82%                      #78.5
                                # LOE r12 r13 r14 ebx r15d xmm0
..B1.44:                        # Preds ..B1.42 ..B1.47
                                # Execution count [8.89e+01]: Infreq
        vzeroupper                                              #78.5
        lea       2112(%rsp), %rdi                              #78.5
        lea       2104(%rsp), %rsi                              #78.5
..___tag_value_main.52:
#       timing(double *, double *)
        call      timing                                        #78.5
..___tag_value_main.53:
                                # LOE r12 r13 r14 ebx
..B1.45:                        # Preds ..B1.44
                                # Execution count [8.89e+01]: Infreq
        vmovsd    2112(%rsp), %xmm16                            #78.5
        addl      %ebx, %ebx                                    #78.5
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm0             #78.5
        vsubsd    2096(%rsp), %xmm16, %xmm1                     #78.5
        vcomisd   %xmm1, %xmm0                                  #78.5
        jbe       ..B1.49       # Prob 18%                      #78.5
                                # LOE r12 r13 r14 ebx xmm1
..B1.46:                        # Preds ..B1.45
                                # Execution count [7.29e+01]: Infreq
        lea       2096(%rsp), %rdi                              #78.5
        lea       2104(%rsp), %rsi                              #78.5
..___tag_value_main.54:
#       timing(double *, double *)
        call      timing                                        #78.5
..___tag_value_main.55:
                                # LOE r12 r13 r14 ebx
..B1.47:                        # Preds ..B1.46
                                # Execution count [7.29e+01]: Infreq
        xorl      %r15d, %r15d                                  #78.5
        testl     %ebx, %ebx                                    #78.5
        jle       ..B1.44       # Prob 10%                      #78.5
                                # LOE r12 r13 r14 ebx r15d
..B1.48:                        # Preds ..B1.47
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
        jmp       ..B1.35       # Prob 100%                     #
                                # LOE r12 r13 r14 ebx r15d xmm0
..B1.49:                        # Preds ..B1.45
                                # Execution count [1.60e+01]: Infreq
        movl      %ebx, %eax                                    #78.5
        lea       1024(%rsp), %rdi                              #78.5
        shrl      $31, %eax                                     #78.5
        movl      $1024, %esi                                   #78.5
        addl      %eax, %ebx                                    #78.5
        vmovsd    %xmm1, 1064(%rdi)                             #[spill]
        sarl      $1, %ebx                                      #78.5
..___tag_value_main.57:
#       gethostname(char *, size_t)
        call      gethostname                                   #78.5
..___tag_value_main.58:
                                # LOE r12 r13 r14 ebx
..B1.50:                        # Preds ..B1.49
                                # Execution count [1.60e+01]: Infreq
        movl      $.L_2__STRING.0, %esi                         #78.5
        lea       1024(%rsp), %rdi                              #78.5
..___tag_value_main.59:
#       strcmp(const char *, const char *)
        call      strcmp                                        #78.5
..___tag_value_main.60:
                                # LOE r12 r13 r14 r15 eax ebx
..B1.81:                        # Preds ..B1.50
                                # Execution count [1.60e+01]: Infreq
        testl     %eax, %eax                                    #78.5
        je        ..B1.63       # Prob 9%                       #78.5
                                # LOE r12 r13 r14 r15 ebx
..B1.51:                        # Preds ..B1.81
                                # Execution count [1.44e+01]: Infreq
        movl      $.L_2__STRING.1, %esi                         #78.5
        lea       1024(%rsp), %rdi                              #78.5
..___tag_value_main.61:
#       strcmp(const char *, const char *)
        call      strcmp                                        #78.5
..___tag_value_main.62:
                                # LOE r12 r13 r14 r15 eax ebx
..B1.82:                        # Preds ..B1.51
                                # Execution count [1.44e+01]: Infreq
        testl     %eax, %eax                                    #78.5
        je        ..B1.61       # Prob 9%                       #78.5
                                # LOE r12 r13 r14 r15 ebx
..B1.52:                        # Preds ..B1.82
                                # Execution count [1.30e+01]: Infreq
        movl      $.L_2__STRING.2, %esi                         #78.5
        lea       1024(%rsp), %rdi                              #78.5
..___tag_value_main.63:
#       strcmp(const char *, const char *)
        call      strcmp                                        #78.5
..___tag_value_main.64:
                                # LOE r12 r13 r14 r15 eax ebx
..B1.83:                        # Preds ..B1.52
                                # Execution count [1.30e+01]: Infreq
        testl     %eax, %eax                                    #78.5
        jne       ..B1.55       # Prob 78%                      #78.5
                                # LOE r12 r13 r14 r15 ebx
..B1.53:                        # Preds ..B1.83
                                # Execution count [2.86e+00]: Infreq
        vmovsd    2048(%rsp), %xmm0                             #78.5[spill]
        vmovsd    2056(%rsp), %xmm1                             #78.5[spill]
..___tag_value_main.66:
#       pow(double, double)
        call      pow                                           #78.5
..___tag_value_main.67:
                                # LOE r12 r13 r14 ebx xmm0
..B1.54:                        # Preds ..B1.53
                                # Execution count [2.86e+00]: Infreq
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #78.5
        vcvttsd2si %xmm0, %r15                                  #78.5
                                # LOE r12 r13 r14 r15 ebx
..B1.55:                        # Preds ..B1.64 ..B1.62 ..B1.54 ..B1.83
                                # Execution count [1.60e+01]: Infreq
        movslq    %ebx, %rcx                                    #78.5
        vxorpd    %xmm13, %xmm13, %xmm13                        #78.5
        imulq     %r12, %rcx                                    #78.5
        vcvtsi2sdq %rcx, %xmm13, %xmm13                         #78.5
        vmovsd    .L_2il0floatpacket.16(%rip), %xmm5            #78.5
        vxorpd    %xmm8, %xmm8, %xmm8                           #78.5
        vmovsd    2088(%rsp), %xmm1                             #78.5[spill]
        vxorpd    %xmm16, %xmm16, %xmm16                        #78.5
        vdivsd    %xmm1, %xmm5, %xmm10                          #78.5
        vmulsd    .L_2il0floatpacket.10(%rip), %xmm13, %xmm14   #78.5
        vxorpd    %xmm12, %xmm12, %xmm12                        #78.5
        vcvtsi2sd 2064(%rsp), %xmm8, %xmm8                      #78.5[spill]
        vcvtsi2sdq %r15, %xmm16, %xmm16                         #78.5
        vdivsd    %xmm14, %xmm1, %xmm15                         #78.5
        vmulsd    .L_2il0floatpacket.9(%rip), %xmm8, %xmm6      #78.5
        movl      $.L_2__STRING.3, %edi                         #78.5
        vcvtsi2sd %ebx, %xmm12, %xmm12                          #78.5
        vmulsd    .L_2il0floatpacket.11(%rip), %xmm8, %xmm9     #78.5
        vmulsd    %xmm10, %xmm6, %xmm7                          #78.5
        vmulsd    .L_2il0floatpacket.8(%rip), %xmm8, %xmm0      #78.5
        vmulsd    %xmm10, %xmm9, %xmm11                         #78.5
        vmulsd    %xmm12, %xmm7, %xmm2                          #78.5
        vmulsd    %xmm16, %xmm15, %xmm3                         #78.5
        vmulsd    %xmm12, %xmm11, %xmm4                         #78.5
        movl      %ebx, %esi                                    #78.5
        movq      %r12, %rdx                                    #78.5
        movl      $6, %eax                                      #78.5
        vmovapd   %xmm2, %xmm5                                  #78.5
..___tag_value_main.71:
#       printf(const char *__restrict__, ...)
        call      printf                                        #78.5
..___tag_value_main.72:
                                # LOE r13 r14
..B1.56:                        # Preds ..B1.55
                                # Execution count [1.60e+01]: Infreq
        movq      %r14, %rdi                                    #78.5
..___tag_value_main.73:
#       free(void *)
        call      free                                          #78.5
..___tag_value_main.74:
                                # LOE r13
..B1.57:                        # Preds ..B1.56
                                # Execution count [1.60e+01]: Infreq
        movq      2120(%rsp), %rdi                              #78.5[spill]
..___tag_value_main.75:
#       free(void *)
        call      free                                          #78.5
..___tag_value_main.76:
                                # LOE r13
..B1.58:                        # Preds ..B1.57
                                # Execution count [1.60e+01]: Infreq
        movq      %r13, %rdi                                    #78.5
..___tag_value_main.78:
#       free(void *)
        call      free                                          #78.5
..___tag_value_main.79:
                                # LOE
..B1.59:                        # Preds ..B1.58
                                # Execution count [1.60e+01]: Infreq
        movb      2080(%rsp), %al                               #75.3[spill]
        incb      %al                                           #75.3
        incl      2072(%rsp)                                    #75.3[spill]
        movb      %al, 2080(%rsp)                               #75.3[spill]
        cmpb      $16, %al                                      #75.3
        jb        ..B1.11       # Prob 93%                      #75.3
                                # LOE
..B1.60:                        # Preds ..B1.59
                                # Execution count [1.00e+00]: Infreq
        xorl      %eax, %eax                                    #80.10
        addq      $2136, %rsp                                   #80.10
	.cfi_restore 3
        popq      %rbx                                          #80.10
	.cfi_restore 15
        popq      %r15                                          #80.10
	.cfi_restore 14
        popq      %r14                                          #80.10
	.cfi_restore 13
        popq      %r13                                          #80.10
	.cfi_restore 12
        popq      %r12                                          #80.10
        movq      %rbp, %rsp                                    #80.10
        popq      %rbp                                          #80.10
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #80.10
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.61:                        # Preds ..B1.82
                                # Execution count [1.43e+00]: Infreq
        vmovsd    2048(%rsp), %xmm0                             #78.5[spill]
        vmovsd    2056(%rsp), %xmm1                             #78.5[spill]
..___tag_value_main.98:
#       pow(double, double)
        call      pow                                           #78.5
..___tag_value_main.99:
                                # LOE r12 r13 r14 ebx xmm0
..B1.62:                        # Preds ..B1.61
                                # Execution count [1.43e+00]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #78.5
        vcvttsd2si %xmm0, %r15                                  #78.5
        jmp       ..B1.55       # Prob 100%                     #78.5
                                # LOE r12 r13 r14 r15 ebx
..B1.63:                        # Preds ..B1.81
                                # Execution count [1.58e+00]: Infreq
        vmovsd    2048(%rsp), %xmm0                             #78.5[spill]
        vmovsd    2056(%rsp), %xmm1                             #78.5[spill]
..___tag_value_main.102:
#       pow(double, double)
        call      pow                                           #78.5
..___tag_value_main.103:
                                # LOE r12 r13 r14 ebx xmm0
..B1.64:                        # Preds ..B1.63
                                # Execution count [1.58e+00]: Infreq
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm0, %xmm0      #78.5
        vcvttsd2si %xmm0, %r15                                  #78.5
        jmp       ..B1.55       # Prob 100%                     #78.5
                                # LOE r12 r13 r14 r15 ebx
..B1.65:                        # Preds ..B1.16
                                # Execution count [1.44e+00]: Infreq
        xorl      %eax, %eax                                    #78.5
        jmp       ..B1.29       # Prob 100%                     #78.5
                                # LOE rax r12 r13 r14
..B1.66:                        # Preds ..B1.74
                                # Execution count [8.91e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #71.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #71.3
        vmovsd    %xmm0, 2048(%rsp)                             #71.3[spill]
        vmovsd    %xmm1, 2056(%rsp)                             #71.3[spill]
..___tag_value_main.106:
#       pow(double, double)
        call      pow                                           #71.3
..___tag_value_main.107:
                                # LOE r12 r13 r14 r15 xmm0
..B1.67:                        # Preds ..B1.66
                                # Execution count [8.91e-02]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #71.3
        vcvttsd2si %xmm0, %rbx                                  #71.3
        jmp       ..B1.7        # Prob 100%                     #71.3
                                # LOE rbx r12 r13 r14 r15
..B1.68:                        # Preds ..B1.73
                                # Execution count [9.88e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #71.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #71.3
        vmovsd    %xmm0, 2048(%rsp)                             #71.3[spill]
        vmovsd    %xmm1, 2056(%rsp)                             #71.3[spill]
..___tag_value_main.110:
#       pow(double, double)
        call      pow                                           #71.3
..___tag_value_main.111:
                                # LOE r12 r13 r14 r15 xmm0
..B1.69:                        # Preds ..B1.68
                                # Execution count [9.88e-02]: Infreq
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm0, %xmm0      #71.3
        vcvttsd2si %xmm0, %rbx                                  #71.3
        jmp       ..B1.7        # Prob 100%                     #71.3
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
..___tag_value_getFreq.114:
..L115:
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
..___tag_value_getFreq.121:
#       strcmp(const char *, const char *)
        call      strcmp                                        #12.7
..___tag_value_getFreq.122:
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
..___tag_value_getFreq.123:
#       strcmp(const char *, const char *)
        call      strcmp                                        #16.7
..___tag_value_getFreq.124:
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
..___tag_value_getFreq.125:
#       strcmp(const char *, const char *)
        call      strcmp                                        #20.7
..___tag_value_getFreq.126:
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
..___tag_value_getFreq.135:
#       pow(double, double)
        call      pow                                           #21.26
..___tag_value_getFreq.136:
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
..___tag_value_getFreq.145:
#       pow(double, double)
        call      pow                                           #17.26
..___tag_value_getFreq.146:
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
..___tag_value_getFreq.155:
#       pow(double, double)
        call      pow                                           #13.26
..___tag_value_getFreq.156:
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
.L_2__routine_start_add_2:
# -- Begin  add
	.text
# mark_begin;
       .align    16,0x90
	.globl add
# --- add(long)
add:
# parameter 1: %rdi
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_add.163:
..L164:
                                                        #27.21
        pushq     %rbp                                          #27.21
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #27.21
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-64, %rsp                                    #27.21
        pushq     %r12                                          #27.21
        pushq     %r13                                          #27.21
        pushq     %r14                                          #27.21
        pushq     %r15                                          #27.21
        pushq     %rbx                                          #27.21
        subq      $1112, %rsp                                   #27.21
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
        movq      %rdi, %r13                                    #27.21
        movl      $64, %edi                                     #29.7
        lea       (,%r13,8), %rbx                               #29.30
        movq      %rbx, %rsi                                    #29.7
..___tag_value_add.173:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #29.7
..___tag_value_add.174:
                                # LOE rax rbx r13
..B3.61:                        # Preds ..B3.1
                                # Execution count [1.00e+00]
        movq      %rax, %r14                                    #29.7
                                # LOE rbx r13 r14
..B3.2:                         # Preds ..B3.61
                                # Execution count [1.00e+00]
        movl      $64, %edi                                     #30.7
        movq      %rbx, %rsi                                    #30.7
..___tag_value_add.175:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #30.7
..___tag_value_add.176:
                                # LOE rax rbx r13 r14
..B3.62:                        # Preds ..B3.2
                                # Execution count [1.00e+00]
        movq      %rax, %r12                                    #30.7
                                # LOE rbx r12 r13 r14
..B3.3:                         # Preds ..B3.62
                                # Execution count [1.00e+00]
        movl      $64, %edi                                     #31.7
        movq      %rbx, %rsi                                    #31.7
..___tag_value_add.177:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #31.7
..___tag_value_add.178:
                                # LOE rax r12 r13 r14
..B3.63:                        # Preds ..B3.3
                                # Execution count [1.00e+00]
        movq      %rax, %rbx                                    #31.7
                                # LOE rbx r12 r13 r14
..B3.4:                         # Preds ..B3.63
                                # Execution count [1.00e+00]
        testq     %r13, %r13                                    #34.18
        jle       ..B3.22       # Prob 50%                      #34.18
                                # LOE rbx r12 r13 r14
..B3.5:                         # Preds ..B3.4
                                # Execution count [9.00e-01]
        cmpq      $16, %r13                                     #34.3
        jl        ..B3.58       # Prob 10%                      #34.3
                                # LOE rbx r12 r13 r14
..B3.6:                         # Preds ..B3.5
                                # Execution count [9.00e-01]
        movq      %rbx, %r8                                     #34.3
        andq      $63, %r8                                      #34.3
        testq     $7, %r8                                       #34.3
        je        ..B3.8        # Prob 50%                      #34.3
                                # LOE rbx r8 r12 r13 r14
..B3.7:                         # Preds ..B3.6
                                # Execution count [4.50e-01]
        xorl      %r8d, %r8d                                    #34.3
        jmp       ..B3.10       # Prob 100%                     #34.3
                                # LOE rbx r8 r12 r13 r14
..B3.8:                         # Preds ..B3.6
                                # Execution count [4.50e-01]
        testq     %r8, %r8                                      #34.3
        je        ..B3.10       # Prob 50%                      #34.3
                                # LOE rbx r8 r12 r13 r14
..B3.9:                         # Preds ..B3.8
                                # Execution count [5.00e+00]
        negq      %r8                                           #34.3
        addq      $64, %r8                                      #34.3
        shrq      $3, %r8                                       #34.3
        cmpq      %r8, %r13                                     #34.3
        cmovl     %r13, %r8                                     #34.3
                                # LOE rbx r8 r12 r13 r14
..B3.10:                        # Preds ..B3.7 ..B3.9 ..B3.8
                                # Execution count [1.00e+00]
        movq      %r13, %rax                                    #34.3
        subq      %r8, %rax                                     #34.3
        andq      $15, %rax                                     #34.3
        negq      %rax                                          #34.3
        addq      %r13, %rax                                    #34.3
        cmpq      $1, %r8                                       #34.3
        jb        ..B3.14       # Prob 50%                      #34.3
                                # LOE rax rbx r8 r12 r13 r14
..B3.11:                        # Preds ..B3.10
                                # Execution count [9.00e-01]
        vmovdqu   .L_2il0floatpacket.14(%rip), %ymm4            #34.3
        xorl      %esi, %esi                                    #34.3
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm3            #34.3
        vmovups   .L_2il0floatpacket.12(%rip), %zmm2            #35.12
        vmovups   .L_2il0floatpacket.13(%rip), %zmm1            #36.12
        vpbroadcastq %r8, %zmm0                                 #34.3
        xorl      %ecx, %ecx                                    #34.3
                                # LOE rax rcx rbx r8 r12 r13 r14 esi ymm3 ymm4 zmm0 zmm1 zmm2
..B3.12:                        # Preds ..B3.12 ..B3.11
                                # Execution count [5.00e+00]
        vpmovsxdq %ymm3, %zmm5                                  #34.3
        addl      $8, %esi                                      #34.3
        vpaddd    %ymm4, %ymm3, %ymm3                           #34.3
        vpcmpgtq  %zmm5, %zmm0, %k1                             #34.3
        vmovupd   %zmm2, (%r12,%rcx,8){%k1}                     #35.5
        vmovupd   %zmm1, (%rbx,%rcx,8){%k1}                     #36.5
        addq      $8, %rcx                                      #34.3
        cmpq      %r8, %rsi                                     #34.3
        jb        ..B3.12       # Prob 82%                      #34.3
                                # LOE rax rcx rbx r8 r12 r13 r14 esi ymm3 ymm4 zmm0 zmm1 zmm2
..B3.13:                        # Preds ..B3.12
                                # Execution count [9.00e-01]
        cmpq      %r8, %r13                                     #34.3
        je        ..B3.22       # Prob 10%                      #34.3
                                # LOE rax rbx r8 r12 r13 r14
..B3.14:                        # Preds ..B3.10 ..B3.13
                                # Execution count [5.00e+00]
        lea       16(%r8), %rcx                                 #34.3
        cmpq      %rcx, %rax                                    #34.3
        jl        ..B3.18       # Prob 50%                      #34.3
                                # LOE rax rbx r8 r12 r13 r14
..B3.15:                        # Preds ..B3.14
                                # Execution count [9.00e-01]
        movslq    %r8d, %rcx                                    #34.3
        movl      %r8d, %esi                                    #34.3
        vmovups   .L_2il0floatpacket.12(%rip), %zmm1            #35.12
        vmovups   .L_2il0floatpacket.13(%rip), %zmm0            #36.12
                                # LOE rax rcx rbx r12 r13 r14 esi zmm0 zmm1
..B3.16:                        # Preds ..B3.16 ..B3.15
                                # Execution count [5.00e+00]
        addl      $16, %esi                                     #34.3
        vmovupd   %zmm1, (%r12,%rcx,8)                          #35.5
        vmovupd   %zmm0, (%rbx,%rcx,8)                          #36.5
        vmovupd   %zmm1, 64(%r12,%rcx,8)                        #35.5
        vmovupd   %zmm0, 64(%rbx,%rcx,8)                        #36.5
        addq      $16, %rcx                                     #34.3
        cmpq      %rax, %rsi                                    #34.3
        jb        ..B3.16       # Prob 82%                      #34.3
                                # LOE rax rcx rbx r12 r13 r14 esi zmm0 zmm1
..B3.18:                        # Preds ..B3.16 ..B3.14 ..B3.58
                                # Execution count [1.00e+00]
        lea       1(%rax), %rcx                                 #34.3
        cmpq      %r13, %rcx                                    #34.3
        ja        ..B3.22       # Prob 50%                      #34.3
                                # LOE rax rbx r12 r13 r14
..B3.19:                        # Preds ..B3.18
                                # Execution count [9.00e-01]
        movq      %r13, %r8                                     #34.3
        xorl      %r9d, %r9d                                    #34.3
        subq      %rax, %r8                                     #34.3
        movslq    %eax, %rax                                    #35.5
        vmovdqu   .L_2il0floatpacket.14(%rip), %ymm4            #34.3
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm3            #34.3
        vmovups   .L_2il0floatpacket.12(%rip), %zmm2            #35.12
        vmovups   .L_2il0floatpacket.13(%rip), %zmm1            #36.12
        vpbroadcastq %r8, %zmm0                                 #34.3
        lea       (%r12,%rax,8), %rsi                           #35.5
        lea       (%rbx,%rax,8), %rcx                           #36.5
        xorl      %eax, %eax                                    #34.3
                                # LOE rax rcx rbx rsi r8 r12 r13 r14 r9d ymm3 ymm4 zmm0 zmm1 zmm2
..B3.20:                        # Preds ..B3.20 ..B3.19
                                # Execution count [5.00e+00]
        vpmovsxdq %ymm3, %zmm5                                  #34.3
        addl      $8, %r9d                                      #34.3
        vpaddd    %ymm4, %ymm3, %ymm3                           #34.3
        vpcmpgtq  %zmm5, %zmm0, %k1                             #34.3
        vmovupd   %zmm2, (%rsi,%rax,8){%k1}                     #35.5
        vmovupd   %zmm1, (%rcx,%rax,8){%k1}                     #36.5
        addq      $8, %rax                                      #34.3
        cmpq      %r8, %r9                                      #34.3
        jb        ..B3.20       # Prob 82%                      #34.3
                                # LOE rax rcx rbx rsi r8 r12 r13 r14 r9d ymm3 ymm4 zmm0 zmm1 zmm2
..B3.22:                        # Preds ..B3.4 ..B3.20 ..B3.13 ..B3.18
                                # Execution count [1.00e+00]
        vzeroupper                                              #42.5
        lea       1040(%rsp), %rdi                              #42.5
        movl      $1, %r15d                                     #40.14
        lea       1048(%rsp), %rsi                              #42.5
..___tag_value_add.179:
#       timing(double *, double *)
        call      timing                                        #42.5
..___tag_value_add.180:
                                # LOE rbx r12 r13 r14 r15d
..B3.23:                        # Preds ..B3.22
                                # Execution count [9.00e-01]
        movq      %r13, %rcx                                    #48.7
        xorl      %eax, %eax                                    #43.5
        andq      $-16, %rcx                                    #48.7
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm3             #41.30
        vxorpd    %xmm0, %xmm0, %xmm0                           #44.17
        vmovups   .L_2il0floatpacket.17(%rip), %zmm2            #48.7
        vmovdqu32 .L_2il0floatpacket.18(%rip), %zmm1            #48.7
        movl      %r15d, 8(%rsp)                                #48.7[spill]
        movl      %eax, %r15d                                   #48.7
        movq      %rcx, (%rsp)                                  #48.7[spill]
                                # LOE rbx r12 r13 r14 r15d xmm0
..B3.24:                        # Preds ..B3.23 ..B3.35 ..B3.41
                                # Execution count [2.78e+01]
        vcomisd   (%r14), %xmm0                                 #44.17
        jbe       ..B3.26       # Prob 78%                      #44.17
                                # LOE rbx r12 r13 r14 r15d xmm0
..B3.25:                        # Preds ..B3.24
                                # Execution count [6.11e+00]
        movq      %r14, %rdi                                    #44.20
        vzeroupper                                              #44.20
..___tag_value_add.183:
#       dummy(double *)
        call      dummy                                         #44.20
..___tag_value_add.184:
                                # LOE rbx r12 r13 r14 r15d
..B3.72:                        # Preds ..B3.25
                                # Execution count [6.11e+00]
        vxorpd    %xmm0, %xmm0, %xmm0                           #
                                # LOE rbx r12 r13 r14 r15d xmm0
..B3.26:                        # Preds ..B3.72 ..B3.24
                                # Execution count [2.78e+01]
        testq     %r13, %r13                                    #48.35
        jle       ..B3.35       # Prob 50%                      #48.35
                                # LOE rbx r12 r13 r14 r15d xmm0
..B3.27:                        # Preds ..B3.26
                                # Execution count [2.50e+01]
        cmpq      $16, %r13                                     #48.7
        jl        ..B3.57       # Prob 10%                      #48.7
                                # LOE rbx r12 r13 r14 r15d xmm0
..B3.28:                        # Preds ..B3.27
                                # Execution count [2.50e+01]
        movq      (%rsp), %rsi                                  #48.7[spill]
        xorl      %ecx, %ecx                                    #48.7
        movq      %rsi, %r8                                     #48.7
                                # LOE rcx rbx rsi r8 r12 r13 r14 r15d xmm0
..B3.29:                        # Preds ..B3.29 ..B3.28
                                # Execution count [1.39e+02]
        vmovups   (%r12,%rcx,8), %zmm1                          #49.16
        vmovups   64(%r12,%rcx,8), %zmm3                        #49.16
        vaddpd    (%rbx,%rcx,8), %zmm1, %zmm2                   #49.23
        vaddpd    64(%rbx,%rcx,8), %zmm3, %zmm4                 #49.23
        vmovupd   %zmm2, (%r14,%rcx,8)                          #49.9
        vmovupd   %zmm4, 64(%r14,%rcx,8)                        #49.9
        addq      $16, %rcx                                     #48.7
        cmpq      %r8, %rcx                                     #48.7
        jb        ..B3.29       # Prob 82%                      #48.7
                                # LOE rcx rbx rsi r8 r12 r13 r14 r15d xmm0
..B3.31:                        # Preds ..B3.29 ..B3.57
                                # Execution count [2.78e+01]
        lea       1(%rsi), %rcx                                 #48.7
        cmpq      %r13, %rcx                                    #48.7
        ja        ..B3.35       # Prob 50%                      #48.7
                                # LOE rbx rsi r12 r13 r14 r15d xmm0
..B3.32:                        # Preds ..B3.31
                                # Execution count [2.50e+01]
        vmovdqu32 .L_2il0floatpacket.18(%rip), %zmm2            #48.7
        lea       (%r12,%rsi,8), %r9                            #49.16
        vmovups   .L_2il0floatpacket.17(%rip), %zmm5            #48.7
        xorl      %r10d, %r10d                                  #48.7
        lea       (%rbx,%rsi,8), %r8                            #49.23
        lea       (%r14,%rsi,8), %rcx                           #49.9
        negq      %rsi                                          #48.7
        addq      %r13, %rsi                                    #48.7
        vpbroadcastq %rsi, %zmm1                                #48.7
                                # LOE rcx rbx rsi r8 r9 r10 r12 r13 r14 r15d xmm0 zmm1 zmm2 zmm5
..B3.33:                        # Preds ..B3.33 ..B3.32
                                # Execution count [1.39e+02]
        vmovups   (%r9,%r10,8), %zmm3                           #49.16
        vpcmpgtq  %zmm2, %zmm1, %k1                             #48.7
        vaddpd    (%r8,%r10,8), %zmm3, %zmm4                    #49.23
        vpaddq    %zmm5, %zmm2, %zmm2                           #48.7
        vmovupd   %zmm4, (%rcx,%r10,8){%k1}                     #49.9
        addq      $8, %r10                                      #48.7
        cmpq      %rsi, %r10                                    #48.7
        jb        ..B3.33       # Prob 82%                      #48.7
                                # LOE rcx rbx rsi r8 r9 r10 r12 r13 r14 r15d xmm0 zmm1 zmm2 zmm5
..B3.35:                        # Preds ..B3.33 ..B3.26 ..B3.31
                                # Execution count [2.78e+01]
        incl      %r15d                                         #43.5
        cmpl      8(%rsp), %r15d                                #43.5[spill]
        jb        ..B3.24       # Prob 82%                      #43.5
                                # LOE rbx r12 r13 r14 r15d xmm0
..B3.36:                        # Preds ..B3.35
                                # Execution count [5.10e+00]: Infreq
        movl      8(%rsp), %r15d                                #[spill]
                                # LOE rbx r12 r13 r14 r15d
..B3.37:                        # Preds ..B3.40 ..B3.36
                                # Execution count [5.56e+00]: Infreq
        vzeroupper                                              #52.5
        lea       1056(%rsp), %rdi                              #52.5
        lea       1048(%rsp), %rsi                              #52.5
..___tag_value_add.188:
#       timing(double *, double *)
        call      timing                                        #52.5
..___tag_value_add.189:
                                # LOE rbx r12 r13 r14 r15d
..B3.38:                        # Preds ..B3.37
                                # Execution count [5.56e+00]: Infreq
        vmovsd    1056(%rsp), %xmm16                            #53.15
        addl      %r15d, %r15d                                  #41.34
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm0             #41.30
        vsubsd    1040(%rsp), %xmm16, %xmm1                     #53.19
        vcomisd   %xmm1, %xmm0                                  #41.30
        jbe       ..B3.42       # Prob 18%                      #41.30
                                # LOE rbx r12 r13 r14 r15d xmm1
..B3.39:                        # Preds ..B3.38
                                # Execution count [4.56e+00]: Infreq
        lea       1040(%rsp), %rdi                              #42.5
        lea       1048(%rsp), %rsi                              #42.5
..___tag_value_add.190:
#       timing(double *, double *)
        call      timing                                        #42.5
..___tag_value_add.191:
                                # LOE rbx r12 r13 r14 r15d
..B3.40:                        # Preds ..B3.39
                                # Execution count [4.56e+00]: Infreq
        xorl      %eax, %eax                                    #43.5
        testl     %r15d, %r15d                                  #43.20
        jle       ..B3.37       # Prob 10%                      #43.20
                                # LOE rbx r12 r13 r14 eax r15d
..B3.41:                        # Preds ..B3.40
                                # Execution count [4.10e+00]: Infreq
        .byte     102                                           #
        .byte     144                                           #
        movl      %r15d, 8(%rsp)                                #[spill]
        movl      %eax, %r15d                                   #
        vxorpd    %xmm0, %xmm0, %xmm0                           #
        jmp       ..B3.24       # Prob 100%                     #
                                # LOE rbx r12 r13 r14 r15d xmm0
..B3.42:                        # Preds ..B3.38
                                # Execution count [1.00e+00]: Infreq
        movl      %r15d, %eax                                   #55.3
        lea       (%rsp), %rdi                                  #57.3
        shrl      $31, %eax                                     #55.3
        movl      $1024, %esi                                   #57.3
        addl      %eax, %r15d                                   #55.3
        vmovsd    %xmm1, 1024(%rdi)                             #[spill]
        sarl      $1, %r15d                                     #55.3
..___tag_value_add.194:
#       gethostname(char *, size_t)
        call      gethostname                                   #57.3
..___tag_value_add.195:
                                # LOE rbx r12 r13 r14 r15d
..B3.43:                        # Preds ..B3.42
                                # Execution count [1.00e+00]: Infreq
        movl      $.L_2__STRING.0, %esi                         #59.12
        lea       (%rsp), %rdi                                  #59.12
..___tag_value_add.196:
#       strcmp(const char *, const char *)
        call      strcmp                                        #59.12
..___tag_value_add.197:
                                # LOE rbx r12 r13 r14 eax r15d
..B3.64:                        # Preds ..B3.43
                                # Execution count [1.00e+00]: Infreq
        testl     %eax, %eax                                    #59.12
        je        ..B3.55       # Prob 9%                       #59.12
                                # LOE rbx r12 r13 r14 r15d
..B3.44:                        # Preds ..B3.64
                                # Execution count [9.01e-01]: Infreq
        movl      $.L_2__STRING.1, %esi                         #59.12
        lea       (%rsp), %rdi                                  #59.12
..___tag_value_add.198:
#       strcmp(const char *, const char *)
        call      strcmp                                        #59.12
..___tag_value_add.199:
                                # LOE rbx r12 r13 r14 eax r15d
..B3.65:                        # Preds ..B3.44
                                # Execution count [9.01e-01]: Infreq
        testl     %eax, %eax                                    #59.12
        je        ..B3.53       # Prob 9%                       #59.12
                                # LOE rbx r12 r13 r14 r15d
..B3.45:                        # Preds ..B3.65
                                # Execution count [8.12e-01]: Infreq
        movl      $.L_2__STRING.2, %esi                         #59.12
        lea       (%rsp), %rdi                                  #59.12
..___tag_value_add.200:
#       strcmp(const char *, const char *)
        call      strcmp                                        #59.12
..___tag_value_add.201:
                                # LOE rbx r12 r13 r14 eax r15d
..B3.66:                        # Preds ..B3.45
                                # Execution count [8.12e-01]: Infreq
        testl     %eax, %eax                                    #59.12
        jne       ..B3.48       # Prob 78%                      #59.12
                                # LOE rbx r12 r13 r14 r15d
..B3.46:                        # Preds ..B3.66
                                # Execution count [1.79e-01]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #59.12
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #59.12
..___tag_value_add.202:
#       pow(double, double)
        call      pow                                           #59.12
..___tag_value_add.203:
                                # LOE rbx r12 r13 r14 r15d xmm0
..B3.47:                        # Preds ..B3.46
                                # Execution count [1.79e-01]: Infreq
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #59.12
        vcvttsd2si %xmm0, %rax                                  #59.12
        movq      %rax, 1032(%rsp)                              #59.12[spill]
                                # LOE rbx r12 r13 r14 r15d
..B3.48:                        # Preds ..B3.56 ..B3.54 ..B3.47 ..B3.66
                                # Execution count [1.00e+00]: Infreq
        movslq    %r15d, %rcx                                   #60.3
        vxorpd    %xmm8, %xmm8, %xmm8                           #60.3
        imulq     %r13, %rcx                                    #60.3
        vcvtsi2sdq %rcx, %xmm8, %xmm8                           #60.3
        vmovsd    .L_2il0floatpacket.16(%rip), %xmm5            #60.3
        vxorpd    %xmm12, %xmm12, %xmm12                        #60.85
        vmovsd    1024(%rsp), %xmm1                             #60.301[spill]
        vxorpd    %xmm16, %xmm16, %xmm16                        #60.147
        vdivsd    %xmm1, %xmm5, %xmm14                          #60.301
        vmulsd    .L_2il0floatpacket.10(%rip), %xmm8, %xmm9     #60.3
        vxorpd    %xmm11, %xmm11, %xmm11                        #60.3
        vcvtsi2sdq %r13, %xmm12, %xmm12                         #60.85
        vcvtsi2sd %r15d, %xmm16, %xmm16                         #60.147
        vdivsd    %xmm9, %xmm1, %xmm10                          #60.3
        vmulsd    .L_2il0floatpacket.9(%rip), %xmm12, %xmm6     #60.301
        movl      $.L_2__STRING.3, %edi                         #60.3
        vcvtsi2sdq 1032(%rsp), %xmm11, %xmm11                   #60.3[spill]
        vmulsd    .L_2il0floatpacket.11(%rip), %xmm12, %xmm13   #60.3
        vmulsd    %xmm14, %xmm6, %xmm7                          #60.154
        vmulsd    .L_2il0floatpacket.8(%rip), %xmm12, %xmm0     #60.3
        vmulsd    %xmm14, %xmm13, %xmm15                        #60.3
        vmulsd    %xmm16, %xmm7, %xmm2                          #60.316
        vmulsd    %xmm11, %xmm10, %xmm3                         #60.3
        vmulsd    %xmm16, %xmm15, %xmm4                         #60.3
        movl      %r15d, %esi                                   #60.3
        movq      %r13, %rdx                                    #60.3
        movl      $6, %eax                                      #60.3
        vmovapd   %xmm2, %xmm5                                  #60.3
..___tag_value_add.207:
#       printf(const char *__restrict__, ...)
        call      printf                                        #60.3
..___tag_value_add.208:
                                # LOE rbx r12 r14
..B3.49:                        # Preds ..B3.48
                                # Execution count [1.00e+00]: Infreq
        movq      %r14, %rdi                                    #62.3
..___tag_value_add.209:
#       free(void *)
        call      free                                          #62.3
..___tag_value_add.210:
                                # LOE rbx r12
..B3.50:                        # Preds ..B3.49
                                # Execution count [1.00e+00]: Infreq
        movq      %r12, %rdi                                    #62.12
..___tag_value_add.211:
#       free(void *)
        call      free                                          #62.12
..___tag_value_add.212:
                                # LOE rbx
..B3.51:                        # Preds ..B3.50
                                # Execution count [1.00e+00]: Infreq
        movq      %rbx, %rdi                                    #62.21
..___tag_value_add.213:
#       free(void *)
        call      free                                          #62.21
..___tag_value_add.214:
                                # LOE
..B3.52:                        # Preds ..B3.51
                                # Execution count [1.00e+00]: Infreq
        addq      $1112, %rsp                                   #63.1
	.cfi_restore 3
        popq      %rbx                                          #63.1
	.cfi_restore 15
        popq      %r15                                          #63.1
	.cfi_restore 14
        popq      %r14                                          #63.1
	.cfi_restore 13
        popq      %r13                                          #63.1
	.cfi_restore 12
        popq      %r12                                          #63.1
        movq      %rbp, %rsp                                    #63.1
        popq      %rbp                                          #63.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #63.1
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B3.53:                        # Preds ..B3.65
                                # Execution count [8.91e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #59.12
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #59.12
..___tag_value_add.229:
#       pow(double, double)
        call      pow                                           #59.12
..___tag_value_add.230:
                                # LOE rbx r12 r13 r14 r15d xmm0
..B3.54:                        # Preds ..B3.53
                                # Execution count [8.91e-02]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #59.12
        vcvttsd2si %xmm0, %rax                                  #59.12
        movq      %rax, 1032(%rsp)                              #59.12[spill]
        jmp       ..B3.48       # Prob 100%                     #59.12
                                # LOE rbx r12 r13 r14 r15d
..B3.55:                        # Preds ..B3.64
                                # Execution count [9.88e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #59.12
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #59.12
..___tag_value_add.232:
#       pow(double, double)
        call      pow                                           #59.12
..___tag_value_add.233:
                                # LOE rbx r12 r13 r14 r15d xmm0
..B3.56:                        # Preds ..B3.55
                                # Execution count [9.88e-02]: Infreq
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm0, %xmm0      #59.12
        vcvttsd2si %xmm0, %rax                                  #59.12
        movq      %rax, 1032(%rsp)                              #59.12[spill]
        jmp       ..B3.48       # Prob 100%                     #59.12
                                # LOE rbx r12 r13 r14 r15d
..B3.57:                        # Preds ..B3.27
                                # Execution count [2.50e+00]: Infreq
        xorl      %esi, %esi                                    #48.7
        jmp       ..B3.31       # Prob 100%                     #48.7
                                # LOE rbx rsi r12 r13 r14 r15d xmm0
..B3.58:                        # Preds ..B3.5
                                # Execution count [9.00e-02]: Infreq
        xorl      %eax, %eax                                    #34.3
        jmp       ..B3.18       # Prob 100%                     #34.3
        .align    16,0x90
                                # LOE rax rbx r12 r13 r14
	.cfi_endproc
# mark_end;
	.type	add,@function
	.size	add,.-add
..LNadd.2:
	.data
# -- End  add
	.section .rodata, "a"
	.align 64
	.align 64
.L_2il0floatpacket.12:
	.long	0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a
	.type	.L_2il0floatpacket.12,@object
	.size	.L_2il0floatpacket.12,64
	.align 64
.L_2il0floatpacket.13:
	.long	0x5ad7ba0e,0x3ee96c8d,0x5ad7ba0e,0x3ee96c8d,0x5ad7ba0e,0x3ee96c8d,0x5ad7ba0e,0x3ee96c8d,0x5ad7ba0e,0x3ee96c8d,0x5ad7ba0e,0x3ee96c8d,0x5ad7ba0e,0x3ee96c8d,0x5ad7ba0e,0x3ee96c8d
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
	.long	0x00000000,0x3ef80000
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
	.long	541344833
	.long	1567185761
	.long	1646279968
	.long	542992731
	.long	1533222955
	.long	539778409
	.long	1646277682
	.long	795178105
	.long	539784297
	.long	1816535089
	.long	1764716655
	.word	2676
	.byte	0
	.type	.L_2__STRING.4,@object
	.size	.L_2__STRING.4,47
	.space 1, 0x00 	# pad
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
