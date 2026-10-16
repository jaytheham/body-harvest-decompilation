### Load joint indices into scalars before filling an animation array

`func_802D86D8_257E18` matches all 600 instructions and passes the full US ROM checksum.

Build its eleven-joint chain using separate signed halfword locals, then copy those locals into the animation array. Filling the addressed array while traversing the chain forces repeated `sh`/`lh` pairs before dependent node loads. Scalar traversal lets IDO retain each signed byte result in a register and defer the array stores until the complete chain is known.

The original reconstruction also omitted array element 4 and confused elements 7 and 8. Element 7 follows the C child of node 6; element 8 follows the D child of node 5. The final two joints descend from element 8.

Keep the eleven scalar indices first, followed by the word angle, shared helper-result word, eleven-element halfword array, three output-coordinate words, and two floats. Read node fields directly as `D_8014DD50[joint].field`. Removing five named node pointers and the branch-local alien-type pointer removes their compiler-reserved homes while IDO still caches the shared node addresses across calls. This restores the target `0xC0` frame, array at `sp+0x88`, and coordinate outputs at `sp+0x84/0x80/0x7C`.

For the two three-node effect coordinates, the matching grouping is:

```c
D_8014DD50[joint6].unk0 +
    (D_8014DD50[joint5].unk0 + D_8014DD50[joint7].unk0)
```

Apply the same grouping to Y and Z, and the equivalent nodes 3, 2, and 4 in the other branch. IDO reassociates this into the target child-plus-ancestor addition followed by the parent addition. The flat `child + parent + ancestor` spelling has identical opcodes, order, stack slots, and arithmetic, but reverses twelve halfword-load destination registers. This grouping removed the final score of 60.

Pass the signed word angle directly to `sins` and `coss`; their `u16` parameters provide the target mask. The later inline angle expressions instead need explicit `(u16)` casts to retain their argument moves. Use the existing `unkAUnsigned` field alias for the rotating node's `lhu`, and place the instance-angle increment before the node-angle increment to reproduce their load/store schedule.
