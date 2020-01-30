# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.5.281 Build 20190815";
# mark_description "-qopenmp-simd -fno-alias -unroll -fno-builtin -xCORE-AVX2 -Ofast -S -use-msasm -o j2d.s.csx.icc.AVX.s";
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
        movl      $10330110, %esi                               #83.1
        movl      $3, %edi                                      #83.1
        call      __intel_new_feature_proc_init                 #83.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
                                # LOE r12 r13 r14 r15
..B1.81:                        # Preds ..B1.1
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
..B1.2:                         # Preds ..B1.81
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.0, %esi                         #87.3
        lea       (%rsp), %rdi                                  #87.3
..___tag_value_main.9:
#       strcmp(const char *, const char *)
        call      strcmp                                        #87.3
..___tag_value_main.10:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.82:                        # Preds ..B1.2
                                # Execution count [1.00e+00]
        testl     %eax, %eax                                    #87.3
        je        ..B1.77       # Prob 9%                       #87.3
                                # LOE rbx r12 r13 r14 r15
..B1.3:                         # Preds ..B1.82
                                # Execution count [9.01e-01]
        movl      $.L_2__STRING.1, %esi                         #87.3
        lea       (%rsp), %rdi                                  #87.3
..___tag_value_main.11:
#       strcmp(const char *, const char *)
        call      strcmp                                        #87.3
..___tag_value_main.12:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.83:                        # Preds ..B1.3
                                # Execution count [9.01e-01]
        testl     %eax, %eax                                    #87.3
        je        ..B1.75       # Prob 9%                       #87.3
                                # LOE rbx r12 r13 r14 r15
..B1.4:                         # Preds ..B1.83
                                # Execution count [8.12e-01]
        movl      $.L_2__STRING.2, %esi                         #87.3
        lea       (%rsp), %rdi                                  #87.3
..___tag_value_main.13:
#       strcmp(const char *, const char *)
        call      strcmp                                        #87.3
..___tag_value_main.14:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.84:                        # Preds ..B1.4
                                # Execution count [8.12e-01]
        testl     %eax, %eax                                    #87.3
        je        ..B1.5        # Prob 22%                      #87.3
                                # LOE rbx r12 r13 r14 r15
..B1.96:                        # Preds ..B1.84
                                # Execution count [6.33e-01]
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #87.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #87.3
        vmovsd    %xmm0, 2080(%rsp)                             #87.3[spill]
        vmovsd    %xmm1, 2088(%rsp)                             #87.3[spill]
        jmp       ..B1.7        # Prob 100%                     #87.3
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.84
                                # Execution count [1.79e-01]
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm1             #87.3
        vmovsd    %xmm1, 2080(%rsp)                             #87.3[spill]
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #87.3
        vmovsd    %xmm1, 2088(%rsp)                             #87.3[spill]
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #87.3
..___tag_value_main.19:
#       pow(double, double)
        call      pow                                           #87.3
..___tag_value_main.20:
                                # LOE r12 r13 r14 r15 xmm0
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.79e-01]
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #87.3
        vcvttsd2si %xmm0, %rbx                                  #87.3
                                # LOE rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.78 ..B1.76 ..B1.6 ..B1.96
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
        xorl      %ecx, %ecx                                    #91.3
        xorb      %r8b, %r8b                                    #91.3
        xorl      %ebx, %ebx                                    #91.3
        xorl      %esi, %esi                                    #91.3
        movl      $3746, %edx                                   #91.3
        vmovsd    .L_2il0floatpacket.5(%rip), %xmm12            #94.5
        vmovsd    .L_2il0floatpacket.3(%rip), %xmm11            #94.5
        vxorpd    %xmm10, %xmm10, %xmm10                        #94.5
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm9             #94.5
        vmovsd    .L_2il0floatpacket.8(%rip), %xmm8             #94.5
        vmovsd    .L_2il0floatpacket.9(%rip), %xmm7             #94.5
        vmovsd    .L_2il0floatpacket.16(%rip), %xmm6            #94.5
        vmovsd    .L_2il0floatpacket.10(%rip), %xmm5            #94.5
        vmovsd    .L_2il0floatpacket.11(%rip), %xmm4            #94.5
        vmovsd    .L_2il0floatpacket.12(%rip), %xmm3            #94.5
        vmovsd    .L_2il0floatpacket.2(%rip), %xmm2             #94.5
        vmovupd   .L_2il0floatpacket.15(%rip), %ymm0            #94.19
        movq      %rcx, 2096(%rsp)                              #91.3[spill]
        movl      %edx, 2104(%rsp)                              #91.3[spill]
        movq      %rcx, 2120(%rsp)                              #91.3[spill]
        movl      %esi, 2128(%rsp)                              #91.3[spill]
        movb      %r8b, 2136(%rsp)                              #91.3[spill]
        movq      %r12, 2048(%rsp)                              #91.3[spill]
        movq      %r13, 2056(%rsp)                              #91.3[spill]
        movq      %r14, 2064(%rsp)                              #91.3[spill]
        movq      %r15, 2072(%rsp)                              #91.3[spill]
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x00, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x08, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x10, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x18, 0xff, 0xff, 0xff, 0x22
                                # LOE rbx
..B1.11:                        # Preds ..B1.65 ..B1.10
                                # Execution count [1.66e+01]
        movl      2128(%rsp), %eax                              #91.26[spill]
        vxorpd    %xmm1, %xmm1, %xmm1                           #92.23
        lea       1250(%rax), %r13d                             #91.26
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
..B1.86:                        # Preds ..B1.12
                                # Execution count [1.66e+01]
        movq      %rax, %r12                                    #94.5
                                # LOE rbx r12 r14 r13d
..B1.13:                        # Preds ..B1.86
                                # Execution count [1.66e+01]
        movl      $64, %edi                                     #94.5
        movq      %r14, %rsi                                    #94.5
..___tag_value_main.45:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #94.5
..___tag_value_main.46:
                                # LOE rax rbx r12 r13d
..B1.87:                        # Preds ..B1.13
                                # Execution count [1.66e+01]
        movq      %rax, 2176(%rsp)                              #94.5[spill]
                                # LOE rbx r12 r13d
..B1.14:                        # Preds ..B1.87
                                # Execution count [1.49e+01]
        movslq    %r13d, %rsi                                   #94.5
        xorb      %cl, %cl                                      #94.5
        vmovupd   .L_2il0floatpacket.13(%rip), %ymm0            #94.5
        movq      %r12, %r9                                     #94.5
        movq      2096(%rsp), %r8                               #94.5[spill]
        movq      $0x3e80867a71b56e7e, %r10                     #94.5
                                # LOE rbx rsi r8 r9 r10 r12 r13d cl ymm0
..B1.15:                        # Preds ..B1.37 ..B1.14
                                # Execution count [8.28e+01]
        testl     %r13d, %r13d                                  #94.5
        jle       ..B1.37       # Prob 50%                      #94.5
                                # LOE rbx rsi r8 r9 r10 r12 r13d cl ymm0
..B1.16:                        # Preds ..B1.15
                                # Execution count [7.45e+01]
        cmpl      $16, %r13d                                    #94.5
        jl        ..B1.72       # Prob 10%                      #94.5
                                # LOE rbx rsi r8 r9 r10 r12 r13d cl ymm0
..B1.17:                        # Preds ..B1.16
                                # Execution count [7.45e+01]
        lea       8(%r9), %r14                                  #94.5
        andq      $31, %r14                                     #94.5
        movl      %r14d, %r14d                                  #94.5
        testl     %r14d, %r14d                                  #94.5
        je        ..B1.20       # Prob 50%                      #94.5
                                # LOE rbx rsi r8 r9 r10 r12 r14 r13d cl ymm0
..B1.18:                        # Preds ..B1.17
                                # Execution count [7.45e+01]
        testl     $7, %r14d                                     #94.5
        jne       ..B1.72       # Prob 10%                      #94.5
                                # LOE rbx rsi r8 r9 r10 r12 r14 r13d cl ymm0
..B1.19:                        # Preds ..B1.18
                                # Execution count [3.73e+01]
        negl      %r14d                                         #94.5
        addl      $32, %r14d                                    #94.5
        shrl      $3, %r14d                                     #94.5
                                # LOE rbx rsi r8 r9 r10 r12 r14 r13d cl ymm0
..B1.20:                        # Preds ..B1.19 ..B1.17
                                # Execution count [7.45e+01]
        lea       16(%r14), %eax                                #94.5
        cmpl      %eax, %r13d                                   #94.5
        jl        ..B1.72       # Prob 10%                      #94.5
                                # LOE rbx rsi r8 r9 r10 r12 r14 r13d cl ymm0
