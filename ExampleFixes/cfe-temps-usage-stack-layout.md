#### cfe temps:

Certain expressions cause cfe to create temporary variables (non-exhaustive):

1. `((void)0, expr)`
   Creates a temp for `expr`, and rearranges loads and stores
2. `expr ? a : b;`
   Creates a temp that stores either `a` or `b`.
   Multiple ternaries in the same expression will allocate more temps.
3. `x--` or `x++` in a branch, `if (expresion with x-- or x++)`
   Creates a temp for the whole expression using the old value of `x`.
   ex:`if (x-- != 0)` becomes
   `temp = x != 0; x--; if (temp != 0)`
   This generates different code than `if (x--)` due to the repeated `!= 0`.
4. `switch (expr)`, with less than 5 cases
5. Chained assignments, especially indirect stores.
   `thing->a = thing->b = expr;`
6. Function return values passed as arguments.
   `function(sin(x));`
   creates a temp for `$f0/$v0`
   These are usually eliminated by code motion, but the slot still remains.

cfe temps can only store expressions of the same type. Temps are allocated at the bottom of the stack as needed, in the order that they appear in the function.

Example:

```c
void temps(int x, struct Test *this) {
    s32 a, b;
    // temp 1 created (s32)
    if (ABS(x) < 100);

    // temp 1 reused
    this->a = this->b = x + 1;

    // temp 2 created (f32)
    function(Math_SinS(x));

    // temp 1 reused, temp 3 created (s32)
    if (ABS(x) < 100 && ABS(x) > 10);

    /* stack layout (not including padding):
     *  sp10: a
     *  sp0C: b
     *
     *  sp08: temp 1, s32
     *  sp04: temp 2, f32
     *  sp00: temp 3, s32
     */
}
```

### Cached ring offsets: one struct and a comma conversion

`func_800853A8_55858` matches with a `u16` scale parameter and six cached float offsets grouped in `FrontendRingOffsets`. Six independent float locals reserve a 0x18 frame; the non-addressed struct produces the target 0x08 frame and its sole float spill at sp+0x04. Multiply each basis entry by `((void)0, (f32)arg3)`: the comma creates the converted-scale temporary that restores scale-first MUL.S operands. Reversing multiplication operands or adding redundant casts alone leaves six operand swaps. Full ROM checksum and function diff pass. No rodata moved.
