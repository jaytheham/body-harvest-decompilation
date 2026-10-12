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
- `tools/eu_symbol_pairs.py` and `tools/share_core_file.py` -- list the EU
  symbol-table lines a core file needs and convert its per-version copies into
  one shared file; see "Converting a file, and retiring a block" in
  `docs/pal-vs-na.md`.

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
  unmatched function keeps one `GLOBAL_ASM` pragma per version under
  `#elif defined(VERSION_US)` / `#elif defined(VERSION_EU)`, both with the NA
  name; see "Sharing a file that still has GLOBAL_ASM" in `docs/pal-vs-na.md`.
  asm-processor reads every pragma before the preprocessor runs, so a US build
  failed with `FileNotFoundError` on the `asm.eu/` file whenever EU was not
  extracted; a local asm-processor change turns a missing `.s` into a C syntax
  error that only fires if the pragma is compiled.
- 2026-10-12: The last four mixed files, `17EE0.c`, `AD60.c`, `1050.c` and
  `53F0.c`, are shared: all 23 core C files are compiled once from
  `src/common/core/`, and no core C file is left under `src.us/` or `src.eu/`.
  Six files carry per-version pragma blocks (38 NA pragmas, 39 EU). `AD60.c`
  and `53F0.c` hold hand-written jump tables of NA code addresses, so each table
  has a `VERSION_US` / `VERSION_EU` initialiser (EU is NA + 0x30 in `AD60.c`,
  + 0x38 in `53F0.c`). `53F0.c` also holds `func_80006DDC_79DC`, the one
  function that really differs in PAL: the NA C under `VERSION_US`, the EU
  assembly under `VERSION_EU`. The pairing and the conversion are now two
  tools, `tools/eu_symbol_pairs.py` and `tools/share_core_file.py`, and
  `tools/progress.py` counts a shared file's two pragmas once.
