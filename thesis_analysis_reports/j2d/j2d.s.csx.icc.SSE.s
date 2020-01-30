# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.5.281 Build 20190815";
# mark_description "-qopenmp-simd -fno-alias -unroll -fno-builtin -msse4.2 -Ofast -S -use-msasm -o j2d.s.csx.icc.SSE.s";
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
        xorl      %esi, %esi                                    #83.1
        movl      $3, %edi                                      #83.1
        call      __intel_new_feature_proc_init                 #83.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
                                # LOE r12 r13 r14 r15
..B1.75:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        stmxcsr   1024(%rsp)                                    #83.1
        movl      $1024, %esi                                   #85.3
        lea       (%rsp), %rdi                                  #85.3
        orl       $32832, 1024(%rdi)                            #83.1
        ldmxcsr   1024(%rdi)                                    #83.1
..___tag_value_main.7:
#       gethostname(char *, size_t)
        call      gethostname                                   #85.3
..___tag_value_main.8:
                                # LOE r12 r13 r14 r15
..B1.2:                         # Preds ..B1.75
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.0, %esi                         #87.3
        lea       (%rsp), %rdi                                  #87.3
..___tag_value_main.9:
#       strcmp(const char *, const char *)
        call      strcmp                                        #87.3
..___tag_value_main.10:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.76:                        # Preds ..B1.2
                                # Execution count [1.00e+00]
        testl     %eax, %eax                                    #87.3
        je        ..B1.71       # Prob 9%                       #87.3
                                # LOE rbx r12 r13 r14 r15
..B1.3:                         # Preds ..B1.76
                                # Execution count [9.01e-01]
        movl      $.L_2__STRING.1, %esi                         #87.3
        lea       (%rsp), %rdi                                  #87.3
..___tag_value_main.11:
#       strcmp(const char *, const char *)
        call      strcmp                                        #87.3
..___tag_value_main.12:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.77:                        # Preds ..B1.3
                                # Execution count [9.01e-01]
        testl     %eax, %eax                                    #87.3
        je        ..B1.69       # Prob 9%                       #87.3
                                # LOE rbx r12 r13 r14 r15
..B1.4:                         # Preds ..B1.77
                                # Execution count [8.12e-01]
        movl      $.L_2__STRING.2, %esi                         #87.3
        lea       (%rsp), %rdi                                  #87.3
..___tag_value_main.13:
#       strcmp(const char *, const char *)
        call      strcmp                                        #87.3
..___tag_value_main.14:
                                # LOE rbx r12 r13 r14 r15 eax
..B1.78:                        # Preds ..B1.4
                                # Execution count [8.12e-01]
        testl     %eax, %eax                                    #87.3
        je        ..B1.5        # Prob 22%                      #87.3
                                # LOE rbx r12 r13 r14 r15
..B1.90:                        # Preds ..B1.78
                                # Execution count [6.33e-01]
        movsd     .L_2il0floatpacket.0(%rip), %xmm0             #87.3
        movsd     .L_2il0floatpacket.1(%rip), %xmm1             #87.3
        movsd     .L_2il0floatpacket.3(%rip), %xmm2             #94.5
        movsd     .L_2il0floatpacket.2(%rip), %xmm3             #94.5
        movsd     %xmm0, 2104(%rsp)                             #87.3[spill]
        movsd     %xmm1, 2096(%rsp)                             #87.3[spill]
        movsd     %xmm2, 2080(%rsp)                             #94.5[spill]
        movsd     %xmm3, 2088(%rsp)                             #94.5[spill]
        jmp       ..B1.7        # Prob 100%                     #94.5
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.78
                                # Execution count [1.79e-01]
        movsd     .L_2il0floatpacket.0(%rip), %xmm0             #87.3
        movsd     .L_2il0floatpacket.1(%rip), %xmm1             #87.3
        movsd     %xmm0, 2104(%rsp)                             #87.3[spill]
        movsd     %xmm1, 2096(%rsp)                             #87.3[spill]
..___tag_value_main.20:
#       pow(double, double)
        call      pow                                           #87.3
..___tag_value_main.21:
                                # LOE r12 r13 r14 r15 xmm0
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.79e-01]
        mulsd     .L_2il0floatpacket.5(%rip), %xmm0             #87.3
        cvttsd2si %xmm0, %rbx                                   #87.3
        movsd     .L_2il0floatpacket.3(%rip), %xmm0             #94.5
        movsd     .L_2il0floatpacket.2(%rip), %xmm1             #94.5
        movsd     %xmm0, 2080(%rsp)                             #94.5[spill]
        movsd     %xmm1, 2088(%rsp)                             #94.5[spill]
                                # LOE rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.72 ..B1.70 ..B1.6 ..B1.90
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.4, %edi                         #88.3
        xorl      %eax, %eax                                    #88.3
..___tag_value_main.25:
#       printf(const char *__restrict__, ...)
        call      printf                                        #88.3
..___tag_value_main.26:
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
                                # Execution count [1.00e+00]
        xorps     %xmm0, %xmm0                                  #89.3
        lea       (%rsp), %rsi                                  #89.3
        cvtsi2sdq %rbx, %xmm0                                   #89.3
        mulsd     .L_2il0floatpacket.4(%rip), %xmm0             #89.3
        movl      $.L_2__STRING.5, %edi                         #89.3
        movl      $1, %eax                                      #89.3
..___tag_value_main.27:
#       printf(const char *__restrict__, ...)
        call      printf                                        #89.3
..___tag_value_main.28:
                                # LOE r12 r13 r14 r15
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.6, %edi                         #90.3
        xorl      %eax, %eax                                    #90.3
..___tag_value_main.29:
#       printf(const char *__restrict__, ...)
        call      printf                                        #90.3
..___tag_value_main.30:
                                # LOE r12 r13 r14 r15
..B1.10:                        # Preds ..B1.9
                                # Execution count [1.00e+00]
        xorl      %esi, %esi                                    #91.3
        xorb      %r9b, %r9b                                    #91.3
        xorl      %ebx, %ebx                                    #91.3
        xorl      %edi, %edi                                    #91.3
        movl      $3746, %edx                                   #91.3
        movsd     .L_2il0floatpacket.7(%rip), %xmm5             #94.5
        xorps     %xmm6, %xmm6                                  #94.5
        movsd     .L_2il0floatpacket.8(%rip), %xmm4             #94.5
        movsd     .L_2il0floatpacket.10(%rip), %xmm3            #94.5
        movsd     .L_2il0floatpacket.12(%rip), %xmm2            #94.5
        movq      %rbx, 2112(%rsp)                              #91.3[spill]
        movl      %edx, 2120(%rsp)                              #91.3[spill]
        movq      %rbx, 2128(%rsp)                              #91.3[spill]
        movq      %rsi, 2144(%rsp)                              #91.3[spill]
        movl      %edi, 2152(%rsp)                              #91.3[spill]
        movb      %r9b, 2160(%rsp)                              #91.3[spill]
        movq      %r12, 2048(%rsp)                              #91.3[spill]
        movq      %r13, 2056(%rsp)                              #91.3[spill]
        movq      %r14, 2064(%rsp)                              #91.3[spill]
        movq      %r15, 2072(%rsp)                              #91.3[spill]
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x00, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x08, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x10, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x18, 0xff, 0xff, 0xff, 0x22
                                # LOE rbx
..B1.11:                        # Preds ..B1.60 ..B1.10
                                # Execution count [1.66e+01]
        movl      2152(%rsp), %eax                              #91.26[spill]
        xorps     %xmm1, %xmm1                                  #92.23
        movsd     .L_2il0floatpacket.6(%rip), %xmm0             #92.23
        lea       1250(%rax), %r13d                             #91.26
        cvtsi2sd  %r13d, %xmm1                                  #92.23
..___tag_value_main.46:
#       pow(double, double)
        call      pow                                           #92.23
..___tag_value_main.47:
                                # LOE rbx r13d
..B1.12:                        # Preds ..B1.11
                                # Execution count [1.66e+01]
        movl      $64, %edi                                     #94.5
        lea       3753(%rbx), %r14                              #91.26
        shlq      $3, %r14                                      #94.5
        lea       30025(,%rbx,8), %rsi                          #94.5
..___tag_value_main.48:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #94.5
..___tag_value_main.49:
                                # LOE rax rbx r14 r13d
..B1.80:                        # Preds ..B1.12
                                # Execution count [1.66e+01]
        movq      %rax, %r12                                    #94.5
                                # LOE rbx r12 r14 r13d
..B1.13:                        # Preds ..B1.80
                                # Execution count [1.66e+01]
        movl      $64, %edi                                     #94.5
        movq      %r14, %rsi                                    #94.5
..___tag_value_main.50:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #94.5
..___tag_value_main.51:
                                # LOE rax rbx r12 r13d
..B1.81:                        # Preds ..B1.13
                                # Execution count [1.66e+01]
        movq      %rax, 2200(%rsp)                              #94.5[spill]
                                # LOE rbx r12 r13d
