### Goto

TODO: confirm. A `goto` will place the instruction at the target branch location inside the delay slot. This is similar to the behavior of branch-likely's except with normal branch instructions.

`break` is _not_ equivalent to a goto to just outside the loop.

### For vs While

For loops will produce different assembly to while loops despite the former being "converted to a while during compile" - _At least while dealing with unknown counts_
eg

```c=
i = 0;
while(setup.ailists[i].ailist)
{
    if (ID == setup.ailists[i].ID)
    {
        return setup.ailists[i].ailist;
    }
    i++;
}
//and
for (i = 0; setup.ailists[i].ailist; i++)
{
    if (ID == setup.ailists[i].ID)
    {
        return setup.ailists[i].ailist;
    }
}
```

The above are semantically the same, and due to the nature of the loop the while is recommended - however they produce different assembly and the for was correct.

### Branch delay slots / branch likely's

As far as the compiler's backend pass knows, branch delay slots don't exist -- they are fixed up by the assembler afterwards (see the Assembler pass section). Here's an old hypothesis about how it might work: if the assembler is able to reorder a branch with its preceding instruction, it does so. If it can't, it emits a branch-likely instruction pointing one step down from its real target. (This hypothesis isn't entirely correct, because sometimes there are branches with nop delay slots... Maybe branch-likely's are only used for forward jumps? However it _is_ true that when reading diffs, one can think of branch likely's as pointing one instruction above their stated target.) `b` instructions can also be invisible branch likelies, with the same "pointing one step down from its real target" behavior.
