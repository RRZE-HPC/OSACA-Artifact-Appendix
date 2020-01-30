# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.5.281 Build 20190815";
# mark_description "-qopenmp-simd -fno-alias -unroll -fno-builtin -xCORE-AVX512 -qopt-zmm-usage=high -Ofast -S -use-msasm -o dax";
# mark_description "py.s.csx.icc.s";
	.file "daxpy.c"
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
                                                          #66.1
        pushq     %rbp                                          #66.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #66.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-128, %rsp                                   #66.1
        pushq     %r12                                          #66.1
        pushq     %r13                                          #66.1
        pushq     %r14                                          #66.1
        pushq     %r15                                          #66.1
        pushq     %rbx                                          #66.1
        subq      $2136, %rsp                                   #66.1
        movq      $0x64199d9ffe, %rsi                           #66.1
        movl      $3, %edi                                      #66.1
        call      __intel_new_feature_proc_init                 #66.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE r12 r13 r14 r15
..B1.70:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        vstmxcsr  1024(%rsp)                                    #66.1
        movl      $1024, %esi                                   #68.3
        lea       (%rsp), %rdi                                  #68.3
        orl       $32832, 1024(%rdi)                            #66.1
        vldmxcsr  1024(%rdi)                                    #66.1
..___tag_value_main.11:
#       gethostname(char *, size_t)
        call      gethostname                                   #68.3
..___tag_value_main.12:
                                # LOE r12 r13 r14 r15
..B1.2:                         # Preds ..B1.70
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.0, %esi                         #70.3
        lea       (%rsp), %rdi                                  #70.3
..___tag_value_main.13:
#       strcmp(const char *, const char *)
        call      strcmp                                        #70.3
..___tag_value_main.14:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.71:                        # Preds ..B1.2
                                # Execution count [1.00e+00]
        testl     %eax, %eax                                    #70.3
        je        ..B1.66       # Prob 9%                       #70.3
                                # LOE rbx r12 r13 r14 r15
..B1.3:                         # Preds ..B1.71
                                # Execution count [9.01e-01]
        movl      $.L_2__STRING.1, %esi                         #70.3
        lea       (%rsp), %rdi                                  #70.3
..___tag_value_main.15:
#       strcmp(const char *, const char *)
        call      strcmp                                        #70.3
..___tag_value_main.16:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.72:                        # Preds ..B1.3
                                # Execution count [9.01e-01]
        testl     %eax, %eax                                    #70.3
        je        ..B1.64       # Prob 9%                       #70.3
                                # LOE rbx r12 r13 r14 r15
..B1.4:                         # Preds ..B1.72
                                # Execution count [8.12e-01]
        movl      $.L_2__STRING.2, %esi                         #70.3
        lea       (%rsp), %rdi                                  #70.3
..___tag_value_main.17:
#       strcmp(const char *, const char *)
        call      strcmp                                        #70.3
..___tag_value_main.18:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.73:                        # Preds ..B1.4
                                # Execution count [8.12e-01]
        testl     %eax, %eax                                    #70.3
        je        ..B1.5        # Prob 22%                      #70.3
                                # LOE rbx r12 r13 r14 r15
..B1.86:                        # Preds ..B1.73
                                # Execution count [6.33e-01]
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #70.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #70.3
        vmovsd    %xmm0, 2048(%rsp)                             #70.3[spill]
        vmovsd    %xmm1, 2056(%rsp)                             #70.3[spill]
        jmp       ..B1.7        # Prob 100%                     #70.3
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.73
                                # Execution count [1.79e-01]
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #70.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #70.3
        vmovsd    %xmm0, 2048(%rsp)                             #70.3[spill]
        vmovsd    %xmm1, 2056(%rsp)                             #70.3[spill]
..___tag_value_main.22:
#       pow(double, double)
        call      pow                                           #70.3
..___tag_value_main.23:
                                # LOE r12 r13 r14 r15 xmm0
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.79e-01]
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #70.3
        vcvttsd2si %xmm0, %rbx                                  #70.3
                                # LOE rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.67 ..B1.65 ..B1.6 ..B1.86
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.4, %edi                         #71.3
        xorl      %eax, %eax                                    #71.3
..___tag_value_main.25:
#       printf(const char *__restrict__, ...)
        call      printf                                        #71.3
..___tag_value_main.26:
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
                                # Execution count [1.00e+00]
        vxorpd    %xmm0, %xmm0, %xmm0                           #72.3
        lea       (%rsp), %rsi                                  #72.3
        vcvtsi2sdq %rbx, %xmm0, %xmm0                           #72.3
        movl      $.L_2__STRING.5, %edi                         #72.3
        movl      $1, %eax                                      #72.3
        vmulsd    .L_2il0floatpacket.4(%rip), %xmm0, %xmm0      #72.3
..___tag_value_main.27:
#       printf(const char *__restrict__, ...)
        call      printf                                        #72.3
..___tag_value_main.28:
                                # LOE r12 r13 r14 r15
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.6, %edi                         #73.3
        xorl      %eax, %eax                                    #73.3
..___tag_value_main.29:
#       printf(const char *__restrict__, ...)
        call      printf                                        #73.3
..___tag_value_main.30:
                                # LOE r12 r13 r14 r15
..B1.10:                        # Preds ..B1.9
                                # Execution count [1.00e+00]
        xorb      %dl, %dl                                      #74.3
        movl      $20, %eax                                     #74.3
        vmovsd    .L_2il0floatpacket.5(%rip), %xmm14            #77.5
        vmovsd    .L_2il0floatpacket.3(%rip), %xmm13            #77.5
        vxorpd    %xmm12, %xmm12, %xmm12                        #77.5
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm11            #77.5
        vmovsd    .L_2il0floatpacket.8(%rip), %xmm10            #77.5
        vmovsd    .L_2il0floatpacket.9(%rip), %xmm9             #77.5
        vmovsd    .L_2il0floatpacket.17(%rip), %xmm8            #77.5
        vmovsd    .L_2il0floatpacket.10(%rip), %xmm7            #77.5
        vmovsd    .L_2il0floatpacket.11(%rip), %xmm6            #77.5
        vmovsd    .L_2il0floatpacket.2(%rip), %xmm5             #77.5
        vmovups   .L_2il0floatpacket.12(%rip), %zmm4            #77.17
        vmovups   .L_2il0floatpacket.13(%rip), %zmm3            #77.5
        vmovups   .L_2il0floatpacket.14(%rip), %zmm2            #77.5
        vmovdqu   .L_2il0floatpacket.16(%rip), %ymm0            #77.5
        movl      %eax, 2072(%rsp)                              #74.3[spill]
        movb      %dl, 2080(%rsp)                               #74.3[spill]
                                # LOE
..B1.11:                        # Preds ..B1.57 ..B1.10
                                # Execution count [1.60e+01]
        vxorpd    %xmm1, %xmm1, %xmm1                           #75.21
        vcvtsi2sd 2072(%rsp), %xmm1, %xmm1                      #75.21[spill]
        vzeroupper                                              #75.21
        vmovsd    .L_2il0floatpacket.6(%rip), %xmm0             #75.21
..___tag_value_main.34:
#       pow(double, double)
        call      pow                                           #75.21
..___tag_value_main.35:
                                # LOE xmm0
