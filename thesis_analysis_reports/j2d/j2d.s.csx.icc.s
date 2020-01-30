# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.5.281 Build 20190815";
# mark_description "-qopenmp-simd -fno-alias -unroll -fno-builtin -xCORE-AVX512 -qopt-zmm-usage=high -Ofast -S -use-msasm -o j2d";
# mark_description ".s.csx.icc.s";
	.file "j2d.c"
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
                                                          #83.1
        pushq     %rbp                                          #83.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #83.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-128, %rsp                                   #83.1
        pushq     %rbx                                          #83.1
        subq      $2296, %rsp                                   #83.1
        movq      $0x64199d9ffe, %rsi                           #83.1
        movl      $3, %edi                                      #83.1
        call      __intel_new_feature_proc_init                 #83.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
                                # LOE r12 r13 r14 r15
..B1.96:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        vstmxcsr  1024(%rsp)                                    #83.1
        movl      $1024, %esi                                   #85.3
        lea       (%rsp), %rdi                                  #85.3
        orl       $32832, 1024(%rdi)                            #83.1
        vldmxcsr  1024(%rdi)                                    #83.1
..___tag_value_main.7:
#       gethostname(char *, size_t)
        call      gethostname                                   #85.3
..___tag_value_main.8:
                                # LOE r12 r13 r14 r15
..B1.2:                         # Preds ..B1.96
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.0, %esi                         #87.3
        lea       (%rsp), %rdi                                  #87.3
..___tag_value_main.9:
#       strcmp(const char *, const char *)
        call      strcmp                                        #87.3
..___tag_value_main.10:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.97:                        # Preds ..B1.2
                                # Execution count [1.00e+00]
        testl     %eax, %eax                                    #87.3
        je        ..B1.92       # Prob 9%                       #87.3
                                # LOE rbx r12 r13 r14 r15
..B1.3:                         # Preds ..B1.97
                                # Execution count [9.01e-01]
        movl      $.L_2__STRING.1, %esi                         #87.3
        lea       (%rsp), %rdi                                  #87.3
..___tag_value_main.11:
#       strcmp(const char *, const char *)
        call      strcmp                                        #87.3
..___tag_value_main.12:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.98:                        # Preds ..B1.3
                                # Execution count [9.01e-01]
        testl     %eax, %eax                                    #87.3
        je        ..B1.90       # Prob 9%                       #87.3
                                # LOE rbx r12 r13 r14 r15
..B1.4:                         # Preds ..B1.98
                                # Execution count [8.12e-01]
        movl      $.L_2__STRING.2, %esi                         #87.3
        lea       (%rsp), %rdi                                  #87.3
..___tag_value_main.13:
#       strcmp(const char *, const char *)
        call      strcmp                                        #87.3
..___tag_value_main.14:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.99:                        # Preds ..B1.4
                                # Execution count [8.12e-01]
        testl     %eax, %eax                                    #87.3
        je        ..B1.5        # Prob 22%                      #87.3
                                # LOE rbx r12 r13 r14 r15
..B1.111:                       # Preds ..B1.99
                                # Execution count [6.33e-01]
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #87.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #87.3
        vmovsd    %xmm0, 2080(%rsp)                             #87.3[spill]
        vmovsd    %xmm1, 2088(%rsp)                             #87.3[spill]
        jmp       ..B1.7        # Prob 100%                     #87.3
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.99
                                # Execution count [1.79e-01]
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #87.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #87.3
        vmovsd    %xmm0, 2080(%rsp)                             #87.3[spill]
        vmovsd    %xmm1, 2088(%rsp)                             #87.3[spill]
..___tag_value_main.18:
#       pow(double, double)
        call      pow                                           #87.3
..___tag_value_main.19:
                                # LOE r12 r13 r14 r15 xmm0
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.79e-01]
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #87.3
        vcvttsd2si %xmm0, %rbx                                  #87.3
                                # LOE rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.93 ..B1.91 ..B1.6 ..B1.111
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.4, %edi                         #88.3
        xorl      %eax, %eax                                    #88.3
..___tag_value_main.21:
#       printf(const char *__restrict__, ...)
        call      printf                                        #88.3
..___tag_value_main.22:
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
                                # Execution count [1.00e+00]
        vxorpd    %xmm0, %xmm0, %xmm0                           #89.3
        lea       (%rsp), %rsi                                  #89.3
        vcvtsi2sdq %rbx, %xmm0, %xmm0                           #89.3
        movl      $.L_2__STRING.5, %edi                         #89.3
        movl      $1, %eax                                      #89.3
        vmulsd    .L_2il0floatpacket.4(%rip), %xmm0, %xmm0      #89.3
..___tag_value_main.23:
#       printf(const char *__restrict__, ...)
        call      printf                                        #89.3
..___tag_value_main.24:
                                # LOE r12 r13 r14 r15
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.6, %edi                         #90.3
        xorl      %eax, %eax                                    #90.3
..___tag_value_main.25:
#       printf(const char *__restrict__, ...)
        call      printf                                        #90.3
..___tag_value_main.26:
                                # LOE r12 r13 r14 r15
..B1.10:                        # Preds ..B1.9
                                # Execution count [1.00e+00]
        xorl      %esi, %esi                                    #91.3
        xorb      %dil, %dil                                    #91.3
        xorl      %ecx, %ecx                                    #91.3
        movl      $3746, %edx                                   #91.3
        xorl      %ebx, %ebx                                    #91.3
        vmovsd    .L_2il0floatpacket.5(%rip), %xmm14            #94.5
        vxorpd    %xmm12, %xmm12, %xmm12                        #94.5
        vmovsd    .L_2il0floatpacket.3(%rip), %xmm13            #94.5
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm11            #94.5
        vmovsd    .L_2il0floatpacket.8(%rip), %xmm10            #94.5
        vmovsd    .L_2il0floatpacket.9(%rip), %xmm9             #94.5
        vmovsd    .L_2il0floatpacket.17(%rip), %xmm8            #94.5
        vmovsd    .L_2il0floatpacket.10(%rip), %xmm7            #94.5
        vmovsd    .L_2il0floatpacket.11(%rip), %xmm6            #94.5
        vmovsd    .L_2il0floatpacket.12(%rip), %xmm5            #94.5
        vmovsd    .L_2il0floatpacket.2(%rip), %xmm4             #94.5
        vmovups   .L_2il0floatpacket.13(%rip), %zmm3            #94.5
        vmovdqu   .L_2il0floatpacket.14(%rip), %ymm2            #94.5
        vmovups   .L_2il0floatpacket.16(%rip), %zmm0            #94.19
        movq      %rsi, 2192(%rsp)                              #94.19[spill]
        movl      %edx, 2096(%rsp)                              #94.19[spill]
        movl      %ecx, 2112(%rsp)                              #94.19[spill]
        movq      %rsi, 2120(%rsp)                              #94.19[spill]
        movb      %dil, 2128(%rsp)                              #94.19[spill]
        movq      %r12, 2048(%rsp)                              #94.19[spill]
        movq      %r13, 2056(%rsp)                              #94.19[spill]
        movq      %r14, 2064(%rsp)                              #94.19[spill]
        movq      %r15, 2072(%rsp)                              #94.19[spill]
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x00, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x08, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x10, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x18, 0xff, 0xff, 0xff, 0x22
                                # LOE rbx
..B1.11:                        # Preds ..B1.81 ..B1.10
                                # Execution count [1.66e+01]
        movl      2112(%rsp), %eax                              #92.23[spill]
        vxorpd    %xmm1, %xmm1, %xmm1                           #92.23
        lea       1250(%rax), %r13d                             #92.23
        vcvtsi2sd %r13d, %xmm1, %xmm1                           #92.23
        vzeroupper                                              #92.23
        vmovsd    .L_2il0floatpacket.6(%rip), %xmm0             #92.23
..___tag_value_main.41:
#       pow(double, double)
        call      pow                                           #92.23
..___tag_value_main.42:
                                # LOE rbx r13d
..B1.12:                        # Preds ..B1.11
                                # Execution count [1.66e+01]
        movl      $64, %edi                                     #94.5
        lea       3753(%rbx), %r14                              #91.26
        shlq      $3, %r14                                      #94.5
        lea       30025(,%rbx,8), %rsi                          #94.5
..___tag_value_main.43:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #94.5
..___tag_value_main.44:
                                # LOE rax rbx r14 r13d
..B1.101:                       # Preds ..B1.12
                                # Execution count [1.66e+01]
        movq      %rax, %r12                                    #94.5
                                # LOE rbx r12 r14 r13d
..B1.13:                        # Preds ..B1.101
                                # Execution count [1.66e+01]
        movl      $64, %edi                                     #94.5
        movq      %r14, %rsi                                    #94.5
..___tag_value_main.45:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #94.5
..___tag_value_main.46:
                                # LOE rax rbx r12 r13d
..B1.102:                       # Preds ..B1.13
                                # Execution count [1.66e+01]
        movq      %rax, 2168(%rsp)                              #94.5[spill]
                                # LOE rbx r12 r13d
..B1.14:                        # Preds ..B1.102
                                # Execution count [1.49e+01]
        movslq    %r13d, %rdx                                   #94.5
        xorl      %esi, %esi                                    #94.5
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm0            #94.5
        movq      %r12, %rcx                                    #94.5
        vmovdqu   .L_2il0floatpacket.14(%rip), %ymm1            #94.5
        vmovups   .L_2il0floatpacket.13(%rip), %zmm2            #94.5
        movq      2192(%rsp), %r8                               #94.5[spill]
                                # LOE rdx rcx rbx rsi r8 r12 r13d ymm0 ymm1 zmm2
..B1.15:                        # Preds ..B1.36 ..B1.14
                                # Execution count [7.67e+01]
        testl     %r13d, %r13d                                  #94.5
        jle       ..B1.36       # Prob 50%                      #94.5
                                # LOE rdx rcx rbx rsi r8 r12 r13d ymm0 ymm1 zmm2
