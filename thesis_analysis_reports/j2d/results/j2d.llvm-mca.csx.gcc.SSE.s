
[0] Code Region

Iterations:        100
Instructions:      3600
Total Cycles:      820
Total uOps:        4000

Dispatch Width:    6
uOps Per Cycle:    4.88
IPC:               4.39
Block RThroughput: 8.0


Instruction Info:
[1]: #uOps
[2]: Latency
[3]: RThroughput
[4]: MayLoad
[5]: MayStore
[6]: HasSideEffects (U)

[1]    [2]    [3]    [4]    [5]    [6]    Instructions:
 1      6     0.50    *                   movupd	16(%r8,%rax), %xmm11
 1      6     0.50    *                   movupd	16(%rdi,%rax), %xmm12
 1      6     0.50    *                   movupd	16(%rsi,%rax), %xmm13
 1      4     0.50                        addpd	%xmm11, %xmm15
 1      4     0.50                        addpd	%xmm13, %xmm12
 1      6     0.50    *                   movupd	32(%rdi,%rax), %xmm14
 1      6     0.50    *                   movupd	32(%rsi,%rax), %xmm0
 1      4     0.50                        addpd	%xmm15, %xmm12
 1      6     0.50    *                   movupd	32(%r8,%rax), %xmm15
 1      4     0.50                        addpd	%xmm0, %xmm14
 1      4     0.50                        addpd	%xmm15, %xmm11
 1      6     0.50    *                   movupd	48(%rdi,%rax), %xmm1
 1      6     0.50    *                   movupd	48(%rsi,%rax), %xmm7
 1      4     0.50                        addpd	%xmm11, %xmm14
 1      4     0.50                        addpd	%xmm7, %xmm1
 1      4     0.50                        mulpd	%xmm2, %xmm12
 1      4     0.50                        mulpd	%xmm2, %xmm14
 2      1     1.00           *            movups	%xmm12, 16(%rcx,%rax)
 2      1     1.00           *            movups	%xmm14, 32(%rcx,%rax)
 1      6     0.50    *                   movupd	48(%r8,%rax), %xmm14
 1      4     0.50                        addpd	%xmm14, %xmm15
 1      4     0.50                        addpd	%xmm15, %xmm1
 1      4     0.50                        mulpd	%xmm2, %xmm1
 2      1     1.00           *            movups	%xmm1, 48(%rcx,%rax)
 1      1     0.25                        addq	$64, %rax
 1      6     0.50    *                   movupd	(%r8,%rax), %xmm15
 1      6     0.50    *                   movupd	(%rdi,%rax), %xmm0
 1      6     0.50    *                   movupd	(%rsi,%rax), %xmm1
 1      4     0.50                        addpd	%xmm15, %xmm14
 1      4     0.50                        addpd	%xmm1, %xmm0
 1      1     0.50                        leaq	16(%rax), %r10
 1      4     0.50                        addpd	%xmm0, %xmm14
 1      4     0.50                        mulpd	%xmm2, %xmm14
 2      1     1.00           *            movups	%xmm14, (%rcx,%rax)
 1      1     0.25                        cmpq	%r10, %r14
 1      1     0.50                        jne	.L28


Resources:
[0]   - SKXDivider
[1]   - SKXFPDivider
[2]   - SKXPort0
[3]   - SKXPort1
[4]   - SKXPort2
[5]   - SKXPort3
[6]   - SKXPort4
[7]   - SKXPort5
[8]   - SKXPort6
[9]   - SKXPort7


