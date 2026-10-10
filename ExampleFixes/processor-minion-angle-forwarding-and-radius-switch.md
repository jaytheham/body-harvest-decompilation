# Processor minion animation: unsigned angle forwarding and switch fall-through

Matched `func_800A41B0_B3160` with IDO 5.3 `-O2 -mips2 -32`.

Write the first skeleton node's angle directly, then negate its unsigned
halfword field for the second node:

```c
D_8014DD50[armA].unk6Unsigned = (-alienInstances[arg0].unk2C << 9) + 0x2000;
D_8014DD50[armB].unk6 = -D_8014DD50[armA].unk6Unsigned;
```

A separate `s16` angle temporary put the scalar in `v0`, where the target
keeps the first node's address. Reading the signed field after the store
fixed that address allocation but emitted an extra `lh`. Reading the
unsigned field lets IDO forward the stored value without the reload or
sign extension. This also restored the target's later health-check branch
delay slots and temporary registers. Apply the same form to `timer << 7`.

For the radius switch, place cases 1 and 4 before the final default and
omit the default's `break`:

```c
switch (currentLevel) {
case 1:
    node1 = 320;
    break;
case 4:
    node1 = 200;
    break;
default:
    node1 = 250;
}
```

Adding that last `break` removes two target instructions and hoists the
wrong radius constant into a branch delay slot. Omitting it preserves all
three target exit branches, including the branch immediately before the
common continuation.

The final residual was entirely stack placement. After the two float
direction locals, declare `s16 rootNode`, `s16 chain`, `s16 node1`, then
`u16 randA`. An `s32` root index preserves the instructions but moves the
compiler-generated spills four bytes too low. The short root index and
this declaration order place `randA` at `sp+0x64` and the spills at the
target offsets without changing the `0x98` frame.

Verification: function comparison score 0 and full ROM build
`build/bh.us.z64: OK`.
