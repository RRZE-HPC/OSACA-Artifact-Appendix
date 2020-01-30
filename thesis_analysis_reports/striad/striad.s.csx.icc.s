# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.5.281 Build 20190815";
# mark_description "-qopenmp-simd -fno-alias -unroll -fno-builtin -xCORE-AVX512 -qopt-zmm-usage=high -Ofast -S -use-msasm -o str";
# mark_description "iad.s.csx.icc.s";
	.file "striad.c"
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
                                                          #69.1
        pushq     %rbp                                          #69.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #69.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-128, %rsp                                   #69.1
        pushq     %r12                                          #69.1
        pushq     %r13                                          #69.1
        pushq     %r14                                          #69.1
        pushq     %r15                                          #69.1
        pushq     %rbx                                          #69.1
        subq      $2136, %rsp                                   #69.1
        movq      $0x64199d9ffe, %rsi                           #69.1
        movl      $3, %edi                                      #69.1
        call      __intel_new_feature_proc_init                 #69.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE r12 r13 r14 r15
..B1.74:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        vstmxcsr  1024(%rsp)                                    #69.1
        movl      $1024, %esi                                   #71.3
        lea       (%rsp), %rdi                                  #71.3
        orl       $32832, 1024(%rdi)                            #69.1
        vldmxcsr  1024(%rdi)                                    #69.1
..___tag_value_main.11:
#       gethostname(char *, size_t)
        call      gethostname                                   #71.3
..___tag_value_main.12:
                                # LOE r12 r13 r14 r15
..B1.2:                         # Preds ..B1.74
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.0, %esi                         #73.3
        lea       (%rsp), %rdi                                  #73.3
..___tag_value_main.13:
#       strcmp(const char *, const char *)
        call      strcmp                                        #73.3
..___tag_value_main.14:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.75:                        # Preds ..B1.2
                                # Execution count [1.00e+00]
        testl     %eax, %eax                                    #73.3
        je        ..B1.70       # Prob 9%                       #73.3
                                # LOE rbx r12 r13 r14 r15
..B1.3:                         # Preds ..B1.75
                                # Execution count [9.01e-01]
        movl      $.L_2__STRING.1, %esi                         #73.3
        lea       (%rsp), %rdi                                  #73.3
..___tag_value_main.15:
#       strcmp(const char *, const char *)
        call      strcmp                                        #73.3
..___tag_value_main.16:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.76:                        # Preds ..B1.3
                                # Execution count [9.01e-01]
        testl     %eax, %eax                                    #73.3
        je        ..B1.68       # Prob 9%                       #73.3
                                # LOE rbx r12 r13 r14 r15
..B1.4:                         # Preds ..B1.76
                                # Execution count [8.12e-01]
        movl      $.L_2__STRING.2, %esi                         #73.3
        lea       (%rsp), %rdi                                  #73.3
..___tag_value_main.17:
#       strcmp(const char *, const char *)
        call      strcmp                                        #73.3
..___tag_value_main.18:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.77:                        # Preds ..B1.4
                                # Execution count [8.12e-01]
        testl     %eax, %eax                                    #73.3
        je        ..B1.5        # Prob 22%                      #73.3
                                # LOE rbx r12 r13 r14 r15
..B1.92:                        # Preds ..B1.77
                                # Execution count [6.33e-01]
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #73.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #73.3
        vmovsd    %xmm0, 2048(%rsp)                             #73.3[spill]
        vmovsd    %xmm1, 2056(%rsp)                             #73.3[spill]
        jmp       ..B1.7        # Prob 100%                     #73.3
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.77
                                # Execution count [1.79e-01]
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #73.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #73.3
        vmovsd    %xmm0, 2048(%rsp)                             #73.3[spill]
        vmovsd    %xmm1, 2056(%rsp)                             #73.3[spill]
..___tag_value_main.22:
#       pow(double, double)
        call      pow                                           #73.3
..___tag_value_main.23:
                                # LOE r12 r13 r14 r15 xmm0
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.79e-01]
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #73.3
        vcvttsd2si %xmm0, %rbx                                  #73.3
                                # LOE rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.71 ..B1.69 ..B1.6 ..B1.92
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.4, %edi                         #74.3
        xorl      %eax, %eax                                    #74.3
..___tag_value_main.25:
#       printf(const char *__restrict__, ...)
        call      printf                                        #74.3
..___tag_value_main.26:
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
                                # Execution count [1.00e+00]
        vxorpd    %xmm0, %xmm0, %xmm0                           #75.3
        lea       (%rsp), %rsi                                  #75.3
        vcvtsi2sdq %rbx, %xmm0, %xmm0                           #75.3
        movl      $.L_2__STRING.5, %edi                         #75.3
        movl      $1, %eax                                      #75.3
        vmulsd    .L_2il0floatpacket.4(%rip), %xmm0, %xmm0      #75.3
..___tag_value_main.27:
#       printf(const char *__restrict__, ...)
        call      printf                                        #75.3
..___tag_value_main.28:
                                # LOE r12 r13 r14 r15
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.6, %edi                         #76.3
        xorl      %eax, %eax                                    #76.3
..___tag_value_main.29:
#       printf(const char *__restrict__, ...)
        call      printf                                        #76.3
..___tag_value_main.30:
                                # LOE r12 r13 r14 r15
..B1.10:                        # Preds ..B1.9
                                # Execution count [1.00e+00]
        xorb      %dl, %dl                                      #77.3
        movl      $20, %eax                                     #77.3
        vmovsd    .L_2il0floatpacket.5(%rip), %xmm14            #80.5
        vmovsd    .L_2il0floatpacket.3(%rip), %xmm13            #80.5
        vxorpd    %xmm12, %xmm12, %xmm12                        #80.5
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm11            #80.5
        vmovsd    .L_2il0floatpacket.8(%rip), %xmm10            #80.5
        vmovsd    .L_2il0floatpacket.9(%rip), %xmm9             #80.5
        vmovsd    .L_2il0floatpacket.17(%rip), %xmm8            #80.5
        vmovsd    .L_2il0floatpacket.10(%rip), %xmm7            #80.5
        vmovsd    .L_2il0floatpacket.11(%rip), %xmm6            #80.5
        vmovsd    .L_2il0floatpacket.2(%rip), %xmm5             #80.5
        vmovups   .L_2il0floatpacket.12(%rip), %zmm4            #80.5
        vmovups   .L_2il0floatpacket.13(%rip), %zmm3            #80.5
        vmovups   .L_2il0floatpacket.14(%rip), %zmm2            #80.5
        vmovdqu   .L_2il0floatpacket.16(%rip), %ymm0            #80.5
        movl      %eax, 2072(%rsp)                              #77.3[spill]
        movb      %dl, 2080(%rsp)                               #77.3[spill]
                                # LOE
..B1.11:                        # Preds ..B1.61 ..B1.10
                                # Execution count [1.60e+01]
        vxorpd    %xmm1, %xmm1, %xmm1                           #78.21
        vcvtsi2sd 2072(%rsp), %xmm1, %xmm1                      #78.21[spill]
        vzeroupper                                              #78.21
        vmovsd    .L_2il0floatpacket.6(%rip), %xmm0             #78.21
..___tag_value_main.34:
#       pow(double, double)
        call      pow                                           #78.21
..___tag_value_main.35:
                                # LOE xmm0
..B1.12:                        # Preds ..B1.11
                                # Execution count [1.60e+01]
        vcvttsd2si %xmm0, %eax                                  #78.21
        movl      %eax, %r12d                                   #79.18
        movl      $64, %edi                                     #80.5
        sarl      $5, %r12d                                     #79.18
        shrl      $26, %r12d                                    #79.18
        addl      %eax, %r12d                                   #79.18
        sarl      $6, %r12d                                     #79.18
        movl      %r12d, %esi                                   #79.22
        shll      $6, %esi                                      #79.22
        movslq    %esi, %rbx                                    #80.5
        shlq      $3, %rbx                                      #80.5
        movl      %esi, 2064(%rsp)                              #79.22[spill]
        movq      %rbx, %rsi                                    #80.5
..___tag_value_main.37:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #80.5
..___tag_value_main.38:
                                # LOE rax rbx r12d
..B1.80:                        # Preds ..B1.12
                                # Execution count [1.60e+01]
        movq      %rax, %r13                                    #80.5
                                # LOE rbx r13 r12d
..B1.13:                        # Preds ..B1.80
                                # Execution count [1.60e+01]
        movl      $64, %edi                                     #80.5
        movq      %rbx, %rsi                                    #80.5
..___tag_value_main.39:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #80.5
..___tag_value_main.40:
                                # LOE rax rbx r13 r12d
