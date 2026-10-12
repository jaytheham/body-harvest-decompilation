#!/usr/bin/env python3
"""Resolve EU symbol collisions with the shared (version-independent) C source.

Background
----------
`src/common/` holds C shared by the NA and EU builds.  Its symbols keep their
NA names (e.g. ``D_80031450_32050``) but are *placed* at EU-specific addresses
(the EU core is NA + 0x30, and the name encodes the NA address, not the EU one).
EU asm auto-labels use the same address-encoded naming scheme, so whenever an EU
label and a shared-C symbol share a name, the EU reference silently binds to the
C symbol at the wrong address instead of erroring -- producing small, address-
only diffs throughout the ROM.

Fix
---
* Rename each colliding EU auto-label to ``eu_<name>`` (rewriting the definition
  and every reference) via ``symbol_addrs.eu.txt``.
* Pin ``eu_<name>`` to the EU VRAM encoded in the label name, in both
  ``symbol_addrs.eu.txt`` and ``undefined_syms.eu.txt``.
* Port the NA ``undefined_syms`` offset-aliases (``X = Y + off``) that the shared
  C references, so array-interior labels resolve relative to the shared array.

Detection uses the actual object files (``nm`` on the NA-built shared objects), so
"C defines/uses this name" is exact rather than a source regex guess.

Usage
-----
    python tools/gen_eu_symbol_collisions.py            # report only
    python tools/gen_eu_symbol_collisions.py --write    # rewrite the eu_ blocks
"""
from __future__ import annotations

import argparse
import os
import re
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
WINDOWS_NM = ROOT / "tools" / "windows" / "binutils" / "mips-ps2-decompals-nm.exe"
#: nm names tried on PATH; the first is the Makefile's CROSS prefix.
NM_NAMES = ("mips-linux-gnu-nm", "mips64-linux-gnu-nm", "mips-ps2-decompals-nm")
SHARED_OBJ_DIR = ROOT / "build" / "src" / "common"
SYMBOL_ADDRS_EU = ROOT / "symbol_addrs.eu.txt"
UNDEF_SYMS_EU = ROOT / "undefined_syms.eu.txt"
UNDEF_SYMS_US = ROOT / "undefined_syms.us.txt"
ASM_EU = ROOT / "asm.eu"
SRC_EU = ROOT / "src.eu"

# Address-encoded splat auto-label: func_<vram>_<rom> / D_<vram>_<rom> (the ROM
# suffix is optional for single-segment files).
NAME_RE = re.compile(r"^(?:func|D)_([0-9A-Fa-f]{6,8})(?:_[0-9A-Fa-f]+)?$")
ALIAS_RE = re.compile(r"^(\w+)\s*=\s*(\w+)\s*\+\s*(0x[0-9A-Fa-f]+|\d+)\s*;\s*$")

# Renaming func_* symbols would require regenerating the checked-in src.eu stubs
# (splat derives GLOBAL_ASM file names from the symbol), so keep it off until the
# stubs are regenerated alongside.
RENAME_FUNCTIONS = False

EU_BLOCK_HEADER = (
    "// EU auto-labels that collide with a name used by the shared\n"
    "// (version-independent) C source.  Tagged eu_ so each binds to the EU\n"
    "// address encoded in the label name instead of the shared-C symbol."
)

# undefined_syms.eu.txt is consumed directly by `ld -T`, which has no `//`
# comment syntax, so its block marker must use a C block comment.
EU_BLOCK_HEADER_LD = (
    "/* EU auto-labels that collide with a name used by the shared "
    "(version-independent) C source. */"
)


def vram_of(name: str) -> int | None:
    m = NAME_RE.match(name)
    if not m:
        return None
    val = int(m.group(1), 16)
    return val if val >= 0x100000 else None


def find_nm() -> str:
    """Path of a MIPS ``nm``: the native Windows toolchain, else one on PATH."""
    if os.name == "nt" and WINDOWS_NM.exists():
        return str(WINDOWS_NM)
    for name in NM_NAMES:
        found = shutil.which(name)
        if found:
            return found
    sys.exit("no MIPS nm found: run tools/native_build.py setup (Windows) or "
             f"install binutils providing one of {', '.join(NM_NAMES)}")


