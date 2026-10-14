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

The end state the maintainer has stated is one source tree in which the few
differences between the versions are switched by `#ifdef`. `src.us` is expected
to be renamed `src` later; that has not happened, and until it does `src.us` is
treated as that tree: the C under `src.us/core` is compiled for both versions,
and `src.eu` holds only what exists in the PAL release alone.

### The mechanism works

`splat` resolves a `c` subsegment as `src_path / name`, where `name` is the
third yaml element verbatim, so a traversing name reaches across trees. `bh.eu.yaml`
has `src_path: src.eu` and names every shared core segment that way, while
`bh.us.yaml` names the same segments `core/<File>`, for example:

```yaml
- [0x53D0, c, ../src.us/core/53D0]     # bh.eu.yaml: resolves to src.us/core/53D0.c
- [0x53D0, c, core/53D0]               # bh.us.yaml: resolves to src.us/core/53D0.c
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

All 23 NA core C files are shared: each exists once, in `src.us/core/`, and
the EU build compiles that same file with `-DVERSION_EU`. `src.eu` holds no
core C file, and `bh.us.yaml` (as `core/<File>`) and `bh.eu.yaml` (as
`../src.us/core/<File>`) name the same 23 files. Seventeen contain no
`#pragma GLOBAL_ASM`, and fifteen of those no per-version text at all
(`12C80.c` needed no `#ifdef`). `loader.c` keeps its ten tables of ROM offsets
and overlay addresses under `VERSION_US` / `VERSION_EU`, because EU moves the
level data and overlays, and `10A20.c` does the same for `D_80031B58_32758`,
which starts as `0` in NA and `1` in EU. The other six files mix matched C with
unmatched functions, which name their assembly once, as in the NA-only source
(next section).
Six overlay files are shared as well (next section).
Sharing a file also means pointing its EU `.data`/`.rodata` (and any `.bss`) at
the C, naming its functions with their NA names at EU addresses in
`symbol_addrs.eu.txt`, and pinning the externs it references at their EU
addresses in `undefined_syms.eu.txt`.

### Sharing an overlay file

The files that PAL shares outside core are listed in `shared_overlay_files.txt`, the one list that the Makefile,
`tools/native_build.py` and the tools read: the second half of the frontend overlay (`52690.c`) and the one C file of each
of the five level overlays, and every file of the inside and the outside overlay (the outside one has four data-only files).
`tests/shared_files_check.sh` checks that the list agrees with `bh.eu.yaml`, which names each of
them as `../src.us/<file>`, and with the other places that use it.

Inside an overlay the PAL shift is not one number, so the PAL address of every name is read from the paired instructions
and not added to the NTSC one. The code of `52690.c` is 0x7C0 after the NTSC code and its read-only data 0xB60 after. A level
overlay is 0xB60 after in the ROM and 0x40 after in memory; the pointers in its data are +0x40 into the level and +0x30 into the
first part of the gameplay overlays, and what it reads from core is +0x30.

The steps, for a file that exists once as C in `src.us` and once as a stub file in `src.eu` (one stub function per NTSC function):

1. `python tools/overlay_pairs.py --us-dir <dir> --eu-dir <stub dir> --us-obj <object>` pairs the functions and compares them
   (`--align auto` pairs by opcode sequence when the PAL stub has a function more or less). It prints NAME lines (the file's
   functions at their PAL addresses), PIN lines (the NTSC names that the object leaves undefined, at their PAL addresses),
   and a DIFF for each pair that cannot share the C: another instruction count, another opcode, or a constant that changed
   (a difference that equals one of the file's own address shifts is not a DIFF; the target of a `jal` or `j` is not compared
   by name, because PAL has a libultra or core function that NTSC names under its `func_<address>` label, and the address
   that the call reaches is checked by DELTAS and CONFLICT). A DIFF function needs a PAL-only
   definition; none of the six files has one.
2. `bh.eu.yaml`: the stub's `c` entry becomes `../src.us/<file>`, with `.data` and `.rodata` entries at the PAL offsets where
   `bh.us.yaml` has them; delete the stub file under `src.eu`; add the file to `shared_overlay_files.txt`. The Makefile and
   `tools/native_build.py` derive the C file list, the build directory and the `--asm-root` directory from that list.
3. `symbol_addrs.eu.txt`: the NAME lines, each with `// type:func rom:0x<PAL ROM offset>`. The `rom:` is needed because the
   overlays share one vram range; without it splat does not apply the name, the PAL assembly of a `GLOBAL_ASM` function keeps
   its auto-name, and the pragma finds no file. `undefined_syms.eu.txt`: the PIN lines, and a pin to its own address for every
   PAL label of the file's own data and read-only data that the PAL assembly of its `GLOBAL_ASM` functions still names (the
   link lists them as undefined once the C object owns that data).
