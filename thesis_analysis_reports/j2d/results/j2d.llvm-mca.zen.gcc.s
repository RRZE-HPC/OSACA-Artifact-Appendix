
[0] Code Region

Iterations:        100
Instructions:      3200
Total Cycles:      1218
Total uOps:        3200

Dispatch Width:    4
uOps Per Cycle:    2.63
IPC:               2.63
Block RThroughput: 12.0


Instruction Info:
[1]: #uOps
[2]: Latency
[3]: RThroughput
[4]: MayLoad
[5]: MayStore
[6]: HasSideEffects (U)

[1]    [2]    [3]    [4]    [5]    [6]    Instructions:
 1      8     0.50    *                   vmovups	(%r10,%rcx), %xmm5
 1      8     0.50    *                   vmovups	32(%r10,%rax), %xmm13
 1      8     0.50    *                   vmovups	(%rdi,%rcx), %xmm1
 1      8     0.50    *                   vmovups	32(%rdi,%rax), %xmm14
 1      8     0.50    *                   vmovups	48(%rdi,%rax), %xmm9
 1      10    1.00    *                   vaddpd	(%r8,%rcx), %xmm1, %xmm10
 1      10    1.00    *                   vaddpd	32(%r8,%rax), %xmm14, %xmm15
 1      10    1.00    *                   vaddpd	48(%r8,%rax), %xmm9, %xmm1
 1      3     1.00                        vaddpd	%xmm5, %xmm8, %xmm8
 1      3     1.00                        vaddpd	%xmm13, %xmm5, %xmm6
 1      8     0.50    *                   vmovups	48(%r10,%rax), %xmm5
 1      3     1.00                        vaddpd	%xmm8, %xmm10, %xmm11
 1      3     1.00                        vaddpd	%xmm6, %xmm15, %xmm0
 1      3     0.50                        vmulpd	%xmm2, %xmm11, %xmm12
 1      3     1.00                        vaddpd	%xmm5, %xmm13, %xmm4
 1      3     0.50                        vmulpd	%xmm2, %xmm0, %xmm7
 1      3     1.00                        vaddpd	%xmm4, %xmm1, %xmm10
 1      1     0.50           *            vmovups	%xmm12, (%rsi,%rcx)
 1      1     0.50           *            vmovups	%xmm7, 32(%rsi,%rax)
 1      3     0.50                        vmulpd	%xmm2, %xmm10, %xmm8
 1      1     0.50           *            vmovups	%xmm8, 48(%rsi,%rax)
 1      1     0.25                        addq	$64, %rax
 1      8     0.50    *                   vmovups	(%r10,%rax), %xmm8
 1      1     0.25                        leaq	16(%rax), %rcx
 1      8     0.50    *                   vmovups	(%rdi,%rax), %xmm9
 1      10    1.00    *                   vaddpd	(%r8,%rax), %xmm9, %xmm10
 1      3     1.00                        vaddpd	%xmm8, %xmm5, %xmm11
 1      3     1.00                        vaddpd	%xmm11, %xmm10, %xmm12
 1      3     0.50                        vmulpd	%xmm2, %xmm12, %xmm13
 1      1     0.50           *            vmovups	%xmm13, (%rsi,%rax)
 1      1     0.25                        cmpq	%rcx, %r14
 1      1     0.25                        jne	.L28


Resources:
[0]   - ZnAGU0
[1]   - ZnAGU1
[2]   - ZnALU0
[3]   - ZnALU1
[4]   - ZnALU2
[5]   - ZnALU3
[6]   - ZnDivider
[7]   - ZnFPU0
[8]   - ZnFPU1
[9]   - ZnFPU2
[10]  - ZnFPU3
[11]  - ZnMultiplier


Resource pressure per iteration:
[0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]   
8.00   8.00   1.00   1.00   1.00   1.00    -     12.00  4.00    -      -      -     

