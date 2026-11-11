# Incorrect ASM

In `func_8009811C_A70CC`, converting the previous marker's signed
coordinates directly in the call allowed IDO to schedule the size
load before X.

```asm
lb      t9,2(v0)
...
lb      t8,0(v0)
```

# Code changed

Read X and Y into word locals before scaling by 256 in the call.

```c
var_t0 = D_8013D528_14C4D8_Label->unk0;
var_a1 = D_8013D528_14C4D8_Label->unk1;
func_800966EC_A569C(NULL, var_t0 * 256, var_a1 * 256,
    D_8013D528_14C4D8_Label->unk2 * D_8014ED1C, 1);
```

# Correct ASM

The loads occur in X, Y, size order. The target still differs in
temporary register choices and the placement of the argument store.

```asm
lb      a1,0(v0)
lb      a2,1(v0)
...
lb      t8,2(v0)
```

## Signed Y coordinate


### Incorrect ASM

```asm
sll     t9,a2,0x18
sra     a2,t9,0x10
```

### Code changed

Keep only the Y coordinate in an `s8` local and pass the
scaled X field directly to the draw call.

```c
previousY = D_8013D528_14C4D8_Label->unk1;
func_800966EC_A569C(NULL, D_8013D528_14C4D8_Label->unk0 * 256,
    previousY * 256, D_8013D528_14C4D8_Label->unk2 * D_8014ED1C, 1);
```

### Correct ASM

```asm
sll     t7,a2,0x18
sra     a2,t7,0x10
```

The shift uses the target temporary register. The target's preceding
load into `t9` and intervening argument store still differ.
