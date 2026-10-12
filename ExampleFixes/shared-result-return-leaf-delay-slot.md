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

## Loop-body case: `break` out to the shared `return`, do not repeat the `return`

`func_800B960C_C85BC` (`overlay_gameplay/outside/BF9C0.c`, 210 instr, port *Widescreen* "terrain tile
cull"): the body had an `if (hit != 0)` arm inside a `for` loop written as

```c
if (hit != 0) {
    D_8014F854 = 1;
    return D_8014F854;
}
```

with the loop's own `return D_8014F854;` after it. IDO gives the in-loop `return` a private exit
path: it materialises the value it has just stored (`li v0,1`) and branches *past* the shared tail
that loads the global, so ours compiled to 212 instructions against the target's 210 and the
comparison scored **1716**.

Replacing the in-loop `return D_8014F854;` with `break;` - identical behaviour, the loop exits and the
single trailing `return` yields the same value - makes both exits share that tail load and takes the
function to **1216**, with 210 = 210 instructions and `ins_diff -noregs` delta **+0**.

Rule: when a loop arm wants the value that one arm has just stored, exit that arm through `break` and
let the one trailing `return` do the load. Repeating the `return` is not free: a value IDO can
constant-fold costs a second exit path, an extra instruction, and the allocation that follows it.
