# Pre-loading specIndex into local to fix `lbu` delay slot vs `sb` ordering

## Problem
When matching `func_802D7D08_257448`, the compiler put `sb v0, 0x6B(sp)` (storing the return value) in a `beq` delay slot, but the target had `lbu t0, 0x1A(s0)` (loading `alien->specIndex`) in that slot instead.

## Target assembly (desired):
```
2574d4: sb v0, 0x6b(sp)          # store return value to sp6B  
2574d8: beq a1, a0, 2574ec      # if (2 == return_val)
2574dc: lbu t0, 0x1a(s0)        # delay slot: pre-load specIndex
```

## Current assembly (wrong):
```
2574d4: beq a1, a0, 2574e8      # if (2 == return_val)  
2574d8: sb v0, 0x6b(sp)         # delay slot: store return value (wrong!)
```

## Root Cause
The compiler placed the `sb` (store to sp6B) in the `beq` delay slot because the specIndex load (`lbu`) hadn't been emitted yet — it was too far away in the C code. The original code pre-loaded `alien->specIndex` into a local variable right after the function call, causing the compiler to emit the `lbu` early enough that it could be placed in the delay slot.

## Solution
Add a `u8 specIdx` local variable and load `alien->specIndex` into it **immediately after the function call** and **before the if-condition**:

```c
// Before (wrong delay slot):
sp6B = func_80081F18_90EC8(arg0, 4, 5, sp6C, &D_802DFA38_25F178);
if ((sp6B == 2) || (sp6B == 4)) {
    if (sp6B == 2) {
        func_80128428_1373D8(alien, -alienSpecs[alien->specIndex].unk20, ...);
```

```c
// After (correct delay slot):
sp6B = func_80081F18_90EC8(arg0, 4, 5, sp6C, &D_802DFA38_25F178);
specIdx = alien->specIndex;  // <-- pre-load here
if ((sp6B == 2) || (sp6B == 4)) {
    if (sp6B == 2) {
        func_80128428_1373D8(alien, -alienSpecs[specIdx].unk20, ...);  // <-- use specIdx not alien->specIndex
```

## Key Insight
Moving a struct field access (`alien->specIndex`) into a local variable **before an if-condition** can cause the compiler to emit the load instruction early (in the `beq`/`bne` delay slot), matching the target's delay slot scheduling.
