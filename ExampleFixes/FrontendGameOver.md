Incorrect ASM: a plain `while (timer--)` or `for (timer = 500; timer--; )` removes the initial countdown branch, although the target retains `li v0,500; li t4,499; beqz v0,...; sw t4,...`.

-> Code changed: use `for (timer = 500; timer-- + D_80094900 * 0; )`. The zero term follows the nearby matched frontend's late-folding idiom and emits no global read.

-> Correct ASM: both the initial constant branch and the final `lw v0; addiu v1,v0,-1; bnez v0,...; sw v1` match.

Incorrect ASM: explicit `step` and separate blend homes put three saved addresses four bytes below their target slots. The local LookAt and display-list copy are eight bytes too high.

-> Code changed: declare `timer`, `fade`, `i`, and the word-sized `blend` before the LookAt. Derive each letter's value as `fade - i * 16`, retaining its separate block-local `alphaStep`, and mask the word blend with `0xFFFF` before the zero test.

-> Correct ASM: LookAt is at `sp+0x118`, the display-list copy at `sp+0xF8`, the three saved addresses at `sp+0x7C/0x80/0x84`, and the frame remains `0x148`. IDO generates the target `s6 -= 16` induction update before advancing the display-list pointer.

Incorrect ASM: passing `(fade << 1) & 0xFF` to the byte-alpha parameter produces the right operations but different temporary registers throughout the following render commands.

-> Code changed: pass `fade * 2` directly and let the declared `u8` parameter perform the narrowing.

-> Correct ASM: `sll t9,a3,1; andi a3,t9,0xFF`, followed by the target temporary-register allocation. Both complete ROMs match.
