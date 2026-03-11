#!/usr/bin/env python3
"""
ci_diff_check.py — ROM-free byte-identical diff check for Body Harvest CI.

For each changed .c source file, compiles it with NON_MATCHING=1 PERMUTER=1,
then for every wrapped function (those with a NON_MATCHING C body) that also has
a corresponding .s stub in asm/nonmatchings/, compares the compiled opcodes against
the target opcodes from the .s file.

Returns exit code 0 if all comparable functions are byte-identical.
Returns exit code 1 if any function differs.

ZONE TYPES:
- NON_MATCHING zones (greece, java): Functions wrapped in #ifdef NON_MATCHING blocks
  produce compiled symbols in the .o. Full diff is possible ROM-free.
- GLOBAL_ASM zones (comet, siberia, america): Bare #pragma GLOBAL_ASM() functions
  produce no compiled output under PERMUTER=1. Those functions are skipped here;
  they require the full ROM build for diff validation (see full-build.yml).

RELOCATION MASKING:
  jal/j targets and lui/addiu address pairs are zeroed in .o files (relocated at
  link time). The same fields in .s stubs contain the real ROM addresses. We apply
  a per-opcode mask to both sides before comparing so these relocations don't
  cause false failures.

Usage:
    python3 tools/ci_diff_check.py src.us/overlay_level/greece/18D7E0.c [...]
"""

import re
import subprocess
import sys
from pathlib import Path

REPO_ROOT = Path(__file__).parent.parent
OBJDUMP = "mips-linux-gnu-objdump"
NM = "mips-linux-gnu-nm"

# MIPS opcode masks — zero out fields that are relocated at link time
# Format: (opcode_mask, instruction_mask)
# Instruction word: [31:26] opcode, [25:0] target/immediate
_MIPS_OPCODE = lambda word: (word >> 26) & 0x3F
_RELOC_MASK = {
    0x02: 0xFC000000,  # j    — mask 26-bit target
    0x03: 0xFC000000,  # jal  — mask 26-bit target
    0x0F: 0xFFFF0000,  # lui  — mask 16-bit immediate (hi-load)
    0x09: 0xFFFF0000,  # addiu — mask 16-bit immediate (lo-load, paired with lui)
}

def mask_opcode(word: int) -> int:
    """Zero out relocated fields in an instruction word for comparison."""
    op = _MIPS_OPCODE(word)
    mask = _RELOC_MASK.get(op, 0xFFFFFFFF)
    return word & mask


def get_target_opcodes(asm_path: Path) -> list[int] | None:
    """
    Parse a .s stub file and extract the raw instruction words.

    Lines look like:
        /* 31A074 802D5F24 27BDFFE8 */  addiu  $sp, $sp, -0x18
    The third hex field is the 32-bit instruction word.
    """
    if not asm_path.exists():
        return None

    text = asm_path.read_text()
    opcodes = []
    pattern = re.compile(r'/\*\s+[0-9A-Fa-f]+\s+[0-9A-Fa-f]+\s+([0-9A-Fa-f]{8})\s+\*/')
    for m in pattern.finditer(text):
        opcodes.append(int(m.group(1), 16))

    return opcodes if opcodes else None


def get_compiled_functions(obj_path: Path) -> dict[str, list[int]]:
    """
    Run objdump on the compiled .o and return {func_name: [opcodes]} for all
    functions found in the .text section.
    """
    try:
        result = subprocess.run(
            [OBJDUMP, "-d", str(obj_path)],
            capture_output=True, text=True, check=True
        )
    except (subprocess.CalledProcessError, FileNotFoundError) as e:
        print(f"  objdump failed: {e}", file=sys.stderr)
        return {}

    functions = {}
    current_func = None
    current_ops = []
    # Function header: "00000000 <func_NAME>:"
    func_header = re.compile(r'^[0-9a-f]+ <(\S+)>:')
    # Instruction line: "   c:\t0c000000 \taddiu..."
    instr_line = re.compile(r'^\s+[0-9a-f]+:\s+([0-9a-f]{8})\s')

    for line in result.stdout.splitlines():
        fh = func_header.match(line)
        if fh:
            if current_func and current_ops:
                functions[current_func] = current_ops
            current_func = fh.group(1)
            current_ops = []
            continue
        il = instr_line.match(line)
        if il and current_func:
            current_ops.append(int(il.group(1), 16))

    if current_func and current_ops:
        functions[current_func] = current_ops

    return functions


