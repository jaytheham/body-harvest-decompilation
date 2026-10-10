# PAL (EU) versus NA (US) ROM differences

Reference for porting the EU build. Sections marked **[measured]** were verified
byte-for-byte against `baserom.us.z64` and `baserom.eu.z64` in this repository.
Sections marked **[OURS]** come from the 2026-09-30 comparison of a user-supplied
EU dump and are not yet independently reproduced here.

## Identity **[OURS]**

| | US | EU |
|---|---|---|
| Internal name | `BODY HARVEST` | `Body Harvest` |
| Game code | `NBHE` | `NBHP` |
| CRC1 CRC2 | `5326696F FE9A99C3` | `0B58B8CD B7B291D2` |
| MD5 (z64) | `3b8585ed03e8ddb89d7de456317545e7` | `b27fa5e9ad0cb47bb3a74ffac7bc8edf` |
| XXH3-64 (what librecomp checks) | `0x9949AA9BC66F33CB` | `0x2F360C668E9EFA10` |

SHA1s used by the build driver:

- `baserom.us.z64` = `BBB6666F5014A473747EE4145F036D9FB25D7348`
- `baserom.eu.z64` = `67750E2E7AB46FEDF65A271AB7F4C7AAD92AE355`

Both builds reproduce their baserom's SHA1 exactly.

## Layout

**[OURS]** The two ROMs are the same shape. Segment order is identical and the
same overlays appear in both, but the main code region is **0x30 bytes (12
words) longer** in PAL, so everything after it moves up by that amount in RAM.

**[measured]** The shift is a single insertion, not a cumulative drift. Diffing
the two ROMs directly:

- Identical from `0x1000` through roughly `0x7A10` (the first differing word is
  at `0x1008`, from an address immediate, not from code).
- From `0x7A10` on, PAL is NA shifted by exactly **+0x30** for the rest of core.
  Every NTSC subsegment boundary at or after `0xAD60` moves by +0x30; all 254
  boundaries were remapped that way and the result builds matching.
- The `+0x30` is accounted for almost entirely by one rewritten function,
  `func_80006DDC_79DC`, which grows by 14 words while the scattered
  single-word edits elsewhere net minus 2 words.

### Unresolved: the `+0xB60` figure

**[OURS]** reports that the frontend overlay grows by 0xB30 and that every
later segment then sits 0xB60 later than in the US ROM.

**[measured]** does not reproduce that. The core-to-overlay seam is a clean
+0x30 and nothing more:

| NA | PAL | bytes |
|---|---|---|
| `0x40750` | `0x40780` | `00 00 00 00 10 00 00 36` |

`0x10 00 00 36` is `bgez $zero` to itself, i.e. the trailing padding of the
preceding function. The same 8-byte pad sits at NA `0x40750` and PAL `0x40780`,
and PAL `0x40750` holds real code (`addiu $t6,$gp,-1` / `addiu $sp,$sp,-0x18`).
So PAL core ends at `0x40780`, exactly 0x30 later, and the frontend overlay
begins there.

This has not been reconciled with the 0xB30/0xB60 claim. Either the frontend
overlay genuinely also grows (which would only affect offsets *after* it, and so
would not contradict the seam above), or one of the two measurements is looking
at a different reference point. **Treat downstream overlay offsets as unverified
until this is resolved.** Do not propagate `+0xB60` into configs without
checking it against both ROMs.

## Code

**[OURS]** Main code sequence ratio 0.9973 after masking jump targets and
immediates, over 77 differing hunks:

- `func_80006DDC_79DC` (US, 1020 bytes) is largely rewritten; it holds 39 of the
  77 hunks and grows by 14 words. This single function is the whole core delta.
- About 30 scattered single-word changes, in `func_80006520`, `func_8000B044`,
  `func_8000CF4C`, `func_8000DCCC`, `func_8000E048` (four places),
  `func_8000E3DC`, `func_80013B48`, `func_80014508`, `func_80014A3C`, and the
  libultra/libgcc pieces `_timeToSamples`, `alAudioFrame`, `guPerspectiveF`,
  `sinf`.

**[measured]** The last group is almost certainly **intentional regional
behaviour, not incidental drift**. PAL runs at 50 Hz against NA's 60 Hz, so a
sampling-rate constant and the sin/cos argument scale are exactly what one
would expect to differ in `_timeToSamples`, `alAudioFrame` and `sinf`, and a
different FOV/projection constant in `guPerspectiveF`.

This matters for the port: those functions must **never** share NA decomp, and a
verbatim NA C body will not match. Treat them as separately decompiled.

**[OURS]** Header and boot are 99.4% identical. Six of the seven non-frontend
overlays are 91.8-98.8% identical word-for-word at the same offset; the
remainder looks like 0x30/0x40 address relocation and needs the same masked
comparison to separate from real changes.

## Consequences for the port

1. A PAL build is a separate recompilation: own ELF, own `overlays.eu.txt`, own
   hash entry. Nothing in `recomp/bh.us.toml` may hard-code an address that EU
   shifts. Today these hooks do: `unload_overlays(0x8003FB20, 0x117C10)` and
   the `0xE0000` window are US values (RT-05b).
2. Frame timing differs (PAL 50 Hz). Faithful-mode pacing must come from the
   version, not a constant (see QA-02).
3. EU is a coarser split than US: `bh.us.yaml` lists 28 segments including
   alien-type data tables, `bh.eu.yaml` lists 18 and has none of them.

## Current state of the EU decomp tree

The EU ROM builds and matches byte-for-byte on Windows:

```
build.eu/bh.eu.z64: OK   sha1 67750E2E7AB46FEDF65A271AB7F4C7AAD92AE355
```

Core is split into per-file `c`/`data`/`rodata`/`asm` subsegments, producing 42
hand-decompilable C stubs. What still needs attention:

- **Core/overlay seam is mis-split.** The frontend overlay really starts at
  `0x40780` but the config says `0x40750`. Moving it makes splat emit two
  one-instruction functions from the 8-byte alignment pad. Fixing it properly
  also needs the frontend overlay's own subsegment boundaries, which are
  PAL-specific and cannot be derived from NTSC: every PAL overlay's entry code
  differs from its NTSC counterpart, so no offset mapping recovers them.
- **PAL 50 Hz functions are not yet isolated.** They need an explicit marker so
  that shared NTSC decomp is never applied to them.
- Overlay offsets downstream of the frontend are unverified pending the
  0xB30/0xB60 reconciliation above.

## Tooling notes

- splat derives `bh.ld` and `undefined_syms_auto.txt` from the shared `basename`,
  so they are configured per version (`ld_script_path`, `undefined_syms_auto_path`)
  in `bh.eu.yaml`. Without this, extracting EU silently overwrites the US link
  inputs and breaks the US build.
- `jlabel` in `tools/asm-processor/prelude.inc` emits `.global`. It is the only
  macro that needed it: jump-table targets must resolve across object files once
  core rodata is split into separate segments. NTSC keeps its jump tables in C and
  never hit this.
- asm-processor's minimum function size is **2 instructions** for `-O2` without
  `-framepointer` (`tools/asm-processor/asm_processor.py`), not 5. Only
  one-instruction GLOBAL_ASM blocks are rejected.