..B1.81:                        # Preds ..B1.13
                                # Execution count [1.60e+01]
        movq      %rax, 2128(%rsp)                              #80.5[spill]
                                # LOE rbx r13 r12d
..B1.14:                        # Preds ..B1.81
                                # Execution count [1.60e+01]
        movl      $64, %edi                                     #80.5
        movq      %rbx, %rsi                                    #80.5
..___tag_value_main.42:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #80.5
..___tag_value_main.43:
                                # LOE rax rbx r13 r12d
..B1.82:                        # Preds ..B1.14
                                # Execution count [1.60e+01]
        movq      %rax, 2120(%rsp)                              #80.5[spill]
                                # LOE rbx r13 r12d
..B1.15:                        # Preds ..B1.82
                                # Execution count [1.60e+01]
        movl      $64, %edi                                     #80.5
        movq      %rbx, %rsi                                    #80.5
..___tag_value_main.45:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #80.5
..___tag_value_main.46:
                                # LOE rax r13 r12d
..B1.83:                        # Preds ..B1.15
                                # Execution count [1.60e+01]
        movq      %rax, %r14                                    #80.5
                                # LOE r13 r14 r12d
..B1.16:                        # Preds ..B1.83
                                # Execution count [1.60e+01]
        movslq    %r12d, %r12                                   #80.12
        shlq      $6, %r12                                      #79.22
        testq     %r12, %r12                                    #80.5
        jle       ..B1.34       # Prob 50%                      #80.5
                                # LOE r12 r13 r14
..B1.17:                        # Preds ..B1.16
                                # Execution count [1.44e+01]
        cmpq      $16, %r12                                     #80.5
        jl        ..B1.67       # Prob 10%                      #80.5
                                # LOE r12 r13 r14
..B1.18:                        # Preds ..B1.17
                                # Execution count [1.44e+01]
        movq      %r14, %rax                                    #80.5
        andq      $63, %rax                                     #80.5
        testq     $7, %rax                                      #80.5
        je        ..B1.20       # Prob 50%                      #80.5
                                # LOE rax r12 r13 r14
..B1.19:                        # Preds ..B1.18
                                # Execution count [7.20e+00]
        xorl      %eax, %eax                                    #80.5
        jmp       ..B1.22       # Prob 100%                     #80.5
                                # LOE rax r12 r13 r14
..B1.20:                        # Preds ..B1.18
                                # Execution count [7.20e+00]
        testq     %rax, %rax                                    #80.5
        je        ..B1.22       # Prob 50%                      #80.5
                                # LOE rax r12 r13 r14
..B1.21:                        # Preds ..B1.20
                                # Execution count [8.00e+01]
        negq      %rax                                          #80.5
        addq      $64, %rax                                     #80.5
        shrq      $3, %rax                                      #80.5
        cmpq      %rax, %r12                                    #80.5
        cmovl     %r12, %rax                                    #80.5
                                # LOE rax r12 r13 r14
..B1.22:                        # Preds ..B1.19 ..B1.21 ..B1.20
                                # Execution count [1.60e+01]
        movq      %r12, %rcx                                    #80.5
        subq      %rax, %rcx                                    #80.5
        andq      $15, %rcx                                     #80.5
        negq      %rcx                                          #80.5
        addq      %r12, %rcx                                    #80.5
        cmpq      $1, %rax                                      #80.5
        jb        ..B1.26       # Prob 50%                      #80.5
                                # LOE rax rcx r12 r13 r14
..B1.23:                        # Preds ..B1.22
                                # Execution count [1.44e+01]
        vmovdqu   .L_2il0floatpacket.16(%rip), %ymm1            #80.5
        xorl      %esi, %esi                                    #80.5
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm3            #80.5
        vmovups   .L_2il0floatpacket.14(%rip), %zmm4            #80.5
        vmovups   .L_2il0floatpacket.13(%rip), %zmm5            #80.5
        vmovups   .L_2il0floatpacket.12(%rip), %zmm6            #80.5
        vpbroadcastq %rax, %zmm0                                #80.5
        movq      2120(%rsp), %r8                               #80.5[spill]
        xorl      %ebx, %ebx                                    #80.5
        movq      2128(%rsp), %r9                               #80.5[spill]
                                # LOE rax rcx rbx r8 r9 r12 r13 r14 esi ymm1 ymm3 zmm0 zmm4 zmm5 zmm6
..B1.24:                        # Preds ..B1.24 ..B1.23
                                # Execution count [8.00e+01]
        vpmovsxdq %ymm1, %zmm2                                  #80.5
        addl      $8, %esi                                      #80.5
        vpaddd    %ymm3, %ymm1, %ymm1                           #80.5
        vpcmpgtq  %zmm2, %zmm0, %k1                             #80.5
        vmovupd   %zmm6, (%r9,%rbx,8){%k1}                      #80.5
        vmovupd   %zmm5, (%r8,%rbx,8){%k1}                      #80.5
        vmovupd   %zmm4, (%r14,%rbx,8){%k1}                     #80.5
        addq      $8, %rbx                                      #80.5
        cmpq      %rax, %rsi                                    #80.5
        jb        ..B1.24       # Prob 82%                      #80.5
                                # LOE rax rcx rbx r8 r9 r12 r13 r14 esi ymm1 ymm3 zmm0 zmm4 zmm5 zmm6
..B1.25:                        # Preds ..B1.24
                                # Execution count [1.44e+01]
        cmpq      %rax, %r12                                    #80.5
        je        ..B1.34       # Prob 10%                      #80.5
                                # LOE rax rcx r12 r13 r14
..B1.26:                        # Preds ..B1.22 ..B1.25
                                # Execution count [8.00e+01]
        lea       16(%rax), %rbx                                #80.5
        cmpq      %rbx, %rcx                                    #80.5
        jl        ..B1.30       # Prob 50%                      #80.5
                                # LOE rax rcx r12 r13 r14
..B1.27:                        # Preds ..B1.26
                                # Execution count [1.44e+01]
        vmovups   .L_2il0floatpacket.14(%rip), %zmm0            #80.5
        movl      %eax, %ebx                                    #80.5
        vmovups   .L_2il0floatpacket.13(%rip), %zmm1            #80.5
        vmovups   .L_2il0floatpacket.12(%rip), %zmm2            #80.5
        movq      2120(%rsp), %rsi                              #80.5[spill]
        movq      2128(%rsp), %r8                               #80.5[spill]
                                # LOE rax rcx rsi r8 r12 r13 r14 ebx zmm0 zmm1 zmm2
..B1.28:                        # Preds ..B1.28 ..B1.27
                                # Execution count [8.00e+01]
        addl      $16, %ebx                                     #80.5
        vmovupd   %zmm2, (%r8,%rax,8)                           #80.5
        vmovupd   %zmm1, (%rsi,%rax,8)                          #80.5
        vmovupd   %zmm0, (%r14,%rax,8)                          #80.5
        vmovupd   %zmm2, 64(%r8,%rax,8)                         #80.5
        vmovupd   %zmm1, 64(%rsi,%rax,8)                        #80.5
        vmovupd   %zmm0, 64(%r14,%rax,8)                        #80.5
        addq      $16, %rax                                     #80.5
        cmpq      %rcx, %rbx                                    #80.5
        jb        ..B1.28       # Prob 82%                      #80.5
                                # LOE rax rcx rsi r8 r12 r13 r14 ebx zmm0 zmm1 zmm2
..B1.30:                        # Preds ..B1.28 ..B1.26 ..B1.67
                                # Execution count [1.60e+01]
        lea       1(%rcx), %rax                                 #80.5
        cmpq      %r12, %rax                                    #80.5
        ja        ..B1.34       # Prob 50%                      #80.5
                                # LOE rcx r12 r13 r14
..B1.31:                        # Preds ..B1.30
                                # Execution count [1.44e+01]
        movslq    %ecx, %rax                                    #80.5
        movq      %r12, %r8                                     #80.5
        movq      2128(%rsp), %rsi                              #80.5[spill]
        subq      %rcx, %r8                                     #80.5
        movq      2120(%rsp), %rbx                              #80.5[spill]
        xorl      %r9d, %r9d                                    #80.5
        vmovdqu   .L_2il0floatpacket.16(%rip), %ymm1            #80.5
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm3            #80.5
        vmovups   .L_2il0floatpacket.14(%rip), %zmm4            #80.5
        vmovups   .L_2il0floatpacket.13(%rip), %zmm5            #80.5
        vmovups   .L_2il0floatpacket.12(%rip), %zmm6            #80.5
        vpbroadcastq %r8, %zmm0                                 #80.5
        lea       (%rsi,%rax,8), %rsi                           #80.5
        lea       (%rbx,%rax,8), %rbx                           #80.5
        lea       (%r14,%rax,8), %rcx                           #80.5
        xorl      %eax, %eax                                    #80.5
                                # LOE rax rcx rbx rsi r8 r12 r13 r14 r9d ymm1 ymm3 zmm0 zmm4 zmm5 zmm6