Resource pressure by instruction:
[0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]   Instructions:
0.01   0.99    -      -      -      -      -      -      -      -      -      -     vmovups	(%r10,%rcx), %xmm5
0.98   0.02    -      -      -      -      -      -      -      -      -      -     vmovups	32(%r10,%rax), %xmm13
0.02   0.98    -      -      -      -      -      -      -      -      -      -     vmovups	(%rdi,%rcx), %xmm1
0.97   0.03    -      -      -      -      -      -      -      -      -      -     vmovups	32(%rdi,%rax), %xmm14
0.02   0.98    -      -      -      -      -      -      -      -      -      -     vmovups	48(%rdi,%rax), %xmm9
1.00    -      -      -      -      -      -     1.00    -      -      -      -     vaddpd	(%r8,%rcx), %xmm1, %xmm10
0.98   0.02    -      -      -      -      -     1.00    -      -      -      -     vaddpd	32(%r8,%rax), %xmm14, %xmm15
0.04   0.96    -      -      -      -      -     1.00    -      -      -      -     vaddpd	48(%r8,%rax), %xmm9, %xmm1
 -      -      -      -      -      -      -     1.00    -      -      -      -     vaddpd	%xmm5, %xmm8, %xmm8
 -      -      -      -      -      -      -     1.00    -      -      -      -     vaddpd	%xmm13, %xmm5, %xmm6
0.02   0.98    -      -      -      -      -      -      -      -      -      -     vmovups	48(%r10,%rax), %xmm5
 -      -      -      -      -      -      -     1.00    -      -      -      -     vaddpd	%xmm8, %xmm10, %xmm11
 -      -      -      -      -      -      -     1.00    -      -      -      -     vaddpd	%xmm6, %xmm15, %xmm0
 -      -      -      -      -      -      -      -     1.00    -      -      -     vmulpd	%xmm2, %xmm11, %xmm12
 -      -      -      -      -      -      -     1.00    -      -      -      -     vaddpd	%xmm5, %xmm13, %xmm4
 -      -      -      -      -      -      -      -     1.00    -      -      -     vmulpd	%xmm2, %xmm0, %xmm7
 -      -      -      -      -      -      -     1.00    -      -      -      -     vaddpd	%xmm4, %xmm1, %xmm10
0.97   0.03    -      -      -      -      -      -      -      -      -      -     vmovups	%xmm12, (%rsi,%rcx)
0.97   0.03    -      -      -      -      -      -      -      -      -      -     vmovups	%xmm7, 32(%rsi,%rax)
 -      -      -      -      -      -      -      -     1.00    -      -      -     vmulpd	%xmm2, %xmm10, %xmm8
0.98   0.02    -      -      -      -      -      -      -      -      -      -     vmovups	%xmm8, 48(%rsi,%rax)
 -      -      -      -      -     1.00    -      -      -      -      -      -     addq	$64, %rax
0.97   0.03    -      -      -      -      -      -      -      -      -      -     vmovups	(%r10,%rax), %xmm8
 -      -      -      -     1.00    -      -      -      -      -      -      -     leaq	16(%rax), %rcx
0.03   0.97    -      -      -      -      -      -      -      -      -      -     vmovups	(%rdi,%rax), %xmm9
0.01   0.99    -      -      -      -      -     1.00    -      -      -      -     vaddpd	(%r8,%rax), %xmm9, %xmm10
 -      -      -      -      -      -      -     1.00    -      -      -      -     vaddpd	%xmm8, %xmm5, %xmm11
 -      -      -      -      -      -      -     1.00    -      -      -      -     vaddpd	%xmm11, %xmm10, %xmm12
 -      -      -      -      -      -      -      -     1.00    -      -      -     vmulpd	%xmm2, %xmm12, %xmm13
0.03   0.97    -      -      -      -      -      -      -      -      -      -     vmovups	%xmm13, (%rsi,%rax)
 -      -      -     1.00    -      -      -      -      -      -      -      -     cmpq	%rcx, %r14
 -      -     1.00    -      -      -      -      -      -      -      -      -     jne	.L28


Timeline view:
                    0123456789          0123456789          0123456789      
Index     0123456789          0123456789          0123456789          012345

