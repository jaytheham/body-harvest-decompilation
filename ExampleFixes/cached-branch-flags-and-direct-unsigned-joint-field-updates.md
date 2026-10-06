# Cache branch flags and unsigned joint fields

Matched Siberia `func_802DEB5C_2C0F8C` (ROM `0x2C0F8C`).

Repeated instance-field tests produced a likely branch and a duplicate `andi` for the else branch. Copy the flags into an existing signed word local once, then test that snapshot in both branches:

```c
flags = alienInstances[arg0].unk20;
if (flags & ALIEN_FLAG_UNKD) {
    /* death update */
} else {
    if (flags & ALIEN_FLAG_UNKC) {
        /* movement update */
    }
}
```

This emits the target ordinary `beqz`, with the second flag mask in its delay slot, and eliminates the duplicate mask later.

An explicit `u16` angle local assigned the angle to `v1` and its joint pointer to `a0`, opposite to the target. Read and update the unsigned halfword struct member directly, and cache the next joint index before the comparison:

```c
rootJoint = D_8014DD50[alienInstances[arg0].unkC].unkC;
childJoint = D_8014DD50[rootJoint].unkD;
if (D_8014DD50[rootJoint].unk8Unsigned >= 0x7D1) {
    D_8014DD50[rootJoint].unk8Unsigned -= 0x7D0;
    D_8014DD50[childJoint].unk8Unsigned += 0x7D0;
}
```

IDO keeps the joint pointer in `v1`, the angle in `a0`, and the child index in `a1`, with the child load before the branch. The unsigned member also changes the second joint's incorrect `lh` to the target `lhu`.

After the logic matched, the ground-height local was at 0x4C instead of 0x48. Two unused signed-short pads after the type byte moved it to 0x48. Removing the named alien pointer and using direct indexed accesses retained the target 0x50 frame; keeping the pointer with those pads enlarged the frame to 0x58. Sharing flags and height through a word union prevented scalar flag caching and added a store, so separate scalar locals are needed here.

The original call name `func_8008EB20_5EFD0` belongs to the frontend overlay and has seven parameters. Use the gameplay implementation `func_8008EB20_9DAD0`, which has the required three parameters and the same RAM address. Overlay symbol annotations can select the wrong ROM-suffixed name; check the actual implementation and prototype rather than adding spurious call arguments.

Use the existing `u8` parameter declaration and remove repeated `& 0xFF` masks. Final function diff was zero and the cleaned source reported `build/bh.us.z64: OK`.
