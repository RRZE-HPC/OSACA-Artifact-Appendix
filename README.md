# Artifact Description: Cross-Architecture Automatic Critical Path Detection For In-Core Performance Analysis
Jan Laukemann, University of Erlangen-Nürnberg, jan.laukemann@fau.de

**NOTE: This is the Intel-only branch of the original repository to reproduce the results for the Schönauer Triad benchmark and the 2D Jacobi Stencil benchmark on an Intel machine.**  
*(For reproducing results for all kernels or results on different machines, check out the master branch)*

## A.1 Abstract
The creation of performance models is an essential part of optimizing scientific software.
To run static performance analyses on code snippets, it is crucial to obtain an accurate in-core execution time, which is highly dependent on the micro-architecture of the chip.

Our previously developed tool *Open Source Architecture Code Analyzer (OSACA)* is a static performance analyzer for predicting the execution time of sequential loops.
It previously supported only x86 (Intel and AMD) micro-architectures and simple, full-throughput prediction.
We heavily extended its functionality by the detection of dependencies within and across assembly loops to identify the critical path and loop-carried dependencies.
This enables a much improved runtime prediction in steady state execution.
Furthermore, we enhanced the throughput prediction and added support for ARM-based micro-architectures, which turns OSACA into a versatile cross-architecture modeling tool.
While its throughput and loop-carried dependency analysis give a lower bound runtime prediction, its critical path analysis can function as an upper bound for the execution time.

We evaluate the quality of the analysis for code on Intel Cascade Lake, AMD Zen, and Marvell ThunderX2 micro-architectures based on machine models from available documentation and semi-automatic benchmarking.
The predictions are compared with actual measurements and the analysis results from the related tools *Intel Architecture Code Analyzer&nbsp;(IACA)* and *LLVM Machine Code Analyzer&nbsp;(LLVM-MCA)*.
The comparison shows that OSACA is to date the most capable and versatile in-core runtime prediction tool available.

## A.2 Description
### A.2.1 Check-list for reproducing results
- Compilation: 
  - x86:
    - [Intel Parallel Studio version 19.0up05](https://software.intel.com/en-us/compilers)
    - [GNU C/Fortran Compiler version&nbsp;9.1.0](https://gcc.gnu.org/gcc-9/)
- Binary: x86
- Hardware:
  - Intel Cascade Lake

### A.2.2 How software can be obtained
Check out https://github.com/RRZE-HPC/OSACA

### A.2.3 Hardware dependencies
We ran on an an Intel Xeon Gold 6248 (Cascade Lake SP architecture) at 2.5 GHz (fixed, turbo disabled). The results should be reproducible on any Skylake SP processor. Fixing the frequency and disabling turbo is vital for experiment reproduction.

### A.2.4 Software dependencies
- Python >= 3.5, with the following packages installed:
  - [numpy](https://numpy.org/)
  - [networkx](https://networkx.github.io/)
  - [pyparsing](https://github.com/pyparsing/pyparsing)
  - [pygraphviz](https://pygraphviz.github.io/)
  - [Kerncraft](https://github.com/RRZE-HPC/kerncraft)
- [OSACA](https://github.com/RRZE-HPC/OSACA) v0.3.2.dev5
- [likwid](https://github.com/RRZE-HPC/likwid/) (for fixing the frequency)
- [IACA v3.0](https://software.intel.com/en-us/articles/intel-architecture-code-analyzer)
- [LLVM-MCA 9](https://llvm.org/docs/CommandGuide/llvm-mca.html)

### A.2.5 Datasets
None necessary, everything is part of the code.

## A.3 Installation
On Ubuntu 18.04 install OSACA and likwid with:
```
apt install python3 python3-pip likwid libgraphviz-dev
pip3 install osaca==0.3.2.dev5 pygraphviz kerncraft
```

[IACA](https://software.intel.com/en-us/articles/intel-architecture-code-analyzer) and [LLVM-MCA](http://releases.llvm.org/), are available at the website of the vendors.

## A.4 Experiment workflow
To reproduce the assembly kernels used for the analysis, use the following commands.

Download this repository including all scripts and benchmark codes:
```
git clone https://github.com/RRZE-HPC/OSACA-Artifact-Appendix
cd OSACA-Artifact-Appendix/
git checkout intel
```

### A.4.1 Run measurements
Fixing the frequency and disabling turbo is very important to verify our results.
Fix frequencies and disable turbo mode on CPU (for 2.3 GHz, or which ever frequency your CPU will be stable on):
```
likwid-setFrequencies -t 0 -f 2.3
```
Generate performance results with
```
./run_benchmarks.sh CSX
```
Note that for this we expect the commands `icc`, `ifort`, `gcc`, and `gfortran` to be part of the environment.

### A.4.2 Run performance analysis
Make sure to have the assembly output created (e.g., by running `run_benchmarks.sh` first) and the kernel marked.
The OSACA markers can be inserted as comment line, containing
```
# OSACA-BEGIN
```
in front of the loop and 
```
# OSACA-END
```
at the end of the loop.

For adding x86 byte markers, one may also use:
```
osaca --insert-marker --arch CSX file.s
```
These byte markers are recognized by OSACA and IACA, therefore, we recommend to use this command on Intel CSX.
Additionally, one must add the LLVM-MCA markers in the following format:
```
# LLVM-MCA-BEGIN
...
# LLVM-MCA-END
```
For simply adding the LLVM-MCA markers between the OSACA markers, run
```
cd benchmark
for d in *; do cd $d; for f in *s.csx.*s; do sed -i '/# pointer_increment=/a # LLVM-MCA-BEGIN' $f; sed -i '/movl\s*$222/i # LLVM-MCA-END' $f; done; cd ../; done
cd ../
```
All marked assembly files can be also found in the kernel-specific directory in [thesis_analysis_reports/](./thesis_analysis_reports).

For the prediction generation, run 
```
./run_predictions.sh x86
```
Note that for this we expect the commands `llvm-mca`, `osaca`, `iaca`, and `gcc` to be part of the environment.


## A.5 Evaluation and expected result
The evaluation script expects a fixed frequency of 2.5 GHz on CSX.
If the measurements were obtained with any different clock frequency, one must edit the `FREQ` variable in the script.

It further expects the same unrolling factor for a kernel that is stated in the thesis.
If the created assembly kernels differ in terms of the unrolling factor (e.g., due to a different compiler version), please adjust the [unrolling_factor_dict.py](./scripts/unrolling_factor_dict.py) in the [scripts](./scripts) directory accordingly.

Run the evaluation with
```
./run_evaluation.sh
```
It writes a file `summary_table.csv` containing the performance measurements and analysis results in the format of Table B.1 in the thesis.
Compare numbers to Table B.1.
We expect these numbers to lie within 10% of those in the paper, if run on the same micro architectures as mentioned. If your numbers are significantly faster, turbo mode or frequency scaling might be the reson. If they are slower, while running on a laptop or desktop machine, energy saving features may have interfered.

Furthermore, all results used for obtaining the performance predictions can be found in the [thesis_analysis_reports/](./thesis_analysis_reports) directory.
