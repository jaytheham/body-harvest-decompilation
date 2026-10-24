`incorrect ASM`

The init-then-conditional clamp in `func_800D7284_E6234` produces a likely branch and an extra argument carrier:

```asm
subu    v0,t8,t9
bgezl   v0,join
move    a0,v0
move    v0,zero
move    a0,v0
join:
andi    t6,a0,0xff
jal     func_800E35E0_F2590
move    a0,t6
```

-> `code changed`

Give both clamp arms explicit assignments and let the declared `u8` parameter perform the byte conversion:

```c
temp_a0 = 0xFF - (var_v0 * 2);
if (temp_a0 < 0) {
    var_v0 = 0;
} else {
    var_v0 = temp_a0;
}
func_800E35E0_F2590(var_v0);
```

-> `correct ASM`

```asm
subu    a0,t8,t9
bgez    a0,join
move    v0,a0
b       join
move    v0,zero
join:
andi    a0,v0,0xff
jal     func_800E35E0_F2590
```
