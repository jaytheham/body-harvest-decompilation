# Unwrapping a function shifts its file's data segment (overlay `.text` precedes `.data`)

The overlay linker script lays a file's sections out **consecutively** inside the overlay segment:

```
_overlay_gameplay_insideSegmentTextStart = .;
build/src.us/overlay_gameplay/inside/16AF30.c.o(.text);
. = ALIGN(., 16);
_overlay_gameplay_insideSegmentTextEnd = .;
_overlay_gameplay_insideSegmentDataStart = .;
overlay_gameplay_inside_16AF30_c = .;
build/src.us/overlay_gameplay/inside/16AF30.c.o(.data);
...
```

(`bh.ld`, per-overlay blocks — `.text`, then `. = ALIGN(., 16)`, then each file's `.data`.)

So **the size of a file's `.text` decides the address of everything in its `.data` and of every data
block that follows it in that overlay.** Unwrapping a function (turning its `#pragma GLOBAL_ASM`
into compiled C) changes `.text` by the alignment-quantised delta, and every data symbol then resolves
to a different address than the ROM's.

Measured on `func_80083014_16B0D4` (`overlay_gameplay/inside/16AF30.c`, 31 instr):

| build | `16AF30.c.o` `.text` | ROM bytes at file `0x18d000` |
|---|---|---|
| guard restored (`GLOBAL_ASM`) | `0x8c30` | `4066c16c16c16c17 4036800000000000` (= baserom, whole ROM byte-identical) |
| committed guess unwrapped (32 instr) | `0x8c40` (+0x10) | `4060400000000000 4056c16c16c16c17` — the doubles that belong at `0x18cff0` |

The ROM's `0x18d030` is the string `"ieNormVecF3()  {0,0,0} -> {0,0,0}\n"`; with the guard unwrapped the
whole block sits `0x10` higher, so `D_800A4F70_18D030` resolves to `0x800A4F80` and the `osSyncPrintf`
call emits `addiu $a0,$a0,0x4f80` where the target has `0x4f70`. `.rodata` was **unchanged in size**
(`0x570` both ways) — the delta came entirely from `.text` + `ALIGN`.

## Rule

- While an unwrapped function's **code size differs from the ROM's**, `check`/`asm-differ` shows
  `%hi`/`%lo` differences on *every data reference in that file* (and in files after it). Those rows
  are **layout noise, not source differences** — do not chase them. They vanish only when the
  function's code size matches the ROM's.
- Corollary: such a function cannot be matched while its length is wrong — the data it reads has
  moved. Fix the instruction count first, then re-read the data rows.
- Rebuild and compare the two builds' sections when a data-immediate row appears for no obvious reason:

```sh
mips-linux-gnu-objdump -h build/src.us/<path>.c.o | grep -E 'text|rodata|data'
python3 -c "b=open('baserom.us.z64','rb').read(); u=open('build/bh.us.z64','rb').read(); print(b==u, b[o:o+16].hex(), u[o:o+16].hex())"
```
