# Splitting a `databin` that mixes binary library blobs with C data

## Symptom

A large `- [0xADDR, databin]` section in `bh.us.yaml` that contains more than one
object's data, e.g. the core `0x2EA10` databin which held:

* libultra RSP microcode blobs (`rspbootTextStart`, `D_8002DEE0_2EAE0`,
  `D_8002F310_2FF10`) - genuine binary, cannot be written as C,
* a block of shared CPU graphics data (an identity `Mtx`, a scale `Mtx`, an
  `Unk800311A0`, and five static `Gfx` display lists) that *is* real C data.

## How the split point was found

1. Dump the section and look at the content:
   * RSP microcode is full of VU instructions (`4B`, `C8`, `CB`, `E8`, `EA`
     opcodes) and ends on `jr $ra` (`03 E0 00 08`) followed by zero padding.
   * CPU data starts at a 16-byte aligned address on an `Mtx`-looking pattern
     (an identity matrix starts `00 01 00 00 00 00 00 00 00 00 00 01 ...`).
2. The RAM addresses of the known data symbols pin the split exactly:
   `D_80031120_31D20` = RAM `0x80031120` = ROM `0x31D20`.
3. Reference the data symbols from `include/variables.us.h` / `src.us/**` to
   find which C file owns them (the first C file that references the section is
   a safe owner if the real owner is unknown).

## Fix

Name every constituent blob so the yaml shows what each is, and convert the C
part to a `.data` section owned by the C file that references it:

```yaml
      # RSP microcode blobs (binary). Their CPU-side pointers live in core/1050.c and core/FD80.c.
      - [0x2EA10, databin, rsp/rspboot]    # RSP boot ucode: rspbootTextStart, 0xD0 bytes
      - [0x2EAE0, databin, rsp/gfxucode]   # M_GFXTASK ucode: D_8002DEE0_2EAE0, 0x1430 bytes (game loads ucode_size 0x1000)
      - [0x2FF10, databin, rsp/audioucode] # M_AUDTASK ucode: D_8002F310_2FF10, 0x1E10 bytes
      - [0x31D20, .data, core/1050]        # shared identity/scale Mtx + 5 static display lists
```

The blob boundaries come from the CPU-side pointers the code actually uses
(`rspbootTextStart` = `0x8002DE10`, `D_8002DEE0_2EAE0` = the `M_GFXTASK` ucode,
`D_8002F310_2FF10` = the `M_AUDTASK` ucode), so no guessing is needed.

The data is then defined at the **top of the owning C file** (before its other
`.data` globals), in ROM order:

```c
Mtx D_80031120_31D20 = { {
	{ 0x00010000, 0x00000000, 0x00000001, 0x00000000 },
	{ 0x00000000, 0x00010000, 0x00000000, 0x00000001 },
	{ 0x00000000, 0x00000000, 0x00000000, 0x00000000 },
	{ 0x00000000, 0x00000000, 0x00000000, 0x00000000 },
} };

Gfx D_800311A8[] = {
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_ZBUFFER),
	gsDPSetRenderMode(G_RM_OPA_SURF, G_RM_OPA_SURF2),
	gsDPPipeSync(),
	gsSPEndDisplayList(),
};
```

`Mtx` is `long[4][4]` (64 bytes, s15.16). This game stores its identity with the
`guMtxF2L` packing signature (`0x00010000` at `[0][0]`, `0x00000001` at `[0][2]`,
etc.), not a naive diagonal.

## Gotchas

* `tools/gfxdis.ps1 -f <file>` decodes a single static list and prints the exact
  `gs*` macros to paste. Feed it one display list per file - it stops at `G_ENDDL`.
  Note the build is `F3DEX_GBI` (not `_GBI_2`), so `G_SETOTHERMODE_H/L = 0xBA/0xB9`,
  `G_SETGEOMETRYMODE = 0xB7`, `G_CLEARGEOMETRYMODE = 0xB6`.
* **Nested `databin` names need a Makefile entry.** A databin named `rsp/rspboot`
  is emitted to `asm/data/rsp/rspboot.s`, but the Makefile only builds `.s` files
  that are direct children of a directory listed in `ASM_DIRS`
  (`S_FILES = $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))`), so add
  `asm/data/rsp \` to `ASM_DIRS` or the link fails with
  `cannot find build/asm/data/rsp/rspboot.s.o`.
* **Trailing zero padding must be represented explicitly.** The linker script
  only has `. = ALIGN(., 16)` at the *end* of the whole data output section (and
  per-segment end), not between the data subsegments of one segment, and IDO does
  not 16-align each object's `.data`. If the original object's trailing bytes are
  zeros (e.g. 8 bytes after the last display list), size the last array one element
  larger and let C zero-fill it:

  ```c
  Gfx D_80031260[18] = { /* 17 initialisers */ };  /* emits 0x90 bytes */
  ```

  If the section is short, every *following* symbol address moves, which shows up
  as `%lo(...)` immediates changing all over the segment's `GLOBAL_ASM` functions.
* Symbols the C code uses but that no `ASM` file references disappear from
  `undefined_syms_auto.txt` when the section becomes a `.data` C section. Add the
  alias back to `undefined_syms.us.txt` (e.g. `D_80031260_31E60 = 0x80031260;`)
  for the name the code actually uses, and remove the manual entries for names
  that are now real C definitions.
* Update the `extern` type in `variables.us.h` to match the C definition
  (`u8 D_80031160` -> `Mtx D_80031160`) - it is only used by address
  (`gSPMatrix(&D_80031160, ...)`, `gSPSegment(..., &D_80031160)`), so a scalar
  `u8` stops the 64-byte definition from being expressible.
* Static `gs*` display lists contain constants above `INT_MAX` (`0xE7000000`,
  `0xB900031D`, ...). Some editor lint/intellisense setups report
  "integer conversion resulted in truncation" for these, but **IDO and the
  project's host `gcc` check emit no such warning** - verify with
  `docker exec bh-container bash -c "rm -f build/src.us/core/FILE.c.o; make QUIET=0 build/src.us/core/FILE.c.o"`
  before chasing it.