..B1.17:                        # Preds ..B1.15 ..B1.87
                                # Execution count [7.45e+01]
        cmpl      $16, %r13d                                    #94.5
        jl        ..B1.89       # Prob 10%                      #94.5
                                # LOE rdx rcx rbx rsi r8 r12 r13d ymm0 ymm1 zmm2
..B1.18:                        # Preds ..B1.17
                                # Execution count [7.45e+01]
        lea       8(%rcx), %r9                                  #94.5
        andq      $63, %r9                                      #94.5
        testl     $7, %r9d                                      #94.5
        je        ..B1.20       # Prob 50%                      #94.5
                                # LOE rdx rcx rbx rsi r8 r12 r9d r13d ymm0 ymm1 zmm2
..B1.19:                        # Preds ..B1.18
                                # Execution count [3.73e+01]
        xorl      %r9d, %r9d                                    #94.5
        jmp       ..B1.22       # Prob 100%                     #94.5
                                # LOE rdx rcx rbx rsi r8 r12 r9d r13d ymm0 ymm1 zmm2
..B1.20:                        # Preds ..B1.18
                                # Execution count [3.73e+01]
        testl     %r9d, %r9d                                    #94.5
        je        ..B1.22       # Prob 50%                      #94.5
                                # LOE rdx rcx rbx rsi r8 r12 r9d r13d ymm0 ymm1 zmm2
..B1.21:                        # Preds ..B1.20
                                # Execution count [4.14e+02]
        negl      %r9d                                          #94.5
        addl      $64, %r9d                                     #94.5
        shrl      $3, %r9d                                      #94.5
        cmpl      %r9d, %r13d                                   #94.5
        cmovl     %r13d, %r9d                                   #94.5
                                # LOE rdx rcx rbx rsi r8 r12 r9d r13d ymm0 ymm1 zmm2
..B1.22:                        # Preds ..B1.19 ..B1.21 ..B1.20
                                # Execution count [8.28e+01]
        movl      %r13d, %eax                                   #94.5
        subl      %r9d, %eax                                    #94.5
        andl      $15, %eax                                     #94.5
        negl      %eax                                          #92.23
        addl      %r13d, %eax                                   #92.23
        cmpl      $1, %r9d                                      #94.5
        jb        ..B1.28       # Prob 50%                      #94.5
                                # LOE rdx rcx rbx rsi r8 r12 eax r9d r13d ymm0 ymm1 zmm2
..B1.24:                        # Preds ..B1.22
                                # Execution count [7.45e+01]
        vmovdqa   %ymm0, %ymm4                                  #94.5
        xorl      %r14d, %r14d                                  #94.5
        vpbroadcastd %r9d, %ymm3                                #94.5
        movq      %rcx, %r10                                    #94.5
        movslq    %r9d, %r11                                    #94.5
                                # LOE rdx rcx rbx rsi r8 r10 r11 r12 r14 eax r9d r13d ymm0 ymm1 ymm3 ymm4 zmm2
..B1.25:                        # Preds ..B1.25 ..B1.24
                                # Execution count [4.14e+02]
        vpcmpgtd  %ymm4, %ymm3, %k1                             #94.5
        addq      $8, %r14                                      #94.5
        vpaddd    %ymm1, %ymm4, %ymm4                           #94.5
        vmovupd   %zmm2, 8(%r10){%k1}                           #94.5
        addq      $64, %r10                                     #94.5
        cmpq      %r11, %r14                                    #94.5
        jb        ..B1.25       # Prob 82%                      #94.5
                                # LOE rdx rcx rbx rsi r8 r10 r11 r12 r14 eax r9d r13d ymm0 ymm1 ymm3 ymm4 zmm2
..B1.26:                        # Preds ..B1.25
                                # Execution count [7.45e+01]
        cmpl      %r9d, %r13d                                   #94.5
        je        ..B1.87       # Prob 10%                      #94.5
                                # LOE rdx rcx rbx rsi r8 r12 eax r9d r13d ymm0 ymm1 zmm2
..B1.28:                        # Preds ..B1.26 ..B1.22
                                # Execution count [4.14e+02]
        lea       16(%r9), %r10d                                #94.5
        cmpl      %r10d, %eax                                   #94.5
        jl        ..B1.32       # Prob 50%                      #94.5
                                # LOE rdx rcx rbx rsi r8 r12 eax r9d r13d ymm0 ymm1 zmm2
..B1.29:                        # Preds ..B1.28
                                # Execution count [7.45e+01]
        movslq    %r9d, %r9                                     #94.5
        movslq    %eax, %r10                                    #94.5
        lea       (%rcx,%r9,8), %r11                            #94.5
                                # LOE rdx rcx rbx rsi r8 r9 r10 r11 r12 eax r13d ymm0 ymm1 zmm2
..B1.30:                        # Preds ..B1.30 ..B1.29
                                # Execution count [4.14e+02]
        addq      $16, %r9                                      #94.5
        vmovupd   %zmm2, 8(%r11)                                #94.5
        vmovupd   %zmm2, 72(%r11)                               #94.5
        addq      $128, %r11                                    #94.5
        cmpq      %r10, %r9                                     #94.5
        jb        ..B1.30       # Prob 82%                      #94.5
                                # LOE rdx rcx rbx rsi r8 r9 r10 r11 r12 eax r13d ymm0 ymm1 zmm2
..B1.32:                        # Preds ..B1.30 ..B1.28 ..B1.89
                                # Execution count [8.28e+01]
        lea       1(%rax), %r9d                                 #94.5
        cmpl      %r13d, %r9d                                   #94.5
        ja        ..B1.36       # Prob 50%                      #94.5
                                # LOE rdx rcx rbx rsi r8 r12 eax r13d ymm0 ymm1 zmm2
..B1.33:                        # Preds ..B1.32
                                # Execution count [7.45e+01]
        movslq    %eax, %r9                                     #94.5
        negl      %eax                                          #94.5
        addl      %r13d, %eax                                   #94.5
        xorl      %r10d, %r10d                                  #94.5
        vpbroadcastd %eax, %ymm3                                #94.5
        vmovdqa   %ymm0, %ymm4                                  #94.5
        lea       (%rcx,%r9,8), %rax                            #94.5
        negq      %r9                                           #94.5
        addq      %rdx, %r9                                     #94.5
                                # LOE rax rdx rcx rbx rsi r8 r9 r10 r12 r13d ymm0 ymm1 ymm3 ymm4 zmm2
..B1.34:                        # Preds ..B1.34 ..B1.33
                                # Execution count [4.14e+02]
        vpcmpgtd  %ymm4, %ymm3, %k1                             #94.5
        vpaddd    %ymm1, %ymm4, %ymm4                           #94.5
        vmovupd   %zmm2, 8(%rax,%r10,8){%k1}                    #94.5
        addq      $8, %r10                                      #94.5
        cmpq      %r9, %r10                                     #94.5
        jb        ..B1.34       # Prob 82%                      #94.5
                                # LOE rax rdx rcx rbx rsi r8 r9 r10 r12 r13d ymm0 ymm1 ymm3 ymm4 zmm2
..B1.36:                        # Preds ..B1.34 ..B1.15 ..B1.32
                                # Execution count [7.54e+01]
        incq      %rsi                                          #94.5
        lea       10008(%rcx,%r8), %rcx                         #94.5
        cmpq      $3, %rsi                                      #94.5
        jb        ..B1.15       # Prob 82%                      #94.5
                                # LOE rdx rcx rbx rsi r8 r12 r13d ymm0 ymm1 zmm2
..B1.38:                        # Preds ..B1.87 ..B1.36
                                # Execution count [1.66e+01]
        vzeroupper                                              #94.5
        lea       2144(%rsp), %rdi                              #94.5
        movl      $1, %r15d                                     #94.5
        lea       2152(%rsp), %rsi                              #94.5
..___tag_value_main.49:
#       timing(double *, double *)
        call      timing                                        #94.5
..___tag_value_main.50:
                                # LOE rbx r12 r15d
..B1.39:                        # Preds ..B1.38
                                # Execution count [0.00e+00]
        movq      2120(%rsp), %rcx                              #91.26[spill]
        movq      %rcx, %rax                                    #91.26
        shlq      $6, %rax                                      #91.26
        xorl      %r13d, %r13d                                  #94.5
        negq      %rax                                          #91.26
        movq      2168(%rsp), %r9                               #94.5[spill]
        movq      2192(%rsp), %r8                               #94.5[spill]
        shlq      $10, %rcx                                     #91.26
        negq      %rcx                                          #91.26
        lea       1248(%rax), %r14                              #94.5
        addq      $1249, %rax                                   #94.5
        addq      %r12, %rcx                                    #94.5
        movq      %rcx, 2184(%rsp)                              #94.5[spill]
        addq      %r9, %r8                                      #94.5
        movq      %r8, 2176(%rsp)                               #94.5[spill]
        movq      %rbx, 2104(%rsp)                              #94.5[spill]
        movq      %rax, %rbx                                    #94.5
                                # LOE rbx r12 r14 r13d r15d
..B1.40:                        # Preds ..B1.70 ..B1.39 ..B1.65
                                # Execution count [4.60e+02]
        vmovsd    8(%r12), %xmm0                                #94.5
        vxorpd    %xmm1, %xmm1, %xmm1                           #94.5
        vcomisd   %xmm1, %xmm0                                  #94.5
        jbe       ..B1.42       # Prob 78%                      #94.5
                                # LOE rbx r12 r14 r13d r15d
..B1.41:                        # Preds ..B1.40
                                # Execution count [1.01e+02]
        vzeroupper                                              #94.5
        movq      2168(%rsp), %rdi                              #94.5[spill]
..___tag_value_main.57:
#       dummy(double *)
        call      dummy                                         #94.5
..___tag_value_main.58:
                                # LOE rbx r12 r14 r13d r15d
