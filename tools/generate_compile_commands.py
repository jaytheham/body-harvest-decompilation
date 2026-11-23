"""Generate compile_commands.json for clangd."""

import json
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent


def main():
    arguments = [
        "clang",
        "-target",
        "mips-unknown-elf",
        "-mcpu=mips2",
        "-mabi=32",
        "-std=gnu90",
        "-fsigned-char",
        "-fsyntax-only",
        "-I.",
        "-Iinclude",
        "-Iinclude/2.0I",
        "-Iinclude/libc",
        "-Iassets",
        "-Isrc.us",
        "-Isrc.us/libultra",
        "-Isrc.us/libultra/include",
        "-Isrc.us/libultra/include/PR",
        "-Isrc.us/libultra/audio",
        "-D_LANGUAGE_C",
        "-D_FINALROM",
        "-DF3DEX_GBI",
        "-DWIN32",
        "-DSSSV",
        "-DNDEBUG",
        "-DVERSION_US",
        "-D_MIPS_SZLONG=32",
        "-Wno-unknown-pragmas",
        "-Wno-missing-braces",
    ]

    database = []
    sources = sorted((ROOT / "src.us").rglob("*.c"))
    sources.extend(sorted((ROOT / "src.eu").rglob("*.c")))
    for source in sources:
        relative = source.relative_to(ROOT).as_posix()
        database.append({
            "directory": str(ROOT),
            "file": relative,
            "arguments": arguments + [relative],
        })

    headers = sorted((ROOT / "include").rglob("*.h"))
    headers.extend(sorted((ROOT / "src.us").rglob("*.h")))
    headers.extend(sorted((ROOT / "src.eu").rglob("*.h")))
    for header in headers:
        relative = header.relative_to(ROOT).as_posix()
        database.append({
            "directory": str(ROOT),
            "file": relative,
            "arguments": arguments + ["-x", "c-header", relative],
        })

    output = ROOT / "compile_commands.json"
    output.write_text(json.dumps(database, indent=2) + "\n", encoding="utf-8", newline="\n")
    print(f"Wrote {len(database)} entries to {output.relative_to(ROOT).as_posix()}")


if __name__ == "__main__":
    main()
