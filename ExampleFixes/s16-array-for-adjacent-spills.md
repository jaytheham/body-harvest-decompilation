### s16 array for adjacent stack variables passed by reference

When two adjacent s16 variables are needed on the stack (e.g., `sp38` and `sp3A`), where:
- `sp38` is assigned a value and its address `&sp38` is passed to a function
- `sp3A` is assigned a separate value right before the call
- The called function reads both s16 values via the pointer (sp38[0], sp38[1])

**Problem:** Declaring as `s16 sp38; s16 sp3A;` may cause the compiler to treat `sp3A` as dead code and optimize the store away, since C doesn't know the function reads past the pointer. The compiler may also place them non-adjacently on the stack.

**Solution:** Use `s16 sp38[2];` to force them into adjacent stack slots with guaranteed liveness:
- `sp38[0]` = first value (sp58 or sp5A in the target)
- `sp38[1]` = second value (sp56 in the target)  
- `&sp38[0]` (or `sp38`) is passed as the pointer

**Important:** The declaration order matters for matching stack offsets. Keep `sp38[2]` after the variables that should be above it (higher offsets) and before variables that should be below (lower offsets).

**Example from `func_802D7B68_1F0878`:**
```c
s16 sp3E;
s16 sp34;
s16 sp38[2];  // sp38[0]=sp58/sp5A, sp38[1]=sp56
```

This gave CURRENT(1291) vs the original CURRENT(2747) by fixing:
1. `sp38[1] = sp56` (the sp3A store) was no longer optimized away
2. The store order before the first jal now had sp56 in the delay slot
3. The addiu a3 for &sp38 was scheduled in the correct branch delay slot

**Note:** This approach may increase the stack frame by 8 bytes (from 0x60 to 0x68) if the array triggers alignment padding. To keep the frame at 0x60, place the array after all related variables.

### Adjacent random-result spills without passing an address

This also applies when neither local's address is passed to a function.
In `func_8008C0F8_9B0A8`, the declarations `u8 typeEntry; s16 randA;
s16 randB;` produced otherwise identical assembly, but placed `randA` at
`sp+0x2C` instead of the target's `sp+0x28`. `randB` was already at
`sp+0x2A`, and `typeEntry` was at `sp+0x2F`.

Replacing the two scalar declarations with `s16 rand[2];` after
`typeEntry` placed the elements at `sp+0x28` and `sp+0x2A`, keeping the
frame size and all instruction scheduling unchanged. The full ROM
checksum then matched (`build/bh.us.z64: OK`).

Keep the signed remainder expression `(s32)(u16)rand[i] % 128` when the
target has `lhu` followed by signed-remainder correction branches.
Simplifying it to an unsigned mask changes the target instruction sequence.
