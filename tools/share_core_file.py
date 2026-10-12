#!/usr/bin/env python3
"""Convert a per-version core C file into one source file shared by NTSC and EU.

    python tools/share_core_file.py <File> [--jtbl-shift SHIFT] [--pal-only FUNCTION]

<File> is e.g. 1B060, E830, 17EE0, AD60, 1050, 53F0.

A mixed core file exists twice: ``src.us/core/<File>.c`` holds the matched C and one ``#pragma GLOBAL_ASM`` per
unmatched function, and ``src.eu/core/<File>.c`` is a stub of ``GLOBAL_ASM`` pragmas for the EU assembly.  Once the
EU symbol tables name every function and extern at its EU address (``tools/eu_symbol_pairs.py`` lists what to add),
one file serves both versions.  This tool performs the mechanical part of that conversion:

* ``git mv src.us/core/<File>.c src/common/core/<File>.c`` and ``git rm src.eu/core/<File>.c``;
* each ``#pragma GLOBAL_ASM("asm/nonmatchings/core/<File>/<Name>.s")`` becomes a per-version choice of the two
  assembly files splat writes for a ``../src/common`` subsegment, with ``#error`` for an unknown version.  A pragma
  that is the whole ``#else`` body of an ``#ifdef NON_MATCHING`` is folded into that conditional as an ``#elif``
  chain; a pragma anywhere else gets a self-contained ``#if``/``#endif`` block;
* in ``bh.us.yaml`` and ``bh.eu.yaml`` the ``c`` entry (and the ``.data`` and ``.rodata`` entries; EU's ``data``
  and ``rodata`` become ``.data`` and ``.rodata``) now point at ``../src/common/core/<File>``.  Trailing yaml
  comments are kept.

Two options handle what a plain pragma rewrite cannot:

* ``--jtbl-shift SHIFT`` (e.g. ``0x30``) is for hand-written jump tables, ``const u32 jtbl_<vram>_<rom>[] = {...};``,
  whose entries are NTSC code addresses.  Each initialiser becomes a ``VERSION_US`` / ``VERSION_EU`` / ``#error``
  chain: the NTSC values stay as written and the EU values are the NTSC values plus SHIFT.  Before anything is
  written, every value is checked against both ROMs: the NTSC word at the table's ROM offset (the ``<rom>`` in its
  name) must equal the NTSC value, and the EU word at that offset plus the file's read-only-data shift (the EU
  ``rodata`` entry's start minus the US ``.rodata`` entry's start in the two yamls) must equal the NTSC value plus
  SHIFT.  A mismatch refuses the conversion and names the table.  Needs ``baserom.us.z64`` and ``baserom.eu.z64``.
* ``--pal-only FUNCTION`` is for one function that really differs in PAL.  Its NTSC C definition stays under
  ``VERSION_US``, ``VERSION_EU`` takes the pragma for the EU assembly of the same name, and any other version is an
  ``#error``.  The function must be a plain definition in the NTSC file and an assembly stub in the EU file.

It prints how many pragmas it rewrote, how many yaml lines it changed, and what the options did.  It does not touch
the symbol tables and does not build.  Everything is computed before anything is changed, so a refusal leaves the
tree as it was.  The moved file is staged as a rename by git; the edits to it and to the yamls are left unstaged.

Exit status is 0 on success and 1 when the conversion is refused (with the reason on stderr).
"""
from __future__ import annotations

import argparse
import re
import subprocess
import sys
from collections.abc import Sequence
from dataclasses import dataclass
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

# Splat names a ../src/common/core/<File> subsegment's asm after the source path, so both versions share a layout.
US_ASM_ROOT = "asm/src/common/core"
EU_ASM_ROOT = "asm.eu/src/common/core"
UNKNOWN_VERSION_ERROR = '#error "Unknown version: compile with -DVERSION_US or -DVERSION_EU"'
SHARED_YAML_PATH = "../src/common/core"

# A hand-written jump table: the name carries the NTSC address and ROM offset, the body is nothing but address words.
JUMP_TABLE = re.compile(
    r"(?P<head>^const u32 (?P<name>jtbl_[0-9A-Fa-f]{8}_(?P<rom>[0-9A-Fa-f]+))\[\] = \{[ \t]*(?P<eol>\r?\n))"
    r"(?P<body>[^{}]*?)(?P<tail>^\};)",
    re.MULTILINE,
)
ADDRESS_WORD = re.compile(r"0x[0-9A-Fa-f]{8}\b")

