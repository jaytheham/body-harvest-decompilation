incorrect ASM (`func_8007764C_865FC`, partial checkpoint):

```asm
beql    s4,t7,skip
```

-> code changed:

```c
type = obj->unk2;
group = type;
if (type != 0) {}
if (group == -1) {
    continue;
}
```

-> correct ASM for the sentinel comparison:

```asm
beql    t7,s4,skip
```

The explicit read emits no instruction and changes comparison operand ordering. The routine remains guarded because other register and constant-cache differences remain.
