#!/usr/bin/env python3
"""
Body Harvest batch opcode diff checker.
Compares compiled C bodies against target ASM opcodes.
Handles MIPS relocations correctly.

Usage: python3 bh_batch_diff.py [repo_dir] [obj_file] [src_file]
"""
import subprocess, re, os, sys

REPO = sys.argv[1] if len(sys.argv) > 1 else "/home/meridian/harvester-home/projects/body-harvest"
OBJ = sys.argv[2] if len(sys.argv) > 2 else None
SRC = sys.argv[3] if len(sys.argv) > 3 else None
CROSS = "mips-linux-gnu-objdump"

def find_obj_and_src(repo):
    """Auto-detect .o and .c file pair from changed files."""
    r = subprocess.run(['git', 'diff', '--name-only', 'HEAD'], capture_output=True, text=True, cwd=repo)
    c_files = [f for f in r.stdout.split('\n') if f.endswith('.c') and 'src.us' in f]
    if c_files:
        src = os.path.join(repo, c_files[0])
        obj = os.path.join(repo, 'build', c_files[0] + '.o')
        return obj, src
    return None, None

def load_dumps(obj_file):
    dump = subprocess.run([CROSS, '-d', '-M', 'no-aliases', obj_file], capture_output=True, text=True).stdout
    reloc_dump = subprocess.run([CROSS, '-r', obj_file], capture_output=True, text=True).stdout
    relocs = {}
    for line in reloc_dump.split('\n'):
        m = re.match(r'([0-9a-f]+)\s+(\S+)\s+(\S+)', line)
        if m:
            relocs[int(m.group(1), 16)] = m.group(2)
    return dump, relocs

def get_func_data(dump, func_name):
    lines = dump.split('\n')
    in_func = False
    data = []
    start_off = None
    for line in lines:
        hdr = re.match(r'^([0-9a-f]+) <' + re.escape(func_name) + r'>:', line)
        if hdr:
            in_func = True
            start_off = int(hdr.group(1), 16)
            continue
        if in_func:
            m = re.match(r'\s+([0-9a-f]+):\s+([0-9a-f]{8})\s+(.*)', line)
            if m:
                off = int(m.group(1), 16)
                data.append((off, int(m.group(2), 16), m.group(3).strip()))
            elif re.match(r'^[0-9a-f]+ <', line) and data:
                break
    return data, start_off

def get_asm_data(asm_file):
    data = []
    with open(asm_file) as f:
        for line in f:
            m = re.match(r'\s*/\*\s+([0-9A-Fa-f]+)\s+([0-9A-Fa-f]+)\s+([0-9A-Fa-f]{8})\s*\*/\s*(.*)', line)
            if m:
                data.append((int(m.group(2), 16), int(m.group(3), 16), m.group(4).strip()))
    return data

def compare_func(dump, relocs, func_name, asm_path):
    comp, start = get_func_data(dump, func_name)
    if not os.path.exists(asm_path):
        return None, "ASM file not found"
    tgt = get_asm_data(asm_path)
    if not comp:
        return None, "not in object"
    if len(comp) != len(tgt):
        return False, f"len mismatch compiled={len(comp)} target={len(tgt)}"
    diffs = []
    for i, ((co, cc, ci), (to, tc, ti)) in enumerate(zip(comp, tgt)):
        has_reloc = (start + i*4) in relocs if start else False
        op = (cc >> 26) & 0x3F
        if op in (2, 3):
            cc_m = cc & 0xFC000000
            tc_m = tc & 0xFC000000
        elif has_reloc or (cc & 0xFFFF) == 0:
            cc_m = cc & 0xFFFF0000
            tc_m = tc & 0xFFFF0000
        else:
            cc_m = cc
            tc_m = tc
        if cc_m != tc_m:
            diffs.append(f"[{i}] comp={hex(cc)} ({ci}) vs tgt={hex(tc)} ({ti})")
    return (True, "MATCHING") if not diffs else (False, f"{len(diffs)} diffs: " + "; ".join(diffs[:2]))

def run_batch(obj_file, src_file, verbose=True):
    if not os.path.exists(obj_file):
        print(f"ERROR: Object file not found: {obj_file}")
        return [], []
    dump, relocs = load_dumps(obj_file)
    with open(src_file) as f:
        content = f.read()
    asm_dir = os.path.join(os.path.dirname(src_file).replace('src.us', 'asm/nonmatchings'), 
                           os.path.splitext(os.path.basename(src_file))[0])
    if not os.path.exists(asm_dir):
        # Try to find asm dir from NON_MATCHING pragma
        m = re.search(r'#pragma GLOBAL_ASM\("([^"]+)"\)', content)
        if m:
            asm_dir = os.path.join(REPO, os.path.dirname(m.group(1)))
    nm_blocks = re.compile(r'#ifdef NON_MATCHING\n(.*?)#else\n#pragma GLOBAL_ASM\("([^"]+)"\)\n#endif', re.DOTALL)
    non_wrapped_asms = set()
    wrapped_asms = set()
    for m in nm_blocks.finditer(content):
        wrapped_asms.add(m.group(2))
    for line in content.split('\n'):
        m = re.search(r'#pragma GLOBAL_ASM\("([^"]+)"\)', line)
        if m and m.group(1) not in wrapped_asms:
            non_wrapped_asms.add(m.group(1))
    matching = []
    not_matching = []
    for asm_rel in sorted(non_wrapped_asms):
        asm_full = os.path.join(REPO, asm_rel)
        func_name = os.path.splitext(os.path.basename(asm_rel))[0]
        ok, msg = compare_func(dump, relocs, func_name, asm_full)
        if ok is True:
            matching.append(func_name)
        elif ok is False:
            not_matching.append((func_name, msg))
    if verbose:
        print(f"\n=== BATCH DIFF: {os.path.basename(src_file)} ===")
        print(f"MATCHING ({len(matching)}):")
        for fn in matching: print(f"  [OK] {fn}")
        print(f"\nNOT MATCHING ({len(not_matching)}):")
        for fn, msg in not_matching: print(f"  [X]  {fn}: {msg[:80]}")
    return matching, not_matching

if __name__ == '__main__':
    obj = OBJ
    src = SRC
    if not obj or not src:
        obj, src = find_obj_and_src(REPO)
    if obj and src:
        run_batch(obj, src)
    else:
        print("Usage: bh_batch_diff.py [repo] [obj_file] [src_file]")
