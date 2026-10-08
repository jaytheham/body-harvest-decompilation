# Alien on-death handlers (`AlienType.unk5C`) are a clone family across level overlays

Every level overlay's `alien_types.c` registers a per-type on-death handler at `AlienType.unk5C`
(offset `0x5C`, `void (*)(u8)`). The *same table row* holds the *same handler* in each overlay, so a
handler matched in one overlay is a near-verbatim donor for its siblings. Measured (2026-10-07):

- donor `func_802D8898_1913A8` (greece, `18D7E0.c`) - already matched.
- `func_802DBF34_1F4C44` (java, `1ED9E0.c`, 191 instr) - **matched at 0** by copying the greece body
  verbatim.
- `func_802D9658_31D7A8` (comet, `318E20.c`, 201 instr) - **matched at 0** with the greece body plus
  the two comet-only `func_80137468_146418` calls (see below).

Two things decided both matches:

1. **The existing guess's pointer local was the only real error.** Both targets were wrapped with a
   body using `AlienInstance *alien = &alienInstances[arg0];` and a cached `flags`; the matched donor
   reads `alienInstances[arg0].xxx` directly at every use. Take the donor's direct-access form.
   (Same family as `direct-global-access-vs-pointer-local-address-rematerialization.md`.) The java
   guess was *also* missing the `if (alienInstances[arg0].unk20 & 0x40000000)` guard entirely.
2. **Copy the donor's shape, then read the target's own `.s` for the level's extras.** The three
   overlays' handlers are NOT identical: greece/java call only `func_800DF848_EE7F8` (+ the
   `func_800DEA08_ED9B8` / `func_8008AAFC_99AAC` tail), while comet additionally calls
   `func_80137468_146418(arg0, 0xF)` (after the inner `func_800DF848` block, before the `return`) and
   `func_80137468_146418(arg0, 0x66)` (the `else` arm of the range test). A verbatim greece copy
   would have failed comet; the differences are exactly what the target `.s` shows.

Finding the twins: `grep -n "unk5C" src.us/overlay_level/*/alien_types.c` and compare the handler
named at the same table row across overlays. America's counterpart (`func_8008C0F8_9B0A8`) was already
matched and siberia's row is `NULL`, so no further sibling exists for this handler. The same grep works
for any other `void (*)(u8)` slot in `AlienType` (e.g. `unk48`).
