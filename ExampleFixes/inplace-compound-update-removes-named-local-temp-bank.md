# In-place compound update removes the named local that shifts the temp bank

Matched `func_802D62A0_1EEFB0` (`src.us/overlay_level/java/1ED9E0.c`, 38 instructions) with an
asm-differ score of 145 -> 0.

The function reads a counter, conditionally increments it, then subtracts it from a struct field and
re-reads the field for a range test. Written with an explicit intermediate local it does not match;
written as a compound assignment it does:

```c
// 145 - the intermediate local takes a pool register for its whole live range,
// and every later allocation shifts one slot.
v1 = buildingInstances[50].xCoord;
v1 = (s16) (v1 - v0);
buildingInstances[50].xCoord = v1;
v1 = buildingInstances[50].xCoord;
if (v1 < -0x5207) { ... }

// 0 - the loaded field value becomes a compiler temp instead of a named local.
buildingInstances[50].xCoord -= v0;
if (buildingInstances[50].xCoord < -0x5207) { ... }
```

**Why it works:** IDO allocates named locals and anonymous temps from the same register pool. A
named local that only exists to carry a load through one arithmetic op and back into the same
location is still a long-lived user of a pool slot, so it (and everything after it) is allocated one
register lower than the target. Folding the read-modify-write into `x op= v` leaves IDO free to put
the loaded value in a short-lived temp, which is what the original source did.

The instruction *stream* was already identical before the change (38 = 38, `ins_diff -noregs` delta
+0) - this was purely register allocation, so it reads as a permuter problem until the statement
shape is inspected.

**Diagnostic:** when `ins_diff` shows the same opcodes in the same order with only register names
different, count the named locals that exist only to hold a value between a load and a store to the
same address. Each one is a pool slot the target may have spent on a temp instead.

Related: `named-s32-temp-vs-direct-cse-regalloc.md` (removing a local fixes the bank),
`height-bounds-copy-before-in-place-update.md` (the opposite direction - a copy is *required* before
an in-place update).