4. An address held as a number in the C needs a value per version. A jump table placeholder becomes a `VERSION_US` /
   `VERSION_EU` / `#error` chain. A pointer in a data initialiser is written `LEVEL_PTR(0x802D531C)` or `OVERLAY_PTR(...)`;
   where the C writes a pointer as two halfwords (`0x802E, 0x4F94`) it is `LEVEL_PTR_HI(0x802E4F94), LEVEL_PTR_LO(0x802E4F94)`,
   as two bytes and a halfword (`0x80, 0x2E, 0x4F94`) it is `LEVEL_PTR_B3(...), LEVEL_PTR_B2(...), LEVEL_PTR_LO(...)`, and
   as four bytes (`0x80, 0x0A, 0x54, 0xE0`, inside a `u8` array) it is `OVERLAY_PTR_B3(...)` to `OVERLAY_PTR_B0(...)`
   (macros in `include/version_shift.h`, the identity for NTSC). Wrap only the numbers that the two ROMs show shifted, by exact
   value and not by range: some numbers that look like addresses are constants (`0x8019003C`).
5. `python tools/eu_collisions_build.py` extracts, tags the colliding labels, builds and verifies; a ROM that differs is
   found with `python tools/eu_rom_diff.py`.
6. A name that the shared C object defines and that the NTSC link script (`undefined_syms.txt`, `undefined_syms_auto.txt`)
   moves to another address needs the same move for PAL (`D_80153BB8`). `overlay_pairs.py` lists only the names an object
   leaves undefined, so compare the object's definitions (`nm`) with the names the NTSC script files assign. A data-only C file
   (`constData.c`) is a shared file like the others: list it and wrap its pointers.

What went wrong the first time, so that it is not repeated:

- A PAL label can shadow an NTSC name. splat's `undefined_syms_auto.eu.txt` defines every name that the PAL assembly refers to
  and does not define, at the address the name encodes, and it is linked after `undefined_syms.eu.txt`, so it wins. A shared
  file that uses the NTSC name `D_80157F94` then reads the PAL variable at 0x80157F94, not the one at 0x80157FC4.
  `tools/gen_eu_symbol_collisions.py` tags the colliding PAL labels `eu_`. It must read the objects of every shared file; it
  read only `src.us/core` at first, and the level file read core variables at their NTSC addresses until it read them all.
- One NTSC name for two functions. The overlays share a vram range, so the NTSC decomp can use one name for a function of each:
  the america level calls `func_8008EB20_5EFD0`, and the frontend file defines it. In PAL they are at different addresses
  (0x8008EB50 and 0x8008F2E0), and a pin for one overrides the definition of the other (the frontend's calls went to the wrong
  function). The level file gets a name of its own for PAL, `#define func_8008EB20_5EFD0 func_8008EB20_5EFD0_LEVEL` before the
  includes, and that name is pinned. `tools/overlay_pairs.py` prints a CLASH line when a pin names a function that another
  shared file defines at another PAL address than the one this file's code reaches (a level function that the outside
  overlay calls is at the same PAL address whichever file names it, and is not a clash).
- The PAL stub of an empty function is extracted under `asm.eu/matchings`, not `nonmatchings`; anything that lists the PAL stubs
  reads both.
- A native build makes its own build directories and a `make` does not: run a full `make` on a fresh checkout (`git archive`)
  before pushing.

### A shared file whose PAL code or data differs

The frontend's first half (`src.us/overlay_gameplay/frontend/40720.c`) is shared although PAL differs from NTSC in four functions
and in its read-only data (the build date and version string, the publisher notice, and the end-screen text in three languages).
What it needed beyond the steps above, all inside version conditionals so that the NTSC build is unchanged:

- **A matched function that differs in PAL** keeps its C for NTSC and names the PAL assembly for PAL:

  ```c
  #ifdef VERSION_EU
  #pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80077E88_48338.s")
  #else
  /* the NTSC C body */
  #endif
  ```

  asm-processor reads every pragma before the preprocessor runs, so the path must exist in both builds, and it does: splat
  extracts a function that the C file names in a pragma to `asm/nonmatchings` even inside an `#ifdef`. Add the pragma, then
  extract both versions again and rebuild US before running `tools/eu_collisions_build.py` (it reads the US objects; a stale US
  tree hides the collisions). No change to asm-processor is needed, and none should be made: the PR once carried a missing-file
  tolerance and dropped it on purpose (`af1e3b11a`). The function needs a `NAME` line (`name = <PAL address>; // type:func rom:0x..`)
  so that its PAL assembly file has the NTSC name.
