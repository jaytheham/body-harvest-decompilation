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
**0x30 bytes (12 words) longer** in PAL. Core lines up with NTSC as follows (the
shift map `tools/pal_us_diff.py` derives; see `docs/pal-na-diff.txt`):

| NTSC range | PAL offset |
|---|---|
| `0x001000`-`0x0079DC` | same offsets |
| `0x0079DC`-`0x007DD8` | `func_80006DDC_79DC`, rewritten: 1020 bytes in NTSC, 1076 in PAL |
| `0x007DD8`-`0x00AD54` | NTSC + 0x38 |
| `0x00AD54`-`0x00AD60` | nop padding at the end of the `core/53F0` unit: 12 bytes in NTSC, 4 in PAL |
| `0x00AD60` onward | NTSC + 0x30 |

Of the 253 core subsegment starts at or after `0xAD90` in `bh.eu.yaml`, 252 are
the `bh.us.yaml` start plus 0x30. The exception is FD80's `.rodata`, which
`bh.eu.yaml` starts at `0x38280`, where the object's rodata begins in the EU
map (vram `0x80037680`); `bh.us.yaml` names `0x38260`, although the NTSC map
places that object's rodata at vram `0x80037650` (ROM `0x38250`).

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

### The core-to-frontend boundary

PAL core ends at `0x40750` (NTSC `0x40720`), and the frontend overlay starts
there, at vram `0x800702A0` (NTSC `0x80070270`). The overlay's first function is
its entry dispatcher, the same instruction sequence in both ROMs
(`addiu $t6,$a0,-1`, `addiu $sp,$sp,-24`, `sltiu $at,$t6,0xe`, ...). Of its
first 14 words only two differ: the jump-table load and the `jal` target
(`jal 0x800789E4` in NTSC, `jal 0x80078BD8` in PAL). The word `10000036` after
the `jal` and its delay slot is `beq $zero,$zero`, a branch to the function's
epilogue, not padding.

`bh.eu.yaml` splits the frontend's code into three `c` subsegments, each
starting at a function prologue, followed by the overlay's data:

| region | size |
|---|---|
| `0x40750` .. `0x4E450` | `0xDD00` |
| `0x4E450` .. `0x52E50` | `0x4A00` |
| `0x52E50` .. `0x61620` | `0xE7D0` |
| `0x61620` onward | data (`bin`) |

All three sizes are multiples of 16, the size IDO rounds each `.text` section
up to, and the EU build is byte-exact with this split.


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

All 23 NA core C files are shared: each is compiled once, from
`src/common/core/`. No core C file is left under `src.us/` or `src.eu/`, and
`bh.us.yaml` and `bh.eu.yaml` name the same 23 files. Seventeen contain no
`#pragma GLOBAL_ASM`, and fifteen of those no per-version text at all
(`12C80.c` needed no `#ifdef`). `loader.c` keeps its ten tables of ROM offsets
and overlay addresses under `VERSION_US` / `VERSION_EU`, because EU moves the
level data and overlays, and `10A20.c` does the same for `D_80031B58_32758`,
which starts as `0` in NA and `1` in EU. The other six files mix matched C with
unmatched functions, which name their assembly once, as in the NA-only source
(next section).
Sharing a file also means pointing its EU `.data`/`.rodata` (and any `.bss`) at
the C, naming its functions with their NA names at EU addresses in
`symbol_addrs.eu.txt`, and pinning the externs it references at their EU
addresses in `undefined_syms.eu.txt`.

### Sharing a file that still has GLOBAL_ASM

A `GLOBAL_ASM` stub cannot cross versions, because its bytes are baked with
that version's relocations. The source still names each unmatched function's
assembly once, in the form the NA-only source had, and the build reads the
assembly of the version it is building:

```c
#ifdef NON_MATCHING
/* C body */
#else
#pragma GLOBAL_ASM("asm/src/common/core/E830/func_8000E53C_F13C.s")
#endif
```

