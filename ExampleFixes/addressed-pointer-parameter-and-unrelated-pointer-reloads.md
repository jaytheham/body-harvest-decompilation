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
