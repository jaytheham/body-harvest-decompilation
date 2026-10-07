# Unused declared local reproduces a phantom stack home; inline the array subscript to hold the value in a temp

**Function**: `func_800FD510_10C4C0` (`src.us/overlay_gameplay/outside/101840.c`, 210 instr).
**Symptom**: asm-differ 812, dropping to 762 on some earlier attempt. The compiled body is
instruction-identical to the target except (a) the WAS-audio flag local lands at `0x28(sp)` where the
target has `0x2C(sp)` and never touches `0x28`, and (b) a whole register band is shifted: the target
computes `&vehicleInstances[...]` in `t3/t4/t5`, ours in `a0/t3/t4`, which adds one instruction —
`move a0,a1` before `jal func_800FD410_10C3C0` (the callee's first argument had to be copied out of
`a1` because `a0` was already holding the loop value) and pushes every later branch target 4 bytes out.

**Two independent fixes, both required:**

1. **Declaration order fixes the stack slot.** IDO allocates homed locals top-down: the *first
   declared* homed variable gets the *highest* offset. `wasAudioActive` must be declared **before**
   `vehicleGroup`:

   ```c
   Unk80052B2C *playerData;
   VehicleType *type;
   s32 wasAudioActive;   /* -> 0x2C */
   s16 vehicleGroup;     /* -> 0x28, never touched in the target */
   ```

   That alone took 812 → 800 and made the slots agree.

2. **The declared-but-unused local is the phantom home.** Keeping `s16 vehicleGroup;` declared while
   removing every *use* of it reproduces the target's unused `0x28` slot exactly — IDO reserves the
   layout slot for a declared local whose value the optimizer never needs. It costs no instructions
   and does not change the frame size (`0x38` in both).

3. **Keep the array subscript inline.** With `vehicleGroup = playerData->unk34;` and
   `&vehicleInstances[vehicleGroup]`, IDO gives the named local a *variable* register (`a0`), so the
   scaling chain starts one register higher (`a0/t3/t4`) than the target's all-temp chain
   (`t3/t4/t5`), and the extra `move` appears. Writing the subscript inline:

   ```c
   playerData->unk38 = &vehicleInstances[playerData->unk34];   /* value stays in t3 */
   ```

   puts the loaded value in the first temp of the chain and removes the extra instruction. 800 → **0**.

**Rule of thumb**: a *declared but unused* local of the right size is a legitimate way to reserve a
phantom stack home — it is cheaper to reason about than a dead init (`x = 0;`), which also shifts the
register-allocation order. And when a target's register band is shifted by exactly one register but no
instruction is added or removed, look for a named local being used as an array subscript: inlining the
subscript moves the value from a variable register into the temp band.

Confirmed both ways: `bh.sh check func_800FD510_10C4C0` → 0 and `bh.sh gate` → `build/bh.us.z64: OK`.