..B1.42:                        # Preds ..B1.40 ..B1.41
                                # Execution count [2.30e+03]
        cmpq      $1, %rbx                                      #94.5
        jle       ..B1.65       # Prob 50%                      #94.5
                                # LOE rbx r12 r14 r13d r15d
..B1.43:                        # Preds ..B1.42
                                # Execution count [2.07e+03]
        cmpq      $32, %r14                                     #94.5
        jl        ..B1.65       # Prob 10%                      #94.5
                                # LOE rbx r12 r14 r13d r15d
..B1.46:                        # Preds ..B1.43
                                # Execution count [2.07e+03]
        vmovups   .L_2il0floatpacket.16(%rip), %zmm4            #94.5
        xorl      %ecx, %ecx                                    #94.5
        movq      2176(%rsp), %r9                               #94.5[spill]
        movq      2184(%rsp), %r10                              #94.5[spill]
        movq      2192(%rsp), %r11                              #94.5[spill]
                                # LOE rcx rbx r9 r10 r11 r12 r14 r13d r15d zmm4
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
# LLVM-MCA-BEGIN
..B1.47:                        # Preds ..B1.63 ..B1.46
                                # Execution count [1.15e+04]
        lea       (%r12,%r11), %r8                              #94.5
                                # LOE rcx rbx r8 r9 r10 r11 r12 r14 r13d r15d zmm4
..B1.48:                        # Preds ..B1.47
                                # Execution count [1.73e+04]
        vmovupd   10032(%r8,%rcx,8), %zmm2                      #94.5
        vmovupd   10016(%r8,%rcx,8), %zmm0                      #94.5
                                # LOE rcx rbx r9 r10 r11 r12 r14 r13d r15d zmm0 zmm2 zmm4
..B1.51:                        # Preds ..B1.48
                                # Execution count [1.15e+04]
        lea       (%r12,%r11), %r8                              #94.5
        vaddpd    16(%r12,%rcx,8), %zmm0, %zmm0                 #94.5
        vaddpd    20032(%r10,%rcx,8), %zmm0, %zmm1              #94.5
        vaddpd    %zmm2, %zmm1, %zmm2                           #94.5
        vmulpd    %zmm2, %zmm4, %zmm3                           #94.5
        vmovupd   %zmm3, 10016(%r9,%rcx,8)                      #94.5
                                # LOE rcx rbx r8 r9 r10 r11 r12 r14 r13d r15d zmm4
..B1.52:                        # Preds ..B1.51
                                # Execution count [1.73e+04]
        vmovupd   10096(%r8,%rcx,8), %zmm2                      #94.5
        vmovupd   10080(%r8,%rcx,8), %zmm0                      #94.5
                                # LOE rcx rbx r9 r10 r11 r12 r14 r13d r15d zmm0 zmm2 zmm4
..B1.55:                        # Preds ..B1.52
                                # Execution count [1.15e+04]
        lea       (%r12,%r11), %r8                              #94.5
        vaddpd    80(%r12,%rcx,8), %zmm0, %zmm0                 #94.5
        vaddpd    20096(%r10,%rcx,8), %zmm0, %zmm1              #94.5
        vaddpd    %zmm2, %zmm1, %zmm2                           #94.5
        vmulpd    %zmm2, %zmm4, %zmm3                           #94.5
        vmovupd   %zmm3, 10080(%r9,%rcx,8)                      #94.5
                                # LOE rcx rbx r8 r9 r10 r11 r12 r14 r13d r15d zmm4
..B1.56:                        # Preds ..B1.55
                                # Execution count [1.73e+04]
        vmovupd   10160(%r8,%rcx,8), %zmm2                      #94.5
        vmovupd   10144(%r8,%rcx,8), %zmm0                      #94.5
                                # LOE rcx rbx r9 r10 r11 r12 r14 r13d r15d zmm0 zmm2 zmm4
..B1.59:                        # Preds ..B1.56
                                # Execution count [1.15e+04]
        lea       (%r12,%r11), %r8                              #94.5
        vaddpd    144(%r12,%rcx,8), %zmm0, %zmm0                #94.5
        vaddpd    20160(%r10,%rcx,8), %zmm0, %zmm1              #94.5
        vaddpd    %zmm2, %zmm1, %zmm2                           #94.5
        vmulpd    %zmm2, %zmm4, %zmm3                           #94.5
        vmovupd   %zmm3, 10144(%r9,%rcx,8)                      #94.5
                                # LOE rcx rbx r8 r9 r10 r11 r12 r14 r13d r15d zmm4
..B1.60:                        # Preds ..B1.59
                                # Execution count [1.73e+04]
        vmovupd   10224(%r8,%rcx,8), %zmm2                      #94.5
        vmovupd   10208(%r8,%rcx,8), %zmm0                      #94.5
                                # LOE rcx rbx r9 r10 r11 r12 r14 r13d r15d zmm0 zmm2 zmm4
..B1.63:                        # Preds ..B1.60
                                # Execution count [1.15e+04]
        vaddpd    208(%r12,%rcx,8), %zmm0, %zmm0                #94.5
        vaddpd    20224(%r10,%rcx,8), %zmm0, %zmm1              #94.5
        vaddpd    %zmm2, %zmm1, %zmm2                           #94.5
        vmulpd    %zmm2, %zmm4, %zmm3                           #94.5
        vmovupd   %zmm3, 10208(%r9,%rcx,8)                      #94.5
        addq      $32, %rcx                                     #94.5
        cmpq      %r14, %rcx                                    #94.5
        jb        ..B1.47       # Prob 82%                      #94.5
# LLVM-MCA-END
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
                                # LOE rcx rbx r9 r10 r11 r12 r14 r13d r15d zmm4
..B1.65:                        # Preds ..B1.63 ..B1.42 ..B1.43
                                # Execution count [1.89e+03]
        incl      %r13d                                         #94.5
        cmpl      %r15d, %r13d                                  #94.5
        jb        ..B1.40       # Prob 95%                      #94.5
                                # LOE rbx r12 r14 r13d r15d
..B1.67:                        # Preds ..B1.65 ..B1.70
                                # Execution count [9.20e+01]: Infreq
        vzeroupper                                              #94.5
        lea       2160(%rsp), %rdi                              #94.5
        lea       2152(%rsp), %rsi                              #94.5
..___tag_value_main.63:
#       timing(double *, double *)
        call      timing                                        #94.5
..___tag_value_main.64:
                                # LOE rbx r12 r14 r15d
..B1.68:                        # Preds ..B1.67
                                # Execution count [9.20e+01]: Infreq
        vmovsd    2160(%rsp), %xmm16                            #94.5
        addl      %r15d, %r15d                                  #94.5
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm0             #94.5
        vsubsd    2144(%rsp), %xmm16, %xmm1                     #94.5
        vcomisd   %xmm1, %xmm0                                  #94.5
        jbe       ..B1.72       # Prob 18%                      #94.5
                                # LOE rbx r12 r14 r15d xmm1
..B1.69:                        # Preds ..B1.68
                                # Execution count [7.55e+01]: Infreq
        lea       2144(%rsp), %rdi                              #94.5
        lea       2152(%rsp), %rsi                              #94.5
..___tag_value_main.65:
#       timing(double *, double *)
        call      timing                                        #94.5
..___tag_value_main.66:
                                # LOE rbx r12 r14 r15d
..B1.70:                        # Preds ..B1.69
                                # Execution count [7.55e+01]: Infreq
        xorl      %r13d, %r13d                                  #94.5
        testl     %r15d, %r15d                                  #94.5
        jle       ..B1.67       # Prob 10%                      #94.5
        jmp       ..B1.40       # Prob 100%                     #94.5
                                # LOE rbx r12 r14 r13d r15d
..B1.72:                        # Preds ..B1.68
                                # Execution count [1.66e+01]: Infreq
        movl      %r15d, %eax                                   #94.5
        lea       1024(%rsp), %rdi                              #94.5
        shrl      $31, %eax                                     #94.5
        movl      $1024, %esi                                   #94.5
        addl      %eax, %r15d                                   #94.5
        vmovsd    %xmm1, 1112(%rdi)                             #[spill]
        movq      1080(%rdi), %rbx                              #[spill]
        sarl      $1, %r15d                                     #94.5
..___tag_value_main.69:
#       gethostname(char *, size_t)
        call      gethostname                                   #94.5
..___tag_value_main.70:
                                # LOE rbx r12 r14 r15d
..B1.73:                        # Preds ..B1.72
                                # Execution count [1.66e+01]: Infreq
        movl      $.L_2__STRING.0, %esi                         #94.5
        lea       1024(%rsp), %rdi                              #94.5
..___tag_value_main.71:
#       strcmp(const char *, const char *)
        call      strcmp                                        #94.5
..___tag_value_main.72:
                                # LOE rbx r12 r13 r14 eax r15d
..B1.103:                       # Preds ..B1.73
                                # Execution count [1.66e+01]: Infreq
        testl     %eax, %eax                                    #94.5
        je        ..B1.85       # Prob 9%                       #94.5
                                # LOE rbx r12 r13 r14 r15d
..B1.74:                        # Preds ..B1.103
                                # Execution count [1.49e+01]: Infreq
        movl      $.L_2__STRING.1, %esi                         #94.5
        lea       1024(%rsp), %rdi                              #94.5
..___tag_value_main.73:
#       strcmp(const char *, const char *)
        call      strcmp                                        #94.5
..___tag_value_main.74:
                                # LOE rbx r12 r13 r14 eax r15d
..B1.104:                       # Preds ..B1.74
                                # Execution count [1.49e+01]: Infreq
        testl     %eax, %eax                                    #94.5
        je        ..B1.83       # Prob 9%                       #94.5
                                # LOE rbx r12 r13 r14 r15d
..B1.75:                        # Preds ..B1.104
                                # Execution count [1.35e+01]: Infreq
        movl      $.L_2__STRING.2, %esi                         #94.5
        lea       1024(%rsp), %rdi                              #94.5
