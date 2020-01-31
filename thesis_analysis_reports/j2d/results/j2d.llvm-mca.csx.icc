
[0] Code Region

Iterations:        100
Instructions:      3500
Total Cycles:      994
Total uOps:        5500

Dispatch Width:    6
uOps Per Cycle:    5.53
IPC:               3.52
Block RThroughput: 9.2


Instruction Info:
[1]: #uOps
[2]: Latency
[3]: RThroughput
[4]: MayLoad
[5]: MayStore
[6]: HasSideEffects (U)

[1]    [2]    [3]    [4]    [5]    [6]    Instructions:
 1      1     0.50                        leaq	(%r12,%r11), %r8
 2      8     0.50    *                   vmovupd	10032(%r8,%rcx,8), %zmm2
 2      8     0.50    *                   vmovupd	10016(%r8,%rcx,8), %zmm0
 1      1     0.50                        leaq	(%r12,%r11), %r8
 2      11    0.50    *                   vaddpd	16(%r12,%rcx,8), %zmm0, %zmm0
 2      11    0.50    *                   vaddpd	20032(%r10,%rcx,8), %zmm0, %zmm1
 1      4     0.50                        vaddpd	%zmm2, %zmm1, %zmm2
 1      4     0.50                        vmulpd	%zmm2, %zmm4, %zmm3
 2      1     1.00           *            vmovupd	%zmm3, 10016(%r9,%rcx,8)
 2      8     0.50    *                   vmovupd	10096(%r8,%rcx,8), %zmm2
 2      8     0.50    *                   vmovupd	10080(%r8,%rcx,8), %zmm0
 1      1     0.50                        leaq	(%r12,%r11), %r8
 2      11    0.50    *                   vaddpd	80(%r12,%rcx,8), %zmm0, %zmm0
 2      11    0.50    *                   vaddpd	20096(%r10,%rcx,8), %zmm0, %zmm1
 1      4     0.50                        vaddpd	%zmm2, %zmm1, %zmm2
 1      4     0.50                        vmulpd	%zmm2, %zmm4, %zmm3
 2      1     1.00           *            vmovupd	%zmm3, 10080(%r9,%rcx,8)
 2      8     0.50    *                   vmovupd	10160(%r8,%rcx,8), %zmm2
 2      8     0.50    *                   vmovupd	10144(%r8,%rcx,8), %zmm0
 1      1     0.50                        leaq	(%r12,%r11), %r8
 2      11    0.50    *                   vaddpd	144(%r12,%rcx,8), %zmm0, %zmm0
 2      11    0.50    *                   vaddpd	20160(%r10,%rcx,8), %zmm0, %zmm1
 1      4     0.50                        vaddpd	%zmm2, %zmm1, %zmm2
 1      4     0.50                        vmulpd	%zmm2, %zmm4, %zmm3
 2      1     1.00           *            vmovupd	%zmm3, 10144(%r9,%rcx,8)
 2      8     0.50    *                   vmovupd	10224(%r8,%rcx,8), %zmm2
 2      8     0.50    *                   vmovupd	10208(%r8,%rcx,8), %zmm0
 2      11    0.50    *                   vaddpd	208(%r12,%rcx,8), %zmm0, %zmm0
 2      11    0.50    *                   vaddpd	20224(%r10,%rcx,8), %zmm0, %zmm1
 1      4     0.50                        vaddpd	%zmm2, %zmm1, %zmm2
 1      4     0.50                        vmulpd	%zmm2, %zmm4, %zmm3
 2      1     1.00           *            vmovupd	%zmm3, 10208(%r9,%rcx,8)
 1      1     0.25                        addq	$32, %rcx
 1      1     0.25                        cmpq	%r14, %rcx
 1      1     0.50                        jb	..B1.47


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
 -      -     9.40   9.17   8.02   8.03   4.00   9.43   3.00   3.95   

