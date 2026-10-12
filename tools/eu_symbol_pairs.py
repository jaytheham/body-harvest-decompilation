#!/usr/bin/env python3
"""Pair the NTSC and EU functions of one core file and list the symbol-table lines sharing it needs.

A core C file that is shared between NTSC and EU is compiled once, with NTSC names, and linked at EU addresses.
That works only if the EU symbol tables know every NTSC name at its EU address.  This tool reads the disassembly
of both versions of the file BEFORE it is converted, pairs the functions, and works out what to add.

    python tools/eu_symbol_pairs.py <File>        e.g. E830, 17EE0, AD60, 1050, 53F0

Prerequisites: both versions extracted (``asm/``, ``asm.eu/``) and the NTSC object built
(``build/src.us/core/<File>.c.o``).  Run it on the unconverted file.

Output, one item per line on stdout (``#`` lines are commentary):

    NAME <ntsc name> = 0x<EU address>;   add to symbol_addrs.eu.txt: a function, or a hand-written jump table
    PIN <extern> = 0x<EU address>;       add to undefined_syms.eu.txt: an extern the shared C refers to by NTSC name
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
  ``undefined_syms_auto.eu.txt``) or through a ``glabel``/``dlabel`` of the same name in ``asm.eu/``.
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
import re
import shutil
import subprocess
import sys
from collections.abc import Mapping, Sequence
from dataclasses import dataclass
from pathlib import Path
from typing import NamedTuple

ROOT = Path(__file__).resolve().parent.parent

INSN = re.compile(r"^\s*/\* ([0-9A-Fa-f]+) ([0-9A-Fa-f]{8}) ([0-9A-Fa-f]{8}) \*/\s+(\S+)\s*(.*)$")
GLABEL = re.compile(r"^glabel\s+(\S+)")
LABELLED_LINE = re.compile(r"^[gdj]label\s+(\S+)[^\n]*\n\s*/\* [0-9A-Fa-f]+ ([0-9A-Fa-f]{8}) ", re.MULTILINE)
HI_LO = re.compile(r"%(hi|lo)\(([^)]+)\)")
ADDR_NAME = re.compile(r"^(?:eu_)?(?:D|func|jtbl)_([0-9A-Fa-f]{8})(?:_[0-9A-Fa-f]+)?$")
ASSIGN = re.compile(r"^\s*([A-Za-z_.][\w.]*)\s*=\s*(0x[0-9A-Fa-f]+)\s*;")
ALIAS = re.compile(r"^\s*([A-Za-z_.][\w.]*)\s*=\s*([A-Za-z_][\w.]*)\s*;")
OFFSET = re.compile(r"^(.+?)\s*([+-])\s*(0x[0-9A-Fa-f]+|\d+)$")
JUMP_OPS = frozenset({"jal", "j"})
DEFINED_NM_TYPES = frozenset("TDRBGS")

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


@dataclass(frozen=True)
class Tables:
    """Every symbol source the analysis consults."""

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


def scan_labels(base: Path) -> dict[str, int]:
    """Map every ``glabel``/``dlabel``/``jlabel`` name under ``base`` to its address; the first one wins."""
    labels: dict[str, int] = {}
    for path in sorted(base.rglob("*.s")):
        for match in LABELLED_LINE.finditer(path.read_text(encoding="utf-8")):
            labels.setdefault(match.group(1), int(match.group(2), 16))
    return labels


def load_tables(root: Path) -> Tables:
    """Load the NTSC and EU symbol tables and the labels EU's own asm defines."""
    return Tables(
        ntsc=load_table(root, NTSC_TABLES),
        eu=load_table(root, EU_TABLES),
        eu_names=load_table(root, [EU_NAMES_FILE]),
        eu_pins=load_table(root, [EU_PINS_FILE]),
        eu_labels=scan_labels(root / "asm.eu"),
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
    return Func(name, insns[0].vram, tuple(insns), asm_only)


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


def eu_provides(symbol: str, address: int, tables: Tables) -> bool:
    """True when EU already gives ``symbol`` this address: a table entry, or a label of that name in ``asm.eu/``."""
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
) -> None:
    """Handle the symbols the object defines: DROP stale pins, check call targets, NAME hand-written jump tables."""
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
        if symbol in tables.eu_pins:
            report.drops.add(symbol)
        if symbol.startswith("jtbl_") and eu_address is not None and symbol not in function_starts:
            have = tables.eu_names.get(symbol)
            if have is None or have.address != eu_address:
                report.jump_tables[symbol] = eu_address
                if have is not None:
                    report.drops.add(symbol)


def classify_symbols(
    sites: Sequence[RefSite],
    ntsc_funcs: Sequence[Func],
    eu_funcs: Sequence[Func],
    object_syms: tuple[set[str], set[str]],
    tables: Tables,
    report: Report,
    differing_refs: tuple[set[str], set[int]],
) -> None:
    """Turn the references into NAME (jump tables), PIN and DROP lines and flag what cannot be resolved."""
    defined, undefined = object_syms
    asm_only = {f.name for f in ntsc_funcs if f.asm_only}
    function_starts = {n.name: e.address for n, e in zip(ntsc_funcs, eu_funcs)}
    by_name: dict[str, list[RefSite]] = {}
    by_base: dict[int, list[RefSite]] = {}
    for site in sites:
        by_name.setdefault(site.ntsc.name, []).append(site)
        if site.ntsc.base is not None:
            by_base.setdefault(site.ntsc.base, []).append(site)

    classify_defined(defined, by_name, function_starts, tables, report)

    differing_names, differing_addresses = differing_refs
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
        if not uses:
            known = symbol in tables.eu or symbol in tables.eu_aliases or symbol in tables.eu_labels
            only_differing = symbol in differing_names or address in differing_addresses
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

    sites, differing = pair_functions(ntsc_funcs, eu_funcs, tables, report)
    differing_resolved = [
        resolve(operand, tables.ntsc)
        for func in ntsc_funcs
        if func.name in differing
        for insn in func.insns
        for _, operand in operands(insn)
    ]
    differing_refs = (
        {r.name for r in differing_resolved},
        {r.base for r in differing_resolved if r.base is not None},
    )
    classify_symbols(sites, ntsc_funcs, eu_funcs, object_symbols(nm, obj), tables, report, differing_refs)
    name_count = len(report.names) + len(report.jump_tables)
    pin_count = len(report.pins) + len(report.alias_pins)
    summary = (
        f"{module}: {report.functions} functions paired, {name_count} NAME "
        f"({len(report.names)} functions, {len(report.jump_tables)} jump tables), {pin_count} PIN "
        f"({len(report.pins)} addresses, {len(report.alias_pins)} aliases), {len(report.drops)} DROP, "
        f"{len(report.problems)} PROBLEM"
    )
    return report, summary


def by_address(item: tuple[str, int]) -> int:
    """Sort key for ``(name, address)`` pairs: the address."""
    return item[1]


def render(report: Report) -> list[str]:
    """The output lines of a report: NAME (by EU address), PIN (by EU address), DROP, then PROBLEM."""
    lines = [f"NAME {name} = {hex8(address)};" for name, address in sorted(report.names.items(), key=by_address)]
    lines += [
        f"NAME {name} = {hex8(address)};" for name, address in sorted(report.jump_tables.items(), key=by_address)
    ]
    lines += [f"PIN {name} = {hex8(address)};" for name, address in sorted(report.pins.items(), key=by_address)]
    lines += [f"PIN {name} = {target};" for name, target in sorted(report.alias_pins.items())]
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