..B1.14:                        # Preds ..B1.81
                                # Execution count [1.49e+01]
        movq      2128(%rsp), %rax                              #91.26[spill]
        xorb      %r11b, %r11b                                  #94.5
        movq      2112(%rsp), %rdx                              #94.5[spill]
        movq      %r12, %r8                                     #94.5
        movups    .L_2il0floatpacket.13(%rip), %xmm0            #94.5
        movq      $0x3e80867a71b56e7e, %r9                      #94.5
        lea       1250(%rax), %r10                              #91.26
        movl      %r10d, %esi                                   #94.5
                                # LOE rdx rbx r8 r9 r10 r12 esi r13d r11b xmm0
..B1.15:                        # Preds ..B1.32 ..B1.14
                                # Execution count [8.28e+01]
        testl     %r13d, %r13d                                  #94.5
        jle       ..B1.32       # Prob 50%                      #94.5
                                # LOE rdx rbx r8 r9 r10 r12 esi r13d r11b xmm0
..B1.16:                        # Preds ..B1.15
                                # Execution count [7.45e+01]
        cmpq      $8, %r10                                      #94.5
        jl        ..B1.66       # Prob 10%                      #94.5
                                # LOE rdx rbx r8 r9 r10 r12 esi r13d r11b xmm0
..B1.17:                        # Preds ..B1.16
                                # Execution count [7.45e+01]
        lea       8(%r8), %rcx                                  #94.5
        andq      $15, %rcx                                     #94.5
        testl     %ecx, %ecx                                    #94.5
        je        ..B1.20       # Prob 50%                      #94.5
                                # LOE rdx rbx r8 r9 r10 r12 ecx esi r13d r11b xmm0
..B1.18:                        # Preds ..B1.17
                                # Execution count [7.45e+01]
        testb     $7, %cl                                       #94.5
        jne       ..B1.66       # Prob 10%                      #94.5
                                # LOE rdx rbx r8 r9 r10 r12 esi r13d r11b xmm0
..B1.19:                        # Preds ..B1.18
                                # Execution count [3.73e+01]
        movl      $1, %ecx                                      #94.5
                                # LOE rdx rbx r8 r9 r10 r12 ecx esi r13d r11b xmm0
..B1.20:                        # Preds ..B1.19 ..B1.17
                                # Execution count [7.45e+01]
        movl      %ecx, %eax                                    #94.5
        lea       8(%rax), %r14                                 #94.5
        cmpq      %r14, %r10                                    #94.5
        jl        ..B1.66       # Prob 10%                      #94.5
                                # LOE rax rdx rbx r8 r9 r10 r12 ecx esi r13d r11b xmm0
..B1.21:                        # Preds ..B1.20
                                # Execution count [8.28e+01]
        movl      %esi, %edi                                    #94.5
        xorl      %r15d, %r15d                                  #94.5
        subl      %ecx, %edi                                    #94.5
        movq      %r8, %r14                                     #94.5
        andl      $7, %edi                                      #94.5
        negl      %edi                                          #94.5
        addl      %esi, %edi                                    #94.5
        testl     %ecx, %ecx                                    #94.5
        movslq    %edi, %rcx                                    #94.5
        jbe       ..B1.25       # Prob 10%                      #94.5
                                # LOE rax rdx rcx rbx r8 r9 r10 r12 r14 r15 esi r13d r11b xmm0
..B1.23:                        # Preds ..B1.21 ..B1.23
                                # Execution count [4.14e+02]
        incq      %r15                                          #94.5
        movq      %r9, 8(%r14)                                  #94.5
        addq      $8, %r14                                      #94.5
        cmpq      %rax, %r15                                    #94.5
        jb        ..B1.23       # Prob 82%                      #94.5
                                # LOE rax rdx rcx rbx r8 r9 r10 r12 r14 r15 esi r13d r11b xmm0
..B1.25:                        # Preds ..B1.23 ..B1.21
                                # Execution count [7.45e+01]
        lea       (%r8,%rax,8), %r14                            #94.5
                                # LOE rax rdx rcx rbx r8 r9 r10 r12 r14 esi r13d r11b xmm0
..B1.26:                        # Preds ..B1.26 ..B1.25
                                # Execution count [4.14e+02]
        addq      $8, %rax                                      #94.5
        movups    %xmm0, 8(%r14)                                #94.5
        movups    %xmm0, 24(%r14)                               #94.5
        movups    %xmm0, 40(%r14)                               #94.5
        movups    %xmm0, 56(%r14)                               #94.5
        addq      $64, %r14                                     #94.5
        cmpq      %rcx, %rax                                    #94.5
        jb        ..B1.26       # Prob 82%                      #94.5
                                # LOE rax rdx rcx rbx r8 r9 r10 r12 r14 esi r13d r11b xmm0
..B1.28:                        # Preds ..B1.26 ..B1.66
                                # Execution count [8.28e+01]
        cmpq      %r10, %rcx                                    #94.5
        jae       ..B1.32       # Prob 10%                      #94.5
                                # LOE rdx rcx rbx r8 r9 r10 r12 esi r13d r11b xmm0
..B1.29:                        # Preds ..B1.28
                                # Execution count [7.45e+01]
        lea       (%r8,%rcx,8), %rax                            #94.5
                                # LOE rax rdx rcx rbx r8 r9 r10 r12 esi r13d r11b xmm0
..B1.30:                        # Preds ..B1.30 ..B1.29
                                # Execution count [4.14e+02]
        incq      %rcx                                          #94.5
        movq      %r9, 8(%rax)                                  #94.5
        addq      $8, %rax                                      #94.5
        cmpq      %r10, %rcx                                    #94.5
        jb        ..B1.30       # Prob 82%                      #94.5
                                # LOE rax rdx rcx rbx r8 r9 r10 r12 esi r13d r11b xmm0
..B1.32:                        # Preds ..B1.30 ..B1.15 ..B1.28
                                # Execution count [8.28e+01]
        incb      %r11b                                         #94.5
        lea       10008(%r8,%rdx), %r8                          #94.5
        cmpb      $3, %r11b                                     #94.5
        jb        ..B1.15       # Prob 82%                      #94.5
                                # LOE rdx rbx r8 r9 r10 r12 esi r13d r11b xmm0
..B1.33:                        # Preds ..B1.32
                                # Execution count [1.66e+01]
        movl      $1, %r15d                                     #94.5
        lea       2176(%rsp), %rdi                              #94.5
        lea       2184(%rsp), %rsi                              #94.5
..___tag_value_main.55:
#       timing(double *, double *)
        call      timing                                        #94.5
..___tag_value_main.56:
                                # LOE rbx r12 r15d
..B1.34:                        # Preds ..B1.33
                                # Execution count [0.00e+00]
        movq      2128(%rsp), %rax                              #94.5[spill]
        xorl      %r13d, %r13d                                  #94.5
        movq      2200(%rsp), %rcx                              #94.5[spill]
        movq      2112(%rsp), %r8                               #94.5[spill]
        movq      2144(%rsp), %r10                              #91.26[spill]
        lea       1248(%rax), %r14                              #94.5
        shlq      $10, %r10                                     #91.26
        lea       1(%r14), %rax                                 #94.5
        negq      %r10                                          #91.26
        lea       (%r8,%rcx), %r9                               #94.5
        addq      %r12, %r10                                    #94.5
        lea       (%r12,%r8), %rcx                              #94.5
        movq      %rcx, 2208(%rsp)                              #94.5[spill]
        movq      %r9, 2216(%rsp)                               #94.5[spill]
        movq      %r10, 2224(%rsp)                              #94.5[spill]
        movq      %rbx, 2136(%rsp)                              #94.5[spill]
        movq      %rax, %rbx                                    #94.5
                                # LOE rbx r12 r14 r13d r15d
..B1.35:                        # Preds ..B1.49 ..B1.34 ..B1.44
                                # Execution count [4.60e+02]
        movsd     8(%r12), %xmm0                                #94.5
        xorps     %xmm1, %xmm1                                  #94.5
        comisd    %xmm1, %xmm0                                  #94.5
        jbe       ..B1.37       # Prob 78%                      #94.5
                                # LOE rbx r12 r14 r13d r15d
..B1.36:                        # Preds ..B1.35
                                # Execution count [1.01e+02]
        movq      2200(%rsp), %rdi                              #94.5[spill]
..___tag_value_main.65:
#       dummy(double *)
        call      dummy                                         #94.5
..___tag_value_main.66:
                                # LOE rbx r12 r14 r13d r15d
..B1.37:                        # Preds ..B1.36 ..B1.35
                                # Execution count [2.30e+03]
        cmpq      $1, %rbx                                      #94.5
        jle       ..B1.44       # Prob 50%                      #94.5
                                # LOE rbx r12 r14 r13d r15d
..B1.38:                        # Preds ..B1.37
                                # Execution count [2.07e+03]
        cmpq      $8, %r14                                      #94.5
        jl        ..B1.44       # Prob 10%                      #94.5
                                # LOE rbx r12 r14 r13d r15d
