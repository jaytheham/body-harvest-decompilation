incorrect ASM: In `func_800FCA5C_10BA0C`, testing `spawn->unkA` and reading it again in the fuel multiplication lets UOPT cache the indirect signed-short load as a word expression. Its spill reservation conflicts with four existing temporary slots and reserves a fifth word at source offset -68. The resulting frame is 0x90 and the ground-height output sits at sp+0x6e.

-> code changed: Reuse the existing signed-short spawn scratch: `spawnValue = spawn->unkA; if (spawnValue == 1) ... else ... (f32)spawnValue * scale`. Its earlier type-index value is already dead before this assignment.

-> correct ASM: The indirect-load reservation disappears, the frame is 0x88, and the ground-height output returns to sp+0x66. The fuel percentage still loads once with LH into V0 and follows the target comparison and floating conversion. Other scheduling differences in the function remain unmatched.