- The pragma names the NA extraction (`asm/`). The EU build passes
  `--asm-root asm=asm.eu` to `tools/asm-processor/asm_processor.py` (in
  `tools/native_build.py` for `--version eu` and in the Makefile for
  `VERSION=eu`), which replaces a leading `asm/` of every pragma path with
  `asm.eu/` before it opens the file. US passes nothing. The option refuses a
  destination directory that does not exist. Both invocations of asm-processor
  per object (the source pass and `--post-process`) must carry it; without it
  the EU link fails with undefined references to NA symbol names.
- The mapping reads the path the way `open()` does: it folds `.`, `..` and
  repeated separators first, so `./asm/x.s`, `asm//x.s` and `asm/../asm/x.s`
  map like `asm/x.s`; a backslash is a separator, and `ASM/` matches `asm/`,
  on a Windows host only (on a case-sensitive host those paths name nothing
  and the open fails; on another case-insensitive filesystem `ASM/` gets the
  refusal below). A path that is not spelled `asm/...` but still resolves to a
  file under `asm/` (an absolute path, or one that leaves the repository and
  comes back) cannot be mapped, so asm-processor stops with an error naming
  the source file, the line and the pragma, instead of reading the NA assembly
  into an EU object. Paths outside `asm/` (`asm.eu/...`, `asmx/...`,
  `src/asm/...`) are left as written. `tests/asm_root_check.sh` covers every
  spelling and runs anywhere, with no extraction or baserom.
- A build that omitted `--asm-root` fails at the link (undefined references) and
  never reaches the SHA1 check, but its objects stay on disk. The Makefile
  therefore makes every GLOBAL_ASM object depend on a stamp of the
  asm-processor command line (`build.eu/.asm_processor.stamp`) and on
  `asm_processor.py`, so putting the flag back, or changing the processor,
  rebuilds them instead of re-linking objects made from the NA assembly.
  `tools/native_build.py` gets the same effect from its configuration
  fingerprint, which digests `native_build.py` and `asm_processor.py`.
- The asm path follows from the yaml name: for a subsegment named
  `../src/common/core/E830`, splat writes the functions to
  `asm*/nonmatchings/../src/common/core/E830/`, that is `asm*/src/common/core/E830/`.
- The function has the NA name in both extractions, because `symbol_addrs.eu.txt`
  names the EU function after NA. splat classifies a function by the pragma's
  file name and ignores its directory (`C_GLOBAL_ASM_IDO_RE`), so one pragma
  classifies the function for both extractions.
- A macro cannot choose the path: asm-processor only recognises the literal
  `#pragma GLOBAL_ASM("...")` form, and IDO silently ignores the unexpanded
  pragma, which leaves the function out of the object. That is why the
  directory is mapped by the build and not by the preprocessor.
- Every pragma names a directory of the version being built, so a build needs
  only its own extraction: US works without `asm.eu/`, EU without `asm/`.
- The blocks that are still version-specific (hand-written jump tables, the
  data tables of `loader.c` and `10A20.c`, and `func_80006DDC_79DC` below) end
  in an `#error`, so a compile that defines neither `VERSION_US` nor
  `VERSION_EU` stops at the preprocessor. IDO only warns on `#error` and still
  writes the object, so `tools/native_build.py` instead fails unless its C flags
  define exactly its own version macro; the GCC `make` build fails on the
  `#error` itself.

Six files hold unmatched functions: `1050.c` (13 functions), `53F0.c` (12),
`AD60.c` (8), `17EE0.c` (3), `1B060.c` (1) and `E830.c` (1), 38 pragmas in all,
each named once. One more pragma sits in `53F0.c`: `func_80006DDC_79DC` is the
one function that really differs in PAL, so its NA C body sits under
`#if defined(VERSION_US)` and its pragma under `#elif defined(VERSION_EU)`; NA
compiles it from C and EU from assembly. That pragma also names `asm/`, which
the EU build maps to `asm.eu/`. In `1050` every function sits at the same
address in both ROMs; the others move by the shift map at the top of
`docs/pal-na-diff.txt`.

`AD60.c` (5 tables) and `53F0.c` (6) also hold hand-written jump tables,
`const u32 jtbl_<vram>_<rom>[]`, whose entries are code addresses. Each has a
`VERSION_US` / `VERSION_EU` / `#error` initialiser: the EU entries are the NA
entries plus 0x30 in `AD60.c` and plus 0x38 in `53F0.c`, the shift of the code
they point into. The one table in `1050.c` holds the same addresses in both
ROMs and has a single initialiser.