..B1.41:                        # Preds ..B1.38
                                # Execution count [2.07e+03]
        movups    .L_2il0floatpacket.15(%rip), %xmm7            #94.5
        xorl      %ecx, %ecx                                    #94.5
        movq      2208(%rsp), %r8                               #94.5[spill]
        movq      2216(%rsp), %r9                               #94.5[spill]
        movq      2224(%rsp), %r10                              #94.5[spill]
                                # LOE rcx rbx r8 r9 r10 r12 r14 r13d r15d xmm7
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
# LLVM-MCA-BEGIN
..B1.42:                        # Preds ..B1.42 ..B1.41
                                # Execution count [1.15e+04]
        movups    10016(%r8,%rcx,8), %xmm0                      #94.5
        addpd     16(%r12,%rcx,8), %xmm0                        #94.5
        addpd     20032(%r10,%rcx,8), %xmm0                     #94.5
        movups    10032(%r8,%rcx,8), %xmm2                      #94.5
        movups    32(%r12,%rcx,8), %xmm1                        #94.5
        addpd     %xmm2, %xmm0                                  #94.5
        addpd     %xmm1, %xmm2                                  #94.5
        mulpd     %xmm7, %xmm0                                  #94.5
        addpd     20048(%r10,%rcx,8), %xmm2                     #94.5
        movups    10048(%r8,%rcx,8), %xmm4                      #94.5
        movups    48(%r12,%rcx,8), %xmm3                        #94.5
        addpd     %xmm4, %xmm2                                  #94.5
        addpd     %xmm3, %xmm4                                  #94.5
        mulpd     %xmm7, %xmm2                                  #94.5
        addpd     20064(%r10,%rcx,8), %xmm4                     #94.5
        movups    10064(%r8,%rcx,8), %xmm6                      #94.5
        movups    64(%r12,%rcx,8), %xmm5                        #94.5
        addpd     %xmm6, %xmm4                                  #94.5
        addpd     %xmm5, %xmm6                                  #94.5
        mulpd     %xmm7, %xmm4                                  #94.5
        addpd     20080(%r10,%rcx,8), %xmm6                     #94.5
        addpd     10080(%r8,%rcx,8), %xmm6                      #94.5
        mulpd     %xmm7, %xmm6                                  #94.5
        movups    %xmm0, 10016(%r9,%rcx,8)                      #94.5
        movups    %xmm2, 10032(%r9,%rcx,8)                      #94.5
        movups    %xmm4, 10048(%r9,%rcx,8)                      #94.5
        movups    %xmm6, 10064(%r9,%rcx,8)                      #94.5
        addq      $8, %rcx                                      #94.5
        cmpq      %r14, %rcx                                    #94.5
        jb        ..B1.42       # Prob 82%                      #94.5
# LLVM-MCA-END
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
                                # LOE rcx rbx r8 r9 r10 r12 r14 r13d r15d xmm7
..B1.44:                        # Preds ..B1.42 ..B1.38 ..B1.37
                                # Execution count [1.89e+03]
        incl      %r13d                                         #94.5
        cmpl      %r15d, %r13d                                  #94.5
        jb        ..B1.35       # Prob 95%                      #94.5
                                # LOE rbx r12 r14 r13d r15d
..B1.46:                        # Preds ..B1.44 ..B1.49
                                # Execution count [9.20e+01]: Infreq
        lea       2192(%rsp), %rdi                              #94.5
        lea       2184(%rsp), %rsi                              #94.5
..___tag_value_main.71:
#       timing(double *, double *)
        call      timing                                        #94.5
..___tag_value_main.72:
                                # LOE rbx r12 r14 r15d
..B1.47:                        # Preds ..B1.46
                                # Execution count [9.20e+01]: Infreq
        movsd     2192(%rsp), %xmm1                             #94.5
        addl      %r15d, %r15d                                  #94.5
        movsd     .L_2il0floatpacket.7(%rip), %xmm0             #94.5
        subsd     2176(%rsp), %xmm1                             #94.5
        comisd    %xmm1, %xmm0                                  #94.5
        jbe       ..B1.51       # Prob 18%                      #94.5
                                # LOE rbx r12 r14 r15d xmm1
..B1.48:                        # Preds ..B1.47
                                # Execution count [7.55e+01]: Infreq
        lea       2176(%rsp), %rdi                              #94.5
        lea       2184(%rsp), %rsi                              #94.5
..___tag_value_main.73:
#       timing(double *, double *)
        call      timing                                        #94.5
..___tag_value_main.74:
                                # LOE rbx r12 r14 r15d
..B1.49:                        # Preds ..B1.48
                                # Execution count [7.55e+01]: Infreq
        xorl      %r13d, %r13d                                  #94.5
        testl     %r15d, %r15d                                  #94.5
        jle       ..B1.46       # Prob 10%                      #94.5
        jmp       ..B1.35       # Prob 100%                     #94.5
                                # LOE rbx r12 r14 r13d r15d
..B1.51:                        # Preds ..B1.47
                                # Execution count [1.66e+01]: Infreq
        movl      %r15d, %eax                                   #94.5
        lea       1024(%rsp), %rdi                              #94.5
        shrl      $31, %eax                                     #94.5
        movl      $1024, %esi                                   #94.5
        addl      %eax, %r15d                                   #94.5
        movsd     %xmm1, 1144(%rdi)                             #[spill]
        movq      1112(%rdi), %rbx                              #[spill]
        sarl      $1, %r15d                                     #94.5
..___tag_value_main.77:
#       gethostname(char *, size_t)
        call      gethostname                                   #94.5
..___tag_value_main.78:
                                # LOE rbx r12 r14 r15d
..B1.52:                        # Preds ..B1.51
                                # Execution count [1.66e+01]: Infreq
        movl      $.L_2__STRING.0, %esi                         #94.5
        lea       1024(%rsp), %rdi                              #94.5
..___tag_value_main.79:
#       strcmp(const char *, const char *)
        call      strcmp                                        #94.5
..___tag_value_main.80:
                                # LOE rbx r12 r13 r14 eax r15d
..B1.82:                        # Preds ..B1.52
                                # Execution count [1.66e+01]: Infreq
        testl     %eax, %eax                                    #94.5
        je        ..B1.64       # Prob 9%                       #94.5
                                # LOE rbx r12 r13 r14 r15d
..B1.53:                        # Preds ..B1.82
                                # Execution count [1.49e+01]: Infreq
        movl      $.L_2__STRING.1, %esi                         #94.5
        lea       1024(%rsp), %rdi                              #94.5
..___tag_value_main.81:
#       strcmp(const char *, const char *)
        call      strcmp                                        #94.5
..___tag_value_main.82:
                                # LOE rbx r12 r13 r14 eax r15d
..B1.83:                        # Preds ..B1.53
                                # Execution count [1.49e+01]: Infreq
        testl     %eax, %eax                                    #94.5
        je        ..B1.62       # Prob 9%                       #94.5
                                # LOE rbx r12 r13 r14 r15d
..B1.54:                        # Preds ..B1.83
                                # Execution count [1.35e+01]: Infreq
        movl      $.L_2__STRING.2, %esi                         #94.5
        lea       1024(%rsp), %rdi                              #94.5
..___tag_value_main.83:
#       strcmp(const char *, const char *)
        call      strcmp                                        #94.5
..___tag_value_main.84:
                                # LOE rbx r12 r13 r14 eax r15d
..B1.84:                        # Preds ..B1.54
                                # Execution count [1.35e+01]: Infreq
        testl     %eax, %eax                                    #94.5
        jne       ..B1.57       # Prob 78%                      #94.5
                                # LOE rbx r12 r13 r14 r15d
..B1.55:                        # Preds ..B1.84
                                # Execution count [2.96e+00]: Infreq
        movsd     2104(%rsp), %xmm0                             #94.5[spill]
        movsd     2096(%rsp), %xmm1                             #94.5[spill]
..___tag_value_main.86:
#       pow(double, double)
        call      pow                                           #94.5
..___tag_value_main.87:
                                # LOE rbx r12 r14 r15d xmm0
..B1.56:                        # Preds ..B1.55
                                # Execution count [2.96e+00]: Infreq
        mulsd     .L_2il0floatpacket.5(%rip), %xmm0             #94.5
        cvttsd2si %xmm0, %r13                                   #94.5
                                # LOE rbx r12 r13 r14 r15d
