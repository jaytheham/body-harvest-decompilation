#!/usr/bin/env python3
"""Pair the NTSC and EU functions of one core file and list the symbol-table lines sharing it needs.

A core C file that is shared between NTSC and EU is compiled once, with NTSC names, and linked at EU addresses.
That works only if the EU symbol tables know every NTSC name at its EU address.  This tool reads the disassembly
of both versions of the file BEFORE it is converted, pairs the functions, and works out what to add.

    python tools/eu_symbol_pairs.py <File>        e.g. E830, 17EE0, AD60, 1050, 53F0

Prerequisites: both versions extracted (``asm/``, ``asm.eu/``, ``bh.eu.ld``) and the US version built
(``build/src.us/core/<File>.c.o`` and the link map ``build/bh.us.map``).  Run it on the unconverted file.  After
converting, rebuild the US version before ``tools/eu_collisions_build.py``: that script reads
``build/src/common/**/*.o``, and a stale US tree makes it bind EU references to the wrong address without any error.

Output, one item per line on stdout (``#`` lines are commentary):

    NAME <ntsc name> = 0x<EU address>;   add to symbol_addrs.eu.txt: a function, or a hand-written jump table
    PIN <extern> = 0x<EU address>;       add to undefined_syms.eu.txt: an extern the shared C refers to by NTSC name,
                                         or an EU label of the file's own data that EU assembly still uses, or a
                                         data symbol the object defines but the NTSC tables place
    DROP <name>                          an existing hand-written EU entry the shared file now defines or supersedes
    PROBLEM <text>                       something the tool cannot resolve; the file needs a human look

Exit status is 0 when every function pairs and nothing is unresolved, 1 otherwise.

How the lines are derived:

* Functions come from ``asm/matchings/core/<File>``, ``asm/nonmatchings/core/<File>`` and
  ``asm.eu/{matchings,nonmatchings}/core/<File>``, sorted by address and paired in order.  Unequal counts stop the
  tool.  A NAME is printed for each paired function that symbol_addrs.eu.txt does not already carry at that address.
* Paired functions are compared instruction by instruction (trailing ``nop`` padding is ignored).  The opcodes must
  match; the operands of ``%hi``/``%lo`` and ``jal``/``j`` give ``NTSC symbol -> EU address`` (a ``+offset`` is kept
  out of the base).  A pair whose instruction counts differ is reported as a PROBLEM and contributes no references:
  that is how a function that genuinely differs in PAL shows up.
* The NTSC asm may name an address differently from the C source (``D_800313C8_31FC8`` against ``D_800313C8``), so
  references are also matched by address: an undefined symbol takes the EU address of any reference to the same
  NTSC address.
* A PIN is printed for each symbol that the NTSC object leaves undefined, that at least one function compiled from C
  (a ``matchings`` function, not a ``GLOBAL_ASM`` one) refers to, and that EU does not already provide at that
  address.  EU provides a name through the EU symbol tables (``symbol_addrs.eu.txt``, ``undefined_syms.eu.txt``,
  ``undefined_syms_auto.eu.txt``) or through a ``glabel``/``dlabel`` of the same name in the EU assembly that is
  still linked once the file is shared (see below).
* Which C function refers to which undefined symbol is read from the relocations of the NTSC object, not guessed from
  names.  The asm may spell an address differently from the C (``D_80053BDF`` in the asm against ``D_80052BE0 +
  0xFFF`` in the C), so the relocation's symbol and addend give the NTSC address the function uses, and the paired
  instruction that uses that address gives the EU address.  A relocation that no paired instruction accounts for is a
  PROBLEM, so a symbol the shared C needs can never be skipped without a message.
* A second kind of PIN covers what the EU assembly that stays linked still refers to: the file's own EU data and
  read-only data (``asm.eu/data/core/<File>.data.s`` and ``.rodata.s``) stop being linked once the C object owns that
  data, so every ``dlabel`` of those files that surviving EU assembly names (the ``GLOBAL_ASM`` functions of the
  shared file, and any other EU function or data file) needs a pin to its own EU address.  "Surviving" is worked out
  from ``bh.eu.ld`` and the ``GLOBAL_ASM`` pragmas of the EU sources, with this file's stub replaced by the EU
  partners of its ``GLOBAL_ASM`` functions and of any function that differs in PAL.  A label whose name the shared
  object itself defines is left to ``tools/gen_eu_symbol_collisions.py``.
* A third kind of PIN covers a data symbol that the object defines but that the NTSC link only puts at the right
  address because a symbol table says so: its section, placed per ``build/bh.us.map``, does not hold it at the
  address the NTSC tables give it (``D_8004DC48`` is defined at the start of ``.bss`` and pinned at ``0x8004DC48``;
  ``D_800313CC`` is defined in ``.data`` four bytes before its real place).  The NTSC linker script's assignment wins
  there, so EU needs the same assignment at the EU address its code uses, or the shared object's own placement
  would bind the ROM to the wrong address with no link error.
* A hand-written jump table the object defines (a ``jtbl_*`` the paired code refers to) gets a NAME, because EU's own
  auto-labels (``jtbl_<EU address>_<EU offset>``) would otherwise reuse the same names for different tables.
* DROP names a symbol the object defines that undefined_syms.eu.txt still pins, or that symbol_addrs.eu.txt names at
  another address: once the file is shared it defines the symbol itself.  A pin may exist only to give another shared
  file a function or datum of this one before this one is shared; its DROP then appears when this file is converted.

The EU address of every reference is read off the instruction words of both versions (the ``lui``/``%lo`` immediates
and the ``jal`` target), never off EU's operand names: a hand-written pin can reuse an EU auto-label's name for another
address.  NAME and PIN lines are therefore the addresses the ROM itself uses.
"""
from __future__ import annotations

import argparse
import bisect
import re
import shutil
import struct
import subprocess
import sys
from collections.abc import Iterable, Mapping, Sequence
from dataclasses import dataclass, field, replace
from pathlib import Path
from typing import NamedTuple

