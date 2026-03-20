### Float bit-copy (lw/sw instead of lwc1/swc1)

When the assembly copies float field bits with integer `lw`/`sw` rather than float `lwc1`/`swc1`, use explicit pointer casts:

```c
*(s32*)&dest->unkXX = *(s32*)&src->unkXX;
```

Statement order matters for scheduling. To get the `sw` delayed and fill a `mtc1` delay slot, put the next float computation _between_ the two copies:

```c
*(s32*)&arg0->unk24 = *(s32*)&arg0->unk30;  // copy 1
arg0->unk38 = (f32) temp->unk4;              // compute next before copy 2
*(s32*)&arg0->unk28 = *(s32*)&arg0->unk34;  // copy 2 fills mtc1 delay slot
```

### Float field struct types

Fields loaded with `lwc1` are `f32`, not `s32`. Defining a float-loaded field as `s32` produces mismatched register types. Check assembly load opcodes when defining struct members.