[0,0]     DeeeeeeeeER    .    .    .    .    .    .    .    .    .    .    .   vmovups	(%r10,%rcx), %xmm5
[0,1]     DeeeeeeeeER    .    .    .    .    .    .    .    .    .    .    .   vmovups	32(%r10,%rax), %xmm13
[0,2]     D=eeeeeeeeER   .    .    .    .    .    .    .    .    .    .    .   vmovups	(%rdi,%rcx), %xmm1
[0,3]     D=eeeeeeeeER   .    .    .    .    .    .    .    .    .    .    .   vmovups	32(%rdi,%rax), %xmm14
[0,4]     .D=eeeeeeeeER  .    .    .    .    .    .    .    .    .    .    .   vmovups	48(%rdi,%rax), %xmm9
[0,5]     .D=eeeeeeeeeeER.    .    .    .    .    .    .    .    .    .    .   vaddpd	(%r8,%rcx), %xmm1, %xmm10
[0,6]     .D==eeeeeeeeeeER    .    .    .    .    .    .    .    .    .    .   vaddpd	32(%r8,%rax), %xmm14, %xmm15
[0,7]     .D===eeeeeeeeeeER   .    .    .    .    .    .    .    .    .    .   vaddpd	48(%r8,%rax), %xmm9, %xmm1
[0,8]     . D======eeeE---R   .    .    .    .    .    .    .    .    .    .   vaddpd	%xmm5, %xmm8, %xmm8
[0,9]     . D=======eeeE--R   .    .    .    .    .    .    .    .    .    .   vaddpd	%xmm13, %xmm5, %xmm6
[0,10]    . D=eeeeeeeeE---R   .    .    .    .    .    .    .    .    .    .   vmovups	48(%r10,%rax), %xmm5
[0,11]    . D==========eeeER  .    .    .    .    .    .    .    .    .    .   vaddpd	%xmm8, %xmm10, %xmm11
[0,12]    .  D==========eeeER .    .    .    .    .    .    .    .    .    .   vaddpd	%xmm6, %xmm15, %xmm0
[0,13]    .  D============eeeER    .    .    .    .    .    .    .    .    .   vmulpd	%xmm2, %xmm11, %xmm12
[0,14]    .  D========eeeE----R    .    .    .    .    .    .    .    .    .   vaddpd	%xmm5, %xmm13, %xmm4
[0,15]    .  D=============eeeER   .    .    .    .    .    .    .    .    .   vmulpd	%xmm2, %xmm0, %xmm7
[0,16]    .   D==========eeeE--R   .    .    .    .    .    .    .    .    .   vaddpd	%xmm4, %xmm1, %xmm10
[0,17]    .   D==============eER   .    .    .    .    .    .    .    .    .   vmovups	%xmm12, (%rsi,%rcx)
[0,18]    .   D===============eER  .    .    .    .    .    .    .    .    .   vmovups	%xmm7, 32(%rsi,%rax)
[0,19]    .   D=============eeeER  .    .    .    .    .    .    .    .    .   vmulpd	%xmm2, %xmm10, %xmm8
[0,20]    .    D===============eER .    .    .    .    .    .    .    .    .   vmovups	%xmm8, 48(%rsi,%rax)
[0,21]    .    DeE---------------R .    .    .    .    .    .    .    .    .   addq	$64, %rax
[0,22]    .    D=eeeeeeeeE-------R .    .    .    .    .    .    .    .    .   vmovups	(%r10,%rax), %xmm8
[0,23]    .    D=eE--------------R .    .    .    .    .    .    .    .    .   leaq	16(%rax), %rcx
[0,24]    .    .DeeeeeeeeE-------R .    .    .    .    .    .    .    .    .   vmovups	(%rdi,%rax), %xmm9
[0,25]    .    .D=eeeeeeeeeeE----R .    .    .    .    .    .    .    .    .   vaddpd	(%r8,%rax), %xmm9, %xmm10
[0,26]    .    .D=========eeeE---R .    .    .    .    .    .    .    .    .   vaddpd	%xmm8, %xmm5, %xmm11
[0,27]    .    .D============eeeER .    .    .    .    .    .    .    .    .   vaddpd	%xmm11, %xmm10, %xmm12
[0,28]    .    . D==============eeeER   .    .    .    .    .    .    .    .   vmulpd	%xmm2, %xmm12, %xmm13
[0,29]    .    . D=================eER  .    .    .    .    .    .    .    .   vmovups	%xmm13, (%rsi,%rax)
[0,30]    .    . DeE-----------------R  .    .    .    .    .    .    .    .   cmpq	%rcx, %r14
[0,31]    .    . D=eE----------------R  .    .    .    .    .    .    .    .   jne	.L28
[1,0]     .    .  DeeeeeeeeE---------R  .    .    .    .    .    .    .    .   vmovups	(%r10,%rcx), %xmm5
[1,1]     .    .  DeeeeeeeeE---------R  .    .    .    .    .    .    .    .   vmovups	32(%r10,%rax), %xmm13
[1,2]     .    .  D=eeeeeeeeE--------R  .    .    .    .    .    .    .    .   vmovups	(%rdi,%rcx), %xmm1
[1,3]     .    .  D=eeeeeeeeE--------R  .    .    .    .    .    .    .    .   vmovups	32(%rdi,%rax), %xmm14
[1,4]     .    .   D=eeeeeeeeE-------R  .    .    .    .    .    .    .    .   vmovups	48(%rdi,%rax), %xmm9
[1,5]     .    .   D=eeeeeeeeeeE------R .    .    .    .    .    .    .    .   vaddpd	(%r8,%rcx), %xmm1, %xmm10
[1,6]     .    .   D=======eeeeeeeeeeER .    .    .    .    .    .    .    .   vaddpd	32(%r8,%rax), %xmm14, %xmm15
[1,7]     .    .   D========eeeeeeeeeeER.    .    .    .    .    .    .    .   vaddpd	48(%r8,%rax), %xmm9, %xmm1
[1,8]     .    .    D=========eeeE-----R.    .    .    .    .    .    .    .   vaddpd	%xmm5, %xmm8, %xmm8
[1,9]     .    .    D==========eeeE----R.    .    .    .    .    .    .    .   vaddpd	%xmm13, %xmm5, %xmm6
[1,10]    .    .    D=eeeeeeeeE--------R.    .    .    .    .    .    .    .   vmovups	48(%r10,%rax), %xmm5
[1,11]    .    .    D============eeeE--R.    .    .    .    .    .    .    .   vaddpd	%xmm8, %xmm10, %xmm11
[1,12]    .    .    .D===============eeeER   .    .    .    .    .    .    .   vaddpd	%xmm6, %xmm15, %xmm0
[1,13]    .    .    .D==============eeeE-R   .    .    .    .    .    .    .   vmulpd	%xmm2, %xmm11, %xmm12
[1,14]    .    .    .D==========eeeE-----R   .    .    .    .    .    .    .   vaddpd	%xmm5, %xmm13, %xmm4
[1,15]    .    .    .D==================eeeER.    .    .    .    .    .    .   vmulpd	%xmm2, %xmm0, %xmm7
[1,16]    .    .    . D===============eeeE--R.    .    .    .    .    .    .   vaddpd	%xmm4, %xmm1, %xmm10
[1,17]    .    .    . D================eE---R.    .    .    .    .    .    .   vmovups	%xmm12, (%rsi,%rcx)
[1,18]    .    .    . D====================eER    .    .    .    .    .    .   vmovups	%xmm7, 32(%rsi,%rax)
[1,19]    .    .    . D==================eeeER    .    .    .    .    .    .   vmulpd	%xmm2, %xmm10, %xmm8
[1,20]    .    .    .  D====================eER   .    .    .    .    .    .   vmovups	%xmm8, 48(%rsi,%rax)
[1,21]    .    .    .  DeE--------------------R   .    .    .    .    .    .   addq	$64, %rax
[1,22]    .    .    .  D=eeeeeeeeE------------R   .    .    .    .    .    .   vmovups	(%r10,%rax), %xmm8
[1,23]    .    .    .  D=eE-------------------R   .    .    .    .    .    .   leaq	16(%rax), %rcx
[1,24]    .    .    .   DeeeeeeeeE------------R   .    .    .    .    .    .   vmovups	(%rdi,%rax), %xmm9
[1,25]    .    .    .   D=========eeeeeeeeeeE-R   .    .    .    .    .    .   vaddpd	(%r8,%rax), %xmm9, %xmm10
[1,26]    .    .    .   D==========eeeE-------R   .    .    .    .    .    .   vaddpd	%xmm8, %xmm5, %xmm11
[1,27]    .    .    .   D===================eeeER .    .    .    .    .    .   vaddpd	%xmm11, %xmm10, %xmm12
[1,28]    .    .    .    D=====================eeeER   .    .    .    .    .   vmulpd	%xmm2, %xmm12, %xmm13
[1,29]    .    .    .    D========================eER  .    .    .    .    .   vmovups	%xmm13, (%rsi,%rax)
[1,30]    .    .    .    DeE------------------------R  .    .    .    .    .   cmpq	%rcx, %r14
[1,31]    .    .    .    D=eE-----------------------R  .    .    .    .    .   jne	.L28
[2,0]     .    .    .    .DeeeeeeeeE----------------R  .    .    .    .    .   vmovups	(%r10,%rcx), %xmm5
[2,1]     .    .    .    .D=eeeeeeeeE---------------R  .    .    .    .    .   vmovups	32(%r10,%rax), %xmm13
[2,2]     .    .    .    .D==eeeeeeeeE--------------R  .    .    .    .    .   vmovups	(%rdi,%rcx), %xmm1
[2,3]     .    .    .    .D===eeeeeeeeE-------------R  .    .    .    .    .   vmovups	32(%rdi,%rax), %xmm14
[2,4]     .    .    .    . D===eeeeeeeeE------------R  .    .    .    .    .   vmovups	48(%rdi,%rax), %xmm9
[2,5]     .    .    .    . D========eeeeeeeeeeE------R .    .    .    .    .   vaddpd	(%r8,%rcx), %xmm1, %xmm10
[2,6]     .    .    .    . D===========eeeeeeeeeeE---R .    .    .    .    .   vaddpd	32(%r8,%rax), %xmm14, %xmm15
[2,7]     .    .    .    . D============eeeeeeeeeeE--R .    .    .    .    .   vaddpd	48(%r8,%rax), %xmm9, %xmm1
[2,8]     .    .    .    .  D============eeeE--------R .    .    .    .    .   vaddpd	%xmm5, %xmm8, %xmm8
[2,9]     .    .    .    .  D=============eeeE-------R .    .    .    .    .   vaddpd	%xmm13, %xmm5, %xmm6
[2,10]    .    .    .    .  D===eeeeeeeeE------------R .    .    .    .    .   vmovups	48(%r10,%rax), %xmm5
[2,11]    .    .    .    .  D=================eeeE---R .    .    .    .    .   vaddpd	%xmm8, %xmm10, %xmm11
[2,12]    .    .    .    .   D===================eeeER .    .    .    .    .   vaddpd	%xmm6, %xmm15, %xmm0
[2,13]    .    .    .    .   D===================eeeE-R.    .    .    .    .   vmulpd	%xmm2, %xmm11, %xmm12
[2,14]    .    .    .    .   D=============eeeE-------R.    .    .    .    .   vaddpd	%xmm5, %xmm13, %xmm4
[2,15]    .    .    .    .   D======================eeeER   .    .    .    .   vmulpd	%xmm2, %xmm0, %xmm7
[2,16]    .    .    .    .    D===================eeeE--R   .    .    .    .   vaddpd	%xmm4, %xmm1, %xmm10
[2,17]    .    .    .    .    D=====================eE--R   .    .    .    .   vmovups	%xmm12, (%rsi,%rcx)
[2,18]    .    .    .    .    D========================eER  .    .    .    .   vmovups	%xmm7, 32(%rsi,%rax)
[2,19]    .    .    .    .    D======================eeeER  .    .    .    .   vmulpd	%xmm2, %xmm10, %xmm8
[2,20]    .    .    .    .    .D========================eER .    .    .    .   vmovups	%xmm8, 48(%rsi,%rax)
[2,21]    .    .    .    .    .DeE------------------------R .    .    .    .   addq	$64, %rax
[2,22]    .    .    .    .    .D=eeeeeeeeE----------------R .    .    .    .   vmovups	(%r10,%rax), %xmm8
[2,23]    .    .    .    .    .D=eE-----------------------R .    .    .    .   leaq	16(%rax), %rcx
[2,24]    .    .    .    .    . DeeeeeeeeE----------------R .    .    .    .   vmovups	(%rdi,%rax), %xmm9
[2,25]    .    .    .    .    . D============eeeeeeeeeeE--R .    .    .    .   vaddpd	(%r8,%rax), %xmm9, %xmm10
[2,26]    .    .    .    .    . D==============eeeE-------R .    .    .    .   vaddpd	%xmm8, %xmm5, %xmm11
[2,27]    .    .    .    .    . D======================eeeER.    .    .    .   vaddpd	%xmm11, %xmm10, %xmm12
[2,28]    .    .    .    .    .  D========================eeeER  .    .    .   vmulpd	%xmm2, %xmm12, %xmm13
[2,29]    .    .    .    .    .  D===========================eER .    .    .   vmovups	%xmm13, (%rsi,%rax)
[2,30]    .    .    .    .    .  DeE---------------------------R .    .    .   cmpq	%rcx, %r14
[2,31]    .    .    .    .    .  D=eE--------------------------R .    .    .   jne	.L28
[3,0]     .    .    .    .    .   DeeeeeeeeE-------------------R .    .    .   vmovups	(%r10,%rcx), %xmm5
[3,1]     .    .    .    .    .   D=eeeeeeeeE------------------R .    .    .   vmovups	32(%r10,%rax), %xmm13
[3,2]     .    .    .    .    .   D==eeeeeeeeE-----------------R .    .    .   vmovups	(%rdi,%rcx), %xmm1
[3,3]     .    .    .    .    .   D==eeeeeeeeE-----------------R .    .    .   vmovups	32(%rdi,%rax), %xmm14
[3,4]     .    .    .    .    .    D==eeeeeeeeE----------------R .    .    .   vmovups	48(%rdi,%rax), %xmm9
[3,5]     .    .    .    .    .    D============eeeeeeeeeeE-----R.    .    .   vaddpd	(%r8,%rcx), %xmm1, %xmm10
[3,6]     .    .    .    .    .    D===============eeeeeeeeeeE--R.    .    .   vaddpd	32(%r8,%rax), %xmm14, %xmm15
[3,7]     .    .    .    .    .    D================eeeeeeeeeeE-R.    .    .   vaddpd	48(%r8,%rax), %xmm9, %xmm1
[3,8]     .    .    .    .    .    .D================eeeE-------R.    .    .   vaddpd	%xmm5, %xmm8, %xmm8
[3,9]     .    .    .    .    .    .D=================eeeE------R.    .    .   vaddpd	%xmm13, %xmm5, %xmm6
[3,10]    .    .    .    .    .    .D=eeeeeeeeE-----------------R.    .    .   vmovups	48(%r10,%rax), %xmm5
[3,11]    .    .    .    .    .    .D=====================eeeE--R.    .    .   vaddpd	%xmm8, %xmm10, %xmm11
[3,12]    .    .    .    .    .    . D=======================eeeER    .    .   vaddpd	%xmm6, %xmm15, %xmm0
[3,13]    .    .    .    .    .    . D=======================eeeER    .    .   vmulpd	%xmm2, %xmm11, %xmm12
[3,14]    .    .    .    .    .    . D==================eeeE-----R    .    .   vaddpd	%xmm5, %xmm13, %xmm4
[3,15]    .    .    .    .    .    . D==========================eeeER .    .   vmulpd	%xmm2, %xmm0, %xmm7
[3,16]    .    .    .    .    .    .  D=======================eeeE--R .    .   vaddpd	%xmm4, %xmm1, %xmm10
[3,17]    .    .    .    .    .    .  D=========================eE--R .    .   vmovups	%xmm12, (%rsi,%rcx)
[3,18]    .    .    .    .    .    .  D============================eER.    .   vmovups	%xmm7, 32(%rsi,%rax)
[3,19]    .    .    .    .    .    .  D==========================eeeER.    .   vmulpd	%xmm2, %xmm10, %xmm8
[3,20]    .    .    .    .    .    .   D============================eER    .   vmovups	%xmm8, 48(%rsi,%rax)
[3,21]    .    .    .    .    .    .   DeE----------------------------R    .   addq	$64, %rax
[3,22]    .    .    .    .    .    .   D=eeeeeeeeE--------------------R    .   vmovups	(%r10,%rax), %xmm8
[3,23]    .    .    .    .    .    .   D=eE---------------------------R    .   leaq	16(%rax), %rcx
[3,24]    .    .    .    .    .    .    DeeeeeeeeE--------------------R    .   vmovups	(%rdi,%rax), %xmm9
[3,25]    .    .    .    .    .    .    D================eeeeeeeeeeE--R    .   vaddpd	(%r8,%rax), %xmm9, %xmm10
[3,26]    .    .    .    .    .    .    D==================eeeE-------R    .   vaddpd	%xmm8, %xmm5, %xmm11
[3,27]    .    .    .    .    .    .    D==========================eeeER   .   vaddpd	%xmm11, %xmm10, %xmm12
[3,28]    .    .    .    .    .    .    .D============================eeeER.   vmulpd	%xmm2, %xmm12, %xmm13
[3,29]    .    .    .    .    .    .    .D===============================eER   vmovups	%xmm13, (%rsi,%rax)
[3,30]    .    .    .    .    .    .    .DeE-------------------------------R   cmpq	%rcx, %r14
[3,31]    .    .    .    .    .    .    .D=eE------------------------------R   jne	.L28