ROOT = Path(__file__).resolve().parent.parent

INSN = re.compile(r"^\s*/\* ([0-9A-Fa-f]+) ([0-9A-Fa-f]{8}) ([0-9A-Fa-f]{8}) \*/\s+(\S+)\s*(.*)$")
GLABEL = re.compile(r"^glabel\s+(\S+)")
LABELLED_LINE = re.compile(r"^[gdj]label\s+(\S+)[^\n]*\n\s*/\* [0-9A-Fa-f]+ ([0-9A-Fa-f]{8}) ", re.MULTILINE)
BLOCK_COMMENT = re.compile(r"/\*.*?\*/", re.DOTALL)
IDENTIFIER = re.compile(r"[A-Za-z_]\w*")
MAP_INPUT_SECTION = re.compile(r"^ (\.\w+)\s+0x([0-9a-f]+)\s+0x[0-9a-f]+\s+(\S+)\s*$")
LINKER_OBJECT = re.compile(r"^\s*build\.eu/(\S+?)\.o\(", re.MULTILINE)
EU_GLOBAL_ASM = re.compile(r'^[ \t]*#[ \t]*pragma[ \t]+GLOBAL_ASM\("(asm\.eu/[^"]+)"\)', re.MULTILINE)
HI_LO = re.compile(r"%(hi|lo)\(([^)]+)\)")
ADDR_NAME = re.compile(r"^(?:eu_)?(?:D|func|jtbl)_([0-9A-Fa-f]{8})(?:_[0-9A-Fa-f]+)?$")
ASSIGN = re.compile(r"^\s*([A-Za-z_.][\w.]*)\s*=\s*(0x[0-9A-Fa-f]+)\s*;")
ALIAS = re.compile(r"^\s*([A-Za-z_.][\w.]*)\s*=\s*([A-Za-z_][\w.]*)\s*;")
OFFSET = re.compile(r"^(.+?)\s*([+-])\s*(0x[0-9A-Fa-f]+|\d+)$")
JUMP_OPS = frozenset({"jal", "j"})
DEFINED_NM_TYPES = frozenset("TDRBGS")

# ELF32 constants for reading the relocations of the NTSC object (MIPS o32, so REL entries without explicit addends).
ELF_MAGIC = b"\x7fELF"
ELF_CLASS_32 = 1
ELF_DATA_LSB, ELF_DATA_MSB = 1, 2
SHT_SYMTAB, SHT_REL = 2, 9
STT_FUNC = 2
STB_GLOBAL = 1
DATA_SECTIONS = frozenset({".data", ".rodata", ".bss", ".sdata", ".sbss"})
R_MIPS_26, R_MIPS_HI16, R_MIPS_LO16 = 4, 5, 6
MASK32 = 0xFFFFFFFF

NTSC_TABLES = ("symbol_addrs.us.txt", "undefined_syms.us.txt", "undefined_syms_auto.txt")
EU_TABLES = ("symbol_addrs.eu.txt", "undefined_syms.eu.txt", "undefined_syms_auto.eu.txt")
EU_NAMES_FILE = "symbol_addrs.eu.txt"
EU_PINS_FILE = "undefined_syms.eu.txt"


class Insn(NamedTuple):
    """One disassembled instruction of a function file."""

    vram: int
    word: str
    op: str
    args: str


class Entry(NamedTuple):
    """One ``name = address;`` line of a symbol table, with the file it came from."""

    address: int
    source: str


@dataclass(frozen=True)
class Func:
    """A function read from a splat-generated ``.s`` file."""

    name: str
    address: int
    insns: tuple[Insn, ...]
    asm_only: bool
    path: Path


class Resolved(NamedTuple):
    """An operand symbol: its name, the address of the symbol itself (None if unknown) and the ``+offset`` used."""

    name: str
    base: int | None
    offset: int


class RefSite(NamedTuple):
    """One referenced NTSC symbol, the EU address the same instruction uses for it, and which function used it."""

    ntsc: Resolved
    eu_address: int
    eu_operand: str
    user: str


class CReloc(NamedTuple):
    """One relocation in ``.text`` of the NTSC object.

    ``function`` is the object function that holds it (None outside every function), ``symbol`` the symbol it names
    and ``addend`` the offset from that symbol (None when it cannot be worked out).
    """

    function: str | None
    symbol: str
    addend: int | None


class DataSymbol(NamedTuple):
    """A global data symbol the NTSC object defines: its name, its section and its offset in that section."""

    name: str
    section: str
    offset: int


class ObjectFile(NamedTuple):
    """What is read from the NTSC object itself: its ``.text`` relocations and the data symbols it defines."""

    relocs: list[CReloc]
    data_symbols: list[DataSymbol]


@dataclass(frozen=True)
class LinkedScan:
    """What a scan of the EU assembly that stays linked found: every label it defines, and which of the file's own
    labels it uses (label name -> the files, relative to the repository root, that name it)."""

    labels: Mapping[str, int]
    users: Mapping[str, Sequence[str]]


@dataclass(frozen=True)
class Tables:
    """Every symbol source the analysis consults.

    ``eu_labels`` holds the labels of the EU assembly that is still linked once the file is shared; the labels of
    the file's own EU data are not in it, because that data is then compiled from C.
    """

    ntsc: Mapping[str, Entry]
    eu: Mapping[str, Entry]
    eu_names: Mapping[str, Entry]
    eu_pins: Mapping[str, Entry]
    eu_labels: Mapping[str, int]
    ntsc_aliases: Mapping[str, str]
    eu_aliases: Mapping[str, str]


@dataclass
class Report:
    """The lines the tool prints, collected while the analysis runs."""

    names: dict[str, int]
    jump_tables: dict[str, int]
    pins: dict[str, int]
    alias_pins: dict[str, str]
    drops: set[str]
    problems: list[str]
    functions: int = 0
    label_pins: dict[str, int] = field(default_factory=dict)
    label_users: dict[str, Sequence[str]] = field(default_factory=dict)