..___tag_value_main.75:
#       strcmp(const char *, const char *)
        call      strcmp                                        #94.5
..___tag_value_main.76:
                                # LOE rbx r12 r13 r14 eax r15d
..B1.105:                       # Preds ..B1.75
                                # Execution count [1.35e+01]: Infreq
        testl     %eax, %eax                                    #94.5
        jne       ..B1.78       # Prob 78%                      #94.5
                                # LOE rbx r12 r13 r14 r15d
..B1.76:                        # Preds ..B1.105
                                # Execution count [2.96e+00]: Infreq
        vmovsd    2080(%rsp), %xmm0                             #94.5[spill]
        vmovsd    2088(%rsp), %xmm1                             #94.5[spill]
..___tag_value_main.78:
#       pow(double, double)
        call      pow                                           #94.5
..___tag_value_main.79:
                                # LOE rbx r12 r14 r15d xmm0
..B1.77:                        # Preds ..B1.76
                                # Execution count [2.96e+00]: Infreq
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #94.5
        vcvttsd2si %xmm0, %r13                                  #94.5
                                # LOE rbx r12 r13 r14 r15d
..B1.78:                        # Preds ..B1.86 ..B1.84 ..B1.77 ..B1.105
                                # Execution count [1.66e+01]: Infreq
        movslq    %r15d, %rcx                                   #94.5
        vxorpd    %xmm16, %xmm16, %xmm16                        #94.5
        imulq     %r14, %rcx                                    #94.5
        vcvtsi2sdq %rcx, %xmm16, %xmm16                         #94.5
        vmovsd    .L_2il0floatpacket.17(%rip), %xmm5            #94.5
        vxorpd    %xmm13, %xmm13, %xmm13                        #94.5
        vmovsd    2136(%rsp), %xmm1                             #94.5[spill]
        vxorpd    %xmm19, %xmm19, %xmm19                        #94.5
        vdivsd    %xmm1, %xmm5, %xmm11                          #94.5
        vmulsd    .L_2il0floatpacket.10(%rip), %xmm16, %xmm17   #94.5
        vxorpd    %xmm15, %xmm15, %xmm15                        #94.5
        vcvtsi2sd %r15d, %xmm13, %xmm13                         #94.5
        vcvtsi2sdq %r13, %xmm19, %xmm19                         #94.5
        vdivsd    %xmm17, %xmm1, %xmm18                         #94.5
        vmulsd    .L_2il0floatpacket.9(%rip), %xmm11, %xmm7     #94.5
        vxorpd    %xmm6, %xmm6, %xmm6                           #94.5
        vcvtsi2sdq %r14, %xmm15, %xmm15                         #94.5
        vcvtsi2sd 2096(%rsp), %xmm6, %xmm6                      #94.5[spill]
        vmulsd    .L_2il0floatpacket.11(%rip), %xmm11, %xmm9    #94.5
        vmulsd    .L_2il0floatpacket.12(%rip), %xmm11, %xmm12   #94.5
        vmulsd    %xmm13, %xmm7, %xmm8                          #94.5
        vmulsd    %xmm13, %xmm9, %xmm10                         #94.5
        vmulsd    %xmm13, %xmm12, %xmm14                        #94.5
        vmulsd    .L_2il0floatpacket.8(%rip), %xmm6, %xmm0      #94.5
        vmulsd    %xmm15, %xmm8, %xmm2                          #94.5
        vmulsd    %xmm15, %xmm10, %xmm4                         #94.5
        vmulsd    %xmm15, %xmm14, %xmm5                         #94.5
        vmulsd    %xmm19, %xmm18, %xmm3                         #94.5
        movl      $.L_2__STRING.3, %edi                         #94.5
        movl      %r15d, %esi                                   #94.5
        movq      %r14, %rdx                                    #94.5
        movl      $6, %eax                                      #94.5
..___tag_value_main.83:
#       printf(const char *__restrict__, ...)
        call      printf                                        #94.5
..___tag_value_main.84:
                                # LOE rbx r12
..B1.79:                        # Preds ..B1.78
                                # Execution count [1.66e+01]: Infreq
        movq      %r12, %rdi                                    #94.5
..___tag_value_main.85:
#       free(void *)
        call      free                                          #94.5
..___tag_value_main.86:
                                # LOE rbx
..B1.80:                        # Preds ..B1.79
                                # Execution count [1.66e+01]: Infreq
        movq      2168(%rsp), %rdi                              #94.5[spill]
..___tag_value_main.87:
#       free(void *)
        call      free                                          #94.5
..___tag_value_main.88:
                                # LOE rbx
..B1.81:                        # Preds ..B1.80
                                # Execution count [1.66e+01]: Infreq
        movb      2128(%rsp), %al                               #91.3[spill]
        addq      $-192, %rbx                                   #91.3
        incb      %al                                           #91.3
        addq      $-512, 2192(%rsp)                             #91.3[spill]
        incq      2120(%rsp)                                    #91.3[spill]
        addl      $-64, 2112(%rsp)                              #91.3[spill]
        addl      $-192, 2096(%rsp)                             #91.3[spill]
        movb      %al, 2128(%rsp)                               #91.3[spill]
        cmpb      $17, %al                                      #91.3
        jb        ..B1.11       # Prob 93%                      #91.3
                                # LOE rbx
..B1.82:                        # Preds ..B1.81
                                # Execution count [1.00e+00]: Infreq
        movq      2048(%rsp), %r12                              #[spill]
	.cfi_restore 12
        xorl      %eax, %eax                                    #96.10
        movq      2056(%rsp), %r13                              #[spill]
	.cfi_restore 13
        movq      2064(%rsp), %r14                              #[spill]
	.cfi_restore 14
        movq      2072(%rsp), %r15                              #[spill]
	.cfi_restore 15
        addq      $2296, %rsp                                   #96.10
	.cfi_restore 3
        popq      %rbx                                          #96.10
        movq      %rbp, %rsp                                    #96.10
        popq      %rbp                                          #96.10
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #96.10
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x00, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x08, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x10, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x18, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.83:                        # Preds ..B1.104
                                # Execution count [1.48e+00]: Infreq
        vmovsd    2080(%rsp), %xmm0                             #94.5[spill]
        vmovsd    2088(%rsp), %xmm1                             #94.5[spill]
..___tag_value_main.114:
#       pow(double, double)
        call      pow                                           #94.5
..___tag_value_main.115:
                                # LOE rbx r12 r14 r15d xmm0
..B1.84:                        # Preds ..B1.83
                                # Execution count [1.48e+00]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #94.5
        vcvttsd2si %xmm0, %r13                                  #94.5
        jmp       ..B1.78       # Prob 100%                     #94.5
                                # LOE rbx r12 r13 r14 r15d
..B1.85:                        # Preds ..B1.103
                                # Execution count [1.64e+00]: Infreq
        vmovsd    2080(%rsp), %xmm0                             #94.5[spill]
        vmovsd    2088(%rsp), %xmm1                             #94.5[spill]
..___tag_value_main.118:
#       pow(double, double)
        call      pow                                           #94.5
..___tag_value_main.119:
                                # LOE rbx r12 r14 r15d xmm0
..B1.86:                        # Preds ..B1.85
                                # Execution count [1.64e+00]: Infreq
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm0, %xmm0      #94.5
        vcvttsd2si %xmm0, %r13                                  #94.5
        jmp       ..B1.78       # Prob 100%                     #94.5
                                # LOE rbx r12 r13 r14 r15d
..B1.87:                        # Preds ..B1.26
                                # Execution count [7.45e+00]: Infreq
        incq      %rsi                                          #94.5
        lea       10008(%rcx,%r8), %rcx                         #94.5
        cmpq      $3, %rsi                                      #94.5
        jb        ..B1.17       # Prob 82%                      #94.5
        jmp       ..B1.38       # Prob 100%                     #94.5
                                # LOE rdx rcx rbx rsi r8 r12 r13d ymm0 ymm1 zmm2
..B1.89:                        # Preds ..B1.17
                                # Execution count [7.45e+00]: Infreq
        xorl      %eax, %eax                                    #94.5
        jmp       ..B1.32       # Prob 100%                     #94.5
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
                                # LOE rdx rcx rbx rsi r8 r12 eax r13d ymm0 ymm1 zmm2
..B1.90:                        # Preds ..B1.98
                                # Execution count [8.91e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #87.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #87.3
        vmovsd    %xmm0, 2080(%rsp)                             #87.3[spill]
        vmovsd    %xmm1, 2088(%rsp)                             #87.3[spill]
..___tag_value_main.126:
#       pow(double, double)
        call      pow                                           #87.3
..___tag_value_main.127:
                                # LOE r12 r13 r14 r15 xmm0
..B1.91:                        # Preds ..B1.90
                                # Execution count [8.91e-02]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #87.3
        vcvttsd2si %xmm0, %rbx                                  #87.3
        jmp       ..B1.7        # Prob 100%                     #87.3
                                # LOE rbx r12 r13 r14 r15
..B1.92:                        # Preds ..B1.97
                                # Execution count [9.88e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #87.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #87.3
        vmovsd    %xmm0, 2080(%rsp)                             #87.3[spill]
        vmovsd    %xmm1, 2088(%rsp)                             #87.3[spill]
..___tag_value_main.130:
#       pow(double, double)
        call      pow                                           #87.3
..___tag_value_main.131:
                                # LOE r12 r13 r14 r15 xmm0
..B1.93:                        # Preds ..B1.92
                                # Execution count [9.88e-02]: Infreq
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm0, %xmm0      #87.3
        vcvttsd2si %xmm0, %rbx                                  #87.3
        jmp       ..B1.7        # Prob 100%                     #87.3
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
..___tag_value_getFreq.134:
..L135:
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
..___tag_value_getFreq.141:
#       strcmp(const char *, const char *)
        call      strcmp                                        #12.7
