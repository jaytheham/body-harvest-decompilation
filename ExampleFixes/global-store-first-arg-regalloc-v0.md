### Global store as first function argument forces v0 allocation

When a function stores `arg0` to a global address variable (e.g. `D_8006AA70 = arg0`)
**before** calling `func_800101F0_10DF0(arg0, &ROM_start, size)`, the target assembly
uses `v1` for the ROM start address temp and `v0` for the global's address —
not the other way around.

**Symbol**: the target uses `lui v0, hi(D_8006AA70)`, `addiu v0, lo`, `sw a0, 0(v0)`.
**Wrong form** (separate statement):
```c
D_8006AA70 = arg0;
func_800101F0_10DF0(arg0, &D_43A340, &D_4EBF80 - &D_43A340);
```
This gives `lui v0, hi(D_43A340)` (v0 for D_43A340!) and `lui at, hi(D_8006AA70)`
(at for the global, folded form). Score ~487.

**Fix**: embed the global assignment as the **first function argument**:
```c
func_800101F0_10DF0(D_8006AA70 = arg0, &D_43A340, &D_4EBF80 - &D_43A340);
return (&D_4EBF80 - &D_43A340) + arg0;
```
IDO processes the first argument (including side effects) before evaluating
remaining arguments. The global's address computation claims v0 first; then
`&D_43A340` for a1 uses v1 (v0 already in use). Score drops to 30.

**Stack slot for size**: use no declared local variable so size becomes a cfe-temp
at sp+0x1C (frame-4). A declared `s32 size` local would go to sp+0x18 (frame-8). 

**Residual 30-point difference**: `sw a0, 0(v0)` and `sw a2, 0x1c(sp)` are
swapped around the jal delay slot. The target (correct) has the global store
before the jal and size save in the delay slot; the above C form has them reversed
due to LIFO instruction scheduling priority for the CSE spill instruction.
The permuter also could not improve beyond score 30 from this basis.

**Pattern context**: applies to a family of identical loader functions that each:
1. Compute `size = &ROM_end - &ROM_start` (byte delta between ROM segment boundaries)
2. Store `arg0` to a `D_8006AA**` RAM variable (keeps track of load offset)
3. Call `func_800101F0_10DF0(arg0, &ROM_start, size)` to initiate a DMA transfer
4. Return `size + arg0` (new offset after the loaded segment)
