#!/usr/bin/env python3

import sys

unroll_dict = {
    'copy': {
        'tx2': {'clang': 64, 'gcc': 16},
        'csx': {'icc': 8, 'gcc': 32},
        'zen': {'gcc': 16}
    },
    'add': {
        'tx2': {'clang': 64, 'gcc': 16},
        'csx': {'icc': 16, 'gcc': 32},
        'zen': {'gcc': 32}
    },
    'update': {
        'tx2': {'clang': 8, 'gcc': 16},
        'csx': {'icc': 16, 'gcc': 32},
        'zen': {'gcc': 16}
    },
    'sum_reduction': {
        'tx2': {'clang': 64, 'gcc': 16, 'gcc.O3': 16},
        'csx': {'icc': 32, 'gcc': 32, 'gcc.O3': 16},
        'zen': {'gcc': 16, 'gcc.O3': 16}
    },
    'daxpy': {
        'tx2': {'clang': 64, 'gcc': 16},
        'csx': {'icc': 8, 'gcc': 32},
        'zen': {'gcc': 16}
    },
    'triad': {
        'tx2': {'clang': 64, 'gcc': 16},
        'csx': {'icc': 8, 'gcc': 32},
        'zen': {'gcc': 16}
    },
    'striad': {
        'tx2': {'clang': 64, 'gcc': 16},
        'csx': {'icc': 16, 'gcc': 32},
        'zen': {'gcc': 16}
    },
    'gs': {
        'tx2': {'clang': 1, 'gcc': 4},
        'csx': {'icc': 4, 'gcc': 8},
        'zen': {'gcc': 8}
    },
    'j2d': {
        'tx2': {'clang': 32, 'gcc': 8},
        'csx': {'icc': 32, 'icc.AVX': 16, 'icc.SSE': 8, 'gcc': 16, 'gcc.SSE': 8},
        'zen': {'gcc': 8}
    }
}


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
