#!/usr/bin/env python3
"""
Builds a searchable index of normalized MIPS instructions from reference N64 decomp repos.

Usage: python tools/build_index.py [--repo-filter PATTERN] [--window-size 5]

Output: reference_index.json
"""

import json
import os
import sys
import yaml
import struct
import glob
from collections import defaultdict

# ─── MIPS Instruction Normalization ────────────────────────────────────────────

# AND masks for each instruction category (uint32)
MASK_KEEP_ALL = 0xFFFFFFFF   # J-type: keep everything
MASK_R_TYPE   = 0xFC0007FF   # SPECIAL, SPECIAL2, SPECIAL3
MASK_I_TYPE   = 0xFC00FFFF   # Most I-type
MASK_REGIMM   = 0xFC1FFFFF   # REGIMM: keep rt (branch type) and imm
MASK_COPROC   = 0xFC00003F   # COP0-COP3: keep opcode + funct, mask all regs


# For "relaxed" mode, also normalize game-specific immediates
MASK_J_TYPE_RELAXED = 0xFC000000   # J/JAL: keep only opcode, mask target address
MASK_LUI_RELAXED    = 0xFFE00000   # LUI: keep opcode+rs(always 0), mask rt+imm
MASK_I_TYPE_RELAXED = 0xFC000000   # For some I-type where imm is an address fragment


def normalize_instruction(inst: int, relaxed: bool = False, opcode_only: bool = False) -> int:
    """Normalize a single MIPS instruction by masking out register fields.
    
    If relaxed=True, also masks game-specific immediate values (JAL targets, LUI addresses).
    If opcode_only=True, normalize to just the 6-bit opcode (0-63) for broadest matching.
    """
    opcode = (inst >> 26) & 0x3F
    
    if opcode_only:
        # Opcode-only: just keep the 6-bit opcode, shift to make a 32-bit value
        return opcode
    
    if opcode == 0x00:     # SPECIAL
        return inst & MASK_R_TYPE
    elif opcode == 0x01:   # REGIMM
        return inst & MASK_REGIMM
    elif opcode in (0x02, 0x03):  # J, JAL
        if relaxed:
            return inst & MASK_J_TYPE_RELAXED
        return inst & MASK_KEEP_ALL
    elif opcode == 0x0F:   # LUI
        if relaxed:
            return inst & MASK_LUI_RELAXED
        return inst & MASK_I_TYPE
    elif opcode in (0x10, 0x11, 0x12, 0x13):  # COP0-COP3
        return inst & MASK_COPROC
    elif opcode in (0x1C, 0x1D):  # SPECIAL2, SPECIAL3
        return inst & MASK_R_TYPE
    else:
        return inst & MASK_I_TYPE


# ─── YAML Parsing ─────────────────────────────────────────────────────────────

def parse_splat_yaml(yaml_path: str, repo_root: str, default_src: str = "src"):
    """Parse a splat-style yaml and extract code subsegments with ROM ranges.
    
    Returns list of dicts with keys: start_offset, end_offset, source_file, source_root
    """
    with open(yaml_path, 'r') as f:
        doc = yaml.safe_load(f)

    if not doc or 'segments' not in doc:
        return []

    segments = []
    src_path = default_src
    if doc.get('options', {}).get('src_path'):
        src_path = doc['options']['src_path']

    for seg in doc['segments']:
        if not isinstance(seg, dict) or seg.get('type') != 'code':
            continue
        seg_start = seg.get('start', 0)
        if isinstance(seg_start, str):
            seg_start = int(seg_start, 16)

        subsegments = seg.get('subsegments', [])
        if not subsegments:
            continue

        overlay_dir = seg.get('dir')

        # Parse subsegments into a list of (start_offset, type, name)
        entries = []
        for sub in subsegments:
            if isinstance(sub, list):
                raw_start = sub[0]
                if raw_start == 'auto':
                    continue
                if isinstance(raw_start, str):
                    sub_start = int(raw_start, 16)
                else:
                    sub_start = raw_start
                sub_type = str(sub[1]) if len(sub) > 1 else 'c'
                sub_name = str(sub[2]) if len(sub) > 2 else ''
                entries.append((sub_start, sub_type, sub_name))
            elif isinstance(sub, dict):
                if 'start' not in sub:
                    continue
                raw_start = sub['start']
                if isinstance(raw_start, str):
                    sub_start = int(raw_start, 16)
                else:
                    sub_start = raw_start
                sub_type = str(sub.get('type', 'c'))
                sub_name = str(sub.get('name', ''))
                entries.append((sub_start, sub_type, sub_name))

        entries.sort(key=lambda x: x[0])
        code_types = {'c', 'asm', 'hasm'}

        for i, (sub_start, sub_type, sub_name) in enumerate(entries):
            if sub_type not in code_types:
                continue
            # Determine end offset from next entry
            if i + 1 < len(entries):
                end_offset = entries[i + 1][0]
            else:
                end_offset = sub_start + 0x1000

            if overlay_dir:
                src_file = f"{overlay_dir}/{sub_name}.c"
            else:
                src_file = f"{sub_name}.c"

            segments.append({
                'start_offset': sub_start,
                'end_offset': end_offset,
                'source_file': src_file,
                'source_root': src_path,
            })

    return segments


