# Credits row guard and temporary lifetimes

`func_8007C4BC_4C96C` matches with a do-while loop whose `i > 0` guard covers only the color and fade setup. The row calculation, optional text draw, and index decrement remain outside that guard. The target's first `blez` branches into the middle of the loop, rather than past its end. Moving the condition inside the loop also removes an unwanted cached inner array address and reproduces the saved-register allocation.

Keep the initial character load in a named `s32 ch` before comparing it with `0x23`. A direct array-byte comparison assigned the value to a temporary register instead of `v0` and shifted subsequent temporary registers by one.

For the `u16` fade counter, use `fadeCounter--`. Combining subtraction with an explicit `& 0xFFFF` merged the narrowing into two instructions and moved the subtraction into a branch delay slot. Post-decrement preserves the target's separate subtraction, mask, and move.

The two row calculations use `(line + 0) + i`. Plain `line + i` reversed the source registers in three `addu` instructions; the arithmetic identity restores their order without adding instructions. This follows the pattern in `assignment-reordering-commutative-order.md`.

Verified with diff score 0 and `build/bh.us.z64: OK`.
