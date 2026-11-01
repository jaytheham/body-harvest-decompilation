Incorrect ASM: `func_80078828_877D8` kept explicit 180.0/90.0 placeholders, reserved a dead eight-byte double spill, and emitted reversed operands in two BEQ instructions. Independent early returns also duplicated refusal blocks.

Code changed: remove the now-replaced double placeholders and use inline literals; use integer 32768 in the angle conversion to separate its constant lifetime from terrain sampling. Combine the refusal conditions structurally. Compute the direction into the later height-sample word before the style guards, and retain explicit sine/cosine locals with the target halfword padding.

Correct ASM: IDO sinks and duplicates the direction calculation into the original two branch groups but interns it before the shared comparison constants, producing `beq t9,a2` and `beq t7,v1`. The phantom double spill disappears; frame 0x40, angle cache sp+0x1C, cosine sp+0x20, and literal rodata addresses all match. Full US ROM checksum OK.