def load_table(root: Path, names: Sequence[str]) -> dict[str, Entry]:
    """Read ``name = 0x...;`` lines from the named files under ``root``; the first definition of a name wins."""
    table: dict[str, Entry] = {}
    for file_name in names:
        path = root / file_name
        if not path.exists():
            continue
        for line in path.read_text(encoding="utf-8").splitlines():
            match = ASSIGN.match(line)
            if match:
                table.setdefault(match.group(1), Entry(int(match.group(2), 16), file_name))
    return table


def load_aliases(root: Path, names: Sequence[str]) -> dict[str, str]:
    """Read ``name = other;`` alias lines (a symbol defined as another symbol) from the named files."""
    aliases: dict[str, str] = {}
    for file_name in names:
        path = root / file_name
        if not path.exists():
            continue
        for line in path.read_text(encoding="utf-8").splitlines():
            match = ALIAS.match(line)
            if match:
                aliases.setdefault(match.group(1), match.group(2))
    return aliases


def labels_of(text: str) -> dict[str, int]:
    """Map every ``glabel``/``dlabel``/``jlabel`` of one assembly file's text to its address; the first one wins."""
    labels: dict[str, int] = {}
    for match in LABELLED_LINE.finditer(text):
        labels.setdefault(match.group(1), int(match.group(2), 16))
    return labels


def scan_labels(files: Iterable[Path]) -> dict[str, int]:
    """Map every label defined by the given assembly files to its address; the first one wins."""
    labels: dict[str, int] = {}
    for path in files:
        for name, address in labels_of(path.read_text(encoding="utf-8")).items():
            labels.setdefault(name, address)
    return labels


def load_tables(root: Path) -> Tables:
    """Load the NTSC and EU symbol tables.  ``eu_labels`` starts empty: it is filled by ``scan_linked_asm``."""
    return Tables(
        ntsc=load_table(root, NTSC_TABLES),
        eu=load_table(root, EU_TABLES),
        eu_names=load_table(root, [EU_NAMES_FILE]),
        eu_pins=load_table(root, [EU_PINS_FILE]),
        eu_labels={},
        ntsc_aliases=load_aliases(root, NTSC_TABLES),
        eu_aliases=load_aliases(root, EU_TABLES),
    )


def read_function(path: Path, asm_only: bool) -> Func | None:
    """Parse one function ``.s`` file; None when it holds no instructions."""
    name = path.stem
    insns: list[Insn] = []
    for line in path.read_text(encoding="utf-8").splitlines():
        label = GLABEL.match(line)
        if label:
            name = label.group(1)
            continue
        match = INSN.match(line)
        if match:
            insns.append(Insn(int(match.group(2), 16), match.group(3), match.group(4), match.group(5)))
    if not insns:
        return None
    return Func(name, insns[0].vram, tuple(insns), asm_only, path)


def read_functions(root: Path, trees: Sequence[tuple[str, bool]]) -> list[Func]:
    """Read every function of the given ``(directory, asm_only)`` trees, sorted by address."""
    funcs: list[Func] = []
    for directory, asm_only in trees:
        base = root / directory
        if not base.is_dir():
            continue
        for path in sorted(base.glob("*.s")):
            func = read_function(path, asm_only)
            if func:
                funcs.append(func)
    return sorted(funcs, key=lambda f: f.address)


def trim_padding(insns: tuple[Insn, ...]) -> tuple[Insn, ...]:
    """Drop trailing ``nop`` instructions (alignment padding differs between versions)."""
    end = len(insns)
    while end > 0 and insns[end - 1].op == "nop":
        end -= 1
    return insns[:end]


def resolve(expr: str, table: Mapping[str, Entry]) -> Resolved:
    """Resolve an operand like ``D_80031A90_32690 + 0x4`` to a name, its address and its offset.

    A name of the form ``D_xxxxxxxx``, ``func_xxxxxxxx`` or ``jtbl_xxxxxxxx`` carries its address; any other name is
    looked up in ``table``.  Only NTSC names are resolved this way; EU addresses come from the instruction words.
    """
    expr = expr.strip()
    offset = 0
    split = OFFSET.match(expr)
    if split:
        expr = split.group(1).strip()
        offset = int(split.group(3), 0) * (-1 if split.group(2) == "-" else 1)
    named = ADDR_NAME.match(expr)
    if named:
        return Resolved(expr, int(named.group(1), 16), offset)
    if expr in table:
        return Resolved(expr, table[expr].address, offset)
    return Resolved(expr, None, offset)


def operands(insn: Insn) -> list[tuple[str, str]]:
    """The symbolic operands of an instruction as ``(kind, expression)``: ``hi``, ``lo`` or ``jump``."""
    if insn.op in JUMP_OPS:
        target = insn.args.strip()
        return [] if not target or target.startswith(".L") else [("jump", target)]
    return [(kind, expr.strip()) for kind, expr in HI_LO.findall(insn.args)]


def immediate(word: str) -> int:
    """The low 16 bits of an instruction word (the ``%hi`` or ``%lo`` value the linker patched in)."""
    return int(word, 16) & 0xFFFF


def signed16(value: int) -> int:
    """Interpret a 16-bit value as signed."""
    return value - 0x10000 if value & 0x8000 else value


def jump_target(word: str) -> int:
    """The absolute address a ``jal``/``j`` instruction word jumps to (KSEG0 region)."""
    return ((int(word, 16) & 0x3FFFFFF) << 2) | 0x80000000


