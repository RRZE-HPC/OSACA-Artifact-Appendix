
[0] Code Region

Iterations:        100
Instructions:      2700
Total Cycles:      828
Total uOps:        4300

Dispatch Width:    6
uOps Per Cycle:    5.19
IPC:               3.26
Block RThroughput: 8.0


Instruction Info:
[1]: #uOps
[2]: Latency
[3]: RThroughput
[4]: MayLoad
[5]: MayStore
[6]: HasSideEffects (U)

[1]    [2]    [3]    [4]    [5]    [6]    Instructions:
 1      7     0.50    *                   vmovupd	10016(%r8,%rcx,8), %ymm1
 1      7     0.50    *                   vmovupd	10048(%r8,%rcx,8), %ymm6
 1      7     0.50    *                   vmovupd	10080(%r8,%rcx,8), %ymm11
 2      11    0.50    *                   vaddpd	16(%r12,%rcx,8), %ymm1, %ymm2
 2      11    0.50    *                   vaddpd	48(%r12,%rcx,8), %ymm6, %ymm7
 2      11    0.50    *                   vaddpd	80(%r12,%rcx,8), %ymm11, %ymm12
 2      11    0.50    *                   vaddpd	20032(%r10,%rcx,8), %ymm2, %ymm3
 2      11    0.50    *                   vaddpd	20064(%r10,%rcx,8), %ymm7, %ymm8
 2      11    0.50    *                   vaddpd	20096(%r10,%rcx,8), %ymm12, %ymm13
 2      11    0.50    *                   vaddpd	10032(%r8,%rcx,8), %ymm3, %ymm4
 2      11    0.50    *                   vaddpd	10064(%r8,%rcx,8), %ymm8, %ymm9
 2      11    0.50    *                   vaddpd	10096(%r8,%rcx,8), %ymm13, %ymm14
 1      7     0.50    *                   vmovupd	10112(%r8,%rcx,8), %ymm1
 1      4     0.50                        vmulpd	%ymm4, %ymm0, %ymm5
 1      4     0.50                        vmulpd	%ymm9, %ymm0, %ymm10
 1      4     0.50                        vmulpd	%ymm14, %ymm0, %ymm15
 2      11    0.50    *                   vaddpd	112(%r12,%rcx,8), %ymm1, %ymm2
 2      1     1.00           *            vmovupd	%ymm5, 10016(%r9,%rcx,8)
 2      1     1.00           *            vmovupd	%ymm10, 10048(%r9,%rcx,8)
 2      1     1.00           *            vmovupd	%ymm15, 10080(%r9,%rcx,8)
 2      11    0.50    *                   vaddpd	20128(%r10,%rcx,8), %ymm2, %ymm3
 2      11    0.50    *                   vaddpd	10128(%r8,%rcx,8), %ymm3, %ymm4
 1      4     0.50                        vmulpd	%ymm4, %ymm0, %ymm5
 2      1     1.00           *            vmovupd	%ymm5, 10112(%r9,%rcx,8)
 1      1     0.25                        addq	$16, %rcx
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
 -      -     8.00   8.00   8.02   8.03   4.00   1.49   1.51   3.95   

