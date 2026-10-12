#!/usr/bin/env python3
"""Convert a per-version core C file into one source file shared by NTSC and EU.

    python tools/share_core_file.py <File>        e.g. 1B060, E830, 17EE0, AD60, 1050, 53F0

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

It prints how many pragmas it rewrote and how many yaml lines it changed.  It does not touch the symbol tables and
does not build.  Everything is computed before anything is changed, so a refusal leaves the tree as it was.  The
moved file is staged as a rename by git; the edits to it and to the yamls are left unstaged.

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


def run_git(root: Path, *arguments: str) -> None:
    """Run ``git`` in ``root`` and raise ``ConversionRefused`` with its output when it fails."""
    result = subprocess.run(["git", "-C", str(root), *arguments], capture_output=True, text=True, check=False)
    if result.returncode != 0:
        raise ConversionRefused(f"git {' '.join(arguments)} failed: {(result.stderr or result.stdout).strip()}")


def share(root: Path, module: str) -> tuple[int, int, int]:
    """Convert ``module`` under ``root`` and return the pragma count and the yaml lines changed (US, EU)."""
    if re.fullmatch(r"[0-9A-Za-z_]+", module) is None:
        raise ConversionRefused(f"'{module}' is not a core file name such as E830 or 17EE0")
    source = root / "src.us" / "core" / f"{module}.c"
    eu_stub = root / "src.eu" / "core" / f"{module}.c"
    target = root / "src" / "common" / "core" / f"{module}.c"
    for needed in (source, eu_stub):
        if not needed.is_file():
            raise ConversionRefused(f"{needed.relative_to(root).as_posix()} does not exist; nothing to convert")
    if target.exists():
        raise ConversionRefused(f"{target.relative_to(root).as_posix()} already exists; the file is already shared")

    new_source, pragmas = share_pragmas(read_text(source), module)
    yamls = {version: rewrite_yaml(read_text(root / f"bh.{version}.yaml"), module, version) for version in ("us", "eu")}

    run_git(root, "mv", source.relative_to(root).as_posix(), target.relative_to(root).as_posix())
    run_git(root, "rm", "-q", eu_stub.relative_to(root).as_posix())
    write_text(target, new_source)
    for version, result in yamls.items():
        write_text(root / f"bh.{version}.yaml", result.text)
    return pragmas, yamls["us"].changed, yamls["eu"].changed


def main(argv: Sequence[str] | None = None) -> int:
    """Entry point: convert one core file and report what changed."""
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("module", help="core file name without extension, e.g. E830")
    args = parser.parse_args(argv)
    try:
        pragmas, us_lines, eu_lines = share(ROOT, args.module)
    except ConversionRefused as refusal:
        print(f"share_core_file: {refusal}", file=sys.stderr)
        return 1
    print(f"{args.module}: {pragmas} pragma(s) rewritten in src/common/core/{args.module}.c")
    print(f"bh.us.yaml: {us_lines} line(s) changed")
    print(f"bh.eu.yaml: {eu_lines} line(s) changed")
    return 0


if __name__ == "__main__":
    sys.exit(main())