def parse_sf64_yamls(repo_root: str):
    """Parse sf64-style multi-yaml structure (header.yaml + main.yaml + overlays.yaml)."""
    # Find the rev directory
    yaml_dirs = []
    for root, dirs, files in os.walk(os.path.join(repo_root, 'yamls')):
        if 'header.yaml' in files:
            yaml_dirs.append(root)

    if not yaml_dirs:
        return []

    rev_dir = yaml_dirs[0]
    all_segments = []

    for yf in ('main.yaml', 'overlays.yaml'):
        yp = os.path.join(rev_dir, yf)
        if not os.path.exists(yp):
            continue
        with open(yp, 'r') as f:
            doc = yaml.safe_load(f)

        if not isinstance(doc, list):
            continue

        for seg in doc:
            if not isinstance(seg, dict) or seg.get('type') != 'code':
                continue

            subsegments = seg.get('subsegments', [])
            if not subsegments:
                continue

            overlay_dir = seg.get('dir')
            src_path = 'src'

            entries = []
            for sub in subsegments:
                if isinstance(sub, list):
                    raw_start = sub[0]
                    if raw_start == 'auto':
                        continue
                    if isinstance(raw_start, str):
                        sub_start = int(raw_start, 16)
                    else:
                        sub_start = raw_start
                    sub_type = str(sub[1]) if len(sub) > 1 else 'c'
                    sub_name = str(sub[2]) if len(sub) > 2 else ''
                    entries.append((sub_start, sub_type, sub_name))

            entries.sort(key=lambda x: x[0])
            code_types = {'c', 'asm', 'hasm'}

            for i, (sub_start, sub_type, sub_name) in enumerate(entries):
                if sub_type not in code_types:
                    continue
                if i + 1 < len(entries):
                    end_offset = entries[i + 1][0]
                else:
                    end_offset = sub_start + 0x1000

                if overlay_dir:
                    src_file = f"{overlay_dir}/{sub_name}.c"
                else:
                    src_file = f"{sub_name}.c"

                all_segments.append({
                    'start_offset': sub_start,
                    'end_offset': end_offset,
                    'source_file': src_file,
                    'source_root': src_path,
                })

    return all_segments


# ─── Index Building ───────────────────────────────────────────────────────────

def build_repo_index(repo_path: str, repo_name: str, window_size: int,
                     relaxed: bool = False, opcode_only: bool = False):
    """Build the hash index for a single reference repo."""
    if opcode_only:
        mode_label = "opcode-only"
    elif relaxed:
        mode_label = "relaxed"
    else:
        mode_label = "strict"
    print(f"  Indexing {repo_name} ({mode_label}) ...", flush=True)

    # Find segments
    all_segments = []

    # 1. Try splat yaml files in repo root
    for yf in glob.glob(os.path.join(repo_path, '*.yaml')):
        segs = parse_splat_yaml(yf, repo_path)
        all_segments.extend(segs)

    # 2. Try config/ subdirectory (Pilotwings64 style)
    config_dir = os.path.join(repo_path, 'config')
    if os.path.isdir(config_dir):
        for root, dirs, files in os.walk(config_dir):
            for yf in files:
                if yf.endswith('.yaml'):
                    yp = os.path.join(root, yf)
                    segs = parse_splat_yaml(yp, repo_path)
                    all_segments.extend(segs)

    # 3. Try sf64 style
    segs = parse_sf64_yamls(repo_path)
    all_segments.extend(segs)

    if not all_segments:
        print(f"    No code segments found, skipping.")
        return None

    print(f"    Found {len(all_segments)} code regions", flush=True)

    # Find ROM
    rom_path = None
    for name in ('baserom.z64', 'baserom.us.z64', 'baserom.us.rev1.uncompressed.z64'):
        rp = os.path.join(repo_path, name)
        if os.path.exists(rp):
            rom_path = rp
            break

    if not rom_path:
        print(f"    No baserom.z64 found, skipping.")
        return None

    with open(rom_path, 'rb') as f:
        rom_bytes = f.read()

    rom_size = len(rom_bytes)
    print(f"    ROM size: {rom_size} bytes", flush=True)

    # Process segments
    hash_index = defaultdict(list)  # hash_str → list of records
    file_index = {}  # abs_source_path → { RepoName, SourceRoot, SourceFile, Segments }

    total_instructions = 0
    total_windows = 0

    for seg in all_segments:
        start_off = seg['start_offset']
        end_off = seg['end_offset']
        src_file = seg['source_file']
        src_root = seg['source_root']

        # Clamp
        if start_off >= rom_size:
            continue
        if end_off > rom_size:
            end_off = rom_size
        if end_off <= start_off:
            continue

        full_src_path = os.path.join(repo_path, src_root, src_file).replace('\\', '/')

        # Track file info
        if full_src_path not in file_index:
            file_index[full_src_path] = {
                'RepoName': repo_name,
                'SourceRoot': src_root,
                'SourceFile': src_file,
                'Segments': [],
            }
        file_index[full_src_path]['Segments'].append({
            'StartOffset': start_off,
            'EndOffset': end_off,
        })

        # Read and normalize instructions
        norms = []
        for off in range(start_off, end_off - 3, 4):
            if off + 4 > len(rom_bytes):
                break
            inst = struct.unpack('>I', rom_bytes[off:off+4])[0]
            norm = normalize_instruction(inst, relaxed=relaxed, opcode_only=opcode_only)
            if norm == 0 and not opcode_only:
                continue
            norms.append(norm)

        total_instructions += len(norms)
        if len(norms) < window_size:
            continue

        # Sliding window hashing
        for i in range(len(norms) - window_size + 1):
            # Create hash string: concatenated hex of 5 normalized values
            hash_str = ''.join(f'{norms[i+j]:08X}' for j in range(window_size))

            record = {
                'RepoName': repo_name,
                'RomOffset': start_off + i * 4,
                'SourceFile': src_file,
                'SourceRoot': src_root,
            }
            hash_index[hash_str].append(record)
            total_windows += 1

    print(f"    Indexed {total_instructions} instructions, {total_windows} windows", flush=True)
    return {
        'RepoName': repo_name,
        'HashIndex': dict(hash_index),
        'FileIndex': file_index,
        'TotalWindows': total_windows,
        'TotalInstrs': total_instructions,
    }