Resource pressure per iteration:
[0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    
 -      -     8.00   8.01   6.04   6.05   4.00   1.99   2.00   3.91   

Resource pressure by instruction:
[0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    Instructions:
 -      -      -      -      -     1.00    -      -      -      -     movupd	16(%r8,%rax), %xmm11
 -      -      -      -     1.00    -      -      -      -      -     movupd	16(%rdi,%rax), %xmm12
 -      -      -      -      -     1.00    -      -      -      -     movupd	16(%rsi,%rax), %xmm13
 -      -     0.33   0.67    -      -      -      -      -      -     addpd	%xmm11, %xmm15
 -      -      -     1.00    -      -      -      -      -      -     addpd	%xmm13, %xmm12
 -      -      -      -     1.00    -      -      -      -      -     movupd	32(%rdi,%rax), %xmm14
 -      -      -      -      -     1.00    -      -      -      -     movupd	32(%rsi,%rax), %xmm0
 -      -     0.67   0.33    -      -      -      -      -      -     addpd	%xmm15, %xmm12
 -      -      -      -     1.00    -      -      -      -      -     movupd	32(%r8,%rax), %xmm15
 -      -     0.33   0.67    -      -      -      -      -      -     addpd	%xmm0, %xmm14
 -      -      -     1.00    -      -      -      -      -      -     addpd	%xmm15, %xmm11
 -      -      -      -      -     1.00    -      -      -      -     movupd	48(%rdi,%rax), %xmm1
 -      -      -      -     1.00    -      -      -      -      -     movupd	48(%rsi,%rax), %xmm7
 -      -     0.67   0.33    -      -      -      -      -      -     addpd	%xmm11, %xmm14
 -      -     0.34   0.66    -      -      -      -      -      -     addpd	%xmm7, %xmm1
 -      -     1.00    -      -      -      -      -      -      -     mulpd	%xmm2, %xmm12
 -      -     1.00    -      -      -      -      -      -      -     mulpd	%xmm2, %xmm14
 -      -      -      -     0.01   0.01   1.00    -      -     0.98   movups	%xmm12, 16(%rcx,%rax)
 -      -      -      -     0.01   0.01   1.00    -      -     0.98   movups	%xmm14, 32(%rcx,%rax)
 -      -      -      -      -     1.00    -      -      -      -     movupd	48(%r8,%rax), %xmm14
 -      -      -     1.00    -      -      -      -      -      -     addpd	%xmm14, %xmm15
 -      -     0.67   0.33    -      -      -      -      -      -     addpd	%xmm15, %xmm1
 -      -     1.00    -      -      -      -      -      -      -     mulpd	%xmm2, %xmm1
 -      -      -      -     0.01   0.01   1.00    -      -     0.98   movups	%xmm1, 48(%rcx,%rax)
 -      -      -      -      -      -      -     0.99   0.01    -     addq	$64, %rax
 -      -      -      -     1.00    -      -      -      -      -     movupd	(%r8,%rax), %xmm15
 -      -      -      -      -     1.00    -      -      -      -     movupd	(%rdi,%rax), %xmm0
 -      -      -      -     1.00    -      -      -      -      -     movupd	(%rsi,%rax), %xmm1
 -      -     0.33   0.67    -      -      -      -      -      -     addpd	%xmm15, %xmm14
 -      -      -     1.00    -      -      -      -      -      -     addpd	%xmm1, %xmm0
 -      -      -      -      -      -      -     1.00    -      -     leaq	16(%rax), %r10
 -      -     0.66   0.34    -      -      -      -      -      -     addpd	%xmm0, %xmm14
 -      -     0.99   0.01    -      -      -      -      -      -     mulpd	%xmm2, %xmm14
 -      -      -      -     0.01   0.02   1.00    -      -     0.97   movups	%xmm14, (%rcx,%rax)
 -      -     0.01    -      -      -      -      -     0.99    -     cmpq	%r10, %r14
 -      -      -      -      -      -      -      -     1.00    -     jne	.L28


Timeline view:
                    0123456789          0123456789          01
Index     0123456789          0123456789          0123456789  

[0,0]     DeeeeeeER .    .    .    .    .    .    .    .    ..   movupd	16(%r8,%rax), %xmm11
[0,1]     DeeeeeeER .    .    .    .    .    .    .    .    ..   movupd	16(%rdi,%rax), %xmm12
[0,2]     D=eeeeeeER.    .    .    .    .    .    .    .    ..   movupd	16(%rsi,%rax), %xmm13
[0,3]     D======eeeeER  .    .    .    .    .    .    .    ..   addpd	%xmm11, %xmm15
[0,4]     D=======eeeeER .    .    .    .    .    .    .    ..   addpd	%xmm13, %xmm12
[0,5]     D=eeeeeeE----R .    .    .    .    .    .    .    ..   movupd	32(%rdi,%rax), %xmm14
[0,6]     .D=eeeeeeE---R .    .    .    .    .    .    .    ..   movupd	32(%rsi,%rax), %xmm0
[0,7]     .D==========eeeeER  .    .    .    .    .    .    ..   addpd	%xmm15, %xmm12
[0,8]     .D=eeeeeeE-------R  .    .    .    .    .    .    ..   movupd	32(%r8,%rax), %xmm15
[0,9]     .D=======eeeeE---R  .    .    .    .    .    .    ..   addpd	%xmm0, %xmm14
[0,10]    .D=======eeeeE---R  .    .    .    .    .    .    ..   addpd	%xmm15, %xmm11
[0,11]    .D==eeeeeeE------R  .    .    .    .    .    .    ..   movupd	48(%rdi,%rax), %xmm1
[0,12]    . D=eeeeeeE------R  .    .    .    .    .    .    ..   movupd	48(%rsi,%rax), %xmm7
[0,13]    . D==========eeeeER .    .    .    .    .    .    ..   addpd	%xmm11, %xmm14
[0,14]    . D=======eeeeE---R .    .    .    .    .    .    ..   addpd	%xmm7, %xmm1
[0,15]    . D=============eeeeER   .    .    .    .    .    ..   mulpd	%xmm2, %xmm12
[0,16]    . D==============eeeeER  .    .    .    .    .    ..   mulpd	%xmm2, %xmm14
[0,17]    .  D================eER  .    .    .    .    .    ..   movups	%xmm12, 16(%rcx,%rax)
[0,18]    .  D=================eER .    .    .    .    .    ..   movups	%xmm14, 32(%rcx,%rax)
[0,19]    .  D=eeeeeeE-----------R .    .    .    .    .    ..   movupd	48(%r8,%rax), %xmm14
[0,20]    .  D=======eeeeE-------R .    .    .    .    .    ..   addpd	%xmm14, %xmm15
[0,21]    .   D==========eeeeE---R .    .    .    .    .    ..   addpd	%xmm15, %xmm1
[0,22]    .   D==============eeeeER.    .    .    .    .    ..   mulpd	%xmm2, %xmm1
[0,23]    .   D==================eER    .    .    .    .    ..   movups	%xmm1, 48(%rcx,%rax)
[0,24]    .   DeE------------------R    .    .    .    .    ..   addq	$64, %rax
[0,25]    .   D=eeeeeeE------------R    .    .    .    .    ..   movupd	(%r8,%rax), %xmm15
[0,26]    .    DeeeeeeE------------R    .    .    .    .    ..   movupd	(%rdi,%rax), %xmm0
[0,27]    .    D=eeeeeeE-----------R    .    .    .    .    ..   movupd	(%rsi,%rax), %xmm1
[0,28]    .    D======eeeeE--------R    .    .    .    .    ..   addpd	%xmm15, %xmm14
[0,29]    .    D=======eeeeE-------R    .    .    .    .    ..   addpd	%xmm1, %xmm0
[0,30]    .    DeE-----------------R    .    .    .    .    ..   leaq	16(%rax), %r10
[0,31]    .    D===========eeeeE---R    .    .    .    .    ..   addpd	%xmm0, %xmm14
[0,32]    .    .D==============eeeeER   .    .    .    .    ..   mulpd	%xmm2, %xmm14
[0,33]    .    .D==================eER  .    .    .    .    ..   movups	%xmm14, (%rcx,%rax)
[0,34]    .    .DeE------------------R  .    .    .    .    ..   cmpq	%r10, %r14
[0,35]    .    .D=eE-----------------R  .    .    .    .    ..   jne	.L28
[1,0]     .    .DeeeeeeE-------------R  .    .    .    .    ..   movupd	16(%r8,%rax), %xmm11
[1,1]     .    . DeeeeeeE------------R  .    .    .    .    ..   movupd	16(%rdi,%rax), %xmm12
[1,2]     .    . DeeeeeeE------------R  .    .    .    .    ..   movupd	16(%rsi,%rax), %xmm13
[1,3]     .    . D======eeeeE--------R  .    .    .    .    ..   addpd	%xmm11, %xmm15
[1,4]     .    . D======eeeeE--------R  .    .    .    .    ..   addpd	%xmm13, %xmm12
[1,5]     .    . D=eeeeeeE-----------R  .    .    .    .    ..   movupd	32(%rdi,%rax), %xmm14
[1,6]     .    . D=eeeeeeE-----------R  .    .    .    .    ..   movupd	32(%rsi,%rax), %xmm0
[1,7]     .    .  D=========eeeeE----R  .    .    .    .    ..   addpd	%xmm15, %xmm12
[1,8]     .    .  D=eeeeeeE----------R  .    .    .    .    ..   movupd	32(%r8,%rax), %xmm15
[1,9]     .    .  D======eeeeE-------R  .    .    .    .    ..   addpd	%xmm0, %xmm14
[1,10]    .    .  D=======eeeeE------R  .    .    .    .    ..   addpd	%xmm15, %xmm11
[1,11]    .    .  D=eeeeeeE----------R  .    .    .    .    ..   movupd	48(%rdi,%rax), %xmm1
[1,12]    .    .  D==eeeeeeE---------R  .    .    .    .    ..   movupd	48(%rsi,%rax), %xmm7
[1,13]    .    .   D==========eeeeE--R  .    .    .    .    ..   addpd	%xmm11, %xmm14
[1,14]    .    .   D========eeeeE----R  .    .    .    .    ..   addpd	%xmm7, %xmm1
[1,15]    .    .   D============eeeeER  .    .    .    .    ..   mulpd	%xmm2, %xmm12
[1,16]    .    .   D==============eeeeER.    .    .    .    ..   mulpd	%xmm2, %xmm14
[1,17]    .    .   D================eE-R.    .    .    .    ..   movups	%xmm12, 16(%rcx,%rax)
[1,18]    .    .    D=================eER    .    .    .    ..   movups	%xmm14, 32(%rcx,%rax)
[1,19]    .    .    DeeeeeeE------------R    .    .    .    ..   movupd	48(%r8,%rax), %xmm14
[1,20]    .    .    D========eeeeE------R    .    .    .    ..   addpd	%xmm14, %xmm15
[1,21]    .    .    D============eeeeE--R    .    .    .    ..   addpd	%xmm15, %xmm1
[1,22]    .    .    D================eeeeER  .    .    .    ..   mulpd	%xmm2, %xmm1
[1,23]    .    .    .D===================eER .    .    .    ..   movups	%xmm1, 48(%rcx,%rax)
[1,24]    .    .    .DeE-------------------R .    .    .    ..   addq	$64, %rax
[1,25]    .    .    .D=eeeeeeE-------------R .    .    .    ..   movupd	(%r8,%rax), %xmm15
[1,26]    .    .    .D=eeeeeeE-------------R .    .    .    ..   movupd	(%rdi,%rax), %xmm0
[1,27]    .    .    .D==eeeeeeE------------R .    .    .    ..   movupd	(%rsi,%rax), %xmm1
[1,28]    .    .    . D=======eeeeE--------R .    .    .    ..   addpd	%xmm15, %xmm14
[1,29]    .    .    . D========eeeeE-------R .    .    .    ..   addpd	%xmm1, %xmm0
[1,30]    .    .    . DeE------------------R .    .    .    ..   leaq	16(%rax), %r10
[1,31]    .    .    . D============eeeeE---R .    .    .    ..   addpd	%xmm0, %xmm14
[1,32]    .    .    . D================eeeeER.    .    .    ..   mulpd	%xmm2, %xmm14
[1,33]    .    .    .  D===================eER    .    .    ..   movups	%xmm14, (%rcx,%rax)
[1,34]    .    .    .  DeE-------------------R    .    .    ..   cmpq	%r10, %r14
[1,35]    .    .    .  D=eE------------------R    .    .    ..   jne	.L28
[2,0]     .    .    .  DeeeeeeE--------------R    .    .    ..   movupd	16(%r8,%rax), %xmm11
[2,1]     .    .    .  D=eeeeeeE-------------R    .    .    ..   movupd	16(%rdi,%rax), %xmm12
[2,2]     .    .    .   DeeeeeeE-------------R    .    .    ..   movupd	16(%rsi,%rax), %xmm13
[2,3]     .    .    .   D=======eeeeE--------R    .    .    ..   addpd	%xmm11, %xmm15
[2,4]     .    .    .   D========eeeeE-------R    .    .    ..   addpd	%xmm13, %xmm12
[2,5]     .    .    .   D=eeeeeeE------------R    .    .    ..   movupd	32(%rdi,%rax), %xmm14
[2,6]     .    .    .   D=eeeeeeE------------R    .    .    ..   movupd	32(%rsi,%rax), %xmm0
[2,7]     .    .    .   D============eeeeE---R    .    .    ..   addpd	%xmm15, %xmm12
[2,8]     .    .    .    D=eeeeeeE-----------R    .    .    ..   movupd	32(%r8,%rax), %xmm15
[2,9]     .    .    .    D========eeeeE------R    .    .    ..   addpd	%xmm0, %xmm14
[2,10]    .    .    .    D=========eeeeE-----R    .    .    ..   addpd	%xmm15, %xmm11
[2,11]    .    .    .    D=eeeeeeE-----------R    .    .    ..   movupd	48(%rdi,%rax), %xmm1
[2,12]    .    .    .    D==eeeeeeE----------R    .    .    ..   movupd	48(%rsi,%rax), %xmm7
[2,13]    .    .    .    D=============eeeeE-R    .    .    ..   addpd	%xmm11, %xmm14
[2,14]    .    .    .    .D=========eeeeE----R    .    .    ..   addpd	%xmm7, %xmm1
[2,15]    .    .    .    .D==============eeeeER   .    .    ..   mulpd	%xmm2, %xmm12
[2,16]    .    .    .    .D================eeeeER .    .    ..   mulpd	%xmm2, %xmm14
[2,17]    .    .    .    .D==================eE-R .    .    ..   movups	%xmm12, 16(%rcx,%rax)
[2,18]    .    .    .    . D===================eER.    .    ..   movups	%xmm14, 32(%rcx,%rax)
[2,19]    .    .    .    . DeeeeeeE--------------R.    .    ..   movupd	48(%r8,%rax), %xmm14
[2,20]    .    .    .    . D========eeeeE--------R.    .    ..   addpd	%xmm14, %xmm15
[2,21]    .    .    .    . D============eeeeE----R.    .    ..   addpd	%xmm15, %xmm1
[2,22]    .    .    .    . D================eeeeER.    .    ..   mulpd	%xmm2, %xmm1
[2,23]    .    .    .    .  D===================eER    .    ..   movups	%xmm1, 48(%rcx,%rax)
[2,24]    .    .    .    .  DeE-------------------R    .    ..   addq	$64, %rax
[2,25]    .    .    .    .  D=eeeeeeE-------------R    .    ..   movupd	(%r8,%rax), %xmm15
[2,26]    .    .    .    .  D=eeeeeeE-------------R    .    ..   movupd	(%rdi,%rax), %xmm0
[2,27]    .    .    .    .  D==eeeeeeE------------R    .    ..   movupd	(%rsi,%rax), %xmm1
[2,28]    .    .    .    .   D========eeeeE-------R    .    ..   addpd	%xmm15, %xmm14
[2,29]    .    .    .    .   D========eeeeE-------R    .    ..   addpd	%xmm1, %xmm0
[2,30]    .    .    .    .   DeE------------------R    .    ..   leaq	16(%rax), %r10
[2,31]    .    .    .    .   D============eeeeE---R    .    ..   addpd	%xmm0, %xmm14
[2,32]    .    .    .    .   D================eeeeER   .    ..   mulpd	%xmm2, %xmm14
[2,33]    .    .    .    .    D===================eER  .    ..   movups	%xmm14, (%rcx,%rax)
[2,34]    .    .    .    .    DeE-------------------R  .    ..   cmpq	%r10, %r14
[2,35]    .    .    .    .    D=eE------------------R  .    ..   jne	.L28
[3,0]     .    .    .    .    DeeeeeeE--------------R  .    ..   movupd	16(%r8,%rax), %xmm11
[3,1]     .    .    .    .    D=eeeeeeE-------------R  .    ..   movupd	16(%rdi,%rax), %xmm12
[3,2]     .    .    .    .    .DeeeeeeE-------------R  .    ..   movupd	16(%rsi,%rax), %xmm13
[3,3]     .    .    .    .    .D========eeeeE-------R  .    ..   addpd	%xmm11, %xmm15
[3,4]     .    .    .    .    .D=========eeeeE------R  .    ..   addpd	%xmm13, %xmm12
[3,5]     .    .    .    .    .D=eeeeeeE------------R  .    ..   movupd	32(%rdi,%rax), %xmm14
[3,6]     .    .    .    .    .D=eeeeeeE------------R  .    ..   movupd	32(%rsi,%rax), %xmm0
[3,7]     .    .    .    .    .D=============eeeeE--R  .    ..   addpd	%xmm15, %xmm12
[3,8]     .    .    .    .    . D=eeeeeeE-----------R  .    ..   movupd	32(%r8,%rax), %xmm15
[3,9]     .    .    .    .    . D=========eeeeE-----R  .    ..   addpd	%xmm0, %xmm14
[3,10]    .    .    .    .    . D==========eeeeE----R  .    ..   addpd	%xmm15, %xmm11
[3,11]    .    .    .    .    . D=eeeeeeE-----------R  .    ..   movupd	48(%rdi,%rax), %xmm1
[3,12]    .    .    .    .    . D==eeeeeeE----------R  .    ..   movupd	48(%rsi,%rax), %xmm7
[3,13]    .    .    .    .    . D==============eeeeER  .    ..   addpd	%xmm11, %xmm14
[3,14]    .    .    .    .    .  D==========eeeeE---R  .    ..   addpd	%xmm7, %xmm1
[3,15]    .    .    .    .    .  D===============eeeeER.    ..   mulpd	%xmm2, %xmm12
[3,16]    .    .    .    .    .  D=================eeeeER   ..   mulpd	%xmm2, %xmm14
[3,17]    .    .    .    .    .  D===================eE-R   ..   movups	%xmm12, 16(%rcx,%rax)
[3,18]    .    .    .    .    .   D====================eER  ..   movups	%xmm14, 32(%rcx,%rax)
[3,19]    .    .    .    .    .   DeeeeeeE---------------R  ..   movupd	48(%r8,%rax), %xmm14
[3,20]    .    .    .    .    .   D==========eeeeE-------R  ..   addpd	%xmm14, %xmm15
[3,21]    .    .    .    .    .   D==============eeeeE---R  ..   addpd	%xmm15, %xmm1
[3,22]    .    .    .    .    .   D==================eeeeER ..   mulpd	%xmm2, %xmm1
[3,23]    .    .    .    .    .    D=====================eER..   movups	%xmm1, 48(%rcx,%rax)
[3,24]    .    .    .    .    .    DeE---------------------R..   addq	$64, %rax
[3,25]    .    .    .    .    .    D=eeeeeeE---------------R..   movupd	(%r8,%rax), %xmm15
[3,26]    .    .    .    .    .    D=eeeeeeE---------------R..   movupd	(%rdi,%rax), %xmm0
[3,27]    .    .    .    .    .    D==eeeeeeE--------------R..   movupd	(%rsi,%rax), %xmm1
[3,28]    .    .    .    .    .    .D=========eeeeE--------R..   addpd	%xmm15, %xmm14
[3,29]    .    .    .    .    .    .D==========eeeeE-------R..   addpd	%xmm1, %xmm0
[3,30]    .    .    .    .    .    .DeE--------------------R..   leaq	16(%rax), %r10
[3,31]    .    .    .    .    .    .D==============eeeeE---R..   addpd	%xmm0, %xmm14
[3,32]    .    .    .    .    .    .D==================eeeeER.   mulpd	%xmm2, %xmm14
[3,33]    .    .    .    .    .    . D=====================eER   movups	%xmm14, (%rcx,%rax)
[3,34]    .    .    .    .    .    . DeE---------------------R   cmpq	%r10, %r14
[3,35]    .    .    .    .    .    . D=eE--------------------R   jne	.L28


Average Wait times (based on the timeline view):
[0]: Executions
[1]: Average time spent waiting in a scheduler's queue
[2]: Average time spent waiting in a scheduler's queue while ready
[3]: Average time elapsed from WB until retire stage

      [0]    [1]    [2]    [3]
0.     4     1.0    1.0    10.3      movupd	16(%r8,%rax), %xmm11
1.     4     1.5    1.5    9.5       movupd	16(%rdi,%rax), %xmm12
2.     4     1.3    1.3    9.5       movupd	16(%rsi,%rax), %xmm13
3.     4     7.8    1.5    5.8       addpd	%xmm11, %xmm15
4.     4     8.5    1.3    5.3       addpd	%xmm13, %xmm12
5.     4     2.0    2.0    9.8       movupd	32(%rdi,%rax), %xmm14
6.     4     2.0    2.0    9.5       movupd	32(%rsi,%rax), %xmm0
7.     4     12.0   0.0    2.3       addpd	%xmm15, %xmm12
8.     4     2.0    2.0    9.8       movupd	32(%r8,%rax), %xmm15
9.     4     8.5    1.3    5.3       addpd	%xmm0, %xmm14
10.    4     9.3    1.3    4.5       addpd	%xmm15, %xmm11
11.    4     2.3    2.3    9.5       movupd	48(%rdi,%rax), %xmm1
12.    4     2.8    2.8    8.8       movupd	48(%rsi,%rax), %xmm7
13.    4     12.8   0.0    0.8       addpd	%xmm11, %xmm14
14.    4     9.5    1.5    3.5       addpd	%xmm7, %xmm1
15.    4     14.5   0.0    0.0       mulpd	%xmm2, %xmm12
16.    4     16.3   0.0    0.0       mulpd	%xmm2, %xmm14
17.    4     18.3   0.0    0.8       movups	%xmm12, 16(%rcx,%rax)
18.    4     19.3   0.0    0.0       movups	%xmm14, 32(%rcx,%rax)
19.    4     1.3    1.3    13.0      movupd	48(%r8,%rax), %xmm14
20.    4     9.3    2.0    7.0       addpd	%xmm14, %xmm15
21.    4     13.0   0.0    3.0       addpd	%xmm15, %xmm1
22.    4     17.0   0.0    0.0       mulpd	%xmm2, %xmm1
23.    4     20.3   0.0    0.0       movups	%xmm1, 48(%rcx,%rax)
24.    4     1.0    1.0    19.3      addq	$64, %rax
25.    4     2.0    0.0    13.3      movupd	(%r8,%rax), %xmm15
26.    4     1.8    0.0    13.3      movupd	(%rdi,%rax), %xmm0
27.    4     2.8    1.0    12.3      movupd	(%rsi,%rax), %xmm1
28.    4     8.5    1.5    7.8       addpd	%xmm15, %xmm14
29.    4     9.3    1.3    7.0       addpd	%xmm1, %xmm0
30.    4     1.0    0.0    18.3      leaq	16(%rax), %r10
31.    4     13.3   0.0    3.0       addpd	%xmm0, %xmm14
32.    4     17.0   0.0    0.0       mulpd	%xmm2, %xmm14
33.    4     20.3   0.0    0.0       movups	%xmm14, (%rcx,%rax)
34.    4     1.0    0.0    19.3      cmpq	%r10, %r14
35.    4     2.0    0.0    18.3      jne	.L28
