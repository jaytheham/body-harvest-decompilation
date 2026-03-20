### Local `StructType *ptr` variable causes t6/t7 register cycle shift in loops

When a function holds an intermediate `StructType *ptr = &globalArray[arg0]` local variable and uses `ptr->field` throughout the function, IDO's register allocator shifts the scratch register cycle (t6/t7/t8/t9) compared to the target, which accessed `globalArray[arg0].field` directly every time.

**Fix**: Remove the local pointer variable and access the global array directly:

```c
/* Instead of: */
AlienInstance *alien = &alienInstances[arg0];
if (alien->unk36 == arg2) { ... }
func(alien->unk36);
alien->unk36++;

/* Use: */
if (alienInstances[arg0].unk36 == arg2) { ... }
func(alienInstances[arg0].unk36);
alienInstances[arg0].unk36++;
```

IDO at -O2 still keeps the base pointer in a saved register (s5) — the `.s5 = &alienInstances[arg0]` computation appears exactly once. The difference is only in which register acts as "the most-recently-freed temp" before the inner loop, which shifts the t6/t7/t8/t9 cycle by 1 when a named pointer variable is present. This was observed in `func_80081F18_90EC8` (score improved from 50→0).

Also: for a `bne` register ordering mismatch where the target has `bne fieldReg, paramReg` but C generates `bne paramReg, fieldReg`, reverse the C comparison operands:

```c
/* Instead of (generates bne s1,t7): */
if (arg2 == alien->unk36) { return (s8)arg2; }

/* Use (generates bne t7,s1 correctly): */
if (alienInstances[arg0].unk36 == arg2) { return (s8)arg2; }
```
