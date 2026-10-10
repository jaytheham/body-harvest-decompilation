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

That shift is a single insertion, not cumulative drift. `tools/pal_na_diff.py`
derives the insert point from the ROMs (currently NTSC `0x7E04`) and compares
word by word:

- Before the insert, PAL holds the NTSC bytes at the same offset.
- At or after it, PAL holds them 0x30 later. Every NTSC subsegment boundary at
  or after `0xAD60` shifts by +0x30; all 254 were remapped that way and the
  result builds matching.
- The region just before the insert, roughly NTSC `0x79DC`–`0x7E04`, is where
  the rewrite lives: there PAL differs at both offsets.

RAM-side windows in `bh.eu.yaml` already agree with this shift: the gameplay
overlay window is `0x800702A0` (NTSC `0x80070270`, +0x30) and the level window is
`0x802D4D10` (NTSC `0x802D4CD0`, +0x40).

### The core-to-overlay seam

A clean +0x30 and nothing more. The 8-byte trailing pad that ends core —
`00 00 00 00 10 00 00 36`, where `10 00 00 36` is `bgez $zero` to itself — sits
at NTSC `0x40750` and at PAL `0x40780`. PAL `0x40750` holds real code
(`addiu $t6,$gp,-1`, `addiu $sp,$sp,-0x18`), so PAL core ends at `0x40780`.

The 8 bytes after the pad are identical in both ROMs (`00 00 10 25`,
`lui $at,0x8004`, `lui $a1,0x8005`, `lw $a1,0x2b5c($a1)`); only the data
addresses inside differ. The frontend overlay's first function is the same
*shape* in both versions and differs only in immediates.

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
of the same source. The remaining differences cluster in NTSC `0x7ECC`–`0x9EE8`.

Separately, the differing libultra/libgcc pieces `_timeToSamples`,
`alAudioFrame`, `guPerspectiveF` and `sinf` are **intentional regional
behaviour, not drift**: PAL runs at 50 Hz against NTSC's 60 Hz, so a
sampling-rate constant and the sin/cos argument scale are exactly what one
expects to change, with a different projection constant in `guPerspectiveF`.
These fall in the `SHAPE` bucket (constants differ, code does not), but they
still must not be given a verbatim NTSC C body.

## Open, not verified

- **Overlay offsets after the frontend.** PAL overlay entry code is version
  specific, so no offset mapping recovers overlay boundaries from NTSC: each PAL
  overlay's first bytes match neither NTSC's own offset nor NTSC+0x30. The
  frontend is pinned by the seam above; the others are not. An earlier
  comparison reported the frontend overlay growing 0xB30 with everything after
  it sitting 0xB60 later; **that is not reproduced here** and should not be
  propagated into a config without checking it against both ROMs.
- **Header/boot and per-overlay identity percentages.** A previous comparison
  reported header and boot 99.4% identical and the non-frontend overlays
  91.8–98.8% identical word-for-word. Not recomputed in this pass; the tool
  currently covers core only.
- **`func_80006DDC_79DC` is auto-named on both sides**, so the "largely
  rewritten" attribution rests on byte comparison rather than a name match.

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