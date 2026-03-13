# Decompilation Verification Tools

Helper scripts for verifying decompiled C functions against the original ROM.

---

## bh_batch_diff.py

Compares compiled C bodies against their target ASM stubs, function by function.
Only checks functions that have either a `#pragma GLOBAL_ASM(...)` stub or a
`#ifdef NON_MATCHING` wrapper — bare C functions are invisible to this tool.

### Usage

```bash
# From repo root, after building the zone:
make build/src.us/overlay_level/<zone>/<file>.c.o

python3 tools/bh_batch_diff.py . \
    build/src.us/overlay_level/<zone>/<file>.c.o \
    src.us/overlay_level/<zone>/<file>.c
```

### Output

```
=== BATCH DIFF: <file>.c ===
MATCHING (N):
  [OK] func_802DXXXX_XXXXXX
  ...
NOT MATCHING (M):
  [X]  func_802DYYYY_YYYYYY: len mismatch compiled=N target=M
  ...
```

### Notes

- Uses `mips-linux-gnu-objdump` to extract compiled instructions
- Masks MIPS relocations (JAL targets, LUI/ADDIU pairs) in the comparison
- Does NOT check bare C functions — those require `bh_nm_sweep.py`

---

## bh_nm_sweep.py

Sweeps all `NON_MATCHING`-wrapped functions in a zone file. For each function:
1. Strips the `#ifdef NON_MATCHING` / `#else` / `#endif` wrapper
2. Builds the zone object file
3. Compares compiled bytes against ROM bytes at the function's ROM offset
4. Keeps the stripped version if byte-identical, restores the wrapper otherwise

This catches functions that are already byte-identical but were unnecessarily wrapped.

### Usage

```bash
# From repo root:
python3 tools/bh_nm_sweep.py \
    src.us/overlay_level/<zone>/<file>.c \
    baserom.us.z64
```

### Output

```
Found N NON_MATCHING blocks in <file>.c
  MATCHING: func_802DXXXX_XXXXXX
  NOT MATCHING: func_802DYYYY_YYYYYY (3 real diffs)
  BUILD FAIL: func_802DZZZZ_ZZZZZZ

=== SWEEP COMPLETE ===
MATCHING (N): [list of matched functions]
NOT MATCHING (M): [list of unmatched functions]
```

### How it works

The ROM offset for each function is extracted from the function name suffix
(e.g. `func_802DBD18_31FE68` → ROM offset `0x31FE68`). The function size is
determined by the gap to the next function's ROM offset.

Relocations are masked using `mips-linux-gnu-objdump -r` output. Only
non-relocation word differences count as mismatches.

### Requirements

- `mips-linux-gnu-objdump` and `readelf` must be on PATH
- `baserom.us.z64` must be present in the repo root
- Zone must be built before running (`make build/src.us/...c.o`)

---

## Workflow: verifying a batch of C bodies

After writing or modifying C bodies for a zone:

```bash
# 1. Build the zone
make build/src.us/overlay_level/<zone>/<file>.c.o

# 2. Check functions with ASM stubs (fast check)
python3 tools/bh_batch_diff.py . \
    build/src.us/overlay_level/<zone>/<file>.c.o \
    src.us/overlay_level/<zone>/<file>.c

# 3. Sweep NON_MATCHING wrappers (catches already-correct functions)
python3 tools/bh_nm_sweep.py \
    src.us/overlay_level/<zone>/<file>.c \
    baserom.us.z64

# 4. Commit matched functions
git add src.us/overlay_level/<zone>/<file>.c
git commit -m "reclaim: strip wrappers from N verified functions in <zone>/<file>"
```

---

## Limitations

- Both tools require the IDO 5.3 cross-compiler toolchain to be set up
- `bh_nm_sweep.py` modifies the zone file in-place; always have a clean git state before running
- Relocation masking covers the common cases (JAL, LUI+ADDIU, SW with relocated base)
  but may miss unusual relocation patterns — manual verification with `asm-differ` is
  recommended for any uncertain cases
