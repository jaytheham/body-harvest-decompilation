# A stale `u8` prototype costs a `move` pair; the `andi` position proves the parameter's type

**Symptom.** A one-line forwarder function measures far worse than its C suggests: the compiled
stream carries an extra `move a1,a0` / `move a0,a1` pair at entry and the whole caller-saved band is
shifted, while the recorded `CURRENT` marker is single digits. In
`func_802DFF84_3240D4` (`overlay_level/comet/318E20.c`, an 16-instruction
`D_8014DD50[D_8014DD50[func_802DFF04_324054(arg0)].unkC].unkD` chain) this was the entire 488.

**The lever.** An earlier pass had typed the parameter `u8` (as the overlay header `318E20.h` also
declared it) and written the mask explicitly at the call site (`func_802DFF04_324054(arg0 & 0xFF)`).
With `u8` + an explicit mask IDO emits the round-trip pair. Two edits removed it, measured separately:

1. the parameter is **`s32`** (the `andi` is at the *call site*, not at entry - a `u8` parameter is
   masked with `andi $a0,$a0,0xFF` in the first instructions, and here the first instructions are
   `addiu sp`/`sw ra`/`sw a0,0x18(sp)`): **488 -> 270**;
2. then **drop the explicit `& 0xFF`** and pass the parameter straight to a callee that already takes
   `u8` (`func_802DFF04_324054`, `318E20.h:22`) so the conversion is the callee's prototype's job:
   **270 -> 55**, and the target's argument home (`sw a0,0x18(sp)`) reappears.

After that the instruction stream matched the target instruction-for-instruction; the residue was one
caller-saved register of band shift (`&D_8014DD50` in `a0` vs `v1`).

**Rules.**
- Decide a parameter's type from **where the mask lands**: `andi $a0,$a0,0xFF` in the prologue means
  the parameter is `u8`; an `andi`-into-a-temp at a call site means the parameter is wider and the
  *source* masks it (or the callee's prototype does).
- A `move a1,a0` / `move a0,a1` pair at entry is a type-mismatch artifact, not a scheduling quirk.
- When the overlay's own header disagrees with what the asm proves, the header is the stale part - fix
  it with the definition, or the tree stops compiling (`error: conflicting types for '<func>'`).
