### s16* 8-byte stride do-while strip-mining and double-epilogue interaction

**Problem:** A do-while loop iterating over an s16* with step 4 (8 bytes per iteration) and 4 halfword stores per iteration triggers IDO strip-mining (score 7000+). The `continue;` trick (or `ptr++; ptr--;`) prevents strip-mining but introduces a SECOND unreachable function epilogue when the function also has a `for(;;)` infinite loop after the do-while.

**Strip-mining pattern (wrong, score 7000+):**
```c
s16 *ptr = D_80267080;
do {
    ptr += 4;
    ptr[-3] = 0;  /* offset -6 */
    ptr[-2] = 0;  /* offset -4 */
    ptr[-1] = 0;  /* offset -2 */
    ptr[-4] = 0;  /* offset -8, delay slot */
} while (ptr != (s16 *)&D_802B2080);
```

**With continue; trick (no strip-mining, score ~620):**
```c
ptr = D_80267080; do {   /* note: same-line init for correct scheduling */
    ptr += 4;
    ptr[-3] = 0;
    ptr[-2] = 0;
    ptr[-1] = 0;
    ptr[-4] = 0;
    continue;
} while (ptr != (s16 *)&D_802B2080);
```

**Critical same-line scheduling trick:**
Writing `ptr = D_80267080; do {` on the same line (with ptr initialized on the same line as `do {`) produces the correct "criss-cross" lui/addiu scheduling:
```
lui  v0, %hi(D_80267080)  <- ptr lui FIRST  
lui  v1, %hi(D_802B2080)  <- end lui SECOND
sw   ra, 0x1c(sp)
sw   a0, 0x20(sp)
addiu v1, v1, lo          <- end addiu FIRST (!) IDO completes loop-invariant first
addiu v0, v0, lo          <- ptr addiu SECOND
```
WITHOUT the same-line trick, addiu order is wrong (ptr/v0 addiu comes before end/v1 addiu).

**Double epilogue issue (unresolved, -16 bytes = score ~620):**
Any strip-mining prevention trick (`continue;`, `ptr++; ptr--;`, `if(0) expr;`) causes IDO to generate TWO unreachable function epilogues when:
1. The do-while loop has a prevention trick, AND
2. The function ends with `for(;;);` or similar infinite loop

This results in 16 extra bytes, shifting all subsequent jal addresses by 0x10.

The TARGET function has this loop without strip-mining and with only ONE epilogue. The mechanism by which the original programmer avoided both issues is unknown — possibly the code was structured differently, or compiled with a slightly different optimization context.

**Observed in:** `func_8000EFB8_FBB8` (core/FB00.c) — framebuffer clear + N64 thread setup function.

**Best achievable score:** ~620 (with continue; + same-line init). NOT a perfect match due to the double epilogue.
