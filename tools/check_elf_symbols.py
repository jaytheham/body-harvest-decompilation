#!/usr/bin/env python3
"""Report STT_FUNC symbols with st_size == 0 in a 32-bit MIPS ELF.

Usage: check_elf_symbols.py <elf> [allowlist] [--update-allowlist]

Prints each offender as `name  0xADDRESS`. Exits 1 if any offender is not
listed in the allowlist (default: tools/elf_symbols_allow.txt, one name per
line, '#' starts a comment). Assembler-local `.L` labels are not functions and
are never reported. With --update-allowlist the offenders that are not listed
are appended to the allowlist instead and the exit status is 0. Exits 2 for a
usage error or an ELF that does not exist.
"""
import struct
import sys
from pathlib import Path

STT_FUNC = 2
SHT_SYMTAB = 2


def zero_sized_functions(data: bytes) -> list[tuple[str, int]]:
    """Return (name, address) for every STT_FUNC symbol whose size is 0, leaving out `.L` assembler-local labels."""
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
                symbol = data[start:data.index(b"\0", start)].decode()
                # `.L` names are assembler-local labels (jump targets inside a function), not functions: the EU
                # extraction leaves hundreds of them typed FUNC with no size.
                if not symbol.startswith(".L"):
                    found.append((symbol, value))
    return sorted(found, key=lambda sym: (sym[1], sym[0]))


def load_allowlist(path: Path) -> set[str]:
    """Read symbol names, ignoring blank lines and '#' comments."""
    lines = (line.split("#", 1)[0].strip() for line in path.read_text(encoding="utf-8").splitlines())
    return {line for line in lines if line}


def append_to_allowlist(path: Path, names: list[str], elf: Path) -> None:
    """Append `names` to the allowlist under a comment that says where they came from."""
    text = path.read_text(encoding="utf-8") if path.exists() else ""
    prefix = "" if not text or text.endswith("\n") else "\n"
    note = f"# Added by --update-allowlist from {elf.name}: say here why each has no size.\n"
    path.write_text(text + prefix + note + "".join(f"{name}\n" for name in names), encoding="utf-8")


def main() -> int:
    update = "--update-allowlist" in sys.argv[1:]
    args = [arg for arg in sys.argv[1:] if arg != "--update-allowlist"]
    if len(args) not in (1, 2):
        print(__doc__, file=sys.stderr)
        return 2
    allow_path = Path(args[1]) if len(args) == 2 else Path(__file__).with_name("elf_symbols_allow.txt")
    elf = Path(args[0])
    if not elf.is_file():
        print(f"error: ELF not found: {elf} (the US build writes build/bh.us.elf, every other version "
              "build.<version>/bh.<version>.elf)", file=sys.stderr)
        return 2
    allowed = load_allowlist(allow_path)
    offenders = zero_sized_functions(elf.read_bytes())
    for name, address in offenders:
        print(f"{name}  0x{address:08X}")
    unexpected = list(dict.fromkeys(name for name, _ in offenders if name not in allowed))
    if not unexpected:
        return 0
    if update:
        append_to_allowlist(allow_path, unexpected, elf)
        print(f"added {len(unexpected)} symbol(s) to {allow_path}: {', '.join(unexpected)}")
        return 0
    print(f"error: {len(unexpected)} size-0 FUNC symbol(s) not in the allowlist: {', '.join(unexpected)}\n"
          f"       to accept them, run: python3 tools/check_elf_symbols.py {elf} --update-allowlist\n"
          "       (then explain each in tools/elf_symbols_allow.txt and commit it), or give the symbol a size",
          file=sys.stderr)
    return 1


if __name__ == "__main__":
    sys.exit(main())
