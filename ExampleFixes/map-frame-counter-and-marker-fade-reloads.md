# Frame counter

## Incorrect ASM

The map loop's compound increment kept the global address in `v0`.

```asm
lui     v0,0x8005
addiu   v0,v0,0x2ad8
lw      t8,0(v0)
...
sw      t7,0(v0)
```

## Code changed

Bind the write alias to `D_80052AD8` in both linker inputs.

```c
D_80052AD8_MapWrite = D_80052AD8 + 1;
```

## Correct ASM

```asm
lui     t6,%hi(D_80052AD8)
...
lw      t6,%lo(D_80052AD8)(t6)
lui     at,%hi(D_80052AD8)
...
sw      t7,%lo(D_80052AD8)(at)
```

# Marker fade

## Incorrect ASM

Reusing the fade loaded for the sound test moved the fade address into
the case-two branch's delay slot.

```asm
beq     a0,at,draw_red
 lui    at,%hi(D_8014ED18)
```

## Code changed

Bind `D_8014ED18_Marker` to `D_8014ED18` in both linker inputs. Read
that alias when scaling the marker after the color switch.

```c
func_800966EC_A569C(NULL, sp30C->unk0 << 8, sp30C->unk1 << 8,
                    temp_t3 * D_8014ED18_Marker, 1);
```

## Correct ASM

The branch-likely delay slot loads the display-list pointer for case two.

```asm
beql    a0,at,draw_red
 lw     v1,0(s2)
```

# Camera transition fade

## Incorrect ASM

The transition retained the address of the active fade across its read
and zero store, giving both instructions the same base register.

```asm
lui     v0,%hi(D_8014ED18)
addiu   v0,v0,%lo(D_8014ED18)
lwc1    $f6,0(v0)
...
swc1    $f24,0(v0)
```

## Code changed

Use the existing fade read alias when copying the fade to the previous
marker, before clearing the active marker.

```c
D_8014ED1C = D_8014ED18_Marker;
D_8014ED18 = 0.0f;
```

## Correct ASM

```asm
lui     at,%hi(D_8014ED18)
lwc1    $f6,%lo(D_8014ED18)(at)
...
lui     at,%hi(D_8014ED18)
swc1    $f24,%lo(D_8014ED18)(at)
```