..B1.12:                        # Preds ..B1.11
                                # Execution count [1.60e+01]
        vcvttsd2si %xmm0, %eax                                  #75.21
        movl      %eax, %ebx                                    #76.18
        movl      $64, %edi                                     #77.5
        sarl      $5, %ebx                                      #76.18
        shrl      $26, %ebx                                     #76.18
        addl      %eax, %ebx                                    #76.18
        sarl      $6, %ebx                                      #76.18
        movl      %ebx, %esi                                    #76.22
        shll      $6, %esi                                      #76.22
        movslq    %esi, %r12                                    #77.5
        shlq      $3, %r12                                      #77.5
        movl      %esi, 2064(%rsp)                              #76.22[spill]
        movq      %r12, %rsi                                    #77.5
..___tag_value_main.37:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #77.5
..___tag_value_main.38:
                                # LOE rax r12 ebx
..B1.76:                        # Preds ..B1.12
                                # Execution count [1.60e+01]
        movq      %rax, %r14                                    #77.5
                                # LOE r12 r14 ebx
..B1.13:                        # Preds ..B1.76
                                # Execution count [1.60e+01]
        movl      $64, %edi                                     #77.5
        movq      %r12, %rsi                                    #77.5
..___tag_value_main.39:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #77.5
..___tag_value_main.40:
                                # LOE rax r14 ebx
..B1.77:                        # Preds ..B1.13
                                # Execution count [1.60e+01]
        movq      %rax, %r13                                    #77.5
                                # LOE r13 r14 ebx
..B1.14:                        # Preds ..B1.77
                                # Execution count [1.60e+01]
        movslq    %ebx, %rbx                                    #77.11
        shlq      $6, %rbx                                      #76.22
        testq     %rbx, %rbx                                    #77.5
        jle       ..B1.32       # Prob 50%                      #77.5
                                # LOE rbx r13 r14
..B1.15:                        # Preds ..B1.14
                                # Execution count [1.44e+01]
        cmpq      $16, %rbx                                     #77.5
        jl        ..B1.63       # Prob 10%                      #77.5
                                # LOE rbx r13 r14
..B1.16:                        # Preds ..B1.15
                                # Execution count [1.44e+01]
        movq      %r13, %r8                                     #77.5
        andq      $63, %r8                                      #77.5
        testq     $7, %r8                                       #77.5
        je        ..B1.18       # Prob 50%                      #77.5
                                # LOE rbx r8 r13 r14
..B1.17:                        # Preds ..B1.16
                                # Execution count [7.20e+00]
        xorl      %r8d, %r8d                                    #77.5
        jmp       ..B1.20       # Prob 100%                     #77.5
                                # LOE rbx r8 r13 r14
..B1.18:                        # Preds ..B1.16
                                # Execution count [7.20e+00]
        testq     %r8, %r8                                      #77.5
        je        ..B1.20       # Prob 50%                      #77.5
                                # LOE rbx r8 r13 r14
..B1.19:                        # Preds ..B1.18
                                # Execution count [8.00e+01]
        negq      %r8                                           #77.5
        addq      $64, %r8                                      #77.5
        shrq      $3, %r8                                       #77.5
        cmpq      %r8, %rbx                                     #77.5
        cmovl     %rbx, %r8                                     #77.5
                                # LOE rbx r8 r13 r14
..B1.20:                        # Preds ..B1.17 ..B1.19 ..B1.18
                                # Execution count [1.60e+01]
        movq      %rbx, %rax                                    #77.5
        subq      %r8, %rax                                     #77.5
        andq      $15, %rax                                     #77.5
        negq      %rax                                          #77.5
        addq      %rbx, %rax                                    #77.5
        cmpq      $1, %r8                                       #77.5
        jb        ..B1.24       # Prob 50%                      #77.5
                                # LOE rax rbx r8 r13 r14
..B1.21:                        # Preds ..B1.20
                                # Execution count [1.44e+01]
        vmovdqu   .L_2il0floatpacket.16(%rip), %ymm1            #77.5
        xorl      %esi, %esi                                    #77.5
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm3            #77.5
        vmovups   .L_2il0floatpacket.14(%rip), %zmm4            #77.5
        vmovups   .L_2il0floatpacket.13(%rip), %zmm5            #77.5
        vpbroadcastq %r8, %zmm0                                 #77.5
        xorl      %ecx, %ecx                                    #77.5
                                # LOE rax rcx rbx r8 r13 r14 esi ymm1 ymm3 zmm0 zmm4 zmm5
..B1.22:                        # Preds ..B1.22 ..B1.21
                                # Execution count [8.00e+01]
        vpmovsxdq %ymm1, %zmm2                                  #77.5
        addl      $8, %esi                                      #77.5
        vpaddd    %ymm3, %ymm1, %ymm1                           #77.5
        vpcmpgtq  %zmm2, %zmm0, %k1                             #77.5
        vmovupd   %zmm5, (%r14,%rcx,8){%k1}                     #77.5
        vmovupd   %zmm4, (%r13,%rcx,8){%k1}                     #77.5
        addq      $8, %rcx                                      #77.5
        cmpq      %r8, %rsi                                     #77.5
        jb        ..B1.22       # Prob 82%                      #77.5
                                # LOE rax rcx rbx r8 r13 r14 esi ymm1 ymm3 zmm0 zmm4 zmm5
..B1.23:                        # Preds ..B1.22
                                # Execution count [1.44e+01]
        cmpq      %r8, %rbx                                     #77.5
        je        ..B1.32       # Prob 10%                      #77.5
                                # LOE rax rbx r8 r13 r14
..B1.24:                        # Preds ..B1.20 ..B1.23
                                # Execution count [8.00e+01]
        lea       16(%r8), %rcx                                 #77.5
        cmpq      %rcx, %rax                                    #77.5
        jl        ..B1.28       # Prob 50%                      #77.5
                                # LOE rax rbx r8 r13 r14
..B1.25:                        # Preds ..B1.24
                                # Execution count [1.44e+01]
        vmovups   .L_2il0floatpacket.14(%rip), %zmm0            #77.5
        movl      %r8d, %ecx                                    #77.5
        vmovups   .L_2il0floatpacket.13(%rip), %zmm1            #77.5
                                # LOE rax rbx r8 r13 r14 ecx zmm0 zmm1
..B1.26:                        # Preds ..B1.26 ..B1.25
                                # Execution count [8.00e+01]
        addl      $16, %ecx                                     #77.5
        vmovupd   %zmm1, (%r14,%r8,8)                           #77.5
        vmovupd   %zmm0, (%r13,%r8,8)                           #77.5
        vmovupd   %zmm1, 64(%r14,%r8,8)                         #77.5
        vmovupd   %zmm0, 64(%r13,%r8,8)                         #77.5
        addq      $16, %r8                                      #77.5
        cmpq      %rax, %rcx                                    #77.5
        jb        ..B1.26       # Prob 82%                      #77.5
                                # LOE rax rbx r8 r13 r14 ecx zmm0 zmm1
..B1.28:                        # Preds ..B1.26 ..B1.24 ..B1.63
                                # Execution count [1.60e+01]
        lea       1(%rax), %rcx                                 #77.5
        cmpq      %rbx, %rcx                                    #77.5
        ja        ..B1.32       # Prob 50%                      #77.5
                                # LOE rax rbx r13 r14