..B1.57:                        # Preds ..B1.65 ..B1.63 ..B1.56 ..B1.84
                                # Execution count [1.66e+01]: Infreq
        movslq    %r15d, %rcx                                   #94.5
        xorps     %xmm6, %xmm6                                  #94.5
        imulq     %r14, %rcx                                    #94.5
        cvtsi2sdq %rcx, %xmm6                                   #94.5
        movsd     .L_2il0floatpacket.16(%rip), %xmm5            #94.5
        xorps     %xmm8, %xmm8                                  #94.5
        movsd     2168(%rsp), %xmm1                             #94.5[spill]
        xorps     %xmm9, %xmm9                                  #94.5
        divsd     %xmm1, %xmm5                                  #94.5
        mulsd     .L_2il0floatpacket.10(%rip), %xmm6            #94.5
        movaps    %xmm1, %xmm3                                  #94.5
        cvtsi2sd  %r15d, %xmm8                                  #94.5
        cvtsi2sdq %r14, %xmm9                                   #94.5
        divsd     %xmm6, %xmm3                                  #94.5
        movsd     .L_2il0floatpacket.9(%rip), %xmm2             #94.5
        xorps     %xmm0, %xmm0                                  #94.5
        movsd     .L_2il0floatpacket.11(%rip), %xmm4            #94.5
        xorps     %xmm7, %xmm7                                  #94.5
        mulsd     %xmm5, %xmm2                                  #94.5
        movl      $.L_2__STRING.3, %edi                         #94.5
        cvtsi2sd  2120(%rsp), %xmm0                             #94.5[spill]
        cvtsi2sdq %r13, %xmm7                                   #94.5
        mulsd     %xmm5, %xmm4                                  #94.5
        mulsd     .L_2il0floatpacket.12(%rip), %xmm5            #94.5
        mulsd     %xmm8, %xmm2                                  #94.5
        mulsd     %xmm8, %xmm4                                  #94.5
        mulsd     %xmm8, %xmm5                                  #94.5
        mulsd     .L_2il0floatpacket.8(%rip), %xmm0             #94.5
        mulsd     %xmm9, %xmm2                                  #94.5
        mulsd     %xmm7, %xmm3                                  #94.5
        mulsd     %xmm9, %xmm4                                  #94.5
        mulsd     %xmm9, %xmm5                                  #94.5
        movl      %r15d, %esi                                   #94.5
        movq      %r14, %rdx                                    #94.5
        movl      $6, %eax                                      #94.5
..___tag_value_main.91:
#       printf(const char *__restrict__, ...)
        call      printf                                        #94.5
..___tag_value_main.92:
                                # LOE rbx r12
..B1.58:                        # Preds ..B1.57
                                # Execution count [1.66e+01]: Infreq
        movq      %r12, %rdi                                    #94.5
..___tag_value_main.93:
#       free(void *)
        call      free                                          #94.5
..___tag_value_main.94:
                                # LOE rbx
..B1.59:                        # Preds ..B1.58
                                # Execution count [1.66e+01]: Infreq
        movq      2200(%rsp), %rdi                              #94.5[spill]
..___tag_value_main.95:
#       free(void *)
        call      free                                          #94.5
..___tag_value_main.96:
                                # LOE rbx
..B1.60:                        # Preds ..B1.59
                                # Execution count [1.66e+01]: Infreq
        movb      2160(%rsp), %al                               #91.3[spill]
        addq      $-192, %rbx                                   #91.3
        incb      %al                                           #91.3
        addl      $-64, 2152(%rsp)                              #91.3[spill]
        addl      $-192, 2120(%rsp)                             #91.3[spill]
        addq      $-512, 2112(%rsp)                             #91.3[spill]
        addq      $-64, 2128(%rsp)                              #91.3[spill]
        incq      2144(%rsp)                                    #91.3[spill]
        movb      %al, 2160(%rsp)                               #91.3[spill]
        cmpb      $17, %al                                      #91.3
        jb        ..B1.11       # Prob 93%                      #91.3
                                # LOE rbx
..B1.61:                        # Preds ..B1.60
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
..B1.62:                        # Preds ..B1.83
                                # Execution count [1.48e+00]: Infreq
        movsd     2104(%rsp), %xmm0                             #94.5[spill]
        movsd     2096(%rsp), %xmm1                             #94.5[spill]
..___tag_value_main.123:
#       pow(double, double)
        call      pow                                           #94.5
..___tag_value_main.124:
                                # LOE rbx r12 r14 r15d xmm0
..B1.63:                        # Preds ..B1.62
                                # Execution count [1.48e+00]: Infreq
        mulsd     2080(%rsp), %xmm0                             #94.5[spill]
        cvttsd2si %xmm0, %r13                                   #94.5
        jmp       ..B1.57       # Prob 100%                     #94.5
                                # LOE rbx r12 r13 r14 r15d
..B1.64:                        # Preds ..B1.82
                                # Execution count [1.64e+00]: Infreq
        movsd     2104(%rsp), %xmm0                             #94.5[spill]
        movsd     2096(%rsp), %xmm1                             #94.5[spill]
..___tag_value_main.128:
#       pow(double, double)
        call      pow                                           #94.5
..___tag_value_main.129:
                                # LOE rbx r12 r14 r15d xmm0
..B1.65:                        # Preds ..B1.64
                                # Execution count [1.64e+00]: Infreq
        mulsd     2088(%rsp), %xmm0                             #94.5[spill]
        cvttsd2si %xmm0, %r13                                   #94.5
        jmp       ..B1.57       # Prob 100%                     #94.5
                                # LOE rbx r12 r13 r14 r15d
..B1.66:                        # Preds ..B1.16 ..B1.18 ..B1.20
                                # Execution count [7.45e+00]: Infreq
        xorl      %ecx, %ecx                                    #94.5
        jmp       ..B1.28       # Prob 100%                     #94.5
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
                                # LOE rdx rcx rbx r8 r9 r10 r12 esi r13d r11b xmm0
..B1.69:                        # Preds ..B1.77
                                # Execution count [8.91e-02]: Infreq
        movsd     .L_2il0floatpacket.0(%rip), %xmm0             #87.3
        movsd     .L_2il0floatpacket.1(%rip), %xmm1             #87.3
        movsd     %xmm0, 2104(%rsp)                             #87.3[spill]
        movsd     %xmm1, 2096(%rsp)                             #87.3[spill]
..___tag_value_main.137:
#       pow(double, double)
        call      pow                                           #87.3
..___tag_value_main.138:
                                # LOE r12 r13 r14 r15 xmm0
..B1.88:                        # Preds ..B1.69
                                # Execution count [8.91e-02]: Infreq
        movaps    %xmm0, %xmm1                                  #87.3
                                # LOE r12 r13 r14 r15 xmm1
..B1.70:                        # Preds ..B1.88
                                # Execution count [8.91e-02]: Infreq
        movsd     .L_2il0floatpacket.3(%rip), %xmm0             #87.3
        mulsd     %xmm0, %xmm1                                  #87.3
        cvttsd2si %xmm1, %rbx                                   #87.3
        movsd     .L_2il0floatpacket.2(%rip), %xmm1             #94.5
        movsd     %xmm0, 2080(%rsp)                             #87.3[spill]
        movsd     %xmm1, 2088(%rsp)                             #94.5[spill]
        jmp       ..B1.7        # Prob 100%                     #94.5
                                # LOE rbx r12 r13 r14 r15
..B1.71:                        # Preds ..B1.76
                                # Execution count [9.88e-02]: Infreq
        movsd     .L_2il0floatpacket.0(%rip), %xmm0             #87.3
        movsd     .L_2il0floatpacket.1(%rip), %xmm1             #87.3
        movsd     %xmm0, 2104(%rsp)                             #87.3[spill]
        movsd     %xmm1, 2096(%rsp)                             #87.3[spill]
..___tag_value_main.143:
#       pow(double, double)
        call      pow                                           #87.3
..___tag_value_main.144:
                                # LOE r12 r13 r14 r15 xmm0
..B1.89:                        # Preds ..B1.71
                                # Execution count [9.88e-02]: Infreq
        movaps    %xmm0, %xmm1                                  #87.3
                                # LOE r12 r13 r14 r15 xmm1
..B1.72:                        # Preds ..B1.89
                                # Execution count [9.88e-02]: Infreq
        movsd     .L_2il0floatpacket.2(%rip), %xmm0             #87.3
        mulsd     %xmm0, %xmm1                                  #87.3
        cvttsd2si %xmm1, %rbx                                   #87.3
        movsd     .L_2il0floatpacket.3(%rip), %xmm1             #94.5
        movsd     %xmm0, 2088(%rsp)                             #87.3[spill]
        movsd     %xmm1, 2080(%rsp)                             #94.5[spill]
        jmp       ..B1.7        # Prob 100%                     #94.5
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
..___tag_value_getFreq.149:
..L150:
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
..___tag_value_getFreq.156:
#       strcmp(const char *, const char *)
        call      strcmp                                        #12.7
..___tag_value_getFreq.157:
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
..___tag_value_getFreq.158:
#       strcmp(const char *, const char *)
        call      strcmp                                        #16.7
..___tag_value_getFreq.159:
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
..___tag_value_getFreq.160:
#       strcmp(const char *, const char *)
        call      strcmp                                        #20.7
..___tag_value_getFreq.161:
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
        movsd     .L_2il0floatpacket.0(%rip), %xmm0             #21.26
        movsd     .L_2il0floatpacket.1(%rip), %xmm1             #21.26
..___tag_value_getFreq.170:
#       pow(double, double)
        call      pow                                           #21.26
..___tag_value_getFreq.171:
                                # LOE rbp r12 r13 r14 r15 xmm0
