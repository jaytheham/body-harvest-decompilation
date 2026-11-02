Incorrect ASM: `func_8009C6CC_AB67C` distributes rectangle-coordinate constants through multiplication, producing `sll; addiu` instead of the target's `addiu; sll` sequence.

-> Code changed: pass coordinates with `expression << 2` to `func_800092B8_9EB8` instead of `expression * 4`.

-> Correct ASM: offsets are applied before `sll`, and the four rectangle arguments follow the target evaluation order.

Incorrect ASM: separate assignments such as `vtx2->v.ob[2] = -1; vtx3->v.ob[2] = vtx2->v.ob[2]; vtx1->v.ob[2] = vtx2->v.ob[2]; vtx0->v.ob[2] = vtx2->v.ob[2]` reload the source field before each copy.

-> Code changed: retain the first store, then use `vtx0->v.ob[2] = vtx1->v.ob[2] = vtx3->v.ob[2] = vtx2->v.ob[2]`. Chain the original computed assignment too when the target stores its computed value twice without reloading it. Reuse the same four vertex locals for the later icon.

-> Correct ASM: one `lh` follows the initial `sh`, followed by three stores of that loaded value. Computed coordinate/color pairs use one result for both stores. The complete renderer remains NON_MATCHING while cursor caching and clamp scheduling are unresolved; its comparison score improved from 29375 to 10847.

Incorrect ASM: raw pointer arithmetic at `D_80158FEC + 0x1A` emits `lhu`, while the target uses `lbu`.

-> Code changed: read the existing `AlienInstance` field `D_80158FEC->typeIndex`.

-> Correct ASM: the target type check uses `lbu offset 0x1A` and needs no cast or byte-offset pointer arithmetic.
