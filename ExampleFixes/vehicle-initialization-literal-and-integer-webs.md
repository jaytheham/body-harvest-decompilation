`incorrect ASM` in `func_800FCA5C_10BA0C`: the vehicle-type radius loop starts one entry too low; the named scale-object load precedes the pointer setup; the slot byte expression delays the direction store and shifts later temporary registers. The final fuel comparison has reversed operands:

```asm
bnel $v0, $s6, complex_fuel
```

-> `code changed`: Start the post-decrement type loop at the one-past element, so the body processes all twenty entries, 19 through 0:

```c
for (typeWalker = &vehicleTypes[0x14];
     typeWalker-- >= &vehicleTypes[1];) {
    /* Existing radius calculations. */
}
```

Generate the scale literal with `scale = 0.01;`, on its own physical source line, followed by `i = 127; do {` on one line. Remove its `D_80144A78_153A28` placeholder; move the following placeholder doubles into `101840_vehicle_init_late_rodata.s`, attached as a second input to the subsequent respawn assembly fallback. Keep the preceding animation constants in their existing support file.

Narrow the slot expression at its byte-field consumer, and use unsigned-then-signed word views for the fuel comparison:

```c
vehicle->unk46 = ((u8)i & 0x3F) | (vehicle->unk46 & 0xFFC0);
/* ... */
if ((s32)(u32)spawnValue == 1) {
    vehicle->unk3C = 1;
}
```

The byte cast removes no logic and adds no instructions; it restores the early direction store and the target temporary registers. The comparison's two word casts add no instructions and preserve equality with 1 for every signed-halfword value. A plain unsigned-word comparison instead creates a separate unsigned constant, while a halfword view adds an unwanted `andi`.

-> `correct ASM`: The constant load and pointer setup match, the direction store precedes the next spawn-field reads, and the comparison uses the cached constant first:

```asm
sh   $t9, 0xE($s0)
lh   $t9, 6($s1)
lh   $t7, 0xE($s1)
/* ... */
bnel $s6, $v0, complex_fuel
```

All 420 function instructions match. The normal US and EU whole-ROM checks pass.
