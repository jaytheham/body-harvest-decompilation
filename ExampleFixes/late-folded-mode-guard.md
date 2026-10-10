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

Reversing the `if` or using a ternary did not remove those moves. A structured `while` with a `break` was also identical. Pointer-zero-stride forms could reduce the overall score while still omitting the branch and losing useful setup instructions; inspect the actual instruction differences before retaining them.
