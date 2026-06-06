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

def _parse_hex(val):
    """Parse a value that may be int, hex string, or 'auto'."""
    if isinstance(val, str):
        if val == 'auto':
            return None
        return int(val, 16)
    return val


def _build_segment_vram_map(segments_list):
    """After all YAMLs are parsed, build a lookup of segment name → {RomBase, VramBase, RomStart, RomEnd}.
    
    Also resolves 'follows_vram' chains.
    """
    seg_map = {}
    # First pass: collect all segments with explicit VRAM
    for s in segments_list:
        name = s.get('seg_name')
        if not name:
            continue
        vram = s.get('seg_vram_base')
        rom_base = s.get('seg_rom_base')
        rom_start = s.get('start_offset')
        rom_end = s.get('end_offset')
        follows = s.get('follows_vram')
        if vram is not None and rom_base is not None:
            seg_map[name] = {
                'VramBase': vram,
                'RomBase': rom_base,
                'RomStart': rom_start,
                'RomEnd': rom_end,
                'FollowsVram': follows,
            }

    # Resolve follows_vram chains
    for name, info in seg_map.items():
        if info['FollowsVram'] and info['FollowsVram'] in seg_map:
            parent = seg_map[info['FollowsVram']]
            info['VramBase'] = parent['VramBase']
            info['RomBase'] = parent['RomBase']

    return seg_map


def parse_splat_yaml(yaml_path: str, repo_root: str, default_src: str = "src"):
    """Parse a splat-style yaml and extract code subsegments with ROM ranges.
    
    Returns (segments, segment_vram_map) where:
      segments — list of dicts with keys: start_offset, end_offset, source_file, source_root,
                 seg_name, seg_vram_base, seg_rom_base, follows_vram
      segment_vram_map — dict: seg_name → {VramBase, RomBase, RomStart, RomEnd, FollowsVram}
    """
    with open(yaml_path, 'r') as f:
        doc = yaml.safe_load(f)

    if not doc or 'segments' not in doc:
        return [], {}

    segments = []
    src_path = default_src
    if doc.get('options', {}).get('src_path'):
        src_path = doc['options']['src_path']

    # Collect symbol_addrs paths for later use
    sym_paths = []
    sym_config = doc.get('options', {}).get('symbol_addrs_path', [])
    if isinstance(sym_config, list):
        for sp in sym_config:
            full_sp = os.path.normpath(os.path.join(repo_root, sp))
            sym_paths.append(full_sp)
    elif isinstance(sym_config, str):
        sym_paths.append(os.path.normpath(os.path.join(repo_root, sym_config)))
    for seg in doc['segments']:
        if not isinstance(seg, dict) or seg.get('type') != 'code':
            continue
        seg_start = _parse_hex(seg.get('start', 0))
        seg_vram = _parse_hex(seg.get('vram'))
        seg_name = seg.get('name', '')
        follows_vram = seg.get('follows_vram')

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
                sub_start = _parse_hex(raw_start)
                sub_type = str(sub[1]) if len(sub) > 1 else 'c'
                sub_name = str(sub[2]) if len(sub) > 2 else ''
                entries.append((sub_start, sub_type, sub_name))
            elif isinstance(sub, dict):
                if 'start' not in sub:
                    continue
                sub_start = _parse_hex(sub['start'])
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
                'seg_name': seg_name,
                'seg_vram_base': seg_vram,
                'seg_rom_base': seg_start,
                'follows_vram': follows_vram,
            })

    seg_map = _build_segment_vram_map(segments)
    return segments, seg_map, sym_paths