..B2.6:                         # Preds ..B2.5
                                # Execution count [1.79e-01]
        movsd     .L_2il0floatpacket.5(%rip), %xmm1             #21.22
        mulsd     %xmm0, %xmm1                                  #21.26
        cvttsd2si %xmm1, %rax                                   #21.26
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
        movsd     .L_2il0floatpacket.0(%rip), %xmm0             #17.26
        movsd     .L_2il0floatpacket.1(%rip), %xmm1             #17.26
..___tag_value_getFreq.180:
#       pow(double, double)
        call      pow                                           #17.26
..___tag_value_getFreq.181:
                                # LOE rbp r12 r13 r14 r15 xmm0
..B2.8:                         # Preds ..B2.7
                                # Execution count [8.91e-02]: Infreq
        movsd     .L_2il0floatpacket.3(%rip), %xmm1             #17.22
        mulsd     %xmm0, %xmm1                                  #17.26
        cvttsd2si %xmm1, %rax                                   #17.26
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
        movsd     .L_2il0floatpacket.0(%rip), %xmm0             #13.26
        movsd     .L_2il0floatpacket.1(%rip), %xmm1             #13.26
..___tag_value_getFreq.190:
#       pow(double, double)
        call      pow                                           #13.26
..___tag_value_getFreq.191:
                                # LOE rbp r12 r13 r14 r15 xmm0
..B2.10:                        # Preds ..B2.9
                                # Execution count [9.88e-02]: Infreq
        movsd     .L_2il0floatpacket.2(%rip), %xmm1             #13.22
        mulsd     %xmm0, %xmm1                                  #13.26
        cvttsd2si %xmm1, %rax                                   #13.26
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
..___tag_value_stencil.198:
..L199:
                                                        #27.49
        pushq     %r12                                          #27.49
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #27.49
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #27.49
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %r15                                          #27.49
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        pushq     %rbx                                          #27.49
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
        pushq     %rbp                                          #27.49
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
        subq      $1080, %rsp                                   #27.49
	.cfi_def_cfa_offset 1136
        movl      %esi, %r12d                                   #27.49
        movslq    %r12d, %r15                                   #27.49
        movslq    %edi, %r13                                    #27.49
        movl      %edi, 1024(%rsp)                              #27.49[spill]
        movl      $64, %edi                                     #31.7
        movsd     %xmm0, 64(%rsp)                               #27.49[spill]
        lea       1(%r15), %rax                                 #29.29
        imulq     %r13, %rax                                    #30.24
        lea       1(,%rax,8), %rsi                              #31.7
        lea       (,%rax,8), %rbx                               #31.30
..___tag_value_stencil.215:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #31.7
..___tag_value_stencil.216:
                                # LOE rax rbx r13 r15 r12d
..B3.80:                        # Preds ..B3.1
                                # Execution count [1.00e+00]
        movq      %rax, %r14                                    #31.7
                                # LOE rbx r13 r14 r15 r12d
..B3.2:                         # Preds ..B3.80
                                # Execution count [1.00e+00]
        movl      $64, %edi                                     #32.7
        movq      %rbx, %rsi                                    #32.7
..___tag_value_stencil.217:
#       aligned_alloc(size_t, size_t)
        call      aligned_alloc                                 #32.7
..___tag_value_stencil.218:
                                # LOE rax r13 r14 r15 r12d
..B3.81:                        # Preds ..B3.2
                                # Execution count [1.00e+00]
        movq      %rax, %rbx                                    #32.7
                                # LOE rbx r13 r14 r15 r12d
..B3.3:                         # Preds ..B3.81
                                # Execution count [1.00e+00]
        xorl      %esi, %esi                                    #37.3
        testq     %r13, %r13                                    #37.18
        jle       ..B3.88       # Prob 9%                       #37.18
                                # LOE rbx rsi r13 r14 r15 r12d
..B3.4:                         # Preds ..B3.3
                                # Execution count [9.00e-01]
        movups    .L_2il0floatpacket.13(%rip), %xmm0            #39.29
        lea       8(,%r15,8), %rax                              #39.7
        movq      %rax, 88(%rsp)                                #39.7[spill]
        movq      $0x3e80867a71b56e7e, %rbp                     #39.29
        movq      %rax, %rcx                                    #37.3
        movq      %r14, %rdx                                    #37.3
                                # LOE rdx rcx rbx rbp rsi r13 r14 r15 r12d xmm0
..B3.5:                         # Preds ..B3.22 ..B3.4
                                # Execution count [5.00e+00]
        testq     %r15, %r15                                    #38.20
        jle       ..B3.22       # Prob 50%                      #38.20
                                # LOE rdx rcx rbx rbp rsi r13 r14 r15 r12d xmm0
..B3.6:                         # Preds ..B3.5
                                # Execution count [4.50e+00]
        cmpq      $8, %r15                                      #38.5
        jl        ..B3.75       # Prob 10%                      #38.5
                                # LOE rdx rcx rbx rbp rsi r13 r14 r15 r12d xmm0
..B3.7:                         # Preds ..B3.6
                                # Execution count [4.50e+00]
        lea       8(%rdx), %r8                                  #39.7
        andq      $15, %r8                                      #38.5
        testl     %r8d, %r8d                                    #38.5
        je        ..B3.10       # Prob 50%                      #38.5
                                # LOE rdx rcx rbx rbp rsi r13 r14 r15 r8d r12d xmm0
..B3.8:                         # Preds ..B3.7
                                # Execution count [4.50e+00]
        testl     $7, %r8d                                      #38.5
        jne       ..B3.75       # Prob 10%                      #38.5
                                # LOE rdx rcx rbx rbp rsi r13 r14 r15 r12d xmm0
..B3.9:                         # Preds ..B3.8
                                # Execution count [2.25e+00]
        movl      $1, %r8d                                      #38.5
                                # LOE rdx rcx rbx rbp rsi r13 r14 r15 r8d r12d xmm0
..B3.10:                        # Preds ..B3.9 ..B3.7
                                # Execution count [4.50e+00]
        movl      %r8d, %eax                                    #38.5
        lea       8(%rax), %r9                                  #38.5
        cmpq      %r9, %r15                                     #38.5
        jl        ..B3.75       # Prob 10%                      #38.5
                                # LOE rax rdx rcx rbx rbp rsi r13 r14 r15 r8d r12d xmm0
..B3.11:                        # Preds ..B3.10
                                # Execution count [5.00e+00]
        movl      %r12d, %r10d                                  #38.5
        xorl      %r9d, %r9d                                    #38.5
        subl      %r8d, %r10d                                   #38.5
        andl      $7, %r10d                                     #38.5
        negl      %r10d                                         #38.5
        addl      %r12d, %r10d                                  #38.5
        movslq    %r10d, %r10                                   #38.5
        testl     %r8d, %r8d                                    #38.5
        movq      %rdx, %r8                                     #38.5
        jbe       ..B3.15       # Prob 10%                      #38.5
                                # LOE rax rdx rcx rbx rbp rsi r8 r9 r10 r13 r14 r15 r12d xmm0
..B3.13:                        # Preds ..B3.11 ..B3.13
                                # Execution count [2.50e+01]
        incq      %r9                                           #38.5
        movq      %rbp, 8(%r8)                                  #39.7
        addq      $8, %r8                                       #38.5
        cmpq      %rax, %r9                                     #38.5
        jb        ..B3.13       # Prob 82%                      #38.5
                                # LOE rax rdx rcx rbx rbp rsi r8 r9 r10 r13 r14 r15 r12d xmm0
..B3.15:                        # Preds ..B3.13 ..B3.11
                                # Execution count [4.50e+00]
        lea       (%rdx,%rax,8), %r8                            #38.5
                                # LOE rax rdx rcx rbx rbp rsi r8 r10 r13 r14 r15 r12d xmm0
..B3.16:                        # Preds ..B3.16 ..B3.15
                                # Execution count [2.50e+01]
        addq      $8, %rax                                      #38.5
        movups    %xmm0, 8(%r8)                                 #39.7
        movups    %xmm0, 24(%r8)                                #39.7
        movups    %xmm0, 40(%r8)                                #39.7
        movups    %xmm0, 56(%r8)                                #39.7
        addq      $64, %r8                                      #38.5
        cmpq      %r10, %rax                                    #38.5
        jb        ..B3.16       # Prob 82%                      #38.5
                                # LOE rax rdx rcx rbx rbp rsi r8 r10 r13 r14 r15 r12d xmm0
..B3.18:                        # Preds ..B3.16 ..B3.75
                                # Execution count [5.00e+00]
        cmpq      %r15, %r10                                    #38.5
        jae       ..B3.22       # Prob 10%                      #38.5
                                # LOE rdx rcx rbx rbp rsi r10 r13 r14 r15 r12d xmm0
..B3.19:                        # Preds ..B3.18
                                # Execution count [4.50e+00]
        lea       (%rdx,%r10,8), %rax                           #39.7
                                # LOE rax rdx rcx rbx rbp rsi r10 r13 r14 r15 r12d xmm0
