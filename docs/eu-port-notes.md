# EU (PAL) port -- working notes

Objective: build a byte-exact EU ROM (`baserom.eu.z64`, size `0xC00000`, SHA1
`67750E2E7AB46FEDF65A271AB7F4C7AAD92AE355`), reusing the NA source tree and
keeping code shared between regions under `src/common/`. NA-only code lives
under `src.us/`; EU-only C stubs live under `src.eu/` and EU assembly and data
under `asm.eu/`. The port
is done when `build.eu/bh.eu.z64` reproduces `baserom.eu.z64` byte for byte,
without regressing the NA build.

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
- `tools/asm-processor/asm_processor.py --asm-root asm=asm.eu` -- passed by the
  EU build only, so that the one version-neutral `GLOBAL_ASM` pragma of a shared
  file reads the EU extraction; `tests/asm_root_check.sh` checks it. See
  "Sharing a file that still has GLOBAL_ASM" in `docs/pal-vs-na.md`.
- `tools/progress.py --version eu` -- counts the PAL build (`src.eu` plus the
  shared `src/common`, each file read as the EU build compiles it) into
  `docs/progress.eu.json`, which `docs/eu.html` shows. The default run is the
  NTSC count behind `docs/index.html` and is unchanged.
  `tests/progress_eu_check.sh` checks both.

Two tools, `eu_symbol_pairs.py` and `share_core_file.py`, did the mechanical
part of converting the per-version core files into shared ones. They were
removed once the last core file was converted and are in the history at commit
3b5ea2e2d; see "Converting a file, and retiring a block" in `docs/pal-vs-na.md`.

## Symbol renames (eu_ collisions)

Shared C in `src/common/` keeps NA symbol names (`D_<vram>_<rom>`). EU
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
  `src/common/core/rsp_data.c` uses the same `[344]` array for both versions.
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
  outside 27 and 20, and the EU level overlays are `bin` segments. Per-version
  data would need handling as well.

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
  `n_alSynFreeFX`, which `12C80.c` now defines once in `src/common/core/`, and `symbol_addrs.eu.txt` names it at its EU address.
  Also note the gotcha: splat parses the `GLOBAL_ASM` pragma filename, so the C
  stub name must equal the splat symbol name or the function is misclassified as
  matched. `src/common/core/10A20.c`: `D_80031B58_32758` has a region-specific
  initial value (`1` in EU, `0` in NA) via `#ifdef VERSION_EU`.
- 2026-10-12: The review of pull request 423 found the frontend start, the FD80
  rodata boundary and the DIFF classification wrong. The frontend now starts at
  `0x40750` and FD80's rodata at `0x38280`; the `#ifdef VERSION_US` around the
  FD80 floats, the `[350]` `rsp_data.c` array and its six EU words are gone;
  `docs/pal-na-diff.txt` is regenerated with the per-function shift (one DIFF
  function).
- 2026-10-12: `1B060.c` and `E830.c` are shared too (19 of 23 core files). Each
  unmatched function keeps the one `GLOBAL_ASM` pragma it had in the NA-only
  source, renamed to `asm/src/common/core/<File>/<name>.s`; the EU build passes
  `--asm-root asm=asm.eu` to asm-processor, which reads `asm.eu/` in its place.
  See "Sharing a file that still has GLOBAL_ASM" in `docs/pal-vs-na.md`.
  asm-processor opens every pragma's file before the preprocessor runs, which
  is why the directory is mapped by the build and not by an `#if` in the source;
  each build then needs only its own extraction.
- 2026-10-12: The last four mixed files, `17EE0.c`, `AD60.c`, `1050.c` and
  `53F0.c`, are shared: all 23 core C files are compiled once from
  `src/common/core/`, and no core C file is left under `src.us/` or `src.eu/`.
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
  matched only the literal prefix `asm/`, so `./asm/...`, a Windows backslash or
  case spelling, an absolute path or `asm/../asm/...` would have read the NA
  extraction in an EU build (none exists; the link or the SHA1 check would have
  stopped the result). asm-processor now canonicalises the path before mapping it
  and refuses, naming the file, line and pragma, a path that still resolves under
  `asm/` without being spelled that way (`tests/asm_root_check.sh`). The Makefile
  now rebuilds the GLOBAL_ASM objects when the asm-processor command line or
  `asm_processor.py` changes. See "Sharing a file that still has GLOBAL_ASM" in
  `docs/pal-vs-na.md`.
- 2026-10-12: A separate EU progress page, `docs/eu.html`, fed by
  `docs/progress.eu.json` from `tools/progress.py --version eu`. The tool reads
  `src.eu` and `src/common` as the EU build compiles them (`VERSION_US`,
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
