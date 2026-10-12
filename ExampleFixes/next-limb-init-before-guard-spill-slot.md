# Initialize the next-limb pointer before the guard to move a spill slot

In `func_800F4748_1036F8`, every instruction matched except the current-limb
pointer saved across the first random call: IDO used `sp+0x30`, while the target
used `sp+0x34`. The frame size, other stack slots, and registers already matched.

The matching declaration order is:

```c
UnkF9230ShadowLimb *entry;
s32 tempA;
UnkF9230ShadowLimb *next;
u8 animLerp;
u8 pad_42;
s16 sp40;
s16 sp3E;
s16 sp3A_pad;
s16 sp3A;
```

Move the next-limb initialization out of the guarded body:

```c
entry = &arg0->limbs[arg2];
next = &entry[1];
animLerp = D_801601F0[arg0->limbs[0].unk23].unk12;
if (entry[1].unk23 == 0) {
    /* Use next here. */
}
```

Initializing `next` inside the guard instead produced the spill at `sp+0x30`.
Initializing it before the animation lookup and guard changes the compiler's
temporary allocation to `sp+0x34`, without moving the emitted `addiu s0,v1,0x24`
out of the guarded path. Changing declaration order alone also shifted other
locals, so initialization placement was the decisive change.

The walker and limb array use the existing `UnkF9230ShadowWalker` and
`UnkF9230ShadowLimb` definitions; no raw pointer arithmetic is needed. The full
ROM verification returned `build/bh.us.z64: OK`.