..___tag_value_getFreq.142:
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
..___tag_value_getFreq.143:
#       strcmp(const char *, const char *)
        call      strcmp                                        #16.7
..___tag_value_getFreq.144:
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
..___tag_value_getFreq.145:
#       strcmp(const char *, const char *)
        call      strcmp                                        #20.7
..___tag_value_getFreq.146:
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
..___tag_value_getFreq.155:
#       pow(double, double)
        call      pow                                           #21.26
..___tag_value_getFreq.156:
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
..___tag_value_getFreq.165:
#       pow(double, double)
        call      pow                                           #17.26
..___tag_value_getFreq.166:
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
..___tag_value_getFreq.175:
#       pow(double, double)
        call      pow                                           #13.26
..___tag_value_getFreq.176:
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
.L_2__routine_start_stencil_2:
# -- Begin  stencil
	.text
# mark_begin;
       .align    16,0x90
	.globl stencil
# --- stencil(int, int, double)
stencil:
# parameter 1: %edi
# parameter 2: %esi
# parameter 3: %xmm0
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_stencil.183:
..L184:
                                                        #27.49
        pushq     %rbp                                          #27.49
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #27.49
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-64, %rsp                                    #27.49
        pushq     %r12                                          #27.49
        pushq     %r13                                          #27.49
        pushq     %r14                                          #27.49
        pushq     %r15                                          #27.49
        pushq     %rbx                                          #27.49
        subq      $1112, %rsp                                   #27.49
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
        movslq    %esi, %r12                                    #27.49
        movslq    %edi, %r14                                    #27.49
        movl      %esi, 1032(%rsp)                              #27.49[spill]
        movl      %edi, 1024(%rsp)                              #27.49[spill]
        movl      $64, %edi                                     #31.7
        vmovsd    %xmm0, (%rsp)                                 #27.49[spill]
        lea       1(%r12), %rax                                 #29.29
        imulq     %r14, %rax                                    #30.24
        lea       1(,%rax,8), %rsi                              #31.7
        lea       (,%rax,8), %rbx                               #31.30
..___tag_value_stencil.196:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #31.7
..___tag_value_stencil.197:
                                # LOE rax rbx r12 r14
..B3.91:                        # Preds ..B3.1
                                # Execution count [1.00e+00]
        movq      %rax, %r15                                    #31.7
                                # LOE rbx r12 r14 r15
..B3.2:                         # Preds ..B3.91
                                # Execution count [1.00e+00]
        movl      $64, %edi                                     #32.7
        movq      %rbx, %rsi                                    #32.7
..___tag_value_stencil.198:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #32.7
..___tag_value_stencil.199:
                                # LOE rax r12 r14 r15
..B3.92:                        # Preds ..B3.2
                                # Execution count [1.00e+00]
        movq      %rax, %rbx                                    #32.7
                                # LOE rbx r12 r14 r15
..B3.3:                         # Preds ..B3.92
                                # Execution count [1.00e+00]
        xorl      %r8d, %r8d                                    #37.3
        testq     %r14, %r14                                    #37.18
        jle       ..B3.99       # Prob 9%                       #37.18
                                # LOE rbx r8 r12 r14 r15
..B3.4:                         # Preds ..B3.3
                                # Execution count [9.00e-01]
        vmovups   .L_2il0floatpacket.13(%rip), %zmm2            #39.29
        lea       8(,%r12,8), %rax                              #39.7
        vmovdqu   .L_2il0floatpacket.14(%rip), %ymm1            #38.5
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm0            #38.5
        movq      %rax, 128(%rsp)                               #39.7[spill]
        movq      %r15, %rax                                    #37.3
        movq      128(%rsp), %rsi                               #37.3[spill]
        movl      1032(%rsp), %ecx                              #37.3[spill]
                                # LOE rax rbx rsi r8 r12 r14 r15 ecx ymm0 ymm1 zmm2
..B3.5:                         # Preds ..B3.23 ..B3.4
                                # Execution count [5.00e+00]
        testq     %r12, %r12                                    #38.20
        jle       ..B3.23       # Prob 50%                      #38.20
                                # LOE rax rbx rsi r8 r12 r14 r15 ecx ymm0 ymm1 zmm2
..B3.6:                         # Preds ..B3.5
                                # Execution count [4.50e+00]
        cmpl      $16, %ecx                                     #38.5
        jl        ..B3.88       # Prob 10%                      #38.5
                                # LOE rax rbx rsi r8 r12 r14 r15 ecx ymm0 ymm1 zmm2
..B3.7:                         # Preds ..B3.6
                                # Execution count [4.50e+00]
        lea       8(%rax), %r13                                 #39.7
        andq      $63, %r13                                     #38.5
        testl     $7, %r13d                                     #38.5
        je        ..B3.9        # Prob 50%                      #38.5
                                # LOE rax rbx rsi r8 r12 r14 r15 ecx r13d ymm0 ymm1 zmm2
..B3.8:                         # Preds ..B3.7
                                # Execution count [2.25e+00]
        xorl      %r13d, %r13d                                  #38.5
        jmp       ..B3.11       # Prob 100%                     #38.5
                                # LOE rax rbx rsi r8 r12 r14 r15 ecx r13d ymm0 ymm1 zmm2
..B3.9:                         # Preds ..B3.7
                                # Execution count [2.25e+00]
        testl     %r13d, %r13d                                  #38.5
        je        ..B3.11       # Prob 50%                      #38.5
                                # LOE rax rbx rsi r8 r12 r14 r15 ecx r13d ymm0 ymm1 zmm2
..B3.10:                        # Preds ..B3.9
                                # Execution count [2.50e+01]
        negl      %r13d                                         #38.5
        addl      $64, %r13d                                    #38.5
        shrl      $3, %r13d                                     #38.5
        cmpl      %r13d, %ecx                                   #38.5
        cmovl     %ecx, %r13d                                   #38.5
                                # LOE rax rbx rsi r8 r12 r14 r15 ecx r13d ymm0 ymm1 zmm2
..B3.11:                        # Preds ..B3.8 ..B3.10 ..B3.9
                                # Execution count [5.00e+00]
        movl      %ecx, %edx                                    #38.5
        subl      %r13d, %edx                                   #38.5
        andl      $15, %edx                                     #38.5
        negl      %edx                                          #38.5
        addl      %ecx, %edx                                    #38.5
        cmpl      $1, %r13d                                     #38.5
        jb        ..B3.15       # Prob 50%                      #38.5
                                # LOE rax rbx rsi r8 r12 r14 r15 edx ecx r13d ymm0 ymm1 zmm2
..B3.12:                        # Preds ..B3.11
                                # Execution count [4.50e+00]
        vmovdqa   %ymm0, %ymm4                                  #38.5
        xorl      %r11d, %r11d                                  #38.5
        vpbroadcastd %r13d, %ymm3                               #38.5
        movq      %rax, %r9                                     #38.5
        movslq    %r13d, %r10                                   #38.5
                                # LOE rax rbx rsi r8 r9 r10 r11 r12 r14 r15 edx ecx r13d ymm0 ymm1 ymm3 ymm4 zmm2
..B3.13:                        # Preds ..B3.13 ..B3.12
                                # Execution count [2.50e+01]
        vpcmpgtd  %ymm4, %ymm3, %k1                             #38.5
        addq      $8, %r11                                      #38.5
        vpaddd    %ymm1, %ymm4, %ymm4                           #38.5
        vmovupd   %zmm2, 8(%r9){%k1}                            #39.7
        addq      $64, %r9                                      #38.5
        cmpq      %r10, %r11                                    #38.5
        jb        ..B3.13       # Prob 82%                      #38.5
                                # LOE rax rbx rsi r8 r9 r10 r11 r12 r14 r15 edx ecx r13d ymm0 ymm1 ymm3 ymm4 zmm2
..B3.14:                        # Preds ..B3.13
                                # Execution count [4.50e+00]
        cmpl      %r13d, %ecx                                   #38.5
        je        ..B3.23       # Prob 10%                      #38.5
                                # LOE rax rbx rsi r8 r12 r14 r15 edx ecx r13d ymm0 ymm1 zmm2
..B3.15:                        # Preds ..B3.11 ..B3.14
                                # Execution count [2.50e+01]
        lea       16(%r13), %r9d                                #38.5
        cmpl      %r9d, %edx                                    #38.5
        jl        ..B3.19       # Prob 50%                      #38.5
                                # LOE rax rbx rsi r8 r12 r14 r15 edx ecx r13d ymm0 ymm1 zmm2
..B3.16:                        # Preds ..B3.15
                                # Execution count [4.50e+00]
        movslq    %r13d, %r13                                   #38.5
        movslq    %edx, %r9                                     #38.5
        lea       (%rax,%r13,8), %r10                           #38.5
                                # LOE rax rbx rsi r8 r9 r10 r12 r13 r14 r15 edx ecx ymm0 ymm1 zmm2
..B3.17:                        # Preds ..B3.17 ..B3.16
                                # Execution count [2.50e+01]
        addq      $16, %r13                                     #38.5
        vmovupd   %zmm2, 8(%r10)                                #39.7
        vmovupd   %zmm2, 72(%r10)                               #39.7
        addq      $128, %r10                                    #38.5
        cmpq      %r9, %r13                                     #38.5
        jb        ..B3.17       # Prob 82%                      #38.5
                                # LOE rax rbx rsi r8 r9 r10 r12 r13 r14 r15 edx ecx ymm0 ymm1 zmm2
..B3.19:                        # Preds ..B3.17 ..B3.15 ..B3.88
                                # Execution count [5.00e+00]
        lea       1(%rdx), %r9d                                 #38.5
        cmpl      %ecx, %r9d                                    #38.5
        ja        ..B3.23       # Prob 50%                      #38.5
                                # LOE rax rbx rsi r8 r12 r14 r15 edx ecx ymm0 ymm1 zmm2