..B1.32:                        # Preds ..B1.32 ..B1.31
                                # Execution count [8.00e+01]
        vpmovsxdq %ymm1, %zmm2                                  #80.5
        addl      $8, %r9d                                      #80.5
        vpaddd    %ymm3, %ymm1, %ymm1                           #80.5
        vpcmpgtq  %zmm2, %zmm0, %k1                             #80.5
        vmovupd   %zmm6, (%rsi,%rax,8){%k1}                     #80.5
        vmovupd   %zmm5, (%rbx,%rax,8){%k1}                     #80.5
        vmovupd   %zmm4, (%rcx,%rax,8){%k1}                     #80.5
        addq      $8, %rax                                      #80.5
        cmpq      %r8, %r9                                      #80.5
        jb        ..B1.32       # Prob 82%                      #80.5
                                # LOE rax rcx rbx rsi r8 r12 r13 r14 r9d ymm1 ymm3 zmm0 zmm4 zmm5 zmm6
..B1.34:                        # Preds ..B1.32 ..B1.16 ..B1.25 ..B1.30
                                # Execution count [1.60e+01]
        vzeroupper                                              #80.5
        lea       2096(%rsp), %rdi                              #80.5
        movl      $1, %ebx                                      #80.5
        lea       2104(%rsp), %rsi                              #80.5
..___tag_value_main.53:
#       timing(double *, double *)
        call      timing                                        #80.5
..___tag_value_main.54:
                                # LOE r12 r13 r14 ebx
..B1.35:                        # Preds ..B1.34
                                # Execution count [1.44e+01]
        xorl      %r15d, %r15d                                  #80.5
        vxorpd    %xmm0, %xmm0, %xmm0                           #80.5
                                # LOE r12 r13 r14 ebx r15d xmm0
..B1.36:                        # Preds ..B1.35 ..B1.43 ..B1.49
                                # Execution count [4.44e+02]
        vcomisd   (%r13), %xmm0                                 #80.5
        jbe       ..B1.38       # Prob 78%                      #80.5
                                # LOE r12 r13 r14 ebx r15d xmm0
..B1.37:                        # Preds ..B1.36
                                # Execution count [9.78e+01]
        movq      %r13, %rdi                                    #80.5
        vzeroupper                                              #80.5
..___tag_value_main.55:
#       dummy(double *)
        call      dummy                                         #80.5
..___tag_value_main.56:
                                # LOE r12 r13 r14 ebx r15d
..B1.93:                        # Preds ..B1.37
                                # Execution count [9.78e+01]
        vxorpd    %xmm0, %xmm0, %xmm0                           #
                                # LOE r12 r13 r14 ebx r15d xmm0
..B1.38:                        # Preds ..B1.36 ..B1.93
                                # Execution count [4.44e+02]
        testq     %r12, %r12                                    #80.5
        jle       ..B1.43       # Prob 50%                      #80.5
                                # LOE r12 r13 r14 ebx r15d xmm0
..B1.39:                        # Preds ..B1.38
                                # Execution count [4.00e+02]
        cmpq      $16, %r12                                     #80.5
        jl        ..B1.43       # Prob 10%                      #80.5
                                # LOE r12 r13 r14 ebx r15d xmm0
..B1.40:                        # Preds ..B1.39
                                # Execution count [4.00e+02]
        movq      2120(%rsp), %rcx                              #80.5[spill]
        xorl      %eax, %eax                                    #80.5
        movq      2128(%rsp), %r8                               #80.5[spill]
        .align    16,0x90
                                # LOE rax rcx r8 r12 r13 r14 ebx r15d xmm0
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
# LLVM-MCA-BEGIN
..B1.41:                        # Preds ..B1.41 ..B1.40
                                # Execution count [2.22e+03]
        vmovups   (%rcx,%rax,8), %zmm2                          #80.5
        vmovups   64(%rcx,%rax,8), %zmm4                        #80.5
        vmovups   (%r14,%rax,8), %zmm1                          #80.5
        vmovups   64(%r14,%rax,8), %zmm3                        #80.5
        vfmadd213pd (%r8,%rax,8), %zmm1, %zmm2                  #80.5
        vfmadd213pd 64(%r8,%rax,8), %zmm3, %zmm4                #80.5
        vmovupd   %zmm2, (%r13,%rax,8)                          #80.5
        vmovupd   %zmm4, 64(%r13,%rax,8)                        #80.5
        addq      $16, %rax                                     #80.5
        cmpq      %r12, %rax                                    #80.5
        jb        ..B1.41       # Prob 82%                      #80.5
# LLVM-MCA-END
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
                                # LOE rax rcx r8 r12 r13 r14 ebx r15d xmm0
..B1.43:                        # Preds ..B1.41 ..B1.38 ..B1.39
                                # Execution count [4.44e+02]
        incl      %r15d                                         #80.5
        cmpl      %ebx, %r15d                                   #80.5
        jb        ..B1.36       # Prob 82%                      #80.5
                                # LOE r12 r13 r14 ebx r15d xmm0
..B1.45:                        # Preds ..B1.43 ..B1.48
                                # Execution count [8.89e+01]: Infreq
        vzeroupper                                              #80.5
        lea       2112(%rsp), %rdi                              #80.5
        lea       2104(%rsp), %rsi                              #80.5
..___tag_value_main.59:
#       timing(double *, double *)
        call      timing                                        #80.5
..___tag_value_main.60:
                                # LOE r12 r13 r14 ebx
..B1.46:                        # Preds ..B1.45
                                # Execution count [8.89e+01]: Infreq
        vmovsd    2112(%rsp), %xmm16                            #80.5
        addl      %ebx, %ebx                                    #80.5
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm0             #80.5
        vsubsd    2096(%rsp), %xmm16, %xmm1                     #80.5
        vcomisd   %xmm1, %xmm0                                  #80.5
        jbe       ..B1.50       # Prob 18%                      #80.5
                                # LOE r12 r13 r14 ebx xmm1
..B1.47:                        # Preds ..B1.46
                                # Execution count [7.29e+01]: Infreq
        lea       2096(%rsp), %rdi                              #80.5
        lea       2104(%rsp), %rsi                              #80.5
..___tag_value_main.61:
#       timing(double *, double *)
        call      timing                                        #80.5
..___tag_value_main.62:
                                # LOE r12 r13 r14 ebx
..B1.48:                        # Preds ..B1.47
                                # Execution count [7.29e+01]: Infreq
        xorl      %r15d, %r15d                                  #80.5
        testl     %ebx, %ebx                                    #80.5
        jle       ..B1.45       # Prob 10%                      #80.5
                                # LOE r12 r13 r14 ebx r15d
..B1.49:                        # Preds ..B1.48
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
        jmp       ..B1.36       # Prob 100%                     #
                                # LOE r12 r13 r14 ebx r15d xmm0
..B1.50:                        # Preds ..B1.46
                                # Execution count [1.60e+01]: Infreq
        movl      %ebx, %eax                                    #80.5
        lea       1024(%rsp), %rdi                              #80.5
        shrl      $31, %eax                                     #80.5
        movl      $1024, %esi                                   #80.5
        addl      %eax, %ebx                                    #80.5
        vmovsd    %xmm1, 1064(%rdi)                             #[spill]
        sarl      $1, %ebx                                      #80.5
..___tag_value_main.64:
#       gethostname(char *, size_t)
        call      gethostname                                   #80.5
..___tag_value_main.65:
                                # LOE r12 r13 r14 ebx
..B1.51:                        # Preds ..B1.50
                                # Execution count [1.60e+01]: Infreq
        movl      $.L_2__STRING.0, %esi                         #80.5
        lea       1024(%rsp), %rdi                              #80.5
..___tag_value_main.66:
#       strcmp(const char *, const char *)
        call      strcmp                                        #80.5
..___tag_value_main.67:
                                # LOE r12 r13 r14 r15 eax ebx
..B1.84:                        # Preds ..B1.51
                                # Execution count [1.60e+01]: Infreq
        testl     %eax, %eax                                    #80.5
        je        ..B1.65       # Prob 9%                       #80.5
                                # LOE r12 r13 r14 r15 ebx
