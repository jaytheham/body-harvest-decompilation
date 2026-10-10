# PAL (EU) versus NA (US) ROM differences

Decomp reference. Everything here is measured against `baserom.us.z64` and
`baserom.eu.z64` in this repository, either by hash, by direct comparison, or by
`tools/pal_na_diff.py`. Anything not verified is listed as open at the end.

## Identity

| | US | EU |
|---|---|---|
| Internal name | `BODY HARVEST` | `Body Harvest` |
| Game code | `NBHE` | `NBHP` |
| MD5 (z64) | `3b8585ed03e8ddb89d7de456317545e7` | `b27fa5e9ad0cb47bb3a74ffac7bc8edf` |
| SHA1 | `BBB6666F5014A473747EE4145F036D9FB25D7348` | `67750E2E7AB46FEDF65A271AB7F4C7AAD92AE355` |

CRC1/CRC2 and the XXH3-64 values are not recomputed here; the MD5 and SHA1 above
are, and both builds reproduce their baserom's SHA1 exactly.

## Layout

Same shape: identical segment order, the same overlays. The main code region is
**0x30 bytes (12 words) longer** in PAL, so everything after it moves up by that
amount in RAM.

That shift is a single insertion, not cumulative drift. Measured agreement per
1 KiB window across core:

| NTSC range | mapping |
|---|---|
| `0x001000`–`0x007800` | same offsets (85% word identical; the rest are data addresses) |
| `0x007C00`–`0x00AC00` | **reorganised** — neither offset matches (agreement drops to under 10%) |
| `0x00AC00` onward | NTSC + 0x30 |

So PAL rewrote roughly 12 KiB at NTSC `0x7C00`–`0xAC00`, which is both where the
0x30 comes from and where the differing functions are. Every NTSC subsegment
boundary at or after `0xAD60` shifts by +0x30; all 254 were remapped that way
and the result builds matching.

RAM-side windows in `bh.eu.yaml` already agree with this shift: the gameplay
overlay window is `0x800702A0` (NTSC `0x80070270`, +0x30) and the level window is
`0x802D4D10` (NTSC `0x802D4CD0`, +0x40).

### Overlay offsets

PAL carries an **overlay start table at ROM `0x032848`** with ten entries:
`0x18E340, 0x1EE540, 0x254F70, 0x2B7C60, 0x319980` (level overlays) and
`0x197AD0, 0x1FA820, 0x2610D0, 0x2C6020, 0x32C8E0` (their data segments). These
are exactly the offsets `bh.eu.yaml` already uses. NTSC has no such table, so the
config's overlay offsets came from PAL and are **correct**.

That settles the growth question. The level overlays are **not** shifted, so
nothing downstream of core moved: core is +0x30 and the frontend overlay absorbs
it. The earlier report of the frontend growing 0xB30 with everything after it
sitting 0xB60 later is not consistent with the table and is not reproduced here.

### The core-to-overlay seam

PAL core ends at `0x40780`, not `0x40750`. The 8-byte trailing pad that ends
core — `00 00 00 00 10 00 00 36`, where `10 00 00 36` is `bgez $zero` to itself —
sits at NTSC `0x40750` and at PAL `0x40780`, and PAL `0x40750` holds real code
(`addiu $t6,$gp,-1`, `addiu $sp,$sp,-0x18`).

The 8 bytes after the pad are identical in both ROMs (`00 00 10 25`,
`lui $at,0x8004`, `lui $a1,0x8005`, `lw $a1,0x2b5c($a1)`); only the data
addresses inside differ. So the frontend overlay's first function is the same
*shape* in both versions and differs only in immediates.

**Not applied.** The ROM matches with the config as it stands, so this is a
file-attribution fix rather than a correctness one. What was established by
experiment, in order:

| Attempt | Change | Result |
|---|---|---|
| 1 | frontend start `0x40780`, C attribution there | asm_processor rejects two one-instruction functions |
| 2 | pad as `bin` inside the overlay | `bin` in an `overlay: true` segment adds 16 bytes of padding |
| 3 | frontend start `0x40788`, pad left to core | nothing emits the 8-byte gap; 6 bytes dropped |
| 4 | pad as `bin` mid-list in core | core's subsegments must stay ordered |
| 5 | pad as `bin` appended to core, frontend `0x40788` | `bin` lands in `.data`, before `.rodata` |
| 6 | pad as `rodata` instead | pad emitted correctly at `0x40780`, but the linker adds alignment fill |