..B3.20:                        # Preds ..B3.19
                                # Execution count [4.50e+00]
        movslq    %edx, %r9                                     #35.7
        negl      %edx                                          #38.5
        addl      %ecx, %edx                                    #38.5
        xorl      %r10d, %r10d                                  #38.5
        vpbroadcastd %edx, %ymm3                                #38.5
        vmovdqa   %ymm0, %ymm4                                  #38.5
        lea       (%rax,%r9,8), %rdx                            #39.7
        negq      %r9                                           #38.5
        addq      %r12, %r9                                     #38.5
                                # LOE rax rdx rbx rsi r8 r9 r10 r12 r14 r15 ecx ymm0 ymm1 ymm3 ymm4 zmm2
..B3.21:                        # Preds ..B3.21 ..B3.20
                                # Execution count [2.50e+01]
        vpcmpgtd  %ymm4, %ymm3, %k1                             #38.5
        vpaddd    %ymm1, %ymm4, %ymm4                           #38.5
        vmovupd   %zmm2, 8(%rdx,%r10,8){%k1}                    #39.7
        addq      $8, %r10                                      #38.5
        cmpq      %r9, %r10                                     #38.5
        jb        ..B3.21       # Prob 82%                      #38.5
                                # LOE rax rdx rbx rsi r8 r9 r10 r12 r14 r15 ecx ymm0 ymm1 ymm3 ymm4 zmm2
..B3.23:                        # Preds ..B3.21 ..B3.5 ..B3.14 ..B3.19
                                # Execution count [5.00e+00]
        incq      %r8                                           #37.3
        addq      %rsi, %rax                                    #37.3
        cmpq      %r14, %r8                                     #37.3
        jb        ..B3.5        # Prob 82%                      #37.3
                                # LOE rax rbx rsi r8 r12 r14 r15 ecx ymm0 ymm1 zmm2
..B3.25:                        # Preds ..B3.23 ..B3.99
                                # Execution count [1.00e+00]
        vzeroupper                                              #46.5
        lea       1048(%rsp), %rdi                              #46.5
        movl      $1, %r13d                                     #44.14
        lea       1056(%rsp), %rsi                              #46.5
..___tag_value_stencil.203:
#       timing(double *, double *)
        call      timing                                        #46.5
..___tag_value_stencil.204:
                                # LOE rbx r12 r14 r15 r13d
..B3.26:                        # Preds ..B3.25
                                # Execution count [9.00e-01]
        movq      %r12, %rdx                                    #35.7
        lea       -2(%r12), %r9                                 #54.19
        vbroadcastsd (%rsp), %zmm2                              #27.6[spill]
        movq      %r9, %r8                                      #54.9
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm3             #45.30
        vxorpd    %xmm4, %xmm4, %xmm4                           #48.17
        shlq      $4, %rdx                                      #35.7
        xorl      %eax, %eax                                    #47.5
        andq      $-32, %r8                                     #54.9
        lea       (%rbx,%r12,8), %rcx                           #56.13
        addq      %r15, %rdx                                    #58.19
        addq      $-2, %r14                                     #50.32
        vmovups   %zmm2, 64(%rsp)                               #58.19[spill]
        movq      %rdx, 8(%rsp)                                 #58.19[spill]
        movq      %rcx, 48(%rsp)                                #58.19[spill]
        movq      %r8, 56(%rsp)                                 #58.19[spill]
        movq      %r9, 40(%rsp)                                 #58.19[spill]
        movq      %r12, 32(%rsp)                                #58.19[spill]
        movl      %eax, %r12d                                   #58.19
                                # LOE rbx r14 r15 r12d r13d
..B3.27:                        # Preds ..B3.71 ..B3.26 ..B3.66
                                # Execution count [2.78e+01]
        vmovsd    8(%r15), %xmm0                                #48.10
        vxorpd    %xmm1, %xmm1, %xmm1                           #48.17
        vcomisd   %xmm1, %xmm0                                  #48.17
        jbe       ..B3.29       # Prob 78%                      #48.17
                                # LOE rbx r14 r15 r12d r13d
..B3.28:                        # Preds ..B3.27
                                # Execution count [6.11e+00]
        movq      %rbx, %rdi                                    #48.20
        vzeroupper                                              #48.20
..___tag_value_stencil.212:
#       dummy(double *)
        call      dummy                                         #48.20
..___tag_value_stencil.213:
                                # LOE rbx r14 r15 r12d r13d
..B3.29:                        # Preds ..B3.27 ..B3.28
                                # Execution count [2.78e+01]
        xorl      %r9d, %r9d                                    #50.7
        xorl      %r8d, %r8d                                    #50.37
        testq     %r14, %r14                                    #50.32
        jle       ..B3.66       # Prob 10%                      #50.32
                                # LOE rbx r8 r9 r14 r15 r12d r13d
..B3.30:                        # Preds ..B3.29
                                # Execution count [2.50e+01]
        movq      %rbx, 24(%rsp)                                #[spill]
        movl      %r13d, (%rsp)                                 #[spill]
        movl      %r12d, 16(%rsp)                               #[spill]
        movq      %r14, 136(%rsp)                               #[spill]
        vmovdqu32 .L_2il0floatpacket.19(%rip), %zmm2            #
        vmovups   .L_2il0floatpacket.18(%rip), %zmm1            #
        vmovups   64(%rsp), %zmm0                               #[spill]
        movq      8(%rsp), %rsi                                 #[spill]
        movq      48(%rsp), %rbx                                #[spill]
        movq      40(%rsp), %rcx                                #[spill]
        movq      32(%rsp), %rdx                                #[spill]
                                # LOE rdx rcx rbx rsi r8 r9 r15 zmm0 zmm1 zmm2
..B3.31:                        # Preds ..B3.64 ..B3.30
                                # Execution count [1.39e+02]
        testq     %rcx, %rcx                                    #54.41
        jle       ..B3.64       # Prob 50%                      #54.41
                                # LOE rdx rcx rbx rsi r8 r9 r15 zmm0 zmm1 zmm2
..B3.32:                        # Preds ..B3.31
                                # Execution count [1.25e+02]
        cmpq      $32, %rcx                                     #54.9
        jl        ..B3.87       # Prob 10%                      #54.9
                                # LOE rdx rcx rbx rsi r8 r9 r15 zmm0 zmm1 zmm2
..B3.33:                        # Preds ..B3.32
                                # Execution count [1.39e+02]
        movq      56(%rsp), %rax                                #54.9[spill]
                                # LOE rax rdx rcx rbx rsi r8 r9 r15 zmm0 zmm1 zmm2
..B3.35:                        # Preds ..B3.33
                                # Execution count [1.25e+02]
        xorl      %r10d, %r10d                                  #54.9
        lea       (%r15,%rdx,8), %rdi                           #35.7
        movq      %rax, %rdx                                    #35.7
        lea       (%r15,%r8), %r11                              #57.30
        movq      %r8, %r14                                     #35.7
        lea       (%rbx,%r8), %r12                              #56.13
        lea       (%rsi,%r8), %r13                              #58.19
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 zmm0 zmm1 zmm2
..B3.37:                        # Preds ..B3.35 ..B3.52
                                # Execution count [1.04e+03]
        vmovupd   32(%r14,%rdi), %zmm5                          #57.17
        vmovupd   16(%r14,%rdi), %zmm3                          #57.17
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm5
..B3.40:                        # Preds ..B3.37
                                # Execution count [6.94e+02]
        vaddpd    16(%r11,%r10,8), %zmm3, %zmm3                 #57.30
        vaddpd    32(%r13,%r10,8), %zmm3, %zmm4                 #58.19
        vaddpd    %zmm5, %zmm4, %zmm5                           #58.41
        vmulpd    %zmm5, %zmm0, %zmm6                           #58.41
        vmovupd   %zmm6, 16(%r12,%r10,8)                        #56.13
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 zmm0 zmm1 zmm2
..B3.41:                        # Preds ..B3.40
                                # Execution count [1.04e+03]
        vmovupd   96(%r14,%rdi), %zmm5                          #57.17
        vmovupd   80(%r14,%rdi), %zmm3                          #57.17
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm5
..B3.44:                        # Preds ..B3.41
                                # Execution count [6.94e+02]
        vaddpd    80(%r11,%r10,8), %zmm3, %zmm3                 #57.30
        vaddpd    96(%r13,%r10,8), %zmm3, %zmm4                 #58.19
        vaddpd    %zmm5, %zmm4, %zmm5                           #58.41
        vmulpd    %zmm5, %zmm0, %zmm6                           #58.41
        vmovupd   %zmm6, 80(%r12,%r10,8)                        #56.13
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 zmm0 zmm1 zmm2
..B3.45:                        # Preds ..B3.44
                                # Execution count [1.04e+03]
        vmovupd   160(%r14,%rdi), %zmm5                         #57.17
        vmovupd   144(%r14,%rdi), %zmm3                         #57.17
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm5
..B3.48:                        # Preds ..B3.45
                                # Execution count [6.94e+02]
        vaddpd    144(%r11,%r10,8), %zmm3, %zmm3                #57.30
        vaddpd    160(%r13,%r10,8), %zmm3, %zmm4                #58.19
        vaddpd    %zmm5, %zmm4, %zmm5                           #58.41
        vmulpd    %zmm5, %zmm0, %zmm6                           #58.41
        vmovupd   %zmm6, 144(%r12,%r10,8)                       #56.13
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 zmm0 zmm1 zmm2
..B3.49:                        # Preds ..B3.48
                                # Execution count [1.04e+03]
        vmovupd   224(%r14,%rdi), %zmm5                         #57.17
        vmovupd   208(%r14,%rdi), %zmm3                         #57.17
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm5
..B3.52:                        # Preds ..B3.49
                                # Execution count [6.94e+02]
        addq      $256, %r14                                    #54.9
        vaddpd    208(%r11,%r10,8), %zmm3, %zmm3                #57.30
        vaddpd    224(%r13,%r10,8), %zmm3, %zmm4                #58.19
        vaddpd    %zmm5, %zmm4, %zmm5                           #58.41
        vmulpd    %zmm5, %zmm0, %zmm6                           #58.41
        vmovupd   %zmm6, 208(%r12,%r10,8)                       #56.13
        addq      $32, %r10                                     #54.9
        cmpq      %rdx, %r10                                    #54.9
        jb        ..B3.37       # Prob 82%                      #54.9
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 zmm0 zmm1 zmm2
..B3.53:                        # Preds ..B3.52
                                # Execution count [1.25e+02]
        movq      32(%rsp), %rdx                                #[spill]
                                # LOE rax rdx rcx rbx rsi r8 r9 r15 zmm0 zmm1 zmm2