..B1.52:                        # Preds ..B1.84
                                # Execution count [1.44e+01]: Infreq
        movl      $.L_2__STRING.1, %esi                         #80.5
        lea       1024(%rsp), %rdi                              #80.5
..___tag_value_main.68:
#       strcmp(const char *, const char *)
        call      strcmp                                        #80.5
..___tag_value_main.69:
                                # LOE r12 r13 r14 r15 eax ebx
..B1.85:                        # Preds ..B1.52
                                # Execution count [1.44e+01]: Infreq
        testl     %eax, %eax                                    #80.5
        je        ..B1.63       # Prob 9%                       #80.5
                                # LOE r12 r13 r14 r15 ebx
..B1.53:                        # Preds ..B1.85
                                # Execution count [1.30e+01]: Infreq
        movl      $.L_2__STRING.2, %esi                         #80.5
        lea       1024(%rsp), %rdi                              #80.5
..___tag_value_main.70:
#       strcmp(const char *, const char *)
        call      strcmp                                        #80.5
..___tag_value_main.71:
                                # LOE r12 r13 r14 r15 eax ebx
..B1.86:                        # Preds ..B1.53
                                # Execution count [1.30e+01]: Infreq
        testl     %eax, %eax                                    #80.5
        jne       ..B1.56       # Prob 78%                      #80.5
                                # LOE r12 r13 r14 r15 ebx
..B1.54:                        # Preds ..B1.86
                                # Execution count [2.86e+00]: Infreq
        vmovsd    2048(%rsp), %xmm0                             #80.5[spill]
        vmovsd    2056(%rsp), %xmm1                             #80.5[spill]
..___tag_value_main.73:
#       pow(double, double)
        call      pow                                           #80.5
..___tag_value_main.74:
                                # LOE r12 r13 r14 ebx xmm0
..B1.55:                        # Preds ..B1.54
                                # Execution count [2.86e+00]: Infreq
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #80.5
        vcvttsd2si %xmm0, %r15                                  #80.5
                                # LOE r12 r13 r14 r15 ebx
..B1.56:                        # Preds ..B1.66 ..B1.64 ..B1.55 ..B1.86
                                # Execution count [1.60e+01]: Infreq
        movslq    %ebx, %rcx                                    #80.5
        vxorpd    %xmm17, %xmm17, %xmm17                        #80.5
        imulq     %r12, %rcx                                    #80.5
        vcvtsi2sdq %rcx, %xmm17, %xmm17                         #80.5
        vmovsd    .L_2il0floatpacket.17(%rip), %xmm5            #80.5
        vxorpd    %xmm11, %xmm11, %xmm11                        #80.5
        vmovsd    2088(%rsp), %xmm1                             #80.5[spill]
        vxorpd    %xmm20, %xmm20, %xmm20                        #80.5
        vdivsd    %xmm1, %xmm5, %xmm14                          #80.5
        vmulsd    .L_2il0floatpacket.10(%rip), %xmm17, %xmm18   #80.5
        vxorpd    %xmm16, %xmm16, %xmm16                        #80.5
        vcvtsi2sd 2064(%rsp), %xmm11, %xmm11                    #80.5[spill]
        vcvtsi2sdq %r15, %xmm20, %xmm20                         #80.5
        vdivsd    %xmm18, %xmm1, %xmm19                         #80.5
        vmovsd    .L_2il0floatpacket.9(%rip), %xmm12            #80.5
        movl      $.L_2__STRING.3, %edi                         #80.5
        vmulsd    .L_2il0floatpacket.11(%rip), %xmm11, %xmm9    #80.5
        vaddsd    %xmm11, %xmm11, %xmm6                         #80.5
        vcvtsi2sd %ebx, %xmm16, %xmm16                          #80.5
        vmulsd    %xmm12, %xmm11, %xmm13                        #80.5
        vmulsd    %xmm6, %xmm12, %xmm7                          #80.5
        vmulsd    %xmm14, %xmm9, %xmm10                         #80.5
        vmulsd    %xmm14, %xmm13, %xmm15                        #80.5
        vmulsd    %xmm14, %xmm7, %xmm8                          #80.5
        vmulsd    .L_2il0floatpacket.8(%rip), %xmm11, %xmm0     #80.5
        vmulsd    %xmm16, %xmm10, %xmm4                         #80.5
        vmulsd    %xmm16, %xmm8, %xmm2                          #80.5
        vmulsd    %xmm16, %xmm15, %xmm5                         #80.5
        vmulsd    %xmm20, %xmm19, %xmm3                         #80.5
        movl      %ebx, %esi                                    #80.5
        movq      %r12, %rdx                                    #80.5
        movl      $6, %eax                                      #80.5
..___tag_value_main.78:
#       printf(const char *__restrict__, ...)
        call      printf                                        #80.5
..___tag_value_main.79:
                                # LOE r13 r14
..B1.57:                        # Preds ..B1.56
                                # Execution count [1.60e+01]: Infreq
        movq      %r13, %rdi                                    #80.5
..___tag_value_main.80:
#       free(void *)
        call      free                                          #80.5
..___tag_value_main.81:
                                # LOE r14
..B1.58:                        # Preds ..B1.57
                                # Execution count [1.60e+01]: Infreq
        movq      2128(%rsp), %rdi                              #80.5[spill]
..___tag_value_main.82:
#       free(void *)
        call      free                                          #80.5
..___tag_value_main.83:
                                # LOE r14
..B1.59:                        # Preds ..B1.58
                                # Execution count [1.60e+01]: Infreq
        movq      2120(%rsp), %rdi                              #80.5[spill]
..___tag_value_main.85:
#       free(void *)
        call      free                                          #80.5
..___tag_value_main.86:
                                # LOE r14
..B1.60:                        # Preds ..B1.59
                                # Execution count [1.60e+01]: Infreq
        movq      %r14, %rdi                                    #80.5
..___tag_value_main.88:
#       free(void *)
        call      free                                          #80.5
..___tag_value_main.89:
                                # LOE
..B1.61:                        # Preds ..B1.60
                                # Execution count [1.60e+01]: Infreq
        movb      2080(%rsp), %al                               #77.3[spill]
        incb      %al                                           #77.3
        incl      2072(%rsp)                                    #77.3[spill]
        movb      %al, 2080(%rsp)                               #77.3[spill]
        cmpb      $16, %al                                      #77.3
        jb        ..B1.11       # Prob 93%                      #77.3
                                # LOE
..B1.62:                        # Preds ..B1.61
                                # Execution count [1.00e+00]: Infreq
        xorl      %eax, %eax                                    #82.10
        addq      $2136, %rsp                                   #82.10
	.cfi_restore 3
        popq      %rbx                                          #82.10
	.cfi_restore 15
        popq      %r15                                          #82.10
	.cfi_restore 14
        popq      %r14                                          #82.10
	.cfi_restore 13
        popq      %r13                                          #82.10
	.cfi_restore 12
        popq      %r12                                          #82.10
        movq      %rbp, %rsp                                    #82.10
        popq      %rbp                                          #82.10
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #82.10
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.63:                        # Preds ..B1.85
                                # Execution count [1.43e+00]: Infreq
        vmovsd    2048(%rsp), %xmm0                             #80.5[spill]
        vmovsd    2056(%rsp), %xmm1                             #80.5[spill]
..___tag_value_main.108:
#       pow(double, double)
        call      pow                                           #80.5
..___tag_value_main.109:
                                # LOE r12 r13 r14 ebx xmm0
..B1.64:                        # Preds ..B1.63
                                # Execution count [1.43e+00]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #80.5
        vcvttsd2si %xmm0, %r15                                  #80.5
        jmp       ..B1.56       # Prob 100%                     #80.5
                                # LOE r12 r13 r14 r15 ebx
..B1.65:                        # Preds ..B1.84
                                # Execution count [1.58e+00]: Infreq
        vmovsd    2048(%rsp), %xmm0                             #80.5[spill]
        vmovsd    2056(%rsp), %xmm1                             #80.5[spill]
..___tag_value_main.112:
#       pow(double, double)
        call      pow                                           #80.5
..___tag_value_main.113:
                                # LOE r12 r13 r14 ebx xmm0
..B1.66:                        # Preds ..B1.65
                                # Execution count [1.58e+00]: Infreq
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm0, %xmm0      #80.5
        vcvttsd2si %xmm0, %r15                                  #80.5
        jmp       ..B1.56       # Prob 100%                     #80.5
                                # LOE r12 r13 r14 r15 ebx
..B1.67:                        # Preds ..B1.17
                                # Execution count [1.44e+00]: Infreq
        xorl      %ecx, %ecx                                    #80.5
        jmp       ..B1.30       # Prob 100%                     #80.5
                                # LOE rcx r12 r13 r14
