`incorrect ASM`: Replacing the text renderer's external minimum-scale placeholder with `0.01f` initializes `f28=1024.0f` before loading `f30=0.01f`, reversing the target's constant setup.

-> `code changed`: Capture `minimum = 0.01f` and retain one discarded `if (minimum) { }` read before the existing discarded floating comparisons.

-> `correct ASM`: The loop preheader emits `lwc1 f30,0x7578(at)`, `lui at,0x4480`, then `mtc1 at,f28`, preserving the target's saved FPRs. The whole renderer remains NON_MATCHING.

`incorrect ASM`: Inline casts of control-byte indices leave halfword temporaries and helper argument additions in different registers and source-line schedules.

-> `code changed`: Retain the next byte index in a reusable `s16` and group its assignment with the byte read or decode call on the same source line. Keep the final RGB index update deferred until all three bytes are read. Put initial X and Y clipping assignments on separate lines and use compound space-advance addition.

-> `correct ASM`: The decode-call index uses the target `sll a2,...,16` / `sra ...,a2,16` shape and the helper argument/index-update schedule improves. Initial clipping stores occur in X/Y order and the space advance emits `addu s2,s2,...`. The whole renderer still has scheduling and register-allocation differences.

`incorrect ASM`: The successful glyph path computes `addiu v1,s1,1` before advancing X, adding an instruction absent from the target path and merging the increment into the wrong loop join.

-> `code changed`: Reuse the existing word-sized glyph scratch for the next index. Assign `glyph_code = i + 1` before space/clipped-glyph continuations and at the common end of the body, then test `while ((i = glyph_code) < (u16)D_80053BE0)`. Let control-code handling fall through to the common end instead of continuing past that assignment.

-> `correct ASM`: Space and clipped glyphs compute the next word index before branching to the shared halfword normalization. Successfully rendered glyphs branch to the common `addiu v1,s1,1` at ROM `0xD16C`, without the extra increment in their own block. The function remains unmatched; both normal ROM builds pass with its assembly fallback.
