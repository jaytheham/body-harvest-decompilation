# Framebuffer byte-index negation

In the still-unmatched `func_8009811C_A70CC`, the second framebuffer address
is read backward from `D_8005BB4C`, an alias of the second table entry.
The target shifts the framebuffer index by two, then negates that byte
offset. Direct word indexing `D_8005BB4C[-index]` instead negates first
and shifts afterward. Casting the index to unsigned did not change this.

The matched functions `func_80009F18_AB18` and `guess_displayInventory`
use a byte offset `-(index * 4)` for the same call. Preserve that expression
with array access instead of pointer addition:

```c
((s32 *) &((u8 *) D_8005BB4C)[-(index * 4)])[0]
```

The casts reinterpret the byte-indexed address as a word entry; the offset
is a multiple of four. This restored the target shift, negation, address
addition, and argument-load sequence at ROM `0xA7614`. The overall diff
score increased through register changes, while structural differences
decreased. This is a local sequence match, not a complete function match.
