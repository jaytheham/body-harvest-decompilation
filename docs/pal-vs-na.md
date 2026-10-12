# PAL (EU) versus NA (US) ROM differences

Decomp reference. Everything here is measured against `baserom.us.z64` and
`baserom.eu.z64` in this repository, either by hash, by direct comparison, or by
`tools/pal_us_diff.py`. Anything not verified is listed as open at the end.

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
**0x30 bytes (12 words) longer** in PAL. Core lines up with NTSC as follows
(word by word, ignoring address immediates):

| NTSC range | PAL offset |
|---|---|
| `0x001000`-`0x0079DC` | same offsets |
| `0x0079DC`-`0x007DD8` | `func_80006DDC_79DC`, rewritten; 0x38 bytes longer in PAL |
| `0x007DD8`-`0x00AD58` | NTSC + 0x38 |
| `0x00AD58` onward | NTSC + 0x30 (the end of the `core/53F0` unit carries 8 bytes less nop padding in PAL) |

Every NTSC subsegment boundary at or after `0xAD60` shifts by +0x30; all 254
were remapped that way and the result builds matching.

RAM-side windows in `bh.eu.yaml` already agree with this shift: the gameplay
overlay window is `0x800702A0` (NTSC `0x80070270`, +0x30) and the level window is
`0x802D4D10` (NTSC `0x802D4CD0`, +0x40).

### Overlay offsets

Both ROMs carry an **overlay start table** with ten entries, NTSC at ROM
`0x032818` and PAL at `0x032848`: the five level overlays and their data
segments. NTSC: `0x18D7E0, 0x1ED9E0, 0x254410, 0x2B7100, 0x318E20` and
`0x196F70, 0x1F9CC0, 0x260570, 0x2C54C0, 0x32BD80`; PAL: `0x18E340, 0x1EE540,
0x254F70, 0x2B7C60, 0x319980` and `0x197AD0, 0x1FA820, 0x2610D0, 0x2C6020,
0x32C8E0`. Each table matches its version's yaml, and every PAL entry is the
NTSC entry plus 0xB60.

The 0xB60 is core's 0x30 plus 0xB30 of frontend growth: the PAL frontend runs
from `0x40750` to `0x7FD80` (0x3F630 bytes) against NTSC `0x40720` to `0x7F220`
(0x3EB00 bytes). Everything from the outside overlay on sits 0xB60 later.

The gameplay overlays are not in that table, but their starts are confirmed by
their code: each PAL overlay begins with the same instructions as its NTSC
counterpart (16 of the first 16 words have the same opcode; 13 or 14 are
identical), at NTSC + 0x30 for `frontend` (`0x40750`) and NTSC + 0xB60 for
`outside` (`0x7FD80`) and `inside` (`0x158E90`).

### The core-to-overlay seam

PAL core ends at `0x40780`, not `0x40750`. The 8-byte trailing pad that ends
core - `00 00 00 00 10 00 00 36`, where `10 00 00 36` is `bgez $zero` to itself -
sits at NTSC `0x40750` and at PAL `0x40780`, and PAL `0x40750` holds real code
(`addiu $t6,$gp,-1`, `addiu $sp,$sp,-0x18`).

The 8 bytes after the pad are identical in both ROMs (`00 00 10 25`,
`lui $at,0x8004`, `lui $a1,0x8005`, `lw $a1,0x2b5c($a1)`); only the data
addresses inside differ. So the frontend overlay's first function is the same
*shape* in both versions and differs only in immediates.

**Applied.** Core now ends at `0x40788` with the pad emitted as its own
subsegment, and the frontend starts at `0x40788`:

```yaml
- [0x40780, rodata, core/tail_pad]          # the 8-byte pad, owned by core
# overlay_gameplay_frontend starts at 0x40788
```

Attributing it correctly needs `align: 8` / `subalign: 8` on both `core` and
`overlay_gameplay_frontend`, because splat emits `__romPos = ALIGN(__romPos,
align)` at each segment's end using that segment's own align value. Setting it
on only one leaves the inter-segment boundary forced to 16 and the linker
inserts 8 bytes of fill.

