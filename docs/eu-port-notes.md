# EU (PAL) port -- working notes

Objective: build a byte-exact EU ROM (`baserom.eu.z64`, size `0xC00000`, SHA1
`67750E2E7AB46FEDF65A271AB7F4C7AAD92AE355`), reusing the NA source tree: the C
under `src.us/core/` is shared between regions (the EU build compiles it with
`-DVERSION_EU`), and the rest of `src.us/` is NA-only. EU-only C stubs live under
`src.eu/` and EU assembly and data under `asm.eu/`. The maintainer's stated end
state is one source tree whose few version differences are switched by `#ifdef`;
`src.us` is expected to be renamed `src` later (that has not happened) and is
treated as that tree until then. The port is done when `build.eu/bh.eu.z64`
reproduces `baserom.eu.z64` byte for byte, without regressing the NA build.

## Current state

The EU build links cleanly, produces a ROM of exactly `0xC00000` bytes, and is now
**byte-exact**: `build.eu/bh.eu.z64` == `baserom.eu.z64` (SHA1
`67750E2E7AB46FEDF65A271AB7F4C7AAD92AE355`). NA remains byte-exact:
`build/bh.us.z64` == `baserom.us.z64` (SHA1
`BBB6666F5014A473747EE4145F036D9FB25D7348`). The final 381 differing bytes
(first at ROM `0xFB53`), all address operands from the eu_ collision
workstream, are closed; see the log entry below.

Tools in play:

- `tools/eu_collisions_build.py` -- pipeline driver; runs
  clean -> extract -> write -> extract -> build -> verify.
- `tools/eu_layout_audit.py` -- per-subsegment size/alignment audit that
  localises size errors by comparing built objects against the target layout.
- `tools/gen_eu_symbol_collisions.py` -- emits `eu_` symbol pins (see below).
- `tools/asm-processor/asm_processor.py --asm-root
  asm/nonmatchings/core=asm.eu/src.us/core` -- passed by the EU build only, so
  that the one version-neutral `GLOBAL_ASM` pragma of a shared file reads the EU
  extraction; `tests/asm_root_check.sh` checks it. See
  "Sharing a file that still has GLOBAL_ASM" in `docs/pal-vs-na.md`.
- `tools/progress.py --version eu` -- counts the PAL build (`src.eu` plus the
  shared `src.us/core`, each file read as the EU build compiles it) into
  `docs/progress.eu.json`, which `docs/eu.html` shows. The default run is the
  NTSC count behind `docs/index.html` and is unchanged.
  `tests/progress_eu_check.sh` checks both.

Two tools, `eu_symbol_pairs.py` and `share_core_file.py`, did the mechanical
part of converting the per-version core files into shared ones. They were
removed once the last core file was converted and are in the history at commit
3b5ea2e2d; see "Converting a file, and retiring a block" in `docs/pal-vs-na.md`.

## Symbol renames (eu_ collisions)

Shared C in `src.us/core/` keeps NA symbol names (`D_<vram>_<rom>`). EU
auto-labels collide with those names whenever the same name maps to a different
address in the EU image, so a reference silently binds to the wrong address.

Fix: emit `eu_<name> = 0x<vram>;` pins. Splat renames **by address**, and reads
renames **only** from `symbol_addrs.eu.txt` (`bh.eu.yaml` -> `symbol_addrs_path`;
rename lookup at `tools/splat/src/splat/util/options.py:400`, applied in
`symbols.py:310` and `symbols.py:477`). `undefined_syms.eu.txt` is only a linker
`-T` input (the `ldflags` list in `tools/native_build.py`) and can never rename
anything.

**BUG found.** The pins were being written to `undefined_syms.eu.txt`, while
`symbol_addrs.eu.txt` had 0 pins, so the renames had no effect on the ROM.

Root cause: `strip_eu_block()` only truncates at a block-header marker, but the
marker is written only to `symbol_addrs.eu.txt`; `undefined_syms.eu.txt`
therefore accumulated triplicated stale pins that nothing ever stripped. Two
syntax constraints also apply and differ per target: splat requires one `;` per
line and accepts only `//` comments; `ld -T` accepts only `/* */`.

## Core layout notes

