`incorrect ASM` in `func_8010D4EC_11C49C`: initializing the four-corner countdown immediately before its loop lets IDO remove the entry check and delays the flags cursor and global-base setup.

```asm
bc1fl   corrected_x
sub.s   $f6,$f12,$f22
/* ... */
lw      $a0,-0x62a4($a0)
li      $s0,3
addiu   $v0,$sp,0xd4
/* No entry beqz. */
```

-> `code changed`: initialize the countdown before the conditional X correction, then use an ordinary post-decrement `while` for the corner scan.

```c
i = 4;
if ((x0 <= arg0 ? arg0 - x0 : -(arg0 - x0)) < 5.0f) {
    x0 = arg0 + 5.0f;
}
slopeMain[0] = (z0 - arg1) / (x0 - arg0);
slopeMain[0] = slopeMain[0];
interceptMain = arg1 - slopeMain[0] * arg0;
while (i--) {
    sideFlags[i] = interceptMain <
        ((D_80159D5C->unk54 + D_80159D98[i]) -
         slopeMain[0] * (D_80159D78[i] + D_80159D5C->unk4C));
}
```

-> `correct ASM`: the setup, entry check, all instruction ordering and registers now match. The remaining spill offsets were subsequently fixed by the empty-test pattern in `collision-cache-spill-order.md`.

```asm
addiu   $v0,$sp,0xd4
bc1f    corrected_x
lui     $a0,0x8016
/* ... */
li      $v1,4
/* ... */
li      $s0,3
/* ... */
beqz    $v1,scan_finished
swc1    $f0,0xe0($sp)
lw      $a0,-0x62a4($a0)
```