### Converting a file, and retiring a block

Two tools, `eu_symbol_pairs.py` and `share_core_file.py`, did the mechanical
part of sharing the last four files. They ran on a core file that existed once
per version (an NA source under `src.us/` and an EU stub under `src.eu/`, each
in a `core` directory). They were removed, with their tests
(`eu_symbol_pairs_check.sh` and `share_core_file_check.sh`), once the last core
file was converted: none is left to run them on, and the tests could only run
on an unconverted file. Their last version is in the history at commit
3b5ea2e2d, in the tools and tests directories. Checking that commit out does not
make them runnable: every core file is already converted there, so both tools
exit with status 1. They need a tree where the file still exists once per
version; at 87f42bd4d (the PR 423 head before these six were shared) six core
files do (`1050`, `17EE0`, `1B060`, `53F0`, `AD60` and `E830`), and the headers
of the two tests name a worktree at that commit. The tools hard-code the
core layout (`src.us/core`, `src.eu/core`, `asm/nonmatchings/core` and the `core/`
entries of both yamls), so using them on an overlay file would mean changing
them. What they did, as the record of the method:

- `eu_symbol_pairs.py <File>` paired the NA and EU functions of the unconverted
  file and printed the symbol-table lines sharing needs: `NAME` (for
  `symbol_addrs.eu.txt`) gives a function or hand-written jump table its NA name
  at its EU address, `PIN` (for `undefined_syms.eu.txt`) pins an extern the
  shared C names at its EU address, `DROP` marks an existing hand-written entry
  that the shared file now supersedes, and `PROBLEM` marks anything it could not
  place. Addresses were read off the instruction words of both versions, not off
  EU's names. A pair whose instruction counts differ was a `PROBLEM`; that is
  how `func_80006DDC_79DC` showed up.
- `share_core_file.py <File> [--jtbl-shift SHIFT] [--pal-only FUNCTION]` did the
  mechanical conversion: `git mv` to `src/common/core/`, `git rm` of the EU
  stub, each pragma renamed to the shared `asm/src/common/core/<File>/` path (no
  `#if` is added), and the `c`, `.data` and `.rodata` entries of both yamls
  pointed at `../src/common/core/<File>` (EU's `data` and `rodata` became
  `.data` and `.rodata`). `--jtbl-shift` wrote the per-version jump table
  initialisers after checking every word against both baseroms; `--pal-only`
  kept one function's NA body under `VERSION_US` and gave `VERSION_EU` its
  pragma (the same `asm/` path, mapped by the EU build). It edited no symbol
  table and did not build.
- After a conversion the `NAME`, `PIN` and `DROP` lines were added to the symbol
  tables by hand (hand-written lines go above the block that
  `tools/eu_collisions_build.py` generates, or the generator deletes them), both
  versions were extracted, the US version was rebuilt, and only then was
  `tools/eu_collisions_build.py` run, which reads the US objects under
  `build/src/common/`; on a stale US tree it binds EU references to the wrong
  address without an error.

When a function in a shared file is later matched, keep the C body once and
delete the rest of its block: the `#ifdef NON_MATCHING` line and everything from
`#else` through `#endif`, exactly as in an NA-only source. The single pragma
served both versions, so it leaves both on the C. Then run
`python tools/verify_build.py --rebuild`: the
C is compiled once and linked at each version's addresses, so every name the
body uses must already stand at its EU address in `symbol_addrs.eu.txt` or
`undefined_syms.eu.txt`; a name that does not either fails to link or binds to
the wrong address (see "Symbol renames (eu_ collisions)" in
`docs/eu-port-notes.md`). The one block that cannot be collapsed this way is
`func_80006DDC_79DC`, whose NA body and EU assembly are different code.

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
has 29 C files of its own under `src.eu/` (libultra and the three gameplay
overlays, none for core), made of `GLOBAL_ASM` stubs and two empty functions;
every core C file in the EU build is a shared file in `src/common/core/` (see
"Which files can share today" above).

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