def main():
    import argparse
    parser = argparse.ArgumentParser(description='Build reference index for N64 decomp repos')
    parser.add_argument('--repo-filter', default='*', help='Filter repo names (glob pattern)')
    parser.add_argument('--window-size', type=int, default=5, help='Sliding window size in instructions')
    parser.add_argument('--reference-path', default=None, help='Path to reference directory')
    parser.add_argument('--output', default=None, help='Output JSON path')
    parser.add_argument('--relaxed', action='store_true', help='Use relaxed normalization (mask JAL targets, LUI addresses)')
    parser.add_argument('--opcode-only', action='store_true', help='Use opcode-only normalization (broadest matching)')
    args = parser.parse_args()

    script_dir = os.path.dirname(os.path.abspath(__file__))
    workspace_root = os.path.abspath(os.path.join(script_dir, '..'))
    reference_path = args.reference_path or os.path.join(workspace_root, 'reference')
    output_path = args.output or os.path.join(workspace_root, 'reference_index.json')

    import fnmatch
    repos = []
    for d in sorted(os.listdir(reference_path)):
        dp = os.path.join(reference_path, d)
        if os.path.isdir(dp) and fnmatch.fnmatch(d, args.repo_filter):
            repos.append((d, dp))

    if not repos:
        print(f"No reference repos found in {reference_path}")
        sys.exit(1)

    print(f"Found {len(repos)} reference repos:")
    for name, _ in repos:
        print(f"  - {name}")
    print()

    combined_hash_index = {}
    combined_file_index = {}
    all_repo_data = {}
    total_windows = 0
    total_repos = 0

    for name, path in repos:
        result = build_repo_index(path, name, args.window_size,
                                  relaxed=args.relaxed, opcode_only=args.opcode_only)
        if result:
            total_repos += 1

            # Merge hash index
            for h, records in result['HashIndex'].items():
                if h not in combined_hash_index:
                    combined_hash_index[h] = []
                combined_hash_index[h].extend(records)

            # Merge file index
            for fp, fi in result['FileIndex'].items():
                if fp not in combined_file_index:
                    combined_file_index[fp] = fi
                else:
                    combined_file_index[fp]['Segments'].extend(fi['Segments'])

            total_windows += result['TotalWindows']
            all_repo_data[name] = {
                'TotalWindows': result['TotalWindows'],
                'TotalInstrs': result['TotalInstrs'],
            }

    print()
    print(f"Indexing complete!")
    print(f"  Repos indexed: {total_repos}")
    print(f"  Total windows: {total_windows}")
    for name, data in all_repo_data.items():
        print(f"    {name}: {data['TotalWindows']} windows, {data['TotalInstrs']} instructions")

    norm_mode = 'opcode-only' if args.opcode_only else ('relaxed' if args.relaxed else 'strict')
    output = {
        'IndexVersion': 1,
        'WindowSize': args.window_size,
        'Normalization': norm_mode,
        'BuildDate': __import__('datetime').datetime.now().strftime('%Y-%m-%d %H:%M:%S'),
        'Repos': all_repo_data,
        'HashIndex': combined_hash_index,
        'FileIndex': combined_file_index,
    }

    json_str = json.dumps(output, separators=(',', ':'))
    with open(output_path, 'w') as f:
        f.write(json_str)

    size_mb = len(json_str) / (1024 * 1024)
    print()
    print(f"Index saved to: {output_path}")
    print(f"Index size: {size_mb:.2f} MB")


if __name__ == '__main__':
    main()
