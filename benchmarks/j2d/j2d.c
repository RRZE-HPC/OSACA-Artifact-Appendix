#include <stdio.h>
#include "timing.h"
#include <stdlib.h>
#include <math.h>
#include <unistd.h>
#include <string.h>

void dummy(double*);

int getFreq(char hostname[], long *freq)
{
  if (strcmp(hostname, "casclakesp2") == 0){
      *freq = (long)(2.5*pow(10,9));
      return 0;
  }
  if (strcmp(hostname, "warmup") == 0){
      *freq = (long)(2.2*pow(10,9));
      return 0;
  }
  if (strcmp(hostname, "naples1") == 0){
      *freq = (long)(2.3*pow(10,9));
      return 0;
  }
  return -1;
}

void stencil(int size_M, int size_N, double c0) {
  double * restrict a, * restrict b;
  int size_N_new = size_N + 1;
  long size = size_M * size_N_new;
  a = aligned_alloc(64, size*sizeof(double)+1);
  b = aligned_alloc(64, size*sizeof(double));

  // cache hack
  a = a + 1;

  for(int j=0; j<size_M; ++j){
    for(int i=0; i<size_N; ++i){
      a[j*size_N_new + i] = 0.000000123123123123;
    }
  }

  double wcs, wce, ct, runtime;
  int repeat = 1;
  for(runtime=0.0; runtime < .2; repeat *= 2) {
    timing(&wcs, &ct);
    for(int i=0; i<repeat; ++i) {
      if(a[0] > 0) dummy(a);

      for(long j=1; j < size_M-1; ++j){
        #pragma omp simd // enabled O3-like optimizations with O1
        #pragma vector aligned
        #pragma unroll(4)
        for(long i=1; i < size_N-1; ++i){
          long idx = j*size_N_new + i;
            b[idx] = c0 * (
                a[idx - 1] + a[idx - size_N_new]  // a[j][i-1] + a[j-1][i]
                + a[idx + size_N_new] + a[idx + 1]  // a[j+1][i] + a[j][i+1]
            );
        }
      }
    } 
    timing(&wce, &ct);
    runtime = wce-wcs;
  }
  repeat /= 2;
  char hostname[1024];
  gethostname(hostname, 1024);
  long freq;
  int rc = getFreq(hostname, &freq);
  long size_b = (size_M * size_N) - 4;
  size = (size_M-2) * (size_N-2);
  printf("%12.1f | %11.8f | %9.3f | %7.2f | %7.1f | %7.1f | %6d | %4ld \n", (double)size_b*sizeof(double)/1000.0, runtime, 4.0*(double)size*(double)repeat*1e-6/runtime, runtime*(double)freq/((double)(size*repeat)/8.0),32.0*(double)repeat*(double)size/runtime/1024.0/1024.0, (double)repeat*(double)size/runtime/1000.0/1000.0, repeat, size);
  
  // reverse cache hack
  a = a - 1;

  free(a); free(b);
}


int main(int argc, char *argv[]) 
{ 
  char hostname[1024];
  gethostname(hostname, 1024);
  long freq;
  getFreq(hostname, &freq);
  printf("2D5PT b[j][i] = c0 * (a[j][i-1] + a[j+1][i] + ...), 32 byte/it, 4 Flop/it\n");
  printf("Checking for %s. Frequency *must* be set to %4.2f GHz for valid cy/CL.\n", hostname, (double)freq/1000000000);
  printf("Size (KByte) |   runtime   |  MFlop/s  |  cy/CL  |  MB/s   |  MLUP/s | repeat | size\n");
  for(int i=1250; i>190; i-=64) {
      int size = (int)pow(1.3, i);
      size = (size/64)*64;
    stencil(3, i, 0.25);
  }
  return 0;
}