def parse_sf64_yamls(repo_root: str):
    """Parse sf64-style multi-yaml structure (header.yaml + main.yaml + overlays.yaml).
    
    Returns (segments, segment_vram_map, sym_paths).
    See parse_splat_yaml for return type details.
    """
    # Find the rev directory
    yaml_dirs = []
    for root, dirs, files in os.walk(os.path.join(repo_root, 'yamls')):
        if 'header.yaml' in files:
            yaml_dirs.append(root)

    if not yaml_dirs:
        return [], {}, []

    rev_dir = yaml_dirs[0]
    all_segments = []

    # Read header.yaml for symbol_addrs_paths and other options
    header_yaml = os.path.join(rev_dir, 'header.yaml')
    sym_paths = []
    if os.path.exists(header_yaml):
        with open(header_yaml, 'r') as f:
            header_doc = yaml.safe_load(f)
        sym_config = header_doc.get('options', {}).get('symbol_addrs_path', [])
        if isinstance(sym_config, list):
            for sp in sym_config:
                full_sp = os.path.normpath(os.path.join(repo_root, sp))
                sym_paths.append(full_sp)
        elif isinstance(sym_config, str):
            sym_paths.append(os.path.normpath(os.path.join(repo_root, sym_config)))

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

            seg_start = _parse_hex(seg.get('start', 0))
            seg_vram = _parse_hex(seg.get('vram'))
            seg_name = seg.get('name', '')
            follows_vram = seg.get('follows_vram')

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
                    sub_start = _parse_hex(raw_start)
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
                    'seg_name': seg_name,
                    'seg_vram_base': seg_vram,
                    'seg_rom_base': seg_start,
                    'follows_vram': follows_vram,
                })

    seg_map = _build_segment_vram_map(all_segments)
    return all_segments, seg_map, sym_paths


# ─── Symbol Address Parsing ──────────────────────────────────────────────────────

# Patterns for identifying data symbols (not functions) by name
_DATA_SYMBOL_PREFIXES = ('D_', 'img_', 's', 'g')
_DATA_SYMBOL_SUFFIXES = ('_bin', '_png', '_pal', '_rgba16', '_rgba32',
                         '_ci4', '_ci8', '_ia4', '_ia8', '_ia16',
                         '_i4', '_i8', '_tlut', '.h')


def _looks_like_function(name: str) -> bool:
    """Heuristic: return True if the symbol name looks like a function."""
    # Strip common prefixes like i1_, i2_, D_menu_ etc.
    base = name
    # Overlay-prefixed names like D_i1_8019A04C are data
    if base.startswith('D_'):
        return False
    if base.startswith('img_'):
        return False
    # Name ending in data-like suffix
    for suffix in _DATA_SYMBOL_SUFFIXES:
        if base.endswith(suffix):
            return False
    return True


def parse_symbol_addrs(repo_root: str, sym_paths: list) -> list:
    """Parse symbol_addrs*.txt files and return list of symbol dicts.
    
    Each dict has keys: Name, VramAddr, RomAddr (optional), SegmentName (optional).
    
    Handles formats:
        name = 0xADDR;
        name = 0xADDR; // type:func
        name = 0xADDR; // segment:ovl_i1
        name = 0xADDR; // rom:0xROM
    """
    symbols = []
    seen = set()

    for sym_file in sym_paths:
        if not os.path.exists(sym_file):
            continue
        with open(sym_file, 'r') as f:
            lines = f.readlines()

        for line in lines:
            line = line.strip()
            # Skip empty, comments, linker-section lines
            if not line or line.startswith('//') or line.startswith('#'):
                continue
            # Skip lines that are linker-style symbol definitions (e.g., D_1 = 0x1;)
            if '//ignore:true' in line:
                continue

            # Parse: name = 0xADDR; // comments
            if '=' not in line:
                continue

            parts = line.split('=', 1)
            name = parts[0].strip()
            rest = parts[1].strip()

            # Extract hex address (first token before ; or //)
            addr_str = rest.split(';')[0].split('/')[0].strip()
            if not addr_str.startswith('0x') and not addr_str.startswith('0X'):
                continue

            try:
                addr = int(addr_str, 16)
            except ValueError:
                continue

            # Skip duplicate names
            if name in seen:
                continue
            seen.add(name)

            # Parse comments
            seg_name = None
            rom_addr = None
            sym_type = None

            if '//' in line:
                comment = line.split('//', 1)[1]
                # Extract type:func or type:u8 etc.
                type_match = __import__('re').search(r'type:(\S+)', comment)
                if type_match:
                    sym_type = type_match.group(1)
                # Extract segment:NAME
                seg_match = __import__('re').search(r'segment:(\S+)', comment)
                if seg_match:
                    seg_name = seg_match.group(1)
                # Extract rom:0xROM
                rom_match = __import__('re').search(r'rom:0x([0-9A-Fa-f]+)', comment)
                if rom_match:
                    rom_addr = int(rom_match.group(1), 16)

            # Determine if this is a function symbol
            is_func = _looks_like_function(name)
            if sym_type == 'func':
                is_func = True
            elif sym_type is not None and sym_type != 'func':
                is_func = False

            if not is_func:
                continue

            sym = {
                'Name': name,
                'VramAddr': addr,
                'SegmentName': seg_name,
            }
            if rom_addr is not None:
                sym['RomAddr'] = rom_addr

            symbols.append(sym)

    return symbols