Resource pressure by instruction:
[0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    Instructions:
 -      -      -      -     0.70   0.30    -      -      -      -     vmovupd	10016(%r8,%rcx,8), %ymm1
 -      -      -      -     0.72   0.28    -      -      -      -     vmovupd	10048(%r8,%rcx,8), %ymm6
 -      -      -      -     0.62   0.38    -      -      -      -     vmovupd	10080(%r8,%rcx,8), %ymm11
 -      -     0.56   0.44   0.44   0.56    -      -      -      -     vaddpd	16(%r12,%rcx,8), %ymm1, %ymm2
 -      -     0.65   0.35   0.58   0.42    -      -      -      -     vaddpd	48(%r12,%rcx,8), %ymm6, %ymm7
 -      -     0.67   0.33   0.61   0.39    -      -      -      -     vaddpd	80(%r12,%rcx,8), %ymm11, %ymm12
 -      -     0.62   0.38   0.56   0.44    -      -      -      -     vaddpd	20032(%r10,%rcx,8), %ymm2, %ymm3
 -      -     0.62   0.38   0.41   0.59    -      -      -      -     vaddpd	20064(%r10,%rcx,8), %ymm7, %ymm8
 -      -     0.55   0.45   0.41   0.59    -      -      -      -     vaddpd	20096(%r10,%rcx,8), %ymm12, %ymm13
 -      -     0.53   0.47   0.48   0.52    -      -      -      -     vaddpd	10032(%r8,%rcx,8), %ymm3, %ymm4
 -      -     0.45   0.55   0.38   0.62    -      -      -      -     vaddpd	10064(%r8,%rcx,8), %ymm8, %ymm9
 -      -     0.70   0.30   0.41   0.59    -      -      -      -     vaddpd	10096(%r8,%rcx,8), %ymm13, %ymm14
 -      -      -      -     0.50   0.50    -      -      -      -     vmovupd	10112(%r8,%rcx,8), %ymm1
 -      -     0.23   0.77    -      -      -      -      -      -     vmulpd	%ymm4, %ymm0, %ymm5
 -      -     0.35   0.65    -      -      -      -      -      -     vmulpd	%ymm9, %ymm0, %ymm10
 -      -     0.39   0.61    -      -      -      -      -      -     vmulpd	%ymm14, %ymm0, %ymm15
 -      -     0.63   0.37   0.54   0.46    -      -      -      -     vaddpd	112(%r12,%rcx,8), %ymm1, %ymm2
 -      -      -      -      -     0.01   1.00    -      -     0.99   vmovupd	%ymm5, 10016(%r9,%rcx,8)
 -      -      -      -      -     0.01   1.00    -      -     0.99   vmovupd	%ymm10, 10048(%r9,%rcx,8)
 -      -      -      -     0.01   0.01   1.00    -      -     0.98   vmovupd	%ymm15, 10080(%r9,%rcx,8)
 -      -     0.30   0.70   0.30   0.70    -      -      -      -     vaddpd	20128(%r10,%rcx,8), %ymm2, %ymm3
 -      -     0.52   0.48   0.34   0.66    -      -      -      -     vaddpd	10128(%r8,%rcx,8), %ymm3, %ymm4
 -      -     0.23   0.77    -      -      -      -      -      -     vmulpd	%ymm4, %ymm0, %ymm5
 -      -      -      -     0.01    -     1.00    -      -     0.99   vmovupd	%ymm5, 10112(%r9,%rcx,8)
 -      -      -      -      -      -      -     0.99   0.01    -     addq	$16, %rcx
 -      -      -      -      -      -      -     0.50   0.50    -     cmpq	%r14, %rcx
 -      -      -      -      -      -      -      -     1.00    -     jb	..B1.47


Timeline view:
                    0123456789          0123456789          012345678
Index     0123456789          0123456789          0123456789         

[0,0]     DeeeeeeeER.    .    .    .    .    .    .    .    .    .  .   vmovupd	10016(%r8,%rcx,8), %ymm1
[0,1]     DeeeeeeeER.    .    .    .    .    .    .    .    .    .  .   vmovupd	10048(%r8,%rcx,8), %ymm6
[0,2]     D=eeeeeeeER    .    .    .    .    .    .    .    .    .  .   vmovupd	10080(%r8,%rcx,8), %ymm11
[0,3]     D=eeeeeeeeeeeER.    .    .    .    .    .    .    .    .  .   vaddpd	16(%r12,%rcx,8), %ymm1, %ymm2
[0,4]     .D=eeeeeeeeeeeER    .    .    .    .    .    .    .    .  .   vaddpd	48(%r12,%rcx,8), %ymm6, %ymm7
[0,5]     .D=eeeeeeeeeeeER    .    .    .    .    .    .    .    .  .   vaddpd	80(%r12,%rcx,8), %ymm11, %ymm12
[0,6]     .D====eeeeeeeeeeeER .    .    .    .    .    .    .    .  .   vaddpd	20032(%r10,%rcx,8), %ymm2, %ymm3
[0,7]     . D====eeeeeeeeeeeER.    .    .    .    .    .    .    .  .   vaddpd	20064(%r10,%rcx,8), %ymm7, %ymm8
[0,8]     . D====eeeeeeeeeeeER.    .    .    .    .    .    .    .  .   vaddpd	20096(%r10,%rcx,8), %ymm12, %ymm13
[0,9]     . D=======eeeeeeeeeeeER  .    .    .    .    .    .    .  .   vaddpd	10032(%r8,%rcx,8), %ymm3, %ymm4
[0,10]    .  D=======eeeeeeeeeeeER .    .    .    .    .    .    .  .   vaddpd	10064(%r8,%rcx,8), %ymm8, %ymm9
[0,11]    .  D=======eeeeeeeeeeeER .    .    .    .    .    .    .  .   vaddpd	10096(%r8,%rcx,8), %ymm13, %ymm14
[0,12]    .  DeeeeeeeE-----------R .    .    .    .    .    .    .  .   vmovupd	10112(%r8,%rcx,8), %ymm1
[0,13]    .  D=================eeeeER   .    .    .    .    .    .  .   vmulpd	%ymm4, %ymm0, %ymm5
[0,14]    .   D=================eeeeER  .    .    .    .    .    .  .   vmulpd	%ymm9, %ymm0, %ymm10
[0,15]    .   D=================eeeeER  .    .    .    .    .    .  .   vmulpd	%ymm14, %ymm0, %ymm15
[0,16]    .   DeeeeeeeeeeeE----------R  .    .    .    .    .    .  .   vaddpd	112(%r12,%rcx,8), %ymm1, %ymm2
[0,17]    .   D====================eER  .    .    .    .    .    .  .   vmovupd	%ymm5, 10016(%r9,%rcx,8)
[0,18]    .    D====================eER .    .    .    .    .    .  .   vmovupd	%ymm10, 10048(%r9,%rcx,8)
[0,19]    .    D=====================eER.    .    .    .    .    .  .   vmovupd	%ymm15, 10080(%r9,%rcx,8)
[0,20]    .    D===eeeeeeeeeeeE--------R.    .    .    .    .    .  .   vaddpd	20128(%r10,%rcx,8), %ymm2, %ymm3
[0,21]    .    .D======eeeeeeeeeeeE----R.    .    .    .    .    .  .   vaddpd	10128(%r8,%rcx,8), %ymm3, %ymm4
[0,22]    .    .D=================eeeeER.    .    .    .    .    .  .   vmulpd	%ymm4, %ymm0, %ymm5
[0,23]    .    .D=====================eER    .    .    .    .    .  .   vmovupd	%ymm5, 10112(%r9,%rcx,8)
[0,24]    .    .DeE---------------------R    .    .    .    .    .  .   addq	$16, %rcx
[0,25]    .    . DeE--------------------R    .    .    .    .    .  .   cmpq	%r14, %rcx
[0,26]    .    . D=eE-------------------R    .    .    .    .    .  .   jb	..B1.47
[1,0]     .    . DeeeeeeeE--------------R    .    .    .    .    .  .   vmovupd	10016(%r8,%rcx,8), %ymm1
[1,1]     .    . DeeeeeeeE--------------R    .    .    .    .    .  .   vmovupd	10048(%r8,%rcx,8), %ymm6
[1,2]     .    . D=eeeeeeeE-------------R    .    .    .    .    .  .   vmovupd	10080(%r8,%rcx,8), %ymm11
[1,3]     .    .  D=eeeeeeeeeeeE--------R    .    .    .    .    .  .   vaddpd	16(%r12,%rcx,8), %ymm1, %ymm2
[1,4]     .    .  D===eeeeeeeeeeeE------R    .    .    .    .    .  .   vaddpd	48(%r12,%rcx,8), %ymm6, %ymm7
[1,5]     .    .  D===eeeeeeeeeeeE------R    .    .    .    .    .  .   vaddpd	80(%r12,%rcx,8), %ymm11, %ymm12
[1,6]     .    .   D====eeeeeeeeeeeE----R    .    .    .    .    .  .   vaddpd	20032(%r10,%rcx,8), %ymm2, %ymm3
[1,7]     .    .   D======eeeeeeeeeeeE--R    .    .    .    .    .  .   vaddpd	20064(%r10,%rcx,8), %ymm7, %ymm8
[1,8]     .    .   D======eeeeeeeeeeeE--R    .    .    .    .    .  .   vaddpd	20096(%r10,%rcx,8), %ymm12, %ymm13
[1,9]     .    .    D=======eeeeeeeeeeeER    .    .    .    .    .  .   vaddpd	10032(%r8,%rcx,8), %ymm3, %ymm4
[1,10]    .    .    D=========eeeeeeeeeeeER  .    .    .    .    .  .   vaddpd	10064(%r8,%rcx,8), %ymm8, %ymm9
[1,11]    .    .    D=========eeeeeeeeeeeER  .    .    .    .    .  .   vaddpd	10096(%r8,%rcx,8), %ymm13, %ymm14
[1,12]    .    .    .D=eeeeeeeE-----------R  .    .    .    .    .  .   vmovupd	10112(%r8,%rcx,8), %ymm1
[1,13]    .    .    .D=================eeeeER.    .    .    .    .  .   vmulpd	%ymm4, %ymm0, %ymm5
[1,14]    .    .    .D===================eeeeER   .    .    .    .  .   vmulpd	%ymm9, %ymm0, %ymm10
[1,15]    .    .    .D===================eeeeER   .    .    .    .  .   vmulpd	%ymm14, %ymm0, %ymm15
[1,16]    .    .    .D==eeeeeeeeeeeE----------R   .    .    .    .  .   vaddpd	112(%r12,%rcx,8), %ymm1, %ymm2
[1,17]    .    .    . D====================eE-R   .    .    .    .  .   vmovupd	%ymm5, 10016(%r9,%rcx,8)
[1,18]    .    .    . D======================eER  .    .    .    .  .   vmovupd	%ymm10, 10048(%r9,%rcx,8)
[1,19]    .    .    . D=======================eER .    .    .    .  .   vmovupd	%ymm15, 10080(%r9,%rcx,8)
[1,20]    .    .    .  D====eeeeeeeeeeeE--------R .    .    .    .  .   vaddpd	20128(%r10,%rcx,8), %ymm2, %ymm3
[1,21]    .    .    .  D=========eeeeeeeeeeeE---R .    .    .    .  .   vaddpd	10128(%r8,%rcx,8), %ymm3, %ymm4
[1,22]    .    .    .  D====================eeeeER.    .    .    .  .   vmulpd	%ymm4, %ymm0, %ymm5
[1,23]    .    .    .   D=======================eER    .    .    .  .   vmovupd	%ymm5, 10112(%r9,%rcx,8)
[1,24]    .    .    .   DeE-----------------------R    .    .    .  .   addq	$16, %rcx
[1,25]    .    .    .   D=eE----------------------R    .    .    .  .   cmpq	%r14, %rcx
[1,26]    .    .    .   D==eE---------------------R    .    .    .  .   jb	..B1.47
[2,0]     .    .    .   D==eeeeeeeE---------------R    .    .    .  .   vmovupd	10016(%r8,%rcx,8), %ymm1
[2,1]     .    .    .    D=eeeeeeeE---------------R    .    .    .  .   vmovupd	10048(%r8,%rcx,8), %ymm6
[2,2]     .    .    .    D===eeeeeeeE-------------R    .    .    .  .   vmovupd	10080(%r8,%rcx,8), %ymm11
[2,3]     .    .    .    D===eeeeeeeeeeeE---------R    .    .    .  .   vaddpd	16(%r12,%rcx,8), %ymm1, %ymm2
[2,4]     .    .    .    D=====eeeeeeeeeeeE-------R    .    .    .  .   vaddpd	48(%r12,%rcx,8), %ymm6, %ymm7
[2,5]     .    .    .    .D======eeeeeeeeeeeE-----R    .    .    .  .   vaddpd	80(%r12,%rcx,8), %ymm11, %ymm12
[2,6]     .    .    .    .D=======eeeeeeeeeeeE----R    .    .    .  .   vaddpd	20032(%r10,%rcx,8), %ymm2, %ymm3
[2,7]     .    .    .    .D========eeeeeeeeeeeE---R    .    .    .  .   vaddpd	20064(%r10,%rcx,8), %ymm7, %ymm8
[2,8]     .    .    .    . D=========eeeeeeeeeeeE-R    .    .    .  .   vaddpd	20096(%r10,%rcx,8), %ymm12, %ymm13
[2,9]     .    .    .    . D==========eeeeeeeeeeeER    .    .    .  .   vaddpd	10032(%r8,%rcx,8), %ymm3, %ymm4
[2,10]    .    .    .    . D===========eeeeeeeeeeeER   .    .    .  .   vaddpd	10064(%r8,%rcx,8), %ymm8, %ymm9
[2,11]    .    .    .    .  D=============eeeeeeeeeeeER.    .    .  .   vaddpd	10096(%r8,%rcx,8), %ymm13, %ymm14
[2,12]    .    .    .    .  D==eeeeeeeE---------------R.    .    .  .   vmovupd	10112(%r8,%rcx,8), %ymm1
[2,13]    .    .    .    .  D====================eeeeER.    .    .  .   vmulpd	%ymm4, %ymm0, %ymm5
[2,14]    .    .    .    .  D=====================eeeeER    .    .  .   vmulpd	%ymm9, %ymm0, %ymm10
[2,15]    .    .    .    .  D========================eeeeER .    .  .   vmulpd	%ymm14, %ymm0, %ymm15
[2,16]    .    .    .    .   D=====eeeeeeeeeeeE-----------R .    .  .   vaddpd	112(%r12,%rcx,8), %ymm1, %ymm2
[2,17]    .    .    .    .   D=======================eE---R .    .  .   vmovupd	%ymm5, 10016(%r9,%rcx,8)
[2,18]    .    .    .    .   D========================eE--R .    .  .   vmovupd	%ymm10, 10048(%r9,%rcx,8)
[2,19]    .    .    .    .    D==========================eER.    .  .   vmovupd	%ymm15, 10080(%r9,%rcx,8)
[2,20]    .    .    .    .    D=========eeeeeeeeeeeE-------R.    .  .   vaddpd	20128(%r10,%rcx,8), %ymm2, %ymm3
[2,21]    .    .    .    .    D=============eeeeeeeeeeeE---R.    .  .   vaddpd	10128(%r8,%rcx,8), %ymm3, %ymm4
[2,22]    .    .    .    .    .D=======================eeeeER    .  .   vmulpd	%ymm4, %ymm0, %ymm5
[2,23]    .    .    .    .    .D===========================eER   .  .   vmovupd	%ymm5, 10112(%r9,%rcx,8)
[2,24]    .    .    .    .    .DeE---------------------------R   .  .   addq	$16, %rcx
[2,25]    .    .    .    .    .D=eE--------------------------R   .  .   cmpq	%r14, %rcx
[2,26]    .    .    .    .    .D==eE-------------------------R   .  .   jb	..B1.47
[3,0]     .    .    .    .    . D=eeeeeeeE-------------------R   .  .   vmovupd	10016(%r8,%rcx,8), %ymm1
[3,1]     .    .    .    .    . D===eeeeeeeE-----------------R   .  .   vmovupd	10048(%r8,%rcx,8), %ymm6
[3,2]     .    .    .    .    . D===eeeeeeeE-----------------R   .  .   vmovupd	10080(%r8,%rcx,8), %ymm11
[3,3]     .    .    .    .    . D====eeeeeeeeeeeE------------R   .  .   vaddpd	16(%r12,%rcx,8), %ymm1, %ymm2
[3,4]     .    .    .    .    .  D====eeeeeeeeeeeE-----------R   .  .   vaddpd	48(%r12,%rcx,8), %ymm6, %ymm7
[3,5]     .    .    .    .    .  D======eeeeeeeeeeeE---------R   .  .   vaddpd	80(%r12,%rcx,8), %ymm11, %ymm12
[3,6]     .    .    .    .    .  D========eeeeeeeeeeeE-------R   .  .   vaddpd	20032(%r10,%rcx,8), %ymm2, %ymm3
[3,7]     .    .    .    .    .   D========eeeeeeeeeeeE------R   .  .   vaddpd	20064(%r10,%rcx,8), %ymm7, %ymm8
[3,8]     .    .    .    .    .   D==========eeeeeeeeeeeE----R   .  .   vaddpd	20096(%r10,%rcx,8), %ymm12, %ymm13
[3,9]     .    .    .    .    .   D===========eeeeeeeeeeeE---R   .  .   vaddpd	10032(%r8,%rcx,8), %ymm3, %ymm4
[3,10]    .    .    .    .    .    D===========eeeeeeeeeeeE--R   .  .   vaddpd	10064(%r8,%rcx,8), %ymm8, %ymm9
[3,11]    .    .    .    .    .    D=============eeeeeeeeeeeER   .  .   vaddpd	10096(%r8,%rcx,8), %ymm13, %ymm14
[3,12]    .    .    .    .    .    D===eeeeeeeE--------------R   .  .   vmovupd	10112(%r8,%rcx,8), %ymm1
[3,13]    .    .    .    .    .    D=====================eeeeER  .  .   vmulpd	%ymm4, %ymm0, %ymm5
[3,14]    .    .    .    .    .    .D=====================eeeeER .  .   vmulpd	%ymm9, %ymm0, %ymm10
[3,15]    .    .    .    .    .    .D=======================eeeeER  .   vmulpd	%ymm14, %ymm0, %ymm15
[3,16]    .    .    .    .    .    .D======eeeeeeeeeeeE----------R  .   vaddpd	112(%r12,%rcx,8), %ymm1, %ymm2
[3,17]    .    .    .    .    .    .D========================eE--R  .   vmovupd	%ymm5, 10016(%r9,%rcx,8)
[3,18]    .    .    .    .    .    . D========================eE-R  .   vmovupd	%ymm10, 10048(%r9,%rcx,8)
[3,19]    .    .    .    .    .    . D==========================eER .   vmovupd	%ymm15, 10080(%r9,%rcx,8)
[3,20]    .    .    .    .    .    . D=========eeeeeeeeeeeE-------R .   vaddpd	20128(%r10,%rcx,8), %ymm2, %ymm3
[3,21]    .    .    .    .    .    .  D============eeeeeeeeeeeE---R .   vaddpd	10128(%r8,%rcx,8), %ymm3, %ymm4
[3,22]    .    .    .    .    .    .  D=======================eeeeER.   vmulpd	%ymm4, %ymm0, %ymm5
[3,23]    .    .    .    .    .    .  D===========================eER   vmovupd	%ymm5, 10112(%r9,%rcx,8)
[3,24]    .    .    .    .    .    .  DeE---------------------------R   addq	$16, %rcx
[3,25]    .    .    .    .    .    .   DeE--------------------------R   cmpq	%r14, %rcx
[3,26]    .    .    .    .    .    .   D=eE-------------------------R   jb	..B1.47


Average Wait times (based on the timeline view):
[0]: Executions
[1]: Average time spent waiting in a scheduler's queue
[2]: Average time spent waiting in a scheduler's queue while ready
[3]: Average time elapsed from WB until retire stage

      [0]    [1]    [2]    [3]
0.     4     1.8    0.8    12.0      vmovupd	10016(%r8,%rcx,8), %ymm1
1.     4     2.0    1.3    11.5      vmovupd	10048(%r8,%rcx,8), %ymm6
2.     4     3.0    2.3    10.8      vmovupd	10080(%r8,%rcx,8), %ymm11
3.     4     3.3    2.0    7.3       vaddpd	16(%r12,%rcx,8), %ymm1, %ymm2
4.     4     4.3    3.0    6.0       vaddpd	48(%r12,%rcx,8), %ymm6, %ymm7
5.     4     5.0    3.0    5.0       vaddpd	80(%r12,%rcx,8), %ymm11, %ymm12
6.     4     6.8    0.5    3.8       vaddpd	20032(%r10,%rcx,8), %ymm2, %ymm3
7.     4     7.5    0.3    2.8       vaddpd	20064(%r10,%rcx,8), %ymm7, %ymm8
8.     4     8.3    0.3    1.8       vaddpd	20096(%r10,%rcx,8), %ymm12, %ymm13
9.     4     9.8    0.0    0.8       vaddpd	10032(%r8,%rcx,8), %ymm3, %ymm4
10.    4     10.5   0.0    0.5       vaddpd	10064(%r8,%rcx,8), %ymm8, %ymm9
11.    4     11.5   0.3    0.0       vaddpd	10096(%r8,%rcx,8), %ymm13, %ymm14
12.    4     2.5    2.5    12.8      vmovupd	10112(%r8,%rcx,8), %ymm1
13.    4     19.8   0.0    0.0       vmulpd	%ymm4, %ymm0, %ymm5
14.    4     20.5   0.0    0.0       vmulpd	%ymm9, %ymm0, %ymm10
15.    4     21.8   0.0    0.0       vmulpd	%ymm14, %ymm0, %ymm15
16.    4     4.3    2.5    10.3      vaddpd	112(%r12,%rcx,8), %ymm1, %ymm2
17.    4     22.8   0.0    1.5       vmovupd	%ymm5, 10016(%r9,%rcx,8)
18.    4     23.5   0.0    0.8       vmovupd	%ymm10, 10048(%r9,%rcx,8)
19.    4     25.0   0.0    0.0       vmovupd	%ymm15, 10080(%r9,%rcx,8)
20.    4     7.3    0.3    7.5       vaddpd	20128(%r10,%rcx,8), %ymm2, %ymm3
21.    4     11.0   0.3    3.3       vaddpd	10128(%r8,%rcx,8), %ymm3, %ymm4
22.    4     21.8   0.0    0.0       vmulpd	%ymm4, %ymm0, %ymm5
23.    4     25.5   0.0    0.0       vmovupd	%ymm5, 10112(%r9,%rcx,8)
24.    4     1.0    1.0    24.5      addq	$16, %rcx
25.    4     1.5    0.0    23.5      cmpq	%r14, %rcx
26.    4     2.5    0.0    22.5      jb	..B1.47