Attempt 6 identified the real mechanism. `__romPos` advances by
`SIZEOF(.core)`, which is the **VMA** size, and then `ALIGN(__romPos, 16)`.
Because `0x40788` is 8-mod-16 and every boundary in the script is forced to 16,
the linker inserts fill where the reference has the overlay's first instruction
immediately at `0x40788`.

**Per-segment alignment does resolve that part.** `align` and `subalign` are
read per segment (`linker_entry.py`, `parse_segment_subalign`), so setting
`align: 8` / `subalign: 8` on `core` and `overlay_gameplay_frontend` — not
globally — produces `SUBALIGN(8)` and `ALIGN(__romPos, 8)`, emits the pad at
`0x40780`, and starts the frontend at `0x40788` with no alignment fill. The first
mismatch moves from `0x4078A` past the seam to `0x407AF`.

That configuration still fails the acceptance criteria, and the remaining cause
is a different layer. Measured against the baseline with
`tools/eu_rom_diff.py` and the two linker maps:

- The seam itself is **fixed**: `_coreSegmentRomEnd` and
  `_overlay_gameplay_frontendSegmentRomStart` both move to `0x40788`, exactly
  right, with no alignment fill.
- `40750.c.o .text` is **`0xDCD0`** but its ROM region `0x40788`–`0x4E450` is
  **`0xDCC8`**. The 8 byte difference is two zero words emitted at `0x4E450`.
  Since `0xDCC8 % 16 == 8` and `0xDCD0 % 16 == 0`, the excess is **16-byte
  `.text` alignment padding**. In the baseline the region was `0xDD00`, already
  16-aligned, so no padding was needed and the object was exact.
- Everything downstream follows from that one object: `4E450.c.o` starts at
  `0x8007DF70` instead of `0x8007DF68`, the `jal` at `0x407AC` that targets
  that boundary resolves 8 bytes high, and the frontend ends at `0x7FD88`
  instead of `0x7FD80`, shifting every later overlay (`outside` and everything
  after it, `+16` in total).

So the seam fix is blocked by a **toolchain alignment constraint, not by splat
configuration**: the frontend's first C object cannot emit `0xDCC8` bytes
because its `.text` is aligned to 16, and the PAL ROM has no padding there.
Resolving it needs either a change to that alignment, or an internal frontend
boundary that makes the first region 16-aligned without moving real functions.

Net effect today: 0x38 bytes of PAL core code at `0x40750`-`0x40788` are
attributed to the frontend overlay's first C file. Cosmetic; the ROM is correct.

## Which functions differ

`python tools/pal_na_diff.py` splits the NTSC ROM with splat to enumerate its
functions, then compares each against PAL. Current result over 682 NTSC core
functions:

| class | functions | share of functions | share of core code bytes |
|---|---|---|---|
| `EXACT` byte identical | 135 | 19.8% | 5.38% |
| `SHAPE` same opcode everywhere, different immediates | 512 | 75.1% | 89.55% |
| `DIFF` genuinely different code | 35 | 5.1% | 5.07% |

**94.93% of core code bytes are reusable from NTSC.** The `SHAPE` bucket is
dominated by ordinary address relocation, not by logic changes.

The 35 `DIFF` functions are the ones that must not share NTSC decomp. They are
listed in `docs/pal-na-diff.txt`; the largest are:

| NTSC | PAL | bytes | name |
|---|---|---|---|
| `0x009EB8` | `0x009EE8` | 3168 | `func_800092B8_9EB8` |
| `0x0098A8` | `0x0098D8` | 1552 | `func_80008CA8_98A8` |
| `0x0079DC` | `0x0079DC` | 1020 | `func_80006DDC_79DC` |
| `0x009538` | `0x009568` | 736 | `func_80008938_9538` |
| `0x009274` | `0x0092A4` | 708 | `func_80008674_9274` |
| `0x008DD4` | `0x008E04` | 676 | `func_800081D4_8DD4` |

