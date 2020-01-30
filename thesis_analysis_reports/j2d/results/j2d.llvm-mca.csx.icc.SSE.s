
[0] Code Region

Iterations:        100
Instructions:      3000
Total Cycles:      825
Total uOps:        4000

Dispatch Width:    6
uOps Per Cycle:    4.85
IPC:               3.64
Block RThroughput: 8.0


Instruction Info:
[1]: #uOps
[2]: Latency
[3]: RThroughput
[4]: MayLoad
[5]: MayStore
[6]: HasSideEffects (U)

[1]    [2]    [3]    [4]    [5]    [6]    Instructions:
 1      6     0.50    *                   movups	10016(%r8,%rcx,8), %xmm0
 2      10    0.50    *                   addpd	16(%r12,%rcx,8), %xmm0
 2      10    0.50    *                   addpd	20032(%r10,%rcx,8), %xmm0
 1      6     0.50    *                   movups	10032(%r8,%rcx,8), %xmm2
 1      6     0.50    *                   movups	32(%r12,%rcx,8), %xmm1
 1      4     0.50                        addpd	%xmm2, %xmm0
 1      4     0.50                        addpd	%xmm1, %xmm2
 1      4     0.50                        mulpd	%xmm7, %xmm0
 2      10    0.50    *                   addpd	20048(%r10,%rcx,8), %xmm2
 1      6     0.50    *                   movups	10048(%r8,%rcx,8), %xmm4
 1      6     0.50    *                   movups	48(%r12,%rcx,8), %xmm3
 1      4     0.50                        addpd	%xmm4, %xmm2
 1      4     0.50                        addpd	%xmm3, %xmm4
 1      4     0.50                        mulpd	%xmm7, %xmm2
 2      10    0.50    *                   addpd	20064(%r10,%rcx,8), %xmm4
 1      6     0.50    *                   movups	10064(%r8,%rcx,8), %xmm6
 1      6     0.50    *                   movups	64(%r12,%rcx,8), %xmm5
 1      4     0.50                        addpd	%xmm6, %xmm4
 1      4     0.50                        addpd	%xmm5, %xmm6
 1      4     0.50                        mulpd	%xmm7, %xmm4
 2      10    0.50    *                   addpd	20080(%r10,%rcx,8), %xmm6
 2      10    0.50    *                   addpd	10080(%r8,%rcx,8), %xmm6
 1      4     0.50                        mulpd	%xmm7, %xmm6
 2      1     1.00           *            movups	%xmm0, 10016(%r9,%rcx,8)
 2      1     1.00           *            movups	%xmm2, 10032(%r9,%rcx,8)
 2      1     1.00           *            movups	%xmm4, 10048(%r9,%rcx,8)
 2      1     1.00           *            movups	%xmm6, 10064(%r9,%rcx,8)
 1      1     0.25                        addq	$8, %rcx
 1      1     0.25                        cmpq	%r14, %rcx
 1      1     0.50                        jb	..B1.42


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
 -      -     8.00   8.00   6.53   6.54   4.00   1.49   1.51   3.93   