..B1.68:                        # Preds ..B1.76
                                # Execution count [8.91e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #73.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #73.3
        vmovsd    %xmm0, 2048(%rsp)                             #73.3[spill]
        vmovsd    %xmm1, 2056(%rsp)                             #73.3[spill]
..___tag_value_main.116:
#       pow(double, double)
        call      pow                                           #73.3
..___tag_value_main.117:
                                # LOE r12 r13 r14 r15 xmm0
..B1.69:                        # Preds ..B1.68
                                # Execution count [8.91e-02]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #73.3
        vcvttsd2si %xmm0, %rbx                                  #73.3
        jmp       ..B1.7        # Prob 100%                     #73.3
                                # LOE rbx r12 r13 r14 r15
..B1.70:                        # Preds ..B1.75
                                # Execution count [9.88e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #73.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #73.3
        vmovsd    %xmm0, 2048(%rsp)                             #73.3[spill]
        vmovsd    %xmm1, 2056(%rsp)                             #73.3[spill]
..___tag_value_main.120:
#       pow(double, double)
        call      pow                                           #73.3
..___tag_value_main.121:
                                # LOE r12 r13 r14 r15 xmm0
..B1.71:                        # Preds ..B1.70
                                # Execution count [9.88e-02]: Infreq
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm0, %xmm0      #73.3
        vcvttsd2si %xmm0, %rbx                                  #73.3
        jmp       ..B1.7        # Prob 100%                     #73.3
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
..___tag_value_getFreq.124:
..L125:
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
..___tag_value_getFreq.131:
#       strcmp(const char *, const char *)
        call      strcmp                                        #12.7
..___tag_value_getFreq.132:
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
..___tag_value_getFreq.133:
#       strcmp(const char *, const char *)
        call      strcmp                                        #16.7
..___tag_value_getFreq.134:
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
..___tag_value_getFreq.135:
#       strcmp(const char *, const char *)
        call      strcmp                                        #20.7
..___tag_value_getFreq.136:
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
..___tag_value_getFreq.145:
#       pow(double, double)
        call      pow                                           #21.26
..___tag_value_getFreq.146:
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
..___tag_value_getFreq.155:
#       pow(double, double)
        call      pow                                           #17.26
..___tag_value_getFreq.156:
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
..___tag_value_getFreq.165:
#       pow(double, double)
        call      pow                                           #13.26
..___tag_value_getFreq.166:
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
.L_2__routine_start_striad_2:
# -- Begin  striad
	.text
# mark_begin;
       .align    16,0x90
	.globl striad
# --- striad(long)
striad:
# parameter 1: %rdi
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_striad.173:
..L174:
                                                        #27.24
        pushq     %rbp                                          #27.24
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #27.24
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-64, %rsp                                    #27.24
        pushq     %r12                                          #27.24
        pushq     %r13                                          #27.24
        pushq     %r14                                          #27.24
        pushq     %r15                                          #27.24
        pushq     %rbx                                          #27.24
        subq      $1112, %rsp                                   #27.24
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
        movq      %rdi, %r13                                    #27.24
        movl      $64, %edi                                     #29.7
        lea       (,%r13,8), %rbx                               #29.30
        movq      %rbx, %rsi                                    #29.7
..___tag_value_striad.183:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #29.7
..___tag_value_striad.184:
                                # LOE rax rbx r13
..B3.63:                        # Preds ..B3.1
                                # Execution count [1.00e+00]
        movq      %rax, 1024(%rsp)                              #29.7[spill]
                                # LOE rbx r13
..B3.2:                         # Preds ..B3.63
                                # Execution count [1.00e+00]
        movl      $64, %edi                                     #30.7
        movq      %rbx, %rsi                                    #30.7
..___tag_value_striad.186:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #30.7
..___tag_value_striad.187:
                                # LOE rax rbx r13
..B3.64:                        # Preds ..B3.2
                                # Execution count [1.00e+00]
        movq      %rax, %r14                                    #30.7
                                # LOE rbx r13 r14
..B3.3:                         # Preds ..B3.64
                                # Execution count [1.00e+00]
        movl      $64, %edi                                     #31.7
        movq      %rbx, %rsi                                    #31.7
..___tag_value_striad.188:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #31.7
..___tag_value_striad.189:
                                # LOE rax rbx r13 r14
..B3.65:                        # Preds ..B3.3
                                # Execution count [1.00e+00]
        movq      %rax, %r15                                    #31.7
                                # LOE rbx r13 r14 r15
..B3.4:                         # Preds ..B3.65
                                # Execution count [1.00e+00]
        movl      $64, %edi                                     #32.7
        movq      %rbx, %rsi                                    #32.7
..___tag_value_striad.190:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #32.7
..___tag_value_striad.191:
                                # LOE rax r13 r14 r15
..B3.66:                        # Preds ..B3.4
                                # Execution count [1.00e+00]
        movq      %rax, %rbx                                    #32.7
                                # LOE rbx r13 r14 r15
..B3.5:                         # Preds ..B3.66
                                # Execution count [1.00e+00]
        testq     %r13, %r13                                    #35.18
        jle       ..B3.23       # Prob 50%                      #35.18
                                # LOE rbx r13 r14 r15
..B3.6:                         # Preds ..B3.5
                                # Execution count [9.00e-01]
        cmpq      $16, %r13                                     #35.3
        jl        ..B3.60       # Prob 10%                      #35.3
                                # LOE rbx r13 r14 r15
..B3.7:                         # Preds ..B3.6
                                # Execution count [9.00e-01]
        movq      %rbx, %r8                                     #35.3
        andq      $63, %r8                                      #35.3
        testq     $7, %r8                                       #35.3
        je        ..B3.9        # Prob 50%                      #35.3
                                # LOE rbx r8 r13 r14 r15
..B3.8:                         # Preds ..B3.7
                                # Execution count [4.50e-01]
        xorl      %r8d, %r8d                                    #35.3
        jmp       ..B3.11       # Prob 100%                     #35.3
                                # LOE rbx r8 r13 r14 r15
..B3.9:                         # Preds ..B3.7
                                # Execution count [4.50e-01]
        testq     %r8, %r8                                      #35.3
        je        ..B3.11       # Prob 50%                      #35.3
                                # LOE rbx r8 r13 r14 r15
..B3.10:                        # Preds ..B3.9
                                # Execution count [5.00e+00]
        negq      %r8                                           #35.3
        addq      $64, %r8                                      #35.3
        shrq      $3, %r8                                       #35.3
        cmpq      %r8, %r13                                     #35.3
        cmovl     %r13, %r8                                     #35.3
                                # LOE rbx r8 r13 r14 r15
..B3.11:                        # Preds ..B3.8 ..B3.10 ..B3.9
                                # Execution count [1.00e+00]
        movq      %r13, %rax                                    #35.3
        subq      %r8, %rax                                     #35.3
        andq      $15, %rax                                     #35.3
        negq      %rax                                          #35.3
        addq      %r13, %rax                                    #35.3
        cmpq      $1, %r8                                       #35.3
        jb        ..B3.15       # Prob 50%                      #35.3
                                # LOE rax rbx r8 r13 r14 r15
..B3.12:                        # Preds ..B3.11
                                # Execution count [9.00e-01]
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm5            #35.3
        xorl      %esi, %esi                                    #35.3
        vmovdqu   .L_2il0floatpacket.16(%rip), %ymm4            #35.3
        vmovups   .L_2il0floatpacket.12(%rip), %zmm3            #36.12
        vmovups   .L_2il0floatpacket.13(%rip), %zmm2            #37.12
        vmovups   .L_2il0floatpacket.14(%rip), %zmm1            #38.12
        vpbroadcastq %r8, %zmm0                                 #35.3
        xorl      %ecx, %ecx                                    #35.3
                                # LOE rax rcx rbx r8 r13 r14 r15 esi ymm4 ymm5 zmm0 zmm1 zmm2 zmm3
..B3.13:                        # Preds ..B3.13 ..B3.12
                                # Execution count [5.00e+00]
        vpmovsxdq %ymm4, %zmm6                                  #35.3
        addl      $8, %esi                                      #35.3
        vpaddd    %ymm5, %ymm4, %ymm4                           #35.3
        vpcmpgtq  %zmm6, %zmm0, %k1                             #35.3
        vmovupd   %zmm3, (%r14,%rcx,8){%k1}                     #36.5
        vmovupd   %zmm2, (%r15,%rcx,8){%k1}                     #37.5
        vmovupd   %zmm1, (%rbx,%rcx,8){%k1}                     #38.5
        addq      $8, %rcx                                      #35.3
        cmpq      %r8, %rsi                                     #35.3
        jb        ..B3.13       # Prob 82%                      #35.3
                                # LOE rax rcx rbx r8 r13 r14 r15 esi ymm4 ymm5 zmm0 zmm1 zmm2 zmm3
