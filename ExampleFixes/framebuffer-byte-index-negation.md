# Framebuffer byte-index negation

In the still-unmatched `func_8009811C_A70CC`, the second framebuffer address
is read backward from `D_8005BB4C`, an alias of the second table entry. The target shifts the framebuffer index by two, then negates that byte
offset. Direct word indexing `D_8005BB4C[-index]` instead negates first
and shifts afterward.

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

## Incorrect ASM

`D_8005BB4C[-index]` negates the index before scaling it.

```asm
negu    t9,v0
sll     t6,t9,2
sll     t8,v0,2
```

## Code changed

Index the same two-element table for both framebuffers. `D_8005BB4C` aliases
`D_8005BB48[1]`.

```c
func_8000DC9C_E89C(D_8005BB48[index], D_8005BB48[1 - index]);
```

## Correct ASM

The shifted index is shared. The array expression produced the same ROM
bytes as the byte-indexed cast expression above.

```asm
sll     t8,v0,2
negu    t6,t8
addu    a1,a1,t6
addu    a0,a0,t8
```
