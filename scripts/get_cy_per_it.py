#!/usr/bin/env python3

import sys
from unrolling_factor_dict import unroll_dict


def main():
    """Return the performance in cy/asm_it.
    Usage:  python ./get_cy_per_it.py KERNELSTRING FREQ MLUPS

    parameters:
      KERNELSTRING    OSCAA output file, e.g., copy.osaca.csx.icc[.SSE]
      FREQ            clock frequency
      MLUPS           MLUPS to convert to cy/asm_it
    """
    kernel_string = sys.argv[1]
    kernel_string = kernel_string.split('.')
    kernel = kernel_string[0]
    arch = kernel_string[2]
    compiler = kernel_string[3]
    if len(kernel_string) > 4:
        compiler += '.' + kernel_string[4]
    unrolling = unroll_dict[kernel][arch][compiler]
    freq = float(sys.argv[2])
    mlups = float(sys.argv[3])

    cy_per_it = (freq * 1e3) / mlups * unrolling
    print(round(cy_per_it, 2))


if __name__ == '__main__':
    main()