def strip_trailing_nops(ops: list[int]) -> list[int]:
    """Remove trailing zero-word NOPs (alignment padding after endlabel)."""
    ops = list(ops)
    while ops and ops[-1] == 0x00000000:
        ops.pop()
    return ops


def compare_functions(
    func_name: str,
    compiled_ops: list[int],
    target_ops: list[int],
) -> bool:
    """
    Compare compiled vs target opcodes with relocation masking.
    Returns True if matching, False if not. Prints diff details on mismatch.
    """
    c = [mask_opcode(w) for w in strip_trailing_nops(compiled_ops)]
    t = [mask_opcode(w) for w in strip_trailing_nops(target_ops)]

    if c == t:
        return True

    if len(c) != len(t):
        print(f"  NOT MATCHING: {func_name} — "
              f"length mismatch: compiled={len(c)} target={len(t)}")
        return False

    diffs = [(i, cv, tv) for i, (cv, tv) in enumerate(zip(c, t)) if cv != tv]
    print(f"  NOT MATCHING: {func_name} — {len(diffs)} diff(s)")
    for i, cv, tv in diffs[:3]:  # show first 3 diffs
        print(f"    instr {i:3d}: compiled={compiled_ops[i]:08x}  target={target_ops[i]:08x}")
    if len(diffs) > 3:
        print(f"    ... and {len(diffs) - 3} more")
    return False


def check_zone_file(src_path: Path) -> tuple[int, int, int]:
    """
    Check all wrapped functions in a zone file.
    Returns (matched, not_matched, skipped) counts.
    """
    rel = src_path.relative_to(REPO_ROOT)
    obj_path = REPO_ROOT / "build" / (str(rel) + ".o")

    # src.us/overlay_level/comet/318E20.c
    # -> asm/nonmatchings/overlay_level/comet/318E20/
    parts = rel.parts  # e.g. ('src.us', 'overlay_level', 'comet', '318E20.c')
    if parts[0].startswith("src."):
        zone_rel = Path(*parts[1:]).with_suffix("")  # overlay_level/comet/318E20
    else:
        zone_rel = Path(*parts).with_suffix("")
    asm_dir = REPO_ROOT / "asm" / "nonmatchings" / zone_rel

    if not obj_path.exists():
        print(f"  SKIP (no .o): {rel}")
        return (0, 0, 1)

    # Load all compiled functions from .o
    compiled = get_compiled_functions(obj_path)
    if not compiled:
        # GLOBAL_ASM zone under PERMUTER=1 — no compiled C bodies
        print(f"  SKIP (GLOBAL_ASM zone — no compiled C bodies in .o): {rel}")
        return (0, 0, 0)

    print(f"  Found {len(compiled)} compiled function(s) in {rel.name}")

    if not asm_dir.exists():
        print(f"  SKIP (no ASM stub dir): {asm_dir.relative_to(REPO_ROOT)}")
        return (0, 0, len(compiled))

    matched = not_matched = skipped = 0

    for func_name, comp_ops in sorted(compiled.items()):
        stub = asm_dir / f"{func_name}.s"
        target_ops = get_target_opcodes(stub)

        if target_ops is None:
            # No stub — function is already MATCHING (stub was deleted) or is new
            skipped += 1
            continue

        if compare_functions(func_name, comp_ops, target_ops):
            matched += 1
            print(f"  MATCHING:     {func_name}")
        else:
            not_matched += 1

    return (matched, not_matched, skipped)


def main() -> int:
    if len(sys.argv) < 2:
        print(f"Usage: {sys.argv[0]} <source.c> [...]", file=sys.stderr)
        return 1

    total_matched = total_not_matched = total_skipped = 0

    for arg in sys.argv[1:]:
        src_path = REPO_ROOT / arg
        if not src_path.exists():
            print(f"ERROR: source file not found: {arg}", file=sys.stderr)
            return 1

        print(f"\nChecking: {arg}")
        m, nm, sk = check_zone_file(src_path)
        total_matched += m
        total_not_matched += nm
        total_skipped += sk
        print(f"  -> {m} matching, {nm} not matching, {sk} skipped")

    print(f"\nSummary: {total_matched} matching, {total_not_matched} not matching, "
          f"{total_skipped} skipped")

    if total_not_matched > 0:
        print("\nFAIL: some functions are not byte-identical to the ROM target.")
        return 1

    print("\nPASS: all comparable functions are byte-identical.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
