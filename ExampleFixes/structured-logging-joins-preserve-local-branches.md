## Incorrect ASM

`func_80110FB4_11FF64`, ROM `0x1211F8`: the logging guard jumps directly to the shared helper and gains a likely delay slot.

```asm
bnezl   t2, .Lshared_1215FC
 lw     a0, 0xE8(sp)
```

## Code changed

Replace the logging arm's early `continue` with an `else` containing the remaining collision checks. Put the common `continue` at the end of the enclosing vehicle guard. Keep the helper call and coefficient update conditional and ordered:

```c
if ((spDA < spD6) &&
    !(arg0->unk20 & VEHICLE_FLAG_ON_BRIDGE) &&
    !(arg0->unk20 & VEHICLE_FLAG_UNDER_BRIDGE) &&
    ((f64)(spD6 - spD2) < ((f64)vehicleType->unk36 * var_f0)) &&
    (gridX = func_80108138_1170E8(arg0->unk0, arg0->unk2, arg0->unk4),
     var_f0 = D_80144D60_153D10.value, gridX != 0)) {
    if (arg1 == 0) {
        func_8010FAC8_11EA78(3, 0x800);
        func_8010FAC8_11EA78(2, 2);
    }
} else {
    /* Remaining collision checks. */
}
continue;
```

The structured join retains a register-load hint between its label and jump. UGEN's first label pass therefore preserves the logging branch's local destination. The hint produces no extra instruction at this join.

## Correct ASM

```asm
bnez    t2, .Llog_done_121214
 nop
/* Logging calls. */
.Llog_done_121214:
b       .Lshared_1215FC
 lw     a0, 0xE8(sp)
```