..B1.29:                        # Preds ..B1.28
                                # Execution count [1.44e+01]
        movq      %rbx, %r8                                     #77.5
        xorl      %r9d, %r9d                                    #77.5
        subq      %rax, %r8                                     #77.5
        movslq    %eax, %rax                                    #77.5
        vmovdqu   .L_2il0floatpacket.16(%rip), %ymm1            #77.5
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm3            #77.5
        vmovups   .L_2il0floatpacket.14(%rip), %zmm4            #77.5
        vmovups   .L_2il0floatpacket.13(%rip), %zmm5            #77.5
        vpbroadcastq %r8, %zmm0                                 #77.5
        lea       (%r14,%rax,8), %rsi                           #77.5
        lea       (%r13,%rax,8), %rcx                           #77.5
        xorl      %eax, %eax                                    #77.5
                                # LOE rax rcx rbx rsi r8 r13 r14 r9d ymm1 ymm3 zmm0 zmm4 zmm5
..B1.30:                        # Preds ..B1.30 ..B1.29
                                # Execution count [8.00e+01]
        vpmovsxdq %ymm1, %zmm2                                  #77.5
        addl      $8, %r9d                                      #77.5
        vpaddd    %ymm3, %ymm1, %ymm1                           #77.5
        vpcmpgtq  %zmm2, %zmm0, %k1                             #77.5
        vmovupd   %zmm5, (%rsi,%rax,8){%k1}                     #77.5
        vmovupd   %zmm4, (%rcx,%rax,8){%k1}                     #77.5
        addq      $8, %rax                                      #77.5
        cmpq      %r8, %r9                                      #77.5
        jb        ..B1.30       # Prob 82%                      #77.5
                                # LOE rax rcx rbx rsi r8 r13 r14 r9d ymm1 ymm3 zmm0 zmm4 zmm5
..B1.32:                        # Preds ..B1.30 ..B1.14 ..B1.23 ..B1.28
                                # Execution count [1.60e+01]
        vzeroupper                                              #77.5
        lea       2096(%rsp), %rdi                              #77.5
        movl      $1, %r12d                                     #77.5
        lea       2104(%rsp), %rsi                              #77.5
..___tag_value_main.41:
#       timing(double *, double *)
        call      timing                                        #77.5
..___tag_value_main.42:
                                # LOE rbx r13 r14 r12d
..B1.33:                        # Preds ..B1.32
                                # Execution count [1.44e+01]
        xorl      %r15d, %r15d                                  #77.5
        vxorpd    %xmm0, %xmm0, %xmm0                           #77.5
                                # LOE rbx r13 r14 r12d r15d xmm0
..B1.34:                        # Preds ..B1.33 ..B1.41 ..B1.47
                                # Execution count [4.44e+02]
        vcomisd   (%r14), %xmm0                                 #77.5
        jbe       ..B1.36       # Prob 78%                      #77.5
                                # LOE rbx r13 r14 r12d r15d xmm0
..B1.35:                        # Preds ..B1.34
                                # Execution count [9.78e+01]
        movq      %r14, %rdi                                    #77.5
        vzeroupper                                              #77.5
..___tag_value_main.43:
#       dummy(double *)
        call      dummy                                         #77.5
..___tag_value_main.44:
                                # LOE rbx r13 r14 r12d r15d
..B1.87:                        # Preds ..B1.35
                                # Execution count [9.78e+01]
        vxorpd    %xmm0, %xmm0, %xmm0                           #
                                # LOE rbx r13 r14 r12d r15d xmm0
..B1.36:                        # Preds ..B1.34 ..B1.87
                                # Execution count [4.44e+02]
        testq     %rbx, %rbx                                    #77.5
        jle       ..B1.41       # Prob 50%                      #77.5
                                # LOE rbx r13 r14 r12d r15d xmm0
..B1.37:                        # Preds ..B1.36
                                # Execution count [4.00e+02]
        cmpq      $8, %rbx                                      #77.5
        jl        ..B1.41       # Prob 10%                      #77.5
                                # LOE rbx r13 r14 r12d r15d xmm0
..B1.38:                        # Preds ..B1.37
                                # Execution count [4.00e+02]
        vmovups   .L_2il0floatpacket.12(%rip), %zmm2            #77.5
        xorl      %eax, %eax                                    #77.5
                                # LOE rax rbx r13 r14 r12d r15d xmm0 zmm2
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
# LLVM-MCA-BEGIN
..B1.39:                        # Preds ..B1.39 ..B1.38
                                # Execution count [2.22e+03]
        vmovups   (%r13,%rax,8), %zmm1                          #77.5
        vfmadd213pd (%r14,%rax,8), %zmm2, %zmm1                 #77.5
        vmovupd   %zmm1, (%r14,%rax,8)                          #77.5
        addq      $8, %rax                                      #77.5
        cmpq      %rbx, %rax                                    #77.5
        jb        ..B1.39       # Prob 82%                      #77.5
# LLVM-MCA-END
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
                                # LOE rax rbx r13 r14 r12d r15d xmm0 zmm2
..B1.41:                        # Preds ..B1.39 ..B1.36 ..B1.37
                                # Execution count [4.44e+02]
        incl      %r15d                                         #77.5
        cmpl      %r12d, %r15d                                  #77.5
        jb        ..B1.34       # Prob 82%                      #77.5
                                # LOE rbx r13 r14 r12d r15d xmm0
..B1.43:                        # Preds ..B1.41 ..B1.46
                                # Execution count [8.89e+01]: Infreq
        vzeroupper                                              #77.5
        lea       2112(%rsp), %rdi                              #77.5
        lea       2104(%rsp), %rsi                              #77.5
..___tag_value_main.45:
#       timing(double *, double *)
        call      timing                                        #77.5
..___tag_value_main.46:
                                # LOE rbx r13 r14 r12d
..B1.44:                        # Preds ..B1.43
                                # Execution count [8.89e+01]: Infreq
        vmovsd    2112(%rsp), %xmm16                            #77.5
        addl      %r12d, %r12d                                  #77.5
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm0             #77.5
        vsubsd    2096(%rsp), %xmm16, %xmm1                     #77.5
        vcomisd   %xmm1, %xmm0                                  #77.5
        jbe       ..B1.48       # Prob 18%                      #77.5
                                # LOE rbx r13 r14 r12d xmm1
..B1.45:                        # Preds ..B1.44
                                # Execution count [7.29e+01]: Infreq
        lea       2096(%rsp), %rdi                              #77.5
        lea       2104(%rsp), %rsi                              #77.5
..___tag_value_main.47:
#       timing(double *, double *)
        call      timing                                        #77.5
..___tag_value_main.48:
                                # LOE rbx r13 r14 r12d
..B1.46:                        # Preds ..B1.45
                                # Execution count [7.29e+01]: Infreq
        xorl      %r15d, %r15d                                  #77.5
        testl     %r12d, %r12d                                  #77.5
        jle       ..B1.43       # Prob 10%                      #77.5
                                # LOE rbx r13 r14 r12d r15d
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
                                # LOE rbx r13 r14 r12d r15d xmm0
..B1.48:                        # Preds ..B1.44
                                # Execution count [1.60e+01]: Infreq
        movl      %r12d, %eax                                   #77.5
        lea       1024(%rsp), %rdi                              #77.5
        shrl      $31, %eax                                     #77.5
        movl      $1024, %esi                                   #77.5
        addl      %eax, %r12d                                   #77.5
        vmovsd    %xmm1, 1064(%rdi)                             #[spill]
        sarl      $1, %r12d                                     #77.5