`func_80006DDC_79DC` is the known rewrite: 143 of its 144 words differ, starting
at its very first instruction, so it is different code and not a recompilation
of the same source. All 35 `DIFF` functions fall inside the reorganised band
(`0x7ECC`–`0x9EE8`, plus `0xAC24`); nothing differs anywhere else in core. That
band is confirmed to be code and not data misread: the functions begin with real
prologues (`addiu $sp,$sp,-0x1F0`) and carry 6–21% branch density.

Separately, the differing libultra/libgcc pieces `_timeToSamples`,
`alAudioFrame`, `guPerspectiveF` and `sinf` are **intentional regional
behaviour, not drift**: PAL runs at 50 Hz against NTSC's 60 Hz, so a
sampling-rate constant and the sin/cos argument scale are exactly what one
expects to change, with a different projection constant in `guPerspectiveF`.
These fall in the `SHAPE` bucket (constants differ, code does not), but they
still must not be given a verbatim NTSC C body.

## Open, not verified

- **Applying the seam fix** (`0x40750` → `0x40780`), for the splat reasons
  listed above.
- **The gameplay overlays.** The table at `0x032848` covers the five level
  overlays and their data segments only. `frontend`, `outside` and `inside` are
  absent from it, so their ROM offsets are still inferred rather than read. Their
  entry code is version specific (each PAL overlay's first bytes match neither
  NTSC nor NTSC+0x30).
- **Header/boot and per-overlay identity percentages.** A previous comparison
  reported header and boot 99.4% identical and the non-frontend overlays
  91.8–98.8% identical word-for-word. Not recomputed in this pass; the tool
  covers core only.
- **`func_80006DDC_79DC` is auto-named on both sides**, so the "largely
  rewritten" attribution rests on byte comparison rather than a name match.

## Naming PAL functions

PAL carries the same three debug path strings as NTSC (`src/buildings.c`,
`src/loader.c`, `src/trigger.c`), so file-level naming comes across the same way.
Neither ROM contains a function-name table, so per-function names are not
recoverable from debug info and must come from NTSC by address mapping or from
manual work.

`symbol_addrs.eu.txt` is generated by mapping NTSC names onto PAL addresses and
keeping only those that land on a function boundary splat found in PAL, which
currently attaches all 267 NTSC function names. The NTSC symbol table alone is
not a safe source for this: it carries ~267 `type:func` entries with none in the
game-code region.

## Current state of the EU decomp tree

The EU ROM builds and matches byte-for-byte on Windows:

```
build.eu/bh.eu.z64: OK   sha1 67750E2E7AB46FEDF65A271AB7F4C7AAD92AE355
```

Core is split into per-file `c`/`data`/`rodata`/`asm` subsegments, producing 42
hand-decompilable C stubs. Still open:

- **Core/overlay seam is mis-split.** The frontend overlay really starts at
  `0x40780` but the config says `0x40750`. Moving it makes splat emit two
  one-instruction functions from the alignment pad, and the overlay's own
  subsegment boundaries are PAL specific.
- **The 35 differing functions are not yet marked** so shared NTSC decomp is
  never applied to them.
- Overlay offsets after the frontend are unverified, per above.

## Tooling notes

- Function comparisons must not be keyed on `symbol_addrs`. Its `type:func`
  entries number about 267 and none fall in the game-code region, so a
  symbol-keyed comparison reports "nothing differs" while missing every real
  difference. Use splat's detection instead, as `tools/pal_na_diff.py` does.
- splat derives `bh.ld` and `undefined_syms_auto.txt` from the shared
  `basename`, so they are configured per version (`ld_script_path`,
  `undefined_syms_auto_path`) in `bh.eu.yaml`. Without this, extracting EU
  silently overwrites the US link inputs and breaks the US build.
- `jlabel` in `tools/asm-processor/prelude.inc` emits `.global`. It is the only
  macro that needed it: jump-table targets must resolve across object files once
  core rodata is split into separate segments. NTSC keeps its jump tables in C
  and never hit this.
- asm-processor's minimum function size is **2 instructions** for `-O2` without
  `-framepointer`, not 5. Only one-instruction GLOBAL_ASM blocks are rejected.