`incorrect ASM`

In `func_800E5538_F44E8`, reading `entry->unk2` directly for both the condition and alpha assignment allocated the byte read to `v1`. The first absolute-value negation could then move into `v0` before that condition:

```asm
lbu   v1,2(a1)
lui   at,0x41e0
negu  v0,a0
beqzl v1,alpha_ready
mtc1  a3,f4
```

`code changed`

```c
s32 timer;

timer = entry->unk2;
if (timer != 0) {
    var_a3 = (s16)timer;
}
```

Cache the timer only for this alpha selection. Keep the later expansion reads through `entry->unk2`, preserving their reloads after the graphics writes.

`correct ASM`

```asm
lbu   v0,2(a1)
lui   at,0x41e0
beqzl v0,alpha_ready
mtc1  a3,f4
/* Nonzero timer narrowing and primitive-color setup. */
sw    t7,0(s0)
negu  v0,a0
mul.d f8,f6,f20
sw    t9,0(v1)
```

Every instruction, register, and instruction position matches. The subsequent shared-packet change removes the excess frame allocation; both ROM checksums pass.
