Incorrect ASM: the map update reused the initial `D_8014ED30` value for five later camera/label accesses, removing five target `lh` instructions. It also removed the second `D_8014ED2E = temp_a1` write on the mode-one path. Local overlay data consequently linked 0x30 bytes early.

Code changed: declare nonvolatile halfword views `D_8014ED30_Select`, `D_8014ED30_Label`, and `D_8014ED2E_Write` in variables.us.h. Bind each to its existing canonical symbol using expressions in both undefined_syms files. Use Select for the destination-camera subscript and both compound next-stage conditions; use Label for the two numeric label arguments. Use Write only for the inner mode-one transition write, retaining the preceding canonical write. Volatile casts/declarations added unwanted instructions; all three views are ordinary s16 symbols.

Correct ASM: all five later selector accesses reload the halfword, and the inner transition write remains present. Halfword instruction totals now equal the target (122 LH and 94 SH). Local data including D_8013D514_14C4C4 returns to its target address. The function remains NON_MATCHING: current payload 0x39A0 versus target 0x3998, score 40648 versus 42838 previously. US and EU ROMs verify with the wrapper retained.

## Incorrect ASM

The name-box fade test reused its first fade load. It also brought the
previous-zone pointer load ahead of the width comparison, which left the
floating-point branch's delay slot empty.

```asm
bc1t    draw_previous
 nop
...
draw_previous:
    lui     t0,%hi(D_8013D528_14C4D8)
    slt     at,s2,t1
```

## Code changed

Use the nonvolatile aliases `D_8014ED1C_Label` for width interpolation
and `D_8013D528_14C4D8_Label` for the later pointer reads. Bind both
aliases to the original symbols in the US and PAL linker inputs.

```c
var_s0 += (s32)((1.0 - D_8014ED1C_Label) * (f32)(var_t0 - var_s0));
/* ... */
if ((D_8013D528_14C4D8_Label != NULL) && (var_s0 > 0)) {
    /* Draw the previous zone's name box. */
}
```

## Correct ASM

The width comparison occupies the branch-likely delay slot. The
interpolation path reloads the fade, and the name-box guard reloads
the previous-zone pointer after the width update.

```asm
bc1tl   compare_width
 slt    at,s0,t0
...
lui     at,%hi(D_8014ED1C)
lwc1    $f4,%lo(D_8014ED1C)(at)
...
lui     t7,%hi(D_8013D528_14C4D8)
lw      t7,%lo(D_8013D528_14C4D8)(t7)
```

## Incorrect ASM

The compound stage increment kept the address of `D_8014ED30` in `v0`
for both the load and the store.

```asm
lh      t7,0(v0)
...
sh      t8,0(v0)
```

## Code changed

```c
D_8014ED30 = D_8014ED30_Select + 1;
```

## Correct ASM

The increment uses separate direct accesses to the stage halfword.

```asm
lh      t6,%lo(D_8014ED30)(t6)
...
addiu   t9,t6,1
...
lui     at,%hi(D_8014ED30)
sh      t9,%lo(D_8014ED30)(at)
```
