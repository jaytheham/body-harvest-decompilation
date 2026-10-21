`incorrect ASM`: In `func_8010D4EC_11C49C`, `while (i--)` loops with two named angle absolute values and `return !!(sideFlags[0] != sideFlags[1]);` give the correct loop registers, but the final comparison uses `xor $v1,$t9,$t2` and `sltu $v0,$zero,$v1`. Removing the double negation alone changes the loop registers.

-> `code changed`: Keep the first angle absolute value in its scalar and inline only the second one:

```c
absFirst = firstAng >= 0 ? firstAng : -firstAng;
if ((secondAng >= 0 ? secondAng : -secondAng) < absFirst) {
    chosenCorner = firstCorner;
} else {
    chosenCorner = secondCorner;
}
```

Use the ordinary `while (i--)` loops and direct `return sideFlags[0] != sideFlags[1];`. Replace the now-unused second-absolute-value word with padding to retain the other live stack homes.

-> `correct ASM`: The loop registers remain exact, the angle comparison retains its target instruction order, and the final comparison becomes `xor $v0,$t9,$t2` followed by `sltu $v0,$zero,$v0`. IDO's implicit integer temporary has three live ranges and a priority below the first flags cursor, while the final XOR has a separate allocation. The complete function remains unmatched.

`incorrect ASM`: In the same ordinary-loop candidate, the first edge slope and intercept use `sp+0x44/0x40` instead of the target's `sp+0x48/0x44`.

-> `code changed`: Place the existing initial-query `f32 x0` declaration in the unused word immediately after `s32 distSq`, replacing that word and removing its former declaration lower in the float locals. Keep the other declarations in order.

-> `correct ASM`: The source reservation shrinks by four bytes while all explicit live stack homes stay fixed. The first coefficients now store and reload at `sp+0x48/0x44`, with no new instructions or loop scratch variable. Eight pointer/camera spill accesses still differ in the complete function.
