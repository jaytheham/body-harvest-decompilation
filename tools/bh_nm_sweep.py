#!/usr/bin/env python3
"""
bh_nm_sweep.py — NON_MATCHING wrapper verification sweep

For each NON_MATCHING-wrapped function in a zone file:
1. Strips the wrapper (exposing bare C body)
2. Builds the zone .o
3. Compares compiled bytes against ROM bytes (relocation-aware)
4. Keeps stripped if MATCHING, restores wrapper if NOT MATCHING

Usage:
    python3 bh_nm_sweep.py <zone_c_file> <rom_path>

Example:
    python3 ~/harvester-home/tools/bh_nm_sweep.py \
        src.us/overlay_level/comet/318E20.c \
        baserom.us.z64

Outputs:
    MATCHING: <func>   — wrapper stripped, C body kept
    NOT MATCHING: <func> (<reason>)  — wrapper restored
    BUILD FAIL: <func> — build error, wrapper restored

Exit code: 0 if any functions matched, 1 if none matched.
"""

import re
import struct
import subprocess
import sys
import os

def get_reloc_offsets(obj_path):
    r = subprocess.run(['mips-linux-gnu-objdump', '-r', obj_path], capture_output=True, text=True)
    offsets = set()
    for line in r.stdout.split('\n'):
        m = re.match(r'([0-9a-f]+)\s+R_MIPS_', line)
        if m:
            offsets.add(int(m.group(1), 16))
    return offsets

def get_text_offset(obj_path):
    r = subprocess.run(['readelf', '-S', obj_path], capture_output=True, text=True)
    m = re.search(r'\.text\s+\w+\s+([0-9a-f]+)\s+([0-9a-f]+)', r.stdout)
    return int(m.group(2), 16) if m else 0

def get_func_compiled_bytes(obj_path, func_name, text_off, size):
    r = subprocess.run(['mips-linux-gnu-objdump', '-d', obj_path], capture_output=True, text=True)
    m = re.search(r'([0-9a-f]+)\s+<' + re.escape(func_name) + r'>:', r.stdout)
    if not m:
        return None, None
    addr = int(m.group(1), 16)
    with open(obj_path, 'rb') as f:
        f.seek(text_off + addr)
        return f.read(size), addr

def get_rom_offset(name):
    m = re.search(r'func_[0-9A-Fa-f]+_([0-9A-Fa-f]+)', name)
    return int(m.group(1), 16) if m else 0

def build_rom_gap_table(content):
    """Return sorted list of (rom_offset, func_name) for all functions in zone."""
    asm_funcs = set(re.findall(r'GLOBAL_ASM\(".*?/(func_[0-9A-Fa-f_]+)\.s"\)', content))
    nm_funcs = set()
    for blk in re.findall(r'#ifdef NON_MATCHING\s+(.*?)#else', content, re.DOTALL):
        nm_funcs.update(re.findall(r'(func_[0-9A-Fa-f_]+)\s*\(', blk))
    all_defs = set(re.findall(
        r'(?:void|s32|u32|s16|u16|s8|u8|f32|f64|static)\s+[^\n{]*?(func_[0-9A-Fa-f_]+)\s*\(',
        content
    ))
    bare = all_defs - asm_funcs - nm_funcs
    all_zone = sorted(asm_funcs | nm_funcs | bare, key=get_rom_offset)
    return [(get_rom_offset(f), f) for f in all_zone]

def rom_gap_for_func(func_name, rom_table):
    for i, (rom_off, name) in enumerate(rom_table):
        if name == func_name and i + 1 < len(rom_table):
            return rom_off, rom_table[i+1][0] - rom_off
    return None, None

def check_match(func_name, content, obj_path, rom_path):
    """Returns (True/False/None, reason_str)."""
    rom_table = build_rom_gap_table(content)
    rom_off, gap = rom_gap_for_func(func_name, rom_table)
    if not gap:
        return None, "no_gap"

    text_off = get_text_offset(obj_path)
    relocs = get_reloc_offsets(obj_path)
    compiled_bytes, compiled_addr = get_func_compiled_bytes(obj_path, func_name, text_off, gap)
    if compiled_bytes is None:
        return None, "not_in_obj"

    with open(rom_path, 'rb') as f:
        f.seek(rom_off)
        rom_bytes = f.read(gap)

    if len(compiled_bytes) != gap:
        return False, f"size mismatch compiled={len(compiled_bytes)} rom={gap}"

    real_diffs = []
    for w in range(0, gap, 4):
        c = struct.unpack('>I', compiled_bytes[w:w+4])[0]
        r = struct.unpack('>I', rom_bytes[w:w+4])[0]
        if c == r:
            continue
        if (compiled_addr + w) in relocs:
            continue
        real_diffs.append((w, c, r))

    return len(real_diffs) == 0, f"{len(real_diffs)} real diffs"


def main():
    if len(sys.argv) < 3:
        print(__doc__)
        sys.exit(1)

    zone_file = sys.argv[1]
    rom_path = sys.argv[2]

    # Derive obj path from zone file path
    obj_path = 'build/' + zone_file.replace('.c', '.c.o')

    with open(zone_file) as f:
        content = f.read()

    block_pattern = re.compile(
        r'(#ifdef NON_MATCHING\n(?:.*?\n)*?#else\n#pragma GLOBAL_ASM\("([^"]+)"\)\n#endif)\n?',
        re.MULTILINE
    )
    blocks = list(block_pattern.finditer(content))
    print(f"Found {len(blocks)} NON_MATCHING blocks in {zone_file}")

    matching = []
    not_matching = []
    current_content = content

    for b in blocks:
        full_block = b.group(1)
        c_body = re.search(r'#ifdef NON_MATCHING\n((?:.*?\n)*?)#else', full_block, re.MULTILINE).group(1)
        asm_path = b.group(2)
        func_m = re.search(r'(func_[0-9A-Fa-f_]+)', asm_path)
        func_name = func_m.group(1) if func_m else "unknown"

        # Strip wrapper from current content
        stripped = re.sub(
            r'#ifdef NON_MATCHING\n' + re.escape(c_body) + r'#else\n#pragma GLOBAL_ASM\("' + re.escape(asm_path) + r'"\)\n#endif\n?',
            c_body,
            current_content,
            count=1,
            flags=re.MULTILINE
        )

        if stripped == current_content:
            print(f"  SKIP: {func_name} (block not found in current content)")
            continue

        with open(zone_file, 'w') as f:
            f.write(stripped)

        # Build
        br = subprocess.run(
            ['make', obj_path],
            capture_output=True, text=True,
            cwd=os.path.dirname(os.path.abspath(zone_file)) or '.'
        )
        if br.returncode != 0:
            print(f"  BUILD FAIL: {func_name}")
            with open(zone_file, 'w') as f:
                f.write(current_content)
            not_matching.append((func_name, "build_fail"))
            continue

        is_match, reason = check_match(func_name, stripped, obj_path, rom_path)

        if is_match:
            print(f"  MATCHING: {func_name}")
            matching.append(func_name)
            current_content = stripped
        else:
            print(f"  NOT MATCHING: {func_name} ({reason})")
            not_matching.append((func_name, reason))
            with open(zone_file, 'w') as f:
                f.write(current_content)

    # Final write
    with open(zone_file, 'w') as f:
        f.write(current_content)

    print(f"\n=== SWEEP COMPLETE ===")
    print(f"MATCHING ({len(matching)}): {matching}")
    print(f"NOT MATCHING ({len(not_matching)}): {[n for n,_ in not_matching]}")

    return 0 if matching else 1


if __name__ == '__main__':
    sys.exit(main())
