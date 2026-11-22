`incorrect ASM`: In `func_8000B044_BC44`, the initial primitive-color command uses four literal `0xFF` arguments. Every instruction matches except `lui t2,0xE800` and its two `sw t2,0(v0)` uses; the target uses `t4`.

-> `code changed`: Pass the already initialized `r`, `g`, and `b` locals to the initial `gDPSetPrimColor`, retaining the literal alpha. These three scalar references move IDO 5.3 UOPT's automatic basic-block boundary in the graphics setup and change the unused packet-address lifetimes that interfere with the cached tile-sync constant. Remove the diagnostic load probes and retain the normal SDK macros.

-> `correct ASM`: The setup emits `lui t4,0xE800` at ROM `0xBE4C`, `sw t4,0(v0)` at `0xBE60`, and `sw t4,0(v0)` at `0xBEEC`; every renderer instruction matches.

`incorrect ASM`: Enabling the renderer removes its assembly-owned zero double at ROM `0x38208`. The following animation function's `180.0` literal moves from `0x38210` to `0x38208`, shrinking the core rodata by sixteen bytes and relocating the rest of the ROM. A file-scope zero constant shifts the preceding generated switch tables instead.

-> `code changed`: Place the existing animation constant in `core/AD60_rodata.c` as `D_80037610_38210[] = {180.0, 0.0}` and load its first element into the existing `degrees` local. Give that unit its own rodata boundary at US ROM `0x38210` and EU ROM `0x38240`; the preceding renderer section's natural sixteen-byte alignment supplies its trailing zero double. Remove the obsolete renderer late-rodata stubs and scalar aliases.

-> `correct ASM`: The renderer's generated literals and switch table retain their original addresses, `0x38208` contains eight zero bytes, the animation constant remains at `0x38210`, and the following zero padding remains at `0x38218`. The previously matched animation function keeps diff score zero.

`incorrect ASM`: Inlining `180.0` in the same translation unit emits `ldc1 $f20, 0x7608($at)` and removes sixteen bytes from the combined rodata.

-> `code changed`: Move the animation channel routines starting at US text offset `0xD390` to their own translation unit. Inline `180.0` there and link its generated rodata at the former constant-only section boundary.

-> `correct ASM`: The two rodata sections each retain their alignment padding, and the US load is `ldc1 $f20, 0x7610($at)`. The US and EU ROM checksums both match.