..B3.54:                        # Preds ..B3.53 ..B3.87
                                # Execution count [1.39e+02]
        lea       1(%rax), %r10                                 #54.9
        cmpq      %rcx, %r10                                    #54.9
        ja        ..B3.64       # Prob 50%                      #54.9
                                # LOE rax rdx rcx rbx rsi r8 r9 r15 zmm0 zmm1 zmm2
..B3.55:                        # Preds ..B3.54
                                # Execution count [1.39e+02]
        vmovaps   %zmm2, %zmm4                                  #54.9
                                # LOE rax rdx rcx rbx rsi r8 r9 r15 zmm0 zmm1 zmm2 zmm4
..B3.57:                        # Preds ..B3.55
                                # Execution count [1.25e+02]
        movq      %rcx, %rdi                                    #54.9
        lea       (%r15,%r8), %r12                              #57.30
        subq      %rax, %rdi                                    #54.9
        lea       (%rsi,%r8), %r13                              #58.19
        vpbroadcastq %rdi, %zmm3                                #54.9
        lea       (%rbx,%r8), %r11                              #56.13
        xorl      %r10d, %r10d                                  #54.9
        lea       (%r12,%rax,8), %r12                           #57.30
        lea       (%r13,%rax,8), %r13                           #58.19
        lea       (%r11,%rax,8), %r14                           #56.13
        movq      %r8, %r11                                     #35.7
                                # LOE rax rdx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4
..B3.58:                        # Preds ..B3.62 ..B3.57
                                # Execution count [6.94e+02]
        lea       (%rdx,%rax), %rbx                             #57.17
        lea       16(%r11,%r15), %rcx                           #57.17
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4
..B3.59:                        # Preds ..B3.58
                                # Execution count [1.04e+03]
        vmovupd   16(%rcx,%rbx,8), %zmm7                        #57.17
        vmovupd   (%rcx,%rbx,8), %zmm5                          #57.17
                                # LOE rax rdx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm7
..B3.62:                        # Preds ..B3.59
                                # Execution count [6.94e+02]
        vpcmpgtq  %zmm4, %zmm3, %k1                             #54.9
        addq      $64, %r11                                     #54.9
        vaddpd    16(%r12,%r10,8), %zmm5, %zmm5                 #57.30
        vpaddq    %zmm1, %zmm4, %zmm4                           #54.9
        vaddpd    32(%r13,%r10,8), %zmm5, %zmm6                 #58.19
        vaddpd    %zmm7, %zmm6, %zmm7                           #58.41
        vmulpd    %zmm7, %zmm0, %zmm8                           #58.41
        vmovupd   %zmm8, 16(%r14,%r10,8){%k1}                   #56.13
        addq      $8, %r10                                      #54.9
        cmpq      %rdi, %r10                                    #54.9
        jb        ..B3.58       # Prob 82%                      #54.9
                                # LOE rax rdx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4
..B3.63:                        # Preds ..B3.62
                                # Execution count [1.25e+02]
        movq      48(%rsp), %rbx                                #[spill]
        movq      40(%rsp), %rcx                                #[spill]
                                # LOE rdx rcx rbx rsi r8 r9 r15 zmm0 zmm1 zmm2
..B3.64:                        # Preds ..B3.31 ..B3.54 ..B3.63
                                # Execution count [1.39e+02]
        incq      %r9                                           #50.7
        addq      128(%rsp), %r8                                #50.7[spill]
        cmpq      136(%rsp), %r9                                #50.7[spill]
        jb        ..B3.31       # Prob 82%                      #50.7
                                # LOE rdx rcx rbx rsi r8 r9 r15 zmm0 zmm1 zmm2
..B3.65:                        # Preds ..B3.64
                                # Execution count [2.50e+01]
        movl      (%rsp), %r13d                                 #[spill]
        movl      16(%rsp), %r12d                               #[spill]
        movq      136(%rsp), %r14                               #[spill]
        movq      24(%rsp), %rbx                                #[spill]
                                # LOE rbx r14 r15 r12d r13d
..B3.66:                        # Preds ..B3.65 ..B3.29
                                # Execution count [2.78e+01]
        incl      %r12d                                         #47.5
        cmpl      %r13d, %r12d                                  #47.5
        jb        ..B3.27       # Prob 82%                      #47.5
                                # LOE rbx r14 r15 r12d r13d
..B3.68:                        # Preds ..B3.66 ..B3.71
                                # Execution count [5.56e+00]: Infreq
        vzeroupper                                              #63.5
        lea       1064(%rsp), %rdi                              #63.5
        lea       1056(%rsp), %rsi                              #63.5
..___tag_value_stencil.233:
#       timing(double *, double *)
        call      timing                                        #63.5
..___tag_value_stencil.234:
                                # LOE rbx r14 r15 r13d
..B3.69:                        # Preds ..B3.68
                                # Execution count [5.56e+00]: Infreq
        vmovsd    1064(%rsp), %xmm16                            #64.15
        addl      %r13d, %r13d                                  #45.34
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm0             #45.30
        vsubsd    1048(%rsp), %xmm16, %xmm1                     #64.19
        vcomisd   %xmm1, %xmm0                                  #45.30
        jbe       ..B3.73       # Prob 18%                      #45.30
                                # LOE rbx r14 r15 r13d xmm1
..B3.70:                        # Preds ..B3.69
                                # Execution count [4.56e+00]: Infreq
        lea       1048(%rsp), %rdi                              #46.5
        lea       1056(%rsp), %rsi                              #46.5
..___tag_value_stencil.235:
#       timing(double *, double *)
        call      timing                                        #46.5
..___tag_value_stencil.236:
                                # LOE rbx r14 r15 r13d
..B3.71:                        # Preds ..B3.70
                                # Execution count [4.56e+00]: Infreq
        xorl      %r12d, %r12d                                  #47.5
        testl     %r13d, %r13d                                  #47.20
        jle       ..B3.68       # Prob 10%                      #47.20
        jmp       ..B3.27       # Prob 100%                     #47.20
                                # LOE rbx r14 r15 r12d r13d
..B3.73:                        # Preds ..B3.69
                                # Execution count [1.00e+00]: Infreq
        movl      %r13d, %eax                                   #66.3
        lea       (%rsp), %rdi                                  #68.3
        shrl      $31, %eax                                     #66.3
        movl      $1024, %esi                                   #68.3
        addl      %eax, %r13d                                   #66.3
        vmovsd    %xmm1, 1040(%rdi)                             #[spill]
        sarl      $1, %r13d                                     #66.3
..___tag_value_stencil.238:
#       gethostname(char *, size_t)
        call      gethostname                                   #68.3
..___tag_value_stencil.239:
                                # LOE rbx r15 r13d
..B3.74:                        # Preds ..B3.73
                                # Execution count [1.00e+00]: Infreq
        movl      $.L_2__STRING.0, %esi                         #70.12
        lea       (%rsp), %rdi                                  #70.12
..___tag_value_stencil.240:
#       strcmp(const char *, const char *)
        call      strcmp                                        #70.12
..___tag_value_stencil.241:
                                # LOE rbx r12 r15 eax r13d
..B3.93:                        # Preds ..B3.74
                                # Execution count [1.00e+00]: Infreq
        testl     %eax, %eax                                    #70.12
        je        ..B3.85       # Prob 9%                       #70.12
                                # LOE rbx r12 r15 r13d
..B3.75:                        # Preds ..B3.93
                                # Execution count [9.01e-01]: Infreq
        movl      $.L_2__STRING.1, %esi                         #70.12
        lea       (%rsp), %rdi                                  #70.12
..___tag_value_stencil.242:
#       strcmp(const char *, const char *)
        call      strcmp                                        #70.12
..___tag_value_stencil.243:
                                # LOE rbx r12 r15 eax r13d
..B3.94:                        # Preds ..B3.75
                                # Execution count [9.01e-01]: Infreq
        testl     %eax, %eax                                    #70.12
        je        ..B3.83       # Prob 9%                       #70.12
                                # LOE rbx r12 r15 r13d
..B3.76:                        # Preds ..B3.94
                                # Execution count [8.12e-01]: Infreq
        movl      $.L_2__STRING.2, %esi                         #70.12
        lea       (%rsp), %rdi                                  #70.12
..___tag_value_stencil.244:
#       strcmp(const char *, const char *)
        call      strcmp                                        #70.12
..___tag_value_stencil.245:
                                # LOE rbx r12 r15 eax r13d
..B3.95:                        # Preds ..B3.76
                                # Execution count [8.12e-01]: Infreq
        testl     %eax, %eax                                    #70.12
        jne       ..B3.79       # Prob 78%                      #70.12
                                # LOE rbx r12 r15 r13d
..B3.77:                        # Preds ..B3.95
                                # Execution count [1.79e-01]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #70.12
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #70.12
..___tag_value_stencil.246:
#       pow(double, double)
        call      pow                                           #70.12
..___tag_value_stencil.247:
                                # LOE rbx r15 r13d xmm0
..B3.78:                        # Preds ..B3.77
                                # Execution count [1.79e-01]: Infreq
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #70.12
        vcvttsd2si %xmm0, %r12                                  #70.12
                                # LOE rbx r12 r15 r13d
