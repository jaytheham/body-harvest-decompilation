# Shield-wall signed subdivision and endpoint lifetimes

The function remains unmatched; comparison score improves from 36709 to 9387 and its frame becomes the target 0x160.

Incorrect ASM: two signed rounding adjustments before SRA 2. Code changed: remove the manual negative adjustment before signed division by four. Correct ASM: one BGEZ, conditional ADDIU 3, and SRA 2 per axis.

Incorrect ASM: MUL.S by 0.125. Code changed: divide segmentDx and segmentDz by integer literal 8. Correct ASM: DIV.S by floating eight.

Incorrect ASM: shield-link table displaced by 0x4000 bytes. Code changed: index rows of 64 two-byte ShieldWallLink entries. Correct ASM: target row addressing with LB -0x80.

Incorrect ASM: signed-byte opacity extension. Code changed: use u8 opacity locals. Correct ASM: ANDI 0xFF for the result retained across the second call.

Incorrect ASM: narrowed negative color differences and negative-first branches. Code changed: keep the short difference and consume (difference >= 0 ? difference : -difference) separately. Correct ASM: BLTZ with positive fallthrough and separate word negation.

Incorrect ASM: incorrect upper-wall coordinate and alpha stores. Code changed: vertices 4/5 use the start endpoint at heights 3000/4000, vertices 6/7 use the end endpoint at those heights; only height 4000 has zero alpha. Correct ASM: target endpoint sources and alpha stores at offsets 0x4F, 0x5F, 0x6F, 0x7F.

Incorrect ASM: texture calculations outside their vertex write groups. Code changed: assign each cached texture coordinate through its first tc store. Correct ASM: calculations begin within the corresponding vertex group; remaining scheduling and register differences are unresolved.