def compare(ntsc: Func, eu: Func, tables: Tables) -> tuple[list[RefSite], str | None]:
    """Compare a paired function instruction by instruction.

    The EU address a reference points at is read off the instruction words of both versions (a ``lui``/``%lo`` pair,
    or the target of a ``jal``), not off EU's symbol names: an EU operand named ``D_80047F90`` need not be the
    address ``0x80047F90`` once a pin has reused the name.  Returns the referenced symbols and None, or an empty list
    and the text of the first difference found.
    """
    n_insns, e_insns = trim_padding(ntsc.insns), trim_padding(eu.insns)
    if len(n_insns) != len(e_insns):
        return [], f"length differs {ntsc.name} ({len(n_insns)} instructions) vs {eu.name} ({len(e_insns)})"
    sites: list[RefSite] = []
    pending_hi: list[tuple[int, int]] = []
    for n_insn, e_insn in zip(n_insns, e_insns):
        where = f"{ntsc.name} at {n_insn.vram:08X}"
        if n_insn.op != e_insn.op:
            return [], f"opcode differs in {where}: {n_insn.op} vs {e_insn.op}"
        n_ops, e_ops = operands(n_insn), operands(e_insn)
        if [kind for kind, _ in n_ops] != [kind for kind, _ in e_ops]:
            return [], f"operand kinds differ in {where}: {n_insn.args} vs {e_insn.args}"
        for (kind, n_expr), (_, e_expr) in zip(n_ops, e_ops):
            n_res = resolve(n_expr, tables.ntsc)
            if kind == "hi":
                pending_hi.append((immediate(n_insn.word), immediate(e_insn.word)))
                continue
            if kind == "jump":
                n_abs, e_abs = jump_target(n_insn.word), jump_target(e_insn.word)
            else:
                paired = pair_low_half(n_insn, e_insn, n_res, pending_hi)
                if paired is None:
                    return [], f"%lo({n_expr}) has no matching %hi in {where}"
                n_abs, e_abs = paired
            base = n_abs - n_res.offset
            if n_res.base is not None and n_res.base != base:
                return [], (
                    f"{n_res.name} is {hex8(n_res.base)} in the NTSC tables but the code in {where} "
                    f"uses {hex8(base)}"
                )
            sites.append(RefSite(Resolved(n_res.name, base, n_res.offset), e_abs - n_res.offset, e_expr, ntsc.name))
    return sites, None


def pair_low_half(
    n_insn: Insn, e_insn: Insn, n_res: Resolved, pending_hi: Sequence[tuple[int, int]]
) -> tuple[int, int] | None:
    """Combine a ``%lo`` instruction with the newest ``%hi`` that makes the NTSC address come out right.

    One ``lui`` often serves several ``%lo`` operands that splat names as different symbols, so the pairing is by
    address, not by name.  Returns the NTSC and EU absolute addresses, or None when no ``%hi`` fits.
    """
    n_lo, e_lo = signed16(immediate(n_insn.word)), signed16(immediate(e_insn.word))
    for n_hi, e_hi in reversed(pending_hi):
        n_abs = ((n_hi << 16) + n_lo) & 0xFFFFFFFF
        if n_res.base is None or n_abs == (n_res.base + n_res.offset) & 0xFFFFFFFF:
            return n_abs, ((e_hi << 16) + e_lo) & 0xFFFFFFFF
    return None


def find_nm(root: Path, override: str | None) -> str | None:
    """Locate a MIPS-capable ``nm``: the override, the vendored Windows binutils, then PATH."""
    if override:
        return override
    vendored = root / "tools" / "windows" / "binutils" / "mips-ps2-decompals-nm.exe"
    if vendored.exists():
        return str(vendored)
    return shutil.which("mips-linux-gnu-nm") or shutil.which("nm")


def object_symbols(nm: str, obj: Path) -> tuple[set[str], set[str]]:
    """Return the (defined, undefined) global symbol names of an object file."""
    result = subprocess.run([nm, str(obj)], capture_output=True, text=True, check=True)
    defined: set[str] = set()
    undefined: set[str] = set()
    for line in result.stdout.splitlines():
        parts = line.split()
        if len(parts) == 3 and parts[1] in DEFINED_NM_TYPES:
            defined.add(parts[2])
        elif len(parts) == 2 and parts[0] == "U":
            undefined.add(parts[1])
    return defined, undefined


def hex8(value: int) -> str:
    """Format an address as ``0x`` plus eight upper-case hex digits."""
    return f"0x{value:08X}"


def hex_offset(value: int) -> str:
    """Format a signed offset such as ``+0xFFF`` or ``-0x30``."""
    return f"{'-' if value < 0 else '+'}0x{abs(value):X}"


