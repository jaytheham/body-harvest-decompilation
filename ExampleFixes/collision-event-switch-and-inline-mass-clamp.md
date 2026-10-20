`incorrect ASM` (`func_8010FAFC_11EAAC`, clamped mass shares the impact register):

```asm
li      s0,0x1770
multu   t8,s7
mflo    t0
addu    t1,s6,t0
lhu     v0,0x32(t1)
slti    at,v0,0x1771
bnez    at,clamped
nop
b       clamped
move    s0,v0
clamped:
mtc1    s0,$f10
```

-> `code changed`:

```c
/* Replace the clamped weight local, its overwrite, and speed = weight. */
speedF = func_800FB11C_10A0CC(arg0);
speed = (s32)((f64)((f32)(vtype[arg0->unk1A].unk32 >= 0x1771 ?
    vtype[arg0->unk1A].unk32 : 0x1770) * speedF) / scale);
other = (AlienInstance *)entry->unk4;
```

-> `correct ASM`:

```asm
li      v0,0x1770
multu   t8,s7
mflo    t0
addu    t1,s6,t0
lhu     v1,0x32(t1)
slti    at,v1,0x1771
bnez    at,clamped
nop
b       clamped
move    v0,v1
clamped:
mtc1    v0,$f10
```

`incorrect ASM` (generated constant and table precede the remaining placeholders):

```asm
ldc1    $f22,0x4ba0(at)
lw      t7,0x4ba8(at)
```

-> `code changed`:

```c
/* Remove the obsolete 3000.0 and switch-table definitions and externs. */
/* Place the remaining 0x178-byte constant prefix in .late_rodata attached
 * to the unchanged func_8010EF40_11DEF0 reference, before this C function.
 * Use func_8010C14C_11B0FC + offset for its embedded table's pointers.
 * This preserves both versions' symbol-relative addresses. */
#pragma GLOBAL_ASM("src.us/overlay_gameplay/outside/101840_late_rodata.s")
```

-> `correct ASM`:

```asm
ldc1    $f22,0x4d18(at)
lw      t7,0x4d20(at)
```

`incorrect ASM` (the C case IDs disagree with the original event table):

```asm
# Event 2 dispatches to coordinate copying rather than clearing flags.
.word   func_8010FAFC_11EAAC + 0xE0
```

-> `code changed`:

```c
/* Preserve body order, relabeling the twelve original C cases:
 * 1,2,3,4,5,6,7,8,9,10,11,12 -> 1,10,11,12,2,3,4,5,6,7,8,9.
 * Let the C switch generate the table after deleting its placeholder. */
```

-> `correct ASM`:

```asm
# Event 2 dispatches to the flag-clearing body.
.word   func_8010FAFC_11EAAC + 0x148
```