- **A function that differs only in a few constants** stays shared C with the constants behind a macro
  (`PUBLISHER_LOGO_RECT`: PAL `116, 58, 96, 128`, NTSC `24, 80, 288, 96`). `tools/overlay_pairs.py` reports only the first
  differing operand of a pair; `diff` the two assembly files to see them all.
- **Read-only data that differs** is not taken from the C. The NTSC arrays are written `#ifndef VERSION_EU`, and `bh.eu.yaml`
  gives PAL's read-only data its own entry of type `rodata` (no dot), which splat extracts to `asm.eu/data/...` and links as an
  assembly object. A `.rodata` entry would link the C object's read-only data instead and needs a C file.
- **Pins for the names the PAL object no longer defines.** The NTSC array names the shared code uses are undefined in the PAL
  object once the arrays are gone. Pin each from the pairing's mapping (`python tools/overlay_pairs.py ... --mapping-out m.json`):
  an NTSC address that the paired instructions reached maps to one PAL address. Map only a name that is a real NTSC symbol (it is in
  `build/bh.us.elf`). A name that merely encodes an address is a PAL label, and mapping it pins the label to the wrong address
  (two jump-table labels were first pinned that way and linked to 0xB64 past their place).
- **A PAL function whose auto-name equals the NTSC name of another function** (`func_80070970_40E20` is the PAL name of the
  function that NTSC calls `func_80070940_40DF0`) must be given its NTSC name with a `NAME` line. Otherwise the pin for the NTSC
  meaning wins silently and a `jal` lands 0x30 away. `tools/gen_eu_symbol_collisions.py` leaves functions alone on purpose.
- **A label tag in the overlay range needs `// rom:0x...`** or splat does not apply it (the generator writes it now); without it a
  PAL label and a shared-C symbol of the same name are both defined (`multiple definition`).
- **An NTSC offset-alias (`X = Y + off`) that the generator ports needs `Y` pinned**, even when nothing else uses `Y`, or the link
  stops with `undefined symbol ... referenced in expression`.

### Sharing a file that still has GLOBAL_ASM

A `GLOBAL_ASM` stub cannot cross versions, because its bytes are baked with
that version's relocations. The source still names each unmatched function's
assembly once, in the form the NA-only source had, and the build reads the
assembly of the version it is building:

```c
#ifdef NON_MATCHING
/* C body */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/E830/func_8000E53C_F13C.s")
#endif
```

- The pragma names the NA extraction (`asm/nonmatchings/core/<File>/`). The EU
  build passes `--asm-root asm/nonmatchings/core=asm.eu/src.us/core` to
  `tools/asm-processor/asm_processor.py` (in `tools/native_build.py` for
  `--version eu` and in the Makefile for `VERSION=eu`), which replaces the
  leading `asm/nonmatchings/core` of every pragma path with `asm.eu/src.us/core`
  before it opens the file. The option takes a `SOURCE=DESTINATION` pair, and
  SOURCE may have several components, so the shared C keeps the pragma form it
  has always had. US passes nothing. The option refuses a destination directory
  that does not exist. Both invocations of asm-processor per object (the source
  pass and `--post-process`) must carry it; without it the EU link fails with
  undefined references to NA symbol names.
- The mapping reads the path the way `open()` does: it folds `.`, `..` and
  repeated separators first, so `./asm/nonmatchings/core/x.s` and
  `asm/nonmatchings//core/x.s` map like `asm/nonmatchings/core/x.s`; a
  backslash is a separator, and `ASM/` matches `asm/`, on a Windows host only
  (on a case-sensitive host those paths name nothing and the open fails; on
  another case-insensitive filesystem `ASM/` gets the refusal below). A path
  that is not spelled `asm/nonmatchings/core/...` but still resolves to a file
  under that directory (an absolute path, one that leaves the repository and
  comes back, or one through a symbolic link into it) cannot be mapped, so
  asm-processor stops with an error naming the source file, the line and the
  pragma, instead of reading the NA assembly into an EU object. Paths outside
  `asm/nonmatchings/core` (`asm.eu/...`, `asm/nonmatchings/libultra/...`,
  `src/asm/...`) are left as written.
  `tests/asm_root_check.sh` covers these spellings (with the one-component
  SOURCE `asm=asm.eu`) and the longer form the EU build passes, with no
  extraction or baserom. It runs on any host, except that the symbolic link cases need a
  host that can make a real link and print SKIP elsewhere (a default Git Bash
  on Windows makes a copy of the directory instead of a link).