The remainder is IDO's 16-byte `.text` padding. IDO rounds every `.text` section
up to a multiple of 16. The frontend's code runs from its entry dispatcher at
`0x40750` to the data at `0x61620`, a span of `0x20ED0`, which is 0 mod 16 (the
built ELF's frontend `.text` runs from `0x800702A0` to `0x80091170`). An earlier
version of this section measured from `0x40788` and gave `0x20E98`.

The fix is to split the frontend's code into regions whose sizes are each a
multiple of 16. Starting at `0x40788` (itself 8 mod 16), that means every
boundary must also be 8 mod 16. `0x4E448` and `0x51CC8` are both genuine function
starts that qualify:

| region | span | size | 16-aligned |
|---|---|---|---|
| `0x40788` .. `0x4E448` | code and its own trailing nops | `0xDCC0` | yes |
| `0x4E448` .. `0x51CC8` | | `0x3880` | yes |
| `0x51CC8` .. `0x61628` | | `0xF960` | yes |

`.data` needs no such care: the trailing `bin` subsegment is a raw blob, emitted
verbatim at whatever alignment it lands on.


## Which functions differ

`python tools/pal_us_diff.py` enumerates the NTSC core functions with splat and
compares each against PAL at the shift that applies to it, deriving the shift
function by function (the map in the Layout section). Result over the 682 NTSC
core functions (185624 bytes, alignment padding excluded), as written to
`docs/pal-na-diff.txt`:

| class | functions | share of functions | share of core code bytes |
|---|---|---|---|
| `EXACT` byte identical | 139 | 20.4% | 7.32% |
| `SHAPE` same opcode everywhere, different immediates | 542 | 79.5% | 92.13% |
| `DIFF` different code | 1 | 0.1% | 0.55% |

**99.45% of core code bytes are reusable from NTSC.** The `SHAPE` bucket is
dominated by ordinary address relocation, not by logic changes.

The one `DIFF` function is `func_80006DDC_79DC`, at `0x79DC` in both ROMs. It is
1020 bytes in NTSC and 1076 in PAL, and 236 of its 255 NTSC words differ at the
same offset, starting with its first instruction (the stack frame size), so it
is different code and not a recompilation of the same source. Its extra 0x38
bytes are why the code from NTSC `0x7DD8` to `0xAD54` sits at NTSC + 0x38.

An earlier version of this report compared functions only at +0x0 and +0x30 and
so listed 35 `DIFF` functions. The other 34 are the same code at NTSC + 0x38;
for example 791 of the 792 words of `func_800092B8_9EB8` are identical there.

Not re-verified in the 2026-10 review: the differing libultra/libgcc pieces
`_timeToSamples`, `alAudioFrame`, `guPerspectiveF` and `sinf` are **intentional
regional behaviour, not drift**: PAL runs at 50 Hz against NTSC's 60 Hz, so a
sampling-rate constant and the sin/cos argument scale are exactly what one
expects to change, with a different projection constant in `guPerspectiveF`.
These fall in the `SHAPE` bucket (constants differ, code does not), but they
still must not be given a verbatim NTSC C body.

## Sharing C source between the two trees

The reason to bother: for a `SHAPE` function the opcodes match and only the
immediates differ, which is ordinary relocation, and relocation lives in
`bh.<version>.ld` rather than in the C. So one C body plus each version's own
linker should produce version-correct output for both. Only
`func_80006DDC_79DC` genuinely needs a PAL-specific body.

### The mechanism works

`splat` resolves a `c` subsegment as `src_path / name`, where `name` is the
third yaml element verbatim, so a traversing name reaches across trees. It is
used throughout `bh.eu.yaml`, for example:

```yaml
- [0x53D0, c, ../src/common/core/53D0]     # resolves to src/common/core/53D0.c
```

The extract and compile both resolve the file correctly. Nothing in splat needs
patching for this, though at scale a per-subsegment source root in `out_path()`
would be tidier than `..` paths in the config.

### Symbol declarations, not the C

Sharing a file needs the EU symbol tables to carry every symbol a shared NA body
references. `10A20.c` first failed for EU on `__osSiAccessQueue`,
`siacs_bss_0000` and `D_80068038`, which only the NA symbol files declared;
the `eu_` pins and base block described in `docs/eu-port-notes.md` supply them
now, and the file is shared.

### Which files can share today

Of the 23 NA core C files, 17 contained no `#pragma GLOBAL_ASM`. 15 of them
are shared from `src/common/core/`; `12C80.c` and `loader.c` are not, and EU
has its own stub files for them. The other 6 still carry stubs. A stub cannot
cross versions, because
`GLOBAL_ASM` bytes are baked with that version's relocations, so a shared file
is only safe with zero asm dependencies.

`core/1050` is the representative blocker: its 58 NA functions include 13 that
are still `NON_MATCHING` with a `GLOBAL_ASM` fallback, so the file cannot be
shared; EU's `src.eu/core/1050.c` is 58 `GLOBAL_ASM` stubs, one per function.

### Generating the non-shareable files

For a file with stubs, generate the EU copy rather than sharing it:

- for each function in the range, if NA has a C body, use it verbatim
- otherwise emit a `GLOBAL_ASM` pragma pointing at that function's EU asm

The EU asm file name is not NA's name: it embeds EU's address, so a function
after NTSC `0x79DC` is named for its EU offset (NTSC + 0x38 up to `0xAD54`,
NTSC + 0x30 from `0xAD60`). `tools/pal_us_diff.py` derives this NA-to-EU shift
map. The generation has to be a tool rather than hand-copied, or the trees
drift as NA decompiles more.

In `1050` every function sits at the same address in both ROMs, so the EU stub
names equal NA's except where NA has given a function a real name (12 of 58).

## Open, not verified

- **Header/boot and per-overlay identity percentages.** A previous comparison
  reported header and boot 99.4% identical and the non-frontend overlays
  91.8-98.8% identical word-for-word. Not recomputed in this pass; the tool
  covers core only.
- **`func_80006DDC_79DC` is auto-named on both sides**, so the "largely
  rewritten" attribution rests on byte comparison rather than a name match.

## Naming PAL functions

PAL carries the same three debug path strings as NTSC (`src/buildings.c`,
`src/loader.c`, `src/trigger.c`), so file-level naming comes across the same way.
Neither ROM contains a function-name table, so per-function names are not
recoverable from debug info and must come from NTSC by address mapping or from
manual work.

The first block of `symbol_addrs.eu.txt` maps the 267 named `type:func` entries of
`symbol_addrs.us.txt` onto PAL addresses; all 267 land on a function boundary
splat found in PAL. They are all libultra functions (`0x8001ABE0` to
`0x8002DE00` in NTSC), so the NTSC symbol table names none of the game code:
game functions keep their `func_<vram>_<rom>` names, mapped by address.

## Current state of the EU decomp tree

The EU ROM builds and matches byte-for-byte on Windows:

```
build.eu/bh.eu.z64: OK   sha1 67750E2E7AB46FEDF65A271AB7F4C7AAD92AE355
```

Core is split into per-file `c`/`data`/`rodata`/`asm` subsegments. The EU tree
has 37 C files of its own under `src.eu/`, all of them `GLOBAL_ASM` stubs; the
decompiled C in the EU build comes from the shared files in `src/common/core/`
(see "Which files can share today" above).

## Tooling notes

- Function comparisons must not be keyed on `symbol_addrs`. Its `type:func`
  entries number about 267 and none fall in the game-code region, so a
  symbol-keyed comparison reports "nothing differs" while missing every real
  difference. Use splat's detection instead, as `tools/pal_us_diff.py` does.
- splat derives `bh.ld` and `undefined_syms_auto.txt` from the shared
  `basename`, so they are configured per version (`ld_script_path`,
  `undefined_syms_auto_path`) in `bh.eu.yaml`. Without this, extracting EU
  silently overwrites the US link inputs and breaks the US build.
- `jlabel` in `tools/asm-processor/prelude.inc` emits `.global` only when the
  assembler defines `GLOBAL_JLABELS`, which only the EU build does
  (`--defsym GLOBAL_JLABELS=1` in `tools/native_build.py` and the Makefile).
  EU needs it because its jump tables sit in separate rodata objects, so their
  targets must resolve across object files. NTSC keeps its jump tables in C, so
  its jump-table labels stay local and add no FUNC symbols to `build/bh.us.elf`.
- asm-processor's minimum function size is **2 instructions** for `-O2` without
  `-framepointer`, not 5. Only one-instruction GLOBAL_ASM blocks are rejected.