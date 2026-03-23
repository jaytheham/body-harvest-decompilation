### Negate + shift of s16: no intermediate `(s16)` cast needed

When negating an `s16` field and then shifting right by 1, **do not** cast back to `(s16)` between the negate and the shift. The extra cast generates an `sll t, t, 0x10; sra t, t, 0x10` sign-extension pair that does not appear in the target.

IDO generates the correct `negu` + `sra` pair when no intermediate cast is present:

```c
// WRONG — generates extra sll/sra sign-extend:
arg1->unk26 = (s16)((s16)-arg1->unkA >> 1);

// CORRECT — direct negu + sra:
arg1->unk26 = -arg1->unkA >> 1;
```

The `sh` store instruction naturally truncates to 16 bits, so the outer `(s16)` on the assignment target is also unnecessary.

The assembly produced by the correct form:
```
lh    t1, 0xa(a2)     ; load s16 unkA
negu  t2, t1          ; 32-bit negate
sra   t3, t2, 0x1     ; arithmetic shift right 1
sh    t3, 0x26(a2)    ; store lower 16 bits
```

Pattern observed in `func_80103D18_112CC8`.
