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

void triad(long size, double scale) {
  double * restrict a, * restrict b, * restrict c;
  a = aligned_alloc(64, size*sizeof(double));
  b = aligned_alloc(64, size*sizeof(double));
  c = aligned_alloc(64, size*sizeof(double));


  for(int i=0; i<size; ++i){
    b[i] = 0.000000123123123123;
    c[i] = 0.000012123123123123;
  }

  double wcs, wce, ct, runtime;
  int repeat = 1;
  for(runtime=0.0; runtime < .2; repeat *= 2) {
    timing(&wcs, &ct);
    for(int i=0; i<repeat; ++i) {
      if(a[0] < 0) dummy(a);

      #pragma omp simd // enabled O3-like optimizations with O1
      #pragma vector aligned
      for(long i=0; i < size; ++i){
        a[i] = b[i] + scale * c[i];
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
  printf("%12.1f | %11.8f | %9.3f | %7.2f | %7.1f | %7.1f | %6d | %4ld \n", (double)size*sizeof(double)/1000.0, runtime, 2.0*(double)size*(double)repeat*1e-6/runtime, runtime*(double)freq/((double)(size*repeat)/8.0),16.0*(double)repeat*(double)size/runtime/1024.0/1024.0, (double)repeat*(double)size/runtime/1000.0/1000.0, repeat, size);
  
  free(a); free(b); free(c);
}


int main(int argc, char *argv[]) 
{ 
  char hostname[1024];
  gethostname(hostname, 1024);
  long freq;
  getFreq(hostname, &freq);
  printf("TRIAD a[i] = b[i] + s * c[i], 16 byte/it, 2 Flop/it\n");
  printf("Checking for %s. Frequency *must* be set to %4.2f GHz for valid cy/CL.\n", hostname, (double)freq/1000000000);
  printf("Size (KByte) |   runtime   |  MFlop/s  |  cy/CL  |  MB/s   |  MLUP/s | repeat | size\n");
  for(int i=20; i<=35; ++i) {
    int size = (int)pow(1.3, i);
    size = (size/64)*64;
    triad(size, 1.23123);
  }
  return 0;
}
