#!/usr/bin/env python3
"""Report STT_FUNC symbols with st_size == 0 in a 32-bit MIPS ELF.

Usage: check_elf_symbols.py <elf> [allowlist]

Prints each offender as `name  0xADDRESS`. Exits 1 if any offender is not
listed in the allowlist (default: tools/elf_symbols_allow.txt, one name per
line, '#' starts a comment).
"""
import struct
import sys
from pathlib import Path

STT_FUNC = 2
SHT_SYMTAB = 2


def zero_sized_functions(data: bytes) -> list[tuple[str, int]]:
    """Return (name, address) for every STT_FUNC symbol whose size is 0."""
    if data[:4] != b"\x7fELF" or data[4] != 1:
        raise ValueError("not a 32-bit ELF file")
    end = ">" if data[5] == 2 else "<"
    shoff = struct.unpack_from(end + "I", data, 0x20)[0]
    shentsize, shnum = struct.unpack_from(end + "HH", data, 0x2E)
    sections = [struct.unpack_from(end + "10I", data, shoff + i * shentsize) for i in range(shnum)]
    found = []
    for _, sh_type, _, _, offset, size, link, _, _, _ in sections:
        if sh_type != SHT_SYMTAB:
            continue
        strtab = sections[link][4]
        for pos in range(offset, offset + size, 16):
            name, value, st_size, info, _, _ = struct.unpack_from(end + "IIIBBH", data, pos)
            if info & 0xF == STT_FUNC and st_size == 0:
                start = strtab + name
                found.append((data[start:data.index(b"\0", start)].decode(), value))
    return sorted(found, key=lambda sym: (sym[1], sym[0]))


def load_allowlist(path: Path) -> set[str]:
    """Read symbol names, ignoring blank lines and '#' comments."""
    lines = (line.split("#", 1)[0].strip() for line in path.read_text(encoding="utf-8").splitlines())
    return {line for line in lines if line}


def main() -> int:
    if len(sys.argv) not in (2, 3):
        print(__doc__, file=sys.stderr)
        return 2
    default_allow = Path(__file__).with_name("elf_symbols_allow.txt")
    allowed = load_allowlist(Path(sys.argv[2]) if len(sys.argv) == 3 else default_allow)
    offenders = zero_sized_functions(Path(sys.argv[1]).read_bytes())
    for name, address in offenders:
        print(f"{name}  0x{address:08X}")
    unexpected = [name for name, _ in offenders if name not in allowed]
    if unexpected:
        print(f"error: {len(unexpected)} size-0 FUNC symbol(s) not in the allowlist: {', '.join(unexpected)}",
              file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
