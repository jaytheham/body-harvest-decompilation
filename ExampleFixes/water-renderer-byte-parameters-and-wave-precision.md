# Water-renderer byte parameters, signed remainders, and wave precision

func_800BA5B0_C9560 remains unmatched. The refined C reaches the target 904-instruction length and 0x1C0 frame, with comparison score 13045 versus the first linked baseline 48015.

Incorrect ASM: missing entry parameter spills, despite the target masking the index to eight bits. Code changed: declare the index parameter u8 in the function and common prototype, and remove its redundant explicit mask. Correct ASM: the initial 60 instructions have the target structure, including the argument spills and 0x1C0 frame.

Incorrect ASM: a pointer loaded from the camera object rather than 0x44-byte object indexing. Code changed: take the address of the indexed existing Unk80052B2C object. Correct ASM: the index is scaled by 68 and added to D_80052AE8 before the position halfword loads.

Incorrect ASM: wrong color-key packet fields and an incomplete gDPSetKeyGB invocation. Code changed: use center 0x80, the animated color as scale, and zero width for each key channel. Correct ASM: key R contains 0x8000 OR color; key GB contains 0x80008000 OR color shifted 16 OR color.

Incorrect ASM: fixed first-tile coordinates and missing animation in the second tile's low coordinates. Code changed: first tile uses -phase, 60, 252-phase, 312 for phase=(u32)frame>>1; second tile uses frame&0xFFF for both low coordinates and (frame+252)&0xFFF for both high coordinates. Correct ASM: target SRL, NEGU, masks, and animated F2 packet fields.

Incorrect ASM: floating DIV.S with direct integer-to-double cosine conversion. Code changed: explicitly convert the cosine result to f32, then divide by double literal 32768.0; retain a short water depth and integer division by ten. Correct ASM: CVT.S.W, CVT.D.S, DIV.D, CVT.D.W, MUL.D, and TRUNC.W.D.

Incorrect ASM: ANDI for checkerboard parity, losing negative remainder handling. Code changed: use signed percent-two operations, including the two separate parity terms in the triangle loop; narrow the final remainder to s16 before its nonzero test. Correct ASM: BGEZ, ANDI, BEQZ, and conditional ADDIU -2, including the outer remainder.

Incorrect ASM: one shared opacity call following a selected camera pointer. Code changed: keep one explicit opacity call in each camera-mode branch, assigning the world-X float within each branch. Correct ASM: the two target calls and their distinct camera loads/conversions remain separate.

Incorrect ASM: distance comparison against floating zero after subtraction. Code changed: compare each original camera coordinate with the world coordinate, then subtract with the appropriate sign in the two branches. Correct ASM: C.LE.S precedes the repeated subtraction and the negative arm uses NEG.S.

Incorrect ASM: a combined 0x7FFFFE50 vertex-address adjustment. Code changed: use OS_K0_TO_PHYSICAL on the vertex-buffer pointer with its -27 element offset grouped before the batch subtraction. Correct ASM: the target physical-address addition and separate vertex-byte offset.

Incorrect ASM: word-union color accesses represented the six palette channels as word-sized values. Code changed: declare them as scalar u8 globals with initial values 0 or 0xFF and use byte values in the graphics setup. Correct ASM: LBU/SB accesses; native data alignment preserves their original four-byte-spaced addresses and initial data bytes.
Incorrect ASM: each palette LBU was separated by an output SB because reads through a temporary u8 pointer could alias the output bytes. Code changed: access D_8013D988_14C938[currentLevel * 6 - N] directly for all six channels. Correct ASM: the target first four LBU instructions precede the initial SB pair, followed by the final two loads and remaining stores. The local byte pointer is retained only as explicit frame padding.

Incorrect ASM: water Z, flags, hidden-count and wave-phase homes were 0x1AC, 0x148, 0x130 and 0x12A. Code changed: move the existing Gfx pointer immediately after the palette padding, move hiddenCount ahead of maxAlpha, and store wavePhase in a one-element u16 array directly after hiddenCount. Correct ASM: the corresponding homes are 0x1A8, 0x144, 0x13C and 0x138, with the target 0x1C0 frame. This checkpoint remains NON_MATCHING; its enabled score is 11957 with 904 instructions.
