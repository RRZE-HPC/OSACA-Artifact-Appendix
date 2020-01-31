#!/usr/bin/env python3

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
