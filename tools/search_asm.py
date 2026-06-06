#!/usr/bin/env python3
"""
Search the reference index for blocks of assembly similar to a given ROM range.

Usage:
    python tools/search_asm.py --offset 0x16B0D4 --size 0x7C
    python tools/search_asm.py --offset 0x16B0D4 --size 0x7C --threshold 0.5
"""

import json
import os
import sys
import struct
import argparse

# ─── MIPS Normalization ───────────────────────────────────────────────────────

MASK_KEEP_ALL = 0xFFFFFFFF
MASK_R_TYPE   = 0xFC0007FF
MASK_I_TYPE   = 0xFC00FFFF
MASK_REGIMM   = 0xFC1FFFFF
MASK_COPROC   = 0xFC00003F
MASK_J_TYPE_RELAXED = 0xFC000000   # J/JAL: opcode only
MASK_LUI_RELAXED    = 0xFFE00000   # LUI: opcode only
MASK_I_TYPE_RELAXED = 0xFC000000


def normalize_instruction(inst: int, relaxed: bool = False, opcode_only: bool = False) -> int:
    opcode = (inst >> 26) & 0x3F
    if opcode_only:
        return opcode
    if opcode == 0x00:
        return inst & MASK_R_TYPE
    elif opcode == 0x01:
        return inst & MASK_REGIMM
    elif opcode in (0x02, 0x03):
        return inst & (MASK_J_TYPE_RELAXED if relaxed else MASK_KEEP_ALL)
    elif opcode == 0x0F:  # LUI
        return inst & (MASK_LUI_RELAXED if relaxed else MASK_I_TYPE)
    elif opcode in (0x10, 0x11, 0x12, 0x13):
        return inst & MASK_COPROC
    elif opcode in (0x1C, 0x1D):
        return inst & MASK_R_TYPE
    else:
        return inst & MASK_I_TYPE


# ─── Search ───────────────────────────────────────────────────────────────────

def load_index(path: str):
    """Load the reference index JSON."""
    print(f"Loading index...", flush=True)
    with open(path, 'r') as f:
        index = json.load(f)
    print(f"  Window size: {index['WindowSize']}", flush=True)
    print(f"  Index date:  {index['BuildDate']}", flush=True)
    return index