..___tag_value_main.50:
#       gethostname(char *, size_t)
        call      gethostname                                   #77.5
..___tag_value_main.51:
                                # LOE rbx r13 r14 r12d
..B1.49:                        # Preds ..B1.48
                                # Execution count [1.60e+01]: Infreq
        movl      $.L_2__STRING.0, %esi                         #77.5
        lea       1024(%rsp), %rdi                              #77.5
..___tag_value_main.52:
#       strcmp(const char *, const char *)
        call      strcmp                                        #77.5
..___tag_value_main.53:
                                # LOE rbx r13 r14 r15 eax r12d
..B1.78:                        # Preds ..B1.49
                                # Execution count [1.60e+01]: Infreq
        testl     %eax, %eax                                    #77.5
        je        ..B1.61       # Prob 9%                       #77.5
                                # LOE rbx r13 r14 r15 r12d
..B1.50:                        # Preds ..B1.78
                                # Execution count [1.44e+01]: Infreq
        movl      $.L_2__STRING.1, %esi                         #77.5
        lea       1024(%rsp), %rdi                              #77.5
..___tag_value_main.54:
#       strcmp(const char *, const char *)
        call      strcmp                                        #77.5
..___tag_value_main.55:
                                # LOE rbx r13 r14 r15 eax r12d
..B1.79:                        # Preds ..B1.50
                                # Execution count [1.44e+01]: Infreq
        testl     %eax, %eax                                    #77.5
        je        ..B1.59       # Prob 9%                       #77.5
                                # LOE rbx r13 r14 r15 r12d
..B1.51:                        # Preds ..B1.79
                                # Execution count [1.30e+01]: Infreq
        movl      $.L_2__STRING.2, %esi                         #77.5
        lea       1024(%rsp), %rdi                              #77.5
..___tag_value_main.56:
#       strcmp(const char *, const char *)
        call      strcmp                                        #77.5
..___tag_value_main.57:
                                # LOE rbx r13 r14 r15 eax r12d
..B1.80:                        # Preds ..B1.51
                                # Execution count [1.30e+01]: Infreq
        testl     %eax, %eax                                    #77.5
        jne       ..B1.54       # Prob 78%                      #77.5
                                # LOE rbx r13 r14 r15 r12d
..B1.52:                        # Preds ..B1.80
                                # Execution count [2.86e+00]: Infreq
        vmovsd    2048(%rsp), %xmm0                             #77.5[spill]
        vmovsd    2056(%rsp), %xmm1                             #77.5[spill]
..___tag_value_main.59:
#       pow(double, double)
        call      pow                                           #77.5
..___tag_value_main.60:
                                # LOE rbx r13 r14 r12d xmm0
..B1.53:                        # Preds ..B1.52
                                # Execution count [2.86e+00]: Infreq
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #77.5
        vcvttsd2si %xmm0, %r15                                  #77.5
                                # LOE rbx r13 r14 r15 r12d
..B1.54:                        # Preds ..B1.62 ..B1.60 ..B1.53 ..B1.80
                                # Execution count [1.60e+01]: Infreq
        movslq    %r12d, %rcx                                   #77.5
        vxorpd    %xmm17, %xmm17, %xmm17                        #77.5
        imulq     %rbx, %rcx                                    #77.5
        vcvtsi2sdq %rcx, %xmm17, %xmm17                         #77.5
        vmovsd    .L_2il0floatpacket.17(%rip), %xmm5            #77.5
        vxorpd    %xmm11, %xmm11, %xmm11                        #77.5
        vmovsd    2088(%rsp), %xmm1                             #77.5[spill]
        vxorpd    %xmm20, %xmm20, %xmm20                        #77.5
        vdivsd    %xmm1, %xmm5, %xmm14                          #77.5
        vmulsd    .L_2il0floatpacket.10(%rip), %xmm17, %xmm18   #77.5
        vxorpd    %xmm16, %xmm16, %xmm16                        #77.5
        vcvtsi2sd 2064(%rsp), %xmm11, %xmm11                    #77.5[spill]
        vcvtsi2sdq %r15, %xmm20, %xmm20                         #77.5
        vdivsd    %xmm18, %xmm1, %xmm19                         #77.5
        vmovsd    .L_2il0floatpacket.9(%rip), %xmm12            #77.5
        movl      $.L_2__STRING.3, %edi                         #77.5
        vmulsd    .L_2il0floatpacket.11(%rip), %xmm11, %xmm9    #77.5
        vaddsd    %xmm11, %xmm11, %xmm6                         #77.5
        vcvtsi2sd %r12d, %xmm16, %xmm16                         #77.5
        vmulsd    %xmm12, %xmm11, %xmm13                        #77.5
        vmulsd    %xmm6, %xmm12, %xmm7                          #77.5
        vmulsd    %xmm14, %xmm9, %xmm10                         #77.5
        vmulsd    %xmm14, %xmm13, %xmm15                        #77.5
        vmulsd    %xmm14, %xmm7, %xmm8                          #77.5
        vmulsd    .L_2il0floatpacket.8(%rip), %xmm11, %xmm0     #77.5
        vmulsd    %xmm16, %xmm10, %xmm4                         #77.5
        vmulsd    %xmm16, %xmm8, %xmm2                          #77.5
        vmulsd    %xmm16, %xmm15, %xmm5                         #77.5
        vmulsd    %xmm20, %xmm19, %xmm3                         #77.5
        movl      %r12d, %esi                                   #77.5
        movq      %rbx, %rdx                                    #77.5
        movl      $6, %eax                                      #77.5
..___tag_value_main.64:
#       printf(const char *__restrict__, ...)
        call      printf                                        #77.5
..___tag_value_main.65:
                                # LOE r13 r14
..B1.55:                        # Preds ..B1.54
                                # Execution count [1.60e+01]: Infreq
        movq      %r14, %rdi                                    #77.5
..___tag_value_main.66:
#       free(void *)
        call      free                                          #77.5
..___tag_value_main.67:
                                # LOE r13
..B1.56:                        # Preds ..B1.55
                                # Execution count [1.60e+01]: Infreq
        movq      %r13, %rdi                                    #77.5
..___tag_value_main.68:
#       free(void *)
        call      free                                          #77.5
..___tag_value_main.69:
                                # LOE
..B1.57:                        # Preds ..B1.56
                                # Execution count [1.60e+01]: Infreq
        movb      2080(%rsp), %al                               #74.3[spill]
        incb      %al                                           #74.3
        incl      2072(%rsp)                                    #74.3[spill]
        movb      %al, 2080(%rsp)                               #74.3[spill]
        cmpb      $16, %al                                      #74.3
        jb        ..B1.11       # Prob 93%                      #74.3
                                # LOE
..B1.58:                        # Preds ..B1.57
                                # Execution count [1.00e+00]: Infreq
        xorl      %eax, %eax                                    #79.10
        addq      $2136, %rsp                                   #79.10
	.cfi_restore 3
        popq      %rbx                                          #79.10
	.cfi_restore 15
        popq      %r15                                          #79.10
	.cfi_restore 14
        popq      %r14                                          #79.10
	.cfi_restore 13
        popq      %r13                                          #79.10
	.cfi_restore 12
        popq      %r12                                          #79.10
        movq      %rbp, %rsp                                    #79.10
        popq      %rbp                                          #79.10
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #79.10
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
        vmovsd    2048(%rsp), %xmm0                             #77.5[spill]
        vmovsd    2056(%rsp), %xmm1                             #77.5[spill]