- A build that omitted `--asm-root` fails at the link (undefined references) and
  never reaches the SHA1 check, but its objects stay on disk. The Makefile
  therefore makes every GLOBAL_ASM object depend on a stamp of the
  asm-processor command line (`build.eu/.asm_processor.stamp`) and on
  `asm_processor.py`, so putting the flag back, or changing the processor,
  rebuilds them instead of re-linking objects made from the NA assembly. The
  stamp is rewritten, only when the command line changed, while make reads the
  Makefile, so on an idle tree `make -n build.eu/bh.eu.z64` prints "is up to
  date" and `make -q build.eu/bh.eu.z64` exits 0, and no GLOBAL_ASM object is
  listed. That holds for the ROM targets only: the default goal still prints
  its `sha1sum --check` line under `make -n`, and `make -q` exits 1 for it,
  because `verify` has a recipe and no file of that name (the stamp does not
  cause this). A dry run that finds a changed command line rewrites
  the stamp too, and the next real `make` then rebuilds the objects.
  `tools/native_build.py` gets the same effect from its configuration
  fingerprint, which digests `native_build.py` and `asm_processor.py`.
- The asm path follows from the yaml name. `bh.us.yaml` names the subsegment
  `core/E830`, so splat writes its functions to `asm/nonmatchings/core/E830/`,
  the directory the pragma names. `bh.eu.yaml` names it `../src.us/core/E830`,
  so splat writes the EU functions to `asm.eu/src.us/core/E830/` (the `..` is
  dropped, and the directory is not under `nonmatchings` or `matchings`). That
  difference is what `--asm-root asm/nonmatchings/core=asm.eu/src.us/core`
  bridges.
- The function has the NA name in both extractions, because `symbol_addrs.eu.txt`
  names the EU function after NA. splat classifies a function by the pragma's
  file name and ignores its directory (`C_GLOBAL_ASM_IDO_RE`), so one pragma
  classifies the function for both extractions.
- A macro cannot choose the path: asm-processor only recognises the literal
  `#pragma GLOBAL_ASM("...")` form, and IDO silently ignores the unexpanded
  pragma, which leaves the function out of the object. That is why the
  directory is mapped by the build and not by the preprocessor.
- The build of each version reads the extraction of its own version (the EU
  build through the mapping above), so a build needs only its own extraction:
  US works without `asm.eu/`, EU without `asm/`.
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
compiles it from C and EU from assembly. That pragma also names `asm/nonmatchings/core/`, which
the EU build maps to `asm.eu/src.us/core/`. In `1050` every function sits at the same
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
core layout (the `core` directories under `src.us/` and `src.eu/`,
`asm/nonmatchings/core` and the `core/` entries of both yamls), so using them on
an overlay file would mean changing them; `tools/overlay_pairs.py` is the tool for the overlay files (previous section). What they did, as the record of the
method:

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
  mechanical conversion. With the NA source staying in `src.us/core/` and every
  pragma keeping its `asm/nonmatchings/core/<File>/` form (no `#if` is added),
  what remains is the `git rm` of the EU stub and the `c`, `.data` and `.rodata`
  entries of `bh.eu.yaml` pointed at `../src.us/core/<File>` (EU's `data` and
  `rodata` became `.data` and `.rodata`). The version of the tool in the history
  also moved the file into a separate shared directory and renamed its pragmas to
  match; neither step applies to this tree. `--jtbl-shift` wrote the per-version
  jump table initialisers after checking every word against both baseroms;
  `--pal-only` kept one function's NA body under `VERSION_US` and gave
  `VERSION_EU` its pragma (the same `asm/nonmatchings/core/` path, mapped by the
  EU build). It edited no symbol table and did not build.
- After a conversion the `NAME`, `PIN` and `DROP` lines were added to the symbol
  tables by hand (hand-written lines go above the block that
  `tools/eu_collisions_build.py` generates, or the generator deletes them), both
  versions were extracted, the US version was rebuilt, and only then was
  `tools/eu_collisions_build.py` run, which reads the US objects under
  `build/src.us/core/`; on a stale US tree it binds EU references to the wrong
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
every core C file in the EU build is a shared file in `src.us/core/` (see
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
- `shared_overlay_files.txt` is the single list of the overlay files that PAL shares. Do not copy it into another file:
  the Makefile (`grep`), `tools/native_build.py`, `tools/decomp_common.py` (`shared_overlay_files()`), `tools/progress.py`
  (`eu_source_roots()`), `tools/function_inventory.py` and `tools/gen_eu_symbol_collisions.py` read it, and
  `tests/shared_files_check.sh` fails when it disagrees with `bh.eu.yaml`.
- `tools/overlay_pairs.py` has `tests/overlay_pairs_check.sh`; `tests/asm_root_check.sh` covers the `--asm-root` mapping,
  including the sub-directory form that the shared files use; `tests/progress_eu_check.sh` covers the PAL progress count.
- asm-processor's minimum function size is **2 instructions** for `-O2` without
  `-framepointer`, not 5. Only one-instruction GLOBAL_ASM blocks are rejected.