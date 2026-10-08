# Remove unnecessary float intermediates

In `func_8010E684_11D634`, four float locals cache the vehicle and alien X/Z coordinates. Two additional float locals held each corner plus the vehicle position before calculating integer deltas. These extra locals occupied f0/f2, moving the coordinate registers and changing floating point temporaries throughout the rest of the function.

Inlining those two additions into the integer delta assignments freed f0/f2 for the coordinate locals. The entire function then matched, including the later trig calculations, loop scheduling, saved registers, and stack frame. The whole-ROM checksum passed.

This also occurred in `func_80109370_118320`: eliminating unnecessary float temporaries aligned its floating point instructions before the remaining integer local lifetimes were corrected.