..___tag_value_main.88:
#       pow(double, double)
        call      pow                                           #77.5
..___tag_value_main.89:
                                # LOE rbx r13 r14 r12d xmm0
..B1.60:                        # Preds ..B1.59
                                # Execution count [1.43e+00]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #77.5
        vcvttsd2si %xmm0, %r15                                  #77.5
        jmp       ..B1.54       # Prob 100%                     #77.5
                                # LOE rbx r13 r14 r15 r12d
..B1.61:                        # Preds ..B1.78
                                # Execution count [1.58e+00]: Infreq
        vmovsd    2048(%rsp), %xmm0                             #77.5[spill]
        vmovsd    2056(%rsp), %xmm1                             #77.5[spill]
..___tag_value_main.92:
#       pow(double, double)
        call      pow                                           #77.5
..___tag_value_main.93:
                                # LOE rbx r13 r14 r12d xmm0
..B1.62:                        # Preds ..B1.61
                                # Execution count [1.58e+00]: Infreq
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm0, %xmm0      #77.5
        vcvttsd2si %xmm0, %r15                                  #77.5
        jmp       ..B1.54       # Prob 100%                     #77.5
                                # LOE rbx r13 r14 r15 r12d
..B1.63:                        # Preds ..B1.15
                                # Execution count [1.44e+00]: Infreq
        xorl      %eax, %eax                                    #77.5
        jmp       ..B1.28       # Prob 100%                     #77.5
                                # LOE rax rbx r13 r14
..B1.64:                        # Preds ..B1.72
                                # Execution count [8.91e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #70.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #70.3
        vmovsd    %xmm0, 2048(%rsp)                             #70.3[spill]
        vmovsd    %xmm1, 2056(%rsp)                             #70.3[spill]
..___tag_value_main.96:
#       pow(double, double)
        call      pow                                           #70.3
..___tag_value_main.97:
                                # LOE r12 r13 r14 r15 xmm0
..B1.65:                        # Preds ..B1.64
                                # Execution count [8.91e-02]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #70.3
        vcvttsd2si %xmm0, %rbx                                  #70.3
        jmp       ..B1.7        # Prob 100%                     #70.3
                                # LOE rbx r12 r13 r14 r15
..B1.66:                        # Preds ..B1.71
                                # Execution count [9.88e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #70.3
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #70.3
        vmovsd    %xmm0, 2048(%rsp)                             #70.3[spill]
        vmovsd    %xmm1, 2056(%rsp)                             #70.3[spill]
..___tag_value_main.100:
#       pow(double, double)
        call      pow                                           #70.3
..___tag_value_main.101:
                                # LOE r12 r13 r14 r15 xmm0
..B1.67:                        # Preds ..B1.66
                                # Execution count [9.88e-02]: Infreq
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm0, %xmm0      #70.3
        vcvttsd2si %xmm0, %rbx                                  #70.3
        jmp       ..B1.7        # Prob 100%                     #70.3
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
.L_2__routine_start_daxpy_2:
# -- Begin  daxpy
	.text
# mark_begin;
       .align    16,0x90
	.globl daxpy
# --- daxpy(long, double)
daxpy:
# parameter 1: %rdi
# parameter 2: %xmm0
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_daxpy.153:
..L154:
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
        pushq     %rbx                                          #27.37
        subq      $1112, %rsp                                   #27.37
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
        movq      %rdi, %r14                                    #27.37
        movl      $64, %edi                                     #29.7
        vmovsd    %xmm0, (%rsp)                                 #27.37[spill]
        lea       (,%r14,8), %rbx                               #29.30
        movq      %rbx, %rsi                                    #29.7
..___tag_value_daxpy.164:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #29.7
..___tag_value_daxpy.165:
                                # LOE rax rbx r14
..B3.57:                        # Preds ..B3.1
                                # Execution count [1.00e+00]
        movq      %rax, %r13                                    #29.7
                                # LOE rbx r13 r14
..B3.2:                         # Preds ..B3.57
                                # Execution count [1.00e+00]
        movl      $64, %edi                                     #30.7
        movq      %rbx, %rsi                                    #30.7
..___tag_value_daxpy.166:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #30.7
..___tag_value_daxpy.167:
                                # LOE rax r13 r14
..B3.58:                        # Preds ..B3.2
                                # Execution count [1.00e+00]
        movq      %rax, %r12                                    #30.7
                                # LOE r12 r13 r14
..B3.3:                         # Preds ..B3.58
                                # Execution count [1.00e+00]
        testq     %r14, %r14                                    #33.18
        jle       ..B3.21       # Prob 50%                      #33.18
                                # LOE r12 r13 r14
..B3.4:                         # Preds ..B3.3
                                # Execution count [9.00e-01]
        cmpq      $16, %r14                                     #33.3
        jl        ..B3.54       # Prob 10%                      #33.3
                                # LOE r12 r13 r14
..B3.5:                         # Preds ..B3.4
                                # Execution count [9.00e-01]
        movq      %r12, %rsi                                    #33.3
        andq      $63, %rsi                                     #33.3
        testq     $7, %rsi                                      #33.3
        je        ..B3.7        # Prob 50%                      #33.3
                                # LOE rsi r12 r13 r14
..B3.6:                         # Preds ..B3.5
                                # Execution count [4.50e-01]
        xorl      %esi, %esi                                    #33.3
        jmp       ..B3.9        # Prob 100%                     #33.3
                                # LOE rsi r12 r13 r14
..B3.7:                         # Preds ..B3.5
                                # Execution count [4.50e-01]
        testq     %rsi, %rsi                                    #33.3
        je        ..B3.9        # Prob 50%                      #33.3
                                # LOE rsi r12 r13 r14
..B3.8:                         # Preds ..B3.7
                                # Execution count [5.00e+00]
        negq      %rsi                                          #33.3
        addq      $64, %rsi                                     #33.3
        shrq      $3, %rsi                                      #33.3
        cmpq      %rsi, %r14                                    #33.3
        cmovl     %r14, %rsi                                    #33.3
                                # LOE rsi r12 r13 r14
..B3.9:                         # Preds ..B3.6 ..B3.8 ..B3.7
                                # Execution count [1.00e+00]
        movq      %r14, %rax                                    #33.3
        subq      %rsi, %rax                                    #33.3
        andq      $15, %rax                                     #33.3
        negq      %rax                                          #33.3
        addq      %r14, %rax                                    #33.3
        cmpq      $1, %rsi                                      #33.3
        jb        ..B3.13       # Prob 50%                      #33.3
                                # LOE rax rsi r12 r13 r14
..B3.10:                        # Preds ..B3.9
                                # Execution count [9.00e-01]
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm4            #33.3
        xorl      %ebx, %ebx                                    #33.3
        vmovdqu   .L_2il0floatpacket.16(%rip), %ymm3            #33.3
        vmovups   .L_2il0floatpacket.13(%rip), %zmm2            #34.12
        vmovups   .L_2il0floatpacket.14(%rip), %zmm1            #35.12
        vpbroadcastq %rsi, %zmm0                                #33.3
        xorl      %ecx, %ecx                                    #33.3
                                # LOE rax rcx rsi r12 r13 r14 ebx ymm3 ymm4 zmm0 zmm1 zmm2