Resource pressure by instruction:
[0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    Instructions:
 -      -      -      -     0.49   0.51    -      -      -      -     movups	10016(%r8,%rcx,8), %xmm0
 -      -     0.94   0.06   0.52   0.48    -      -      -      -     addpd	16(%r12,%rcx,8), %xmm0
 -      -     0.64   0.36   0.49   0.51    -      -      -      -     addpd	20032(%r10,%rcx,8), %xmm0
 -      -      -      -     0.47   0.53    -      -      -      -     movups	10032(%r8,%rcx,8), %xmm2
 -      -      -      -     0.50   0.50    -      -      -      -     movups	32(%r12,%rcx,8), %xmm1
 -      -     0.96   0.04    -      -      -      -      -      -     addpd	%xmm2, %xmm0
 -      -     0.01   0.99    -      -      -      -      -      -     addpd	%xmm1, %xmm2
 -      -     0.98   0.02    -      -      -      -      -      -     mulpd	%xmm7, %xmm0
 -      -     0.94   0.06   0.53   0.47    -      -      -      -     addpd	20048(%r10,%rcx,8), %xmm2
 -      -      -      -     0.48   0.52    -      -      -      -     movups	10048(%r8,%rcx,8), %xmm4
 -      -      -      -     0.51   0.49    -      -      -      -     movups	48(%r12,%rcx,8), %xmm3
 -      -     0.67   0.33    -      -      -      -      -      -     addpd	%xmm4, %xmm2
 -      -      -     1.00    -      -      -      -      -      -     addpd	%xmm3, %xmm4
 -      -     0.99   0.01    -      -      -      -      -      -     mulpd	%xmm7, %xmm2
 -      -     0.34   0.66   0.51   0.49    -      -      -      -     addpd	20064(%r10,%rcx,8), %xmm4
 -      -      -      -     0.48   0.52    -      -      -      -     movups	10064(%r8,%rcx,8), %xmm6
 -      -      -      -     0.49   0.51    -      -      -      -     movups	64(%r12,%rcx,8), %xmm5
 -      -     0.04   0.96    -      -      -      -      -      -     addpd	%xmm6, %xmm4
 -      -     0.02   0.98    -      -      -      -      -      -     addpd	%xmm5, %xmm6
 -      -     0.38   0.62    -      -      -      -      -      -     mulpd	%xmm7, %xmm4
 -      -     0.04   0.96   0.52   0.48    -      -      -      -     addpd	20080(%r10,%rcx,8), %xmm6
 -      -     0.05   0.95   0.51   0.49    -      -      -      -     addpd	10080(%r8,%rcx,8), %xmm6
 -      -     1.00    -      -      -      -      -      -      -     mulpd	%xmm7, %xmm6
 -      -      -      -      -     0.01   1.00    -      -     0.99   movups	%xmm0, 10016(%r9,%rcx,8)
 -      -      -      -      -     0.01   1.00    -      -     0.99   movups	%xmm2, 10032(%r9,%rcx,8)
 -      -      -      -     0.02   0.02   1.00    -      -     0.96   movups	%xmm4, 10048(%r9,%rcx,8)
 -      -      -      -     0.01    -     1.00    -      -     0.99   movups	%xmm6, 10064(%r9,%rcx,8)
 -      -      -      -      -      -      -     0.99   0.01    -     addq	$8, %rcx
 -      -      -      -      -      -      -     0.50   0.50    -     cmpq	%r14, %rcx
 -      -      -      -      -      -      -      -     1.00    -     jb	..B1.42


Timeline view:
                    0123456789          0123456789          0123456
Index     0123456789          0123456789          0123456789       

[0,0]     DeeeeeeER .    .    .    .    .    .    .    .    .    ..   movups	10016(%r8,%rcx,8), %xmm0
[0,1]     DeeeeeeeeeeER  .    .    .    .    .    .    .    .    ..   addpd	16(%r12,%rcx,8), %xmm0
[0,2]     D====eeeeeeeeeeER   .    .    .    .    .    .    .    ..   addpd	20032(%r10,%rcx,8), %xmm0
[0,3]     D=eeeeeeE-------R   .    .    .    .    .    .    .    ..   movups	10032(%r8,%rcx,8), %xmm2
[0,4]     .DeeeeeeE-------R   .    .    .    .    .    .    .    ..   movups	32(%r12,%rcx,8), %xmm1
[0,5]     .D=============eeeeER    .    .    .    .    .    .    ..   addpd	%xmm2, %xmm0
[0,6]     .D======eeeeE-------R    .    .    .    .    .    .    ..   addpd	%xmm1, %xmm2
[0,7]     .D=================eeeeER.    .    .    .    .    .    ..   mulpd	%xmm7, %xmm0
[0,8]     .D======eeeeeeeeeeE-----R.    .    .    .    .    .    ..   addpd	20048(%r10,%rcx,8), %xmm2
[0,9]     . DeeeeeeE--------------R.    .    .    .    .    .    ..   movups	10048(%r8,%rcx,8), %xmm4
[0,10]    . DeeeeeeE--------------R.    .    .    .    .    .    ..   movups	48(%r12,%rcx,8), %xmm3
[0,11]    . D===============eeeeE-R.    .    .    .    .    .    ..   addpd	%xmm4, %xmm2
[0,12]    . D======eeeeE----------R.    .    .    .    .    .    ..   addpd	%xmm3, %xmm4
[0,13]    . D===================eeeeER  .    .    .    .    .    ..   mulpd	%xmm7, %xmm2
[0,14]    .  D=====eeeeeeeeeeE-------R  .    .    .    .    .    ..   addpd	20064(%r10,%rcx,8), %xmm4
[0,15]    .  DeeeeeeE----------------R  .    .    .    .    .    ..   movups	10064(%r8,%rcx,8), %xmm6
[0,16]    .  DeeeeeeE----------------R  .    .    .    .    .    ..   movups	64(%r12,%rcx,8), %xmm5
[0,17]    .  D===============eeeeE---R  .    .    .    .    .    ..   addpd	%xmm6, %xmm4
[0,18]    .  D======eeeeE------------R  .    .    .    .    .    ..   addpd	%xmm5, %xmm6
[0,19]    .   D==================eeeeER .    .    .    .    .    ..   mulpd	%xmm7, %xmm4
[0,20]    .   D=====eeeeeeeeeeE-------R .    .    .    .    .    ..   addpd	20080(%r10,%rcx,8), %xmm6
[0,21]    .   D=========eeeeeeeeeeE---R .    .    .    .    .    ..   addpd	10080(%r8,%rcx,8), %xmm6
[0,22]    .   D===================eeeeER.    .    .    .    .    ..   mulpd	%xmm7, %xmm6
[0,23]    .    D==================eE---R.    .    .    .    .    ..   movups	%xmm0, 10016(%r9,%rcx,8)
[0,24]    .    D====================eE-R.    .    .    .    .    ..   movups	%xmm2, 10032(%r9,%rcx,8)
[0,25]    .    D=====================eER.    .    .    .    .    ..   movups	%xmm4, 10048(%r9,%rcx,8)
[0,26]    .    .D=====================eER    .    .    .    .    ..   movups	%xmm6, 10064(%r9,%rcx,8)
[0,27]    .    .DeE---------------------R    .    .    .    .    ..   addq	$8, %rcx
[0,28]    .    .D=eE--------------------R    .    .    .    .    ..   cmpq	%r14, %rcx
[0,29]    .    .D==eE-------------------R    .    .    .    .    ..   jb	..B1.42
[1,0]     .    .D=eeeeeeE---------------R    .    .    .    .    ..   movups	10016(%r8,%rcx,8), %xmm0
[1,1]     .    . D===eeeeeeeeeeE--------R    .    .    .    .    ..   addpd	16(%r12,%rcx,8), %xmm0
[1,2]     .    . D=======eeeeeeeeeeE----R    .    .    .    .    ..   addpd	20032(%r10,%rcx,8), %xmm0
[1,3]     .    . D=eeeeeeE--------------R    .    .    .    .    ..   movups	10032(%r8,%rcx,8), %xmm2
[1,4]     .    . D==eeeeeeE-------------R    .    .    .    .    ..   movups	32(%r12,%rcx,8), %xmm1
[1,5]     .    .  D================eeeeER    .    .    .    .    ..   addpd	%xmm2, %xmm0
[1,6]     .    .  D=======eeeeE---------R    .    .    .    .    ..   addpd	%xmm1, %xmm2
[1,7]     .    .  D====================eeeeER.    .    .    .    ..   mulpd	%xmm7, %xmm0
[1,8]     .    .  D=======eeeeeeeeeeE-------R.    .    .    .    ..   addpd	20048(%r10,%rcx,8), %xmm2
[1,9]     .    .  D==eeeeeeE----------------R.    .    .    .    ..   movups	10048(%r8,%rcx,8), %xmm4
[1,10]    .    .   D==eeeeeeE---------------R.    .    .    .    ..   movups	48(%r12,%rcx,8), %xmm3
[1,11]    .    .   D================eeeeE---R.    .    .    .    ..   addpd	%xmm4, %xmm2
[1,12]    .    .   D========eeeeE-----------R.    .    .    .    ..   addpd	%xmm3, %xmm4
[1,13]    .    .   D====================eeeeER    .    .    .    ..   mulpd	%xmm7, %xmm2
[1,14]    .    .   D==========eeeeeeeeeeE----R    .    .    .    ..   addpd	20064(%r10,%rcx,8), %xmm4
[1,15]    .    .    D=eeeeeeE----------------R    .    .    .    ..   movups	10064(%r8,%rcx,8), %xmm6
[1,16]    .    .    D==eeeeeeE---------------R    .    .    .    ..   movups	64(%r12,%rcx,8), %xmm5
[1,17]    .    .    D===================eeeeER    .    .    .    ..   addpd	%xmm6, %xmm4
[1,18]    .    .    D=========eeeeE----------R    .    .    .    ..   addpd	%xmm5, %xmm6
[1,19]    .    .    D=======================eeeeER.    .    .    ..   mulpd	%xmm7, %xmm4
[1,20]    .    .    .D=========eeeeeeeeeeE-------R.    .    .    ..   addpd	20080(%r10,%rcx,8), %xmm6
[1,21]    .    .    .D=============eeeeeeeeeeE---R.    .    .    ..   addpd	10080(%r8,%rcx,8), %xmm6
[1,22]    .    .    .D=======================eeeeER    .    .    ..   mulpd	%xmm7, %xmm6
[1,23]    .    .    . D======================eE---R    .    .    ..   movups	%xmm0, 10016(%r9,%rcx,8)
[1,24]    .    .    . D=======================eE--R    .    .    ..   movups	%xmm2, 10032(%r9,%rcx,8)
[1,25]    .    .    . D=========================eER    .    .    ..   movups	%xmm4, 10048(%r9,%rcx,8)
[1,26]    .    .    .  D=========================eER   .    .    ..   movups	%xmm6, 10064(%r9,%rcx,8)
[1,27]    .    .    .  DeE-------------------------R   .    .    ..   addq	$8, %rcx
[1,28]    .    .    .  D=eE------------------------R   .    .    ..   cmpq	%r14, %rcx
[1,29]    .    .    .  D==eE-----------------------R   .    .    ..   jb	..B1.42
[2,0]     .    .    .  D=eeeeeeE-------------------R   .    .    ..   movups	10016(%r8,%rcx,8), %xmm0
[2,1]     .    .    .   D==eeeeeeeeeeE-------------R   .    .    ..   addpd	16(%r12,%rcx,8), %xmm0
[2,2]     .    .    .   D======eeeeeeeeeeE---------R   .    .    ..   addpd	20032(%r10,%rcx,8), %xmm0
[2,3]     .    .    .   D=eeeeeeE------------------R   .    .    ..   movups	10032(%r8,%rcx,8), %xmm2
[2,4]     .    .    .   D==eeeeeeE-----------------R   .    .    ..   movups	32(%r12,%rcx,8), %xmm1
[2,5]     .    .    .    D===============eeeeE-----R   .    .    ..   addpd	%xmm2, %xmm0
[2,6]     .    .    .    D=======eeeeE-------------R   .    .    ..   addpd	%xmm1, %xmm2
[2,7]     .    .    .    D===================eeeeE-R   .    .    ..   mulpd	%xmm7, %xmm0
[2,8]     .    .    .    D========eeeeeeeeeeE------R   .    .    ..   addpd	20048(%r10,%rcx,8), %xmm2
[2,9]     .    .    .    D==eeeeeeE----------------R   .    .    ..   movups	10048(%r8,%rcx,8), %xmm4
[2,10]    .    .    .    .D=eeeeeeE----------------R   .    .    ..   movups	48(%r12,%rcx,8), %xmm3
[2,11]    .    .    .    .D=================eeeeE--R   .    .    ..   addpd	%xmm4, %xmm2
[2,12]    .    .    .    .D=========eeeeE----------R   .    .    ..   addpd	%xmm3, %xmm4
[2,13]    .    .    .    .D=====================eeeeER .    .    ..   mulpd	%xmm7, %xmm2
[2,14]    .    .    .    .D==========eeeeeeeeeeE-----R .    .    ..   addpd	20064(%r10,%rcx,8), %xmm4
[2,15]    .    .    .    . D=eeeeeeE-----------------R .    .    ..   movups	10064(%r8,%rcx,8), %xmm6
[2,16]    .    .    .    . D=eeeeeeE-----------------R .    .    ..   movups	64(%r12,%rcx,8), %xmm5
[2,17]    .    .    .    . D===================eeeeE-R .    .    ..   addpd	%xmm6, %xmm4
[2,18]    .    .    .    . D=========eeeeE-----------R .    .    ..   addpd	%xmm5, %xmm6
[2,19]    .    .    .    . D=======================eeeeER   .    ..   mulpd	%xmm7, %xmm4
[2,20]    .    .    .    .  D=========eeeeeeeeeeE-------R   .    ..   addpd	20080(%r10,%rcx,8), %xmm6
[2,21]    .    .    .    .  D=============eeeeeeeeeeE---R   .    ..   addpd	10080(%r8,%rcx,8), %xmm6
[2,22]    .    .    .    .  D=======================eeeeER  .    ..   mulpd	%xmm7, %xmm6
[2,23]    .    .    .    .   D======================eE---R  .    ..   movups	%xmm0, 10016(%r9,%rcx,8)
[2,24]    .    .    .    .   D=======================eE--R  .    ..   movups	%xmm2, 10032(%r9,%rcx,8)
[2,25]    .    .    .    .   D=========================eER  .    ..   movups	%xmm4, 10048(%r9,%rcx,8)
[2,26]    .    .    .    .    D=========================eER .    ..   movups	%xmm6, 10064(%r9,%rcx,8)
[2,27]    .    .    .    .    DeE-------------------------R .    ..   addq	$8, %rcx
[2,28]    .    .    .    .    D=eE------------------------R .    ..   cmpq	%r14, %rcx
[2,29]    .    .    .    .    D==eE-----------------------R .    ..   jb	..B1.42
[3,0]     .    .    .    .    D=eeeeeeE-------------------R .    ..   movups	10016(%r8,%rcx,8), %xmm0
[3,1]     .    .    .    .    .DeeeeeeeeeeE---------------R .    ..   addpd	16(%r12,%rcx,8), %xmm0
[3,2]     .    .    .    .    .D======eeeeeeeeeeE---------R .    ..   addpd	20032(%r10,%rcx,8), %xmm0
[3,3]     .    .    .    .    .D=eeeeeeE------------------R .    ..   movups	10032(%r8,%rcx,8), %xmm2
[3,4]     .    .    .    .    .D=eeeeeeE------------------R .    ..   movups	32(%r12,%rcx,8), %xmm1
[3,5]     .    .    .    .    . D===============eeeeE-----R .    ..   addpd	%xmm2, %xmm0
[3,6]     .    .    .    .    . D======eeeeE--------------R .    ..   addpd	%xmm1, %xmm2
[3,7]     .    .    .    .    . D===================eeeeE-R .    ..   mulpd	%xmm7, %xmm0
[3,8]     .    .    .    .    . D========eeeeeeeeeeE------R .    ..   addpd	20048(%r10,%rcx,8), %xmm2
[3,9]     .    .    .    .    . D=eeeeeeE-----------------R .    ..   movups	10048(%r8,%rcx,8), %xmm4
[3,10]    .    .    .    .    .  D=eeeeeeE----------------R .    ..   movups	48(%r12,%rcx,8), %xmm3
[3,11]    .    .    .    .    .  D=================eeeeE--R .    ..   addpd	%xmm4, %xmm2
[3,12]    .    .    .    .    .  D========eeeeE-----------R .    ..   addpd	%xmm3, %xmm4
[3,13]    .    .    .    .    .  D=====================eeeeER    ..   mulpd	%xmm7, %xmm2
[3,14]    .    .    .    .    .  D=========eeeeeeeeeeE------R    ..   addpd	20064(%r10,%rcx,8), %xmm4
[3,15]    .    .    .    .    .   D=eeeeeeE-----------------R    ..   movups	10064(%r8,%rcx,8), %xmm6
[3,16]    .    .    .    .    .   D=eeeeeeE-----------------R    ..   movups	64(%r12,%rcx,8), %xmm5
[3,17]    .    .    .    .    .   D==================eeeeE--R    ..   addpd	%xmm6, %xmm4
[3,18]    .    .    .    .    .   D========eeeeE------------R    ..   addpd	%xmm5, %xmm6
[3,19]    .    .    .    .    .   D======================eeeeER  ..   mulpd	%xmm7, %xmm4
[3,20]    .    .    .    .    .    D==========eeeeeeeeeeE-----R  ..   addpd	20080(%r10,%rcx,8), %xmm6
[3,21]    .    .    .    .    .    D==============eeeeeeeeeeE-R  ..   addpd	10080(%r8,%rcx,8), %xmm6
[3,22]    .    .    .    .    .    D========================eeeeER.   mulpd	%xmm7, %xmm6
[3,23]    .    .    .    .    .    .D=======================eE---R.   movups	%xmm0, 10016(%r9,%rcx,8)
[3,24]    .    .    .    .    .    .D========================eE--R.   movups	%xmm2, 10032(%r9,%rcx,8)
[3,25]    .    .    .    .    .    .D=========================eE-R.   movups	%xmm4, 10048(%r9,%rcx,8)
[3,26]    .    .    .    .    .    . D==========================eER   movups	%xmm6, 10064(%r9,%rcx,8)
[3,27]    .    .    .    .    .    . DeE--------------------------R   addq	$8, %rcx
[3,28]    .    .    .    .    .    . D=eE-------------------------R   cmpq	%r14, %rcx
[3,29]    .    .    .    .    .    . D==eE------------------------R   jb	..B1.42


Average Wait times (based on the timeline view):
[0]: Executions
[1]: Average time spent waiting in a scheduler's queue
[2]: Average time spent waiting in a scheduler's queue while ready
[3]: Average time elapsed from WB until retire stage

      [0]    [1]    [2]    [3]
0.     4     1.8    0.3    13.3      movups	10016(%r8,%rcx,8), %xmm0
1.     4     2.3    1.3    9.0       addpd	16(%r12,%rcx,8), %xmm0
2.     4     6.8    0.5    5.5       addpd	20032(%r10,%rcx,8), %xmm0
3.     4     2.0    1.3    14.3      movups	10032(%r8,%rcx,8), %xmm2
4.     4     2.3    1.5    13.8      movups	32(%r12,%rcx,8), %xmm1
5.     4     15.8   0.0    2.5       addpd	%xmm2, %xmm0
6.     4     7.5    0.0    10.8      addpd	%xmm1, %xmm2
7.     4     19.8   0.0    0.5       mulpd	%xmm7, %xmm0
8.     4     8.3    0.8    6.0       addpd	20048(%r10,%rcx,8), %xmm2
9.     4     2.3    2.3    15.8      movups	10048(%r8,%rcx,8), %xmm4
10.    4     2.0    2.0    15.3      movups	48(%r12,%rcx,8), %xmm3
11.    4     17.3   0.0    2.0       addpd	%xmm4, %xmm2
12.    4     8.8    0.8    10.5      addpd	%xmm3, %xmm4
13.    4     21.3   0.0    0.0       mulpd	%xmm7, %xmm2
14.    4     9.5    1.0    5.5       addpd	20064(%r10,%rcx,8), %xmm4
15.    4     1.8    1.8    16.5      movups	10064(%r8,%rcx,8), %xmm6
16.    4     2.0    2.0    16.3      movups	64(%r12,%rcx,8), %xmm5
17.    4     18.8   0.0    1.5       addpd	%xmm6, %xmm4
18.    4     9.0    1.0    11.3      addpd	%xmm5, %xmm6
19.    4     22.5   0.0    0.0       mulpd	%xmm7, %xmm4
20.    4     9.3    1.3    6.5       addpd	20080(%r10,%rcx,8), %xmm6
21.    4     13.3   0.0    2.5       addpd	10080(%r8,%rcx,8), %xmm6
22.    4     23.3   0.0    0.0       mulpd	%xmm7, %xmm6
23.    4     22.3   0.0    3.0       movups	%xmm0, 10016(%r9,%rcx,8)
24.    4     23.5   0.0    1.8       movups	%xmm2, 10032(%r9,%rcx,8)
25.    4     25.0   0.0    0.3       movups	%xmm4, 10048(%r9,%rcx,8)
26.    4     25.3   0.0    0.0       movups	%xmm6, 10064(%r9,%rcx,8)
27.    4     1.0    1.0    24.3      addq	$8, %rcx
28.    4     2.0    0.0    23.3      cmpq	%r14, %rcx
29.    4     3.0    0.0    22.3      jb	..B1.42