..B1.21:                        # Preds ..B1.20
                                # Execution count [8.28e+01]
        movl      %r13d, %edx                                   #94.5
        xorl      %r11d, %r11d                                  #94.5
        subl      %r14d, %edx                                   #94.5
        movq      %r9, %rax                                     #94.5
        andl      $15, %edx                                     #94.5
        negl      %edx                                          #94.5
        addl      %r13d, %edx                                   #94.5
        testl     %r14d, %r14d                                  #94.5
        jbe       ..B1.25       # Prob 10%                      #94.5
                                # LOE rax rbx rsi r8 r9 r10 r11 r12 r14 edx r13d cl ymm0
..B1.23:                        # Preds ..B1.21 ..B1.23
                                # Execution count [4.14e+02]
        incq      %r11                                          #94.5
        movq      %r10, 8(%rax)                                 #94.5
        addq      $8, %rax                                      #94.5
        cmpq      %r14, %r11                                    #94.5
        jb        ..B1.23       # Prob 82%                      #94.5
                                # LOE rax rbx rsi r8 r9 r10 r11 r12 r14 edx r13d cl ymm0
..B1.25:                        # Preds ..B1.23 ..B1.21
                                # Execution count [7.45e+01]
        movslq    %edx, %rax                                    #94.5
        lea       (%r9,%r14,8), %r11                            #94.5
                                # LOE rax rbx rsi r8 r9 r10 r11 r12 r14 edx r13d cl ymm0
..B1.26:                        # Preds ..B1.26 ..B1.25
                                # Execution count [4.14e+02]
        addq      $16, %r14                                     #94.5
        vmovupd   %ymm0, 8(%r11)                                #94.5
        vmovupd   %ymm0, 40(%r11)                               #94.5
        vmovupd   %ymm0, 72(%r11)                               #94.5
        vmovupd   %ymm0, 104(%r11)                              #94.5
        addq      $128, %r11                                    #94.5
        cmpq      %rax, %r14                                    #94.5
        jb        ..B1.26       # Prob 82%                      #94.5
                                # LOE rax rbx rsi r8 r9 r10 r11 r12 r14 edx r13d cl ymm0
..B1.28:                        # Preds ..B1.26 ..B1.72
                                # Execution count [8.28e+01]
        lea       1(%rdx), %eax                                 #94.5
        cmpl      %r13d, %eax                                   #94.5
        ja        ..B1.37       # Prob 50%                      #94.5
                                # LOE rbx rsi r8 r9 r10 r12 edx r13d cl ymm0
..B1.29:                        # Preds ..B1.28
                                # Execution count [7.45e+01]
        movslq    %edx, %rdx                                    #94.5
        movq      %rsi, %rax                                    #94.5
        subq      %rdx, %rax                                    #94.5
        cmpq      $4, %rax                                      #94.5
        jl        ..B1.71       # Prob 10%                      #94.5
                                # LOE rax rdx rbx rsi r8 r9 r10 r12 r13d cl ymm0
..B1.30:                        # Preds ..B1.29
                                # Execution count [7.45e+01]
        movl      %eax, %r15d                                   #94.5
        xorl      %r14d, %r14d                                  #94.5
        andl      $-4, %r15d                                    #94.5
        lea       (%r9,%rdx,8), %r11                            #94.5
        movslq    %r15d, %r15                                   #94.5
                                # LOE rax rdx rbx rsi r8 r9 r10 r11 r12 r14 r15 r13d cl ymm0
..B1.31:                        # Preds ..B1.31 ..B1.30
                                # Execution count [4.14e+02]
        vmovupd   %ymm0, 8(%r11,%r14,8)                         #94.5
        addq      $4, %r14                                      #94.5
        cmpq      %r15, %r14                                    #94.5
        jb        ..B1.31       # Prob 82%                      #94.5
                                # LOE rax rdx rbx rsi r8 r9 r10 r11 r12 r14 r15 r13d cl ymm0
..B1.33:                        # Preds ..B1.31 ..B1.71
                                # Execution count [8.28e+01]
        cmpq      %rax, %r15                                    #94.5
        jae       ..B1.37       # Prob 10%                      #94.5
                                # LOE rax rdx rbx rsi r8 r9 r10 r12 r15 r13d cl ymm0
..B1.34:                        # Preds ..B1.33
                                # Execution count [7.45e+01]
        lea       (%r9,%rdx,8), %rdx                            #94.5
                                # LOE rax rdx rbx rsi r8 r9 r10 r12 r15 r13d cl ymm0
..B1.35:                        # Preds ..B1.35 ..B1.34
                                # Execution count [4.14e+02]
        movq      %r10, 8(%rdx,%r15,8)                          #94.5
        incq      %r15                                          #94.5
        cmpq      %rax, %r15                                    #94.5
        jb        ..B1.35       # Prob 82%                      #94.5
                                # LOE rax rdx rbx rsi r8 r9 r10 r12 r15 r13d cl ymm0
..B1.37:                        # Preds ..B1.35 ..B1.15 ..B1.28 ..B1.33
                                # Execution count [8.28e+01]
        incb      %cl                                           #94.5
        lea       10008(%r9,%r8), %r9                           #94.5
        cmpb      $3, %cl                                       #94.5
        jb        ..B1.15       # Prob 82%                      #94.5
                                # LOE rbx rsi r8 r9 r10 r12 r13d cl ymm0
..B1.38:                        # Preds ..B1.37
                                # Execution count [1.66e+01]
        vzeroupper                                              #94.5
        lea       2152(%rsp), %rdi                              #94.5
        movl      $1, %r15d                                     #94.5
        lea       2160(%rsp), %rsi                              #94.5
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
        movq      2176(%rsp), %r8                               #94.5[spill]
        movq      2096(%rsp), %r9                               #94.5[spill]
        shlq      $10, %rcx                                     #91.26
        negq      %rcx                                          #91.26
        lea       1248(%rax), %r14                              #94.5
        addq      $1249, %rax                                   #94.5
        addq      %r12, %rcx                                    #94.5
        movq      %rcx, 2200(%rsp)                              #94.5[spill]
        lea       (%r9,%r8), %r10                               #94.5
        movq      %r10, 2192(%rsp)                              #94.5[spill]
        lea       (%r12,%r9), %r8                               #94.5
        movq      %r8, 2184(%rsp)                               #94.5[spill]
        movq      %rbx, 2112(%rsp)                              #94.5[spill]
        movq      %rax, %rbx                                    #94.5
                                # LOE rbx r12 r14 r13d r15d
..B1.40:                        # Preds ..B1.54 ..B1.39 ..B1.49
                                # Execution count [4.60e+02]
        vmovsd    8(%r12), %xmm0                                #94.5
        vxorpd    %xmm1, %xmm1, %xmm1                           #94.5
        vcomisd   %xmm1, %xmm0                                  #94.5
        jbe       ..B1.42       # Prob 78%                      #94.5
                                # LOE rbx r12 r14 r13d r15d
..B1.41:                        # Preds ..B1.40
                                # Execution count [1.01e+02]
        vzeroupper                                              #94.5
        movq      2176(%rsp), %rdi                              #94.5[spill]
..___tag_value_main.58:
#       dummy(double *)
        call      dummy                                         #94.5
..___tag_value_main.59:
                                # LOE rbx r12 r14 r13d r15d
..B1.42:                        # Preds ..B1.41 ..B1.40
                                # Execution count [2.30e+03]
        cmpq      $1, %rbx                                      #94.5
        jle       ..B1.49       # Prob 50%                      #94.5
                                # LOE rbx r12 r14 r13d r15d
..B1.43:                        # Preds ..B1.42
                                # Execution count [2.07e+03]
        cmpq      $16, %r14                                     #94.5
        jl        ..B1.49       # Prob 10%                      #94.5
                                # LOE rbx r12 r14 r13d r15d