..B3.11:                        # Preds ..B3.11 ..B3.10
                                # Execution count [5.00e+00]
        vpmovsxdq %ymm3, %zmm5                                  #33.3
        addl      $8, %ebx                                      #33.3
        vpaddd    %ymm4, %ymm3, %ymm3                           #33.3
        vpcmpgtq  %zmm5, %zmm0, %k1                             #33.3
        vmovupd   %zmm2, (%r13,%rcx,8){%k1}                     #34.5
        vmovupd   %zmm1, (%r12,%rcx,8){%k1}                     #35.5
        addq      $8, %rcx                                      #33.3
        cmpq      %rsi, %rbx                                    #33.3
        jb        ..B3.11       # Prob 82%                      #33.3
                                # LOE rax rcx rsi r12 r13 r14 ebx ymm3 ymm4 zmm0 zmm1 zmm2
..B3.12:                        # Preds ..B3.11
                                # Execution count [9.00e-01]
        cmpq      %rsi, %r14                                    #33.3
        je        ..B3.21       # Prob 10%                      #33.3
                                # LOE rax rsi r12 r13 r14
..B3.13:                        # Preds ..B3.9 ..B3.12
                                # Execution count [5.00e+00]
        lea       16(%rsi), %rcx                                #33.3
        cmpq      %rcx, %rax                                    #33.3
        jl        ..B3.17       # Prob 50%                      #33.3
                                # LOE rax rsi r12 r13 r14
..B3.14:                        # Preds ..B3.13
                                # Execution count [9.00e-01]
        movslq    %esi, %rcx                                    #33.3
        movl      %esi, %ebx                                    #33.3
        vmovups   .L_2il0floatpacket.13(%rip), %zmm1            #34.12
        vmovups   .L_2il0floatpacket.14(%rip), %zmm0            #35.12
                                # LOE rax rcx r12 r13 r14 ebx zmm0 zmm1
..B3.15:                        # Preds ..B3.15 ..B3.14
                                # Execution count [5.00e+00]
        addl      $16, %ebx                                     #33.3
        vmovupd   %zmm1, (%r13,%rcx,8)                          #34.5
        vmovupd   %zmm0, (%r12,%rcx,8)                          #35.5
        vmovupd   %zmm1, 64(%r13,%rcx,8)                        #34.5
        vmovupd   %zmm0, 64(%r12,%rcx,8)                        #35.5
        addq      $16, %rcx                                     #33.3
        cmpq      %rax, %rbx                                    #33.3
        jb        ..B3.15       # Prob 82%                      #33.3
                                # LOE rax rcx r12 r13 r14 ebx zmm0 zmm1
..B3.17:                        # Preds ..B3.15 ..B3.13 ..B3.54
                                # Execution count [1.00e+00]
        lea       1(%rax), %rcx                                 #33.3
        cmpq      %r14, %rcx                                    #33.3
        ja        ..B3.21       # Prob 50%                      #33.3
                                # LOE rax r12 r13 r14
..B3.18:                        # Preds ..B3.17
                                # Execution count [9.00e-01]
        movq      %r14, %rsi                                    #33.3
        xorl      %r8d, %r8d                                    #33.3
        subq      %rax, %rsi                                    #33.3
        movslq    %eax, %rax                                    #34.5
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm4            #33.3
        vmovdqu   .L_2il0floatpacket.16(%rip), %ymm3            #33.3
        vmovups   .L_2il0floatpacket.13(%rip), %zmm2            #34.12
        vmovups   .L_2il0floatpacket.14(%rip), %zmm1            #35.12
        vpbroadcastq %rsi, %zmm0                                #33.3
        lea       (%r13,%rax,8), %rbx                           #34.5
        lea       (%r12,%rax,8), %rcx                           #35.5
        xorl      %eax, %eax                                    #33.3
                                # LOE rax rcx rbx rsi r12 r13 r14 r8d ymm3 ymm4 zmm0 zmm1 zmm2
..B3.19:                        # Preds ..B3.19 ..B3.18
                                # Execution count [5.00e+00]
        vpmovsxdq %ymm3, %zmm5                                  #33.3
        addl      $8, %r8d                                      #33.3
        vpaddd    %ymm4, %ymm3, %ymm3                           #33.3
        vpcmpgtq  %zmm5, %zmm0, %k1                             #33.3
        vmovupd   %zmm2, (%rbx,%rax,8){%k1}                     #34.5
        vmovupd   %zmm1, (%rcx,%rax,8){%k1}                     #35.5
        addq      $8, %rax                                      #33.3
        cmpq      %rsi, %r8                                     #33.3
        jb        ..B3.19       # Prob 82%                      #33.3
                                # LOE rax rcx rbx rsi r12 r13 r14 r8d ymm3 ymm4 zmm0 zmm1 zmm2
..B3.21:                        # Preds ..B3.3 ..B3.19 ..B3.12 ..B3.17
                                # Execution count [1.00e+00]
        vzeroupper                                              #41.5
        lea       1032(%rsp), %rdi                              #41.5
        movl      $1, %ebx                                      #39.14
        lea       1040(%rsp), %rsi                              #41.5
..___tag_value_daxpy.168:
#       timing(double *, double *)
        call      timing                                        #41.5
..___tag_value_daxpy.169:
                                # LOE r12 r13 r14 ebx
..B3.22:                        # Preds ..B3.21
                                # Execution count [9.00e-01]
        vbroadcastsd (%rsp), %zmm2                              #27.6[spill]
        movq      %r14, %rax                                    #47.7
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm3             #40.30
        vxorpd    %xmm0, %xmm0, %xmm0                           #43.17
        andq      $-8, %rax                                     #47.7
        xorl      %r15d, %r15d                                  #42.5
        vmovdqu32 .L_2il0floatpacket.18(%rip), %zmm1            #47.7
        vmovups   %zmm2, 64(%rsp)                               #47.7[spill]
        movq      %rax, 8(%rsp)                                 #47.7[spill]
                                # LOE r12 r13 r14 ebx r15d xmm0
..B3.23:                        # Preds ..B3.22 ..B3.32 ..B3.38
                                # Execution count [2.78e+01]
        vcomisd   (%r13), %xmm0                                 #43.17
        jbe       ..B3.25       # Prob 78%                      #43.17
                                # LOE r12 r13 r14 ebx r15d xmm0
..B3.24:                        # Preds ..B3.23
                                # Execution count [6.11e+00]
        movq      %r13, %rdi                                    #43.20
        vzeroupper                                              #43.20
..___tag_value_daxpy.173:
#       dummy(double *)
        call      dummy                                         #43.20
..___tag_value_daxpy.174:
                                # LOE r12 r13 r14 ebx r15d
..B3.67:                        # Preds ..B3.24
                                # Execution count [6.11e+00]
        vxorpd    %xmm0, %xmm0, %xmm0                           #
                                # LOE r12 r13 r14 ebx r15d xmm0
..B3.25:                        # Preds ..B3.23 ..B3.67
                                # Execution count [2.78e+01]
        testq     %r14, %r14                                    #47.35
        jle       ..B3.32       # Prob 50%                      #47.35
                                # LOE r12 r13 r14 ebx r15d xmm0
..B3.26:                        # Preds ..B3.25
                                # Execution count [2.50e+01]
        cmpq      $8, %r14                                      #47.7
        jl        ..B3.53       # Prob 10%                      #47.7
                                # LOE r12 r13 r14 ebx r15d xmm0