..B3.20:                        # Preds ..B3.20 ..B3.19
                                # Execution count [2.50e+01]
        incq      %r10                                          #38.5
        movq      %rbp, 8(%rax)                                 #39.7
        addq      $8, %rax                                      #38.5
        cmpq      %r15, %r10                                    #38.5
        jb        ..B3.20       # Prob 82%                      #38.5
                                # LOE rax rdx rcx rbx rbp rsi r10 r13 r14 r15 r12d xmm0
..B3.22:                        # Preds ..B3.20 ..B3.5 ..B3.18
                                # Execution count [5.00e+00]
        incq      %rsi                                          #37.3
        addq      %rcx, %rdx                                    #37.3
        cmpq      %r13, %rsi                                    #37.3
        jb        ..B3.5        # Prob 82%                      #37.3
                                # LOE rdx rcx rbx rbp rsi r13 r14 r15 r12d xmm0
..B3.24:                        # Preds ..B3.22 ..B3.88
                                # Execution count [1.00e+00]
        movl      $1, %ebp                                      #44.14
        lea       1048(%rsp), %rdi                              #46.5
        lea       1056(%rsp), %rsi                              #46.5
..___tag_value_stencil.220:
#       timing(double *, double *)
        call      timing                                        #46.5
..___tag_value_stencil.221:
                                # LOE rbx r13 r14 r15 ebp r12d
..B3.25:                        # Preds ..B3.24
                                # Execution count [9.00e-01]
        movddup   64(%rsp), %xmm0                               #27.6[spill]
        lea       -2(%r15), %r9                                 #54.19
        movq      %r9, %r8                                      #54.9
        addq      $-2, %r13                                     #50.32
        xorl      %eax, %eax                                    #47.5
        andq      $-8, %r8                                      #54.9
        lea       (%rbx,%r15,8), %rcx                           #56.13
        movups    %xmm0, (%rsp)                                 #58.19[spill]
        lea       (%r14,%r15,8), %rdx                           #58.41
        shlq      $4, %r15                                      #35.7
        xorps     %xmm2, %xmm2                                  #48.17
        movq      %rdx, 16(%rsp)                                #58.19[spill]
        addq      %r14, %r15                                    #58.19
        movq      %rcx, 24(%rsp)                                #58.19[spill]
        movq      %r8, 72(%rsp)                                 #58.19[spill]
        movq      %r9, 32(%rsp)                                 #58.19[spill]
        movl      %r12d, 1032(%rsp)                             #58.19[spill]
        movq      %r13, %r12                                    #58.19
        movl      %eax, %r13d                                   #58.19
                                # LOE rbx r12 r14 r15 ebp r13d
..B3.26:                        # Preds ..B3.57 ..B3.25 ..B3.52
                                # Execution count [2.78e+01]
        movsd     8(%r14), %xmm0                                #48.10
        xorps     %xmm1, %xmm1                                  #48.17
        comisd    %xmm1, %xmm0                                  #48.17
        jbe       ..B3.28       # Prob 78%                      #48.17
                                # LOE rbx r12 r14 r15 ebp r13d
..B3.27:                        # Preds ..B3.26
                                # Execution count [6.11e+00]
        movq      %rbx, %rdi                                    #48.20
..___tag_value_stencil.229:
#       dummy(double *)
        call      dummy                                         #48.20
..___tag_value_stencil.230:
                                # LOE rbx r12 r14 r15 ebp r13d
..B3.28:                        # Preds ..B3.27 ..B3.26
                                # Execution count [2.78e+01]
        xorl      %r8d, %r8d                                    #50.7
        xorl      %r9d, %r9d                                    #50.37
        testq     %r12, %r12                                    #50.32
        jle       ..B3.52       # Prob 10%                      #50.32
                                # LOE rbx r8 r9 r12 r14 r15 ebp r13d
..B3.29:                        # Preds ..B3.28
                                # Execution count [2.50e+01]
        movl      %ebp, 40(%rsp)                                #[spill]
        movq      %rbx, 56(%rsp)                                #[spill]
        movl      %r13d, 48(%rsp)                               #[spill]
        movq      %r12, 80(%rsp)                                #[spill]
        movups    (%rsp), %xmm0                                 #[spill]
        movsd     64(%rsp), %xmm1                               #[spill]
        movq      16(%rsp), %rbp                                #[spill]
        movq      24(%rsp), %rbx                                #[spill]
        movq      32(%rsp), %rcx                                #[spill]
                                # LOE rcx rbx rbp r8 r9 r14 r15 xmm0 xmm1
..B3.30:                        # Preds ..B3.50 ..B3.29
                                # Execution count [1.39e+02]
        testq     %rcx, %rcx                                    #54.41
        jle       ..B3.50       # Prob 50%                      #54.41
                                # LOE rcx rbx rbp r8 r9 r14 r15 xmm0 xmm1
..B3.31:                        # Preds ..B3.30
                                # Execution count [1.25e+02]
        cmpq      $8, %rcx                                      #54.9
        jl        ..B3.74       # Prob 10%                      #54.9
                                # LOE rcx rbx rbp r8 r9 r14 r15 xmm0 xmm1
..B3.32:                        # Preds ..B3.31
                                # Execution count [1.39e+02]
        movq      72(%rsp), %rdx                                #54.9[spill]
                                # LOE rdx rcx rbx rbp r8 r9 r14 r15 xmm0 xmm1
..B3.34:                        # Preds ..B3.32
                                # Execution count [1.25e+02]
        movq      %rdx, %r13                                    #58.19
        xorl      %r12d, %r12d                                  #54.9
        lea       (%rbx,%r9), %r11                              #56.13
        lea       (%r14,%r9), %r10                              #57.30
        lea       (%rbp,%r9), %rsi                              #57.17
        lea       (%r15,%r9), %rax                              #58.19
                                # LOE rax rdx rcx rbx rbp rsi r8 r9 r10 r11 r12 r13 r14 r15 xmm0 xmm1
..B3.35:                        # Preds ..B3.35 ..B3.34
                                # Execution count [6.94e+02]
        movups    16(%rsi,%r12,8), %xmm2                        #57.17
        addpd     16(%r10,%r12,8), %xmm2                        #57.30
        addpd     32(%rax,%r12,8), %xmm2                        #58.19
        movups    32(%rsi,%r12,8), %xmm4                        #58.41
        movups    32(%r10,%r12,8), %xmm3                        #57.30
        addpd     %xmm4, %xmm2                                  #58.41
        addpd     %xmm3, %xmm4                                  #57.30
        mulpd     %xmm0, %xmm2                                  #58.41
        addpd     48(%rax,%r12,8), %xmm4                        #58.19
        movups    48(%rsi,%r12,8), %xmm6                        #58.41
        movups    48(%r10,%r12,8), %xmm5                        #57.30
        addpd     %xmm6, %xmm4                                  #58.41
        addpd     %xmm5, %xmm6                                  #57.30
        mulpd     %xmm0, %xmm4                                  #58.41
        addpd     64(%rax,%r12,8), %xmm6                        #58.19
        movups    64(%rsi,%r12,8), %xmm8                        #58.41
        movups    64(%r10,%r12,8), %xmm7                        #57.30
        addpd     %xmm8, %xmm6                                  #58.41
        addpd     %xmm7, %xmm8                                  #57.30
        mulpd     %xmm0, %xmm6                                  #58.41
        addpd     80(%rax,%r12,8), %xmm8                        #58.19
        addpd     80(%rsi,%r12,8), %xmm8                        #58.41
        mulpd     %xmm0, %xmm8                                  #58.41
        movups    %xmm2, 16(%r11,%r12,8)                        #56.13
        movups    %xmm4, 32(%r11,%r12,8)                        #56.13
        movups    %xmm6, 48(%r11,%r12,8)                        #56.13
        movups    %xmm8, 64(%r11,%r12,8)                        #56.13
        addq      $8, %r12                                      #54.9
        cmpq      %r13, %r12                                    #54.9
        jb        ..B3.35       # Prob 82%                      #54.9
                                # LOE rax rdx rcx rbx rbp rsi r8 r9 r10 r11 r12 r13 r14 r15 xmm0 xmm1
..B3.37:                        # Preds ..B3.35 ..B3.74
                                # Execution count [1.39e+02]
        lea       1(%rdx), %rax                                 #54.9
        cmpq      %rcx, %rax                                    #54.9
        ja        ..B3.50       # Prob 50%                      #54.9
                                # LOE rdx rcx rbx rbp r8 r9 r14 r15 xmm0 xmm1
..B3.38:                        # Preds ..B3.37
                                # Execution count [1.25e+02]
        movq      %rcx, %rax                                    #54.9
        subq      %rdx, %rax                                    #54.9
        cmpq      $2, %rax                                      #54.9
        jl        ..B3.73       # Prob 10%                      #54.9
                                # LOE rax rdx rcx rbx rbp r8 r9 r14 r15 xmm0 xmm1