..B1.46:                        # Preds ..B1.43
                                # Execution count [2.07e+03]
        vmovupd   .L_2il0floatpacket.15(%rip), %ymm0            #94.5
        xorl      %ecx, %ecx                                    #94.5
        movq      2184(%rsp), %r8                               #94.5[spill]
        movq      2192(%rsp), %r9                               #94.5[spill]
        movq      2200(%rsp), %r10                              #94.5[spill]
                                # LOE rcx rbx r8 r9 r10 r12 r14 r13d r15d ymm0
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
# LLVM-MCA-BEGIN
..B1.47:                        # Preds ..B1.47 ..B1.46
                                # Execution count [1.15e+04]
        vmovupd   10016(%r8,%rcx,8), %ymm1                      #94.5
        vmovupd   10048(%r8,%rcx,8), %ymm6                      #94.5
        vmovupd   10080(%r8,%rcx,8), %ymm11                     #94.5
        vaddpd    16(%r12,%rcx,8), %ymm1, %ymm2                 #94.5
        vaddpd    48(%r12,%rcx,8), %ymm6, %ymm7                 #94.5
        vaddpd    80(%r12,%rcx,8), %ymm11, %ymm12               #94.5
        vaddpd    20032(%r10,%rcx,8), %ymm2, %ymm3              #94.5
        vaddpd    20064(%r10,%rcx,8), %ymm7, %ymm8              #94.5
        vaddpd    20096(%r10,%rcx,8), %ymm12, %ymm13            #94.5
        vaddpd    10032(%r8,%rcx,8), %ymm3, %ymm4               #94.5
        vaddpd    10064(%r8,%rcx,8), %ymm8, %ymm9               #94.5
        vaddpd    10096(%r8,%rcx,8), %ymm13, %ymm14             #94.5
        vmovupd   10112(%r8,%rcx,8), %ymm1                      #94.5
        vmulpd    %ymm4, %ymm0, %ymm5                           #94.5
        vmulpd    %ymm9, %ymm0, %ymm10                          #94.5
        vmulpd    %ymm14, %ymm0, %ymm15                         #94.5
        vaddpd    112(%r12,%rcx,8), %ymm1, %ymm2                #94.5
        vmovupd   %ymm5, 10016(%r9,%rcx,8)                      #94.5
        vmovupd   %ymm10, 10048(%r9,%rcx,8)                     #94.5
        vmovupd   %ymm15, 10080(%r9,%rcx,8)                     #94.5
        vaddpd    20128(%r10,%rcx,8), %ymm2, %ymm3              #94.5
        vaddpd    10128(%r8,%rcx,8), %ymm3, %ymm4               #94.5
        vmulpd    %ymm4, %ymm0, %ymm5                           #94.5
        vmovupd   %ymm5, 10112(%r9,%rcx,8)                      #94.5
        addq      $16, %rcx                                     #94.5
        cmpq      %r14, %rcx                                    #94.5
        jb        ..B1.47       # Prob 82%                      #94.5
# LLVM-MCA-END
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
                                # LOE rcx rbx r8 r9 r10 r12 r14 r13d r15d ymm0
..B1.49:                        # Preds ..B1.47 ..B1.43 ..B1.42
                                # Execution count [1.89e+03]
        incl      %r13d                                         #94.5
        cmpl      %r15d, %r13d                                  #94.5
        jb        ..B1.40       # Prob 95%                      #94.5
                                # LOE rbx r12 r14 r13d r15d
..B1.51:                        # Preds ..B1.49 ..B1.54
                                # Execution count [9.20e+01]: Infreq
        vzeroupper                                              #94.5
        lea       2168(%rsp), %rdi                              #94.5
        lea       2160(%rsp), %rsi                              #94.5
..___tag_value_main.64:
#       timing(double *, double *)
        call      timing                                        #94.5
..___tag_value_main.65:
                                # LOE rbx r12 r14 r15d
..B1.52:                        # Preds ..B1.51
                                # Execution count [9.20e+01]: Infreq
        vmovsd    2168(%rsp), %xmm0                             #94.5
        addl      %r15d, %r15d                                  #94.5
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm1             #94.5
        vsubsd    2152(%rsp), %xmm0, %xmm0                      #94.5
        vcomisd   %xmm0, %xmm1                                  #94.5
        jbe       ..B1.56       # Prob 18%                      #94.5
                                # LOE rbx r12 r14 r15d xmm0
..B1.53:                        # Preds ..B1.52
                                # Execution count [7.55e+01]: Infreq
        lea       2152(%rsp), %rdi                              #94.5
        lea       2160(%rsp), %rsi                              #94.5
..___tag_value_main.66:
#       timing(double *, double *)
        call      timing                                        #94.5
..___tag_value_main.67:
                                # LOE rbx r12 r14 r15d
..B1.54:                        # Preds ..B1.53
                                # Execution count [7.55e+01]: Infreq
        xorl      %r13d, %r13d                                  #94.5
        testl     %r15d, %r15d                                  #94.5
        jle       ..B1.51       # Prob 10%                      #94.5
        jmp       ..B1.40       # Prob 100%                     #94.5
                                # LOE rbx r12 r14 r13d r15d
..B1.56:                        # Preds ..B1.52
                                # Execution count [1.66e+01]: Infreq
        movl      %r15d, %eax                                   #94.5
        lea       1024(%rsp), %rdi                              #94.5
        shrl      $31, %eax                                     #94.5
        movl      $1024, %esi                                   #94.5
        addl      %eax, %r15d                                   #94.5
        vmovsd    %xmm0, 1120(%rdi)                             #[spill]
        movq      1088(%rdi), %rbx                              #[spill]
        sarl      $1, %r15d                                     #94.5
..___tag_value_main.70:
#       gethostname(char *, size_t)
        call      gethostname                                   #94.5
..___tag_value_main.71:
                                # LOE rbx r12 r14 r15d
..B1.57:                        # Preds ..B1.56
                                # Execution count [1.66e+01]: Infreq
        movl      $.L_2__STRING.0, %esi                         #94.5
        lea       1024(%rsp), %rdi                              #94.5
..___tag_value_main.72:
#       strcmp(const char *, const char *)
        call      strcmp                                        #94.5
..___tag_value_main.73:
                                # LOE rbx r12 r13 r14 eax r15d
..B1.88:                        # Preds ..B1.57
                                # Execution count [1.66e+01]: Infreq
        testl     %eax, %eax                                    #94.5
        je        ..B1.69       # Prob 9%                       #94.5
                                # LOE rbx r12 r13 r14 r15d
..B1.58:                        # Preds ..B1.88
                                # Execution count [1.49e+01]: Infreq
        movl      $.L_2__STRING.1, %esi                         #94.5
        lea       1024(%rsp), %rdi                              #94.5
..___tag_value_main.74:
#       strcmp(const char *, const char *)
        call      strcmp                                        #94.5
..___tag_value_main.75:
                                # LOE rbx r12 r13 r14 eax r15d
..B1.89:                        # Preds ..B1.58
                                # Execution count [1.49e+01]: Infreq
        testl     %eax, %eax                                    #94.5
        je        ..B1.67       # Prob 9%                       #94.5
                                # LOE rbx r12 r13 r14 r15d
..B1.59:                        # Preds ..B1.89
                                # Execution count [1.35e+01]: Infreq
        movl      $.L_2__STRING.2, %esi                         #94.5
        lea       1024(%rsp), %rdi                              #94.5
..___tag_value_main.76:
#       strcmp(const char *, const char *)
        call      strcmp                                        #94.5
..___tag_value_main.77:
                                # LOE rbx r12 r13 r14 eax r15d
..B1.90:                        # Preds ..B1.59
                                # Execution count [1.35e+01]: Infreq
        testl     %eax, %eax                                    #94.5
        jne       ..B1.62       # Prob 78%                      #94.5
                                # LOE rbx r12 r13 r14 r15d
..B1.60:                        # Preds ..B1.90
                                # Execution count [2.96e+00]: Infreq
        vmovsd    2080(%rsp), %xmm0                             #94.5[spill]
        vmovsd    2088(%rsp), %xmm1                             #94.5[spill]
..___tag_value_main.79:
#       pow(double, double)
        call      pow                                           #94.5
..___tag_value_main.80:
                                # LOE rbx r12 r14 r15d xmm0
..B1.61:                        # Preds ..B1.60
                                # Execution count [2.96e+00]: Infreq
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #94.5
        vcvttsd2si %xmm0, %r13                                  #94.5
                                # LOE rbx r12 r13 r14 r15d