..B3.14:                        # Preds ..B3.13
                                # Execution count [9.00e-01]
        cmpq      %r8, %r13                                     #35.3
        je        ..B3.23       # Prob 10%                      #35.3
                                # LOE rax rbx r8 r13 r14 r15
..B3.15:                        # Preds ..B3.11 ..B3.14
                                # Execution count [5.00e+00]
        lea       16(%r8), %rcx                                 #35.3
        cmpq      %rcx, %rax                                    #35.3
        jl        ..B3.19       # Prob 50%                      #35.3
                                # LOE rax rbx r8 r13 r14 r15
..B3.16:                        # Preds ..B3.15
                                # Execution count [9.00e-01]
        movslq    %r8d, %rcx                                    #35.3
        movl      %r8d, %esi                                    #35.3
        vmovups   .L_2il0floatpacket.12(%rip), %zmm2            #36.12
        vmovups   .L_2il0floatpacket.13(%rip), %zmm1            #37.12
        vmovups   .L_2il0floatpacket.14(%rip), %zmm0            #38.12
                                # LOE rax rcx rbx r13 r14 r15 esi zmm0 zmm1 zmm2
..B3.17:                        # Preds ..B3.17 ..B3.16
                                # Execution count [5.00e+00]
        addl      $16, %esi                                     #35.3
        vmovupd   %zmm2, (%r14,%rcx,8)                          #36.5
        vmovupd   %zmm1, (%r15,%rcx,8)                          #37.5
        vmovupd   %zmm0, (%rbx,%rcx,8)                          #38.5
        vmovupd   %zmm2, 64(%r14,%rcx,8)                        #36.5
        vmovupd   %zmm1, 64(%r15,%rcx,8)                        #37.5
        vmovupd   %zmm0, 64(%rbx,%rcx,8)                        #38.5
        addq      $16, %rcx                                     #35.3
        cmpq      %rax, %rsi                                    #35.3
        jb        ..B3.17       # Prob 82%                      #35.3
                                # LOE rax rcx rbx r13 r14 r15 esi zmm0 zmm1 zmm2
..B3.19:                        # Preds ..B3.17 ..B3.15 ..B3.60
                                # Execution count [1.00e+00]
        lea       1(%rax), %rcx                                 #35.3
        cmpq      %r13, %rcx                                    #35.3
        ja        ..B3.23       # Prob 50%                      #35.3
                                # LOE rax rbx r13 r14 r15
..B3.20:                        # Preds ..B3.19
                                # Execution count [9.00e-01]
        movq      %r13, %r9                                     #35.3
        xorl      %r10d, %r10d                                  #35.3
        subq      %rax, %r9                                     #35.3
        movslq    %eax, %rax                                    #36.5
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm5            #35.3
        vmovdqu   .L_2il0floatpacket.16(%rip), %ymm4            #35.3
        vmovups   .L_2il0floatpacket.12(%rip), %zmm3            #36.12
        vmovups   .L_2il0floatpacket.13(%rip), %zmm2            #37.12
        vmovups   .L_2il0floatpacket.14(%rip), %zmm1            #38.12
        vpbroadcastq %r9, %zmm0                                 #35.3
        lea       (%r14,%rax,8), %r8                            #36.5
        lea       (%r15,%rax,8), %rsi                           #37.5
        lea       (%rbx,%rax,8), %rcx                           #38.5
        xorl      %eax, %eax                                    #35.3
                                # LOE rax rcx rbx rsi r8 r9 r13 r14 r15 r10d ymm4 ymm5 zmm0 zmm1 zmm2 zmm3
..B3.21:                        # Preds ..B3.21 ..B3.20
                                # Execution count [5.00e+00]
        vpmovsxdq %ymm4, %zmm6                                  #35.3
        addl      $8, %r10d                                     #35.3
        vpaddd    %ymm5, %ymm4, %ymm4                           #35.3
        vpcmpgtq  %zmm6, %zmm0, %k1                             #35.3
        vmovupd   %zmm3, (%r8,%rax,8){%k1}                      #36.5
        vmovupd   %zmm2, (%rsi,%rax,8){%k1}                     #37.5
        vmovupd   %zmm1, (%rcx,%rax,8){%k1}                     #38.5
        addq      $8, %rax                                      #35.3
        cmpq      %r9, %r10                                     #35.3
        jb        ..B3.21       # Prob 82%                      #35.3
                                # LOE rax rcx rbx rsi r8 r9 r13 r14 r15 r10d ymm4 ymm5 zmm0 zmm1 zmm2 zmm3
..B3.23:                        # Preds ..B3.5 ..B3.21 ..B3.14 ..B3.19
                                # Execution count [1.00e+00]
        vzeroupper                                              #44.5
        lea       1048(%rsp), %rdi                              #44.5
        movl      $1, %r12d                                     #42.14
        lea       1056(%rsp), %rsi                              #44.5
..___tag_value_striad.192:
#       timing(double *, double *)
        call      timing                                        #44.5
..___tag_value_striad.193:
                                # LOE rbx r13 r14 r15 r12d
..B3.24:                        # Preds ..B3.23
                                # Execution count [9.00e-01]
        movq      %r13, %rcx                                    #50.7
        xorl      %eax, %eax                                    #45.5
        andq      $-16, %rcx                                    #50.7
        movq      %r15, %rdx                                    #50.7
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm3             #43.30
        vxorpd    %xmm0, %xmm0, %xmm0                           #46.17
        vmovups   .L_2il0floatpacket.18(%rip), %zmm2            #50.7
        vmovdqu32 .L_2il0floatpacket.19(%rip), %zmm1            #50.7
        movl      %r12d, 16(%rsp)                               #50.7[spill]
        movq      %r13, %r12                                    #50.7
        movq      %rcx, 8(%rsp)                                 #50.7[spill]
        movl      %eax, %r13d                                   #50.7
        movq      1024(%rsp), %r15                              #50.7[spill]
                                # LOE rdx rbx r12 r14 r15 r13d xmm0
..B3.25:                        # Preds ..B3.24 ..B3.36 ..B3.42
                                # Execution count [2.78e+01]
        vcomisd   (%r15), %xmm0                                 #46.17
        jbe       ..B3.27       # Prob 78%                      #46.17
                                # LOE rdx rbx r12 r14 r15 r13d xmm0
..B3.26:                        # Preds ..B3.25
                                # Execution count [6.11e+00]
        movq      %r15, %rdi                                    #46.20
        movq      %rdx, (%rsp)                                  #46.20[spill]
        vzeroupper                                              #46.20
..___tag_value_striad.198:
#       dummy(double *)
        call      dummy                                         #46.20
..___tag_value_striad.199:
                                # LOE rbx r12 r14 r15 r13d
..B3.75:                        # Preds ..B3.26
                                # Execution count [6.11e+00]
        movq      (%rsp), %rdx                                  #[spill]
        vxorpd    %xmm0, %xmm0, %xmm0                           #
                                # LOE rdx rbx r12 r14 r15 r13d xmm0
..B3.27:                        # Preds ..B3.75 ..B3.25
                                # Execution count [2.78e+01]
        testq     %r12, %r12                                    #50.35
        jle       ..B3.36       # Prob 50%                      #50.35
                                # LOE rdx rbx r12 r14 r15 r13d xmm0
..B3.28:                        # Preds ..B3.27
                                # Execution count [2.50e+01]
        cmpq      $16, %r12                                     #50.7
        jl        ..B3.59       # Prob 10%                      #50.7
                                # LOE rdx rbx r12 r14 r15 r13d xmm0
..B3.29:                        # Preds ..B3.28
                                # Execution count [2.50e+01]
        movq      8(%rsp), %rax                                 #50.7[spill]
        xorl      %ecx, %ecx                                    #50.7
        movq      %rax, %rsi                                    #50.7
        .align    16,0x90
                                # LOE rax rdx rcx rbx rsi r12 r14 r15 r13d xmm0