def search(index: dict, rom_bytes: bytes, rom_offset: int, byte_count: int,
           threshold: float = 0.8, max_results: int = 4, window_size: int = None):
    """Search the index for similar instruction blocks."""
    
    if window_size is None:
        window_size = index['WindowSize']
    
    # Use same normalization mode as index
    norm_mode = index.get('Normalization', 'strict')
    relaxed = norm_mode == 'relaxed'
    opcode_only = norm_mode == 'opcode-only'

    # Normalize query instructions
    query_norms = []
    for off in range(rom_offset, min(rom_offset + byte_count, len(rom_bytes) - 3), 4):
        inst = struct.unpack('>I', rom_bytes[off:off+4])[0]
        norm = normalize_instruction(inst, relaxed=relaxed, opcode_only=opcode_only)
        if norm == 0 and not opcode_only:
            continue
        query_norms.append(norm)

    if len(query_norms) < window_size:
        print(f"Error: Query has only {len(query_norms)} valid instructions, "
              f"need at least {window_size}.")
        return

    print(f"Query instructions: {len(query_norms)} (non-zero after normalization)", flush=True)
    print()

    # Build query windows
    hash_index = index['HashIndex']
    query_window_count = len(query_norms) - window_size + 1
    
    # Count matching windows per candidate
    candidates = {}  # key → { MatchedWindows(set), TotalWindows, RepoName, SourceFile, ... }

    for i in range(query_window_count):
        hash_str = ''.join(f'{query_norms[i+j]:08X}' for j in range(window_size))

        records = hash_index.get(hash_str)
        if not records:
            continue

        # Track which query windows matched for each candidate
        for rec in records:
            key = f"{rec['RepoName']}|{rec['SourceFile']}"
            if key not in candidates:
                candidates[key] = {
                    'MatchedWindows': set(),
                    'TotalWindows': query_window_count,
                    'RepoName': rec['RepoName'],
                    'SourceFile': rec['SourceFile'],
                    'SourceRoot': rec['SourceRoot'],
                    'RomOffsets': [],
                }
            candidates[key]['MatchedWindows'].add(i)
            candidates[key]['RomOffsets'].append(rec['RomOffset'])

    # Score and rank
    results = []
    for c in candidates.values():
        similarity = len(c['MatchedWindows']) / c['TotalWindows']
        if similarity >= threshold:
            results.append({
                'RepoName': c['RepoName'],
                'SourceFile': c['SourceFile'],
                'SourceRoot': c['SourceRoot'],
                'MatchCount': len(c['MatchedWindows']),
                'TotalWindows': c['TotalWindows'],
                'Similarity': similarity,
                'RomOffsets': sorted(set(c['RomOffsets'])),
            })
            results.append({
                'RepoName': c['RepoName'],
                'SourceFile': c['SourceFile'],
                'SourceRoot': c['SourceRoot'],
                'MatchCount': len(c['MatchedWindows']),
                'TotalWindows': c['TotalWindows'],
                'Similarity': similarity,
                'RomOffsets': sorted(set(c['RomOffsets'])),
            })

    results.sort(key=lambda r: r['Similarity'], reverse=True)

    # Resolve file paths from FileIndex and merge duplicate entries
    file_index = index.get('FileIndex', {})
    symbol_index = index.get('SymbolIndex', {})
    seen_keys = set()
    unique_results = []

    for r in results:
        # Create a unique key (file path can appear from multiple subsegments)
        dedup_key = f"{r['RepoName']}|{r['SourceFile']}"
        if dedup_key in seen_keys:
            continue
        seen_keys.add(dedup_key)

        # Find matching entry in file index
        r['FullPath'] = None
        r['Segments'] = []
        for fp, fi in file_index.items():
            if fi['RepoName'] == r['RepoName'] and fi['SourceFile'] == r['SourceFile']:
                r['FullPath'] = fp
                r['Segments'] = fi.get('Segments', [])
                break

        # Look up function info from SymbolIndex
        sym_key = f"{r['RepoName']}|{r['SourceFile']}"
        if sym_key in symbol_index:
            r['Functions'] = _find_functions_for_offsets(r['RomOffsets'], symbol_index[sym_key])
        else:
            r['Functions'] = None

        unique_results.append(r)

    return unique_results


def _find_functions_for_offsets(rom_offsets, func_list):
    """Given sorted ROM offsets and a list of {Name, RomStart, RomEnd} entries,
    return the unique function names whose ranges overlap with the offsets."""
    if not func_list or not rom_offsets:
        return []

    min_off = rom_offsets[0]
    max_off = rom_offsets[-1]

    matched = []
    for func in func_list:
        fs = func['RomStart']
        fe = func['RomEnd']
        # Check overlap: [fs, fe) intersects [min_off, max_off]
        if fs < max_off and fe > min_off:
            # Trim to the actual overlap for display
            show_start = max(fs, min_off)
            show_end = min(fe, max_off)
            matched.append((func['Name'], show_start, show_end, fs))

    matched.sort(key=lambda x: x[3])  # sort by original function start
    return matched


