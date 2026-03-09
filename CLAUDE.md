# Body Harvest Decompilation — Project Directives

## Working Zone

This is the active decompilation repository for Body Harvest (N64).
Branch convention: `reclaim/zone-FILENAME` (e.g. `reclaim/greece-18D7E0`)

## Current Target

Zone: `src.us/overlay_level/greece/18D7E0.c`
Branch: `reclaim/greece-18D7E0`
Functions remaining: check `grep -c NON_MATCHING src.us/overlay_level/greece/18D7E0.c`

## Build System

```
make --jobs          # Full build (SHA1 FAILED is expected with NON_MATCHING blocks)
```

Object output: `build/src.us/overlay_level/greece/18D7E0.c.o`
Compiler: IDO 5.3 (C89 — declarations must precede statements in each block)

## Reclamation Workflow (per function)

1. Run m2c: `python3 tools/m2c/m2c.py --target n64 asm/nonmatchings/.../func_XXXX.s`
2. Clean output: apply known patterns (see below)
3. Build: `make --jobs` — fix any compile errors
4. Diff: `python3 ~/harvester-home/tools/bh_batch_diff.py . build/src.us/overlay_level/greece/18D7E0.c.o src.us/overlay_level/greece/18D7E0.c`
5. If MATCHING: remove NON_MATCHING wrapper, commit, push
6. If NOT MATCHING: iterate with decomp-permuter or manual register fixes

## Known Fix Patterns

### Undeclared array addresses (m2c artifact)
`*(&D_XXXXXXXX + offset)` on incomplete array type → `*(TYPE*)(D_XXXXXXXX + offset)`

### Unaligned s32 loads (lwl/lwr pair)
`(unaligned s32) ptr->field` → `*(s32*)(&ptr->field)`

### Big-endian s32 halfword access
When `(s32*)` pointer arg is filled by func, then `spXX` (high half) / `spXX+2` (low half) loaded:
- Declare sp variable as s32
- Replace spXX+2 references with `(s16)spXX`

### Extra args (m2c delay-slot reads)
m2c sometimes adds extra args from post-call register reads. Trim to declared arity.

### IDO C89 syntax
- All variable declarations must be at TOP of block (before any statement)
- No `for (int i = ...)` — declare `int i;` before the loop
- In-block `Type *var = val;` must be split to `Type *var; var = val;`

### D_8013E3C0 array access
`(&D_8013E3C0)[idx].field` → `D_8013E3C0[idx].field`

## Batch Diff Tool

```bash
python3 ~/harvester-home/tools/bh_batch_diff.py \
  /home/meridian/harvester-home/projects/body-harvest \
  build/src.us/overlay_level/greece/18D7E0.c.o \
  src.us/overlay_level/greece/18D7E0.c
```

Reports MATCHING (byte-identical) vs NOT MATCHING with diff counts.

## Commit Convention

```
reclaim: func_802DXXXX in zone/file [N matched]
fix: describe compilation error fixes
```

Always push to `harvester` remote after each commit.

## Progress Log

See: `~/harvester-home/harvester-internal/progress-log.md`

## Functions Currently NON_MATCHING (still hostile)

Run `grep "#pragma GLOBAL_ASM" src.us/overlay_level/greece/18D7E0.c` to list.
Length-mismatch functions need m2c or decomp-permuter work.
Register-diff functions may need volatile hints or expression reordering.