def collect_shared_symbols() -> tuple[set[str], set[str]]:
    """Return (defined, undefined) global names across the shared-C objects."""
    defined: set[str] = set()
    undefined: set[str] = set()
    objs = sorted(SHARED_OBJ_DIR.rglob("*.o"))
    if not objs:
        sys.exit(f"no shared objects under {SHARED_OBJ_DIR} (build NA first)")
    nm = find_nm()
    for obj in objs:
        out = subprocess.run(
            [nm, str(obj)], capture_output=True, text=True, check=True
        ).stdout
        for line in out.splitlines():
            parts = line.split()
            if len(parts) < 2:
                continue
            kind, name = parts[-2], parts[-1]
            if kind == "U":
                undefined.add(name)
            elif kind in "TDBRGSVW":
                defined.add(name)
    return defined, undefined


def collect_eu_names() -> set[str]:
    names: set[str] = set()
    for asm in ASM_EU.rglob("*.s"):
        text = asm.read_text(encoding="utf-8", errors="replace")
        names.update(re.findall(r"\b(?:glabel|dlabel|jal)\s+(\w+)", text))
        names.update(re.findall(r"%(?:hi|lo)\((\w+)\)", text))
    for c in SRC_EU.rglob("*.c"):
        text = c.read_text(encoding="utf-8", errors="replace")
        names.update(re.findall(r"\b([A-Za-z_]\w*)\b", text))
    return names


_ABS_PIN_RE = re.compile(r"^([A-Za-z_]\w*)\s*=\s*(0x[0-9A-Fa-f]+)\s*;\s*$")


def collect_eu_base_pins() -> dict[str, int]:
    """Absolute ``name = 0x...;`` placements in the hand-maintained eu block.

    A shared-C symbol the EU linker places at an address *other* than the one
    encoded in its (NA) name is one that the EU port moved.  When such a
    referenced-only name also has an EU asm label of the same name at the old
    address, the label shadows the placement and the C binds to the wrong
    address, so the label must be tagged eu_ too.
    """
    pins: dict[str, int] = {}
    for line in UNDEF_SYMS_EU.read_text(encoding="utf-8").splitlines():
        if _starts_eu_block(line):
            break
        m = _ABS_PIN_RE.match(line.strip())
        if m:
            pins[m.group(1)] = int(m.group(2), 16)
    return pins


def collect_na_aliases() -> dict[str, str]:
    aliases: dict[str, str] = {}
    for line in UNDEF_SYMS_US.read_text(encoding="utf-8").splitlines():
        m = ALIAS_RE.match(line.strip())
        if m:
            aliases[m.group(1)] = f"{m.group(1)} = {m.group(2)} + {m.group(3)};"
    return aliases


_PIN_RE = re.compile(r"^eu_[A-Za-z0-9_]+\s*=")

# A prior-generation block header whose leading lines were already dropped, so
# only this orphan continuation comment survives in the file.
_ORPHAN_HEADER_FRAGMENT = "// and pinned to the EU VRAM"

_BLOCK_HEADER_MARKERS = (
    "// EU auto-labels that collide",
    "/* EU auto-labels that collide",
)


def _starts_eu_block(line: str) -> bool:
    """True if `line` starts or continues a generated eu_ block."""
    return (
        any(line.startswith(m) for m in _BLOCK_HEADER_MARKERS)
        or line.startswith(_ORPHAN_HEADER_FRAGMENT)
        or _PIN_RE.match(line) is not None
    )


def strip_eu_block(path: Path) -> list[str]:
    """Read a linker input file, dropping any previously appended eu_ block.

    The block is always written at the end of the file, so truncate from the
    first line that belongs to it -- a block header, a leftover header fragment,
    or an ``eu_<name> = <addr>;`` pin -- rather than filtering individual lines
    (which would leave the alias lines behind).
    """
    kept: list[str] = []
    for line in path.read_text(encoding="utf-8").splitlines():
        if _starts_eu_block(line):
            break
        kept.append(line)
    while kept and not kept[-1].strip():
        kept.pop()
    return kept


