# func_80130BA0_13FB50 Progress

## Closeness: 12370 (from 15110, 18% improvement)

## Changes Made

1. **Removed `u8 stage` variable** - was causing extra stack usage
2. **Used `D_80160058` directly** instead of caching through `stage` variable
3. **Changed first if condition** to use `D_80052B2C->unk30` directly instead of `baseScore` variable, to fix register allocation
4. **Changed `!= 0` to `> 0`** for the `D_80160058` check - this fixed `beqzl` → `blezl` instruction
5. **Added `if(1){}` blocks** around init block statements to prevent instruction reordering
6. **Reused `baseScore` variable** throughout for the tally vs animate logic

## Key Differences Remaining

1. **Stack frame**: 0x60 vs target 0x50 (+16 bytes) - likely from CFE temps and declared variables
2. **Global variable offset**: All shifted by 0x20 - linker/data layout issue
3. **Address caching**: Compiler caches D_8016006C and D_80160058 base addresses in registers
4. **Register allocation**: Different registers throughout

## Lessons

- `if(1){}` blocks prevent the compiler from reordering across basic blocks
- `> 0` generates `blezl` while `!= 0` generates `beqzl` for unsigned types
- Using `D_80052B2C->unk30` directly vs through a `baseScore` variable changes register allocation
- CFE temps from complex expressions increase stack frame