..B1.62:                        # Preds ..B1.70 ..B1.68 ..B1.61 ..B1.90
                                # Execution count [1.66e+01]: Infreq
        movslq    %r15d, %rcx                                   #94.5
        vxorpd    %xmm12, %xmm12, %xmm12                        #94.5
        imulq     %r14, %rcx                                    #94.5
        vcvtsi2sdq %rcx, %xmm12, %xmm12                         #94.5
        vmovsd    .L_2il0floatpacket.16(%rip), %xmm8            #94.5
        vxorpd    %xmm6, %xmm6, %xmm6                           #94.5
        vmovsd    2144(%rsp), %xmm1                             #94.5[spill]
        vxorpd    %xmm7, %xmm7, %xmm7                           #94.5
        vdivsd    %xmm1, %xmm8, %xmm5                           #94.5
        vmulsd    .L_2il0floatpacket.10(%rip), %xmm12, %xmm13   #94.5
        vxorpd    %xmm9, %xmm9, %xmm9                           #94.5
        vcvtsi2sd %r15d, %xmm6, %xmm6                           #94.5
        vcvtsi2sdq %r14, %xmm7, %xmm7                           #94.5
        vdivsd    %xmm13, %xmm1, %xmm14                         #94.5
        vmulsd    .L_2il0floatpacket.9(%rip), %xmm5, %xmm10     #94.5
        vxorpd    %xmm15, %xmm15, %xmm15                        #94.5
        vcvtsi2sd 2104(%rsp), %xmm9, %xmm9                      #94.5[spill]
        vcvtsi2sdq %r13, %xmm15, %xmm15                         #94.5
        vmulsd    .L_2il0floatpacket.11(%rip), %xmm5, %xmm4     #94.5
        vmulsd    .L_2il0floatpacket.12(%rip), %xmm5, %xmm5     #94.5
        vmulsd    %xmm6, %xmm10, %xmm11                         #94.5
        vmulsd    %xmm6, %xmm4, %xmm8                           #94.5
        vmulsd    %xmm6, %xmm5, %xmm6                           #94.5
        vmulsd    .L_2il0floatpacket.8(%rip), %xmm9, %xmm0      #94.5
        vmulsd    %xmm7, %xmm11, %xmm2                          #94.5
        vmulsd    %xmm15, %xmm14, %xmm3                         #94.5
        vmulsd    %xmm7, %xmm8, %xmm4                           #94.5
        vmulsd    %xmm7, %xmm6, %xmm5                           #94.5
        movl      $.L_2__STRING.3, %edi                         #94.5
        movl      %r15d, %esi                                   #94.5
        movq      %r14, %rdx                                    #94.5
        movl      $6, %eax                                      #94.5
..___tag_value_main.84:
#       printf(const char *__restrict__, ...)
        call      printf                                        #94.5
..___tag_value_main.85:
                                # LOE rbx r12
..B1.63:                        # Preds ..B1.62
                                # Execution count [1.66e+01]: Infreq
        movq      %r12, %rdi                                    #94.5
..___tag_value_main.86:
#       free(void *)
        call      free                                          #94.5
..___tag_value_main.87:
                                # LOE rbx
..B1.64:                        # Preds ..B1.63
                                # Execution count [1.66e+01]: Infreq
        movq      2176(%rsp), %rdi                              #94.5[spill]
..___tag_value_main.88:
#       free(void *)
        call      free                                          #94.5
..___tag_value_main.89:
                                # LOE rbx
..B1.65:                        # Preds ..B1.64
                                # Execution count [1.66e+01]: Infreq
        movb      2136(%rsp), %al                               #91.3[spill]
        addq      $-192, %rbx                                   #91.3
        incb      %al                                           #91.3
        addl      $-64, 2128(%rsp)                              #91.3[spill]
        addl      $-192, 2104(%rsp)                             #91.3[spill]
        addq      $-512, 2096(%rsp)                             #91.3[spill]
        incq      2120(%rsp)                                    #91.3[spill]
        movb      %al, 2136(%rsp)                               #91.3[spill]
        cmpb      $17, %al                                      #91.3
        jb        ..B1.11       # Prob 93%                      #91.3
                                # LOE rbx
..B1.66:                        # Preds ..B1.65
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
..B1.67:                        # Preds ..B1.89
                                # Execution count [1.48e+00]: Infreq
        vmovsd    2080(%rsp), %xmm0                             #94.5[spill]
        vmovsd    2088(%rsp), %xmm1                             #94.5[spill]
..___tag_value_main.115:
#       pow(double, double)
        call      pow                                           #94.5
..___tag_value_main.116:
                                # LOE rbx r12 r14 r15d xmm0
..B1.68:                        # Preds ..B1.67
                                # Execution count [1.48e+00]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #94.5
        vcvttsd2si %xmm0, %r13                                  #94.5
        jmp       ..B1.62       # Prob 100%                     #94.5
                                # LOE rbx r12 r13 r14 r15d
..B1.69:                        # Preds ..B1.88
                                # Execution count [1.64e+00]: Infreq
        vmovsd    2080(%rsp), %xmm0                             #94.5[spill]
        vmovsd    2088(%rsp), %xmm1                             #94.5[spill]
..___tag_value_main.119:
#       pow(double, double)
        call      pow                                           #94.5
..___tag_value_main.120:
                                # LOE rbx r12 r14 r15d xmm0
..B1.70:                        # Preds ..B1.69
                                # Execution count [1.64e+00]: Infreq
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm0, %xmm0      #94.5
        vcvttsd2si %xmm0, %r13                                  #94.5
        jmp       ..B1.62       # Prob 100%                     #94.5
                                # LOE rbx r12 r13 r14 r15d
..B1.71:                        # Preds ..B1.29
                                # Execution count [7.45e+00]: Infreq
        xorl      %r15d, %r15d                                  #94.5
        jmp       ..B1.33       # Prob 100%                     #94.5
                                # LOE rax rdx rbx rsi r8 r9 r10 r12 r15 r13d cl ymm0
..B1.72:                        # Preds ..B1.16 ..B1.18 ..B1.20
                                # Execution count [7.45e+00]: Infreq
        xorl      %edx, %edx                                    #94.5
        jmp       ..B1.28       # Prob 100%                     #94.5
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
                                # LOE rbx rsi r8 r9 r10 r12 edx r13d cl ymm0
..B1.75:                        # Preds ..B1.83
                                # Execution count [8.91e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm1             #87.3
        vmovsd    %xmm1, 2080(%rsp)                             #87.3[spill]
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #87.3
        vmovsd    %xmm1, 2088(%rsp)                             #87.3[spill]
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #87.3
..___tag_value_main.128:
#       pow(double, double)
        call      pow                                           #87.3
..___tag_value_main.129:
                                # LOE r12 r13 r14 r15 xmm0
..B1.76:                        # Preds ..B1.75
                                # Execution count [8.91e-02]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #87.3
        vcvttsd2si %xmm0, %rbx                                  #87.3
        jmp       ..B1.7        # Prob 100%                     #87.3
                                # LOE rbx r12 r13 r14 r15
..B1.77:                        # Preds ..B1.82
                                # Execution count [9.88e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm1             #87.3
        vmovsd    %xmm1, 2080(%rsp)                             #87.3[spill]
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #87.3
        vmovsd    %xmm1, 2088(%rsp)                             #87.3[spill]
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #87.3
..___tag_value_main.132:
#       pow(double, double)
        call      pow                                           #87.3
..___tag_value_main.133:
                                # LOE r12 r13 r14 r15 xmm0
..B1.78:                        # Preds ..B1.77
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
..___tag_value_getFreq.135:
..L136:
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
..___tag_value_getFreq.142:
#       strcmp(const char *, const char *)
        call      strcmp                                        #12.7
..___tag_value_getFreq.143:
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
..___tag_value_getFreq.144:
#       strcmp(const char *, const char *)
        call      strcmp                                        #16.7
..___tag_value_getFreq.145:
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
..___tag_value_getFreq.146:
#       strcmp(const char *, const char *)
        call      strcmp                                        #20.7
..___tag_value_getFreq.147:
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
..___tag_value_getFreq.156:
#       pow(double, double)
        call      pow                                           #21.26
..___tag_value_getFreq.157:
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
..___tag_value_getFreq.166:
#       pow(double, double)
        call      pow                                           #17.26
..___tag_value_getFreq.167:
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
..___tag_value_getFreq.176:
#       pow(double, double)
        call      pow                                           #13.26
..___tag_value_getFreq.177:
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
..___tag_value_stencil.184:
..L185:
                                                        #27.49
        pushq     %rbp                                          #27.49
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #27.49
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-32, %rsp                                    #27.49
        pushq     %r12                                          #27.49
        pushq     %r13                                          #27.49
        pushq     %r14                                          #27.49
        pushq     %r15                                          #27.49
        pushq     %rbx                                          #27.49
        subq      $1080, %rsp                                   #27.49
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
        movslq    %esi, %r12                                    #27.49
        movslq    %edi, %r14                                    #27.49
        movl      %esi, 1032(%rsp)                              #27.49[spill]
        movl      %edi, 1024(%rsp)                              #27.49[spill]
        movl      $64, %edi                                     #31.7
        vmovsd    %xmm0, 88(%rsp)                               #27.49[spill]
        lea       1(%r12), %rax                                 #29.29
        imulq     %r14, %rax                                    #30.24
        lea       1(,%rax,8), %rsi                              #31.7
        lea       (,%rax,8), %rbx                               #31.30
