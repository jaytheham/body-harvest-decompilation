### Halfword angle storage and a level load after the joint update

`func_802D6890_255FD0` matches all 695 instructions and passes the full US ROM checksum.

Keep the persistent angle in its signed halfword local and cast it at each trigonometric call:

```c
sp92 = D_8014DD50[joints[0]].unk6;
sp72 = coss((u16)sp92);
```

Assigning the angle through a signed word local first lets IDO replace the intended `sh sp+0x92` with `sw sp+0x74` and later read its low halfword at `sp+0x76`. Removing the word intermediary restores the target halfword home and unsigned argument cache at `sp+0x68`.

For the root-angle clamp, load the level after writing the angle:

```c
root->unkAUnsigned += 0x1F4;
scaleOrFlags = currentLevel;
if (((s32)root->unkAUnsigned > 0) &&
    ((s32)root->unkAUnsigned < 0x1F5))
{
    root->unkA = 0;
}
```

This produces the target `lhu`, `lui`, `addiu`, `sh`, `andi`, `blez`, with the level `lw` in the branch delay slot. Loading the level before the update schedules its `lw` early and moves the `sh` into the delay slot. A named angle temporary also changes the addition and narrowing registers.

In the opening setup, assigning the type index before the instance joint index swaps their allocated V0/V1 registers while retaining the scheduled load order. This makes the opening 137 instructions match exactly.

For the later scaled cosine plus double offset, putting the offset first in the C addition restores the target double-add operand order. Check the emitted operands even when the numeric expression is equivalent.

The final cosine expression must also initialize the joint pointer after the call while preserving the surrounding floating-point expression:

```c
((f32)(tempV1 = coss((u16)sp92),
       root = &D_8014DD50[joints[0]], tempV1)) / 32768.0
```

The following Y-coordinate assignment uses `root->unk2`. Moving the call into a separate statement changes which floating-point partial product is computed before the call. Initializing the pointer before the call adds a spill. Keeping the initialization inside this comma expression reproduces the target pointer reuse and floating-point schedule.

For the countdown, use separate word values for the decremented counter and the clamped counter:

```c
dx = alienInstances[arg0].unk26;
if (dx != 0)
{
    alienInstances[arg0].unk26 = dx - 1;
}
dx = alienInstances[arg0].unk26;
tempV1 = dx;
if (dx >= 0x21)
{
    tempV1 = alienInstances[arg0].unk26 = 0;
}
```

The rotation expressions consume `tempV1`. IDO then places the copy to V1 in the threshold branch delay slot and retains the byte narrowing of the zero assignment. A byte local adds another `andi`; using the field directly moves the copy before the decrement. Reuse `scaleOrFlags` for the products after its level comparison to preserve their V0 allocation.

Two small expression forms also matter: signed multiplication by `-16` generates the target `negu at` followed by a shift, while spelling the negation separately uses V1. Compound `sp92 += jointAngle` preserves the target addition operand order.

The final obstacle was the automatic spill area. The word-local countdown gives the correct instructions and registers, but its repeated integer product reuses an existing temporary. With no tail padding, the frame is 192 bytes instead of 200; adding a tail halfword restores the frame but moves all six pointer spill homes four bytes too low.

Use discarded floating-point tests at the existing value-use boundaries instead of adding a tail declaration:

```c
tempV1 = dx;
if ((f32)dx * (f32)dx) {}
if (dx >= 0x21)
{
    tempV1 = alienInstances[arg0].unk26 = 0;
}
if ((f32)scaleOrFlags * (f32)scaleOrFlags) {}
/* level comparison and the joint rotations */
if ((f64)tempV1 * (f64)tempV1) {}
if ((f32)tempV1 * (f32)tempV1) {}
```

A read-only, identity-gated UOPT trace shows the double conversion requests a new eight-byte temporary at virtual offset -128. The six pointer homes remain -96 through -116, and UGEN emits the required 200-byte frame with no scratch spill area. The discarded tests emit no instructions, but their conversions affect floating-register allocation. The double test alone leaves every instruction, integer register, and stack reference correct while rotating the floating registers. The three single-precision tests restore the target floating-register order. Replacing the squares with simple casts changes code generation; retain their expression shape and placement.

The final cosine result shares `tempV1` with the clamped countdown; the later X-distance uses a separate word local in the previously unused padding home. No header or assembly changes were needed.

Always inspect the complete file diff and the full ROM after a function reaches score zero. Four stray `countdownPadding[2]` declarations outside this function enlarged three other compiled frames and also touched a skipped function. Removing those unrelated declarations restored the skipped function and produced `build/bh.us.z64: OK`; the initial score-zero function result alone did not prove the ROM matched.
