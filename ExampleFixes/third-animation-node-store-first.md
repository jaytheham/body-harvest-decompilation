### Compute the third animation node through its array store first

In `func_802DD104_25C844`, the target loads three linked node indices before
storing the animation argument array. The third halfword store fills the
branch delay slot for choosing the animation table.

Using a separate third-index temporary assigned that load to an argument
register and delayed the alien-ID argument load. Directly storing the third
node after the other two instead moved the first two stores too early.

This order reproduces the target block's instruction sequence:

```c
callResult = entry3->unkC;
tempVar = D_8014DD50[callResult].unkD;
nodes[2] = D_8014DD50[tempVar].unkD;
nodes[0] = callResult;
nodes[1] = tempVar;
if (rotation < -0x3FF) {
    /* Choose the first animation table. */
} else {
    /* Choose the second animation table. */
}
```

IDO schedules the third load before the first two stores and moves the third
store into the table-selection branch delay slot. This is a verified partial
match: the animation block matches structurally; the complete function still
has register and other instruction differences.