..B3.39:                        # Preds ..B3.38
                                # Execution count [1.39e+02]
        movq      %rax, %rsi                                    #54.9
        andq      $-2, %rsi                                     #54.9
                                # LOE rax rdx rcx rbx rbp rsi r8 r9 r14 r15 xmm0 xmm1
..B3.41:                        # Preds ..B3.39
                                # Execution count [1.25e+02]
        xorl      %r13d, %r13d                                  #54.9
        lea       (%rbx,%r9), %r12                              #56.13
        lea       (%r14,%r9), %r11                              #57.30
        lea       (%r15,%r9), %r10                              #58.19
        lea       (%rbp,%r9), %rdi                              #57.17
        lea       (%r12,%rdx,8), %r12                           #56.13
        lea       (%r11,%rdx,8), %r11                           #57.30
        lea       (%r10,%rdx,8), %r10                           #58.19
        lea       (%rdi,%rdx,8), %rdi                           #57.17
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 xmm0 xmm1
..B3.42:                        # Preds ..B3.42 ..B3.41
                                # Execution count [6.94e+02]
        movups    16(%rdi,%r13,8), %xmm2                        #57.17
        addpd     16(%r11,%r13,8), %xmm2                        #57.30
        addpd     32(%r10,%r13,8), %xmm2                        #58.19
        addpd     32(%rdi,%r13,8), %xmm2                        #58.41
        mulpd     %xmm0, %xmm2                                  #58.41
        movups    %xmm2, 16(%r12,%r13,8)                        #56.13
        addq      $2, %r13                                      #54.9
        cmpq      %rsi, %r13                                    #54.9
        jb        ..B3.42       # Prob 82%                      #54.9
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 xmm0 xmm1
..B3.46:                        # Preds ..B3.42 ..B3.73
                                # Execution count [6.94e+02]
        cmpq      %rax, %rsi                                    #54.9
        jae       ..B3.50       # Prob 10%                      #54.9
                                # LOE rax rdx rcx rbx rbp rsi r8 r9 r14 r15 xmm0 xmm1
..B3.47:                        # Preds ..B3.46
                                # Execution count [1.25e+02]
        lea       (%rbx,%r9), %r11                              #56.13
        lea       (%r14,%r9), %r10                              #57.30
        lea       (%r15,%r9), %r12                              #58.19
        lea       (%rbp,%r9), %r13                              #58.41
        lea       (%r11,%rdx,8), %r11                           #56.13
        lea       (%r10,%rdx,8), %r10                           #57.30
        lea       (%r12,%rdx,8), %r12                           #58.19
        lea       (%r13,%rdx,8), %rdx                           #58.41
                                # LOE rax rdx rcx rbx rbp rsi r8 r9 r10 r11 r12 r14 r15 xmm0 xmm1
..B3.48:                        # Preds ..B3.48 ..B3.47
                                # Execution count [6.94e+02]
        movsd     16(%rdx,%rsi,8), %xmm2                        #57.17
        addsd     16(%r10,%rsi,8), %xmm2                        #57.30
        addsd     32(%r12,%rsi,8), %xmm2                        #58.19
        addsd     32(%rdx,%rsi,8), %xmm2                        #58.41
        mulsd     %xmm1, %xmm2                                  #58.41
        movsd     %xmm2, 16(%r11,%rsi,8)                        #56.13
        incq      %rsi                                          #54.9
        cmpq      %rax, %rsi                                    #54.9
        jb        ..B3.48       # Prob 82%                      #54.9
                                # LOE rax rdx rcx rbx rbp rsi r8 r9 r10 r11 r12 r14 r15 xmm0 xmm1
..B3.50:                        # Preds ..B3.48 ..B3.46 ..B3.30 ..B3.37
                                # Execution count [1.39e+02]
        incq      %r8                                           #50.7
        addq      88(%rsp), %r9                                 #50.7[spill]
        cmpq      80(%rsp), %r8                                 #50.7[spill]
        jb        ..B3.30       # Prob 82%                      #50.7
                                # LOE rcx rbx rbp r8 r9 r14 r15 xmm0 xmm1
..B3.51:                        # Preds ..B3.50
                                # Execution count [2.50e+01]
        movl      40(%rsp), %ebp                                #[spill]
        movl      48(%rsp), %r13d                               #[spill]
        movq      80(%rsp), %r12                                #[spill]
        movq      56(%rsp), %rbx                                #[spill]
                                # LOE rbx r12 r14 r15 ebp r13d
..B3.52:                        # Preds ..B3.51 ..B3.28
                                # Execution count [2.78e+01]
        incl      %r13d                                         #47.5
        cmpl      %ebp, %r13d                                   #47.5
        jb        ..B3.26       # Prob 82%                      #47.5
                                # LOE rbx r12 r14 r15 ebp r13d
..B3.54:                        # Preds ..B3.52 ..B3.57
                                # Execution count [5.56e+00]: Infreq
        lea       1064(%rsp), %rdi                              #63.5
        lea       1056(%rsp), %rsi                              #63.5
..___tag_value_stencil.247:
#       timing(double *, double *)
        call      timing                                        #63.5
..___tag_value_stencil.248:
                                # LOE rbx r12 r14 r15 ebp
..B3.55:                        # Preds ..B3.54
                                # Execution count [5.56e+00]: Infreq
        movsd     1064(%rsp), %xmm1                             #64.15
        addl      %ebp, %ebp                                    #45.34
        movsd     .L_2il0floatpacket.7(%rip), %xmm0             #45.30
        subsd     1048(%rsp), %xmm1                             #64.19
        comisd    %xmm1, %xmm0                                  #45.30
        jbe       ..B3.59       # Prob 18%                      #45.30
                                # LOE rbx r12 r14 r15 ebp xmm1
..B3.56:                        # Preds ..B3.55
                                # Execution count [4.56e+00]: Infreq
        lea       1048(%rsp), %rdi                              #46.5
        lea       1056(%rsp), %rsi                              #46.5
..___tag_value_stencil.249:
#       timing(double *, double *)
        call      timing                                        #46.5
..___tag_value_stencil.250:
                                # LOE rbx r12 r14 r15 ebp
..B3.57:                        # Preds ..B3.56
                                # Execution count [4.56e+00]: Infreq
        xorl      %r13d, %r13d                                  #47.5
        testl     %ebp, %ebp                                    #47.20
        jle       ..B3.54       # Prob 10%                      #47.20
        jmp       ..B3.26       # Prob 100%                     #47.20
                                # LOE rbx r12 r14 r15 ebp r13d
..B3.59:                        # Preds ..B3.55
                                # Execution count [1.00e+00]: Infreq
        movl      %ebp, %eax                                    #66.3
        lea       (%rsp), %rdi                                  #68.3
        shrl      $31, %eax                                     #66.3
        movl      $1024, %esi                                   #68.3
        addl      %eax, %ebp                                    #66.3
        movsd     %xmm1, 1040(%rdi)                             #[spill]
        movl      1032(%rdi), %r12d                             #[spill]
        sarl      $1, %ebp                                      #66.3
..___tag_value_stencil.253:
#       gethostname(char *, size_t)
        call      gethostname                                   #68.3
..___tag_value_stencil.254:
                                # LOE rbx r14 ebp r12d
..B3.60:                        # Preds ..B3.59
                                # Execution count [1.00e+00]: Infreq
        movl      $.L_2__STRING.0, %esi                         #70.12
        lea       (%rsp), %rdi                                  #70.12
..___tag_value_stencil.255:
#       strcmp(const char *, const char *)
        call      strcmp                                        #70.12
..___tag_value_stencil.256:
                                # LOE rbx r13 r14 eax ebp r12d
..B3.82:                        # Preds ..B3.60
                                # Execution count [1.00e+00]: Infreq
        testl     %eax, %eax                                    #70.12
        je        ..B3.71       # Prob 9%                       #70.12
                                # LOE rbx r13 r14 ebp r12d
..B3.61:                        # Preds ..B3.82
                                # Execution count [9.01e-01]: Infreq
        movl      $.L_2__STRING.1, %esi                         #70.12
        lea       (%rsp), %rdi                                  #70.12
..___tag_value_stencil.257:
#       strcmp(const char *, const char *)
        call      strcmp                                        #70.12
..___tag_value_stencil.258:
                                # LOE rbx r13 r14 eax ebp r12d
..B3.83:                        # Preds ..B3.61
                                # Execution count [9.01e-01]: Infreq
        testl     %eax, %eax                                    #70.12
        je        ..B3.69       # Prob 9%                       #70.12
                                # LOE rbx r13 r14 ebp r12d
..B3.62:                        # Preds ..B3.83
                                # Execution count [8.12e-01]: Infreq
        movl      $.L_2__STRING.2, %esi                         #70.12
        lea       (%rsp), %rdi                                  #70.12
..___tag_value_stencil.259:
#       strcmp(const char *, const char *)
        call      strcmp                                        #70.12
..___tag_value_stencil.260:
                                # LOE rbx r13 r14 eax ebp r12d
..B3.84:                        # Preds ..B3.62
                                # Execution count [8.12e-01]: Infreq
        testl     %eax, %eax                                    #70.12
        jne       ..B3.65       # Prob 78%                      #70.12
                                # LOE rbx r13 r14 ebp r12d
