incorrect ASM: In func_800920C0_A1070, IDO evaluated the speed/512 floating division before the vehicle-strength fraction, changing floating registers and scheduling throughout the collision response.
-> code changed: Write the product with speed/512 as the left C operand and the narrowed (1.0 - cappedStrength/divisor) expression as the right operand.
-> correct ASM: The capped-strength division is emitted first at A12DC, followed by cvt.d.s/sub.d, the speed division, and mul.s $f2,$f6,$f16 at A1350.

incorrect ASM: The timer-derived sine argument was masked directly in the jal delay slot, and the surrounding branch scheduled a global-address load too early.
-> code changed: Assign the timer product to a named u16 angle before passing it to sins, using the existing short-local declaration position.
-> correct ASM: A1618 sll a0,a0,3; A161C andi t8,a0,0xffff; A1620 jal sins; A1624 move a0,t8, with the surrounding structural instruction sequence also matching.
