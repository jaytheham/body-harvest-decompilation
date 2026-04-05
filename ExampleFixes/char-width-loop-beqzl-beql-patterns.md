### Character-width loop: `beqzl` + `beql` branch patterns

When decompiling a text character-width-accumulation function with a two-byte-sequence path and a
skip-space path, the order of fallthrough vs. forward-branch matters greatly for `beqzl`/`beql`.

**Context:** A loop reads chars one at a time, accumulating widths. Special cases:
1. ch < 0x20: switch on control codes
2. ch >= 0xFD: two-byte sequence (next byte forms a combined 15-bit index)
3. ch == 0x20 AND result == 0: skip leading spaces
4. ch >= 0xC1: complex lookup via CJK index table
5. ch < 0xC1: simple lookup

#### Key structure findings

**1. Two-byte check: use `ch < 0xFD` (NOT `ch >= 0xFD`) as the if condition**

```c
/* WRONG — gives beqz (non-likely), two-byte path inline before normal chars */
if (ch >= 0xFD) {
    result += D_80031720_32320[((ch & 0x7F) << 8) + *(ptr + 1)) * 2 + 1];
    ptr++;
} else {
    /* normal char path */
}

/* CORRECT — gives beqzl (likely) with delay-slot lbu, two-byte path forward */
if (ch < 0xFD) {
    /* normal char path */
} else {
    result += D_80031720_32320[(((ch & 0x7F) << 8) + *(ptr + 1)) * 2 + 1];
    ptr++;
}
```

**2. Two-byte index: use `+` NOT `|`, and with correct parentheses**

```c
/* WRONG — generates `or` instruction */
((ch & 0x7F) << 8 | *(ptr + 1)) * 2 + 1

/* CORRECT — generates `addu` instruction */
(((ch & 0x7F) << 8) + *(ptr + 1)) * 2 + 1
```

**3. Space-skip: use `if (result != 0 || ch != 0x20)` to get `beql` with delay-slot load**

```c
/* WRONG — gives bne (non-likely, inverted direction, no delay slot load) */
if (result == 0 && ch == 0x20) {
    ch = *(ptr + 1);
    ptr++;
    if (ch == 0xA) break;
    continue;
}
if (ch >= 0xC1) { ... } else { ... }

/* CORRECT — gives beql (likely) with delay-slot lbu for the skip path */
if (result != 0 || ch != 0x20) {
    if (ch >= 0xC1) { ... } else { ... }
}
/* fall through (result==0 && ch==space): no width added, loop bottom advances ptr */
```

**4. Switch case ORDER in the jump table** (verified from ROM data, uncommon order)

```c
switch (ch) {
case 0x16: ptr += 1; break;          /* maps to first code block */
case 0x14: case 0x17: case 0x19:     /* shared: all map to same block */
    ptr += 2; break;
case 0x15: ptr += 3; break;
case 0x18: ptr += 4; break;          /* LAST case: falls through, no explicit branch */
}
```

**5. Outer control flow**: `if (ch >= 0x20) { ... } else { switch ... }` not the reverse.
The switch for control codes (ch < 0x20) must be the else branch to get it placed forward
in memory with a `bnez` forward-branch.

**Remaining known issue (unfixable in pure C)**:
The prologue `addu v0, t7, a0` (ptr directly to v0) vs target `addu a2, t7, a0; ... or v0, a2, zero`
(delay-slot transition via a2) cannot be reproduced with C89 code: IDO always assigns v0 to ptr
directly when there's a named `u8 *ptr` local variable and 2 function arguments.
The cascading register differences (result→a2 vs v1, '\n'→t1 vs t0, space→a1 vs a2) all stem
from this single allocator decision.

Applied to: `func_8000A2B8_AEB8` (AD60.c) — achieved score 890 (partial non-match).
Remaining score: ~840 pts register diffs (prologue cascade) + ~50 pts jump-table address mismatch
(`.rodata` at 0x8003FB20 instead of 0x80037460 due to data section layout).