..B3.63:                        # Preds ..B3.84
                                # Execution count [1.79e-01]: Infreq
        movsd     .L_2il0floatpacket.0(%rip), %xmm0             #70.12
        movsd     .L_2il0floatpacket.1(%rip), %xmm1             #70.12
..___tag_value_stencil.261:
#       pow(double, double)
        call      pow                                           #70.12
..___tag_value_stencil.262:
                                # LOE rbx r14 ebp r12d xmm0
..B3.64:                        # Preds ..B3.63
                                # Execution count [1.79e-01]: Infreq
        movsd     .L_2il0floatpacket.5(%rip), %xmm1             #70.12
        mulsd     %xmm0, %xmm1                                  #70.12
        cvttsd2si %xmm1, %r13                                   #70.12
                                # LOE rbx r13 r14 ebp r12d
..B3.65:                        # Preds ..B3.72 ..B3.70 ..B3.64 ..B3.84
                                # Execution count [1.00e+00]: Infreq
        movl      1024(%rsp), %r8d                              #72.18[spill]
        lea       -2(%r12), %ecx                                #72.31
        xorps     %xmm5, %xmm5                                  #73.3
        xorps     %xmm8, %xmm8                                  #73.149
        movsd     1040(%rsp), %xmm1                             #73.303[spill]
        xorps     %xmm9, %xmm9                                  #73.136
        movsd     .L_2il0floatpacket.16(%rip), %xmm7            #73.3
        lea       -2(%r8), %edx                                 #72.18
        imull     %ecx, %edx                                    #72.31
        movaps    %xmm1, %xmm3                                  #73.3
        imull     %r12d, %r8d                                   #73.3
        xorps     %xmm0, %xmm0                                  #73.3
        movsd     .L_2il0floatpacket.9(%rip), %xmm2             #73.3
        xorps     %xmm6, %xmm6                                  #73.3
        movsd     .L_2il0floatpacket.11(%rip), %xmm4            #73.3
        divsd     %xmm1, %xmm7                                  #73.303
        movslq    %edx, %rdx                                    #72.31
        addl      $-4, %r8d                                     #73.3
        movslq    %ebp, %r12                                    #73.3
        movl      $.L_2__STRING.3, %edi                         #73.3
        imulq     %rdx, %r12                                    #73.3
        cvtsi2sd  %ebp, %xmm8                                   #73.149
        cvtsi2sdq %r12, %xmm5                                   #73.3
        cvtsi2sdq %rdx, %xmm9                                   #73.136
        cvtsi2sd  %r8d, %xmm0                                   #73.3
        cvtsi2sdq %r13, %xmm6                                   #73.3
        mulsd     .L_2il0floatpacket.10(%rip), %xmm5            #73.3
        mulsd     %xmm7, %xmm2                                  #73.3
        mulsd     %xmm7, %xmm4                                  #73.3
        divsd     %xmm5, %xmm3                                  #73.3
        movsd     .L_2il0floatpacket.12(%rip), %xmm5            #73.3
        movl      %ebp, %esi                                    #73.3
        mulsd     %xmm7, %xmm5                                  #73.3
        movl      $6, %eax                                      #73.3
        mulsd     %xmm8, %xmm2                                  #73.3
        mulsd     %xmm8, %xmm4                                  #73.3
        mulsd     %xmm8, %xmm5                                  #73.3
        mulsd     .L_2il0floatpacket.8(%rip), %xmm0             #73.3
        mulsd     %xmm9, %xmm2                                  #73.3
        mulsd     %xmm6, %xmm3                                  #73.3
        mulsd     %xmm9, %xmm4                                  #73.3
        mulsd     %xmm9, %xmm5                                  #73.3
..___tag_value_stencil.265:
#       printf(const char *__restrict__, ...)
        call      printf                                        #73.3
..___tag_value_stencil.266:
                                # LOE rbx r14
..B3.66:                        # Preds ..B3.65
                                # Execution count [1.00e+00]: Infreq
        movq      %r14, %rdi                                    #78.3
..___tag_value_stencil.267:
#       free(void *)
        call      free                                          #78.3
..___tag_value_stencil.268:
                                # LOE rbx
..B3.67:                        # Preds ..B3.66
                                # Execution count [1.00e+00]: Infreq
        movq      %rbx, %rdi                                    #78.12
..___tag_value_stencil.269:
#       free(void *)
        call      free                                          #78.12
..___tag_value_stencil.270:
                                # LOE
..B3.68:                        # Preds ..B3.67
                                # Execution count [1.00e+00]: Infreq
        addq      $1080, %rsp                                   #79.1
	.cfi_def_cfa_offset 56
	.cfi_restore 6
        popq      %rbp                                          #79.1
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        popq      %rbx                                          #79.1
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #79.1
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #79.1
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #79.1
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #79.1
	.cfi_def_cfa_offset 8
        ret                                                     #79.1
	.cfi_def_cfa_offset 1136
	.cfi_offset 3, -48
	.cfi_offset 6, -56
	.cfi_offset 12, -16
	.cfi_offset 13, -24
	.cfi_offset 14, -32
	.cfi_offset 15, -40
                                # LOE
..B3.69:                        # Preds ..B3.83
                                # Execution count [8.91e-02]: Infreq
        movsd     .L_2il0floatpacket.0(%rip), %xmm0             #70.12
        movsd     .L_2il0floatpacket.1(%rip), %xmm1             #70.12
..___tag_value_stencil.291:
#       pow(double, double)
        call      pow                                           #70.12
..___tag_value_stencil.292:
                                # LOE rbx r14 ebp r12d xmm0
..B3.70:                        # Preds ..B3.69
                                # Execution count [8.91e-02]: Infreq
        movsd     .L_2il0floatpacket.3(%rip), %xmm1             #70.12
        mulsd     %xmm0, %xmm1                                  #70.12
        cvttsd2si %xmm1, %r13                                   #70.12
        jmp       ..B3.65       # Prob 100%                     #70.12
                                # LOE rbx r13 r14 ebp r12d
..B3.71:                        # Preds ..B3.82
                                # Execution count [9.88e-02]: Infreq
        movsd     .L_2il0floatpacket.0(%rip), %xmm0             #70.12
        movsd     .L_2il0floatpacket.1(%rip), %xmm1             #70.12
..___tag_value_stencil.293:
#       pow(double, double)
        call      pow                                           #70.12
..___tag_value_stencil.294:
                                # LOE rbx r14 ebp r12d xmm0
..B3.72:                        # Preds ..B3.71
                                # Execution count [9.88e-02]: Infreq
        movsd     .L_2il0floatpacket.2(%rip), %xmm1             #70.12
        mulsd     %xmm0, %xmm1                                  #70.12
        cvttsd2si %xmm1, %r13                                   #70.12
        jmp       ..B3.65       # Prob 100%                     #70.12
                                # LOE rbx r13 r14 ebp r12d
..B3.73:                        # Preds ..B3.38
                                # Execution count [1.25e+01]: Infreq
        xorl      %esi, %esi                                    #54.9
        jmp       ..B3.46       # Prob 100%                     #54.9
                                # LOE rax rdx rcx rbx rbp rsi r8 r9 r14 r15 xmm0 xmm1
..B3.74:                        # Preds ..B3.31
                                # Execution count [1.25e+01]: Infreq
        xorl      %edx, %edx                                    #54.9
        jmp       ..B3.37       # Prob 100%                     #54.9
                                # LOE rdx rcx rbx rbp r8 r9 r14 r15 xmm0 xmm1
..B3.75:                        # Preds ..B3.6 ..B3.8 ..B3.10
                                # Execution count [4.50e-01]: Infreq
        xorl      %r10d, %r10d                                  #38.5
        jmp       ..B3.18       # Prob 100%                     #38.5
                                # LOE rdx rcx rbx rbp rsi r10 r13 r14 r15 r12d xmm0
..B3.88:                        # Preds ..B3.3
                                # Execution count [1.00e-01]: Infreq
        lea       8(,%r15,8), %rax                              #39.7
        movq      %rax, 88(%rsp)                                #39.7[spill]
        jmp       ..B3.24       # Prob 100%                     #39.7
        .align    16,0x90
                                # LOE rbx r13 r14 r15 r12d
	.cfi_endproc
# mark_end;
	.type	stencil,@function
	.size	stencil,.-stencil
..LNstencil.2:
	.data
# -- End  stencil
	.section .rodata, "a"
	.align 16
	.align 16
.L_2il0floatpacket.13:
	.long	0x71b56e7e,0x3e80867a,0x71b56e7e,0x3e80867a
	.type	.L_2il0floatpacket.13,@object
	.size	.L_2il0floatpacket.13,16
	.align 16
.L_2il0floatpacket.15:
	.long	0x17c1bda5,0x3fb55326,0x17c1bda5,0x3fb55326
	.type	.L_2il0floatpacket.15,@object
	.size	.L_2il0floatpacket.15,16
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
