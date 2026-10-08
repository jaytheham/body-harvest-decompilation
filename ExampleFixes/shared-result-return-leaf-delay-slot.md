# Shared result return controls leaf epilogue scheduling

Matched `func_80083B7C_5402C` with IDO 5.3 -O2 -mips2 -32.

The allocator body and scan loop already matched, but an early capacity-failure
`return -3;` followed by the final `return idx;` emitted:

```asm
move v0,v1
jr   ra
nop
```

Assign the failure sentinel to the same result local, enclose the successful
allocation path in `else`, and use one final return:

```c
s16 idx;

if (poolCount >= 450) {
    idx = -3;
} else {
    idx = nextFreeIndex;
    /* Initialize links, update counts, and scan for the next free slot. */
}
return idx;
```

IDO still emits an early `jr ra` with `li v0,-3` for the failure path, but the
successful path now ends with `jr ra` and `move v0,v1` in its delay slot.
The whole ROM build reports `build/bh.us.z64: OK`.

Changing the scan from guarded do/while to while or for did not fix the
scheduling. Separate returns after the scan and its skipped path gave the
right delay slot but duplicated the epilogue. The shared result assignment
fixed the layout without changing the public `s16` return type.
