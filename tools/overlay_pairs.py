#!/usr/bin/env python3
"""Pair the NTSC functions of one overlay C file with the PAL functions that cover them, and derive what sharing needs.

A C file that NTSC and PAL share is compiled once, with NTSC names, and linked at PAL addresses.  That works only if
the PAL symbol tables know every NTSC name the file uses at its PAL address, and only for the functions whose PAL
code is the same.  This tool reads the extracted assembly of both versions BEFORE the file is shared, pairs the
functions, compares them instruction by instruction, and prints what to add.

    python tools/overlay_pairs.py --us-dir overlay_gameplay/frontend/52690 \
        --eu-dir overlay_gameplay/frontend/52E50 --us-obj build/src.us/overlay_gameplay/frontend/52690.c.o

--us-dir names the NTSC functions: every ``.s`` file of ``asm/matchings/<dir>`` and ``asm/nonmatchings/<dir>``.
--eu-dir (repeatable, in address order) names the PAL stubs that cover the same code: ``asm.eu/nonmatchings/<dir>``
and ``asm.eu/matchings/<dir>``.  Both versions must be extracted, and the US and EU ELFs built, so that names have
addresses (without an ELF a name that encodes its address, ``D_8007A000``, still works).

Pairing: with ``--align order`` (the default) the functions are paired in address order and the counts must be equal.
With ``--align auto`` the functions are aligned by their opcode sequences, so a PAL file with a function more or less
pairs the rest; the unpaired ones are listed.

Output, one item per line:

    PAIRS / UNPAIRED / DIFF / CONFLICT / PROBLEM    what was found; a DIFF is a pair that cannot share the C
    NAME <ntsc name> = 0x<PAL address>;             a function: add to symbol_addrs.eu.txt with ``// type:func rom:0x..``
    PIN <ntsc name> = 0x<PAL address>;              a name the NTSC object leaves undefined: add to undefined_syms.eu.txt

A pair is a DIFF when the opcodes differ at any position, the instruction counts differ, or the operands differ
beyond symbol names and branch labels (a constant that changed in PAL).  A DIFF function contributes no references;
for the shared file it must keep a PAL-only definition.  The PAL address of every NTSC address the file refers to is
read from the operands of the paired instructions (``%hi``/``%lo`` and ``jal``/``j``); two different answers for one
address are a CONFLICT.  A PIN is printed for each undefined symbol of ``--us-obj`` (read with ``nm``) that the
PAL ELF does not already define at that address.

Exit status is 0 when everything pairs and nothing is unresolved, 1 otherwise.
"""
from __future__ import annotations

import argparse
import difflib
import re
import shutil
import struct
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
LINE = re.compile(r"/\*\s*([0-9A-Fa-f]+)\s+([0-9A-Fa-f]{8})\s+([0-9A-Fa-f]{8})\s*\*/\s+(\S+)\s*(.*)$")
HI = re.compile(r"%hi\(([^)]+)\)")
LO = re.compile(r"%lo\(([^)]+)\)")
JUMP = re.compile(r"^(?:jal|j)\s+(\S+)")
SYMBOL = re.compile(r"^([A-Za-z_][A-Za-z0-9_]*)\s*(?:([+-])\s*(0x[0-9A-Fa-f]+|\d+))?$")
ADDRESS_IN_NAME = re.compile(r"(?:D|func|jtbl|jlabel)_?([0-9A-F]{8})")
LOCAL_LABEL = re.compile(r"\.L[0-9A-Fa-f]{8}(?:_[0-9A-Fa-f]+)?")
SYMBOL_OPERAND = re.compile(r"%(?:hi|lo)\([^)]*\)|(?<![\w.])(?:D|func|jtbl|jlabel)_[0-9A-Za-z_]+")