..B3.30:                        # Preds ..B3.30 ..B3.29
                                # Execution count [1.39e+02]
        vmovups   (%rdx,%rcx,8), %zmm2                          #51.23
        vmovups   64(%rdx,%rcx,8), %zmm4                        #51.23
        vmovups   (%rbx,%rcx,8), %zmm1                          #51.30
        vmovups   64(%rbx,%rcx,8), %zmm3                        #51.30
        vfmadd213pd (%r14,%rcx,8), %zmm1, %zmm2                 #51.30
        vfmadd213pd 64(%r14,%rcx,8), %zmm3, %zmm4               #51.30
        vmovupd   %zmm2, (%r15,%rcx,8)                          #51.9
        vmovupd   %zmm4, 64(%r15,%rcx,8)                        #51.9
        addq      $16, %rcx                                     #50.7
        cmpq      %rsi, %rcx                                    #50.7
        jb        ..B3.30       # Prob 82%                      #50.7
                                # LOE rax rdx rcx rbx rsi r12 r14 r15 r13d xmm0
..B3.32:                        # Preds ..B3.30 ..B3.59
                                # Execution count [2.78e+01]
        lea       1(%rax), %rcx                                 #50.7
        cmpq      %r12, %rcx                                    #50.7
        ja        ..B3.36       # Prob 50%                      #50.7
                                # LOE rax rdx rbx r12 r14 r15 r13d xmm0
..B3.33:                        # Preds ..B3.32
                                # Execution count [2.50e+01]
        vmovdqu32 .L_2il0floatpacket.19(%rip), %zmm2            #50.7
        lea       (%r14,%rax,8), %r9                            #51.16
        vmovups   .L_2il0floatpacket.18(%rip), %zmm5            #50.7
        xorl      %r10d, %r10d                                  #50.7
        lea       (%rdx,%rax,8), %r8                            #51.23
        lea       (%rbx,%rax,8), %rsi                           #51.30
        lea       (%r15,%rax,8), %rcx                           #51.9
        negq      %rax                                          #50.7
        addq      %r12, %rax                                    #50.7
        vpbroadcastq %rax, %zmm1                                #50.7
                                # LOE rax rdx rcx rbx rsi r8 r9 r10 r12 r14 r15 r13d xmm0 zmm1 zmm2 zmm5
..B3.34:                        # Preds ..B3.34 ..B3.33
                                # Execution count [1.39e+02]
        vmovups   (%r8,%r10,8), %zmm4                           #51.23
        vmovups   (%rsi,%r10,8), %zmm3                          #51.30
        vpcmpgtq  %zmm2, %zmm1, %k1                             #50.7
        vfmadd213pd (%r9,%r10,8), %zmm3, %zmm4                  #51.30
        vpaddq    %zmm5, %zmm2, %zmm2                           #50.7
        vmovupd   %zmm4, (%rcx,%r10,8){%k1}                     #51.9
        addq      $8, %r10                                      #50.7
        cmpq      %rax, %r10                                    #50.7
        jb        ..B3.34       # Prob 82%                      #50.7
                                # LOE rax rdx rcx rbx rsi r8 r9 r10 r12 r14 r15 r13d xmm0 zmm1 zmm2 zmm5
..B3.36:                        # Preds ..B3.34 ..B3.27 ..B3.32
                                # Execution count [2.78e+01]
        incl      %r13d                                         #45.5
        cmpl      16(%rsp), %r13d                               #45.5[spill]
        jb        ..B3.25       # Prob 82%                      #45.5
                                # LOE rdx rbx r12 r14 r15 r13d xmm0
..B3.37:                        # Preds ..B3.36
                                # Execution count [5.10e+00]: Infreq
        movq      %r12, 1040(%rsp)                              #[spill]
        movq      %r15, %r13                                    #
        movl      16(%rsp), %r12d                               #[spill]
        movq      %rdx, %r15                                    #
                                # LOE rbx r13 r14 r15 r12d
..B3.38:                        # Preds ..B3.41 ..B3.37
                                # Execution count [5.56e+00]: Infreq
        vzeroupper                                              #54.5
        lea       1064(%rsp), %rdi                              #54.5
        lea       1056(%rsp), %rsi                              #54.5
..___tag_value_striad.205:
#       timing(double *, double *)
        call      timing                                        #54.5
..___tag_value_striad.206:
                                # LOE rbx r13 r14 r15 r12d
..B3.39:                        # Preds ..B3.38
                                # Execution count [5.56e+00]: Infreq
        vmovsd    1064(%rsp), %xmm16                            #55.15
        addl      %r12d, %r12d                                  #43.34
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm0             #43.30
        vsubsd    1048(%rsp), %xmm16, %xmm1                     #55.19
        vcomisd   %xmm1, %xmm0                                  #43.30
        jbe       ..B3.43       # Prob 18%                      #43.30
                                # LOE rbx r13 r14 r15 r12d xmm1
..B3.40:                        # Preds ..B3.39
                                # Execution count [4.56e+00]: Infreq
        lea       1048(%rsp), %rdi                              #44.5
        lea       1056(%rsp), %rsi                              #44.5
..___tag_value_striad.207:
#       timing(double *, double *)
        call      timing                                        #44.5
..___tag_value_striad.208:
                                # LOE rbx r13 r14 r15 r12d
..B3.41:                        # Preds ..B3.40
                                # Execution count [4.56e+00]: Infreq
        xorl      %eax, %eax                                    #45.5
        testl     %r12d, %r12d                                  #45.20
        jle       ..B3.38       # Prob 10%                      #45.20
                                # LOE rbx r13 r14 r15 eax r12d
..B3.42:                        # Preds ..B3.41
                                # Execution count [4.10e+00]: Infreq
        movl      %r12d, 16(%rsp)                               #[spill]
        movq      %r15, %rdx                                    #
        movq      1040(%rsp), %r12                              #[spill]
        movq      %r13, %r15                                    #
        movl      %eax, %r13d                                   #
        vxorpd    %xmm0, %xmm0, %xmm0                           #
        jmp       ..B3.25       # Prob 100%                     #
                                # LOE rdx rbx r12 r14 r15 r13d xmm0
..B3.43:                        # Preds ..B3.39
                                # Execution count [1.00e+00]: Infreq
        movl      %r12d, %eax                                   #57.3
        lea       (%rsp), %rdi                                  #59.3
        shrl      $31, %eax                                     #57.3
        movl      $1024, %esi                                   #59.3
        addl      %eax, %r12d                                   #57.3
        vmovsd    %xmm1, 1032(%rdi)                             #[spill]
        movq      %r13, 1024(%rdi)                              #[spill]
        movq      1040(%rdi), %r13                              #[spill]
        sarl      $1, %r12d                                     #57.3
..___tag_value_striad.214:
#       gethostname(char *, size_t)
        call      gethostname                                   #59.3
..___tag_value_striad.215:
                                # LOE rbx r13 r14 r15 r12d
..B3.44:                        # Preds ..B3.43
                                # Execution count [1.00e+00]: Infreq
        movl      $.L_2__STRING.0, %esi                         #61.12
        lea       (%rsp), %rdi                                  #61.12
..___tag_value_striad.216:
#       strcmp(const char *, const char *)
        call      strcmp                                        #61.12
..___tag_value_striad.217:
                                # LOE rbx r13 r14 r15 eax r12d
..B3.67:                        # Preds ..B3.44
                                # Execution count [1.00e+00]: Infreq
        testl     %eax, %eax                                    #61.12
        je        ..B3.57       # Prob 9%                       #61.12
                                # LOE rbx r13 r14 r15 r12d
..B3.45:                        # Preds ..B3.67
                                # Execution count [9.01e-01]: Infreq
        movl      $.L_2__STRING.1, %esi                         #61.12
        lea       (%rsp), %rdi                                  #61.12
..___tag_value_striad.218:
#       strcmp(const char *, const char *)
        call      strcmp                                        #61.12
..___tag_value_striad.219:
                                # LOE rbx r13 r14 r15 eax r12d
..B3.68:                        # Preds ..B3.45
                                # Execution count [9.01e-01]: Infreq
        testl     %eax, %eax                                    #61.12
        je        ..B3.55       # Prob 9%                       #61.12
                                # LOE rbx r13 r14 r15 r12d
..B3.46:                        # Preds ..B3.68
                                # Execution count [8.12e-01]: Infreq
        movl      $.L_2__STRING.2, %esi                         #61.12
        lea       (%rsp), %rdi                                  #61.12
..___tag_value_striad.220:
#       strcmp(const char *, const char *)
        call      strcmp                                        #61.12
..___tag_value_striad.221:
                                # LOE rbx r13 r14 r15 eax r12d
..B3.69:                        # Preds ..B3.46
                                # Execution count [8.12e-01]: Infreq
        testl     %eax, %eax                                    #61.12
        jne       ..B3.49       # Prob 78%                      #61.12
                                # LOE rbx r13 r14 r15 r12d
..B3.47:                        # Preds ..B3.69
                                # Execution count [1.79e-01]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #61.12
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #61.12
..___tag_value_striad.222:
#       pow(double, double)
        call      pow                                           #61.12
