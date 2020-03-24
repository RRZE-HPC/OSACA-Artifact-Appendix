#!/bin/bash

KERNEL="add"
INTELC=icc
GNUC=gcc
ARMC=armclang

CC=gcc
ARMFLAGS="-mcpu=thunderx2t99 -fopenmp-simd -funroll-loops -fno-builtin" 
X86GCCFLAGS="-fopenmp-simd -fargument-noalias -funroll-loops -fno-builtin"
X86ICCFLAGS="-qopenmp-simd -fno-alias -unroll -fno-builtin"

## Check parameters
while test $# -gt 0; do
    case "$1" in
        -h|--help)
            echo "Usage: ./build.sh ARCH COMP"
            echo "Positional arguments:"
            echo "  ARCH           Target architecture. One of [SNB, IVB, HSW, BDW, SKX, CSX, ZEN, TX2]."
            echo "  COMP           Target compiler (will be called as compiler on the CLI). One of "
            echo "                 [icc, iflang, gcc, gfortran, armclang, armflang]. Choice must be matching to the chosen architecture."
            echo ""
            exit 0
            ;;
        csx|CSX)
            ARCH=0
            shift
            ;;
        zen|ZEN|zen1|ZEN1|znver1|ZNVER1)
            ARCH=1
            shift
            ;;
        tx2|TX2)
            ARCH=2
            shift
            ;;
        all)
            ALL=1
            shift
            ;;
        *)
            CC=$1
            ALL=0
            shift
            ;;
    esac
done

if [ -z $ARCH ]; then
    echo "Specify target architecture and compiler. See --help for more information."
    exit -1
fi


# Compile timing.c
$CC -O3 -c timing.c

# Compile Kernel
if [[ $ARCH == 0 ]]; then
    # Compile for CSX
    if [[ $ALL == 1 ]]; then
        # Compile all
        $INTELC $X86ICCFLAGS -xCORE-AVX512 -qopt-zmm-usage=high -Ofast -c $KERNEL.c
        $INTELC $X86ICCFLAGS -xCORE-AVX512 -qopt-zmm-usage=high -Ofast -S $KERNEL.c -use-msasm -o $KERNEL.s.csx.icc.s
        $INTELC $KERNEL.o timing.o -lm -o a.$KERNEL.csx.icc
        $GNUC $X86GCCFLAGS -march=skylake-avx512 -Ofast -c $KERNEL.c
        $GNUC $X86GCCFLAGS -march=skylake-avx512 -Ofast -S $KERNEL.c -o $KERNEL.s.csx.gcc.s
        $GNUC $KERNEL.o timing.o -lm -o a.$KERNEL.csx.gcc
    elif [[ $CC == i* ]]; then
        # ICC --> CC=icc/ifort
        $CC $X86ICCFLAGS -xCORE-AVX512 -qopt-zmm-usage=high -Ofast -c $KERNEL.c
        $CC $X86ICCFLAGS -xCORE-AVX512 -qopt-zmm-usage=high -Ofast -S $KERNEL.c -use-msasm -o $KERNEL.s.csx.icc.s
        $CC $KERNEL.o timing.o -lm -o a.$KERNEL.csx.icc
    else
        # GCC --> CC=gcc/gfortran
        $CC $X86GCCFLAGS -march=skylake-avx512 -Ofast -c $KERNEL.c
        $CC $X86GCCFLAGS -march=skylake-avx512 -Ofast -S $KERNEL.c -o $KERNEL.s.csx.gcc.s
        $CC $KERNEL.o timing.o -lm -o a.$KERNEL.csx.gcc
    fi
elif [[ $ARCH == 1 ]]; then
    # Compile for Zen 
    $CC $X86GCCFLAGS -march=znver1 -mavx2 -mfma -Ofast -c $KERNEL.c
    $CC $X86GCCFLAGS -march=znver1 -mavx2 -mfma -Ofast -S $KERNEL.c -o $KERNEL.s.zen.gcc.s
    $CC $KERNEL.o timing.o -lm -o a.$KERNEL.zen.gcc
elif [[ $ARCH == 2 ]]; then
    # Compile for ThunderX2
    if [[ $ALL == 1 ]]; then
        # Compile all
        $ARMC $ARMFLAGS -Ofast -c $KERNEL.c
        $ARMC $ARMFLAGS -Ofast -S $KERNEL.c -o $KERNEL.s.tx2.clang.s
        $ARMC $KERNEL.o timing.o -lm -o a.$KERNEL.tx2.clang
        $GNUC $ARMFLAGS -Ofast -c $KERNEL.c
        $GNUC $ARMFLAGS -Ofast -S $KERNEL.c -o $KERNEL.s.tx2.gcc.s
        $GNUC $KERNEL.o timing.o -lm -o a.$KERNEL.tx2.gcc
    elif [[ $CC == arm* ]]; then
        # ARM HPC Compiler --> CC=armclang/armflang
        $CC $ARMFLAGS -Ofast -c $KERNEL.c
        $CC $ARMFLAGS -Ofast -S $KERNEL.c -o $KERNEL.s.tx2.clang.s
        $CC $KERNEL.o timing.o -lm -o a.$KERNEL.tx2.clang
    else
        # GCC --> CC=gcc/gfortran
        $CC $ARMFLAGS -Ofast -c $KERNEL.c
        $CC $ARMFLAGS -Ofast -S $KERNEL.c -o $KERNEL.s.tx2.gcc.s
        $CC $KERNEL.o timing.o -lm -o a.$KERNEL.tx2.gcc
    fi
fi
