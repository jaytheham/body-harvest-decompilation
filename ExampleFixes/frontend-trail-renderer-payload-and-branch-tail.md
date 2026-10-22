## incorrect ASM

In `func_80086528_569D8`, a typed motion pointer derived from a named full-node pointer was folded into full-node-relative loads. Keeping the final vertex increment after the rendering branch also let IDO merge the two branch tails.

```asm
addu v1,s4,t9
lh t7,8(v1)
/* final vertex increment shared after the if/else */
```

## code changed

Use direct indexed node access for the next link. In each rendering branch, capture the payload address through a word view and access its fields through the typed view:

```c
union {
    u32 address;
    Frontend52690Unk8Motion *particle;
} work;

work.address = (u32)&D_800DE840[idx].unk8;
D_8005BB34->v.ob[0] = (f32)work.particle->unk0;
/* ... second vertex stores ... */
D_8005BB34->v.cn[3] = tailAlpha;
D_8005BB34++;
```

Keep the final increment inside each branch. Use an unsigned word for `tailAlpha`, preserving the target unsigned float conversion without a later byte mask. The head alpha remains a byte. End the header-node carrier lifetime after capturing its color payload. The source can use a simple `while` with the invariant tail-alpha conversion inside it; IDO hoists that conversion into the guarded loop setup.

## correct ASM

```asm
addu t2,s4,t9
addiu v1,t2,8
lh t7,0(v1)
/* ... */
sb s2,0xf(t7)
lw t6,0(v0)
addiu t8,t6,0x10
sw t8,0(v0)
```

The function has zero assembly differences and the stock build reports `build/bh.us.z64: OK`. Redundant destination-width casts can be removed without changing the assembly; retain the float conversions on coordinates because the target explicitly converts integer coordinates to float and back.
