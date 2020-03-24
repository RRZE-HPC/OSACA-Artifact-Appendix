#!/bin/bash

HOME="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
KERNELS=`cat $HOME/scripts/kernel_list.txt`

get_llvm_substitute() {
    # parameters(1): ARCH
    if [ "$1" == "csx" ]; then
        echo "skylake-avx512"
        return 0
    elif [ "$1" == "tx2" ]; then
        echo "thunderx2t99"
        return 0
    elif [ "$1" == "zen" ]; then
        echo "znver1"
        return 0
    fi
    return 1
}

get_osaca_substitute() {
    # parameters(1): ARCH
    if [ "$1" == "csx" ]; then
        echo "csx"
        return 0
    elif [ "$1" == "tx2" ]; then
        echo "tx2"
        return 0
    elif [ "$1" == "zen" ]; then
        echo "zen1"
        return 0
    fi
    return 1
}


###############################################################################

# Check parameters
while test $# -gt 0; do
    case "$1" in
        -h|--help)
            echo "Usage: ./run_predictions.sh ISA"
            echo "Positional arguments:"
            echo "  ISA            Target ISA. One of [aarch64, x86]."
            echo ""
            exit 0
            ;;
        aarch64|AARCH64)
            ISA="ARM"
            ARCHS="tx2"
            shift
            ;;
        x86|x86)
            ISA="X86"
            ARCHS="csx"
            shift
            ;;
        *)
            shift
            ;;
    esac
done

if [ -z $ISA ]; then
    >&2 echo "Specify target ISA. See --help for more information."
    exit 1
fi

# Check analyzing tools
if ! command -v llvm-mca > /dev/null 2>&1; then
    >&2 echo "Could not find LLVM-MCA. Please make sure the command 'llvm-mca' is part of the environment!"
    exit 1
fi
if [ "$ISA" == "X86" ]; then
    if ! command -v osaca > /dev/null 2>&1; then
        >&2 echo "Could not find OSACA. Please make sure the command 'osaca' is part of the environment!"
        exit 1
    fi
    if ! command -v iaca > /dev/null 2>&1; then
        >&2 echo "Could not find IACA. Please make sure the command 'iaca' is part of the environment!"
        exit 1
    fi
fi


cd $HOME/benchmarks

# Run predictions
echo "Run predictions"
for kernel in $KERNELS; do
    cd $kernel
    mkdir -p results
    echo -n "Analyze $kernel"
    for arch in $ARCHS; do
        if [ "$ISA" == "ARM" ]; then 
            for asmfile in $kernel.s.$arch.*.s; do
                SUFFIX_TMP=${asmfile:`echo "${#kernel}+3" | bc -l`:100}
                SUFFIX=${SUFFIX_TMP%??}
                # LLVM-MCA
                LLVM_ARCH=$(get_llvm_substitute $arch)
                llvm-mca -mcpu=$LLVM_ARCH --timeline --timeline-max-cycles=1000 --timeline-max-iterations=4 \
                    $asmfile > ./results/$kernel.llvm-mca.$SUFFIX
                echo -n "."
            done
        elif [ "$ISA" == "X86" ]; then 
            for asmfile in $kernel.s.$arch.*.s; do
                SUFFIX_TMP=${asmfile:`echo "${#kernel}+3" | bc -l`:100}
                SUFFIX=${SUFFIX_TMP%??}
                
                # OSACA
                OSACA_ARCH=$(get_osaca_substitute $arch)
                osaca --arch $OSACA_ARCH $asmfile > ./results/$kernel.osaca.$SUFFIX
                echo -n "."
                if [ "$arch" == "csx" ] || [ "$arch" == "zen" ]; then
                    # LLVM-MCA
                    LLVM_ARCH=$(get_llvm_substitute $arch)
                    llvm-mca -mcpu=$LLVM_ARCH --timeline --timeline-max-cycles=1000 --timeline-max-iterations=4 \
                        $asmfile > ./results/$kernel.llvm-mca.$SUFFIX
                    echo -n "."
                fi
            done;
            # IACA
            if [ "$arch" == "csx" ]; then
                # Create objectfile
                gcc -c $kernel.s.$arch.*.s
                for objfile in $kernel.s.$arch.*.o; do
                    SUFFIX=${objfile:`echo "${#kernel}+3" | bc -l`:100}
                    SUFFIX=${SUFFIX%??}
                    iaca -arch SKX $objfile > ./results/$kernel.iaca.$SUFFIX
                    echo -n "."
                done
            fi
        fi
    done
    echo " Done"
    cd ../
done

echo "All kernels analyzed."
cd ../