..___tag_value_striad.223:
                                # LOE rbx r13 r14 r15 r12d xmm0
..B3.48:                        # Preds ..B3.47
                                # Execution count [1.79e-01]: Infreq
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #61.12
        vcvttsd2si %xmm0, %rax                                  #61.12
        movq      %rax, 1040(%rsp)                              #61.12[spill]
                                # LOE rbx r13 r14 r15 r12d
..B3.49:                        # Preds ..B3.58 ..B3.56 ..B3.48 ..B3.69
                                # Execution count [1.00e+00]: Infreq
        movslq    %r12d, %rcx                                   #62.3
        vxorpd    %xmm9, %xmm9, %xmm9                           #62.3
        imulq     %r13, %rcx                                    #62.3
        vcvtsi2sdq %rcx, %xmm9, %xmm9                           #62.3
        vmovsd    .L_2il0floatpacket.17(%rip), %xmm5            #62.3
        vxorpd    %xmm15, %xmm15, %xmm15                        #62.85
        vmovsd    1032(%rsp), %xmm1                             #62.301[spill]
        vxorpd    %xmm20, %xmm20, %xmm20                        #62.147
        vdivsd    %xmm1, %xmm5, %xmm18                          #62.301
        vmulsd    .L_2il0floatpacket.10(%rip), %xmm9, %xmm10    #62.3
        vxorpd    %xmm12, %xmm12, %xmm12                        #62.3
        vcvtsi2sdq %r13, %xmm15, %xmm15                         #62.85
        vcvtsi2sd %r12d, %xmm20, %xmm20                         #62.147
        vdivsd    %xmm10, %xmm1, %xmm11                         #62.3
        vmovsd    .L_2il0floatpacket.9(%rip), %xmm16            #62.154
        movl      $.L_2__STRING.3, %edi                         #62.3
        vmulsd    .L_2il0floatpacket.11(%rip), %xmm15, %xmm13   #62.3
        vaddsd    %xmm15, %xmm15, %xmm6                         #62.3
        vcvtsi2sdq 1040(%rsp), %xmm12, %xmm12                   #62.3[spill]
        vmulsd    %xmm16, %xmm15, %xmm17                        #62.3
        vmulsd    %xmm6, %xmm16, %xmm7                          #62.3
        vmulsd    %xmm18, %xmm13, %xmm14                        #62.3
        vmulsd    %xmm18, %xmm17, %xmm19                        #62.3
        vmulsd    %xmm18, %xmm7, %xmm8                          #62.3
        vmulsd    .L_2il0floatpacket.8(%rip), %xmm15, %xmm0     #62.3
        vmulsd    %xmm12, %xmm11, %xmm3                         #62.3
        vmulsd    %xmm20, %xmm8, %xmm2                          #62.3
        vmulsd    %xmm20, %xmm14, %xmm4                         #62.3
        vmulsd    %xmm20, %xmm19, %xmm5                         #62.3
        movl      %r12d, %esi                                   #62.3
        movq      %r13, %rdx                                    #62.3
        movl      $6, %eax                                      #62.3
..___tag_value_striad.227:
#       printf(const char *__restrict__, ...)
        call      printf                                        #62.3
..___tag_value_striad.228:
                                # LOE rbx r14 r15
..B3.50:                        # Preds ..B3.49
                                # Execution count [1.00e+00]: Infreq
        movq      1024(%rsp), %rdi                              #64.3[spill]
..___tag_value_striad.229:
#       free(void *)
        call      free                                          #64.3
..___tag_value_striad.230:
                                # LOE rbx r14 r15
..B3.51:                        # Preds ..B3.50
                                # Execution count [1.00e+00]: Infreq
        movq      %r14, %rdi                                    #64.12
..___tag_value_striad.232:
#       free(void *)
        call      free                                          #64.12
..___tag_value_striad.233:
                                # LOE rbx r15
..B3.52:                        # Preds ..B3.51
                                # Execution count [1.00e+00]: Infreq
        movq      %r15, %rdi                                    #64.21
..___tag_value_striad.234:
#       free(void *)
        call      free                                          #64.21
..___tag_value_striad.235:
                                # LOE rbx
..B3.53:                        # Preds ..B3.52
                                # Execution count [1.00e+00]: Infreq
        movq      %rbx, %rdi                                    #64.30
..___tag_value_striad.236:
#       free(void *)
        call      free                                          #64.30
..___tag_value_striad.237:
                                # LOE
..B3.54:                        # Preds ..B3.53
                                # Execution count [1.00e+00]: Infreq
        addq      $1112, %rsp                                   #65.1
	.cfi_restore 3
        popq      %rbx                                          #65.1
	.cfi_restore 15
        popq      %r15                                          #65.1
	.cfi_restore 14
        popq      %r14                                          #65.1
	.cfi_restore 13
        popq      %r13                                          #65.1
	.cfi_restore 12
        popq      %r12                                          #65.1
        movq      %rbp, %rsp                                    #65.1
        popq      %rbp                                          #65.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #65.1
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B3.55:                        # Preds ..B3.68
                                # Execution count [8.91e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #61.12
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #61.12
..___tag_value_striad.252:
#       pow(double, double)
        call      pow                                           #61.12
..___tag_value_striad.253:
                                # LOE rbx r13 r14 r15 r12d xmm0
..B3.56:                        # Preds ..B3.55
                                # Execution count [8.91e-02]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #61.12
        vcvttsd2si %xmm0, %rax                                  #61.12
        movq      %rax, 1040(%rsp)                              #61.12[spill]
        jmp       ..B3.49       # Prob 100%                     #61.12
                                # LOE rbx r13 r14 r15 r12d
..B3.57:                        # Preds ..B3.67
                                # Execution count [9.88e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #61.12
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #61.12
..___tag_value_striad.255:
#       pow(double, double)
        call      pow                                           #61.12
..___tag_value_striad.256:
                                # LOE rbx r13 r14 r15 r12d xmm0
..B3.58:                        # Preds ..B3.57
                                # Execution count [9.88e-02]: Infreq
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm0, %xmm0      #61.12
        vcvttsd2si %xmm0, %rax                                  #61.12
        movq      %rax, 1040(%rsp)                              #61.12[spill]
        jmp       ..B3.49       # Prob 100%                     #61.12
                                # LOE rbx r13 r14 r15 r12d
..B3.59:                        # Preds ..B3.28
                                # Execution count [2.50e+00]: Infreq
        xorl      %eax, %eax                                    #50.7
        jmp       ..B3.32       # Prob 100%                     #50.7
                                # LOE rax rdx rbx r12 r14 r15 r13d xmm0
..B3.60:                        # Preds ..B3.6
                                # Execution count [9.00e-02]: Infreq
        xorl      %eax, %eax                                    #35.3
        jmp       ..B3.19       # Prob 100%                     #35.3
        .align    16,0x90
                                # LOE rax rbx r13 r14 r15
	.cfi_endproc
# mark_end;
	.type	striad,@function
	.size	striad,.-striad
..LNstriad.2:
	.data
# -- End  striad
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
.L_2il0floatpacket.14:
	.long	0x24f16963,0x3f00f218,0x24f16963,0x3f00f218,0x24f16963,0x3f00f218,0x24f16963,0x3f00f218,0x24f16963,0x3f00f218,0x24f16963,0x3f00f218,0x24f16963,0x3f00f218,0x24f16963,0x3f00f218
	.type	.L_2il0floatpacket.14,@object
	.size	.L_2il0floatpacket.14,64
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
.L_2il0floatpacket.15:
	.long	0x00000008,0x00000008,0x00000008,0x00000008,0x00000008,0x00000008,0x00000008,0x00000008
	.type	.L_2il0floatpacket.15,@object
	.size	.L_2il0floatpacket.15,32
	.align 32
.L_2il0floatpacket.16:
	.long	0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007
	.type	.L_2il0floatpacket.16,@object
	.size	.L_2il0floatpacket.16,32
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
	.long	0x00000000,0x3ef80000
	.type	.L_2il0floatpacket.11,@object
	.size	.L_2il0floatpacket.11,8
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
	.long	1330135891
	.long	1430343237
	.long	1411404357
	.long	1145129298
	.long	1767596320
	.long	540876893
	.long	1567185762
	.long	1663052576
	.long	542992731
	.long	1533288490
	.long	539778409
	.long	1646277682
	.long	795178105
	.long	539784297
	.long	1816535090
	.long	1764716655
	.word	2676
	.byte	0
	.type	.L_2__STRING.4,@object
	.size	.L_2__STRING.4,67
	.space 29, 0x00 	# pad
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
