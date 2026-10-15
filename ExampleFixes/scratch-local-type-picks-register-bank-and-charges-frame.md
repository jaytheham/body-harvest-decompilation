# A scratch local's declared type picks the register bank, and each named local can charge 8 bytes of frame

Worked on `func_802E015C_3242AC` (`src.us/overlay_level/comet/318E20.c`, 54 instructions).
Best measured: **1800 -> 1120 -> 1055 -> 22**, where the residual 22 is only the stack frame
(ours `addiu sp,sp,-0x38`, target `-0x30`); every instruction otherwise matches register for
register. The two levers below are what got it there; the frame trade-off is what is left.

## Lever 1 - read the parameter's struct off the asm, not off the header

The guess declared `void f(VehicleInstance *vehicle)` and read `vehicle->unk1A` (u8 typeIndex),
`unk1B`, `unk1C`. The asm proves a different struct:

| offset | access | what the caller in the same file writes there |
|---|---|---|
| 0x0 | (unused here) | `*(u8 *)((u8 *)trigger + 0)` |
| 0x1 | `lb` (signed byte) | `*(s8 *)((u8 *)trigger + 1)` |
| 0x2 | `lb` | `*(s8 *)((u8 *)trigger + 2)` |
| 0x4 | `lw` / `sw` (32-bit) | `*(s32 *)((u8 *)trigger + 4)` |
| 0x8 | `lbu` | `*(u8 *)((u8 *)trigger + 8)` |
| 0xC | pointer store | `*(void **)((u8 *)trigger + 12)` |

That is exactly `Unk80222A78` (`structs.us.h`), the trigger struct the caller casts to before
calling `func_800AE454_BD404`. Retyping the parameter and moving to `trigger->unk8 / unk1 / unk2 /
unk4 / unkC`: **1800 -> 1120**.

**Rule:** a 32-bit `lw`/`sw` at an offset a `s16` field claims, or a byte load at an offset a `s16`
field claims, means the declared struct is the wrong struct - not that the field needs a cast.
Resolve it against the caller that fills the object.

## Lever 2 - a named local's declared type decides its register bank

With `u8 typeIndex; typeIndex = trigger->unk8; alien = &alienInstances[typeIndex];` the index byte
lands in `$v0` (the target's register) and `u`/`v` land in `$a1`/`$a2`. With the index inlined into
the array subscript the byte becomes a cse temp in `$t6`. And `s16 u, v` puts the two scratch values
in the `$t` bank where the target has `$a1`/`$a2`:

| body | score | frame |
|---|---|---|
| inline index, `s16 u,v` | 1120 | 0x28 |
| named `u8 typeIndex`, `s16 u,v` | 1055 | 0x30 |
| inline index, `s32 u,v` | 792 | 0x30 |
| named `u8 typeIndex`, `s32 u,v` | **22** | 0x38 |

So widening `u`/`v` from `s16` to `s32` is what buys `$a1`/`$a2`, exactly as the target has them -
the register bank followed the *declared type*, not the statement order.

**Rule:** when `ins_diff -noregs` shows the opcodes in the target's order but the whole function in
the wrong bank, try the scratch locals one type wider before shuffling statements: a narrower type
lets IDO keep the value as an anonymous temp.

## Resolution: reuse the scratch locals and pad the pointer spill

Reusing the same s32 u/v locals for both initial coordinates and later azimuth differences reduces the frame from 0x38 to 0x30 while preserving all instruction ordering and registers. The remaining pointer spill is at 0x1C rather than 0x18. An unused s32 pad declared immediately after the alien pointer moves that spill to 0x18 without growing the rounded frame. Keeping the u8 index in its own block yields a complete match, verified by tools/make.ps1 reporting build/bh.us.z64: OK and diff score 0.
