### s16* 8-byte stride do-while strip-mining and double-epilogue interaction

The function now matches in `core/FD80.c`. For the later scheduler's related
unreachable-tail alignment issue, see
[translation-unit alignment](scheduler-stack-guards-and-translation-unit-alignment.md).
The observations below describe the earlier investigation.

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