def has_residual_eu_block(path: Path) -> bool:
    """True if `path` still carries a generated eu_ header, pin, or fragment."""
    return any(
        _starts_eu_block(line)
        for line in path.read_text(encoding="utf-8").splitlines()
    )


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--write", action="store_true", help="rewrite the eu_ blocks")
    ap.add_argument(
        "--clean",
        action="store_true",
        help="only strip existing eu_ blocks (run before a fresh extract so the "
        "asm scan sees pristine auto-labels)",
    )
    args = ap.parse_args()

    if args.clean:
        for path in (SYMBOL_ADDRS_EU, UNDEF_SYMS_EU):
            kept = strip_eu_block(path)
            path.write_text("\n".join(kept) + "\n", encoding="utf-8", newline="\n")
            if has_residual_eu_block(path):
                print(
                    f"ERROR: residual eu_ block in {path.name}", file=sys.stderr
                )
                return 1
            print(f"cleaned {path.name}")
        return 0

    defined, undefined = collect_shared_symbols()
    shared = defined | undefined
    eu_names = collect_eu_names()
    tagged = sorted(n for n in eu_names if n.startswith("eu_"))
    if args.write and tagged:
        # The scan must see pristine auto-labels. An extraction that already
        # applied the eu_ tags hides every collision, and writing then would
        # delete the existing block.
        print(f"ERROR: asm.eu already has {len(tagged)} eu_ labels (e.g. {tagged[0]}); "
              "run tools/eu_collisions_build.py, or --clean and re-extract EU first",
              file=sys.stderr)
        return 1

    aliases = collect_na_aliases()
    needed_aliases = sorted(
        (n for n in aliases if n in undefined), key=lambda n: aliases[n]
    )

    # Names the shared C *defines* (so an EU asm label of the same name shadows a
    # real, differently-placed definition), plus NA offset-aliases (array-interior
    # labels the C means relative to a base).  A name the C merely references is
    # normally left alone -- the EU asm label *is* its storage -- but when the EU
    # symbol table moves it away from the address its NA name encodes (a
    # base-block pin different from that address), the same shadowing applies and
    # it must be tagged eu_ as well.
    base_pins = collect_eu_base_pins()
    moved_undefined = {
        n
        for n in undefined
        if base_pins.get(n) is not None
        and vram_of(n) is not None
        and base_pins[n] != vram_of(n)
    }
    rename_set = defined | moved_undefined | set(aliases)
    collisions = sorted(n for n in rename_set & eu_names if vram_of(n) is not None)
    if not RENAME_FUNCTIONS:
        # splat names function GLOBAL_ASM stub files after the symbol, so
        # renaming func_* would break every checked-in src.eu stub path.  Only
        # data labels are renamed; function collisions need the stubs regenerated
        # and are handled separately.
        collisions = [n for n in collisions if not n.startswith("func_")]

    pinned: list[str] = [f"eu_{n} = 0x{vram_of(n):08X};" for n in collisions]

    print(f"shared-C symbols:           {len(shared)} ({len(defined)} defined)")
    print(f"EU names referenced:        {len(eu_names)}")
    print(f"collisions (tagged eu_):    {len(collisions)}")
    print(f"NA aliases needed by EU:    {len(needed_aliases)}")

    if not args.write:
        for n in collisions:
            print(f"  {n}")
        for n in needed_aliases:
            print(f"  alias: {aliases[n]}")
        print("\n--write not given; nothing changed.")
        return 0

    # undefined_syms.eu.txt is consumed directly by ld (-T), which has no //
    # comment syntax, so it gets a /* */ marker instead of the splat-side
    # header (only symbol_addrs.eu.txt, read by splat, uses // there).
    headers = {
        SYMBOL_ADDRS_EU: EU_BLOCK_HEADER,
        UNDEF_SYMS_EU: EU_BLOCK_HEADER_LD,
    }
    for path, extra in (
        (SYMBOL_ADDRS_EU, []),
        (UNDEF_SYMS_EU, [aliases[n] for n in needed_aliases]),
    ):
        kept = strip_eu_block(path)
        body = kept + ["", headers[path]]
        body += pinned
        if extra:
            if path is SYMBOL_ADDRS_EU:
                body += ["", "// NA offset-aliases the shared C references."]
            body += extra
        path.write_text("\n".join(body) + "\n", encoding="utf-8", newline="\n")
        print(f"wrote {path.name} ({len(pinned)} pinned, {len(extra)} aliases)")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