- The EU core tail, ROM `0x3F490`-`0x40750`, is byte-identical to NA
  `0x3F460`-`0x40720` (0 of 4800 bytes differ), so the shared
  `src.us/core/rsp_data.c` uses the same `[344]` array for both versions.
- E830's rodata and FD80's rodata are byte-identical between the versions
  (EU `0x38250`-`0x383C0` against NA `0x38220`-`0x38390`). E830's rodata is
  `0x30` bytes in both maps, and FD80's starts at EU `0x38280` (NA `0x38250`) with
  the three `const f32` arrays, so the shared `FD80.c` emits them for both
  versions. The EU asm's labels for those floats are aliased to the shared
  names in `undefined_syms.eu.txt` (`D_80037680_38280 = D_80037650_38250;` and
  the two that follow it).
- The frontend overlay starts at EU `0x40750`, vram `0x800702A0`; see
  `docs/pal-vs-na.md`.
- An earlier version of the port started FD80's rodata at `0x38290` and the
  frontend at `0x40788`, and compensated with two workarounds (the FD80 floats
  compiled for NA only, and six extra `u64` words appended to `rsp_data.c` for
  EU, which were the frontend dispatcher's first instructions). Both boundaries
  are corrected and both workarounds removed; see the log.

`VERSION_US`/`VERSION_EU` come from the `-DVERSION_` flag in
`tools/native_build.py` and from the Makefile.

## Verification

NA must remain byte-exact: `build/bh.us.z64` == `baserom.us.z64`, SHA1
`BBB6666F5014A473747EE4145F036D9FB25D7348`. EU byte-exact target:
`build.eu/bh.eu.z64` == `baserom.eu.z64`. Verify both with
`python tools/verify_build.py --rebuild` (Windows native build). To localise an
EU mismatch, `python tools/eu_layout_audit.py` finds, per subsegment, the shift
at which the built bytes best match the original, and `python
tools/eu_rom_diff.py` lists the differing bytes.

## Long-term idea: a shifted build

An idea, not a plan: no promises and no dates. It is written down with the
measurements behind it so they are not lost. Measured on 2026-10-12 unless a
file is named.

- The NTSC to PAL shift is piecewise constant in core: 0 up to
  `func_80006DDC_79DC`, then +0x38, then +0x30 (`docs/pal-vs-na.md`,
  `tools/pal_us_diff.py`).
- Core has 682 functions: 139 byte-identical, 542 with the same opcode in every
  word and different immediates (mostly relocations; relocation-only was not
  checked for these) and 1 genuinely different (`func_80006DDC_79DC`). Source:
  `tools/pal_us_diff.py` (its `EXACT`, `SHAPE` and `DIFF` classes), as written to
  `docs/pal-na-diff.txt` and summarised in `docs/pal-vs-na.md`.
- All 38 unmatched shared core functions have the same instruction stream in the
  NTSC and EU `.s` files, compared with symbol names, labels, `%hi`/`%lo` halves
  and `jal`/`j` targets masked; only label and symbol names differ.
- At function level, 2216 of the 2354 overlay functions (94.14 percent) are
  identical apart from relocations, and 2346 (99.66 percent) if 130 weaker
  matches are counted too. The 94.14 percent depends on the rule used to
  resolve immediates (see the end of this item); read it as the result of one
  rule, not as a fixed property of the ROMs. The figures came from a scratch
  script that is not committed. It compared each NTSC overlay function with its
  EU counterpart (the gameplay overlays by aligning the two function lists in
  order on opcode-and-register templates, the level overlays by applying the
  NTSC function boundaries to the EU ROM with a per-function shift). The 2216
  are 108 byte-identical functions and 2108 where only jump targets, `lui`
  immediates and the low half of a `lui` pair differed, with branch offsets
  equal and every resolved address in RAM. The 130 have the same opcode and
  registers in every word but failed that test, because an immediate differs
  and could not be resolved to a RAM address: either no `lui` precedes it in
  the function, or the low half of a `lui` pair does not land in RAM. The
  scratch script counted 124 functions of the first kind (183 words) and 9 of
  the second (13 words), 3 of them in both. That division depends on how the
  script tracks `lui` pairs: a second script, written independently, found the
  same 130 but divided them slightly differently. A third, independent
  measurement (2026-10-13) used its own rules for resolving immediates. It
  found 108 byte-identical functions, and 2348 of the 2354 overlay functions
  with an EU counterpart that has the same opcode and registers in every word
  (the 2216 and the 130 above, and 2 of the 8 not counted, described below),
  with 6 having none. It split the 2348 into strictly relocation-only and
  weaker matches as 2333 and 15 under a lenient `lui`-tracking rule, and as
  2188 and 160 under a dataflow rule; neither reproduces 2216 and 130. So the
  split, and with it the 94.14 percent, depends on the rule used to resolve
  immediates. What held in every measurement is the 2348 with the same opcode
  and registers, the 108 byte-identical and the 6 without a counterpart. The
  130 were counted because the 16-bit difference of each of those immediates
  also occurs among the verified relocations, so they are probably relocations
  too, but that is not verified. The other 8 functions are not counted: 3 have
  no counterpart with the same opcodes and registers but a similar one (at
  least 85 percent of words), 3 have no similar counterpart, and 2 have the
  same opcodes and registers with an immediate difference that is not among
  the verified relocations.

The idea: derive the EU symbols and addresses from the NTSC ones through the
shift map instead of pinning each symbol, and share the overlays the way core
was shared. A function would then be decompiled once, and EU support would be
the shift map plus a handful of overrides.

Why not now:

- `asm/` and `asm.eu/` are generated and untracked, so the duplication costs
  nothing in the repository.
- Sharing one asm copy would make an EU build depend on the US ROM, and it would
  need a complete NTSC-to-EU symbol table. Only the names the C references are
  pinned today.
- The EU extract is still needed for per-version data, libultra and the
  genuinely different functions.
- The overlays' yaml C-file splits would first have to be aligned between the
  versions: frontend has 2 `c` splits in `bh.us.yaml` and 3 in `bh.eu.yaml`,
  outside 27 and 20. The EU level overlays have one `c` split each (stubs, as
  the EU gameplay overlays have) and a `bin` tail, where `bh.us.yaml` has `c`,
  `.data` and `.rodata` splits. Per-version data would need handling as well.

Not yet measured: the layout of data and rodata, and whether the C that matched
NTSC recompiles identically for the EU shape.

## Log

- 2026-10-11: Created `tools/eu_layout_audit.py`; diagnosed the `eu_` rename
  pipeline bug (`strip_eu_block()` marker written only to
  `symbol_addrs.eu.txt`, pins leaking into `undefined_syms.eu.txt`); localised
  the `0x20` drift to FD80 (`+0x10`) and rsp_data (`-0x30`); created this notes
  file.
- 2026-10-11: Fixed the `eu_` rename pipeline tool (symmetric idempotent clean +
  correct per-file block headers). Fixed the size drift: FD80 consts guarded by
  `#ifdef VERSION_US`, rsp_data gains 6 `u64` under `#ifdef VERSION_EU`. EU now
  builds to exactly `0xC00000`; NA still byte-exact. Remaining: 381 differing
  bytes in `core` (`0xFB53`-`0x32788`), all address operands from the eu_
  symbol-collision workstream.
- 2026-10-11: **EU byte-exact.** Closed the final 381 differing bytes (all core,
  first at ROM `0xFB53`). Symptom: address operands (`lui`+`addiu`/`ori`/`lw`/
  `sw`) and a pointer table whose low 16 bits differed by `-0x30` -- the shared C
  bound NA addresses while the EU ROM uses the `+0x30` EU addresses; plus one
  data word at ROM `0x32788`. Root cause: `undefined_syms.eu.txt`'s
  hand-maintained "base shared-symbols block" pinned a set of shared symbols to
  their NA addresses even though the EU image moved them (typically `+0x30`);
  the fixes corrected those pins to the EU addresses and added the missing
  interior pins. `symbol_addrs.eu.txt` gained a small `NA->EU func rename` block
  plus extra `eu_` pins. `tools/gen_eu_symbol_collisions.py` gained
  `collect_eu_base_pins()`: it now also tags (as `eu_`) shared-C names that the C
  merely *references* but which the EU symbol table relocated away from the
  address encoded in their NA name -- because an EU asm label of the same name
  would otherwise shadow the relocated placement and bind the C to the wrong
  address. One EU function sits at the NA address of a shared function
  (`0x80013818`). That was first worked around with an `EU_func_80013818_14418` rename (the deliberate `EU_`, not `eu_`,
  prefix kept the rename-generator's `^eu_` stripper away from it). The workaround is gone: EU `0x80013818` is NA's
  `n_alSynFreeFX`, which `12C80.c` now defines once in `src.us/core/`, and `symbol_addrs.eu.txt` names it at its EU address.
  Also note the gotcha: splat parses the `GLOBAL_ASM` pragma filename, so the C
  stub name must equal the splat symbol name or the function is misclassified as
  matched. `src.us/core/10A20.c`: `D_80031B58_32758` has a region-specific
  initial value (`1` in EU, `0` in NA) via `#ifdef VERSION_EU`.
- 2026-10-12: The review of pull request 423 found the frontend start, the FD80
  rodata boundary and the DIFF classification wrong. The frontend now starts at
  `0x40750` and FD80's rodata at `0x38280`; the `#ifdef VERSION_US` around the
  FD80 floats, the `[350]` `rsp_data.c` array and its six EU words are gone;
  `docs/pal-na-diff.txt` is regenerated with the per-function shift (one DIFF
  function).
- 2026-10-12: `1B060.c` and `E830.c` are shared too (19 of 23 core files). Each
  unmatched function keeps the one `GLOBAL_ASM` pragma it had in the NA-only
  source, `asm/nonmatchings/core/<File>/<name>.s`; the EU build passes
  `--asm-root asm/nonmatchings/core=asm.eu/src.us/core` to asm-processor, which
  reads the EU extraction in its place.
  See "Sharing a file that still has GLOBAL_ASM" in `docs/pal-vs-na.md`.
  asm-processor opens every pragma's file before the preprocessor runs, which
  is why the directory is mapped by the build and not by an `#if` in the source;
  each build then needs only its own extraction.
- 2026-10-12: The last four mixed files, `17EE0.c`, `AD60.c`, `1050.c` and
  `53F0.c`, are shared: all 23 core C files exist once, in `src.us/core/`, and
  the EU build compiles them from there; no core C file is left under `src.eu/`.
  Six files hold unmatched functions (38 pragmas, each named once). `AD60.c`
  and `53F0.c` hold hand-written jump tables of NA code addresses, so each table
  has a `VERSION_US` / `VERSION_EU` initialiser (EU is NA + 0x30 in `AD60.c`,
  + 0x38 in `53F0.c`). `53F0.c` also holds `func_80006DDC_79DC`, the one
  function that really differs in PAL: the NA C under `VERSION_US`, the EU
  assembly under `VERSION_EU` (a 39th pragma, also named `asm/...`). The
  pairing and the conversion were done by two tools, `eu_symbol_pairs.py` and
  `share_core_file.py` (removed afterwards, see the last entry), and
  `tools/progress.py` counts a shared file's pragmas once.
- 2026-10-12: The review of the version-neutral pragma found that `--asm-root`
  matched only the literal prefix of the source directory, so `./asm/...`, a
  Windows backslash or case spelling, an absolute path or `asm/../asm/...` would
  have read the NA extraction in an EU build (none exists; the link or the SHA1
  check would have stopped the result). asm-processor now canonicalises the path
  before mapping it and refuses, naming the file, line and pragma, a path that
  still resolves under the source directory without being spelled that way
  (`tests/asm_root_check.sh`). The Makefile
  now rebuilds the GLOBAL_ASM objects when the asm-processor command line or
  `asm_processor.py` changes. See "Sharing a file that still has GLOBAL_ASM" in
  `docs/pal-vs-na.md`.
- 2026-10-12: A separate EU progress page, `docs/eu.html`, fed by
  `docs/progress.eu.json` from `tools/progress.py --version eu`. The tool reads
  `src.eu` and `src.us/core` as the EU build compiles them (`VERSION_US`,
  `VERSION_EU` and `NON_MATCHING` conditions evaluated, `NON_MATCHING` off).
  Result, the same at `32aaef7ad` and with the version-neutral pragma: 318 of
  2257 functions matched (14.09 percent). Core is 316 of 355 (38
  `NON_MATCHING` in both versions, and `func_80006DDC_79DC`, which is C in NTSC
  and assembly in PAL); the three gameplay overlays are 2 of 1898 (two empty
  functions, the rest `GLOBAL_ASM` stubs because the overlays are not shared
  with NTSC); `src.eu/libultra` adds 4 stubs. The level overlays and most of
  libultra have no tracked EU source and are not in the totals. The core
  figures are the NTSC page's, so the two pages must not be summed. The NTSC
  count and `docs/index.html` are unchanged.
- 2026-10-12: Removed `eu_symbol_pairs.py` and `share_core_file.py` with their
  tests, `eu_symbol_pairs_check.sh` and `share_core_file_check.sh`. Every core
  file is converted, so the tools have nothing left to run on and the tests, which
  need an unconverted file, fail at the head. They are in the history at commit
  3b5ea2e2d.
- 2026-10-13: The shared core went back to `src.us/core`, and the US headers and `bh.us.yaml` to their upstream
  state, which is the maintainer's one-tree end state (see "Sharing a file that still has GLOBAL_ASM" in
  `docs/pal-vs-na.md`). Master was merged in. The functions it matched in `1050.c` and `53F0.c` now compile for
  EU, which needed EU addresses for the names they use, four names that splat's auto file had bound at the NA
  address (pinned so `tools/eu_collisions_build.py` tags the EU labels that shadow them), and the boot assembly
  that master folded into `1050.c` (`bh.eu.yaml` has the same single `c` segment at 0x1000). Both ROMs verify
  byte-exact with `tools/verify_build.py`.
- 2026-10-13: The five EU level overlays are `c` stub splits with a `bin` tail, as the EU gameplay overlays are,
  where they were one `bin` blob each: 64, 101, 74, 94 and 122 stub functions (greece, java, america, siberia,
  comet), laid out as the NTSC levels shifted by 0xB60 in the ROM. The build stays byte-exact and the EU ELF has
  function symbols in every level section. The progress page counts them: 334 of 2714 functions matched
  (12.31 percent). The share falls from 14.75 percent because 456 level stubs entered the total; nothing
  matched became less matched.
- 2026-10-13: `src.us/overlay_gameplay/frontend/52690.c`, the second half of the frontend overlay, is shared with PAL
  as the core files are. Its 104 functions (69 plain C, 35 `NON_MATCHING` with a `GLOBAL_ASM` fallback) pair one to
  one with the 104 PAL stubs of `52E50`, with the same opcode in every instruction. Inside this overlay the PAL
  shift is not one number: the PAL code before this file is 0x790 bytes longer, so the file's code is 0x7C0 after
  the NTSC code, its read-only data 0xB60 after (PAL 0x7FC50 against NTSC 0x7F0F0), and what it reads from core
  0x30 after. `bh.eu.yaml` names the file `../src.us/overlay_gameplay/frontend/52690` with a `.rodata` entry at
  0x7FC50 and the stub is gone; the Makefile and `native_build.py` pass a second `--asm-root`, mapping that
  directory's `asm/nonmatchings` pragmas to `asm.eu/src.us/overlay_gameplay/frontend`, and the Makefile lists the
  file in `SHARED_C_FILES` because only this one file of its directory is shared. The three jump tables carry NTSC
  and PAL values (PAL = NTSC + 0x7C0, checked against both ROMs); the strings and doubles are the same in both ROMs.
  `symbol_addrs.eu.txt` names the 104 functions at their PAL addresses, qualified with `rom:` because the overlays
  share one vram range (without it splat keeps the PAL auto-names). `undefined_syms.eu.txt` gives 107 of the 162
  undefined NTSC names the object uses their PAL addresses (the other 55 were already provided), read from the
  operands of the paired instructions, and pins the 15 PAL labels of the file's own read-only data and one
  function label that the assembly of its `GLOBAL_ASM` functions still names. Both ROMs verify byte-exact with
  `tools/verify_build.py`. The progress page counts the file: 404 of 2715 functions matched (14.88 percent), the
  frontend overlay at 71 of 218. The first half of the overlay (`40720.c`) is not shared: its PAL read-only data
  differs from the NTSC data from offset 0xB40 on (PAL-only strings), and the PAL stubs hold 112 functions against
  113.
- 2026-10-13: `tools/overlay_pairs.py` (test: `tests/overlay_pairs_check.sh`) pairs the NTSC functions of an overlay C
  file with the PAL stubs that cover it, compares them instruction by instruction and prints the NAME lines for
  `symbol_addrs.eu.txt` and the PIN lines for `undefined_syms.eu.txt` that sharing the file needs. It reads the
  extracted assembly of both versions and the two ELFs, before the file is shared. `--align auto` pairs by opcode
  sequence when the PAL file has a function more or less. It is how the lines for `52690.c` were derived.
- 2026-10-13: `40720.c` (the first half of the frontend overlay) is not shared yet. Measured with the tool and
  `--align auto`: of the 113 NTSC functions, 106 pair with identical shape and constants and 7 do not (instruction
  counts 2394 against 2398, 495 against 494, 162 against 170, 131 against 126, 496 against 871, one constant
  0x18 against 0x74, and one alignment artefact of 2 against 103); 4 of the 7 are matched C, so each would need a
  PAL-only definition. Its PAL read-only data also differs from the NTSC data from offset 0xB40 on (PAL-only
  strings), and the PAL stubs hold 112 functions in two files where NTSC has 113 in one. That is at most about 73
  more matched functions for PAL. The level overlays pair one to one with their stubs and hold 362 matched
  functions, so they come first.
- 2026-10-13: The five level overlays are shared with PAL (on branch `pal-share-overlays`, not in pull request 423): greece (64
  functions), java (103), america (74), siberia (95) and comet (122), 362 matched C functions and 94 `NON_MATCHING` ones with
  their `GLOBAL_ASM` fallback. Each pairs one to one with its PAL stub with no differing function. The PAL level is 0xB60 after
  the NTSC one in the ROM and 0x40 after in memory; its data and read-only data differ from the NTSC data only in pointer words,
  +0x40 into the level and +0x30 into the first part of the gameplay overlays. The C writes 587 of those words as numbers, as a
  word, as two halfwords or as two bytes and a halfword, and `include/version_shift.h` gives each version its value
  (`LEVEL_PTR` and friends; wrapped by exact value, because 7 of the 358 distinct address-like numbers in the level files are
  constants). Both ROMs verify byte-exact; the PAL progress page reads 767 of 2717 functions matched (28.23 percent).
- 2026-10-13: The list of shared overlay files is `shared_overlay_files.txt`, the one list that the Makefile,
  `tools/native_build.py` and the tools read (it was four copies, and a copy that was missing from the Makefile broke
  `make VERSION=eu` while the native build passed). `tests/shared_files_check.sh` checks it against `bh.eu.yaml`.
  `tools/gen_eu_symbol_collisions.py` now reads the objects of every shared file, `tools/function_inventory.py` the pragmas
  of every shared file, and `tools/overlay_pairs.py` reports a CLASH when a pin would override another shared file's
  function (the america level calls the outside overlay's `func_8008EB20_5EFD0`, which the frontend file defines under the
  same name at another PAL address). `docs/pal-vs-na.md`, "Sharing an overlay file", has the steps and the pitfalls.
- 2026-10-13: The inside gameplay overlay is shared with PAL as well (branch `pal-share-overlays`): its five C files, 235 functions,
  160 of them matched C, pair one to one with the PAL stubs, which already had the same five splits. The overlay is the same size
  in both ROMs and uniformly 0xB60 after in the ROM and 0x30 after in memory, so `bh.eu.yaml` mirrors the NTSC segment (15
  entries) shifted, replacing the five stubs and the single `bin` tail. Its 285 differing data words are all +0x30, which
  `OVERLAY_PTR` covers; a fourth way of writing a pointer turned up (four bytes in a `u8` array, 12 of them). NAME lines are
  written only for the 75 functions that are `GLOBAL_ASM` on the NTSC side: a name at the PAL address of a matched function
  made splat misfile an unrelated outside-overlay stub function that sits at the same address.
  The PAL progress page reads 929 of 2720 functions matched (34.15 percent).
- 2026-10-13: Twelve libultra functions are named in `symbol_addrs.eu.txt` at their PAL addresses (`osAiGetLength`,
  `osMotorStop`, `osMotorStart`, `osMotorInit`, `osEepromLongWrite`, `osEepromLongRead`, `osPiGetStatus`, `__osContRamWrite`,
  `__osContRamRead`, `__osPiGetAccess`, `__osPiRelAccess`, `__osPfsGetStatus`). Each is the NTSC function 0x30 further on in
  memory, equal to it under the relocation mask. They were `func_<vram>_<rom>` before, so a recompiler that leaves the NTSC
  functions of these names to its runtime compiled the PAL copies as game code (a raw read of `AI_LEN_REG` then ran off the
  guest region). The names change no matched-function count; the PAL build is byte-exact with them.
- 2026-10-14: The outside gameplay overlay is shared with PAL (branch `pal-share-overlays`): 27 C files and four data-only C files
  (`constData`, `constData2`, `mutableData`, `101840_rodata`, which hold the overlay's data and read-only data and have no `c`
  entry in the yaml; they are in `shared_overlay_files.txt` as well, and `tests/shared_files_check.sh` accepts a listed file with
  only `.data` or `.rodata` entries). 1446 PAL stubs pair with the 1445 NTSC functions. Three things were new. A call to a
  function that NTSC names and PAL has as `func_<address>` (`sourceTaggedPrintF`, `guMtxXFML`) was a DIFF in
  `tools/overlay_pairs.py` and no longer is; a CLASH is reported only when the PAL ELF has the name at another address than the
  one the file reaches. `D_80153BB8` is defined by `CFE30.c` in its `.bss` while the NTSC link script
  (`undefined_syms_auto.txt`) moves it to its real address, so PAL needs the same pin (`D_80153BB8 = 0x80153BE8`); the pairing
  tool lists only names that the object leaves undefined, so a name that it defines and a script moves has to be found by
  comparing the object's definitions with the NTSC script files. A pointer written `(s32)0x8013E120U` is a fifth literal form;
  it is `(s32)OVERLAY_PTR(0x8013E120U)`. The PAL progress page reads 2124 of 2722 functions matched (78.03 percent).
- 2026-10-14: `osMotorStop`, `osMotorStart`, `osMotorInit` and `osEepromLongWrite` were assigned in `undefined_syms.eu.txt` (the
  `core/1050` block) as well as named in `symbol_addrs.eu.txt`; the link script assignment turned them into absolute symbols,
  which a recompiler that reads function symbols does not recompile or recognise as functions. The four assignments are gone.
- 2026-10-14: The first half of the frontend overlay (`40720.c`) is shared with PAL (branch `pal-share-overlays`). Of its 113 NTSC
  functions 106 pair identically; three matched ones that differ in PAL take their PAL assembly under `#ifdef VERSION_EU` (`func_80076FD8_47488`:
  NTSC returns 3 in two instructions, PAL has 103; `func_80077E88_48338`: 162 against 170; `func_8007B900_4BDB0`: 131 against 126), and
  `func_8007BB0C_4BFBC` differs in four arguments (one macro). PAL's read-only data is its own rodata object: it differs from NTSC from offset
  0xB40 on (build date, the Gremlin publisher notice, and the end-screen text in English, French and German where NTSC has one). The footprint on
  the maintainer's files is that one file, +22 -2. The PAL progress page reads 2197 of 2722 functions matched (80.71 percent), from 2124.
  `docs/pal-vs-na.md`, "A shared file whose PAL code or data differs", has the method and the traps (an asm-processor change turned out to be
  unnecessary; the three pragmas resolve through `asm/nonmatchings` once both versions are extracted again).
- 2026-10-15: With #434 and #435 merged every gameplay and level overlay file is shared with PAL (`shared_overlay_files.txt`, 46 entries); `src.eu` holds only `libultra/sl.c`, a `GLOBAL_ASM` stub with nothing to share. The PAL progress page reads 2224 of 2722 functions matched (81.7 percent, 99.67 percent decompiled) on `760a2c4a4`, with `tools/progress.py --version eu`; the US page reads 2568 of 3058 (83.98 percent) on `b5365fa2`. The PAL history chart is empty until a second weekly point shares core, because the series starts at the first week whose `bh.eu.yaml` names `../src.us/core`. The PAL page note was cut to what it counts; the 2026-10-12 relocation measurement above stays here.
