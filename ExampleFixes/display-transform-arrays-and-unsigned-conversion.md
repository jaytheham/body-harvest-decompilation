# Display transform arrays and unsigned conversion

In func_8007B370_8A320, six adjacent halfword locals passed by address did not retain all coordinate stores. Using two s16 arrays of three elements made IDO recognize the contiguous data and share the truncated scale value. Struct fields instead introduced duplicate sign extensions.

Casting the alpha expression to u32 before passing it to gDPSetPrimColor reproduces the unsigned floating-point conversion sequence, including its fallback path. A u8 cast generates a different sequence.

A u8 function parameter retains the argument home store while eliminating the explicit array index mask. Declaration order also matters: placing the type byte after the float and removing the cached phase local aligned the coordinate arrays and float spill.

Use gSPPopMatrix for the target BD opcode, and retain G_MTX_NOPUSH in the preceding matrix load.
