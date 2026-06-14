### Else branch `*dst1 = *src; *dst2 = *src;` vs `temp = *src; *dst1 = temp; *dst2 = temp;`

When the else branch of an if/else accesses the same dereferenced pointer value multiple times:

**Problem:**
```c
// Target assembly loads src from stack in else branch, does *src once into v0, reuses v0
// But current C produces: pre-loads src pointer before branch, double-dereferences in else
} else {
    *arg3 = *arg2;  // direct deref
    *arg4 = *arg2;  // direct deref (again)
}
```

This generates:
```asm
; Pre-load arg2 pointer into a0 before the branch (extra instruction)
lw   a0, 0x38(sp)   ; extra load not in target
beq  v0, at, else_label
move v1, v0
; ... if body ...
else_label:
lh   t4, 0(a0)      ; *arg2 via pre-loaded pointer
sw   ...
lh   t6, 0(a0)      ; *arg2 again (redundant second deref!)
sw   ...
```

**Fix:**
```c
} else {
    s16 temp_v1 = *arg2;  // intermediate temp
    *arg3 = temp_v1;       // reuse the loaded value
    *arg4 = temp_v1;
}
```

This generates the target's expected code:
```asm
beq  v0, at, else_label
move v1, v0
; ... if body ...
else_label:
lw   t4, 0x38(sp)   ; load arg2 from stack
lh   v0, 0(t4)      ; *arg2 into v0 (once)
sh   v0, 0(t5)      ; *arg3 = v0
lw   t6, 0x40(sp)   ; load arg4
sh   v0, 0(t6)      ; *arg4 = v0 (reuses v0)
```

**Stack offset adjustment with `s16` padding:**
If adding the temp variable shifts a local's stack offset (e.g., `sp2A` from 0x2A to 0x2E), add two `s16` padding variables BEFORE the shifted variable in the declaration order:

```c
s16 pad1;    // pushes sp2A 4 bytes lower
s16 pad2;    // (two s16 = 4 bytes)
s16 sp2A;    // now at correct offset (0x2A)
s32 temp_v0;
s16 temp_v1;
```

The first-declared locals get the highest stack offsets (closest to saved registers). Padding before the variable pushes it to a lower offset.
