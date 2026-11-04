`incorrect ASM`: In `func_800BED30_CDCE0`, a shared short timer swaps the initial V0/V1 cache roles. The inline previous fast-phase timer uses anonymous T3/T4/T5 temporaries instead of the target V1/T3/V1 sequence.

-> `code changed`: Keep two short workspaces: the ordinary `timer` for the first fast branch and previous slow branch, and `work.timer` for the first slow branch and previous fast branch. Assign the previous fast value before its cosine expression. Retain explicit unsigned word promotion in both outer timer guards.

-> `correct ASM`: The initial timer load uses V1, its saved copy uses V0, and the previous fast value uses ADDIU V1 / SLL T3 / SRA V1. The first 930 instructions match.

`incorrect ASM`: Separate fog output bytes make unsigned float conversion use temporary destinations T2/V0/T3 before copying the narrowed results into V1/T0/T1.

-> `code changed`: Transform the addressed `red`, `green`, and `blue` bytes in place in both fog phases, as in the palette loop. Remove the three copy-only fog temporaries and their assignments. Keep `(f32)(u32)` on decoded input channels: those casts preserve the target unsigned conversion branches.

-> `correct ASM`: Conversion destinations reuse V1/T0/T1 directly. RGB remains at SP+4B/4A/49 in the exact 0x50-byte frame.

`incorrect ASM`: The palette counter increment and first stores are interleaved incorrectly, and single-expression fog packing rotates later temporary registers. A separate unsigned color local enlarges the frame.

-> `code changed`: Put the first two palette stores in one comma expression and leave the blue store in a separate statement. Build each packed fog color through three unsigned-halfword assignments. Share the dead timing halfword with the second packed color using `PaletteFadeWork`, whose signed `timer` and unsigned `color` members overlap.

-> `correct ASM`: The palette increment precedes both first component shifts; the second palette store precedes the blue addition. Fog packing uses the target T7/T8/T2/T3 and T9/T2/T4/T5 sequences, with no added instructions or stack space.

`incorrect ASM`: After the final `func_800B345C_C240C` call, the counter address and value use V0 instead of V1.

-> `code changed`: Use the helper's word-return declaration and definition, leaving its return value unspecified, and write the final guard as `(u32)counter > 0U`. All assembly callers discard the helper's result; the word return type is inferred from matching call metadata, not from a consumed-return caller.

-> `correct ASM`: The helper remains byte-for-byte matching, while the callback's final counter uses V1. All 1618 instructions match, and the complete native US ROM checksum passes.
