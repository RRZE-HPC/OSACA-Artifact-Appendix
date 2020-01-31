
[0] Code Region

Iterations:        100
Instructions:      3100
Total Cycles:      826
Total uOps:        4300

Dispatch Width:    6
uOps Per Cycle:    5.21
IPC:               3.75
Block RThroughput: 8.0


Instruction Info:
[1]: #uOps
[2]: Latency
[3]: RThroughput
[4]: MayLoad
[5]: MayStore
[6]: HasSideEffects (U)

[1]    [2]    [3]    [4]    [5]    [6]    Instructions:
 1      7     0.50    *                   vmovupd	(%r8,%rax), %ymm11
 1      7     0.50    *                   vmovupd	(%rsi,%rax), %ymm13
 2      11    0.50    *                   vaddpd	(%r9,%rax), %ymm11, %ymm12
 2      11    0.50    *                   vaddpd	(%rdi,%rax), %ymm13, %ymm14
 1      7     0.50    *                   vmovupd	32(%r8,%rax), %ymm1
 1      7     0.50    *                   vmovupd	32(%rsi,%rax), %ymm2
 1      4     0.50                        vaddpd	%ymm14, %ymm12, %ymm15
 2      11    0.50    *                   vaddpd	32(%r9,%rax), %ymm1, %ymm5
 2      11    0.50    *                   vaddpd	32(%rdi,%rax), %ymm2, %ymm7
 1      4     0.50                        vmulpd	%ymm8, %ymm15, %ymm0
 1      7     0.50    *                   vmovupd	64(%r8,%rax), %ymm10
 1      4     0.50                        vaddpd	%ymm7, %ymm5, %ymm6
 1      7     0.50    *                   vmovupd	64(%rsi,%rax), %ymm12
 1      7     0.50    *                   vmovupd	96(%rsi,%rax), %ymm5
 2      1     1.00           *            vmovupd	%ymm0, (%rdx,%rax)
 1      7     0.50    *                   vmovupd	96(%r8,%rax), %ymm0
 2      11    0.50    *                   vaddpd	64(%r9,%rax), %ymm10, %ymm11
 2      11    0.50    *                   vaddpd	64(%rdi,%rax), %ymm12, %ymm13
 2      11    0.50    *                   vaddpd	96(%r9,%rax), %ymm0, %ymm1
 2      11    0.50    *                   vaddpd	96(%rdi,%rax), %ymm5, %ymm2
 1      4     0.50                        vaddpd	%ymm13, %ymm11, %ymm14
 1      4     0.50                        vmulpd	%ymm8, %ymm6, %ymm9
 1      4     0.50                        vaddpd	%ymm2, %ymm1, %ymm7
 1      4     0.50                        vmulpd	%ymm8, %ymm14, %ymm15
 1      4     0.50                        vmulpd	%ymm8, %ymm7, %ymm6
 2      1     1.00           *            vmovupd	%ymm9, 32(%rdx,%rax)
 2      1     1.00           *            vmovupd	%ymm15, 64(%rdx,%rax)
 2      1     1.00           *            vmovupd	%ymm6, 96(%rdx,%rax)
 1      1     0.25                        subq	$-128, %rax
 1      1     0.25                        cmpq	%rax, %r15
 1      1     0.50                        jne	.L21


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
 -      -     8.00   8.00   8.03   8.03   4.00   1.49   1.51   3.94   

