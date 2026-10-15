### Eight-byte halfword loop: prevent strip-mining and order address setup

In `core/FD80.c`, adding `continue` at the end of the four-halfword-store do/while prevented IDO from strip-mining the loop. Initializing the pointer on the same line as `do` restored the target address-setup schedule.

**Code change:**
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
