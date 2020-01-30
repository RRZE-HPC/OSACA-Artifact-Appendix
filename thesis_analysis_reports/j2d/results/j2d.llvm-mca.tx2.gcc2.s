
[0] Code Region

Iterations:        100
Instructions:      1500
Total Cycles:      1424
Total uOps:        4700

Dispatch Width:    4
uOps Per Cycle:    3.30
IPC:               1.05
Block RThroughput: 11.8


Instruction Info:
[1]: #uOps
[2]: Latency
[3]: RThroughput
[4]: MayLoad
[5]: MayStore
[6]: HasSideEffects (U)

[1]    [2]    [3]    [4]    [5]    [6]    Instructions:
 4      4     0.50    *                   ldr	x1, [sp, #176]
 3      4     0.50    *                   ldr	q0, [x1, x0]
 4      4     0.50    *                   ldr	x1, [sp, #216]
 3      4     0.50    *                   ldr	q3, [x1, x0]
 4      4     0.50    *                   ldr	x1, [sp, #200]
 3      6     0.50                        fadd	v0.2d, v0.2d, v3.2d
 3      6     0.50                        fadd	v0.2d, v0.2d, v1.2d
 3      4     0.50    *                   ldr	q1, [x26, x0]
 3      6     0.50                        fadd	v0.2d, v1.2d, v0.2d
 3      6     1.00                        fmul	v0.2d, v0.2d, v2.2d
 4      1     0.67           *            str	q0, [x1, x0]
 2      1     0.33                        add	x0, x0, #16
 4      4     0.50    *                   ldr	x1, [sp, #160]
 2      1     0.33                        cmp	x1, x0
 2      1     1.00                        b.ne	.L50


Resources:
[0]   - THX2T99P0
[1]   - THX2T99P1
[2]   - THX2T99P2
[3]   - THX2T99P3
[4]   - THX2T99P4
[5]   - THX2T99P5


Resource pressure per iteration:
[0]    [1]    [2]    [3]    [4]    [5]    
4.98   4.35   3.67    -     4.00   4.00   

Resource pressure by instruction:
[0]    [1]    [2]    [3]    [4]    [5]    Instructions:
 -      -      -      -     0.01   0.99   ldr	x1, [sp, #176]
0.01   0.98   0.01    -     0.01   0.99   ldr	q0, [x1, x0]
 -      -      -      -     0.99   0.01   ldr	x1, [sp, #216]
0.34   0.34   0.32    -     0.99   0.01   ldr	q3, [x1, x0]
 -      -      -      -     0.99   0.01   ldr	x1, [sp, #200]
0.65   0.35    -      -      -      -     fadd	v0.2d, v0.2d, v3.2d
0.34   0.66    -      -      -      -     fadd	v0.2d, v0.2d, v1.2d
0.01   0.33   0.66    -     0.01   0.99   ldr	q1, [x26, x0]
0.99   0.01    -      -      -      -     fadd	v0.2d, v1.2d, v0.2d
1.34   0.66    -      -      -      -     fmul	v0.2d, v0.2d, v2.2d
1.30   0.70    -      -     0.01   0.99   str	q0, [x1, x0]
 -     0.32   0.68    -      -      -     add	x0, x0, #16
 -      -      -      -     0.99   0.01   ldr	x1, [sp, #160]
 -      -     1.00    -      -      -     cmp	x1, x0
 -      -     1.00    -      -      -     b.ne	.L50


Timeline view:
                    0123456789          0123456789          0123456789          0123456789
Index     0123456789          0123456789          0123456789          0123456789          

[0,0]     DeeeeER   .    .    .    .    .    .    .    .    .    .    .    .    .    .   .   ldr	x1, [sp, #176]
[0,1]     .D===eeeeER    .    .    .    .    .    .    .    .    .    .    .    .    .   .   ldr	q0, [x1, x0]
[0,2]     . DeeeeE--R    .    .    .    .    .    .    .    .    .    .    .    .    .   .   ldr	x1, [sp, #216]
[0,3]     .  D===eeeeER  .    .    .    .    .    .    .    .    .    .    .    .    .   .   ldr	q3, [x1, x0]
[0,4]     .   DeeeeE--R  .    .    .    .    .    .    .    .    .    .    .    .    .   .   ldr	x1, [sp, #200]
[0,5]     .    D=====eeeeeeER .    .    .    .    .    .    .    .    .    .    .    .   .   fadd	v0.2d, v0.2d, v3.2d
[0,6]     .    .D==========eeeeeeER.    .    .    .    .    .    .    .    .    .    .   .   fadd	v0.2d, v0.2d, v1.2d
[0,7]     .    . DeeeeE-----------R.    .    .    .    .    .    .    .    .    .    .   .   ldr	q1, [x26, x0]
[0,8]     .    .  D==============eeeeeeER    .    .    .    .    .    .    .    .    .   .   fadd	v0.2d, v1.2d, v0.2d
[0,9]     .    .   D===================eeeeeeER   .    .    .    .    .    .    .    .   .   fmul	v0.2d, v0.2d, v2.2d
[0,10]    .    .    D========================eER  .    .    .    .    .    .    .    .   .   str	q0, [x1, x0]
[0,11]    .    .    .DeE-----------------------R  .    .    .    .    .    .    .    .   .   add	x0, x0, #16
[0,12]    .    .    . DeeeeE-------------------R  .    .    .    .    .    .    .    .   .   ldr	x1, [sp, #160]
[0,13]    .    .    .  D===eE------------------R  .    .    .    .    .    .    .    .   .   cmp	x1, x0
[0,14]    .    .    .  D====eE-----------------R  .    .    .    .    .    .    .    .   .   b.ne	.L50
[1,0]     .    .    .   DeeeeE-----------------R  .    .    .    .    .    .    .    .   .   ldr	x1, [sp, #176]
[1,1]     .    .    .    D===eeeeE-------------R  .    .    .    .    .    .    .    .   .   ldr	q0, [x1, x0]
[1,2]     .    .    .    .DeeeeE---------------R  .    .    .    .    .    .    .    .   .   ldr	x1, [sp, #216]
[1,3]     .    .    .    . D===eeeeE-----------R  .    .    .    .    .    .    .    .   .   ldr	q3, [x1, x0]
[1,4]     .    .    .    .  DeeeeE-------------R  .    .    .    .    .    .    .    .   .   ldr	x1, [sp, #200]
[1,5]     .    .    .    .   D=====eeeeeeE-----R  .    .    .    .    .    .    .    .   .   fadd	v0.2d, v0.2d, v3.2d
[1,6]     .    .    .    .    D==========eeeeeeER .    .    .    .    .    .    .    .   .   fadd	v0.2d, v0.2d, v1.2d
[1,7]     .    .    .    .    .DeeeeE-----------R .    .    .    .    .    .    .    .   .   ldr	q1, [x26, x0]
[1,8]     .    .    .    .    . D==============eeeeeeER.    .    .    .    .    .    .   .   fadd	v0.2d, v1.2d, v0.2d
[1,9]     .    .    .    .    .  D===================eeeeeeER    .    .    .    .    .   .   fmul	v0.2d, v0.2d, v2.2d
[1,10]    .    .    .    .    .   D========================eER   .    .    .    .    .   .   str	q0, [x1, x0]
[1,11]    .    .    .    .    .    DeE-----------------------R   .    .    .    .    .   .   add	x0, x0, #16
[1,12]    .    .    .    .    .    .DeeeeE-------------------R   .    .    .    .    .   .   ldr	x1, [sp, #160]
[1,13]    .    .    .    .    .    . D===eE------------------R   .    .    .    .    .   .   cmp	x1, x0
[1,14]    .    .    .    .    .    . D====eE-----------------R   .    .    .    .    .   .   b.ne	.L50
[2,0]     .    .    .    .    .    .  DeeeeE-----------------R   .    .    .    .    .   .   ldr	x1, [sp, #176]
[2,1]     .    .    .    .    .    .   D===eeeeE-------------R   .    .    .    .    .   .   ldr	q0, [x1, x0]
[2,2]     .    .    .    .    .    .    DeeeeE---------------R   .    .    .    .    .   .   ldr	x1, [sp, #216]
[2,3]     .    .    .    .    .    .    .D===eeeeE-----------R   .    .    .    .    .   .   ldr	q3, [x1, x0]
[2,4]     .    .    .    .    .    .    . DeeeeE-------------R   .    .    .    .    .   .   ldr	x1, [sp, #200]
[2,5]     .    .    .    .    .    .    .  D=====eeeeeeE-----R   .    .    .    .    .   .   fadd	v0.2d, v0.2d, v3.2d
[2,6]     .    .    .    .    .    .    .   D==========eeeeeeER  .    .    .    .    .   .   fadd	v0.2d, v0.2d, v1.2d
[2,7]     .    .    .    .    .    .    .    DeeeeE-----------R  .    .    .    .    .   .   ldr	q1, [x26, x0]
[2,8]     .    .    .    .    .    .    .    .D==============eeeeeeER .    .    .    .   .   fadd	v0.2d, v1.2d, v0.2d
[2,9]     .    .    .    .    .    .    .    . D===================eeeeeeER.    .    .   .   fmul	v0.2d, v0.2d, v2.2d
[2,10]    .    .    .    .    .    .    .    .  D========================eER    .    .   .   str	q0, [x1, x0]
[2,11]    .    .    .    .    .    .    .    .   DeE-----------------------R    .    .   .   add	x0, x0, #16
[2,12]    .    .    .    .    .    .    .    .    DeeeeE-------------------R    .    .   .   ldr	x1, [sp, #160]
[2,13]    .    .    .    .    .    .    .    .    .D===eE------------------R    .    .   .   cmp	x1, x0
[2,14]    .    .    .    .    .    .    .    .    .D====eE-----------------R    .    .   .   b.ne	.L50
[3,0]     .    .    .    .    .    .    .    .    . DeeeeE-----------------R    .    .   .   ldr	x1, [sp, #176]
[3,1]     .    .    .    .    .    .    .    .    .  D===eeeeE-------------R    .    .   .   ldr	q0, [x1, x0]
[3,2]     .    .    .    .    .    .    .    .    .   DeeeeE---------------R    .    .   .   ldr	x1, [sp, #216]
[3,3]     .    .    .    .    .    .    .    .    .    D===eeeeE-----------R    .    .   .   ldr	q3, [x1, x0]
[3,4]     .    .    .    .    .    .    .    .    .    .DeeeeE-------------R    .    .   .   ldr	x1, [sp, #200]
[3,5]     .    .    .    .    .    .    .    .    .    . D=====eeeeeeE-----R    .    .   .   fadd	v0.2d, v0.2d, v3.2d
[3,6]     .    .    .    .    .    .    .    .    .    .  D==========eeeeeeER   .    .   .   fadd	v0.2d, v0.2d, v1.2d
[3,7]     .    .    .    .    .    .    .    .    .    .   DeeeeE-----------R   .    .   .   ldr	q1, [x26, x0]
[3,8]     .    .    .    .    .    .    .    .    .    .    D==============eeeeeeER  .   .   fadd	v0.2d, v1.2d, v0.2d
[3,9]     .    .    .    .    .    .    .    .    .    .    .D===================eeeeeeER.   fmul	v0.2d, v0.2d, v2.2d
[3,10]    .    .    .    .    .    .    .    .    .    .    . D========================eER   str	q0, [x1, x0]
[3,11]    .    .    .    .    .    .    .    .    .    .    .  DeE-----------------------R   add	x0, x0, #16
[3,12]    .    .    .    .    .    .    .    .    .    .    .   DeeeeE-------------------R   ldr	x1, [sp, #160]
[3,13]    .    .    .    .    .    .    .    .    .    .    .    D===eE------------------R   cmp	x1, x0
[3,14]    .    .    .    .    .    .    .    .    .    .    .    D====eE-----------------R   b.ne	.L50


Average Wait times (based on the timeline view):
[0]: Executions
[1]: Average time spent waiting in a scheduler's queue
[2]: Average time spent waiting in a scheduler's queue while ready
[3]: Average time elapsed from WB until retire stage

      [0]    [1]    [2]    [3]
0.     4     1.0    1.0    12.8      ldr	x1, [sp, #176]
1.     4     4.0    0.0    9.8       ldr	q0, [x1, x0]
2.     4     1.0    1.0    11.8      ldr	x1, [sp, #216]
3.     4     4.0    0.0    8.3       ldr	q3, [x1, x0]
4.     4     1.0    1.0    10.3      ldr	x1, [sp, #200]
5.     4     6.0    0.0    3.8       fadd	v0.2d, v0.2d, v3.2d
6.     4     11.0   0.0    0.0       fadd	v0.2d, v0.2d, v1.2d
7.     4     1.0    1.0    11.0      ldr	q1, [x26, x0]
8.     4     15.0   0.0    0.0       fadd	v0.2d, v1.2d, v0.2d
9.     4     20.0   0.0    0.0       fmul	v0.2d, v0.2d, v2.2d
10.    4     25.0   0.0    0.0       str	q0, [x1, x0]
11.    4     1.0    1.0    23.0      add	x0, x0, #16
12.    4     1.0    1.0    19.0      ldr	x1, [sp, #160]
13.    4     4.0    0.0    18.0      cmp	x1, x0
14.    4     5.0    0.0    17.0      b.ne	.L50