..B3.79:                        # Preds ..B3.86 ..B3.84 ..B3.78 ..B3.95
                                # Execution count [1.00e+00]: Infreq
        movl      1032(%rsp), %r8d                              #72.31[spill]
        vxorpd    %xmm9, %xmm9, %xmm9                           #73.3
        movl      1024(%rsp), %r9d                              #72.18[spill]
        vxorpd    %xmm17, %xmm17, %xmm17                        #73.149
        movslq    %r13d, %r10                                   #73.3
        vxorpd    %xmm19, %xmm19, %xmm19                        #73.136
        vmovsd    1040(%rsp), %xmm1                             #73.303[spill]
        lea       -2(%r8), %ecx                                 #72.31
        vmovsd    .L_2il0floatpacket.17(%rip), %xmm5            #73.3
        lea       -2(%r9), %edx                                 #72.18
        imull     %ecx, %edx                                    #72.31
        vxorpd    %xmm6, %xmm6, %xmm6                           #73.3
        imull     %r8d, %r9d                                    #73.3
        vxorpd    %xmm12, %xmm12, %xmm12                        #73.3
        vdivsd    %xmm1, %xmm5, %xmm15                          #73.303
        movslq    %edx, %rdx                                    #72.31
        addl      $-4, %r9d                                     #73.3
        imulq     %rdx, %r10                                    #73.3
        vcvtsi2sd %r13d, %xmm17, %xmm17                         #73.149
        vcvtsi2sdq %r10, %xmm9, %xmm9                           #73.3
        vcvtsi2sdq %rdx, %xmm19, %xmm19                         #73.136
        vcvtsi2sd %r9d, %xmm6, %xmm6                            #73.3
        vcvtsi2sdq %r12, %xmm12, %xmm12                         #73.3
        vmulsd    .L_2il0floatpacket.10(%rip), %xmm9, %xmm10    #73.3
        vmulsd    .L_2il0floatpacket.9(%rip), %xmm15, %xmm7     #73.3
        vmulsd    .L_2il0floatpacket.11(%rip), %xmm15, %xmm13   #73.3
        vdivsd    %xmm10, %xmm1, %xmm11                         #73.3
        vmulsd    .L_2il0floatpacket.12(%rip), %xmm15, %xmm16   #73.3
        movl      $.L_2__STRING.3, %edi                         #73.3
        vmulsd    %xmm17, %xmm7, %xmm8                          #73.3
        vmulsd    %xmm17, %xmm13, %xmm14                        #73.3
        vmulsd    %xmm17, %xmm16, %xmm18                        #73.3
        vmulsd    .L_2il0floatpacket.8(%rip), %xmm6, %xmm0      #73.3
        vmulsd    %xmm19, %xmm8, %xmm2                          #73.3
        vmulsd    %xmm12, %xmm11, %xmm3                         #73.3
        vmulsd    %xmm19, %xmm14, %xmm4                         #73.3
        vmulsd    %xmm19, %xmm18, %xmm5                         #73.3
        movl      %r13d, %esi                                   #73.3
        movl      $6, %eax                                      #73.3
..___tag_value_stencil.251:
#       printf(const char *__restrict__, ...)
        call      printf                                        #73.3
..___tag_value_stencil.252:
                                # LOE rbx r15
..B3.80:                        # Preds ..B3.79
                                # Execution count [1.00e+00]: Infreq
        movq      %r15, %rdi                                    #78.3
..___tag_value_stencil.253:
#       free(void *)
        call      free                                          #78.3
..___tag_value_stencil.254:
                                # LOE rbx
..B3.81:                        # Preds ..B3.80
                                # Execution count [1.00e+00]: Infreq
        movq      %rbx, %rdi                                    #78.12
..___tag_value_stencil.255:
#       free(void *)
        call      free                                          #78.12
..___tag_value_stencil.256:
                                # LOE
..B3.82:                        # Preds ..B3.81
                                # Execution count [1.00e+00]: Infreq
        addq      $1112, %rsp                                   #79.1
	.cfi_restore 3
        popq      %rbx                                          #79.1
	.cfi_restore 15
        popq      %r15                                          #79.1
	.cfi_restore 14
        popq      %r14                                          #79.1
	.cfi_restore 13
        popq      %r13                                          #79.1
	.cfi_restore 12
        popq      %r12                                          #79.1
        movq      %rbp, %rsp                                    #79.1
        popq      %rbp                                          #79.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #79.1
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B3.83:                        # Preds ..B3.94
                                # Execution count [8.91e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #70.12
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #70.12
..___tag_value_stencil.271:
#       pow(double, double)
        call      pow                                           #70.12
..___tag_value_stencil.272:
                                # LOE rbx r15 r13d xmm0
..B3.84:                        # Preds ..B3.83
                                # Execution count [8.91e-02]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #70.12
        vcvttsd2si %xmm0, %r12                                  #70.12
        jmp       ..B3.79       # Prob 100%                     #70.12
                                # LOE rbx r12 r15 r13d
..B3.85:                        # Preds ..B3.93
                                # Execution count [9.88e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #70.12
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #70.12
..___tag_value_stencil.273:
#       pow(double, double)
        call      pow                                           #70.12
..___tag_value_stencil.274:
                                # LOE rbx r15 r13d xmm0
..B3.86:                        # Preds ..B3.85
                                # Execution count [9.88e-02]: Infreq
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm0, %xmm0      #70.12
        vcvttsd2si %xmm0, %r12                                  #70.12
        jmp       ..B3.79       # Prob 100%                     #70.12
                                # LOE rbx r12 r15 r13d
..B3.87:                        # Preds ..B3.32
                                # Execution count [1.25e+01]: Infreq
        xorl      %eax, %eax                                    #54.9
        jmp       ..B3.54       # Prob 100%                     #54.9
                                # LOE rax rdx rcx rbx rsi r8 r9 r15 zmm0 zmm1 zmm2
..B3.88:                        # Preds ..B3.6
                                # Execution count [4.50e-01]: Infreq
        xorl      %edx, %edx                                    #38.5
        jmp       ..B3.19       # Prob 100%                     #38.5
                                # LOE rax rbx rsi r8 r12 r14 r15 edx ecx ymm0 ymm1 zmm2
..B3.99:                        # Preds ..B3.3
                                # Execution count [1.00e-01]: Infreq
        lea       8(,%r12,8), %rax                              #39.7
        movq      %rax, 128(%rsp)                               #39.7[spill]
        jmp       ..B3.25       # Prob 100%                     #39.7
        .align    16,0x90
                                # LOE rbx r12 r14 r15
	.cfi_endproc
# mark_end;
	.type	stencil,@function
	.size	stencil,.-stencil
..LNstencil.2:
	.data
# -- End  stencil
	.section .rodata, "a"
	.align 64
	.align 64
.L_2il0floatpacket.13:
	.long	0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a
	.type	.L_2il0floatpacket.13,@object
	.size	.L_2il0floatpacket.13,64
	.align 64
.L_2il0floatpacket.16:
	.long	0x17c1bda5,0x3fb55326,0x17c1bda5,0x3fb55326,0x17c1bda5,0x3fb55326,0x17c1bda5,0x3fb55326,0x17c1bda5,0x3fb55326,0x17c1bda5,0x3fb55326,0x17c1bda5,0x3fb55326,0x17c1bda5,0x3fb55326
	.type	.L_2il0floatpacket.16,@object
	.size	.L_2il0floatpacket.16,64
	.align 64
.L_2il0floatpacket.18:
	.long	0x00000008,0x00000000,0x00000008,0x00000000,0x00000008,0x00000000,0x00000008,0x00000000,0x00000008,0x00000000,0x00000008,0x00000000,0x00000008,0x00000000,0x00000008,0x00000000
	.type	.L_2il0floatpacket.18,@object
	.size	.L_2il0floatpacket.18,64
	.align 64
.L_2il0floatpacket.19:
	.long	0x00000000,0x00000000,0x00000001,0x00000000,0x00000002,0x00000000,0x00000003,0x00000000,0x00000004,0x00000000,0x00000005,0x00000000,0x00000006,0x00000000,0x00000007,0x00000000
	.type	.L_2il0floatpacket.19,@object
	.size	.L_2il0floatpacket.19,64
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
	.long	0xd2f1a9fc,0x3f80624d
	.type	.L_2il0floatpacket.8,@object
	.size	.L_2il0floatpacket.8,8
	.align 8
.L_2il0floatpacket.9:
	.long	0xa0b5ed8d,0x3ed0c6f7
	.type	.L_2il0floatpacket.9,@object
	.size	.L_2il0floatpacket.9,8
	.align 8
.L_2il0floatpacket.10:
	.long	0x00000000,0x3fc00000
	.type	.L_2il0floatpacket.10,@object
	.size	.L_2il0floatpacket.10,8
	.align 8
.L_2il0floatpacket.11:
	.long	0x00000000,0x3f000000
	.type	.L_2il0floatpacket.11,@object
	.size	.L_2il0floatpacket.11,8
	.align 8
.L_2il0floatpacket.12:
	.long	0xa0b5ed8d,0x3eb0c6f7
	.type	.L_2il0floatpacket.12,@object
	.size	.L_2il0floatpacket.12,8
	.align 8
.L_2il0floatpacket.17:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.17,@object
	.size	.L_2il0floatpacket.17,8
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
.L_2__STRING.4:
	.long	1345668146
	.long	1533157460
	.long	1767595370
	.long	540876893
	.long	706752611
	.long	1533093920
	.long	1767595370
	.long	542978349
	.long	1533091883
	.long	1563503466
	.long	542992731
	.long	774774827
	.long	539765038
	.long	1646277171
	.long	795178105
	.long	539784297
	.long	1816535092
	.long	1764716655
	.word	2676
	.byte	0
	.type	.L_2__STRING.4,@object
	.size	.L_2__STRING.4,75
	.space 21, 0x00 	# pad
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
