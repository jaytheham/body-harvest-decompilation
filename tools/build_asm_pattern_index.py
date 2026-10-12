#!/usr/bin/env python3
"""
Build an index of normalized MIPS instructions from asm/matchings/ and asm/nonmatchings/.

Output: asm_pattern_index.json — used by search_asm_pattern.py to find functions
containing the same instruction sequence (ignoring registers and literal values).

Usage:
    python tools/build_asm_pattern_index.py
"""

import json
import os
import re
import sys
from datetime import datetime


def normalize_asm_line(line: str):
    """Parse and normalize a single ASM instruction line.

    Returns (rom_offset, normalized_str) or None if line is not an instruction.

    Normalization replaces:
        - Register names ($t0, $a1, $sp, ...) with $r
        - Hex/decimal immediates with #
        - %hi/%lo symbol references with %sym
        - Branch target labels (.L...) with $label
    """
    line = line.strip()
    if not line:
        return None

    # Skip labels (end with colon and no instruction comment)
    if line.endswith(':') and '*/' not in line:
        return None

    # Skip assembler directives and comments
    if line.startswith('.') or line.startswith('#') or line.startswith('//'):
        return None

    # Parse instruction comment: /* ROM VRAM HEX */  mnemonic  operands
    m = re.match(
        r'/\*\s*([0-9A-Fa-f]+)\s+[0-9A-Fa-f]+\s+[0-9A-Fa-f]+\s*\*/\s+(\w+)\s*(.*)',
        line,
    )
    if not m:
        return None

    rom_offset = int(m.group(1), 16)
    mnemonic = m.group(2)
    operands = m.group(3).strip()

    # Normalize operands — order matters to avoid double-matching
    operands = re.sub(r'\$[a-z0-9_]+', '$r', operands)              # registers
    operands = re.sub(r'(?<![$\w])-?0x[0-9A-Fa-f]+', '#', operands) # hex immediates
    operands = re.sub(r'(?<![$\w])-?\d+', '#', operands)             # decimal immediates
    operands = re.sub(r'%[a-z]+\([^)]*\)', '%sym', operands)         # %hi/%lo/etc
    operands = re.sub(r'\.L[0-9A-Fa-f_]+', '$label', operands)      # branch labels

    norm_str = f"{mnemonic} {operands}" if operands else mnemonic
    return (rom_offset, norm_str)


def parse_asm_file(filepath: str, fname: str, category: str):
    """Parse a single .s file and extract function info.

    Each .s file in matchings/nonmatchings contains exactly one function.
    Returns a dict with keys: name, rom_start, rom_end, category,
    norm_instrs (list of str), rom_offsets (list of int).
    """
    # Try to extract ROM offset from filename: func_80079510_884C0.s
    rom_start = None
    name = None
    m = re.match(r'func_[0-9A-Fa-f]+_([0-9A-Fa-f]+)\.s', fname)
    if m:
        rom_start = int(m.group(1), 16)

    with open(filepath, 'r') as f:
        content = f.read()

    norm_instrs = []
    rom_offsets = []

    for line in content.split('\n'):
        # Capture function name from glabel
        gm = re.match(r'glabel\s+(\S+)', line)
        if gm:
            name = gm.group(1)
            continue

        result = normalize_asm_line(line)
        if result:
            rom_offsets.append(result[0])
            norm_instrs.append(result[1])
            if rom_start is None:
                rom_start = result[0]

    if not norm_instrs:
        return None

    rom_end = rom_offsets[-1] + 4  # last instr + 4 bytes

    if name is None:
        name = os.path.splitext(fname)[0]

    return {
        'name': name,
        'rom_start': rom_start,
        'rom_end': rom_end,
        'category': category,
        'norm_instrs': norm_instrs,
        'rom_offsets': rom_offsets,
    }


def build_index():
    """Walk asm/matchings/ and asm/nonmatchings/, build and save the index."""
    workspace_root = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
    matchings_dir = os.path.join(workspace_root, 'asm', 'matchings')
    nonmatchings_dir = os.path.join(workspace_root, 'asm', 'nonmatchings')

    functions = []

    for category, base_dir in [('matching', matchings_dir), ('nonmatching', nonmatchings_dir)]:
        if not os.path.isdir(base_dir):
            print(f"Warning: {base_dir} not found, skipping.", file=sys.stderr)
            continue
        for root, dirs, files in os.walk(base_dir):
            for fname in sorted(files):
                if not fname.endswith('.s'):
                    continue
                filepath = os.path.join(root, fname)
                result = parse_asm_file(filepath, fname, category)
                if result:
                    functions.append(result)

    # Sort functions by ROM offset for deterministic output
    functions.sort(key=lambda f: f['rom_start'])

    output = {
        'BuildDate': datetime.now().strftime('%Y-%m-%d %H:%M:%S'),
        'Functions': functions,
    }

    output_path = os.path.join(workspace_root, 'asm_pattern_index.json')
    with open(output_path, 'w') as f:
        json.dump(output, f, indent=2)

    matching_count = sum(1 for fn in functions if fn['category'] == 'matching')
    nonmatching_count = sum(1 for fn in functions if fn['category'] == 'nonmatching')

    print(f"Indexed {len(functions)} functions to {os.path.relpath(output_path, workspace_root)}")
    print(f"  Matching: {matching_count}")
    print(f"  Nonmatching: {nonmatching_count}")


if __name__ == '__main__':
    build_index()
