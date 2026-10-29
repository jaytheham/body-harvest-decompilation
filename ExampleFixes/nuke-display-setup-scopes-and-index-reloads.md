`incorrect ASM`: In `func_800D7284_E6234`, keeping texture setup in the culling branch without its own scope keeps the effect index and entry pointer in saved registers. Each model call then narrows the saved index with shifts:

```asm
sll     a0,s1,0x10
sra     t8,a0,0x10
move    a0,t8
jal     func_800D702C_E5FDC
```

-> `code changed`: Keep the index as an `s16` scalar. Enclose the five initial graphics macros, ending before the first `func_800D702C_E5FDC` call, in eight nested `if (1)` scopes. A single scope restores the index reloads; eight also split the cached entry pointer and remove both saved-register allocations. One through seven scopes do not reproduce the complete initial instruction schedule.

-> `correct ASM`: The first model call loads the index in its delay slot, and the next four calls load the same halfword before calling. The original `0x90` stack frame and initial floating-point instruction order also return. The complete function remains unmatched: its entry/payload spill offsets and payload-pointer register still differ.

```asm
jal     func_800D702C_E5FDC
lh      a0,0x8e(sp)
lh      a0,0x8e(sp)
jal     func_800D702C_E5FDC
li      a1,1
lh      a0,0x8e(sp)
jal     func_800D702C_E5FDC
li      a1,2
```
