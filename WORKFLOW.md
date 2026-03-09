# Decompilation Workflow

End-to-end guide for reclaiming a NON_MATCHING function to byte-identical match.
Assumes Ubuntu 22.04 (native or WSL2). All commands run from the repo root unless
noted.

---

## 1. Prerequisites

### System packages

```sh
sudo apt-get install make python3 python3-pip gcc-mips-linux-gnu \
    build-essential libglib2.0-dev binutils-mips-linux-gnu wget unzip
```

### Python packages

```sh
pip3 install -r requirements.txt
pip3 install splat64
pip3 install -e tools/mips_to_c/
```

### ROM placement

Place `baserom.us.z64` (SHA1: `BBB6666F5014A473747EE4145F036D9FB25D7348`) in the
repo root.

### First extract and build

```sh
python3 -m splat split bh.us.yaml   # split ROM into asm/ and assets/
make --jobs                          # build — expect SHA1 mismatch (NON_MATCHING state is normal)
```

A SHA1 mismatch at the end is expected while any NON_MATCHING functions remain.
A **zone breach** (build error) is not — fix before continuing.

---

## 2. Finding Work

1. Open `CLAIMED.md` — find a file with status `unclaimed` in your target subsystem
2. Claim it (see `CONTRIBUTING.md` — Claiming Work)
3. Check how many NON_MATCHING functions it has:
   ```sh
   grep -c "NON_MATCHING" src.us/<path/to/file>.c
   ```
4. Start with the smallest/simplest function — short instruction count, low register
   pressure. Function size approximation from assembly file:
   ```sh
   wc -l asm/us/overlay_gameplay/outside/<ADDR>.s
   ```

---

## 3. m2c — Assembly to C Translation

m2c generates a starting-point C translation from MIPS assembly.

### Invocation

```sh
python3 tools/mips_to_c/mips_to_c.py \
    --target mips-ido-c \
    asm/us/<overlay>/<FUNCTION_ADDR>.s
```

Example:
```sh
python3 tools/mips_to_c/mips_to_c.py \
    --target mips-ido-c \
    asm/us/overlay_gameplay/outside/func_800734AC_8245C.s
```

### Where generated C goes

Copy the output into the corresponding `.c` file in `src.us/`, replacing the
`GLOBAL_ASM` pragma block for that function:

Before:
```c
#pragma GLOBAL_ASM("asm/us/overlay_gameplay/outside/func_800734AC_8245C.s")
```

After (paste m2c output):
```c
void func_800734AC_8245C(void) {
    // ... m2c generated body
}
```

Remove the `NON_MATCHING` wrapping macros when the function matches.

### m2c tips

- m2c may infer wrong parameter types — verify against the assembly prologue
- `move reg, arg` without sign extension → parameter is `s32`, not `s16`
- If `a0 && 0xFF` patterns appear → parameter is likely `u8`
- Check `DecompHints.md` for common patterns before hand-editing

---

## 4. asm-differ — Verifying Match Quality

asm-differ shows the diff between your compiled output and the original ROM assembly.

### Setup

```sh
pip3 install -r tools/asm-differ/requirements.txt
```

### Invocation

```sh
python3 tools/asm-differ/diff.py \
    --make \
    -I <FUNCTION_ADDR>
```

Example:
```sh
python3 tools/asm-differ/diff.py --make -I func_800734AC_8245C
```

The `-I` flag shows the function by name. `--make` rebuilds before diffing.

### Reading the diff

- Lines in **green** (left-only): ROM target instruction
- Lines in **red** (right-only): your compiled instruction
- Lines with no colour: matched

A clean diff = no coloured lines = byte-identical = function is reclaimed.

Common diff patterns and their fixes are in `ExampleFixes.md`.

---

## 5. Iteration

The loop:
1. Edit the C source
2. Run asm-differ (`--make` rebuilds automatically)
3. Read the diff, apply fix
4. Repeat until clean

### Where to look

- `DecompHints.md` — IDO-specific patterns: register types, loop forms, parameter
  inference traps
- `ExampleFixes.md` — concrete before/after examples of common fixes
- `include/` — type definitions and struct layouts
- Surrounding matched functions in the same file — context on calling conventions

### Common patterns

| Symptom | Likely fix |
|---------|-----------|
| Extra `sll/sra` at prologue | Parameter declared `s16`, should be `s32` |
| Wrong branch direction | Swap comparison operands in C |
| `do-while` vs `for` loop | Convert to `for` form (see DecompHints.md) |
| Mismatched register allocation | Add/remove `register` keyword or reorder declarations |
| Off-by-one in loop bound | Change `!=` to `<` in loop condition |

### Escalating to decomp-permuter

If manual iteration stalls on register allocation mismatches, use decomp-permuter:

```sh
cd tools/decomp-permuter/
python3 permuter.py ../../src.us/<path>.c \
    <FUNCTION_NAME> \
    ../../asm/us/<overlay>/<FUNCTION_ADDR>.s
```

Permuter makes randomised source tweaks and scores each result. It is slow —
let it run while working on another function.

---

## 6. Definition of Done

A function is **reclaimed** when:

1. `make --jobs` completes without errors
2. `asm-differ` shows a completely clean diff (no coloured lines)
3. The `NON_MATCHING` annotation and wrapping macros are removed from the source
4. The function signature matches any existing declarations in `include/`

Do not mark a function matching until all three conditions hold. A functionally
equivalent but non-identical output is not sufficient — byte-identical only.

---

## 7. Commit and PR

### Commit message conventions

```
reclaim: <function_name> — matching
```

For a batch:
```
reclaim: func_800734AC_8245C, func_80073540_8245C — matching
```

For a partial file checkpoint:
```
reclaim: cheats.c — 24/25 functions matching
```

### What to include in a commit

- Modified `.c` source file
- Updated `CLAIMED.md` (status → `complete` if file is done)
- Nothing else — do not commit `asm/`, `build/`, `assets/` (they are gitignored)

### Branch naming

```
reclaim/<file-stem>
```

Examples: `reclaim/cheats`, `reclaim/884C0`, `reclaim/missions`

### Opening a PR

- Target branch: `master`
- Title: `Reclaim <file> — N functions matched`
- Body: paste the final asm-differ output confirming clean diffs
- Build must pass — include `make --jobs` output if any doubt

---

*See `CONTRIBUTING.md` for subsystem groups, claiming, and collaboration protocol.*
*See `CLAIMED.md` for current file ownership.*
