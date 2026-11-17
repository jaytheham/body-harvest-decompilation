`incorrect ASM`: In `func_8012F4E0_13E490`, the reconstructed history shift starts at array element 18 instead of 46, the per-letter stretch read multiplies the row displacement by an extra four, the color ramp uses signed `trunc.w.s`, and the overflow diagnostic falls through into fresh history reads.

-> `code changed`: Shift `D_8015FF90[46]` through element zero into the next element; initialize all 48 entries with one indexed loop. Read the animated band as `D_8015FF90[band + rowBase]`. Put history reads, the sound trigger, and the completion check inside the diagnostic's `else`. Convert the ramp with `(u8)(u32)` and preserve the target's repeated flag-conditioned zero/100 selections. Keep the function under `NON_MATCHING` while register allocation remains unresolved.

-> `correct ASM`: The shift begins at `0x80160048` and decrements by four; the band address adds separately scaled band and row indexes; the overflow path jumps directly to the retained stretch value; and alpha conversion emits the target FCSR-controlled unsigned conversion sequence. These sections matched at the first checkpoint.

`incorrect ASM` puts the text pointer in `s0` and its glyph width in `s2`, then masks the letter byte with `andi` in place of the ROM's second `lbu`. The rectangle also allocates the reciprocals before the width fraction and leaves the band decrement in the wrong part of the packet sequence.

-> `code changed` keeps two discarded width tests immediately before the rendering branch and one discarded Y-origin test at the start of the band loop. Compute the right edge in the packet operand, pass the texture steps as signed words for the SDK macro to mask, and iterate the bands with a descending `for` loop. Define both the phase and the 48-word history as private statics when building the C renderer, and reserve their original space only when using its assembly fallback.

-> `correct ASM` matches the first 162 instruction words, including the second byte load. All six saved floating-point registers hold the target values. The animated vertical step has the target `mfc1`, mask, and register move sequence, and the band decrement returns to the target position around the last packet write. The C differences are confined to the renderer in both ROM versions. The assembly fallback was still active at this checkpoint.

`incorrect ASM` stores the bottom coordinate at `sp+0x7c` and the center at `sp+0x74`. Inlining both the half-width and band index moves the two values to the target offsets in reverse order.

-> `code changed` uses the half-width and band index expressions directly. Assign the bottom coordinate to the same local before the pipe sync in each rendering branch. Use the unsigned working type for the packed X coordinates.

-> `correct ASM` stores and reloads the bottom at `sp+0x74` and the center at `sp+0x70`. The center sum uses `addu t4,t5,t9`. Active C builds differ in 122 instruction words in both ROMs, with every difference inside this function. The assembly fallback was still active at this checkpoint.

`incorrect ASM` reloads the Y origin into `$t8` after the first texture rectangle store. Moving a second Y use into the packet produces the early load but can swap the saved registers for the band counter and direction flag.

-> `code changed` uses `((u32)arg3 - (u32)sHalf) * 0U` for texture T and a discarded `if (band) {}` at the start of the band loop. IDO sees the Y use during register allocation and folds the texture coordinate to zero.

-> `correct ASM` loads `$t0` from `sp+0x12c` before the pipe-sync opcode at ROM offset `0x13EA54`. The band counter uses `$s3` and the direction flag uses `$s4`. The C implementation matches every instruction and both ROM checksums.