..B3.27:                        # Preds ..B3.26
                                # Execution count [2.50e+01]
        movq      8(%rsp), %rcx                                 #47.7[spill]
        xorl      %eax, %eax                                    #47.7
        vmovups   64(%rsp), %zmm2                               #47.7[spill]
        movq      %rcx, %r8                                     #47.7
                                # LOE rax rcx r8 r12 r13 r14 ebx r15d xmm0 zmm2
..B3.28:                        # Preds ..B3.28 ..B3.27
                                # Execution count [1.39e+02]
        vmovups   (%r12,%rax,8), %zmm1                          #48.31
        vfmadd213pd (%r13,%rax,8), %zmm2, %zmm1                 #48.31
        vmovupd   %zmm1, (%r13,%rax,8)                          #48.9
        addq      $8, %rax                                      #47.7
        cmpq      %r8, %rax                                     #47.7
        jb        ..B3.28       # Prob 82%                      #47.7
                                # LOE rax rcx r8 r12 r13 r14 ebx r15d xmm0 zmm2
..B3.30:                        # Preds ..B3.28 ..B3.53
                                # Execution count [2.78e+01]
        lea       1(%rcx), %rax                                 #47.7
        cmpq      %r14, %rax                                    #47.7
        ja        ..B3.32       # Prob 50%                      #47.7
                                # LOE rcx r12 r13 r14 ebx r15d xmm0
..B3.31:                        # Preds ..B3.30
                                # Execution count [1.39e+02]
        movq      %r14, %rax                                    #47.7
        subq      %rcx, %rax                                    #47.7
        vpbroadcastq %rax, %zmm2                                #47.7
        vmovups   (%r12,%rcx,8), %zmm3                          #48.31
        vmovups   64(%rsp), %zmm1                               #48.31[spill]
        vpcmpgtq  .L_2il0floatpacket.18(%rip), %zmm2, %k1       #47.7
        vfmadd213pd (%r13,%rcx,8), %zmm1, %zmm3                 #48.31
        vmovupd   %zmm3, (%r13,%rcx,8){%k1}                     #48.9
                                # LOE r12 r13 r14 ebx r15d xmm0
..B3.32:                        # Preds ..B3.25 ..B3.30 ..B3.31
                                # Execution count [2.78e+01]
        incl      %r15d                                         #42.5
        cmpl      %ebx, %r15d                                   #42.5
        jb        ..B3.23       # Prob 82%                      #42.5
                                # LOE r12 r13 r14 ebx r15d xmm0
..B3.34:                        # Preds ..B3.32 ..B3.37
                                # Execution count [5.56e+00]: Infreq
        vzeroupper                                              #51.5
        lea       1048(%rsp), %rdi                              #51.5
        lea       1040(%rsp), %rsi                              #51.5
..___tag_value_daxpy.178:
#       timing(double *, double *)
        call      timing                                        #51.5
..___tag_value_daxpy.179:
                                # LOE r12 r13 r14 ebx
..B3.35:                        # Preds ..B3.34
                                # Execution count [5.56e+00]: Infreq
        vmovsd    1048(%rsp), %xmm16                            #52.15
        addl      %ebx, %ebx                                    #40.34
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm0             #40.30
        vsubsd    1032(%rsp), %xmm16, %xmm1                     #52.19
        vcomisd   %xmm1, %xmm0                                  #40.30
        jbe       ..B3.39       # Prob 18%                      #40.30
                                # LOE r12 r13 r14 ebx xmm1
..B3.36:                        # Preds ..B3.35
                                # Execution count [4.56e+00]: Infreq
        lea       1032(%rsp), %rdi                              #41.5
        lea       1040(%rsp), %rsi                              #41.5
..___tag_value_daxpy.180:
#       timing(double *, double *)
        call      timing                                        #41.5
..___tag_value_daxpy.181:
                                # LOE r12 r13 r14 ebx
..B3.37:                        # Preds ..B3.36
                                # Execution count [4.56e+00]: Infreq
        xorl      %r15d, %r15d                                  #42.5
        testl     %ebx, %ebx                                    #42.20
        jle       ..B3.34       # Prob 10%                      #42.20
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
        movl      %ebx, %eax                                    #54.3
        lea       (%rsp), %rdi                                  #56.3
        shrl      $31, %eax                                     #54.3
        movl      $1024, %esi                                   #56.3
        addl      %eax, %ebx                                    #54.3
        vmovsd    %xmm1, 1024(%rdi)                             #[spill]
        sarl      $1, %ebx                                      #54.3
..___tag_value_daxpy.183:
#       gethostname(char *, size_t)
        call      gethostname                                   #56.3
..___tag_value_daxpy.184:
                                # LOE r12 r13 r14 ebx
..B3.40:                        # Preds ..B3.39
                                # Execution count [1.00e+00]: Infreq
        movl      $.L_2__STRING.0, %esi                         #58.12
        lea       (%rsp), %rdi                                  #58.12
..___tag_value_daxpy.185:
#       strcmp(const char *, const char *)
        call      strcmp                                        #58.12
..___tag_value_daxpy.186:
                                # LOE r12 r13 r14 r15 eax ebx
..B3.59:                        # Preds ..B3.40
                                # Execution count [1.00e+00]: Infreq
        testl     %eax, %eax                                    #58.12
        je        ..B3.51       # Prob 9%                       #58.12
                                # LOE r12 r13 r14 r15 ebx
..B3.41:                        # Preds ..B3.59
                                # Execution count [9.01e-01]: Infreq
        movl      $.L_2__STRING.1, %esi                         #58.12
        lea       (%rsp), %rdi                                  #58.12
..___tag_value_daxpy.187:
#       strcmp(const char *, const char *)
        call      strcmp                                        #58.12
..___tag_value_daxpy.188:
                                # LOE r12 r13 r14 r15 eax ebx
..B3.60:                        # Preds ..B3.41
                                # Execution count [9.01e-01]: Infreq
        testl     %eax, %eax                                    #58.12
        je        ..B3.49       # Prob 9%                       #58.12
                                # LOE r12 r13 r14 r15 ebx
..B3.42:                        # Preds ..B3.60
                                # Execution count [8.12e-01]: Infreq
        movl      $.L_2__STRING.2, %esi                         #58.12
        lea       (%rsp), %rdi                                  #58.12
..___tag_value_daxpy.189:
#       strcmp(const char *, const char *)
        call      strcmp                                        #58.12
..___tag_value_daxpy.190:
                                # LOE r12 r13 r14 r15 eax ebx
..B3.61:                        # Preds ..B3.42
                                # Execution count [8.12e-01]: Infreq
        testl     %eax, %eax                                    #58.12
        jne       ..B3.45       # Prob 78%                      #58.12
                                # LOE r12 r13 r14 r15 ebx
..B3.43:                        # Preds ..B3.61
                                # Execution count [1.79e-01]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #58.12
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #58.12
..___tag_value_daxpy.191:
#       pow(double, double)
        call      pow                                           #58.12
..___tag_value_daxpy.192:
                                # LOE r12 r13 r14 ebx xmm0
..B3.44:                        # Preds ..B3.43
                                # Execution count [1.79e-01]: Infreq
        vmulsd    .L_2il0floatpacket.5(%rip), %xmm0, %xmm0      #58.12
        vcvttsd2si %xmm0, %r15                                  #58.12
                                # LOE r12 r13 r14 r15 ebx