# Source files are read and written byte-exactly, whatever their encoding and line endings.
ENCODING = {"encoding": "utf-8", "errors": "surrogateescape", "newline": ""}


class ConversionRefused(Exception):
    """Raised when a file cannot be converted; the message says why and nothing has been changed."""


@dataclass(frozen=True)
class YamlResult:
    """A yaml file's new text and the number of lines the conversion changed in it."""

    text: str
    changed: int


def read_text(path: Path) -> str:
    """Read ``path`` without translating line endings."""
    with open(path, "r", **ENCODING) as handle:
        return handle.read()


def write_text(path: Path, text: str) -> None:
    """Write ``text`` to ``path`` without translating line endings."""
    with open(path, "w", **ENCODING) as handle:
        handle.write(text)


def pragma_pattern(module: str) -> re.Pattern[str]:
    """Return the regex matching one per-version ``GLOBAL_ASM`` pragma of ``module``; group 1 is the function name."""
    return re.compile(rf'^#pragma GLOBAL_ASM\("asm/nonmatchings/core/{re.escape(module)}/([^/"]+)\.s"\)\s*$')


def split_eol(line: str) -> tuple[str, str]:
    """Split a line into its text and its line ending (which may be empty on a last line)."""
    text = line.rstrip("\r\n")
    return text, line[len(text):]


def share_pragmas(text: str, module: str) -> tuple[str, int]:
    """Rewrite every per-version pragma of ``module`` in ``text`` and return the new text and the pragma count.

    A pragma that is the entire ``#else`` body (``#else`` before it, ``#endif`` after it) turns that ``#else`` into
    ``#elif defined(VERSION_US)`` and ends the chain with ``#else`` and ``#error``.  Any other pragma becomes a
    self-contained ``#if defined(VERSION_US)`` ... ``#endif`` block.
    """
    pattern = pragma_pattern(module)
    lines = text.splitlines(keepends=True)
    out: list[str] = []
    count = 0
    for index, line in enumerate(lines):
        body, eol = split_eol(line)
        match = pattern.match(body)
        if match is None:
            out.append(line)
            continue
        eol = eol or "\n"
        name = match.group(1)
        previous = split_eol(out[-1])[0] if out else ""
        following = split_eol(lines[index + 1])[0] if index + 1 < len(lines) else ""
        folds_into_else = previous.strip() == "#else" and following.strip() == "#endif"
        if folds_into_else:
            out[-1] = "#elif defined(VERSION_US)" + split_eol(out[-1])[1]
        else:
            out.append("#if defined(VERSION_US)" + eol)
        out.append(f'#pragma GLOBAL_ASM("{US_ASM_ROOT}/{module}/{name}.s")' + eol)
        out.append("#elif defined(VERSION_EU)" + eol)
        out.append(f'#pragma GLOBAL_ASM("{EU_ASM_ROOT}/{module}/{name}.s")' + eol)
        out.append("#else" + eol)
        out.append(UNKNOWN_VERSION_ERROR + eol)
        if not folds_into_else:
            out.append("#endif" + eol)
        count += 1
    new_text = "".join(out)
    leftover = [n for n, row in enumerate(new_text.splitlines(), 1) if f"asm/nonmatchings/core/{module}/" in row]
    if leftover:
        raise ConversionRefused(
            f"src.us/core/{module}.c still names asm/nonmatchings/core/{module}/ on line(s) "
            f"{', '.join(map(str, leftover))} in a form this tool does not rewrite"
        )
    return new_text, count


def rewrite_yaml(text: str, module: str, version: str) -> YamlResult:
    """Point ``module``'s ``c``, data and read-only data entries of the ``version`` yaml at the shared source.

    ``version`` is ``us`` or ``eu``.  The ``c`` entry must be present; the data entries are optional.  An entry of
    ``module`` that is left pointing at ``core/<module>`` after the edits is refused.
    """
    name = re.escape(module)
    target = rf"{SHARED_YAML_PATH}/{module}]"
    code_entry = re.compile(rf"(\[0x[0-9A-Fa-f]+, c, )core/{name}\]")
    if version == "us":
        data_entry = re.compile(rf"(\[0x[0-9A-Fa-f]+, \.(?:data|rodata), )core/{name}\]")
        text, data_changed = data_entry.subn(lambda m: m.group(1) + target, text)
    else:
        data_entry = re.compile(rf"(\[0x[0-9A-Fa-f]+, )(data|rodata)(, )core/{name}\]")
        text, data_changed = data_entry.subn(lambda m: f"{m.group(1)}.{m.group(2)}{m.group(3)}{target}", text)
    text, code_changed = code_entry.subn(lambda m: m.group(1) + target, text)
    if code_changed == 0:
        raise ConversionRefused(f"bh.{version}.yaml has no 'c, core/{module}' entry to change")
    remaining = re.search(rf",\s*core/{name}\s*\]", text)
    if remaining is not None:
        line = text.count("\n", 0, remaining.start()) + 1
        raise ConversionRefused(
            f"bh.{version}.yaml line {line} still names core/{module} in an entry this tool does not rewrite"
        )
    return YamlResult(text, code_changed + data_changed)