..___tag_value_stencil.197:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #31.7
..___tag_value_stencil.198:
                                # LOE rax rbx r12 r14
..B3.86:                        # Preds ..B3.1
                                # Execution count [1.00e+00]
        movq      %rax, %r15                                    #31.7
                                # LOE rbx r12 r14 r15
..B3.2:                         # Preds ..B3.86
                                # Execution count [1.00e+00]
        movl      $64, %edi                                     #32.7
        movq      %rbx, %rsi                                    #32.7
..___tag_value_stencil.199:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #32.7
..___tag_value_stencil.200:
                                # LOE rax r12 r14 r15
..B3.87:                        # Preds ..B3.2
                                # Execution count [1.00e+00]
        movq      %rax, %rbx                                    #32.7
                                # LOE rbx r12 r14 r15
..B3.3:                         # Preds ..B3.87
                                # Execution count [1.00e+00]
        xorl      %r11d, %r11d                                  #37.3
        testq     %r14, %r14                                    #37.18
        jle       ..B3.94       # Prob 9%                       #37.18
                                # LOE rbx r11 r12 r14 r15
..B3.4:                         # Preds ..B3.3
                                # Execution count [9.00e-01]
        vmovupd   .L_2il0floatpacket.13(%rip), %ymm0            #39.29
        lea       8(,%r12,8), %rax                              #39.7
        movq      %rax, 120(%rsp)                               #39.7[spill]
        movq      $0x3e80867a71b56e7e, %r8                      #39.29
        movq      %rax, %r9                                     #37.3
        movq      %r15, %rsi                                    #37.3
        movl      1032(%rsp), %r10d                             #37.3[spill]
                                # LOE rbx rsi r8 r9 r11 r12 r14 r15 r10d ymm0
..B3.5:                         # Preds ..B3.27 ..B3.4
                                # Execution count [5.00e+00]
        testq     %r12, %r12                                    #38.20
        jle       ..B3.27       # Prob 50%                      #38.20
                                # LOE rbx rsi r8 r9 r11 r12 r14 r15 r10d ymm0
..B3.6:                         # Preds ..B3.5
                                # Execution count [4.50e+00]
        cmpl      $16, %r10d                                    #38.5
        jl        ..B3.81       # Prob 10%                      #38.5
                                # LOE rbx rsi r8 r9 r11 r12 r14 r15 r10d ymm0
..B3.7:                         # Preds ..B3.6
                                # Execution count [4.50e+00]
        lea       8(%rsi), %rdx                                 #39.7
        andq      $31, %rdx                                     #38.5
        movl      %edx, %edx                                    #38.5
        testl     %edx, %edx                                    #38.5
        je        ..B3.10       # Prob 50%                      #38.5
                                # LOE rdx rbx rsi r8 r9 r11 r12 r14 r15 r10d ymm0
..B3.8:                         # Preds ..B3.7
                                # Execution count [4.50e+00]
        testb     $7, %dl                                       #38.5
        jne       ..B3.81       # Prob 10%                      #38.5
                                # LOE rdx rbx rsi r8 r9 r11 r12 r14 r15 r10d ymm0
..B3.9:                         # Preds ..B3.8
                                # Execution count [2.25e+00]
        negl      %edx                                          #38.5
        addl      $32, %edx                                     #38.5
        shrl      $3, %edx                                      #38.5
                                # LOE rdx rbx rsi r8 r9 r11 r12 r14 r15 r10d ymm0
..B3.10:                        # Preds ..B3.9 ..B3.7
                                # Execution count [4.50e+00]
        lea       16(%rdx), %eax                                #38.5
        cmpl      %eax, %r10d                                   #38.5
        jl        ..B3.81       # Prob 10%                      #38.5
                                # LOE rdx rbx rsi r8 r9 r11 r12 r14 r15 r10d ymm0
..B3.11:                        # Preds ..B3.10
                                # Execution count [5.00e+00]
        movl      %r10d, %eax                                   #38.5
        xorl      %r13d, %r13d                                  #38.5
        subl      %edx, %eax                                    #38.5
        movq      %rsi, %rcx                                    #38.5
        andl      $15, %eax                                     #38.5
        negl      %eax                                          #38.5
        addl      %r10d, %eax                                   #38.5
        testl     %edx, %edx                                    #38.5
        jbe       ..B3.15       # Prob 10%                      #38.5
                                # LOE rdx rcx rbx rsi r8 r9 r11 r12 r13 r14 r15 eax r10d ymm0
..B3.13:                        # Preds ..B3.11 ..B3.13
                                # Execution count [2.50e+01]
        incq      %r13                                          #38.5
        movq      %r8, 8(%rcx)                                  #39.7
        addq      $8, %rcx                                      #38.5
        cmpq      %rdx, %r13                                    #38.5
        jb        ..B3.13       # Prob 82%                      #38.5
                                # LOE rdx rcx rbx rsi r8 r9 r11 r12 r13 r14 r15 eax r10d ymm0
..B3.15:                        # Preds ..B3.13 ..B3.11
                                # Execution count [4.50e+00]
        movslq    %eax, %rcx                                    #38.5
        lea       (%rsi,%rdx,8), %r13                           #38.5
                                # LOE rdx rcx rbx rsi r8 r9 r11 r12 r13 r14 r15 eax r10d ymm0
..B3.16:                        # Preds ..B3.16 ..B3.15
                                # Execution count [2.50e+01]
        addq      $16, %rdx                                     #38.5
        vmovupd   %ymm0, 8(%r13)                                #39.7
        vmovupd   %ymm0, 40(%r13)                               #39.7
        vmovupd   %ymm0, 72(%r13)                               #39.7
        vmovupd   %ymm0, 104(%r13)                              #39.7
        addq      $128, %r13                                    #38.5
        cmpq      %rcx, %rdx                                    #38.5
        jb        ..B3.16       # Prob 82%                      #38.5
                                # LOE rdx rcx rbx rsi r8 r9 r11 r12 r13 r14 r15 eax r10d ymm0
..B3.18:                        # Preds ..B3.16 ..B3.81
                                # Execution count [5.00e+00]
        lea       1(%rax), %edx                                 #38.5
        cmpl      %r10d, %edx                                   #38.5
        ja        ..B3.27       # Prob 50%                      #38.5
                                # LOE rbx rsi r8 r9 r11 r12 r14 r15 eax r10d ymm0
..B3.19:                        # Preds ..B3.18
                                # Execution count [4.50e+00]
        movslq    %eax, %rax                                    #38.5
        movq      %r12, %rdx                                    #38.5
        subq      %rax, %rdx                                    #38.5
        cmpq      $4, %rdx                                      #38.5
        jl        ..B3.80       # Prob 10%                      #38.5
                                # LOE rax rdx rbx rsi r8 r9 r11 r12 r14 r15 r10d ymm0
..B3.20:                        # Preds ..B3.19
                                # Execution count [4.50e+00]
        movl      %edx, %ecx                                    #38.5
        xorl      %edi, %edi                                    #38.5
        andl      $-4, %ecx                                     #38.5
        lea       (%rsi,%rax,8), %r13                           #39.7
        movslq    %ecx, %rcx                                    #38.5
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r11 r12 r13 r14 r15 r10d ymm0
..B3.21:                        # Preds ..B3.21 ..B3.20
                                # Execution count [2.50e+01]
        vmovupd   %ymm0, 8(%r13,%rdi,8)                         #39.7
        addq      $4, %rdi                                      #38.5
        cmpq      %rcx, %rdi                                    #38.5
        jb        ..B3.21       # Prob 82%                      #38.5
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r11 r12 r13 r14 r15 r10d ymm0
..B3.23:                        # Preds ..B3.21 ..B3.80
                                # Execution count [5.00e+00]
        cmpq      %rdx, %rcx                                    #38.5
        jae       ..B3.27       # Prob 10%                      #38.5
                                # LOE rax rdx rcx rbx rsi r8 r9 r11 r12 r14 r15 r10d ymm0
..B3.24:                        # Preds ..B3.23
                                # Execution count [4.50e+00]
        lea       (%rsi,%rax,8), %rax                           #39.7
                                # LOE rax rdx rcx rbx rsi r8 r9 r11 r12 r14 r15 r10d ymm0
..B3.25:                        # Preds ..B3.25 ..B3.24
                                # Execution count [2.50e+01]
        movq      %r8, 8(%rax,%rcx,8)                           #39.7
        incq      %rcx                                          #38.5
        cmpq      %rdx, %rcx                                    #38.5
        jb        ..B3.25       # Prob 82%                      #38.5
                                # LOE rax rdx rcx rbx rsi r8 r9 r11 r12 r14 r15 r10d ymm0
