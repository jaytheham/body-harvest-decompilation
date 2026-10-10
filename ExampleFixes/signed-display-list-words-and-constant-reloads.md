# Signed display-list words can prevent a shared constant load

Observed with IDO 5.3 `-O2 -mips2 -32` while working on the still-unmatched
`func_800966EC_A569C` in `A49A0.c`.

Two `gDPSetRenderMode` calls write the same command word, `0xB900031D`.
The target loads that word separately for each packet. The ordinary macros
instead kept one copy in a register and reused it, removing a `lui`/`ori` pair.

Writing the first packet through a signed word array restored the separate
loads, while retaining the second render-mode macro:

```c
s32 *renderWords;

renderWords = (s32 *)D_8005BB2C++;
renderWords[0] = (s32)0xB900031D;
renderWords[1] = 0x00504240;
```

The signed **destination** mattered. Assigning a negative literal or an
explicitly signed right-hand side to unsigned `Gfx.words.w0` still shared the
constant. A signed array destination changed the generated constant loads.
Writing word zero first also improved scheduling compared with word one first.

The separate `renderWords` pointer also enlarged this function's stack frame
from the target's `0x30` bytes to `0x38`, without introducing a saved `s0`.
Removing the two integer radius temporaries did not fix that frame difference.
Reusing a pointer whose position/matrix work had finished restored `0x30`.

The final draft expresses those two views with `MapMarkerScratch`, defined in
`include/structs.us.h`:

```c
typedef union {
    Unk80052B40 position;
    s32 command[2];
} MapMarkerScratch;
```

After the last use of `scratch->position`, the same pointer can hold the first
render-mode packet:

```c
scratch = (MapMarkerScratch *)D_8005BB2C++;
scratch->command[0] = (s32)0xB900031D;
scratch->command[1] = 0x00504240;
```

This union view produced byte-identical output to the pointer-reuse experiment,
including the correct frame. The verified function diff score reached 2451.
This remains a partial code-generation result: a missing branch and other
instruction-order differences prevent a completed function match.
