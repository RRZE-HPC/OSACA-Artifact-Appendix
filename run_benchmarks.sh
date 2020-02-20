#!/bin/sh

HOME="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
KERNELS=`cat $HOME/scripts/kernel_list.txt`
ITERATIONS=5

# Check parameters
while test $# -gt 0; do
    case "$1" in
        -h|--help)
            echo "Usage: ./run_benchmarks.sh ARCH"
            echo "Positional arguments:"
            echo "  ARCH           Target architecture. One of [CSX, ZEN, TX2]."
            echo ""
            exit 0
            ;;
        csx|CSX)
            ARCH="CSX"
            shift
            ;;
        zen|ZEN|zen1|ZEN1|znver1|ZNVER1)
            ARCH="ZEN"
            shift
            ;;
        tx2|TX2)
            ARCH="TX2"
            shift
            ;;
        *)
            shift
            ;;
    esac
done

if [ -z $ARCH ]; then
    >&2 echo "Specify target architecture. See --help for more information."
    exit -1
fi

ARCH_LC=`echo $ARCH | awk '{print tolower($0)}'`
cd $HOME/benchmarks

# Compile Benchmarks
echo -n "Compile kernels."
for kernel in $KERNELS; do
    cd $kernel
        ./build.sh $ARCH all
        echo -n "."
    cd ../
done
echo " Done"

# Run benchmarks
echo "Run benchmarks"
for kernel in $KERNELS; do
    cd $kernel
    for bench in ./a.$kernel.$ARCH_LC.*; do
        # Initialize output file
        COMP=${bench:`echo "${#kernel}+${#ARCH_LC}+6" | bc -l`:100}
        OUTFILE="out.$ARCH_LC.$COMP"
        echo -n "" > $OUTFILE

        echo -n "${bench:4:100} running"
        echo -n ""
        # Special handling for Gauss-Seidel
        if [ "$kernel" == "gs" ]; then
            for i in `seq 1 $ITERATIONS`; do
                echo 6000 6000 | $bench >> $OUTFILE
                echo -n "."
            done
        else
            for i in `seq 1 $ITERATIONS`; do
                $RUN_PREFIX $bench >> $OUTFILE
                echo -n "."
            done
        fi
        echo " Done"
    done
    cd ../
done

echo "All benchmarks executed."
cd ../