..B3.27:                        # Preds ..B3.25 ..B3.5 ..B3.18 ..B3.23
                                # Execution count [5.00e+00]
        incq      %r11                                          #37.3
        addq      %r9, %rsi                                     #37.3
        cmpq      %r14, %r11                                    #37.3
        jb        ..B3.5        # Prob 82%                      #37.3
                                # LOE rbx rsi r8 r9 r11 r12 r14 r15 r10d ymm0
..B3.29:                        # Preds ..B3.27 ..B3.94
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
..B3.30:                        # Preds ..B3.29
                                # Execution count [9.00e-01]
        vbroadcastsd 88(%rsp), %ymm0                            #27.6[spill]
        lea       -2(%r12), %r9                                 #54.19
        vxorpd    %xmm2, %xmm2, %xmm2                           #48.17
        movq      %r9, %r8                                      #54.9
        lea       (%rbx,%r12,8), %rcx                           #56.13
        xorl      %eax, %eax                                    #47.5
        lea       (%r15,%r12,8), %rdx                           #58.41
        shlq      $4, %r12                                      #35.7
        andq      $-16, %r8                                     #54.9
        addq      %r15, %r12                                    #58.19
        addq      $-2, %r14                                     #50.32
        vmovupd   %ymm0, (%rsp)                                 #58.19[spill]
        movq      %r12, 56(%rsp)                                #58.19[spill]
        movl      %eax, %r12d                                   #58.19
        movq      %rdx, 64(%rsp)                                #58.19[spill]
        movq      %rcx, 72(%rsp)                                #58.19[spill]
        movq      %r8, 112(%rsp)                                #58.19[spill]
        movq      %r9, 80(%rsp)                                 #58.19[spill]
                                # LOE rbx r14 r15 r12d r13d
..B3.31:                        # Preds ..B3.62 ..B3.30 ..B3.57
                                # Execution count [2.78e+01]
        vmovsd    8(%r15), %xmm0                                #48.10
        vxorpd    %xmm1, %xmm1, %xmm1                           #48.17
        vcomisd   %xmm1, %xmm0                                  #48.17
        jbe       ..B3.33       # Prob 78%                      #48.17
                                # LOE rbx r14 r15 r12d r13d
..B3.32:                        # Preds ..B3.31
                                # Execution count [6.11e+00]
        movq      %rbx, %rdi                                    #48.20
        vzeroupper                                              #48.20
..___tag_value_stencil.212:
#       dummy(double *)
        call      dummy                                         #48.20
..___tag_value_stencil.213:
                                # LOE rbx r14 r15 r12d r13d
..B3.33:                        # Preds ..B3.32 ..B3.31
                                # Execution count [2.78e+01]
        xorl      %r10d, %r10d                                  #50.7
        xorl      %r11d, %r11d                                  #50.37
        testq     %r14, %r14                                    #50.32
        jle       ..B3.57       # Prob 10%                      #50.32
                                # LOE rbx r10 r11 r14 r15 r12d r13d
..B3.34:                        # Preds ..B3.33
                                # Execution count [2.50e+01]
        movl      %r13d, 32(%rsp)                               #[spill]
        movl      %r12d, 40(%rsp)                               #[spill]
        movq      %r14, 104(%rsp)                               #[spill]
        movq      %rbx, 48(%rsp)                                #[spill]
        vmovupd   (%rsp), %ymm1                                 #[spill]
        vmovsd    88(%rsp), %xmm0                               #[spill]
        movq      56(%rsp), %r9                                 #[spill]
        movq      64(%rsp), %r8                                 #[spill]
        movq      72(%rsp), %rdx                                #[spill]
        movq      80(%rsp), %rcx                                #[spill]
                                # LOE rdx rcx r8 r9 r10 r11 r15 xmm0 ymm1
..B3.35:                        # Preds ..B3.55 ..B3.34
                                # Execution count [1.39e+02]
        testq     %rcx, %rcx                                    #54.41
        jle       ..B3.55       # Prob 50%                      #54.41
                                # LOE rdx rcx r8 r9 r10 r11 r15 xmm0 ymm1
..B3.36:                        # Preds ..B3.35
                                # Execution count [1.25e+02]
        cmpq      $16, %rcx                                     #54.9
        jl        ..B3.79       # Prob 10%                      #54.9
                                # LOE rdx rcx r8 r9 r10 r11 r15 xmm0 ymm1
..B3.37:                        # Preds ..B3.36
                                # Execution count [1.39e+02]
        movq      112(%rsp), %rbx                               #54.9[spill]
                                # LOE rdx rcx rbx r8 r9 r10 r11 r15 xmm0 ymm1
..B3.39:                        # Preds ..B3.37
                                # Execution count [1.25e+02]
        movq      %rbx, %rdi                                    #58.19
        xorl      %r14d, %r14d                                  #54.9
        lea       (%rdx,%r11), %r13                             #56.13
        lea       (%r15,%r11), %r12                             #57.30
        lea       (%r8,%r11), %rsi                              #57.17
        lea       (%r9,%r11), %rax                              #58.19
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 xmm0 ymm1
..B3.40:                        # Preds ..B3.40 ..B3.39
                                # Execution count [6.94e+02]
        vmovupd   16(%rsi,%r14,8), %ymm2                        #57.17
        vmovupd   48(%rsi,%r14,8), %ymm7                        #57.17
        vmovupd   80(%rsi,%r14,8), %ymm12                       #57.17
        vaddpd    16(%r12,%r14,8), %ymm2, %ymm3                 #57.30
        vaddpd    48(%r12,%r14,8), %ymm7, %ymm8                 #57.30
        vaddpd    80(%r12,%r14,8), %ymm12, %ymm13               #57.30
        vaddpd    32(%rax,%r14,8), %ymm3, %ymm4                 #58.19
        vaddpd    64(%rax,%r14,8), %ymm8, %ymm9                 #58.19
        vaddpd    96(%rax,%r14,8), %ymm13, %ymm14               #58.19
        vaddpd    32(%rsi,%r14,8), %ymm4, %ymm5                 #58.41
        vaddpd    64(%rsi,%r14,8), %ymm9, %ymm10                #58.41
        vaddpd    96(%rsi,%r14,8), %ymm14, %ymm15               #58.41
        vmovupd   112(%rsi,%r14,8), %ymm3                       #57.17
        vmulpd    %ymm5, %ymm1, %ymm6                           #58.41
        vmulpd    %ymm10, %ymm1, %ymm11                         #58.41
        vmulpd    %ymm15, %ymm1, %ymm2                          #58.41
        vaddpd    112(%r12,%r14,8), %ymm3, %ymm4                #57.30
        vmovupd   %ymm6, 16(%r13,%r14,8)                        #56.13
        vmovupd   %ymm11, 48(%r13,%r14,8)                       #56.13
        vmovupd   %ymm2, 80(%r13,%r14,8)                        #56.13
        vaddpd    128(%rax,%r14,8), %ymm4, %ymm5                #58.19
        vaddpd    128(%rsi,%r14,8), %ymm5, %ymm6                #58.41
        vmulpd    %ymm6, %ymm1, %ymm7                           #58.41
        vmovupd   %ymm7, 112(%r13,%r14,8)                       #56.13
        addq      $16, %r14                                     #54.9
        cmpq      %rdi, %r14                                    #54.9
        jb        ..B3.40       # Prob 82%                      #54.9
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 xmm0 ymm1
..B3.42:                        # Preds ..B3.40 ..B3.79
                                # Execution count [1.39e+02]
        lea       1(%rbx), %rax                                 #54.9
        cmpq      %rcx, %rax                                    #54.9
        ja        ..B3.55       # Prob 50%                      #54.9
                                # LOE rdx rcx rbx r8 r9 r10 r11 r15 xmm0 ymm1
..B3.43:                        # Preds ..B3.42
                                # Execution count [1.25e+02]
        movq      %rcx, %rsi                                    #54.9
        subq      %rbx, %rsi                                    #54.9
        cmpq      $4, %rsi                                      #54.9
        jl        ..B3.78       # Prob 10%                      #54.9
                                # LOE rdx rcx rbx rsi r8 r9 r10 r11 r15 xmm0 ymm1
..B3.44:                        # Preds ..B3.43
                                # Execution count [1.39e+02]
        movq      %rsi, %rax                                    #54.9
        andq      $-4, %rax                                     #54.9
                                # LOE rax rdx rcx rbx rsi r8 r9 r10 r11 r15 xmm0 ymm1
