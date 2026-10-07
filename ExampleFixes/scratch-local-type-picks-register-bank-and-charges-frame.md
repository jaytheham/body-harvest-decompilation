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

## What is left: the frame charges 8 bytes per named local

Each of the two effects above also reserves 8 bytes of stack (unwritten - the diffs are only the two
`addiu sp,sp` immediates): `0x28` with neither, `0x30` with either one, `0x38` with both. The
target's `0x30` therefore has the *bank* of both but the *home* of only one. Moving them out of the
declaration list, inlining u/v (2102, 56 instructions) and the compound `+=` / `|=` forms (2102) all
measured worse, so the remaining lever is a shape that gets the bank without a home - not another
declaration permutation.

## The frame and the du/dv bank are coupled (measured)

Inlining the two azimuth locals instead -
`alien->unkE = func_80003824_4424((f32)(D_80052B34->unk0 - alien->unk0), (f32)(D_80052B34->unk4 - alien->unk4));` -
buys exactly the 8 bytes the target wants (frame **0x30, correct**) but then loses two other rows:
the alien spill home moves `0x18 -> 0x1C` and the difference band after the call shifts one register
(target computes `du`/`dv` into `$a1`/`$a2` from `lh $t0`/`lh $t9`; the inlined form uses `$t9`/`$t2`
from `lh $t1`/`lh $t0`). Score 62. So the named azimuth locals are *required* for the bank and are
*charged* for the frame - the two are the same lever seen from both ends, and the correct body has
to pay for the bank some other way.

**Diagnostic:** when the only remaining rows are the frame's two `addiu sp,sp` immediates, count the
named locals against the target's unused reserved slots; an unwritten 8-byte block per local is the
signature.

Related: `inplace-compound-update-removes-named-local-temp-bank.md` (removing a local moves the bank
the other way), `struct-field-u8-vs-s16-same-offset-register-shift.md` (load width vs struct type
when the struct cannot be retyped).
