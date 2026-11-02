# Incorrect ASM

`func_800AB8CC_BA87C` kept the parent ID/first RNG sample in a caller register and spilled it around the other RNG calls. The target uses `lbu s1,0x25(s0)` and later `andi s1,v0,0xffff` with the same saved register. The native full diff was 2803.

# Code changed

Keep a named typed child pointer and use structured `if/else` branches with one exit. A value guard at the common exit reads the child pointer and three separately masked views of the parent/RNG word. IDO emits no guard instructions; its measured allocation benefit rises from 5 to 8, exceeding the cost of opening the saved register. Reuse the height scratch for the fourth RNG return and set the final inactive flags before the timer.

# Correct ASM

`lbu s1,0x25(s0)` and `andi s1,v0,0xffff` now match. The `0x78` frame, helper outputs at `sp+0x68/0x64/0x60`, cached height at `sp+0x70`, and blood-effect instruction sequence match. The full diff is 142; the remaining parent spill, RNG halfword homes, and prefix allocation are not yet exact, so the function retains its assembly fallback.