..B3.46:                        # Preds ..B3.44
                                # Execution count [1.25e+02]
        movq      %r15, 96(%rsp)                                #57.17[spill]
        lea       (%r9,%r11), %r13                              #58.19
        xorl      %edi, %edi                                    #54.9
        lea       (%r13,%rbx,8), %r13                           #58.19
        lea       (%rdx,%r11), %r14                             #56.13
        lea       (%r15,%r11), %r12                             #57.30
        movq      %r13, %r15                                    #57.17
        lea       (%r8,%r11), %r13                              #57.17
        lea       (%r14,%rbx,8), %r14                           #56.13
        lea       (%r12,%rbx,8), %r12                           #57.30
        lea       (%r13,%rbx,8), %r13                           #57.17
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 xmm0 ymm1
..B3.47:                        # Preds ..B3.47 ..B3.46
                                # Execution count [6.94e+02]
        vmovupd   16(%r13,%rdi,8), %ymm2                        #57.17
        vaddpd    16(%r12,%rdi,8), %ymm2, %ymm3                 #57.30
        vaddpd    32(%r15,%rdi,8), %ymm3, %ymm4                 #58.19
        vaddpd    32(%r13,%rdi,8), %ymm4, %ymm5                 #58.41
        vmulpd    %ymm5, %ymm1, %ymm6                           #58.41
        vmovupd   %ymm6, 16(%r14,%rdi,8)                        #56.13
        addq      $4, %rdi                                      #54.9
        cmpq      %rax, %rdi                                    #54.9
        jb        ..B3.47       # Prob 82%                      #54.9
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 xmm0 ymm1
..B3.48:                        # Preds ..B3.47
                                # Execution count [1.25e+02]
        movq      96(%rsp), %r15                                #[spill]
                                # LOE rax rdx rcx rbx rsi r8 r9 r10 r11 r15 xmm0 ymm1
..B3.51:                        # Preds ..B3.48 ..B3.78
                                # Execution count [6.94e+02]
        cmpq      %rsi, %rax                                    #54.9
        jae       ..B3.55       # Prob 10%                      #54.9
                                # LOE rax rdx rcx rbx rsi r8 r9 r10 r11 r15 xmm0 ymm1
..B3.52:                        # Preds ..B3.51
                                # Execution count [1.25e+02]
        lea       (%rdx,%r11), %r14                             #56.13
        lea       (%r15,%r11), %r13                             #57.30
        lea       (%r9,%r11), %r12                              #58.19
        lea       (%r8,%r11), %rdi                              #58.41
        lea       (%r14,%rbx,8), %r14                           #56.13
        lea       (%r13,%rbx,8), %r13                           #57.30
        lea       (%r12,%rbx,8), %r12                           #58.19
        lea       (%rdi,%rbx,8), %rbx                           #58.41
                                # LOE rax rdx rcx rbx rsi r8 r9 r10 r11 r12 r13 r14 r15 xmm0 ymm1
..B3.53:                        # Preds ..B3.53 ..B3.52
                                # Execution count [6.94e+02]
        vmovsd    16(%rbx,%rax,8), %xmm2                        #57.17
        vaddsd    16(%r13,%rax,8), %xmm2, %xmm3                 #57.30
        vaddsd    32(%r12,%rax,8), %xmm3, %xmm4                 #58.19
        vaddsd    32(%rbx,%rax,8), %xmm4, %xmm5                 #58.41
        vmulsd    %xmm5, %xmm0, %xmm6                           #58.41
        vmovsd    %xmm6, 16(%r14,%rax,8)                        #56.13
        incq      %rax                                          #54.9
        cmpq      %rsi, %rax                                    #54.9
        jb        ..B3.53       # Prob 82%                      #54.9
                                # LOE rax rdx rcx rbx rsi r8 r9 r10 r11 r12 r13 r14 r15 xmm0 ymm1
..B3.55:                        # Preds ..B3.53 ..B3.51 ..B3.35 ..B3.42
                                # Execution count [1.39e+02]
        incq      %r10                                          #50.7
        addq      120(%rsp), %r11                               #50.7[spill]
        cmpq      104(%rsp), %r10                               #50.7[spill]
        jb        ..B3.35       # Prob 82%                      #50.7
                                # LOE rdx rcx r8 r9 r10 r11 r15 xmm0 ymm1
..B3.56:                        # Preds ..B3.55
                                # Execution count [2.50e+01]
        movl      32(%rsp), %r13d                               #[spill]
        movl      40(%rsp), %r12d                               #[spill]
        movq      104(%rsp), %r14                               #[spill]
        movq      48(%rsp), %rbx                                #[spill]
                                # LOE rbx r14 r15 r12d r13d
..B3.57:                        # Preds ..B3.33 ..B3.56
                                # Execution count [2.78e+01]
        incl      %r12d                                         #47.5
        cmpl      %r13d, %r12d                                  #47.5
        jb        ..B3.31       # Prob 82%                      #47.5
                                # LOE rbx r14 r15 r12d r13d
..B3.59:                        # Preds ..B3.57 ..B3.62
                                # Execution count [5.56e+00]: Infreq
        vzeroupper                                              #63.5
        lea       1064(%rsp), %rdi                              #63.5
        lea       1056(%rsp), %rsi                              #63.5
..___tag_value_stencil.233:
#       timing(double *, double *)
        call      timing                                        #63.5
..___tag_value_stencil.234:
                                # LOE rbx r14 r15 r13d
..B3.60:                        # Preds ..B3.59
                                # Execution count [5.56e+00]: Infreq
        vmovsd    1064(%rsp), %xmm0                             #64.15
        addl      %r13d, %r13d                                  #45.34
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm1             #45.30
        vsubsd    1048(%rsp), %xmm0, %xmm0                      #64.19
        vcomisd   %xmm0, %xmm1                                  #45.30
        jbe       ..B3.64       # Prob 18%                      #45.30
                                # LOE rbx r14 r15 r13d xmm0
..B3.61:                        # Preds ..B3.60
                                # Execution count [4.56e+00]: Infreq
        lea       1048(%rsp), %rdi                              #46.5
        lea       1056(%rsp), %rsi                              #46.5
..___tag_value_stencil.235:
#       timing(double *, double *)
        call      timing                                        #46.5
..___tag_value_stencil.236:
                                # LOE rbx r14 r15 r13d
..B3.62:                        # Preds ..B3.61
                                # Execution count [4.56e+00]: Infreq
        xorl      %r12d, %r12d                                  #47.5
        testl     %r13d, %r13d                                  #47.20
        jle       ..B3.59       # Prob 10%                      #47.20
        jmp       ..B3.31       # Prob 100%                     #47.20
                                # LOE rbx r14 r15 r12d r13d
..B3.64:                        # Preds ..B3.60
                                # Execution count [1.00e+00]: Infreq
        movl      %r13d, %eax                                   #66.3
        lea       (%rsp), %rdi                                  #68.3
        shrl      $31, %eax                                     #66.3
        movl      $1024, %esi                                   #68.3
        addl      %eax, %r13d                                   #66.3
        vmovsd    %xmm0, 1040(%rdi)                             #[spill]
        sarl      $1, %r13d                                     #66.3
..___tag_value_stencil.238:
#       gethostname(char *, size_t)
        call      gethostname                                   #68.3
..___tag_value_stencil.239:
                                # LOE rbx r15 r13d
..B3.65:                        # Preds ..B3.64
                                # Execution count [1.00e+00]: Infreq
        movl      $.L_2__STRING.0, %esi                         #70.12
        lea       (%rsp), %rdi                                  #70.12
..___tag_value_stencil.240:
#       strcmp(const char *, const char *)
        call      strcmp                                        #70.12
..___tag_value_stencil.241:
                                # LOE rbx r12 r15 eax r13d
..B3.88:                        # Preds ..B3.65
                                # Execution count [1.00e+00]: Infreq
        testl     %eax, %eax                                    #70.12
        je        ..B3.76       # Prob 9%                       #70.12
                                # LOE rbx r12 r15 r13d
..B3.66:                        # Preds ..B3.88
                                # Execution count [9.01e-01]: Infreq
        movl      $.L_2__STRING.1, %esi                         #70.12
        lea       (%rsp), %rdi                                  #70.12
..___tag_value_stencil.242:
#       strcmp(const char *, const char *)
        call      strcmp                                        #70.12
..___tag_value_stencil.243:
                                # LOE rbx r12 r15 eax r13d
..B3.89:                        # Preds ..B3.66
                                # Execution count [9.01e-01]: Infreq
        testl     %eax, %eax                                    #70.12
        je        ..B3.74       # Prob 9%                       #70.12
                                # LOE rbx r12 r15 r13d