..B3.45:                        # Preds ..B3.52 ..B3.50 ..B3.44 ..B3.61
                                # Execution count [1.00e+00]: Infreq
        movslq    %ebx, %rcx                                    #59.3
        vxorpd    %xmm9, %xmm9, %xmm9                           #59.3
        imulq     %r14, %rcx                                    #59.3
        vcvtsi2sdq %rcx, %xmm9, %xmm9                           #59.3
        vmovsd    .L_2il0floatpacket.17(%rip), %xmm5            #59.3
        vxorpd    %xmm15, %xmm15, %xmm15                        #59.85
        vmovsd    1024(%rsp), %xmm1                             #59.301[spill]
        vxorpd    %xmm20, %xmm20, %xmm20                        #59.147
        vdivsd    %xmm1, %xmm5, %xmm18                          #59.301
        vmulsd    .L_2il0floatpacket.10(%rip), %xmm9, %xmm10    #59.3
        vxorpd    %xmm12, %xmm12, %xmm12                        #59.3
        vcvtsi2sdq %r14, %xmm15, %xmm15                         #59.85
        vcvtsi2sd %ebx, %xmm20, %xmm20                          #59.147
        vdivsd    %xmm10, %xmm1, %xmm11                         #59.3
        vmovsd    .L_2il0floatpacket.9(%rip), %xmm16            #59.154
        movl      $.L_2__STRING.3, %edi                         #59.3
        vmulsd    .L_2il0floatpacket.11(%rip), %xmm15, %xmm13   #59.3
        vaddsd    %xmm15, %xmm15, %xmm6                         #59.3
        vcvtsi2sdq %r15, %xmm12, %xmm12                         #59.3
        vmulsd    %xmm16, %xmm15, %xmm17                        #59.3
        vmulsd    %xmm6, %xmm16, %xmm7                          #59.3
        vmulsd    %xmm18, %xmm13, %xmm14                        #59.3
        vmulsd    %xmm18, %xmm17, %xmm19                        #59.3
        vmulsd    %xmm18, %xmm7, %xmm8                          #59.3
        vmulsd    .L_2il0floatpacket.8(%rip), %xmm15, %xmm0     #59.3
        vmulsd    %xmm12, %xmm11, %xmm3                         #59.3
        vmulsd    %xmm20, %xmm8, %xmm2                          #59.3
        vmulsd    %xmm20, %xmm14, %xmm4                         #59.3
        vmulsd    %xmm20, %xmm19, %xmm5                         #59.3
        movl      %ebx, %esi                                    #59.3
        movq      %r14, %rdx                                    #59.3
        movl      $6, %eax                                      #59.3
..___tag_value_daxpy.194:
#       printf(const char *__restrict__, ...)
        call      printf                                        #59.3
..___tag_value_daxpy.195:
                                # LOE r12 r13
..B3.46:                        # Preds ..B3.45
                                # Execution count [1.00e+00]: Infreq
        movq      %r13, %rdi                                    #61.3
..___tag_value_daxpy.196:
#       free(void *)
        call      free                                          #61.3
..___tag_value_daxpy.197:
                                # LOE r12
..B3.47:                        # Preds ..B3.46
                                # Execution count [1.00e+00]: Infreq
        movq      %r12, %rdi                                    #61.12
..___tag_value_daxpy.198:
#       free(void *)
        call      free                                          #61.12
..___tag_value_daxpy.199:
                                # LOE
..B3.48:                        # Preds ..B3.47
                                # Execution count [1.00e+00]: Infreq
        addq      $1112, %rsp                                   #62.1
	.cfi_restore 3
        popq      %rbx                                          #62.1
	.cfi_restore 15
        popq      %r15                                          #62.1
	.cfi_restore 14
        popq      %r14                                          #62.1
	.cfi_restore 13
        popq      %r13                                          #62.1
	.cfi_restore 12
        popq      %r12                                          #62.1
        movq      %rbp, %rsp                                    #62.1
        popq      %rbp                                          #62.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #62.1
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
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #58.12
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #58.12
..___tag_value_daxpy.214:
#       pow(double, double)
        call      pow                                           #58.12
..___tag_value_daxpy.215:
                                # LOE r12 r13 r14 ebx xmm0
..B3.50:                        # Preds ..B3.49
                                # Execution count [8.91e-02]: Infreq
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm0, %xmm0      #58.12
        vcvttsd2si %xmm0, %r15                                  #58.12
        jmp       ..B3.45       # Prob 100%                     #58.12
                                # LOE r12 r13 r14 r15 ebx
..B3.51:                        # Preds ..B3.59
                                # Execution count [9.88e-02]: Infreq
        vmovsd    .L_2il0floatpacket.0(%rip), %xmm0             #58.12
        vmovsd    .L_2il0floatpacket.1(%rip), %xmm1             #58.12
..___tag_value_daxpy.216:
#       pow(double, double)
        call      pow                                           #58.12
..___tag_value_daxpy.217:
                                # LOE r12 r13 r14 ebx xmm0
..B3.52:                        # Preds ..B3.51
                                # Execution count [9.88e-02]: Infreq
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm0, %xmm0      #58.12
        vcvttsd2si %xmm0, %r15                                  #58.12
        jmp       ..B3.45       # Prob 100%                     #58.12
                                # LOE r12 r13 r14 r15 ebx
..B3.53:                        # Preds ..B3.26
                                # Execution count [2.50e+00]: Infreq
        xorl      %ecx, %ecx                                    #47.7
        jmp       ..B3.30       # Prob 100%                     #47.7
                                # LOE rcx r12 r13 r14 ebx r15d xmm0
..B3.54:                        # Preds ..B3.4
                                # Execution count [9.00e-02]: Infreq
        xorl      %eax, %eax                                    #33.3
        jmp       ..B3.17       # Prob 100%                     #33.3
        .align    16,0x90
                                # LOE rax r12 r13 r14
	.cfi_endproc
# mark_end;
	.type	daxpy,@function
	.size	daxpy,.-daxpy
..LNdaxpy.2:
	.data
# -- End  daxpy
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
.L_2il0floatpacket.14:
	.long	0x5ad7ba0e,0x3ee96c8d,0x5ad7ba0e,0x3ee96c8d,0x5ad7ba0e,0x3ee96c8d,0x5ad7ba0e,0x3ee96c8d,0x5ad7ba0e,0x3ee96c8d,0x5ad7ba0e,0x3ee96c8d,0x5ad7ba0e,0x3ee96c8d,0x5ad7ba0e,0x3ee96c8d
	.type	.L_2il0floatpacket.14,@object
	.size	.L_2il0floatpacket.14,64
	.align 64
.L_2il0floatpacket.18:
	.long	0x00000000,0x00000000,0x00000001,0x00000000,0x00000002,0x00000000,0x00000003,0x00000000,0x00000004,0x00000000,0x00000005,0x00000000,0x00000006,0x00000000,0x00000007,0x00000000
	.type	.L_2il0floatpacket.18,@object
	.size	.L_2il0floatpacket.18,64
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
	.long	0x00000000,0x3ef00000
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
.L_2__STRING.4:
	.long	1347961156
	.long	1533091929
	.long	1025531241
	.long	1767596320
	.long	539697245
	.long	539631731
	.long	1567185762
	.long	909189164
	.long	1954112032
	.long	1953050469
	.long	540155948
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
