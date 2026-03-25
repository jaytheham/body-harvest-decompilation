### Stubborn `addiu v0, s0, 8` sub-pointer after first jal in two-call loop

When a loop body calls two functions back-to-back with the **same three struct
fields** as arguments, the target may generate a sub-pointer materialisation
(`addiu v0, s0, 8`) before the second call's argument loads, while current C
produces direct offsets (`lh a0, 8(s0)` etc.).

**Pattern:**
```asm
; first call
lh      a0, 8(s0)
lh      a1, 0xa(s0)
lh      a2, 0xc(s0)
jal     func_first
lbu     a3, 0x14(s0)

; sub-pointer for second call  ← target only
addiu   v0, s0, 8
lh      a0, 0(v0)
lh      a1, 2(v0)
lh      a2, 4(v0)
sw      s1, 0x10(sp)   ← 5th arg before jal (consequence of extra instruction)
jal     func_second
li      a3, 0xa        ← a3 in delay slot
```

**Without** the `addiu v0, s0, 8` the compiler instead emits:
```asm
lh      a0, 8(s0)
lh      a1, 0xa(s0)
lh      a2, 0xc(s0)
li      a3, 0xa        ← a3 before jal
jal     func_second
sw      s1, 0x10(sp)   ← 5th arg in delay slot
```

**Root cause:** IDO's GVN pass CSEs `p[0]` / `(&entry->unk8)[0]` back to the
already-computed `8(s0)` offset, even when the C source explicitly assigns a
pointer `p = &D_arr[s1].unk8` or `p = (s16 *)&D_arr[s1] + 4`.  The sub-base
materialisation in the target is an internal codegen decision that IDO makes
under specific (unknown) conditions when the same set of fields is loaded
twice in one loop iteration across two separate jals.

**Attempts that all give score 355 (no addiu):**
- Inline: `func_second(D_arr[s1].unk8, D_arr[s1].unkA, D_arr[s1].unkC, ...)`
- Inner-block pointer: `{ s16 *p = &D_arr[s1].unk8; func_second(p[0],...); }`
- Function-scope pointer (declared last): `s16 *p; ... p = &D_arr[s1].unk8;`
- Explicit arithmetic: `p = (s16 *)&D_arr[s1] + 4;`
- `(&D_arr[s1].unk8)[0]` subscript form
- Changing `func_first` return type (void → s16)

**Best match (score 355):** Use inline direct field access with no pointer
variable. This gives correct frame size (0x38) and correct register
allocation; only the sub-pointer and the resulting instruction scheduling
(`sw s1, 0x10(sp)` before jal vs in delay slot) remain different.

```c
while (s1 != -5 && s1 != -6) {
    func_first(D_arr[s1].unk8, D_arr[s1].unkA, D_arr[s1].unkC, D_arr[s1].unk14, 0);
    func_second(D_arr[s1].unk8, D_arr[s1].unkA, D_arr[s1].unkC, 0xA, s1);
    s1 = D_arr[s1].unk4;
}
```

**Note:** Note that `inline-struct-ptr-cse-vs-named-pointer-register-order.md`
applies to single-call loops; this two-call case is a distinct pattern.