def display_results(results, max_results: int, workspace_root: str):
    """Display search results."""
    result_count = min(len(results), max_results)

    if result_count == 0:
        print("No matches found above threshold.")
        print("Try a lower threshold (e.g., --threshold 0.5) for broader matches.")
        return

    print(f"Found {len(results)} matches (showing top {result_count}):")
    print()

    for i in range(result_count):
        r = results[i]
        pct = r['Similarity'] * 100

        print(f"Match #{i+1} ({pct:.0f}% similarity, {r['MatchCount']}/{r['TotalWindows']} windows)")
        print(f"  Repo: {r['RepoName']}")
        print(f"  File: {r['SourceFile']}")

        if r['FullPath']:
            if os.path.exists(r['FullPath']):
                print(f"  Path: {r['FullPath']}")
            else:
                # Try relative to workspace
                alt_path = os.path.join(workspace_root, 'reference', r['RepoName'],
                                        r['SourceRoot'], r['SourceFile'])
                if os.path.exists(alt_path):
                    print(f"  Path: {alt_path}")
                else:
                    print(f"  Path: {r['FullPath']} (not found on disk)")
        else:
            # Reconstruct path
            alt_path = os.path.join(workspace_root, 'reference', r['RepoName'],
                                    r['SourceRoot'], r['SourceFile'])
            if os.path.exists(alt_path):
                print(f"  Path: {alt_path}")
            else:
                print(f"  Path: (unknown - {r['SourceRoot']}/{r['SourceFile']})")

        # Show representative ROM offsets
        offsets = r['RomOffsets'][:5]
        offset_str = ', '.join(f'0x{off:X}' for off in offsets)
        if len(r['RomOffsets']) > 5:
            offset_str += f" ... and {len(r['RomOffsets']) - 5} more"
        print(f"  ROM offsets: {offset_str}")

        # Show segment ranges
        if r['Segments']:
            seg_str = ', '.join(f"[0x{s['StartOffset']:X}-0x{s['EndOffset']:X}]"
                               for s in r['Segments'])
            print(f"  Segment(s): {seg_str}")

        # Show function names
        functions = r.get('Functions')
        if functions is not None:
            if functions:
                func_strs = []
                for name, show_start, show_end, orig_start in functions:
                    func_strs.append(f"{name} (0x{show_start:X}-0x{show_end:X})")
                print(f"  Functions: {', '.join(func_strs)}")
            else:
                print(f"  Functions: (no function symbols in range)")

        print()

    if len(results) > max_results:
        print(f"... and {len(results) - max_results} more matches below threshold range.")

    print("Tip: Open the matched file and look for the functions listed above.")


def main():
    parser = argparse.ArgumentParser(description='Search for similar assembly in reference N64 repos')
    parser.add_argument('--offset', required=True, help='ROM file offset in hex (e.g., 0x16B0D4)')
    parser.add_argument('--size', required=True, help='Byte count in hex (e.g., 0x7C)')
    parser.add_argument('--rom', default=None, help='Path to BH baserom.z64 (default: baserom.us.z64)')
    parser.add_argument('--index', default=None, help='Path to reference index JSON')
    parser.add_argument('--threshold', type=float, default=0.8, help='Minimum similarity (0.0-1.0)')
    parser.add_argument('--max-results', type=int, default=4, help='Max results to show')
    parser.add_argument('--window-size', type=int, default=None, help='Window size (must match index)')
    args = parser.parse_args()

    # Parse hex args
    rom_offset = int(args.offset, 16) if args.offset.startswith(('0x', '0X')) else int(args.offset, 16)
    byte_count = int(args.size, 16) if args.size.startswith(('0x', '0X')) else int(args.size, 16)

    # Find files
    script_dir = os.path.dirname(os.path.abspath(__file__))
    workspace_root = os.path.abspath(os.path.join(script_dir, '..'))

    index_path = args.index or os.path.join(workspace_root, 'reference_index.json')
    rom_path = args.rom or os.path.join(workspace_root, 'baserom.us.z64')

    if not os.path.exists(rom_path):
        print(f"Error: ROM not found at {rom_path}")
        sys.exit(1)

    if not os.path.exists(index_path):
        print(f"Error: Index not found at {index_path}. Run build_index.py first.")
        sys.exit(1)

    print(f"Search-AsmMatch (Python)")
    print(f"  ROM offset: 0x{rom_offset:08X}")
    print(f"  Size:       {byte_count} bytes ({byte_count // 4} instructions)")
    print()

    # Load index
    index = load_index(index_path)
    print(f"  Hash entries: {len(index['HashIndex'])}", flush=True)
    print()

    # Read ROM
    with open(rom_path, 'rb') as f:
        rom_bytes = f.read()

    if rom_offset + byte_count > len(rom_bytes):
        print(f"Error: Offset 0x{rom_offset:X} + {byte_count} exceeds ROM size ({len(rom_bytes)} bytes)")
        sys.exit(1)

    # Search
    import time
    t0 = time.time()
    results = search(index, rom_bytes, rom_offset, byte_count,
                     threshold=args.threshold, max_results=args.max_results,
                     window_size=args.window_size)
    elapsed = time.time() - t0
    print(f"Search completed in {elapsed:.1f}s", flush=True)
    print()

    # Display
    display_results(results, args.max_results, workspace_root)


if __name__ == '__main__':
    main()