..B3.67:                        # Preds ..B3.89
                                # Execution count [8.12e-01]: Infreq
        movl      $.L_2__STRING.2, %esi                         #70.12
        lea       (%rsp), %rdi                                  #70.12
..___tag_value_stencil.244:
#       strcmp(const char *, const char *)
        call      strcmp                                        #70.12
..___tag_value_stencil.245:
                                # LOE rbx r12 r15 eax r13d
..B3.90:                        # Preds ..B3.67
                                # Execution count [8.12e-01]: Infreq
        testl     %eax, %eax                                    #70.12
        jne       ..B3.70       # Prob 78%                      #70.12
                                # LOE rbx r12 r15 r13d
..B3.68:                        # Preds ..B3.90
                                # Execution count [1.79e-01]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #70.12
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #70.12
..___tag_value_stencil.246:
#       pow(double, double)
        call      pow                                           #70.12
..___tag_value_stencil.247:
                                # LOE rbx r15 r13d xmm0
..B3.69:                        # Preds ..B3.68
                                # Execution count [1.79e-01]: Infreq
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #70.12
        vcvttsd2si %xmm0, %r12                                  #70.12
                                # LOE rbx r12 r15 r13d
..B3.70:                        # Preds ..B3.77 ..B3.75 ..B3.69 ..B3.90
                                # Execution count [1.00e+00]: Infreq
        movl      1032(%rsp), %r8d                              #72.31[spill]
        vxorpd    %xmm12, %xmm12, %xmm12                        #73.3
        movl      1024(%rsp), %r9d                              #72.18[spill]
        vxorpd    %xmm6, %xmm6, %xmm6                           #73.149
        movslq    %r13d, %r10                                   #73.3
        vxorpd    %xmm7, %xmm7, %xmm7                           #73.136
        vmovsd    1040(%rsp), %xmm1                             #73.303[spill]
        lea       -2(%r8), %ecx                                 #72.31
        vmovsd    .L_2il0floatpacket.16(%rip), %xmm8            #73.3
        lea       -2(%r9), %edx                                 #72.18
        imull     %ecx, %edx                                    #72.31
        vxorpd    %xmm9, %xmm9, %xmm9                           #73.3
        imull     %r8d, %r9d                                    #73.3
        vxorpd    %xmm15, %xmm15, %xmm15                        #73.3
        vdivsd    %xmm1, %xmm8, %xmm5                           #73.303
        movslq    %edx, %rdx                                    #72.31
        addl      $-4, %r9d                                     #73.3
        imulq     %rdx, %r10                                    #73.3
        vcvtsi2sd %r13d, %xmm6, %xmm6                           #73.149
        vcvtsi2sdq %r10, %xmm12, %xmm12                         #73.3
        vcvtsi2sdq %rdx, %xmm7, %xmm7                           #73.136
        vcvtsi2sd %r9d, %xmm9, %xmm9                            #73.3
        vcvtsi2sdq %r12, %xmm15, %xmm15                         #73.3
        vmulsd    .L_2il0floatpacket.10(%rip), %xmm12, %xmm13   #73.3
        vmulsd    .L_2il0floatpacket.9(%rip), %xmm5, %xmm10     #73.3
        vmulsd    .L_2il0floatpacket.11(%rip), %xmm5, %xmm4     #73.3
        vdivsd    %xmm13, %xmm1, %xmm14                         #73.3
        vmulsd    .L_2il0floatpacket.12(%rip), %xmm5, %xmm5     #73.3
        movl      $.L_2__STRING.3, %edi                         #73.3
        vmulsd    %xmm6, %xmm10, %xmm11                         #73.3
        vmulsd    %xmm6, %xmm4, %xmm8                           #73.3
        vmulsd    %xmm6, %xmm5, %xmm6                           #73.3
        vmulsd    .L_2il0floatpacket.8(%rip), %xmm9, %xmm0      #73.3
        vmulsd    %xmm7, %xmm11, %xmm2                          #73.3
        vmulsd    %xmm15, %xmm14, %xmm3                         #73.3
        vmulsd    %xmm7, %xmm8, %xmm4                           #73.3
        vmulsd    %xmm7, %xmm6, %xmm5                           #73.3
        movl      %r13d, %esi                                   #73.3
        movl      $6, %eax                                      #73.3
..___tag_value_stencil.251:
#       printf(const char *__restrict__, ...)
        call      printf                                        #73.3
..___tag_value_stencil.252:
                                # LOE rbx r15
..B3.71:                        # Preds ..B3.70
                                # Execution count [1.00e+00]: Infreq
        movq      %r15, %rdi                                    #78.3
..___tag_value_stencil.253:
#       free(void *)
        call      free                                          #78.3
..___tag_value_stencil.254:
                                # LOE rbx
..B3.72:                        # Preds ..B3.71
                                # Execution count [1.00e+00]: Infreq
        movq      %rbx, %rdi                                    #78.12
..___tag_value_stencil.255:
#       free(void *)
        call      free                                          #78.12
..___tag_value_stencil.256:
                                # LOE
..B3.73:                        # Preds ..B3.72
                                # Execution count [1.00e+00]: Infreq
        addq      $1080, %rsp                                   #79.1
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
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B3.74:                        # Preds ..B3.89
                                # Execution count [8.91e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #70.12
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #70.12
..___tag_value_stencil.271:
#       pow(double, double)
        call      pow                                           #70.12
..___tag_value_stencil.272:
                                # LOE rbx r15 r13d xmm0
..B3.75:                        # Preds ..B3.74
                                # Execution count [8.91e-02]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #70.12
        vcvttsd2si %xmm0, %r12                                  #70.12
        jmp       ..B3.70       # Prob 100%                     #70.12
                                # LOE rbx r12 r15 r13d
..B3.76:                        # Preds ..B3.88
                                # Execution count [9.88e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #70.12
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #70.12
..___tag_value_stencil.273:
#       pow(double, double)
        call      pow                                           #70.12
..___tag_value_stencil.274:
                                # LOE rbx r15 r13d xmm0
..B3.77:                        # Preds ..B3.76
                                # Execution count [9.88e-02]: Infreq
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm0, %xmm0      #70.12
        vcvttsd2si %xmm0, %r12                                  #70.12
        jmp       ..B3.70       # Prob 100%                     #70.12
                                # LOE rbx r12 r15 r13d
..B3.78:                        # Preds ..B3.43
                                # Execution count [1.25e+01]: Infreq
        xorl      %eax, %eax                                    #54.9
        jmp       ..B3.51       # Prob 100%                     #54.9
                                # LOE rax rdx rcx rbx rsi r8 r9 r10 r11 r15 xmm0 ymm1
..B3.79:                        # Preds ..B3.36
                                # Execution count [1.25e+01]: Infreq
        xorl      %ebx, %ebx                                    #54.9
        jmp       ..B3.42       # Prob 100%                     #54.9
                                # LOE rdx rcx rbx r8 r9 r10 r11 r15 xmm0 ymm1
..B3.80:                        # Preds ..B3.19
                                # Execution count [4.50e-01]: Infreq
        xorl      %ecx, %ecx                                    #38.5
        jmp       ..B3.23       # Prob 100%                     #38.5
                                # LOE rax rdx rcx rbx rsi r8 r9 r11 r12 r14 r15 r10d ymm0
..B3.81:                        # Preds ..B3.6 ..B3.8 ..B3.10
                                # Execution count [4.50e-01]: Infreq
        xorl      %eax, %eax                                    #38.5
        jmp       ..B3.18       # Prob 100%                     #38.5
                                # LOE rbx rsi r8 r9 r11 r12 r14 r15 eax r10d ymm0
..B3.94:                        # Preds ..B3.3
                                # Execution count [1.00e-01]: Infreq
        lea       8(,%r12,8), %rax                              #39.7
        movq      %rax, 120(%rsp)                               #39.7[spill]
        jmp       ..B3.29       # Prob 100%                     #39.7
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
	.align 32
	.align 32
.L_2il0floatpacket.13:
	.long	0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a
	.type	.L_2il0floatpacket.13,@object
	.size	.L_2il0floatpacket.13,32
	.align 32
.L_2il0floatpacket.15:
	.long	0x17c1bda5,0x3fb55326,0x17c1bda5,0x3fb55326,0x17c1bda5,0x3fb55326,0x17c1bda5,0x3fb55326
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
.L_2il0floatpacket.14:
	.long	0x71b56e7e,0x3e80867a
	.type	.L_2il0floatpacket.14,@object
	.size	.L_2il0floatpacket.14,8
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