Resource pressure by instruction:
[0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    Instructions:
 -      -      -      -     0.23   0.77    -      -      -      -     vmovupd	(%r8,%rax), %ymm11
 -      -      -      -     0.92   0.08    -      -      -      -     vmovupd	(%rsi,%rax), %ymm13
 -      -     0.24   0.76   0.09   0.91    -      -      -      -     vaddpd	(%r9,%rax), %ymm11, %ymm12
 -      -     0.93   0.07   0.74   0.26    -      -      -      -     vaddpd	(%rdi,%rax), %ymm13, %ymm14
 -      -      -      -     0.23   0.77    -      -      -      -     vmovupd	32(%r8,%rax), %ymm1
 -      -      -      -     0.91   0.09    -      -      -      -     vmovupd	32(%rsi,%rax), %ymm2
 -      -     0.85   0.15    -      -      -      -      -      -     vaddpd	%ymm14, %ymm12, %ymm15
 -      -     0.21   0.79   0.09   0.91    -      -      -      -     vaddpd	32(%r9,%rax), %ymm1, %ymm5
 -      -     0.92   0.08   0.77   0.23    -      -      -      -     vaddpd	32(%rdi,%rax), %ymm2, %ymm7
 -      -     0.02   0.98    -      -      -      -      -      -     vmulpd	%ymm8, %ymm15, %ymm0
 -      -      -      -     0.26   0.74    -      -      -      -     vmovupd	64(%r8,%rax), %ymm10
 -      -     0.85   0.15    -      -      -      -      -      -     vaddpd	%ymm7, %ymm5, %ymm6
 -      -      -      -     0.91   0.09    -      -      -      -     vmovupd	64(%rsi,%rax), %ymm12
 -      -      -      -     0.23   0.77    -      -      -      -     vmovupd	96(%rsi,%rax), %ymm5
 -      -      -      -     0.01   0.01   1.00    -      -     0.98   vmovupd	%ymm0, (%rdx,%rax)
 -      -      -      -     0.93   0.07    -      -      -      -     vmovupd	96(%r8,%rax), %ymm0
 -      -     0.21   0.79   0.07   0.93    -      -      -      -     vaddpd	64(%r9,%rax), %ymm10, %ymm11
 -      -     0.93   0.07   0.78   0.22    -      -      -      -     vaddpd	64(%rdi,%rax), %ymm12, %ymm13
 -      -     0.23   0.77   0.08   0.92    -      -      -      -     vaddpd	96(%r9,%rax), %ymm0, %ymm1
 -      -     0.90   0.10   0.76   0.24    -      -      -      -     vaddpd	96(%rdi,%rax), %ymm5, %ymm2
 -      -     0.76   0.24    -      -      -      -      -      -     vaddpd	%ymm13, %ymm11, %ymm14
 -      -     0.10   0.90    -      -      -      -      -      -     vmulpd	%ymm8, %ymm6, %ymm9
 -      -     0.75   0.25    -      -      -      -      -      -     vaddpd	%ymm2, %ymm1, %ymm7
 -      -     0.08   0.92    -      -      -      -      -      -     vmulpd	%ymm8, %ymm14, %ymm15
 -      -     0.02   0.98    -      -      -      -      -      -     vmulpd	%ymm8, %ymm7, %ymm6
 -      -      -      -     0.01    -     1.00    -      -     0.99   vmovupd	%ymm9, 32(%rdx,%rax)
 -      -      -      -      -     0.01   1.00    -      -     0.99   vmovupd	%ymm15, 64(%rdx,%rax)
 -      -      -      -     0.01   0.01   1.00    -      -     0.98   vmovupd	%ymm6, 96(%rdx,%rax)
 -      -      -      -      -      -      -     0.99   0.01    -     subq	$-128, %rax
 -      -      -      -      -      -      -     0.50   0.50    -     cmpq	%rax, %r15
 -      -      -      -      -      -      -      -     1.00    -     jne	.L21


Timeline view:
                    0123456789          0123456789          012345
Index     0123456789          0123456789          0123456789      

[0,0]     DeeeeeeeER.    .    .    .    .    .    .    .    .    .   vmovupd	(%r8,%rax), %ymm11
[0,1]     DeeeeeeeER.    .    .    .    .    .    .    .    .    .   vmovupd	(%rsi,%rax), %ymm13
[0,2]     D=eeeeeeeeeeeER.    .    .    .    .    .    .    .    .   vaddpd	(%r9,%rax), %ymm11, %ymm12
[0,3]     D=eeeeeeeeeeeER.    .    .    .    .    .    .    .    .   vaddpd	(%rdi,%rax), %ymm13, %ymm14
[0,4]     .D=eeeeeeeE---R.    .    .    .    .    .    .    .    .   vmovupd	32(%r8,%rax), %ymm1
[0,5]     .D=eeeeeeeE---R.    .    .    .    .    .    .    .    .   vmovupd	32(%rsi,%rax), %ymm2
[0,6]     .D===========eeeeER .    .    .    .    .    .    .    .   vaddpd	%ymm14, %ymm12, %ymm15
[0,7]     .D==eeeeeeeeeeeE--R .    .    .    .    .    .    .    .   vaddpd	32(%r9,%rax), %ymm1, %ymm5
[0,8]     . D=eeeeeeeeeeeE--R .    .    .    .    .    .    .    .   vaddpd	32(%rdi,%rax), %ymm2, %ymm7
[0,9]     . D==============eeeeER  .    .    .    .    .    .    .   vmulpd	%ymm8, %ymm15, %ymm0
[0,10]    . D==eeeeeeeE---------R  .    .    .    .    .    .    .   vmovupd	64(%r8,%rax), %ymm10
[0,11]    . D============eeeeE--R  .    .    .    .    .    .    .   vaddpd	%ymm7, %ymm5, %ymm6
[0,12]    . D==eeeeeeeE---------R  .    .    .    .    .    .    .   vmovupd	64(%rsi,%rax), %ymm12
[0,13]    .  D==eeeeeeeE--------R  .    .    .    .    .    .    .   vmovupd	96(%rsi,%rax), %ymm5
[0,14]    .  D=================eER .    .    .    .    .    .    .   vmovupd	%ymm0, (%rdx,%rax)
[0,15]    .  D==eeeeeeeE---------R .    .    .    .    .    .    .   vmovupd	96(%r8,%rax), %ymm0
[0,16]    .  D===eeeeeeeeeeeE----R .    .    .    .    .    .    .   vaddpd	64(%r9,%rax), %ymm10, %ymm11
[0,17]    .   D==eeeeeeeeeeeE----R .    .    .    .    .    .    .   vaddpd	64(%rdi,%rax), %ymm12, %ymm13
[0,18]    .   D===eeeeeeeeeeeE---R .    .    .    .    .    .    .   vaddpd	96(%r9,%rax), %ymm0, %ymm1
[0,19]    .   D===eeeeeeeeeeeE---R .    .    .    .    .    .    .   vaddpd	96(%rdi,%rax), %ymm5, %ymm2
[0,20]    .    D============eeeeER .    .    .    .    .    .    .   vaddpd	%ymm13, %ymm11, %ymm14
[0,21]    .    D=============eeeeER.    .    .    .    .    .    .   vmulpd	%ymm8, %ymm6, %ymm9
[0,22]    .    D=============eeeeER.    .    .    .    .    .    .   vaddpd	%ymm2, %ymm1, %ymm7
[0,23]    .    D================eeeeER  .    .    .    .    .    .   vmulpd	%ymm8, %ymm14, %ymm15
[0,24]    .    D=================eeeeER .    .    .    .    .    .   vmulpd	%ymm8, %ymm7, %ymm6
[0,25]    .    .D================eE---R .    .    .    .    .    .   vmovupd	%ymm9, 32(%rdx,%rax)
[0,26]    .    .D===================eER .    .    .    .    .    .   vmovupd	%ymm15, 64(%rdx,%rax)
[0,27]    .    .D====================eER.    .    .    .    .    .   vmovupd	%ymm6, 96(%rdx,%rax)
[0,28]    .    . DeE-------------------R.    .    .    .    .    .   subq	$-128, %rax
[0,29]    .    . D=eE------------------R.    .    .    .    .    .   cmpq	%rax, %r15
[0,30]    .    . D==eE-----------------R.    .    .    .    .    .   jne	.L21
[1,0]     .    . D=eeeeeeeE------------R.    .    .    .    .    .   vmovupd	(%r8,%rax), %ymm11
[1,1]     .    . D=eeeeeeeE------------R.    .    .    .    .    .   vmovupd	(%rsi,%rax), %ymm13
[1,2]     .    .  D=eeeeeeeeeeeE-------R.    .    .    .    .    .   vaddpd	(%r9,%rax), %ymm11, %ymm12
[1,3]     .    .  D=eeeeeeeeeeeE-------R.    .    .    .    .    .   vaddpd	(%rdi,%rax), %ymm13, %ymm14
[1,4]     .    .  D==eeeeeeeE----------R.    .    .    .    .    .   vmovupd	32(%r8,%rax), %ymm1
[1,5]     .    .  D==eeeeeeeE----------R.    .    .    .    .    .   vmovupd	32(%rsi,%rax), %ymm2
[1,6]     .    .   D===========eeeeE---R.    .    .    .    .    .   vaddpd	%ymm14, %ymm12, %ymm15
[1,7]     .    .   D==eeeeeeeeeeeE-----R.    .    .    .    .    .   vaddpd	32(%r9,%rax), %ymm1, %ymm5
[1,8]     .    .   D==eeeeeeeeeeeE-----R.    .    .    .    .    .   vaddpd	32(%rdi,%rax), %ymm2, %ymm7
[1,9]     .    .   D===============eeeeER    .    .    .    .    .   vmulpd	%ymm8, %ymm15, %ymm0
[1,10]    .    .    D==eeeeeeeE---------R    .    .    .    .    .   vmovupd	64(%r8,%rax), %ymm10
[1,11]    .    .    D============eeeeE--R    .    .    .    .    .   vaddpd	%ymm7, %ymm5, %ymm6
[1,12]    .    .    D==eeeeeeeE---------R    .    .    .    .    .   vmovupd	64(%rsi,%rax), %ymm12
[1,13]    .    .    D===eeeeeeeE--------R    .    .    .    .    .   vmovupd	96(%rsi,%rax), %ymm5
[1,14]    .    .    D==================eER   .    .    .    .    .   vmovupd	%ymm0, (%rdx,%rax)
[1,15]    .    .    .D==eeeeeeeE---------R   .    .    .    .    .   vmovupd	96(%r8,%rax), %ymm0
[1,16]    .    .    .D===eeeeeeeeeeeE----R   .    .    .    .    .   vaddpd	64(%r9,%rax), %ymm10, %ymm11
[1,17]    .    .    .D====eeeeeeeeeeeE---R   .    .    .    .    .   vaddpd	64(%rdi,%rax), %ymm12, %ymm13
[1,18]    .    .    . D===eeeeeeeeeeeE---R   .    .    .    .    .   vaddpd	96(%r9,%rax), %ymm0, %ymm1
[1,19]    .    .    . D====eeeeeeeeeeeE--R   .    .    .    .    .   vaddpd	96(%rdi,%rax), %ymm5, %ymm2
[1,20]    .    .    . D==============eeeeER  .    .    .    .    .   vaddpd	%ymm13, %ymm11, %ymm14
[1,21]    .    .    . D==============eeeeER  .    .    .    .    .   vmulpd	%ymm8, %ymm6, %ymm9
[1,22]    .    .    .  D==============eeeeER .    .    .    .    .   vaddpd	%ymm2, %ymm1, %ymm7
[1,23]    .    .    .  D=================eeeeER   .    .    .    .   vmulpd	%ymm8, %ymm14, %ymm15
[1,24]    .    .    .  D==================eeeeER  .    .    .    .   vmulpd	%ymm8, %ymm7, %ymm6
[1,25]    .    .    .  D=================eE----R  .    .    .    .   vmovupd	%ymm9, 32(%rdx,%rax)
[1,26]    .    .    .   D====================eER  .    .    .    .   vmovupd	%ymm15, 64(%rdx,%rax)
[1,27]    .    .    .   D=====================eER .    .    .    .   vmovupd	%ymm6, 96(%rdx,%rax)
[1,28]    .    .    .   DeE---------------------R .    .    .    .   subq	$-128, %rax
[1,29]    .    .    .   D=eE--------------------R .    .    .    .   cmpq	%rax, %r15
[1,30]    .    .    .    D=eE-------------------R .    .    .    .   jne	.L21
[2,0]     .    .    .    D=eeeeeeeE-------------R .    .    .    .   vmovupd	(%r8,%rax), %ymm11
[2,1]     .    .    .    D==eeeeeeeE------------R .    .    .    .   vmovupd	(%rsi,%rax), %ymm13
[2,2]     .    .    .    D==eeeeeeeeeeeE--------R .    .    .    .   vaddpd	(%r9,%rax), %ymm11, %ymm12
[2,3]     .    .    .    .D===eeeeeeeeeeeE------R .    .    .    .   vaddpd	(%rdi,%rax), %ymm13, %ymm14
[2,4]     .    .    .    .D==eeeeeeeE-----------R .    .    .    .   vmovupd	32(%r8,%rax), %ymm1
[2,5]     .    .    .    .D==eeeeeeeE-----------R .    .    .    .   vmovupd	32(%rsi,%rax), %ymm2
[2,6]     .    .    .    .D==============eeeeE--R .    .    .    .   vaddpd	%ymm14, %ymm12, %ymm15
[2,7]     .    .    .    . D==eeeeeeeeeeeE------R .    .    .    .   vaddpd	32(%r9,%rax), %ymm1, %ymm5
[2,8]     .    .    .    . D===eeeeeeeeeeeE-----R .    .    .    .   vaddpd	32(%rdi,%rax), %ymm2, %ymm7
[2,9]     .    .    .    . D=================eeeeER    .    .    .   vmulpd	%ymm8, %ymm15, %ymm0
[2,10]    .    .    .    . D===eeeeeeeE-----------R    .    .    .   vmovupd	64(%r8,%rax), %ymm10
[2,11]    .    .    .    .  D=============eeeeE---R    .    .    .   vaddpd	%ymm7, %ymm5, %ymm6
[2,12]    .    .    .    .  D===eeeeeeeE----------R    .    .    .   vmovupd	64(%rsi,%rax), %ymm12
[2,13]    .    .    .    .  D===eeeeeeeE----------R    .    .    .   vmovupd	96(%rsi,%rax), %ymm5
[2,14]    .    .    .    .  D====================eER   .    .    .   vmovupd	%ymm0, (%rdx,%rax)
[2,15]    .    .    .    .  D====eeeeeeeE----------R   .    .    .   vmovupd	96(%r8,%rax), %ymm0
[2,16]    .    .    .    .   D====eeeeeeeeeeeE-----R   .    .    .   vaddpd	64(%r9,%rax), %ymm10, %ymm11
[2,17]    .    .    .    .   D====eeeeeeeeeeeE-----R   .    .    .   vaddpd	64(%rdi,%rax), %ymm12, %ymm13
[2,18]    .    .    .    .   D=====eeeeeeeeeeeE----R   .    .    .   vaddpd	96(%r9,%rax), %ymm0, %ymm1
[2,19]    .    .    .    .    D=====eeeeeeeeeeeE---R   .    .    .   vaddpd	96(%rdi,%rax), %ymm5, %ymm2
[2,20]    .    .    .    .    D==============eeeeE-R   .    .    .   vaddpd	%ymm13, %ymm11, %ymm14
[2,21]    .    .    .    .    D===============eeeeER   .    .    .   vmulpd	%ymm8, %ymm6, %ymm9
[2,22]    .    .    .    .    D================eeeeER  .    .    .   vaddpd	%ymm2, %ymm1, %ymm7
[2,23]    .    .    .    .    D==================eeeeER.    .    .   vmulpd	%ymm8, %ymm14, %ymm15
[2,24]    .    .    .    .    .D===================eeeeER   .    .   vmulpd	%ymm8, %ymm7, %ymm6
[2,25]    .    .    .    .    .D==================eE----R   .    .   vmovupd	%ymm9, 32(%rdx,%rax)
[2,26]    .    .    .    .    .D=====================eE-R   .    .   vmovupd	%ymm15, 64(%rdx,%rax)
[2,27]    .    .    .    .    . D======================eER  .    .   vmovupd	%ymm6, 96(%rdx,%rax)
[2,28]    .    .    .    .    . DeE----------------------R  .    .   subq	$-128, %rax
[2,29]    .    .    .    .    . D=eE---------------------R  .    .   cmpq	%rax, %r15
[2,30]    .    .    .    .    . D==eE--------------------R  .    .   jne	.L21
[3,0]     .    .    .    .    . D==eeeeeeeE--------------R  .    .   vmovupd	(%r8,%rax), %ymm11
[3,1]     .    .    .    .    .  D==eeeeeeeE-------------R  .    .   vmovupd	(%rsi,%rax), %ymm13
[3,2]     .    .    .    .    .  D====eeeeeeeeeeeE-------R  .    .   vaddpd	(%r9,%rax), %ymm11, %ymm12
[3,3]     .    .    .    .    .  D=====eeeeeeeeeeeE------R  .    .   vaddpd	(%rdi,%rax), %ymm13, %ymm14
[3,4]     .    .    .    .    .  D===eeeeeeeE------------R  .    .   vmovupd	32(%r8,%rax), %ymm1
[3,5]     .    .    .    .    .   D==eeeeeeeE------------R  .    .   vmovupd	32(%rsi,%rax), %ymm2
[3,6]     .    .    .    .    .   D===============eeeeE--R  .    .   vaddpd	%ymm14, %ymm12, %ymm15
[3,7]     .    .    .    .    .   D====eeeeeeeeeeeE------R  .    .   vaddpd	32(%r9,%rax), %ymm1, %ymm5
[3,8]     .    .    .    .    .   D=====eeeeeeeeeeeE-----R  .    .   vaddpd	32(%rdi,%rax), %ymm2, %ymm7
[3,9]     .    .    .    .    .    D==================eeeeER.    .   vmulpd	%ymm8, %ymm15, %ymm0
[3,10]    .    .    .    .    .    D==eeeeeeeE-------------R.    .   vmovupd	64(%r8,%rax), %ymm10
[3,11]    .    .    .    .    .    D===============eeeeE---R.    .   vaddpd	%ymm7, %ymm5, %ymm6
[3,12]    .    .    .    .    .    D====eeeeeeeE-----------R.    .   vmovupd	64(%rsi,%rax), %ymm12
[3,13]    .    .    .    .    .    D=====eeeeeeeE----------R.    .   vmovupd	96(%rsi,%rax), %ymm5
[3,14]    .    .    .    .    .    .D=====================eER    .   vmovupd	%ymm0, (%rdx,%rax)
[3,15]    .    .    .    .    .    .D====eeeeeeeE-----------R    .   vmovupd	96(%r8,%rax), %ymm0
[3,16]    .    .    .    .    .    .D======eeeeeeeeeeeE-----R    .   vaddpd	64(%r9,%rax), %ymm10, %ymm11
[3,17]    .    .    .    .    .    . D=====eeeeeeeeeeeE-----R    .   vaddpd	64(%rdi,%rax), %ymm12, %ymm13
[3,18]    .    .    .    .    .    . D======eeeeeeeeeeeE----R    .   vaddpd	96(%r9,%rax), %ymm0, %ymm1
[3,19]    .    .    .    .    .    . D======eeeeeeeeeeeE----R    .   vaddpd	96(%rdi,%rax), %ymm5, %ymm2
[3,20]    .    .    .    .    .    .  D===============eeeeE-R    .   vaddpd	%ymm13, %ymm11, %ymm14
[3,21]    .    .    .    .    .    .  D================eeeeER    .   vmulpd	%ymm8, %ymm6, %ymm9
[3,22]    .    .    .    .    .    .  D================eeeeER    .   vaddpd	%ymm2, %ymm1, %ymm7
[3,23]    .    .    .    .    .    .  D===================eeeeER .   vmulpd	%ymm8, %ymm14, %ymm15
[3,24]    .    .    .    .    .    .  D====================eeeeER.   vmulpd	%ymm8, %ymm7, %ymm6
[3,25]    .    .    .    .    .    .   D===================eE---R.   vmovupd	%ymm9, 32(%rdx,%rax)
[3,26]    .    .    .    .    .    .   D======================eER.   vmovupd	%ymm15, 64(%rdx,%rax)
[3,27]    .    .    .    .    .    .   D=======================eER   vmovupd	%ymm6, 96(%rdx,%rax)
[3,28]    .    .    .    .    .    .    DeE----------------------R   subq	$-128, %rax
[3,29]    .    .    .    .    .    .    D=eE---------------------R   cmpq	%rax, %r15
[3,30]    .    .    .    .    .    .    D==eE--------------------R   jne	.L21


Average Wait times (based on the timeline view):
[0]: Executions
[1]: Average time spent waiting in a scheduler's queue
[2]: Average time spent waiting in a scheduler's queue while ready
[3]: Average time elapsed from WB until retire stage

      [0]    [1]    [2]    [3]
0.     4     2.0    0.8    9.8       vmovupd	(%r8,%rax), %ymm11
1.     4     2.3    1.3    9.3       vmovupd	(%rsi,%rax), %ymm13
2.     4     3.0    1.5    5.5       vaddpd	(%r9,%rax), %ymm11, %ymm12
3.     4     3.5    1.8    4.8       vaddpd	(%rdi,%rax), %ymm13, %ymm14
4.     4     3.0    2.5    9.0       vmovupd	32(%r8,%rax), %ymm1
5.     4     2.8    2.5    9.0       vmovupd	32(%rsi,%rax), %ymm2
6.     4     13.8   0.0    1.8       vaddpd	%ymm14, %ymm12, %ymm15
7.     4     3.5    1.3    4.8       vaddpd	32(%r9,%rax), %ymm1, %ymm5
8.     4     3.8    1.8    4.3       vaddpd	32(%rdi,%rax), %ymm2, %ymm7
9.     4     17.0   0.0    0.0       vmulpd	%ymm8, %ymm15, %ymm0
10.    4     3.3    3.3    10.5      vmovupd	64(%r8,%rax), %ymm10
11.    4     14.0   0.0    2.5       vaddpd	%ymm7, %ymm5, %ymm6
12.    4     3.8    3.8    9.8       vmovupd	64(%rsi,%rax), %ymm12
13.    4     4.3    4.3    9.0       vmovupd	96(%rsi,%rax), %ymm5
14.    4     20.0   0.0    0.0       vmovupd	%ymm0, (%rdx,%rax)
15.    4     4.0    4.0    9.8       vmovupd	96(%r8,%rax), %ymm0
16.    4     5.0    3.0    4.5       vaddpd	64(%r9,%rax), %ymm10, %ymm11
17.    4     4.8    2.5    4.3       vaddpd	64(%rdi,%rax), %ymm12, %ymm13
18.    4     5.3    2.3    3.5       vaddpd	96(%r9,%rax), %ymm0, %ymm1
19.    4     5.5    3.0    3.0       vaddpd	96(%rdi,%rax), %ymm5, %ymm2
20.    4     14.8   0.0    0.5       vaddpd	%ymm13, %ymm11, %ymm14
21.    4     15.5   0.0    0.0       vmulpd	%ymm8, %ymm6, %ymm9
22.    4     15.8   0.0    0.0       vaddpd	%ymm2, %ymm1, %ymm7
23.    4     18.5   0.0    0.0       vmulpd	%ymm8, %ymm14, %ymm15
24.    4     19.5   0.0    0.0       vmulpd	%ymm8, %ymm7, %ymm6
25.    4     18.5   0.0    3.5       vmovupd	%ymm9, 32(%rdx,%rax)
26.    4     21.5   0.0    0.3       vmovupd	%ymm15, 64(%rdx,%rax)
27.    4     22.5   0.0    0.0       vmovupd	%ymm6, 96(%rdx,%rax)
28.    4     1.0    1.0    21.0      subq	$-128, %rax
29.    4     2.0    0.0    20.0      cmpq	%rax, %r15
30.    4     2.8    0.0    19.0      jne	.L21