Resource pressure by instruction:
[0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    Instructions:
 -      -      -     0.81    -      -      -     0.19    -      -     leaq	(%r12,%r11), %r8
 -      -     0.01   0.89   0.34   0.66    -     0.10    -      -     vmovupd	10032(%r8,%rcx,8), %zmm2
 -      -     0.10   0.64   0.50   0.50    -     0.26    -      -     vmovupd	10016(%r8,%rcx,8), %zmm0
 -      -      -     0.72    -      -      -     0.28    -      -     leaq	(%r12,%r11), %r8
 -      -     0.38    -     0.63   0.37    -     0.62    -      -     vaddpd	16(%r12,%rcx,8), %zmm0, %zmm0
 -      -     0.63    -     0.44   0.56    -     0.37    -      -     vaddpd	20032(%r10,%rcx,8), %zmm0, %zmm1
 -      -     0.61    -      -      -      -     0.39    -      -     vaddpd	%zmm2, %zmm1, %zmm2
 -      -     0.81    -      -      -      -     0.19    -      -     vmulpd	%zmm2, %zmm4, %zmm3
 -      -      -      -      -     0.01   1.00    -      -     0.99   vmovupd	%zmm3, 10016(%r9,%rcx,8)
 -      -     0.05   0.83   0.42   0.58    -     0.12    -      -     vmovupd	10096(%r8,%rcx,8), %zmm2
 -      -     0.02   0.80   0.50   0.50    -     0.18    -      -     vmovupd	10080(%r8,%rcx,8), %zmm0
 -      -      -     0.66    -      -      -     0.34    -      -     leaq	(%r12,%r11), %r8
 -      -     0.28    -     0.61   0.39    -     0.72    -      -     vaddpd	80(%r12,%rcx,8), %zmm0, %zmm0
 -      -     0.47    -     0.41   0.59    -     0.53    -      -     vaddpd	20096(%r10,%rcx,8), %zmm0, %zmm1
 -      -     0.63    -      -      -      -     0.37    -      -     vaddpd	%zmm2, %zmm1, %zmm2
 -      -     0.87    -      -      -      -     0.13    -      -     vmulpd	%zmm2, %zmm4, %zmm3
 -      -      -      -      -     0.01   1.00    -      -     0.99   vmovupd	%zmm3, 10080(%r9,%rcx,8)
 -      -     0.01   0.83   0.36   0.64    -     0.16    -      -     vmovupd	10160(%r8,%rcx,8), %zmm2
 -      -     0.04   0.72   0.72   0.28    -     0.24    -      -     vmovupd	10144(%r8,%rcx,8), %zmm0
 -      -      -     0.74    -      -      -     0.26    -      -     leaq	(%r12,%r11), %r8
 -      -     0.30    -     0.59   0.41    -     0.70    -      -     vaddpd	144(%r12,%rcx,8), %zmm0, %zmm0
 -      -     0.49    -     0.42   0.58    -     0.51    -      -     vaddpd	20160(%r10,%rcx,8), %zmm0, %zmm1
 -      -     0.59    -      -      -      -     0.41    -      -     vaddpd	%zmm2, %zmm1, %zmm2
 -      -     0.80    -      -      -      -     0.20    -      -     vmulpd	%zmm2, %zmm4, %zmm3
 -      -      -      -     0.01   0.01   1.00    -      -     0.98   vmovupd	%zmm3, 10144(%r9,%rcx,8)
 -      -     0.05   0.89   0.30   0.70    -     0.06    -      -     vmovupd	10224(%r8,%rcx,8), %zmm2
 -      -     0.11   0.64   0.68   0.32    -     0.25    -      -     vmovupd	10208(%r8,%rcx,8), %zmm0
 -      -     0.36    -     0.66   0.34    -     0.64    -      -     vaddpd	208(%r12,%rcx,8), %zmm0, %zmm0
 -      -     0.56    -     0.42   0.58    -     0.44    -      -     vaddpd	20224(%r10,%rcx,8), %zmm0, %zmm1
 -      -     0.50    -      -      -      -     0.50    -      -     vaddpd	%zmm2, %zmm1, %zmm2
 -      -     0.73    -      -      -      -     0.27    -      -     vmulpd	%zmm2, %zmm4, %zmm3
 -      -      -      -     0.01    -     1.00    -      -     0.99   vmovupd	%zmm3, 10208(%r9,%rcx,8)
 -      -      -      -      -      -      -      -     1.00    -     addq	$32, %rcx
 -      -      -      -      -      -      -      -     1.00    -     cmpq	%r14, %rcx
 -      -      -      -      -      -      -      -     1.00    -     jb	..B1.47


Timeline view:
                    0123456789          0123456789          0123456789      
Index     0123456789          0123456789          0123456789          012345

[0,0]     DeER .    .    .    .    .    .    .    .    .    .    .    .    .   leaq	(%r12,%r11), %r8
[0,1]     DeeeeeeeeER    .    .    .    .    .    .    .    .    .    .    .   vmovupd	10032(%r8,%rcx,8), %zmm2
[0,2]     DeeeeeeeeER    .    .    .    .    .    .    .    .    .    .    .   vmovupd	10016(%r8,%rcx,8), %zmm0
[0,3]     D=eE------R    .    .    .    .    .    .    .    .    .    .    .   leaq	(%r12,%r11), %r8
[0,4]     .DeeeeeeeeeeeER.    .    .    .    .    .    .    .    .    .    .   vaddpd	16(%r12,%rcx,8), %zmm0, %zmm0
[0,5]     .D====eeeeeeeeeeeER .    .    .    .    .    .    .    .    .    .   vaddpd	20032(%r10,%rcx,8), %zmm0, %zmm1
[0,6]     .D===============eeeeER  .    .    .    .    .    .    .    .    .   vaddpd	%zmm2, %zmm1, %zmm2
[0,7]     .D===================eeeeER   .    .    .    .    .    .    .    .   vmulpd	%zmm2, %zmm4, %zmm3
[0,8]     . D======================eER  .    .    .    .    .    .    .    .   vmovupd	%zmm3, 10016(%r9,%rcx,8)
[0,9]     . DeeeeeeeeE---------------R  .    .    .    .    .    .    .    .   vmovupd	10096(%r8,%rcx,8), %zmm2
[0,10]    . DeeeeeeeeE---------------R  .    .    .    .    .    .    .    .   vmovupd	10080(%r8,%rcx,8), %zmm0
[0,11]    .  DeE---------------------R  .    .    .    .    .    .    .    .   leaq	(%r12,%r11), %r8
[0,12]    .  DeeeeeeeeeeeE-----------R  .    .    .    .    .    .    .    .   vaddpd	80(%r12,%rcx,8), %zmm0, %zmm0
[0,13]    .  D====eeeeeeeeeeeE-------R  .    .    .    .    .    .    .    .   vaddpd	20096(%r10,%rcx,8), %zmm0, %zmm1
[0,14]    .  D===============eeeeE---R  .    .    .    .    .    .    .    .   vaddpd	%zmm2, %zmm1, %zmm2
[0,15]    .   D==================eeeeER .    .    .    .    .    .    .    .   vmulpd	%zmm2, %zmm4, %zmm3
[0,16]    .   D======================eER.    .    .    .    .    .    .    .   vmovupd	%zmm3, 10080(%r9,%rcx,8)
[0,17]    .   DeeeeeeeeE---------------R.    .    .    .    .    .    .    .   vmovupd	10160(%r8,%rcx,8), %zmm2
[0,18]    .    DeeeeeeeeE--------------R.    .    .    .    .    .    .    .   vmovupd	10144(%r8,%rcx,8), %zmm0
[0,19]    .    DeE---------------------R.    .    .    .    .    .    .    .   leaq	(%r12,%r11), %r8
[0,20]    .    D=eeeeeeeeeeeE----------R.    .    .    .    .    .    .    .   vaddpd	144(%r12,%rcx,8), %zmm0, %zmm0
[0,21]    .    .D====eeeeeeeeeeeE------R.    .    .    .    .    .    .    .   vaddpd	20160(%r10,%rcx,8), %zmm0, %zmm1
[0,22]    .    .D===============eeeeE--R.    .    .    .    .    .    .    .   vaddpd	%zmm2, %zmm1, %zmm2
[0,23]    .    .D===================eeeeER   .    .    .    .    .    .    .   vmulpd	%zmm2, %zmm4, %zmm3
[0,24]    .    .D=======================eER  .    .    .    .    .    .    .   vmovupd	%zmm3, 10144(%r9,%rcx,8)
[0,25]    .    . DeeeeeeeeE---------------R  .    .    .    .    .    .    .   vmovupd	10224(%r8,%rcx,8), %zmm2
[0,26]    .    . D=eeeeeeeeE--------------R  .    .    .    .    .    .    .   vmovupd	10208(%r8,%rcx,8), %zmm0
[0,27]    .    . D==eeeeeeeeeeeE----------R  .    .    .    .    .    .    .   vaddpd	208(%r12,%rcx,8), %zmm0, %zmm0
[0,28]    .    .  D=====eeeeeeeeeeeE------R  .    .    .    .    .    .    .   vaddpd	20224(%r10,%rcx,8), %zmm0, %zmm1
[0,29]    .    .  D================eeeeE--R  .    .    .    .    .    .    .   vaddpd	%zmm2, %zmm1, %zmm2
[0,30]    .    .  D====================eeeeER.    .    .    .    .    .    .   vmulpd	%zmm2, %zmm4, %zmm3
[0,31]    .    .  D========================eER    .    .    .    .    .    .   vmovupd	%zmm3, 10208(%r9,%rcx,8)
[0,32]    .    .   DeE-----------------------R    .    .    .    .    .    .   addq	$32, %rcx
[0,33]    .    .   D=eE----------------------R    .    .    .    .    .    .   cmpq	%r14, %rcx
[0,34]    .    .   D==eE---------------------R    .    .    .    .    .    .   jb	..B1.47
[1,0]     .    .   DeE-----------------------R    .    .    .    .    .    .   leaq	(%r12,%r11), %r8
[1,1]     .    .   D=eeeeeeeeE---------------R    .    .    .    .    .    .   vmovupd	10032(%r8,%rcx,8), %zmm2
[1,2]     .    .    D=eeeeeeeeE--------------R    .    .    .    .    .    .   vmovupd	10016(%r8,%rcx,8), %zmm0
[1,3]     .    .    DeE----------------------R    .    .    .    .    .    .   leaq	(%r12,%r11), %r8
[1,4]     .    .    D==eeeeeeeeeeeE----------R    .    .    .    .    .    .   vaddpd	16(%r12,%rcx,8), %zmm0, %zmm0
[1,5]     .    .    .D=====eeeeeeeeeeeE------R    .    .    .    .    .    .   vaddpd	20032(%r10,%rcx,8), %zmm0, %zmm1
[1,6]     .    .    .D================eeeeE--R    .    .    .    .    .    .   vaddpd	%zmm2, %zmm1, %zmm2
[1,7]     .    .    .D====================eeeeER  .    .    .    .    .    .   vmulpd	%zmm2, %zmm4, %zmm3
[1,8]     .    .    .D========================eER .    .    .    .    .    .   vmovupd	%zmm3, 10016(%r9,%rcx,8)
[1,9]     .    .    . DeeeeeeeeE----------------R .    .    .    .    .    .   vmovupd	10096(%r8,%rcx,8), %zmm2
[1,10]    .    .    . D=eeeeeeeeE---------------R .    .    .    .    .    .   vmovupd	10080(%r8,%rcx,8), %zmm0
[1,11]    .    .    . DeE-----------------------R .    .    .    .    .    .   leaq	(%r12,%r11), %r8
[1,12]    .    .    .  D=eeeeeeeeeeeE-----------R .    .    .    .    .    .   vaddpd	80(%r12,%rcx,8), %zmm0, %zmm0
[1,13]    .    .    .  D=====eeeeeeeeeeeE-------R .    .    .    .    .    .   vaddpd	20096(%r10,%rcx,8), %zmm0, %zmm1
[1,14]    .    .    .  D================eeeeE---R .    .    .    .    .    .   vaddpd	%zmm2, %zmm1, %zmm2
[1,15]    .    .    .  D====================eeeeER.    .    .    .    .    .   vmulpd	%zmm2, %zmm4, %zmm3
[1,16]    .    .    .   D=======================eER    .    .    .    .    .   vmovupd	%zmm3, 10080(%r9,%rcx,8)
[1,17]    .    .    .   DeeeeeeeeE----------------R    .    .    .    .    .   vmovupd	10160(%r8,%rcx,8), %zmm2
[1,18]    .    .    .   D=eeeeeeeeE---------------R    .    .    .    .    .   vmovupd	10144(%r8,%rcx,8), %zmm0
[1,19]    .    .    .    DeE----------------------R    .    .    .    .    .   leaq	(%r12,%r11), %r8
[1,20]    .    .    .    D==eeeeeeeeeeeE----------R    .    .    .    .    .   vaddpd	144(%r12,%rcx,8), %zmm0, %zmm0
[1,21]    .    .    .    D======eeeeeeeeeeeE------R    .    .    .    .    .   vaddpd	20160(%r10,%rcx,8), %zmm0, %zmm1
[1,22]    .    .    .    D=================eeeeE--R    .    .    .    .    .   vaddpd	%zmm2, %zmm1, %zmm2
[1,23]    .    .    .    .D====================eeeeER  .    .    .    .    .   vmulpd	%zmm2, %zmm4, %zmm3
[1,24]    .    .    .    .D========================eER .    .    .    .    .   vmovupd	%zmm3, 10144(%r9,%rcx,8)
[1,25]    .    .    .    .DeeeeeeeeE-----------------R .    .    .    .    .   vmovupd	10224(%r8,%rcx,8), %zmm2
[1,26]    .    .    .    . DeeeeeeeeE----------------R .    .    .    .    .   vmovupd	10208(%r8,%rcx,8), %zmm0
[1,27]    .    .    .    . D==eeeeeeeeeeeE-----------R .    .    .    .    .   vaddpd	208(%r12,%rcx,8), %zmm0, %zmm0
[1,28]    .    .    .    . D======eeeeeeeeeeeE-------R .    .    .    .    .   vaddpd	20224(%r10,%rcx,8), %zmm0, %zmm1
[1,29]    .    .    .    .  D================eeeeE---R .    .    .    .    .   vaddpd	%zmm2, %zmm1, %zmm2
[1,30]    .    .    .    .  D====================eeeeER.    .    .    .    .   vmulpd	%zmm2, %zmm4, %zmm3
[1,31]    .    .    .    .  D========================eER    .    .    .    .   vmovupd	%zmm3, 10208(%r9,%rcx,8)
[1,32]    .    .    .    .  DeE------------------------R    .    .    .    .   addq	$32, %rcx
[1,33]    .    .    .    .  D=eE-----------------------R    .    .    .    .   cmpq	%r14, %rcx
[1,34]    .    .    .    .   D=eE----------------------R    .    .    .    .   jb	..B1.47
[2,0]     .    .    .    .   DeE-----------------------R    .    .    .    .   leaq	(%r12,%r11), %r8
[2,1]     .    .    .    .   DeeeeeeeeE----------------R    .    .    .    .   vmovupd	10032(%r8,%rcx,8), %zmm2
[2,2]     .    .    .    .   D=eeeeeeeeE---------------R    .    .    .    .   vmovupd	10016(%r8,%rcx,8), %zmm0
[2,3]     .    .    .    .    DeE----------------------R    .    .    .    .   leaq	(%r12,%r11), %r8
[2,4]     .    .    .    .    D==eeeeeeeeeeeE----------R    .    .    .    .   vaddpd	16(%r12,%rcx,8), %zmm0, %zmm0
[2,5]     .    .    .    .    D======eeeeeeeeeeeE------R    .    .    .    .   vaddpd	20032(%r10,%rcx,8), %zmm0, %zmm1
[2,6]     .    .    .    .    D=================eeeeE--R    .    .    .    .   vaddpd	%zmm2, %zmm1, %zmm2
[2,7]     .    .    .    .    .D====================eeeeER  .    .    .    .   vmulpd	%zmm2, %zmm4, %zmm3
[2,8]     .    .    .    .    .D========================eER .    .    .    .   vmovupd	%zmm3, 10016(%r9,%rcx,8)
[2,9]     .    .    .    .    .DeeeeeeeeE-----------------R .    .    .    .   vmovupd	10096(%r8,%rcx,8), %zmm2
[2,10]    .    .    .    .    . DeeeeeeeeE----------------R .    .    .    .   vmovupd	10080(%r8,%rcx,8), %zmm0
[2,11]    .    .    .    .    . D=eE----------------------R .    .    .    .   leaq	(%r12,%r11), %r8
[2,12]    .    .    .    .    . D=eeeeeeeeeeeE------------R .    .    .    .   vaddpd	80(%r12,%rcx,8), %zmm0, %zmm0
[2,13]    .    .    .    .    .  D====eeeeeeeeeeeE--------R .    .    .    .   vaddpd	20096(%r10,%rcx,8), %zmm0, %zmm1
[2,14]    .    .    .    .    .  D===============eeeeE----R .    .    .    .   vaddpd	%zmm2, %zmm1, %zmm2
[2,15]    .    .    .    .    .  D===================eeeeER .    .    .    .   vmulpd	%zmm2, %zmm4, %zmm3
[2,16]    .    .    .    .    .  D=======================eER.    .    .    .   vmovupd	%zmm3, 10080(%r9,%rcx,8)
[2,17]    .    .    .    .    .   DeeeeeeeeE---------------R.    .    .    .   vmovupd	10160(%r8,%rcx,8), %zmm2
[2,18]    .    .    .    .    .   DeeeeeeeeE---------------R.    .    .    .   vmovupd	10144(%r8,%rcx,8), %zmm0
[2,19]    .    .    .    .    .   D=eE---------------------R.    .    .    .   leaq	(%r12,%r11), %r8
[2,20]    .    .    .    .    .    DeeeeeeeeeeeE-----------R.    .    .    .   vaddpd	144(%r12,%rcx,8), %zmm0, %zmm0
[2,21]    .    .    .    .    .    D====eeeeeeeeeeeE-------R.    .    .    .   vaddpd	20160(%r10,%rcx,8), %zmm0, %zmm1
[2,22]    .    .    .    .    .    D===============eeeeE---R.    .    .    .   vaddpd	%zmm2, %zmm1, %zmm2
[2,23]    .    .    .    .    .    D===================eeeeER    .    .    .   vmulpd	%zmm2, %zmm4, %zmm3
[2,24]    .    .    .    .    .    .D======================eER   .    .    .   vmovupd	%zmm3, 10144(%r9,%rcx,8)
[2,25]    .    .    .    .    .    .DeeeeeeeeE---------------R   .    .    .   vmovupd	10224(%r8,%rcx,8), %zmm2
[2,26]    .    .    .    .    .    .D=eeeeeeeeE--------------R   .    .    .   vmovupd	10208(%r8,%rcx,8), %zmm0
[2,27]    .    .    .    .    .    . D=eeeeeeeeeeeE----------R   .    .    .   vaddpd	208(%r12,%rcx,8), %zmm0, %zmm0
[2,28]    .    .    .    .    .    . D=====eeeeeeeeeeeE------R   .    .    .   vaddpd	20224(%r10,%rcx,8), %zmm0, %zmm1
[2,29]    .    .    .    .    .    . D================eeeeE--R   .    .    .   vaddpd	%zmm2, %zmm1, %zmm2
[2,30]    .    .    .    .    .    . D====================eeeeER .    .    .   vmulpd	%zmm2, %zmm4, %zmm3
[2,31]    .    .    .    .    .    .  D=======================eER.    .    .   vmovupd	%zmm3, 10208(%r9,%rcx,8)
[2,32]    .    .    .    .    .    .  DeE-----------------------R.    .    .   addq	$32, %rcx
[2,33]    .    .    .    .    .    .  D=eE----------------------R.    .    .   cmpq	%r14, %rcx
[2,34]    .    .    .    .    .    .  D==eE---------------------R.    .    .   jb	..B1.47
[3,0]     .    .    .    .    .    .  DeE-----------------------R.    .    .   leaq	(%r12,%r11), %r8
[3,1]     .    .    .    .    .    .   DeeeeeeeeE---------------R.    .    .   vmovupd	10032(%r8,%rcx,8), %zmm2
[3,2]     .    .    .    .    .    .   D=eeeeeeeeE--------------R.    .    .   vmovupd	10016(%r8,%rcx,8), %zmm0
[3,3]     .    .    .    .    .    .   D=eE---------------------R.    .    .   leaq	(%r12,%r11), %r8
[3,4]     .    .    .    .    .    .    D=eeeeeeeeeeeE----------R.    .    .   vaddpd	16(%r12,%rcx,8), %zmm0, %zmm0
[3,5]     .    .    .    .    .    .    D=====eeeeeeeeeeeE------R.    .    .   vaddpd	20032(%r10,%rcx,8), %zmm0, %zmm1
[3,6]     .    .    .    .    .    .    D================eeeeE--R.    .    .   vaddpd	%zmm2, %zmm1, %zmm2
[3,7]     .    .    .    .    .    .    D====================eeeeER   .    .   vmulpd	%zmm2, %zmm4, %zmm3
[3,8]     .    .    .    .    .    .    .D=======================eER  .    .   vmovupd	%zmm3, 10016(%r9,%rcx,8)
[3,9]     .    .    .    .    .    .    .DeeeeeeeeE----------------R  .    .   vmovupd	10096(%r8,%rcx,8), %zmm2
[3,10]    .    .    .    .    .    .    .D=eeeeeeeeE---------------R  .    .   vmovupd	10080(%r8,%rcx,8), %zmm0
[3,11]    .    .    .    .    .    .    . D=eE---------------------R  .    .   leaq	(%r12,%r11), %r8
[3,12]    .    .    .    .    .    .    . D==eeeeeeeeeeeE----------R  .    .   vaddpd	80(%r12,%rcx,8), %zmm0, %zmm0
[3,13]    .    .    .    .    .    .    . D=======eeeeeeeeeeeE-----R  .    .   vaddpd	20096(%r10,%rcx,8), %zmm0, %zmm1
[3,14]    .    .    .    .    .    .    . D==================eeeeE-R  .    .   vaddpd	%zmm2, %zmm1, %zmm2
[3,15]    .    .    .    .    .    .    .  D=====================eeeeER    .   vmulpd	%zmm2, %zmm4, %zmm3
[3,16]    .    .    .    .    .    .    .  D=========================eER   .   vmovupd	%zmm3, 10080(%r9,%rcx,8)
[3,17]    .    .    .    .    .    .    .  DeeeeeeeeE------------------R   .   vmovupd	10160(%r8,%rcx,8), %zmm2
[3,18]    .    .    .    .    .    .    .   DeeeeeeeeE-----------------R   .   vmovupd	10144(%r8,%rcx,8), %zmm0
[3,19]    .    .    .    .    .    .    .   D=eE-----------------------R   .   leaq	(%r12,%r11), %r8
[3,20]    .    .    .    .    .    .    .   D==eeeeeeeeeeeE------------R   .   vaddpd	144(%r12,%rcx,8), %zmm0, %zmm0
[3,21]    .    .    .    .    .    .    .    D=====eeeeeeeeeeeE--------R   .   vaddpd	20160(%r10,%rcx,8), %zmm0, %zmm1
[3,22]    .    .    .    .    .    .    .    D================eeeeE----R   .   vaddpd	%zmm2, %zmm1, %zmm2
[3,23]    .    .    .    .    .    .    .    D====================eeeeER   .   vmulpd	%zmm2, %zmm4, %zmm3
[3,24]    .    .    .    .    .    .    .    D========================eER  .   vmovupd	%zmm3, 10144(%r9,%rcx,8)
[3,25]    .    .    .    .    .    .    .    .DeeeeeeeeE----------------R  .   vmovupd	10224(%r8,%rcx,8), %zmm2
[3,26]    .    .    .    .    .    .    .    .D=eeeeeeeeE---------------R  .   vmovupd	10208(%r8,%rcx,8), %zmm0
[3,27]    .    .    .    .    .    .    .    .D===eeeeeeeeeeeE----------R  .   vaddpd	208(%r12,%rcx,8), %zmm0, %zmm0
[3,28]    .    .    .    .    .    .    .    . D======eeeeeeeeeeeE------R  .   vaddpd	20224(%r10,%rcx,8), %zmm0, %zmm1
[3,29]    .    .    .    .    .    .    .    . D=================eeeeE--R  .   vaddpd	%zmm2, %zmm1, %zmm2
[3,30]    .    .    .    .    .    .    .    . D=====================eeeeER.   vmulpd	%zmm2, %zmm4, %zmm3
[3,31]    .    .    .    .    .    .    .    . D=========================eER   vmovupd	%zmm3, 10208(%r9,%rcx,8)
[3,32]    .    .    .    .    .    .    .    .  DeE------------------------R   addq	$32, %rcx
[3,33]    .    .    .    .    .    .    .    .  D=eE-----------------------R   cmpq	%r14, %rcx
[3,34]    .    .    .    .    .    .    .    .  D==eE----------------------R   jb	..B1.47


Average Wait times (based on the timeline view):
[0]: Executions
[1]: Average time spent waiting in a scheduler's queue
[2]: Average time spent waiting in a scheduler's queue while ready
[3]: Average time elapsed from WB until retire stage

      [0]    [1]    [2]    [3]
0.     4     1.0    1.0    17.3      leaq	(%r12,%r11), %r8
1.     4     1.3    0.0    11.5      vmovupd	10032(%r8,%rcx,8), %zmm2
2.     4     1.8    0.8    10.8      vmovupd	10016(%r8,%rcx,8), %zmm0
3.     4     1.5    1.5    17.8      leaq	(%r12,%r11), %r8
4.     4     2.3    0.3    7.5       vaddpd	16(%r12,%rcx,8), %zmm0, %zmm0
5.     4     6.0    0.0    4.5       vaddpd	20032(%r10,%rcx,8), %zmm0, %zmm1
6.     4     17.0   0.0    1.5       vaddpd	%zmm2, %zmm1, %zmm2
7.     4     20.8   0.0    0.0       vmulpd	%zmm2, %zmm4, %zmm3
8.     4     24.3   0.0    0.0       vmovupd	%zmm3, 10016(%r9,%rcx,8)
9.     4     1.0    1.0    16.0      vmovupd	10096(%r8,%rcx,8), %zmm2
10.    4     1.5    1.5    15.3      vmovupd	10080(%r8,%rcx,8), %zmm0
11.    4     1.5    1.5    21.8      leaq	(%r12,%r11), %r8
12.    4     2.0    0.3    11.0      vaddpd	80(%r12,%rcx,8), %zmm0, %zmm0
13.    4     6.0    0.3    6.8       vaddpd	20096(%r10,%rcx,8), %zmm0, %zmm1
14.    4     17.0   0.0    2.8       vaddpd	%zmm2, %zmm1, %zmm2
15.    4     20.5   0.0    0.0       vmulpd	%zmm2, %zmm4, %zmm3
16.    4     24.3   0.0    0.0       vmovupd	%zmm3, 10080(%r9,%rcx,8)
17.    4     1.0    0.8    16.0      vmovupd	10160(%r8,%rcx,8), %zmm2
18.    4     1.3    1.3    15.3      vmovupd	10144(%r8,%rcx,8), %zmm0
19.    4     1.5    1.5    21.8      leaq	(%r12,%r11), %r8
20.    4     2.3    0.5    10.8      vaddpd	144(%r12,%rcx,8), %zmm0, %zmm0
21.    4     5.8    0.0    6.8       vaddpd	20160(%r10,%rcx,8), %zmm0, %zmm1
22.    4     16.8   0.0    2.8       vaddpd	%zmm2, %zmm1, %zmm2
23.    4     20.5   0.0    0.0       vmulpd	%zmm2, %zmm4, %zmm3
24.    4     24.3   0.0    0.0       vmovupd	%zmm3, 10144(%r9,%rcx,8)
25.    4     1.0    1.0    15.8      vmovupd	10224(%r8,%rcx,8), %zmm2
26.    4     1.8    1.8    14.8      vmovupd	10208(%r8,%rcx,8), %zmm0
27.    4     3.0    0.5    10.3      vaddpd	208(%r12,%rcx,8), %zmm0, %zmm0
28.    4     6.5    0.0    6.3       vaddpd	20224(%r10,%rcx,8), %zmm0, %zmm1
29.    4     17.3   0.0    2.3       vaddpd	%zmm2, %zmm1, %zmm2
30.    4     21.3   0.0    0.0       vmulpd	%zmm2, %zmm4, %zmm3
31.    4     25.0   0.0    0.0       vmovupd	%zmm3, 10208(%r9,%rcx,8)
32.    4     1.0    1.0    23.5      addq	$32, %rcx
33.    4     2.0    0.0    22.5      cmpq	%r14, %rcx
34.    4     2.8    0.0    21.5      jb	..B1.47
