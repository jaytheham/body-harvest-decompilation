#!/bin/bash
# Run from the repository root with PY set. Needs no extraction, no build and no baserom.
# Checks the size-0 FUNC symbol check that the build workflow runs on the built ELF of each version (tools/check_elf_symbols.py):
#   1. .github/workflows/build.yml reaches the ELF through $BUILD_DIR, never through a literal build/ path. The US build
#      writes build/bh.us.elf and every other version writes build.<version>/bh.<version>.elf (Makefile), so a literal
#      build/bh.eu.elf is a file that never exists: the EU job then died with a FileNotFoundError traceback on every run
#      and the red it produced hid every real failure.
#   2. On a synthetic ELF: a size-0 FUNC symbol is reported, a sized one and an assembler local label (.L...) are not, an unlisted offender exits 1 with the command that fixes it, --update-allowlist adds it, a listed one
#      exits 0, and a missing ELF exits 2 with a message that names the path instead of a traceback.
set -u
: "${PY:?set PY to a Python 3.10 or 3.12 interpreter with PyYAML (no 3.11: the vendored tree-sitter has no build for it)}"
failures=0
scratch=$(mktemp -d)
trap 'rm -rf "$scratch"' EXIT
here=$(cd "$scratch" && { pwd -W 2>/dev/null || pwd; })

check() {
    local description="$1"
    shift
    if "$@"; then echo "ok   $description"; else echo "FAIL $description"; failures=$((failures + 1)); fi
}

cat > "$scratch/check.py" << 'EOF'
import struct
import subprocess
import sys
from pathlib import Path

scratch = Path(sys.argv[1])
failed = []


def expect(description, condition):
    print(("ok   " if condition else "FAIL ") + description)
    if not condition:
        failed.append(description)


# 1. the workflow never names the ELF by a literal build/ path
workflow = Path(".github/workflows/build.yml").read_text(encoding="utf-8")
literal = [line.strip() for line in workflow.splitlines() if "build/bh." in line]
expect("build.yml has no literal build/bh.* path (found: %s)" % literal, not literal)
checks = [line for line in workflow.splitlines() if "check_elf_symbols.py" in line and "run:" in line]
expect("build.yml runs check_elf_symbols.py once", len(checks) == 1)
expect(
    "the check reads ${{ env.BUILD_DIR }}/bh.<version>.elf",
    bool(checks) and "${{ env.BUILD_DIR }}/bh.${{ matrix.version }}.elf" in checks[0],
)


# 2. the script, on a synthetic big-endian MIPS ELF
def make_elf(symbols):
    """symbols: [(name, address, size, is_func)] -> bytes of a minimal ELF with a .symtab and a .strtab."""
    strtab = b"\0"
    entries = [struct.pack(">IIIBBH", 0, 0, 0, 0, 0, 0)]
    for name, address, size, is_func in symbols:
        entries.append(struct.pack(">IIIBBH", len(strtab), address, size, 0x12 if is_func else 0x11, 0, 1))
        strtab += name.encode() + b"\0"
    symtab = b"".join(entries)
    ident = b"\x7fELF" + bytes([1, 2, 1]) + bytes(9)
    symtab_off = 52
    strtab_off = symtab_off + len(symtab)
    shoff = strtab_off + len(strtab)
    shoff += -shoff % 4
    header = ident + struct.pack(">HHIIIIIHHHHHH", 2, 8, 1, 0, 0, shoff, 0, 52, 0, 0, 40, 3, 0)
    sections = [
        struct.pack(">10I", *([0] * 10)),
        struct.pack(">10I", 0, 2, 0, 0, symtab_off, len(symtab), 2, 0, 4, 16),
        struct.pack(">10I", 0, 3, 0, 0, strtab_off, len(strtab), 0, 0, 1, 0),
    ]
    body = header + symtab + strtab
    body += bytes(shoff - len(body))
    return body + b"".join(sections)


elf = scratch / "x.elf"
elf.write_bytes(make_elf([("sized_func", 0x80000000, 8, True), ("empty_func", 0x80000010, 0, True), ("empty_obj", 0x80000020, 0, False), (".L80000030", 0x80000030, 0, True)]))
allow_none = scratch / "allow_none.txt"
allow_none.write_text("# nothing allowed\n", encoding="utf-8")
allow_empty = scratch / "allow_empty.txt"
allow_empty.write_text("empty_func  # listed\n", encoding="utf-8")


def run(*args):
    return subprocess.run([sys.executable, "tools/check_elf_symbols.py", *map(str, args)], capture_output=True, text=True)


result = run(elf, allow_none)
expect("an unlisted size-0 FUNC exits 1", result.returncode == 1)
expect("it names the offender and its address", "empty_func  0x80000010" in result.stdout)
expect("a sized FUNC and a size-0 object are not offenders", "sized_func" not in result.stdout and "empty_obj" not in result.stdout)
expect("the error line names the unlisted symbol", "empty_func" in result.stderr)
expect("an assembler local label (.L...) is not a function and is not reported", ".L80000030" not in result.stdout)
expect("a listed size-0 FUNC exits 0", run(elf, allow_empty).returncode == 0)
expect("the failure message says how to fix it locally", "--update-allowlist" in result.stderr)
learn = scratch / "allow_learn.txt"
learn.write_text("# header\n", encoding="utf-8")
updated = run(elf, learn, "--update-allowlist")
expect("--update-allowlist exits 0 and reports what it added", updated.returncode == 0 and "empty_func" in updated.stdout)
expect("it appended the offender to the allowlist", "empty_func" in learn.read_text(encoding="utf-8").split())
expect("it kept the existing header", learn.read_text(encoding="utf-8").startswith("# header"))
expect("the plain check now passes", run(elf, learn).returncode == 0)
again = learn.read_text(encoding="utf-8")
run(elf, learn, "--update-allowlist")
expect("running it again changes nothing", learn.read_text(encoding="utf-8") == again)
expect("--update-allowlist without an ELF is a usage error", run("--update-allowlist").returncode == 2)
missing = run(scratch / "build" / "bh.eu.elf", allow_none)
expect("a missing ELF exits 2, not a traceback", missing.returncode == 2 and "Traceback" not in missing.stderr)
expect("the message names the missing path", "bh.eu.elf" in missing.stderr)
sys.exit(1 if failed else 0)
EOF

check "build.yml reads the ELF through BUILD_DIR, and the check script behaves on a synthetic ELF" "$PY" "$scratch/check.py" "$here"

if [ "$failures" -ne 0 ]; then
    echo "$failures check(s) failed"
    exit 1
fi
echo "all checks passed"
