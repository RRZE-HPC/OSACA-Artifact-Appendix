#!/bin/bash

#####################################
## ADJUST FREQUENCIES IF NECESSARY ##
#####################################
FREQ_CSX=2.5
FREQ_TX2=2.2
FREQ_ZEN=2.3
#####################################

HOME="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
KERNELS=`cat $HOME/scripts/kernel_list.txt`
OUTFILE="$HOME/summary_table.csv"
ARCHS="csx"


get_llvm_data() {
    # parameters(1): filename
    TP_LINE=`sed -n -e '/Resource pressure per iteration/,$p' $1 | head -n 3 | tail -n 1`
    TP=`echo $TP_LINE | tr " " "\n" | sort -nr | head -n 1`

    CP_START=`grep "\[0,0\]" $1 | grep -b -o "D" | awk 'BEGIN {FS=":"}{print $1}'`
    LINE_LCD_START=`grep -n "\[1,0\]" $1 | awk 'BEGIN {FS=":"}{print $1}'`
    LINE_CP_END=`echo "$LINE_LCD_START-1" | bc -l`
    CP_END=`sed -n -e ${LINE_CP_END}p $1 | grep -b -o "R" | awk 'BEGIN {FS=":"}{print $1}'`
    CP=`echo "$CP_END-$CP_START+1" | bc -l`
    NUM_INSTR=`sed -n -e ${LINE_CP_END}p $1 | sed 's/.*,\(.*\)].*/\1/'`

    LCD_START=`grep "\[0,${NUM_INSTR}\]" $1 | grep -b -o "R" | awk 'BEGIN {FS=":"}{print $1}'`
    LINE_LCD_END=`grep -n "\[1,${NUM_INSTR}\]" $1 | awk 'BEGIN {FS=":"}{print $1}'`
    LCD_END=`sed -n -e ${LINE_LCD_END}p $1 | grep -b -o "R" | awk 'BEGIN {FS=":"}{print $1}'`
    LCD1=`echo "$LCD_END-$LCD_START" | bc -l`

    LCD_START=`grep "\[1,${NUM_INSTR}\]" $1 | grep -b -o "R" | awk 'BEGIN {FS=":"}{print $1}'`
    LINE_LCD_END=`grep -n "\[2,${NUM_INSTR}\]" $1 | awk 'BEGIN {FS=":"}{print $1}'`
    LCD_END=`sed -n -e ${LINE_LCD_END}p $1 | grep -b -o "R" | awk 'BEGIN {FS=":"}{print $1}'`
    LCD2=`echo "$LCD_END-$LCD_START" | bc -l`

    LCD_START=`grep "\[2,${NUM_INSTR}\]" $1 | grep -b -o "R" | awk 'BEGIN {FS=":"}{print $1}'`
    LINE_LCD_END=`grep -n "\[3,${NUM_INSTR}\]" $1 | awk 'BEGIN {FS=":"}{print $1}'`
    LCD_END=`sed -n -e ${LINE_LCD_END}p $1 | grep -b -o "R" | awk 'BEGIN {FS=":"}{print $1}'`
    LCD3=`echo "$LCD_END-$LCD_START" | bc -l`

    echo -e "$LCD1\n$LCD2\n$LCD3" > tmp_lcd.txt
    LCD=`cat tmp_lcd.txt | sort | head -n 1`
    rm tmp_lcd.txt

    echo "$TP,$CP,$LCD"
}

get_osaca_data() {
    # parameters(1): filename

    LCD_LINE=`grep -n "Loop-Carried Dependencies Analysis Report" $1 | awk 'BEGIN {FS=":"}{print $1}'`
    RESULT_LINE=`echo "$LCD_LINE - 3" | bc -l`
    TPS=`sed -n -e ${RESULT_LINE}p $1 | awk '{$NF=""; $(NF-1)=""; print $0}'`
    TP=`echo $TPS | tr " " "\n" | sort -nr | head -n 1`
    CP=`sed -n -e ${RESULT_LINE}p $1 | awk '{print $(NF-1)}'`
    LCD=`sed -n -e ${RESULT_LINE}p $1 | awk '{print $NF}'`
    
    echo "$TP,$CP,$LCD"
}

get_iaca_data() {
    # parameters(1): filename
    TP=`grep "Cycles |" $1 | awk 'BEGIN {FS="|"}; {$2=""; print $0}' | tr " " "\n" | sort -nr | head -n 1`
    BLOCK_TP=`grep "Block Throughput" $1 | awk '{print $3}'`

    echo "$TP,$BLOCK_TP"
}

get_mlups() {
    # parameters(2): filename kernel
    BEST_LINE=`cat $1 | sort -nrk 5 | head -n 1`
    if [ "$2" == "gs" ]; then
        BEST=`echo $BEST_LINE | awk '{print $5}'`
    else
        BEST=`echo $BEST_LINE | awk '{print $11}'`
    fi
    echo $BEST
}

get_freq() {
    # parameters(1): arch
    if [ "$1" == "csx" ]; then
        echo $FREQ_CSX
        return 0
    elif [ "$1" == "tx2" ]; then
        echo $FREQ_TX2
        return 0
    elif [ "$1" == "zen" ]; then
        echo $FREQ_ZEN
        return 0
    fi
    return 1
}

###############################################################################

# Do analysis on output files
# Initialize outfile
echo "kernel,arch,compiler,measured,osaca_tp,osaca_cp,osaca_lcd,llvm-mca_tp,llvm-mca_cp,llvm-mca_lcd,iaca_tp,iaca_blockTP" > $OUTFILE

cd $HOME/benchmarks

# Run evaluation
echo "Parse OSACA/LLVM-MCA/IACA output"
for kernel in $KERNELS; do
    cd $kernel/results
    for arch in $ARCHS; do
        for version in $kernel.osaca.$arch.*; do
            COMP=${version:`echo "${#kernel}+${#arch}+8" | bc -l`:100}
            MEASUREMENTS="../out.$arch.$COMP"
            MLUPS=$(get_mlups $MEASUREMENTS $kernel)
            FREQ=$(get_freq $arch)
            CY_PER_IT=$(python $HOME/scripts/get_cy_per_it.py $version $FREQ $MLUPS)
            OSACA_DATA=$(get_osaca_data $version)
            LLVM_DATA=$(get_llvm_data $kernel.llvm-mca.$arch.$COMP)
            IACA_DATA=","
            if [ "$arch" == "csx" ]; then
                IACA_DATA=$(get_iaca_data $kernel.iaca.$arch.$COMP)
            fi
            # Write line
            echo "$kernel,$arch,$COMP,$CY_PER_IT,$OSACA_DATA,$LLVM_DATA,$IACA_DATA" >> $OUTFILE
            echo -n "."
        done
    done
    cd ../../
done

echo ""
echo "All analysis reports parsed and results written to summary_table.csv"
cd ../