def vram_to_rom(symbols: list, seg_map: dict) -> list:
    """Convert symbol VRAM addresses to ROM offsets using segment mapping.
    
    For each symbol, finds the segment whose VRAM range contains the symbol's
    address and computes ROM offset. Also handles symbols with explicit RomAddr.
    
    Returns list of symbols with added 'RomAddr' field where conversion succeeded.
    """
    # Build VRAM-range index from seg_map: list of (vram_start, vram_end, rom_base, name)
    seg_ranges = []
    for name, info in seg_map.items():
        vram_start = info['VramBase']
        # Estimate VRAM end from ROM range
        rom_size = info['RomEnd'] - info['RomBase']
        vram_end = vram_start + rom_size
        seg_ranges.append((vram_start, vram_end, info['RomBase'], info['VramBase'], name))

    seg_ranges.sort(key=lambda x: x[0])

    result = []
    for sym in symbols:
        # If symbol already has explicit ROM address, use it
        if 'RomAddr' in sym:
            result.append(sym)
            continue

        vram = sym['VramAddr']

        # Try explicit segment annotation first
        if sym['SegmentName'] and sym['SegmentName'] in seg_map:
            info = seg_map[sym['SegmentName']]
            rom = info['RomBase'] + (vram - info['VramBase'])
            sym['RomAddr'] = rom
            result.append(sym)
            continue

        # Fall back to VRAM range matching
        found = False
        for vs, ve, rb, vb, sn in seg_ranges:
            if vs <= vram < ve:
                rom = rb + (vram - vb)
                sym['RomAddr'] = rom
                result.append(sym)
                found = True
                break

        if not found:
            # Symbol address doesn't match any segment - skip it
            pass

    return result