@dataclass(frozen=True)
class RomPair:
    """Both base ROMs and the distance from an NTSC read-only-data offset to the same datum in the EU ROM."""

    ntsc: bytes
    eu: bytes
    rodata_shift: int


@dataclass(frozen=True)
class JumpTableResult:
    """The text with its hand-written jump tables wrapped, and how many tables and values that covered."""

    text: str
    tables: int
    values: int


def rodata_start(yaml_text: str, module: str, version: str) -> int:
    """Return the ROM start of ``module``'s one read-only-data entry in the ``version`` yaml (before conversion)."""
    kind = r"\.rodata" if version == "us" else r"\.?rodata"
    starts = re.findall(rf"\[0x([0-9A-Fa-f]+), {kind}, core/{re.escape(module)}\]", yaml_text)
    if len(starts) != 1:
        raise ConversionRefused(
            f"bh.{version}.yaml has {len(starts)} rodata entries for core/{module}; exactly one is needed "
            "to locate its jump tables in the ROM"
        )
    return int(starts[0], 16)


def load_roms(root: Path, module: str, us_yaml: str, eu_yaml: str) -> RomPair:
    """Read both base ROMs and work out ``module``'s read-only-data shift from the two yamls."""
    contents: dict[str, bytes] = {}
    for version in ("us", "eu"):
        rom = root / f"baserom.{version}.z64"
        if not rom.is_file():
            raise ConversionRefused(f"{rom.name} is needed to check the jump tables and is not in {root}")
        contents[version] = rom.read_bytes()
    shift = rodata_start(eu_yaml, module, "eu") - rodata_start(us_yaml, module, "us")
    return RomPair(contents["us"], contents["eu"], shift)


def read_rom_word(rom: bytes, offset: int, description: str) -> int:
    """Return the big-endian 32-bit word at ``offset`` of ``rom``; ``description`` names it if it is out of range."""
    if offset < 0 or offset + 4 > len(rom):
        raise ConversionRefused(f"{description} is at ROM offset 0x{offset:X}, outside a ROM of 0x{len(rom):X} bytes")
    return int.from_bytes(rom[offset:offset + 4], "big")


def verify_jump_table(name: str, ntsc_offset: int, values: Sequence[int], shift: int, roms: RomPair) -> None:
    """Check ``name``'s NTSC ``values`` and their ``+ shift`` EU counterparts against the ROMs, or refuse.

    The NTSC ROM word at ``ntsc_offset`` must equal each value, which shows the offset in the table's name really
    locates it.  The EU ROM word at the same offset plus the read-only-data shift must equal the value plus ``shift``.
    """
    eu_offset = ntsc_offset + roms.rodata_shift
    for index, value in enumerate(values):
        step = 4 * index
        ntsc_word = read_rom_word(roms.ntsc, ntsc_offset + step, f"{name}[{index}] (NTSC)")
        if ntsc_word != value:
            raise ConversionRefused(
                f"{name}[{index}] is 0x{value:08X} in the source but the NTSC ROM holds 0x{ntsc_word:08X} "
                f"at 0x{ntsc_offset + step:X}"
            )
        eu_word = read_rom_word(roms.eu, eu_offset + step, f"{name}[{index}] (EU)")
        if eu_word != value + shift:
            raise ConversionRefused(
                f"{name}[{index}]: the EU ROM holds 0x{eu_word:08X} at 0x{eu_offset + step:X}, expected "
                f"0x{value:08X} + 0x{shift:X} = 0x{value + shift:08X}"
            )


