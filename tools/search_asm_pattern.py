#!/usr/bin/env python3
"""
Search for functions containing the same normalized ASM instruction sequence.

Given a ROM offset and instruction count, finds all functions across both
asm/matchings/ and asm/nonmatchings/ that have the exact same instruction
pattern (ignoring register names and literal values).

Usage:
    python tools/search_asm_pattern.py --offset 0x884C0 --count 5
"""

import json
import os
import sys
import argparse


def load_index(path: str) -> dict:
    """Load the pattern index JSON."""
    with open(path, 'r') as f:
        return json.load(f)


def find_function_for_offset(functions: list, rom_offset: int) -> dict:
    """Find the function whose ROM range contains the given offset."""
    for func in functions:
        if func['rom_start'] <= rom_offset < func['rom_end']:
            return func
    return None


def extract_query(func: dict, rom_offset: int, count: int):
    """Extract N normalized instructions from a function starting at a given offset.

    Returns (norm_seq, start_idx) or None if offset not found.
    """
    offsets = func['rom_offsets']
    instrs = func['norm_instrs']

    try:
        start_idx = offsets.index(rom_offset)
    except ValueError:
        return None

    end_idx = min(start_idx + count, len(instrs))
    return (instrs[start_idx:end_idx], start_idx)


def search_sequence(norm_seq: list, functions: list, source_func_name: str) -> list:
    """Search for a normalized instruction sequence across all functions.

    Returns list of {func_name, rom_offset, category} dicts.
    Only the first occurrence per function is reported.
    """
    results = []
    seq_len = len(norm_seq)

    for func in functions:
        if func['name'] == source_func_name:
            continue

        instrs = func['norm_instrs']
        offsets = func['rom_offsets']

        if len(instrs) < seq_len:
            continue

        # Slide window looking for exact match
        for i in range(len(instrs) - seq_len + 1):
            if instrs[i:i + seq_len] == norm_seq:
                results.append({
                    'func_name': func['name'],
                    'rom_offset': offsets[i],
                    'category': func['category'],
                })
                break  # only first occurrence per function

    return results


def main():
    parser = argparse.ArgumentParser(description='Search for ASM instruction patterns')
    parser.add_argument('--offset', required=True, help='ROM offset in hex (e.g., 0x884C0)')
    parser.add_argument('--count', type=int, required=True, help='Number of instructions')
    parser.add_argument('--index', default=None, help='Path to asm_pattern_index.json')
    args = parser.parse_args()

    rom_offset = int(args.offset, 16) if '0x' in args.offset.lower() else int(args.offset, 16)
    count = args.count

    # Resolve paths
    script_dir = os.path.dirname(os.path.abspath(__file__))
    workspace_root = os.path.abspath(os.path.join(script_dir, '..'))
    index_path = args.index or os.path.join(workspace_root, 'asm_pattern_index.json')

    if not os.path.exists(index_path):
        print(f"Error: Index not found at {index_path}")
        print("Run 'python tools/build_asm_pattern_index.py' first.")
        sys.exit(1)

    # Load index
    index = load_index(index_path)
    functions = index['Functions']

    # Find the function containing the query offset
    source_func = find_function_for_offset(functions, rom_offset)
    if not source_func:
        print(f"Error: No function found containing ROM offset 0x{rom_offset:X}")
        sys.exit(1)

    # Extract normalized instruction sequence
    result = extract_query(source_func, rom_offset, count)
    if result is None:
        print(f"Error: ROM offset 0x{rom_offset:X} not found in function "
              f"{source_func['name']}")
        sys.exit(1)

    norm_seq, start_idx = result
    actual_count = len(norm_seq)

    if actual_count < count:
        print(f"Note: Only {actual_count} instructions available at this "
              f"offset (requested {count})")

    print(f"Query: {source_func['name']} @ 0x{rom_offset:X}, "
          f"{actual_count} instr{'s' if actual_count != 1 else ''}")
    print()

    # Search across all other functions
    matches = search_sequence(norm_seq, functions, source_func['name'])

    # Sort: matching category first, then nonmatching; within each, by ROM offset
    category_order = {'matching': 0, 'nonmatching': 1}
    matches.sort(key=lambda m: (category_order.get(m['category'], 99), m['rom_offset']))

    if not matches:
        print("No matches found.")
        return

    # Group and display
    matching_results = [m for m in matches if m['category'] == 'matching']
    nonmatching_results = [m for m in matches if m['category'] == 'nonmatching']

    idx = 1
    if matching_results:
        print("=== Matching ===")
        for m in matching_results:
            print(f"{idx}. {m['func_name']} — Match at ROM offset 0x{m['rom_offset']:X}")
            idx += 1
        print()

    if nonmatching_results:
        print("=== Nonmatching ===")
        for m in nonmatching_results:
            print(f"{idx}. {m['func_name']} — Match at ROM offset 0x{m['rom_offset']:X}")
            idx += 1
        print()


if __name__ == '__main__':
    main()
