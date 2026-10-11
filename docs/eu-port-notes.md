# EU (PAL) port -- working notes

Objective: build a byte-exact EU ROM (`baserom.eu.z64`, size `0xC00000`, SHA1
`67750E2E7AB46FEDF65A271AB7F4C7AAD92AE355`), reusing the NA source tree and
keeping code shared between regions under `src/common/`. NA-only code lives
under `src.na/`; EU region-specific assembly/data sits under `asm.eu/`. The port
is done when `build.eu/bh.eu.z64` reproduces `baserom.eu.z64` byte for byte,
without regressing the NA build.

## Current state

The EU build links cleanly and produces a ROM of exactly `0xC00000` bytes
(the earlier `0x20` size deficit is closed; see the drift section). NA remains
byte-exact. **381 bytes still differ**, all in the core segment, first at ROM
`0xFB53`, last around `0x32788`. Every remaining difference is an instruction
*address operand* (`lui`/`addiu` of `%hi`/`%lo`), not code or data content: the
shared C still references NA-named symbols that pin to NA addresses instead of
the EU (`+0x30`) addresses. Fixing those is the eu_ collision workstream below.

Tools in play:

- `tools/eu_collisions_build.py` -- pipeline driver; runs
  clean -> extract -> write -> extract -> build -> verify.
- `tools/eu_layout_audit.py` -- per-subsegment size/alignment audit that
  localises size errors by comparing built objects against the target layout.
- `tools/gen_eu_symbol_collisions.py` -- emits `eu_` symbol pins (see below).

## Symbol renames (eu_ collisions)

Shared C in `src/common/` keeps NA symbol names (`D_<vram>_<rom>`). EU
auto-labels collide with those names whenever the same name maps to a different
address in the EU image, so a reference silently binds to the wrong address.

Fix: emit `eu_<name> = 0x<vram>;` pins. Splat renames **by address**, and reads
renames **only** from `symbol_addrs.eu.txt` (`bh.eu.yaml` -> `symbol_addrs_path`;
rename lookup at `tools/splat/src/splat/util/options.py:400`, applied in
`symbols.py:310` and `symbols.py:477`). `undefined_syms.eu.txt` is only a linker
`-T` input (`tools/native_build.py:359`) and can never rename anything.

**BUG found.** The pins were being written to `undefined_syms.eu.txt`, while
`symbol_addrs.eu.txt` had 0 pins, so the renames had no effect on the ROM.

Root cause: `strip_eu_block()` only truncates at a block-header marker, but the
marker is written only to `symbol_addrs.eu.txt`; `undefined_syms.eu.txt`
therefore accumulated triplicated stale pins that nothing ever stripped. Two
syntax constraints also apply and differ per target: splat requires one `;` per
line and accepts only `//` comments; `ld -T` accepts only `/* */`.

## ROM size drift (0x20) -- FIXED

The per-subsegment audit localised two `.rodata` size errors, both in the core
segment, netting `-0x10 + 0x30 = -0x20`. Both are now fixed and the EU ROM is
exactly `0xC00000`.

**(a) `core/FD80` `.rodata` at ROM `0x38290` (+0x10 too big).** Cause:
`src/common/core/FD80.c:15-17` define three `const f32` arrays
(`D_80037650_38250`, `D_80037654_38254`, `D_80037658_38258`) = `0x10` bytes of
`45bb8000 3e860a92 3e860a92 00000000` (`6000.0f`, `0.26179939f`,
`0.26179939f`, `0.0f`) emitted at the start of FD80's `.rodata`. EU gets these
bytes from E830's rodata asm instead, so they must not be compiled for EU.
Fix: wrap the three consts in `#ifdef VERSION_NA`.

**(b) `core/rsp_data` `.rodata` at ROM `0x3F490` (-0x30 too small).** Cause:
`src/common/core/rsp_data.c:72` `D_8003F060_3FC60[344]` needs 6 more `u64`
values in EU. Fix: `#ifdef VERSION_EU` selects `[350]` and appends the 6 values.

Note on byte order: the ROM is big-endian (`.z64`), so `u64` initializers are
written as the plain big-endian integer value, e.g. the six extra words are
`0x248EFFFF27BDFFE8ULL, 0x2DC1000E1020003FULL, 0xAFBF0014000E7080ULL,
0x3C01800B002E0821ULL, 0x8C2EF04401C00008ULL, 0x000000000C01E2F6ULL` (these
render as the raw ROM bytes `248effff27bdffe8...`).

## Why the FD80 constants duplicate E830

The two regions obtain the same four floats from different places, so the consts
must not be compiled into the shared object for both.

NA layout: `bh.na.yaml` lists `[0x38220, .rodata, core/E830]` then
`[0x38260, .rodata, ../src/common/core/FD80]`. In the NA link map,
`E830.c.o .rodata` sits at vram `0x80037620` size `0x30` (six `double
32767.0`/`2.8` compiler literals from E830's code), and `FD80.c.o .rodata` sits
at vram `0x80037650` size `0x130`, starting with the three consts then the
"Schedule Stack Overflow" strings.

EU layout: `bh.eu.yaml` lists `[0x38250, rodata, core/E830]` (asm) then
`[0x38290, .rodata, ../src/common/core/FD80]`. The EU E830 asm
(`asm.eu/data/core/E830.rodata.s`) already contains those same 4 floats at
`0x38280`-`0x38290` (labels `D_80037680_38280`-`D_8003768C_3828C`).

Therefore the three consts in the shared `src/common/core/FD80.c` are NA-only:
EU gets the same bytes from E830's asm, and their presence in the shared file
makes the EU `FD80.o .rodata` `0x10` too large.

Fix (implemented): the consts are wrapped in `#ifdef VERSION_NA` inside the
shared `FD80.c`, rather than moved to `src.na/core/E830.c`. Moving them was
tried and rejected: IDO emits all explicit global-const initializers *before*
compiler-generated function double literals regardless of source placement, so
`E830.c` would produce `[floats][doubles]` instead of NA's required
`[doubles][floats]`, breaking NA. `VERSION_NA`/`VERSION_EU` are supplied by
`tools/native_build.py:242` (`-DVERSION_{version}`).

## Verification

NA must remain byte-exact: `build.na/bh.na.z64` == `baserom.na.z64`, SHA1
`BBB6666F5014A473747EE4145F036D9FB25D7348`. EU byte-exact target:
`build.eu/bh.eu.z64` == `baserom.eu.z64`. Verify with `tools/make.ps1`,
`tools/diff.ps1`, and `tools/eu_layout_audit.py`.

## Log

- 2026-10-11: Created `tools/eu_layout_audit.py`; diagnosed the `eu_` rename
  pipeline bug (`strip_eu_block()` marker written only to
  `symbol_addrs.eu.txt`, pins leaking into `undefined_syms.eu.txt`); localised
  the `0x20` drift to FD80 (`+0x10`) and rsp_data (`-0x30`); created this notes
  file.
- 2026-10-11: Fixed the `eu_` rename pipeline tool (symmetric idempotent clean +
  correct per-file block headers). Fixed the size drift: FD80 consts guarded by
  `#ifdef VERSION_NA`, rsp_data gains 6 `u64` under `#ifdef VERSION_EU`. EU now
  builds to exactly `0xC00000`; NA still byte-exact. Remaining: 381 differing
  bytes in `core` (`0xFB53`-`0x32788`), all address operands from the eu_
  symbol-collision workstream.