def wrap_jump_tables(text: str, shift: int, roms: RomPair) -> JumpTableResult:
    """Give every hand-written ``const u32 jtbl_<vram>_<rom>[]`` of ``text`` a per-version initialiser.

    The NTSC initialiser stays as written under ``VERSION_US``; under ``VERSION_EU`` every 32-bit address in it is
    raised by ``shift``, keeping the layout of the lines; any other version is an ``#error``.  Each table is checked
    against ``roms`` first (see ``verify_jump_table``).  Refuses when ``text`` has no such table.
    """
    pieces: list[str] = []
    cursor = 0
    tables = 0
    total = 0
    for match in JUMP_TABLE.finditer(text):
        name = match["name"]
        body = match["body"]
        if re.sub(r"[\s,]", "", ADDRESS_WORD.sub("", body)):
            raise ConversionRefused(f"{name}: the initialiser holds something other than 0x........ address words")
        values = [int(word, 16) for word in ADDRESS_WORD.findall(body)]
        if not values:
            raise ConversionRefused(f"{name}: the initialiser is empty")
        verify_jump_table(name, int(match["rom"], 16), values, shift, roms)
        eol = match["eol"]
        eu_body = ADDRESS_WORD.sub(lambda word: f"0x{int(word.group(), 16) + shift:08X}", body)
        pieces.append(text[cursor:match.start()])
        pieces.append(
            match["head"]
            + "#if defined(VERSION_US)" + eol + body
            + "#elif defined(VERSION_EU)" + eol + eu_body
            + "#else" + eol + UNKNOWN_VERSION_ERROR + eol + "#endif" + eol
        )
        cursor = match.start("tail")
        tables += 1
        total += len(values)
    if tables == 0:
        raise ConversionRefused("--jtbl-shift was given but the file has no 'const u32 jtbl_<vram>_<rom>[] = {' table")
    pieces.append(text[cursor:])
    return JumpTableResult("".join(pieces), tables, total)


def find_closing_brace(text: str, open_index: int) -> int:
    """Return the index of the ``}`` that closes the ``{`` at ``open_index``, skipping comments, strings and chars."""
    depth = 0
    index = open_index
    while index < len(text):
        if text.startswith("//", index):
            newline = text.find("\n", index)
            index = len(text) if newline < 0 else newline
            continue
        if text.startswith("/*", index):
            end = text.find("*/", index + 2)
            if end < 0:
                raise ConversionRefused("an unterminated /* comment follows the PAL-only function")
            index = end + 2
            continue
        character = text[index]
        if character in "\"'":
            index += 1
            while index < len(text) and text[index] != character:
                index += 2 if text[index] == "\\" else 1
        elif character == "{":
            depth += 1
        elif character == "}":
            depth -= 1
            if depth == 0:
                return index
        index += 1
    raise ConversionRefused("the braces of the PAL-only function never balance")


def wrap_pal_only(text: str, module: str, name: str) -> str:
    """Wrap the NTSC definition of ``name`` in ``text`` as a ``VERSION_US`` / ``VERSION_EU`` / ``#error`` chain.

    The whole definition, signature and braces, is kept under ``VERSION_US``; ``VERSION_EU`` takes the pragma for the
    EU assembly splat writes for ``name``.  Refuses unless ``name`` is defined exactly once.
    """
    definition = re.compile(rf"^[A-Za-z_][\w \t*]*\b{re.escape(name)}\s*\([^;{{}}]*\)\s*\{{", re.MULTILINE)
    found = list(definition.finditer(text))
    if len(found) != 1:
        raise ConversionRefused(f"--pal-only {name}: expected one definition in the NTSC file, found {len(found)}")
    start = found[0].start()
    end = find_closing_brace(text, found[0].end() - 1)
    line_end = text.find("\n", end)
    line_end = len(text) if line_end < 0 else line_end + 1
    if text[end + 1:line_end].strip():
        raise ConversionRefused(f"--pal-only {name}: code follows the closing brace of the function on its line")
    function = text[start:line_end]
    eol = "\r\n" if function.endswith("\r\n") else "\n"
    if not function.endswith("\n"):
        function += eol
    block = (
        "#if defined(VERSION_US)" + eol + function
        + "#elif defined(VERSION_EU)" + eol
        + f'#pragma GLOBAL_ASM("{EU_ASM_ROOT}/{module}/{name}.s")' + eol
        + "#else" + eol + UNKNOWN_VERSION_ERROR + eol + "#endif" + eol
    )
    return text[:start] + block + text[line_end:]


def run_git(root: Path, *arguments: str) -> None:
    """Run ``git`` in ``root`` and raise ``ConversionRefused`` with its output when it fails."""
    result = subprocess.run(["git", "-C", str(root), *arguments], capture_output=True, text=True, check=False)
    if result.returncode != 0:
        raise ConversionRefused(f"git {' '.join(arguments)} failed: {(result.stderr or result.stdout).strip()}")


