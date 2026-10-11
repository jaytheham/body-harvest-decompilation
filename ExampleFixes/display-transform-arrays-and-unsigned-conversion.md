# Display transform arrays and unsigned conversion

In func_8007B370_8A320, six adjacent halfword locals passed by address did not retain all coordinate stores. Using two s16 arrays of three elements made IDO recognize the contiguous data and share the truncated scale value. Struct fields instead introduced duplicate sign extensions.

Casting the alpha expression to u32 before passing it to gDPSetPrimColor reproduces the unsigned floating-point conversion sequence, including its fallback path. A u8 cast generates a different sequence.

A u8 function parameter retains the argument home store while eliminating the explicit array index mask. Declaration order also matters: placing the type byte after the float and removing the cached phase local aligned the coordinate arrays and float spill.

Use gSPPopMatrix for the target BD opcode, and retain G_MTX_NOPUSH in the preceding matrix load.

## Smoke renderer: delayed narrowing, reusable square, and color packing

func_800D10D0_E0080 (CFE30.c) matched from baseline 2248. Compute the size product and division together before assigning the s16 size. Two assignments narrow the product before division and add three unwanted instructions. Assign the three scale fields independently in Z/Y/X order: chaining signed field assignments introduces a reload. Keep the clipping scale argument explicitly converted to u16.

Reuse one float for the X difference squared, then add the Z difference squared with +=, then take sqrtf. Separate dx/dz locals enlarge the frame to 0x108 and change FPR allocation; this one-float form recovers frame 0x100 and the first square in F20. The compound addition also retains target operand order F20,F6, whereas an inline addition uses F6,F20.

Declare the two entry/payload pointers before the transform buffers. Put the RGB byte array before the two-short origin array. This places scale/rotation/position at F0/E8/E0 and RGB/origin at DC/D8 without unused padding. Use an unsigned three-halfword rotation array to retain LI 0x8000 rather than LI -0x8000.

The final score 30 was primitive-color operand association. Explicitly expand the packet using the original primitive-command expression, but OR the shifted fields in G/B/R/A source order. IDO then emits R/G/B/A loads and shifts. The six R/G/B permutations scored 30/20/20/0/30/20. The normal gDPSetPrimColor macro emitted B/R/G/A. Renaming locals, splitting the arithmetic and packet statements across lines, using u8 RGB storage, and removing redundant casts preserve the match. Verified full function against actual next D16BC and tools/make.ps1 checksum OK. No new files, header changes, or compiler flags.