def build_symbol_index(symbols_with_rom: list, file_index: dict) -> dict:
    """Build a SymbolIndex mapping each file to its functions with ROM ranges.
    
    SymbolIndex structure: { "Repo|SourceFile": [{"Name":str, "RomStart":int, "RomEnd":int}, ...] }
    
    For each file in file_index, finds all symbols whose ROM addresses fall within
    the file's segment range, sorts them by address, and infers end addresses.
    """
    # Build a lookup: (RepoName, SourceFile) → list of symbols
    file_symbols = defaultdict(list)

    for sym in symbols_with_rom:
        rom = sym.get('RomAddr')
        if rom is None:
            continue

        # Find which file this symbol belongs to by checking ROM ranges
        for fp, fi in file_index.items():
            repo_name = fi['RepoName']
            source_file = fi['SourceFile']
            for seg in fi.get('Segments', []):
                if seg['StartOffset'] <= rom < seg['EndOffset']:
                    key = f"{repo_name}|{source_file}"
                    file_symbols[key].append({
                        'Name': sym['Name'],
                        'RomAddr': rom,
                    })
                    break
            else:
                continue
            break

    # Sort by ROM address and compute end addresses
    symbol_index = {}
    for key, syms in file_symbols.items():
        syms.sort(key=lambda s: s['RomAddr'])
        # Look up the file's ROM range to get end bounds
        file_end = None
        for fp, fi in file_index.items():
            if f"{fi['RepoName']}|{fi['SourceFile']}" == key:
                for seg in fi.get('Segments', []):
                    se = seg['EndOffset']
                    if file_end is None or se > file_end:
                        file_end = se

        entries = []
        for i, s in enumerate(syms):
            rom_start = s['RomAddr']
            if i + 1 < len(syms):
                rom_end = syms[i + 1]['RomAddr']
            else:
                rom_end = file_end if file_end else rom_start + 0x1000
            entries.append({
                'Name': s['Name'],
                'RomStart': rom_start,
                'RomEnd': rom_end,
            })

        symbol_index[key] = entries

    return symbol_index


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
    all_seg_maps = []
    all_sym_paths = []

    # 1. Try splat yaml files in repo root
    for yf in glob.glob(os.path.join(repo_path, '*.yaml')):
        segs, seg_map, sym_paths = parse_splat_yaml(yf, repo_path)
        all_segments.extend(segs)
        all_seg_maps.append(seg_map)
        all_sym_paths.extend(sym_paths)

    # 2. Try config/ subdirectory (Pilotwings64 style)
    config_dir = os.path.join(repo_path, 'config')
    if os.path.isdir(config_dir):
        for root, dirs, files in os.walk(config_dir):
            for yf in files:
                if yf.endswith('.yaml'):
                    yp = os.path.join(root, yf)
                    segs, seg_map, sym_paths = parse_splat_yaml(yp, repo_path)
                    all_segments.extend(segs)
                    all_seg_maps.append(seg_map)
                    all_sym_paths.extend(sym_paths)

    # 3. Try sf64 style
    segs, seg_map, sym_paths = parse_sf64_yamls(repo_path)
    all_segments.extend(segs)
    all_seg_maps.append(seg_map)
    all_sym_paths.extend(sym_paths)

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

    # ── Build SymbolIndex ────────────────────────────────────────────────────
    symbol_index = {}
    if all_sym_paths:
        # Merge segment maps
        merged_seg_map = {}
        for sm in all_seg_maps:
            merged_seg_map.update(sm)

        symbols = parse_symbol_addrs(repo_path, all_sym_paths)
        if symbols:
            symbols_with_rom = vram_to_rom(symbols, merged_seg_map)
            if symbols_with_rom:
                symbol_index = build_symbol_index(symbols_with_rom, file_index)
                print(f"    Indexed {len(symbols_with_rom)} function symbols, "
                      f"{len(symbol_index)} files have symbol data", flush=True)
            else:
                print(f"    No symbols could be mapped to ROM addresses", flush=True)
        else:
            print(f"    No function symbols found in symbol_addrs files", flush=True)
    else:
        print(f"    No symbol_addrs files found", flush=True)

    return {
        'RepoName': repo_name,
        'HashIndex': dict(hash_index),
        'FileIndex': file_index,
        'SymbolIndex': symbol_index,
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
    combined_symbol_index = {}
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

            # Merge symbol index
            for key, entries in result.get('SymbolIndex', {}).items():
                if key not in combined_symbol_index:
                    combined_symbol_index[key] = entries

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
        'IndexVersion': 2,
        'WindowSize': args.window_size,
        'Normalization': norm_mode,
        'BuildDate': __import__('datetime').datetime.now().strftime('%Y-%m-%d %H:%M:%S'),
        'Repos': all_repo_data,
        'HashIndex': combined_hash_index,
        'FileIndex': combined_file_index,
        'SymbolIndex': combined_symbol_index,
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
