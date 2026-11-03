# Retaining a guard around a folded identity operation

Partial result in `func_800966EC_A569C`, IDO 5.3, `-O2 -mips2 -32`. The function remains unmatched.

The target has a comparison against mode 1 followed by a branch whose destination is immediately after its delay slot. An empty C `if` disappears entirely. Folding an identity operation on a word-sized temporary later in optimization retains the comparison and branch:

```c
s32 mode;

mode = arg4;
if (mode != 1) {
    mode += mode * 0;
}
/* Vertex setup. */
if (mode == 4) {
    /* Existing animated-marker body. */
}
```

`arg4` remains an `s16` parameter. The word temporary avoids the halfword conversions produced by identity operations on the parameter itself. Addition, XOR, OR with a zero product, and multiplication by one all produced the same assembly in this draft.

The stock linked score improved from 2451 to 2338. The missing `li at,1` and `beq` appeared, but two redundant moves remained: one in the branch delay slot and one in its fallthrough body. The resulting function is eight bytes longer than the target; this does not establish a complete match.

A structured `while` with a `break` was also identical. Pointer-zero-stride forms could reduce the overall score while still omitting the branch and losing useful setup instructions; inspect the actual instruction differences before retaining them.


## Remove the folded guard's redundant moves

Incorrect ASM: the word temporary used by both the identity guard and the later mode-4 test creates two `move a1,v0` instructions, making the function eight bytes too long.

Code changed:

```c
mode = arg4;
if (mode != 1) {
    mode += mode * 0;
}
if (mode) {}
/* Vertex setup. */
switch (arg4) {
case 4:
    /* Animated marker. */
    break;
default:
    /* Static marker. */
}
```

Correct ASM: `lh a1,0x42(sp); li at,1; ...; beq a1,at,+1` with the coordinate store in the delay slot and no redundant moves. The empty read keeps the folded identity live without making the later real test depend on its phi value. The switch also restores the four vertex register roles. Moving `wave` before `scratch` restores its `sp+0x1e` home; shifting both coordinates before scaling restores the opening load/conversion order. The function now has the target size `0x4d8` and score1718, improved from2338; it remains unmatched because later scheduling differs.
