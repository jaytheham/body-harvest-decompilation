# Addressed pointer parameters can affect unrelated pointer reloads

In the intermediate implementation of `func_801052E8_114298`, IDO kept the
vehicle-type pointer in `t1` throughout the steering and force calculations.
The target instead reloads that pointer from `sp+0x88` at several branch joins.
Changing the vehicle-type local itself to an array or taking its address made
other parts of the function worse.

Taking the address of the controller pointer parameter changed this behavior
without adding instructions. A single identity access in the jump-button test
was sufficient:

```c
((&arg1)[0]->button & 0x8000)
```

The incoming parameter already has a home at `sp+0x94`. This access reproduced
the target's vehicle-type reloads and its initial `lw a0,0x4C(type)` register
assignment. An empty `if (&arg1) {}` and `arg1 = (&arg1)[0]` gave the same result.
By contrast, `(void)&arg1` was discarded and did not preserve the effect.

This is a compiler-shaping technique, not a gameplay requirement. Verify it in
the complete translation unit with the normal build: an addressed parameter
can change register allocation and pointer caching far from its first use.
The final complete function passes the normal full-ROM checksum with this
addressed-parameter access retained.

## Source and destination aliases across an error branch

`func_800706E8_40B98` matches with a signed halfword mission parameter and an empty `do` loop whose condition is `index-- && D_800D6DC0[index].unk16`. Capture the source template pointer before the no-slot error branch, then assign a second source pointer from that capture after the branch. Derive the destination directly from its named array after the branch.

The reverse arrangement (destination captured before the branch, source indexed after it) reproduces all preceding instructions but leaves three final instructions in the wrong order. The correct arrangement permits the parameter-home halfword load before the final destination store, while keeping the selected-mission global load after the store. It also preserves serial source-load/destination-store field copies; deriving both pointers only after the branch batches those loads instead.

The source pointer alias is intentional compiler shaping. Removing it, changing which pointer crosses the error branch, or changing the parameter to a word changes the assembly. Keep field `unk10` assigned before `unk12` and `unk14`, and keep switch arms ordered default, 2, 1. Verified with the complete translation unit and `build/bh.us.z64: OK`.
