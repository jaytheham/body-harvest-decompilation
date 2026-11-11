# Incorrect ASM

```asm
lbu     t0,0x1a(s0)
slti    at,t0,2
```

# Code changed

Read the alien type directly in the marker predicates in
`func_8009811C_A70CC`. IDO coalesces the repeated field accesses and
uses the target register for the resulting single load and all three
comparisons.

```c
if ((alien->typeIndex >= 2) && (alien->hitPoints > 0) &&
    (alien->typeIndex != 0x1A) && (alien->typeIndex != 0x18)) {
    func_80095D4C_A4CFC(alien->unk0, alien->unk4, 0xE6, 0xF, 0xF);
}
```

# Correct ASM

```asm
lbu     v0,0x1a(s0)
slti    at,v0,2
```