def read_symbols(path: Path) -> dict[str, int]:
    """Name -> value of every defined symbol of a big-endian 32-bit MIPS ELF (``{}`` when the file is missing)."""
    if not path.is_file():
        return {}
    data = path.read_bytes()
    if data[:4] != b"\x7fELF" or data[4] != 1 or data[5] != 2:
        sys.exit(f"{path}: not a big-endian 32-bit ELF")
    shoff, = struct.unpack_from(">I", data, 0x20)
    shentsize, shnum = struct.unpack_from(">HH", data, 0x2E)
    sections = [struct.unpack_from(">10I", data, shoff + i * shentsize) for i in range(shnum)]
    table: dict[str, int] = {}
    for _name, kind, _flags, _addr, offset, size, link, _info, _align, entsize in sections:
        if kind != 2:  # SHT_SYMTAB
            continue
        strtab = sections[link]
        strings = data[strtab[4]:strtab[4] + strtab[5]]
        for k in range(size // (entsize or 16)):
            st_name, st_value, _st_size, _st_info, _st_other, st_shndx = struct.unpack_from(">IIIBBH", data, offset + k * 16)
            if st_name and st_shndx != 0:
                end = strings.index(b"\0", st_name)
                table.setdefault(strings[st_name:end].decode("ascii", "replace"), st_value)
    return table


def parse_function(path: Path) -> list[tuple[int, str, str]]:
    """The instructions of one splat function listing as (vram, opcode, operands); trailing nops are dropped."""
    out = []
    for raw in path.read_text(encoding="utf-8", errors="replace").splitlines():
        m = LINE.match(raw.strip())
        if m:
            out.append((int(m.group(2), 16), m.group(4), m.group(5).strip()))
    while out and out[-1][1] == "nop":
        out.pop()
    return out


def function_files(directories: list[Path]) -> list[tuple[int, Path]]:
    """(vram, file) of every function listing under the directories, in address order."""
    found = []
    for directory in directories:
        for path in sorted(directory.glob("*.s")) if directory.is_dir() else []:
            m = re.match(r"func_([0-9A-F]{8})_", path.name)
            if m:
                vram = int(m.group(1), 16)
            else:
                instructions = parse_function(path)
                vram = instructions[0][0] if instructions else 0
            found.append((vram, path))
    return sorted(found, key=lambda item: item[0])


def symbol_tokens(opcode: str, operands: str) -> list[tuple[str, int]]:
    """The symbol operands of one instruction as (name, offset)."""
    text = f"{opcode} {operands}"
    tokens = []
    for pattern in (HI, LO):
        for group in pattern.findall(text):
            m = SYMBOL.match(group.strip())
            if m:
                offset = (int(m.group(3), 0) * (-1 if m.group(2) == "-" else 1)) if m.group(3) else 0
                tokens.append((m.group(1), offset))
    m = JUMP.match(text)
    if m and not m.group(1).startswith(".L"):
        tokens.append((m.group(1), 0))
    return tokens


def address_of(name: str, table: dict[str, int]) -> int | None:
    """The address of a symbol: from the ELF when it has the name, else from the address that the name encodes."""
    if name in table:
        return table[name]
    m = ADDRESS_IN_NAME.search(name)
    return int(m.group(1), 16) if m else None


def operand_shape(instruction: tuple[int, str, str]) -> str:
    """The instruction with its symbol names and branch labels blanked, so a changed constant stands out."""
    text = f"{instruction[1]} {instruction[2]}"
    return SYMBOL_OPERAND.sub("SYM", LOCAL_LABEL.sub("LBL", text))


def compare(us: list, eu: list) -> str | None:
    """None when the two functions have the same shape and constants; otherwise why not."""
    if len(us) != len(eu):
        return f"instruction count {len(us)} against {len(eu)}"
    for k, (x, y) in enumerate(zip(us, eu)):
        if x[1] != y[1]:
            return f"opcode {x[1]} against {y[1]} at +0x{4 * k:X}"
    for k, (x, y) in enumerate(zip(us, eu)):
        if operand_shape(x) != operand_shape(y):
            return f"operand '{x[2]}' against '{y[2]}' at +0x{4 * k:X}"
    return None


def align(us_files: list, eu_files: list, us_code: list, eu_code: list, mode: str):
    """Pair the functions: returns (pairs, us_unpaired, eu_unpaired) as lists of indexes into the two lists."""
    if mode == "order":
        if len(us_files) != len(eu_files):
            sys.exit(f"PROBLEM unequal function counts ({len(us_files)} NTSC, {len(eu_files)} PAL); use --align auto")
        return [(i, i) for i in range(len(us_files))], [], []
    us_sig = [tuple(ins[1] for ins in code) for code in us_code]
    eu_sig = [tuple(ins[1] for ins in code) for code in eu_code]
    matcher = difflib.SequenceMatcher(None, us_sig, eu_sig, autojunk=False)
    pairs, us_left, eu_left = [], [], []
    for tag, a0, a1, b0, b1 in matcher.get_opcodes():
        if tag == "equal" or (tag == "replace" and a1 - a0 == b1 - b0):
            pairs += list(zip(range(a0, a1), range(b0, b1)))
        else:
            us_left += list(range(a0, a1))
            eu_left += list(range(b0, b1))
    return pairs, us_left, eu_left


def undefined_names(obj: Path) -> list[str]:
    """The undefined global symbols of an object file, read with whatever ``nm`` is at hand."""
    candidates = ["mips-linux-gnu-nm", "mips64-linux-gnu-nm", "mips-ps2-decompals-nm"]
    local = ROOT / "tools" / "windows" / "binutils" / "mips-ps2-decompals-nm.exe"
    nm = str(local) if local.is_file() else next((shutil.which(c) for c in candidates if shutil.which(c)), None)
    if not nm:
        sys.exit("no nm found (install binutils-mips-linux-gnu or run the native build once)")
    out = subprocess.run([nm, str(obj)], capture_output=True, text=True, check=True).stdout
    return sorted({ln.split()[-1] for ln in out.splitlines() if len(ln.split()) >= 2 and ln.split()[-2] == "U"})


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--root", type=Path, default=ROOT, help="the decomp checkout (default: this one)")
    parser.add_argument("--us-dir", required=True, help="NTSC function directory, e.g. overlay_gameplay/frontend/52690")
    parser.add_argument("--eu-dir", required=True, action="append", help="PAL stub directory (repeatable, in address order)")
    parser.add_argument("--us-obj", help="the NTSC object of the C file, for the PIN lines")
    parser.add_argument("--us-elf", default="build/bh.us.elf")
    parser.add_argument("--eu-elf", default="build.eu/bh.eu.elf")
    parser.add_argument("--align", choices=("order", "auto"), default="order")
    args = parser.parse_args()
    root = args.root

    us_files = function_files([root / "asm/matchings" / args.us_dir, root / "asm/nonmatchings" / args.us_dir])
    matched = {path.name for path in (root / "asm/matchings" / args.us_dir).glob("*.s")}
    eu_files = []
    for directory in args.eu_dir:
        eu_files += function_files([root / "asm.eu/nonmatchings" / directory, root / "asm.eu/matchings" / directory])
    eu_files.sort(key=lambda item: item[0])
    if not us_files or not eu_files:
        sys.exit("PROBLEM no functions found: extract both versions first")
    us_code = [parse_function(path) for _, path in us_files]
    eu_code = [parse_function(path) for _, path in eu_files]
    pairs, us_left, eu_left = align(us_files, eu_files, us_code, eu_code, args.align)
    print(f"PAIRS {len(pairs)} (NTSC {len(us_files)}, {len(matched)} matched C; PAL {len(eu_files)})")
    for i in us_left:
        print(f"UNPAIRED NTSC {us_files[i][1].name} ({'matched C' if us_files[i][1].name in matched else 'GLOBAL_ASM'})")
    for j in eu_left:
        print(f"UNPAIRED PAL {eu_files[j][1].name}")

    us_symbols = read_symbols(root / args.us_elf)
    eu_symbols = read_symbols(root / args.eu_elf)
    mapping: dict[int, dict[int, int]] = {}
    differing = []
    names: list[tuple[str, int]] = []
    for i, j in pairs:
        why = compare(us_code[i], eu_code[j])
        if why:
            differing.append((us_files[i][1].name, eu_files[j][1].name, why, us_files[i][1].name in matched))
            continue
        names.append((us_files[i][1].stem, eu_files[j][0]))
        for x, y in zip(us_code[i], eu_code[j]):
            for (n1, o1), (n2, o2) in zip(symbol_tokens(x[1], x[2]), symbol_tokens(y[1], y[2])):
                a, b = address_of(n1, us_symbols), address_of(n2, eu_symbols)
                if a is not None and b is not None:
                    mapping.setdefault(a + o1, {}).setdefault(b + o2, 0)
                    mapping[a + o1][b + o2] += 1
    for us_name, eu_name, why, is_matched in differing:
        print(f"DIFF {us_name} ({'matched C' if is_matched else 'GLOBAL_ASM'}) against {eu_name}: {why}")
    conflicts = {a: b for a, b in mapping.items() if len(b) > 1}
    for a, b in sorted(conflicts.items()):
        print(f"CONFLICT 0x{a:08X} -> {', '.join('0x%08X' % x for x in b)}")
    deltas: dict[int, int] = {}
    for a, b in mapping.items():
        delta = next(iter(b)) - a
        deltas[delta] = deltas.get(delta, 0) + 1
    print("DELTAS PAL minus NTSC (addresses): " + ", ".join(f"{d:#x}: {c}" for d, c in sorted(deltas.items(), key=lambda t: -t[1])[:8]))

    problems = 0
    for us_name, address in names:
        print(f"NAME {us_name} = 0x{address:08X};")
    if args.us_obj:
        for name in undefined_names(root / args.us_obj):
            a = address_of(name, us_symbols)
            hit = mapping.get(a) if a is not None else None
            if a is None:
                print(f"PROBLEM {name}: no NTSC address")
                problems += 1
            elif not hit:
                print(f"PROBLEM {name} (0x{a:08X}): no paired instruction refers to it")
                problems += 1
            elif len(hit) > 1:
                problems += 1
            else:
                address = next(iter(hit))
                if eu_symbols.get(name) != address:
                    print(f"PIN {name} = 0x{address:08X};")
    return 1 if (us_left or eu_left or differing or conflicts or problems) else 0


if __name__ == "__main__":
    sys.exit(main())