Average Wait times (based on the timeline view):
[0]: Executions
[1]: Average time spent waiting in a scheduler's queue
[2]: Average time spent waiting in a scheduler's queue while ready
[3]: Average time elapsed from WB until retire stage

      [0]    [1]    [2]    [3]
0.     4     1.0    1.0    11.0      vmovups	(%r10,%rcx), %xmm5
1.     4     1.5    1.5    10.5      vmovups	32(%r10,%rax), %xmm13
2.     4     2.5    2.5    9.8       vmovups	(%rdi,%rcx), %xmm1
3.     4     2.8    2.8    9.5       vmovups	32(%rdi,%rax), %xmm14
4.     4     2.8    2.8    8.8       vmovups	48(%rdi,%rax), %xmm9
5.     4     6.5    5.0    4.3       vaddpd	(%r8,%rcx), %xmm1, %xmm10
6.     4     9.8    8.0    1.3       vaddpd	32(%r8,%rax), %xmm14, %xmm15
7.     4     10.8   8.0    0.8       vaddpd	48(%r8,%rax), %xmm9, %xmm1
8.     4     11.8   4.8    5.8       vaddpd	%xmm5, %xmm8, %xmm8
9.     4     12.8   5.3    4.8       vaddpd	%xmm13, %xmm5, %xmm6
10.    4     2.5    2.5    10.0      vmovups	48(%r10,%rax), %xmm5
11.    4     16.0   0.0    1.8       vaddpd	%xmm8, %xmm10, %xmm11
12.    4     17.8   0.0    0.0       vaddpd	%xmm6, %xmm15, %xmm0
13.    4     18.0   0.0    0.5       vmulpd	%xmm2, %xmm11, %xmm12
14.    4     13.3   3.8    5.3       vaddpd	%xmm5, %xmm13, %xmm4
15.    4     20.8   0.0    0.0       vmulpd	%xmm2, %xmm0, %xmm7
16.    4     17.8   0.0    2.0       vaddpd	%xmm4, %xmm1, %xmm10
17.    4     20.0   0.0    1.8       vmovups	%xmm12, (%rsi,%rcx)
18.    4     22.8   0.0    0.0       vmovups	%xmm7, 32(%rsi,%rax)
19.    4     20.8   0.0    0.0       vmulpd	%xmm2, %xmm10, %xmm8
20.    4     22.8   0.0    0.0       vmovups	%xmm8, 48(%rsi,%rax)
21.    4     1.0    1.0    21.8      addq	$64, %rax
22.    4     2.0    0.0    13.8      vmovups	(%r10,%rax), %xmm8
23.    4     2.0    0.0    20.8      leaq	16(%rax), %rcx
24.    4     1.0    0.0    13.8      vmovups	(%rdi,%rax), %xmm9
25.    4     10.5   9.5    2.3       vaddpd	(%r8,%rax), %xmm9, %xmm10
26.    4     13.8   4.8    6.0       vaddpd	%xmm8, %xmm5, %xmm11
27.    4     20.8   0.0    0.0       vaddpd	%xmm11, %xmm10, %xmm12
28.    4     22.8   0.0    0.0       vmulpd	%xmm2, %xmm12, %xmm13
29.    4     25.8   0.0    0.0       vmovups	%xmm13, (%rsi,%rax)
30.    4     1.0    0.0    24.8      cmpq	%rcx, %r14
31.    4     2.0    0.0    23.8      jne	.L28