def read_object(obj: Path) -> ObjectFile:
    """Read an ELF32 MIPS object: its ``.text`` relocations (function, symbol, addend) and its global data symbols.

    The objects use REL relocations, so the addend sits in the instruction: a ``%lo`` carries the low 16 bits and the
    ``%hi`` that came before it against the same symbol the high 16 (``(hi << 16) + signed(lo)``); a ``jal`` carries
    its target field.  One CReloc is returned per ``%lo`` and ``jal`` (the ``%hi`` is folded into the ``%lo``).  A
    ``%lo`` with no earlier ``%hi`` of its symbol, or a relocation of another type, has no addend (None).  A
    relocation outside every function is attributed to ``<.text+0xOFFSET>``.
    """
    data = obj.read_bytes()
    if data[:4] != ELF_MAGIC or data[4] != ELF_CLASS_32 or data[5] not in (ELF_DATA_LSB, ELF_DATA_MSB):
        raise ValueError(f"{obj} is not a 32-bit ELF object")
    order = ">" if data[5] == ELF_DATA_MSB else "<"
    (section_table,) = struct.unpack_from(order + "I", data, 0x20)
    entry_size, count, names_index = struct.unpack_from(order + "3H", data, 0x2E)
    sections = [struct.unpack_from(order + "10I", data, section_table + n * entry_size) for n in range(count)]
    # A section header is (name, type, flags, addr, offset, size, link, info, addralign, entsize).
    names_offset = sections[names_index][4]

    def c_string(blob_offset: int) -> str:
        end = data.index(b"\0", blob_offset)
        return data[blob_offset:end].decode("ascii")

    text_index = next(n for n, sec in enumerate(sections) if c_string(names_offset + sec[0]) == ".text")
    text_offset = sections[text_index][4]
    symtab_index = next(n for n, sec in enumerate(sections) if sec[1] == SHT_SYMTAB)
    symtab = sections[symtab_index]
    strings_offset = sections[symtab[6]][4]
    symbols: list[tuple[str, int, int, int, int]] = []
    data_symbols: list[DataSymbol] = []
    for n in range(symtab[5] // 16):
        name, value, size, info, _other, section = struct.unpack_from(order + "3I2BH", data, symtab[4] + n * 16)
        symbol_name = c_string(strings_offset + name)
        symbols.append((symbol_name, value, size, info & 0xF, section))
        if info >> 4 == STB_GLOBAL and 0 < section < len(sections):
            section_name = c_string(names_offset + sections[section][0])
            if section_name in DATA_SECTIONS:
                data_symbols.append(DataSymbol(symbol_name, section_name, value))
    functions = sorted(
        (value, size, name)
        for name, value, size, kind, section in symbols
        if kind == STT_FUNC and section == text_index
    )
    starts = [start for start, _, _ in functions]

    def function_at(offset: int) -> str:
        index = bisect.bisect_right(starts, offset) - 1
        if index >= 0:
            start, size, name = functions[index]
            if size == 0 or offset < start + size:
                return name
        return f"<.text+0x{offset:X}>"

    relocs: list[tuple[int, int, int]] = []
    for sec in sections:
        if sec[1] == SHT_REL and sec[7] == text_index and sec[6] == symtab_index:
            for n in range(sec[5] // 8):
                offset, info = struct.unpack_from(order + "2I", data, sec[4] + n * 8)
                relocs.append((offset, info >> 8, info & 0xFF))
    result: list[CReloc] = []
    pending_hi: dict[int, int] = {}
    for offset, symbol_index, kind in sorted(relocs):
        (word,) = struct.unpack_from(order + "I", data, text_offset + offset)
        if kind == R_MIPS_HI16:
            pending_hi[symbol_index] = word & 0xFFFF
            continue
        addend: int | None = None
        if kind == R_MIPS_LO16 and symbol_index in pending_hi:
            addend = (pending_hi[symbol_index] << 16) + signed16(word & 0xFFFF)
        elif kind == R_MIPS_26:
            addend = (word & 0x3FFFFFF) << 2
        result.append(CReloc(function_at(offset), symbols[symbol_index][0], addend))
    return ObjectFile(result, data_symbols)


def section_placements(root: Path, module: str) -> dict[str, int] | None:
    """The NTSC address of each data section of ``module``'s object in the last US link, or None without the map.

    Read from ``build/bh.us.map``: the lines that give an input section's address, size and object file.
    """
    link_map = root / "build" / "bh.us.map"
    if not link_map.is_file():
        return None
    wanted = f"build/src.us/core/{module}.c.o"
    placements: dict[str, int] = {}
    for line in link_map.read_text(encoding="utf-8", errors="replace").splitlines():
        match = MAP_INPUT_SECTION.match(line)
        if match and match.group(3) == wanted and int(match.group(2), 16) >= 0x80000000:
            placements[match.group(1)] = int(match.group(2), 16)
    return placements


def find_overridden(
    data_symbols: Sequence[DataSymbol], placements: Mapping[str, int], tables: Tables
) -> dict[str, int]:
    """The data symbols that the NTSC link only puts at the right address because a symbol table says so.

    The object defines each of these, but the place its section puts it is not the address the NTSC tables give it
    (``D_8004DC48`` is defined in ``.bss`` at the section's start, and the tables put it at ``0x8004DC48``).  The
    linker script's assignment wins in NTSC.  EU needs the same assignment at the EU address, or the shared object's
    own placement would be used and the ROM would differ.  Returns name -> NTSC table address.
    """
    overridden: dict[str, int] = {}
    for symbol in data_symbols:
        address = resolve(symbol.name, tables.ntsc).base
        start = placements.get(symbol.section)
        if address is not None and start is not None and start + symbol.offset != address:
            overridden[symbol.name] = address
    return overridden


def own_data_files(root: Path, module: str) -> list[Path]:
    """The EU data and read-only data files of ``module`` (``asm.eu/data/core/<module>.data.s`` and the like)."""
    own = re.compile(rf"{re.escape(module)}\.\w+\.s")
    return sorted(path for path in (root / "asm.eu" / "data").rglob("*.s") if own.fullmatch(path.name))


def surviving_eu_asm(root: Path, module: str, own_data: Sequence[Path], kept: Sequence[Path]) -> list[Path] | None:
    """The EU assembly files that are still linked once ``module`` is shared, or None without ``bh.eu.ld``.

    That is every ``.s`` object in the EU linker script, plus every file the ``GLOBAL_ASM`` pragmas of the EU C
    sources name, minus ``module``'s own data files (the C object owns that data then) and minus ``module``'s EU
    stub (replaced by ``kept``: the EU partners of its ``GLOBAL_ASM`` functions).
    """
    script = root / "bh.eu.ld"
    if not script.is_file():
        return None
    dropped = {path.relative_to(root).as_posix() for path in own_data}
    stub = f"src.eu/core/{module}.c"
    files: dict[str, Path] = {}
    for relative in LINKER_OBJECT.findall(script.read_text(encoding="utf-8")):
        source = root / relative
        if relative.endswith(".s"):
            files[relative] = source
        elif relative.endswith(".c") and relative != stub and source.is_file():
            for referenced in EU_GLOBAL_ASM.findall(source.read_text(encoding="utf-8")):
                files[referenced] = root / referenced
    for path in kept:
        files[path.relative_to(root).as_posix()] = path
    return [path for relative, path in sorted(files.items()) if relative not in dropped and path.is_file()]


def scan_linked_asm(root: Path, files: Sequence[Path], own_names: set[str]) -> LinkedScan:
    """Collect the labels the linked EU assembly defines, and which of ``own_names`` its code and data mention."""
    labels: dict[str, int] = {}
    users: dict[str, list[str]] = {}
    for path in files:
        text = path.read_text(encoding="utf-8")
        for name, address in labels_of(text).items():
            labels.setdefault(name, address)
        if own_names:
            for name in set(IDENTIFIER.findall(BLOCK_COMMENT.sub(" ", text))) & own_names:
                users.setdefault(name, []).append(path.relative_to(root).as_posix())
    return LinkedScan(labels, users)


def eu_provides(symbol: str, address: int, tables: Tables) -> bool:
    """True when EU already gives ``symbol`` this address: a table entry, or a label in the EU assembly still linked."""
    entry = tables.eu.get(symbol)
    if entry is not None:
        return entry.address == address
    return tables.eu_labels.get(symbol) == address


def eu_address_of(uses: Sequence[RefSite], symbol: str, report: Report) -> int | None:
    """The single EU address a set of references agrees on, or None after recording a PROBLEM."""
    addresses = {u.eu_address for u in uses}
    if len(addresses) != 1:
        shown = ", ".join(sorted(hex8(a) for a in addresses))
        operands_seen = ", ".join(sorted({u.eu_operand for u in uses}))
        users = ", ".join(sorted({u.user for u in uses}))
        report.problems.append(
            f"{symbol} maps to several EU addresses: {shown} (EU operands {operands_seen}; used by {users})"
        )
        return None
    return next(iter(addresses))


def pair_functions(
    ntsc_funcs: Sequence[Func], eu_funcs: Sequence[Func], tables: Tables, report: Report
) -> tuple[list[RefSite], set[str]]:
    """Pair the functions, record each NAME, and collect the references of every pair that compares equal.

    Returns the references and the names of the NTSC functions whose pair differs (those are reported as PROBLEMs).
    """
    sites: list[RefSite] = []
    differing: set[str] = set()
    for ntsc, eu in zip(ntsc_funcs, eu_funcs):
        have = tables.eu_names.get(ntsc.name)
        if have is None or have.address != eu.address:
            report.names[ntsc.name] = eu.address
            if have is not None:
                report.drops.add(ntsc.name)
        found, difference = compare(ntsc, eu, tables)
        if difference:
            report.problems.append(difference)
            differing.add(ntsc.name)
        sites.extend(found)
    return sites, differing


def classify_defined(
    defined: set[str],
    by_name: Mapping[str, Sequence[RefSite]],
    function_starts: Mapping[str, int],
    tables: Tables,
    report: Report,
    overridden: Mapping[str, int],
) -> None:
    """Handle the symbols the object defines: DROP stale pins, check call targets, NAME hand-written jump tables.

    A symbol in ``overridden`` is defined by the object but placed by a symbol table; its pin is not stale and is
    handled by ``pin_overridden``.
    """
    for symbol in sorted(defined):
        uses = by_name.get(symbol, [])
        eu_address = function_starts.get(symbol)
        if uses:
            from_uses = eu_address_of(uses, symbol, report)
            if from_uses is None:
                continue
            if eu_address is not None and eu_address != from_uses:
                report.problems.append(
                    f"{symbol}: references use {hex8(from_uses)} but its paired EU function starts at "
                    f"{hex8(eu_address)}"
                )
            eu_address = from_uses if eu_address is None else eu_address
        if symbol in tables.eu_pins and symbol not in overridden:
            report.drops.add(symbol)
        if symbol.startswith("jtbl_") and eu_address is not None and symbol not in function_starts:
            have = tables.eu_names.get(symbol)
            if have is None or have.address != eu_address:
                report.jump_tables[symbol] = eu_address
                if have is not None:
                    report.drops.add(symbol)


class ObjectFacts(NamedTuple):
    """What the NTSC object says: the global names it defines and leaves undefined, its ``.text`` relocations, and
    the defined data symbols that the NTSC link places by symbol table (name -> NTSC address)."""

    defined: set[str]
    undefined: set[str]
    relocs: Sequence[CReloc]
    overridden: Mapping[str, int]


class Differing(NamedTuple):
    """The paired functions that differ between versions: their names and what their instructions refer to."""

    functions: set[str]
    names: set[str]
    addresses: set[int]


def attribute_relocations(
    symbol: str,
    address: int,
    relocs: Sequence[CReloc],
    sites_by_target: Mapping[tuple[str, int], Sequence[RefSite]],
    report: Report,
) -> list[RefSite]:
    """Find the paired instructions through which C code refers to ``symbol``, using the object's relocations.

    A relocation says that a function compiled from C uses ``symbol`` plus an addend, which is the NTSC address
    ``address + addend``.  The paired instruction of that function that uses that address gives the EU address of the
    same datum, and the EU address of ``symbol`` itself follows by subtracting the same addend.  Whatever the asm
    calls the address, the C-side reference is therefore found.  A relocation for which no paired instruction exists
    is recorded as a PROBLEM instead of being dropped.
    """
    found: list[RefSite] = []
    seen: set[tuple[str | None, int | None]] = set()
    for reloc in relocs:
        if (reloc.function, reloc.addend) in seen:
            continue
        seen.add((reloc.function, reloc.addend))
        if reloc.addend is None:
            report.problems.append(
                f"{reloc.function} refers to {symbol} through a relocation whose offset this tool cannot read: "
                "find the EU address with relocmap.py"
            )
            continue
        target = (address + reloc.addend) & MASK32
        hits = sites_by_target.get((str(reloc.function), target), [])
        if not hits:
            report.problems.append(
                f"{reloc.function} (compiled from C) refers to {symbol}{hex_offset(reloc.addend)} = {hex8(target)} "
                "but no instruction of its EU partner uses that address: find the EU address with relocmap.py"
            )
            continue
        for hit in hits:
            eu_target = hit.eu_address + hit.ntsc.offset
            eu_address = eu_target - (target - address)
            found.append(RefSite(Resolved(symbol, address, 0), eu_address, hit.eu_operand, hit.user))
    return found


def classify_symbols(
    sites: Sequence[RefSite],
    ntsc_funcs: Sequence[Func],
    eu_funcs: Sequence[Func],
    facts: ObjectFacts,
    tables: Tables,
    report: Report,
    differing: Differing,
) -> None:
    """Turn the references into NAME (jump tables), PIN and DROP lines and flag what cannot be resolved."""
    defined, undefined = facts.defined, facts.undefined
    asm_only = {f.name for f in ntsc_funcs if f.asm_only}
    function_starts = {n.name: e.address for n, e in zip(ntsc_funcs, eu_funcs)}
    by_name: dict[str, list[RefSite]] = {}
    by_base: dict[int, list[RefSite]] = {}
    sites_by_target: dict[tuple[str, int], list[RefSite]] = {}
    for site in sites:
        by_name.setdefault(site.ntsc.name, []).append(site)
        if site.ntsc.base is not None:
            by_base.setdefault(site.ntsc.base, []).append(site)
            sites_by_target.setdefault((site.user, (site.ntsc.base + site.ntsc.offset) & MASK32), []).append(site)
    c_relocs: dict[str, list[CReloc]] = {}
    for reloc in facts.relocs:
        if reloc.function not in asm_only and reloc.function not in differing.functions:
            c_relocs.setdefault(reloc.symbol, []).append(reloc)

    classify_defined(defined, by_name, function_starts, tables, report, facts.overridden)
    pin_overridden(facts.overridden, by_name, by_base, tables, report)

    for symbol in sorted(undefined):
        target = tables.ntsc_aliases.get(symbol)
        if target is not None and target in defined:
            if symbol not in tables.eu_aliases and symbol not in tables.eu:
                report.alias_pins[symbol] = target
            continue
        address = resolve(symbol, tables.ntsc).base
        if address is None and target is not None:
            address = resolve(target, tables.ntsc).base
        uses = list(by_name.get(symbol, []))
        if address is not None:
            uses += [u for u in by_base.get(address, []) if u.ntsc.name != symbol]
            uses += attribute_relocations(symbol, address, c_relocs.get(symbol, []), sites_by_target, report)
        if not uses:
            known = symbol in tables.eu or symbol in tables.eu_aliases or symbol in tables.eu_labels
            only_differing = symbol in differing.names or address in differing.addresses
            if not known and not only_differing:
                report.problems.append(
                    f"{symbol} is undefined in the object, no paired function refers to its address and EU does "
                    "not know it (a data relocation?): find its EU address with relocmap.py"
                )
            continue
        if all(u.user in asm_only for u in uses):
            continue
        eu_address = eu_address_of(uses, symbol, report)
        if eu_address is None or eu_provides(symbol, eu_address, tables):
            continue
        report.pins[symbol] = eu_address
        have_entry = tables.eu_pins.get(symbol) or tables.eu_names.get(symbol)
        if have_entry is not None:
            report.drops.add(symbol)


def pin_overridden(
    overridden: Mapping[str, int],
    by_name: Mapping[str, Sequence[RefSite]],
    by_base: Mapping[int, Sequence[RefSite]],
    tables: Tables,
    report: Report,
) -> None:
    """PIN each data symbol that the object defines but a symbol table places, at the EU address its code uses.

    Without the pin the EU link would use the place the shared object gives the symbol, which is only the right one
    where the C source lays the data out as the ROM does.
    """
    for symbol, address in sorted(overridden.items()):
        uses = list(by_name.get(symbol, [])) + [u for u in by_base.get(address, []) if u.ntsc.name != symbol]
        if not uses:
            report.problems.append(
                f"{symbol} is defined by the object but placed at {hex8(address)} by the NTSC tables, and no paired "
                "function refers to that address: find its EU address with relocmap.py"
            )
            continue
        eu_address = eu_address_of(uses, symbol, report)
        if eu_address is None or eu_provides(symbol, eu_address, tables):
            continue
        report.pins[symbol] = eu_address
        if symbol in tables.eu_pins or symbol in tables.eu_names:
            report.drops.add(symbol)


def pin_own_labels(
    own_labels: Mapping[str, int], scan: LinkedScan, defined: set[str], tables: Tables, report: Report
) -> None:
    """PIN each EU label of the file's own data that the EU assembly still linked mentions.

    Once the C object owns the data, those labels no longer exist, so the surviving EU assembly (the ``GLOBAL_ASM``
    functions of the shared file, and any other EU file that points into this data) cannot link without a pin to the
    label's own EU address.  Three kinds of label need nothing:

    * a label the shared object itself defines: ``gen_eu_symbol_collisions.py`` renames such an EU label;
    * a label at an address that ``symbol_addrs.eu.txt`` names (including the NAME lines printed for the hand-written
      jump tables): splat then writes that name in every reference, so the label's own name is never used;
    * a label that is already pinned, or defined by an EU table, at its address.
    """
    named_addresses = {
        *report.names.values(),
        *report.jump_tables.values(),
        *(entry.address for entry in tables.eu_names.values()),
    }
    for label in sorted(scan.users):
        address = own_labels[label]
        if label in defined or address in named_addresses:
            continue
        pinned = report.pins.get(label)
        if pinned is not None:
            if pinned != address:
                report.problems.append(
                    f"{label} is an EU label at {hex8(address)} and the shared C refers to the same name at "
                    f"{hex8(pinned)}: the two cannot both be pinned"
                )
            continue
        if eu_provides(label, address, tables):
            continue
        report.label_pins[label] = address
        report.label_users[label] = scan.users[label]
        if label in tables.eu_pins or label in tables.eu_names:
            report.drops.add(label)


def analyse(root: Path, module: str, nm_override: str | None) -> tuple[Report, str]:
    """Run the whole analysis for one core file; return the report and its one-line summary."""
    report = Report(names={}, jump_tables={}, pins={}, alias_pins={}, drops=set(), problems=[])
    tables = load_tables(root)
    ntsc_funcs = read_functions(
        root, [(f"asm/matchings/core/{module}", False), (f"asm/nonmatchings/core/{module}", True)]
    )
    eu_funcs = read_functions(
        root, [(f"asm.eu/matchings/core/{module}", False), (f"asm.eu/nonmatchings/core/{module}", True)]
    )
    report.functions = len(ntsc_funcs)
    if not ntsc_funcs or not eu_funcs:
        report.problems.append(
            f"no functions found for {module} (NTSC {len(ntsc_funcs)}, EU {len(eu_funcs)}): extract both "
            "versions first, and run this before the file is converted"
        )
        return report, f"{module}: nothing to pair"
    if len(ntsc_funcs) != len(eu_funcs):
        report.problems.append(
            f"function counts differ: NTSC {len(ntsc_funcs)} vs EU {len(eu_funcs)}; a shared file needs a "
            "partner for every function"
        )
        return report, f"{module}: function counts differ"

    obj = root / "build" / "src.us" / "core" / f"{module}.c.o"
    nm = find_nm(root, nm_override)
    if not obj.exists() or nm is None:
        report.problems.append(
            f"cannot list the symbols of {obj.relative_to(root)}: build the US version first (and a MIPS nm "
            "must be available)"
        )
        return report, f"{module}: no object"
    try:
        object_file = read_object(obj)
    except (ValueError, StopIteration, struct.error) as error:
        report.problems.append(f"cannot read {obj.relative_to(root)}: {error}")
        return report, f"{module}: unreadable object"
    placements = section_placements(root, module)
    if placements is None:
        report.problems.append("build/bh.us.map not found: build the US version first (it shows where sections went)")
        return report, f"{module}: no link map"

    sites, differing_names = pair_functions(ntsc_funcs, eu_funcs, tables, report)
    own_data = own_data_files(root, module)
    kept = [eu.path for ntsc, eu in zip(ntsc_funcs, eu_funcs) if ntsc.asm_only or ntsc.name in differing_names]
    linked = surviving_eu_asm(root, module, own_data, kept)
    if linked is None:
        report.problems.append("bh.eu.ld not found: extract the EU version first (it lists the files EU still links)")
        return report, f"{module}: no EU linker script"
    own_labels = scan_labels(own_data)
    scan = scan_linked_asm(root, linked, set(own_labels))
    tables = replace(tables, eu_labels=scan.labels)

    differing_resolved = [
        resolve(operand, tables.ntsc)
        for func in ntsc_funcs
        if func.name in differing_names
        for insn in func.insns
        for _, operand in operands(insn)
    ]
    differing = Differing(
        differing_names,
        {r.name for r in differing_resolved},
        {r.base for r in differing_resolved if r.base is not None},
    )
    defined, undefined = object_symbols(nm, obj)
    overridden = find_overridden(object_file.data_symbols, placements, tables)
    facts = ObjectFacts(defined, undefined, object_file.relocs, overridden)
    classify_symbols(sites, ntsc_funcs, eu_funcs, facts, tables, report, differing)
    pin_own_labels(own_labels, scan, defined, tables, report)
    name_count = len(report.names) + len(report.jump_tables)
    pin_count = len(report.pins) + len(report.alias_pins) + len(report.label_pins)
    summary = (
        f"{module}: {report.functions} functions paired, {name_count} NAME "
        f"({len(report.names)} functions, {len(report.jump_tables)} jump tables), {pin_count} PIN "
        f"({len(report.pins)} addresses, {len(report.alias_pins)} aliases, {len(report.label_pins)} EU data "
        f"labels), {len(report.drops)} DROP, {len(report.problems)} PROBLEM"
    )
    return report, summary


def by_address(item: tuple[str, int]) -> int:
    """Sort key for ``(name, address)`` pairs: the address."""
    return item[1]


def render(report: Report) -> list[str]:
    """The output lines of a report: NAME and PIN (each by EU address), DROP, then PROBLEM.

    A PIN for an EU label of the file's own data is followed by a ``#`` line naming the EU file that still uses it.
    """
    lines = [f"NAME {name} = {hex8(address)};" for name, address in sorted(report.names.items(), key=by_address)]
    lines += [
        f"NAME {name} = {hex8(address)};" for name, address in sorted(report.jump_tables.items(), key=by_address)
    ]
    pins = {**report.pins, **report.label_pins}
    lines += [f"PIN {name} = {hex8(address)};" for name, address in sorted(pins.items(), key=by_address)]
    lines += [f"PIN {name} = {target};" for name, target in sorted(report.alias_pins.items())]
    for name, users in sorted(report.label_users.items(), key=lambda item: report.label_pins[item[0]]):
        more = f" and {len(users) - 1} more" if len(users) > 1 else ""
        lines.append(f"# PIN {name}: EU label of the file's own data, still used by {users[0]}{more}")
    lines += [f"DROP {name}" for name in sorted(report.drops)]
    lines += [f"PROBLEM {problem}" for problem in report.problems]
    return lines


def main(argv: Sequence[str] | None = None) -> int:
    """Entry point: print the NAME, PIN, DROP and PROBLEM lines for one core file."""
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("module", help="core file name without extension, e.g. E830")
    parser.add_argument("--root", type=Path, default=ROOT, help="repository root (default: this script's)")
    parser.add_argument("--nm", help="path of a MIPS nm (default: the vendored Windows binutils)")
    args = parser.parse_args(argv)

    report, summary = analyse(args.root, args.module, args.nm)
    for line in render(report):
        print(line)
    print(f"# {summary}")
    return 1 if report.problems else 0


if __name__ == "__main__":
    sys.exit(main())