@dataclass(frozen=True)
class ShareReport:
    """What a conversion did: pragmas rewritten, yaml lines changed per version, and jump tables wrapped."""

    pragmas: int
    us_yaml_lines: int
    eu_yaml_lines: int
    jump_tables: int
    jump_values: int


def share(root: Path, module: str, jtbl_shift: int | None = None, pal_only: str | None = None) -> ShareReport:
    """Convert ``module`` under ``root``; ``jtbl_shift`` and ``pal_only`` are the options described above."""
    if re.fullmatch(r"[0-9A-Za-z_]+", module) is None:
        raise ConversionRefused(f"'{module}' is not a core file name such as E830 or 17EE0")
    if pal_only is not None and re.fullmatch(r"[0-9A-Za-z_]+", pal_only) is None:
        raise ConversionRefused(f"'{pal_only}' is not a function name")
    source = root / "src.us" / "core" / f"{module}.c"
    eu_stub = root / "src.eu" / "core" / f"{module}.c"
    target = root / "src" / "common" / "core" / f"{module}.c"
    for needed in (source, eu_stub):
        if not needed.is_file():
            raise ConversionRefused(f"{needed.relative_to(root).as_posix()} does not exist; nothing to convert")
    if target.exists():
        raise ConversionRefused(f"{target.relative_to(root).as_posix()} already exists; the file is already shared")

    yaml_texts = {version: read_text(root / f"bh.{version}.yaml") for version in ("us", "eu")}
    new_source, pragmas = share_pragmas(read_text(source), module)
    jump_tables = JumpTableResult(new_source, 0, 0)
    if jtbl_shift is not None:
        roms = load_roms(root, module, yaml_texts["us"], yaml_texts["eu"])
        jump_tables = wrap_jump_tables(new_source, jtbl_shift, roms)
        new_source = jump_tables.text
    if pal_only is not None:
        eu_pragma = f'#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/{module}/{pal_only}.s")'
        if eu_pragma not in read_text(eu_stub):
            raise ConversionRefused(f"--pal-only {pal_only}: src.eu/core/{module}.c has no assembly stub for it")
        new_source = wrap_pal_only(new_source, module, pal_only)
    yamls = {version: rewrite_yaml(text, module, version) for version, text in yaml_texts.items()}

    run_git(root, "mv", source.relative_to(root).as_posix(), target.relative_to(root).as_posix())
    run_git(root, "rm", "-q", eu_stub.relative_to(root).as_posix())
    write_text(target, new_source)
    for version, result in yamls.items():
        write_text(root / f"bh.{version}.yaml", result.text)
    return ShareReport(pragmas, yamls["us"].changed, yamls["eu"].changed, jump_tables.tables, jump_tables.values)


def parse_integer(text: str) -> int:
    """Parse a decimal or ``0x`` hexadecimal integer for argparse."""
    try:
        return int(text, 0)
    except ValueError as error:
        raise argparse.ArgumentTypeError(f"'{text}' is not an integer such as 0x30") from error


def main(argv: Sequence[str] | None = None) -> int:
    """Entry point: convert one core file and report what changed."""
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("module", help="core file name without extension, e.g. E830")
    parser.add_argument(
        "--jtbl-shift", type=parse_integer, metavar="SHIFT",
        help="give each hand-written jump table EU values that are its NTSC values plus SHIFT (e.g. 0x30)",
    )
    parser.add_argument(
        "--pal-only", metavar="FUNCTION",
        help="keep FUNCTION's NTSC C under VERSION_US and use its EU assembly under VERSION_EU",
    )
    args = parser.parse_args(argv)
    try:
        report = share(ROOT, args.module, args.jtbl_shift, args.pal_only)
    except ConversionRefused as refusal:
        print(f"share_core_file: {refusal}", file=sys.stderr)
        return 1
    print(f"{args.module}: {report.pragmas} pragma(s) rewritten in src/common/core/{args.module}.c")
    if args.jtbl_shift is not None:
        print(
            f"{report.jump_tables} jump table(s), {report.jump_values} value(s): EU = NTSC + 0x{args.jtbl_shift:X}, "
            "each checked against both ROMs"
        )
    if args.pal_only is not None:
        print(f"{args.pal_only}: NTSC C under VERSION_US, EU assembly under VERSION_EU")
    print(f"bh.us.yaml: {report.us_yaml_lines} line(s) changed")
    print(f"bh.eu.yaml: {report.eu_yaml_lines} line(s) changed")
    return 0


if __name__ == "__main__":
    sys.exit(main())
