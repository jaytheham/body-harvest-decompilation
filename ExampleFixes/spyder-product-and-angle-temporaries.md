incorrect ASM: In func_800920C0_A1070, IDO evaluated the speed/512 floating division before the vehicle-strength fraction, changing floating registers and scheduling throughout the collision response.
-> code changed: Write the product with speed/512 as the left C operand and the narrowed (1.0 - cappedStrength/divisor) expression as the right operand.
-> correct ASM: The capped-strength division is emitted first at A12DC, followed by cvt.d.s/sub.d, the speed division, and mul.s $f2,$f6,$f16 at A1350.

incorrect ASM: The timer-derived sine argument was masked directly in the jal delay slot, and the surrounding branch scheduled a global-address load too early.
-> code changed: Assign the timer product to a named u16 angle before passing it to sins, using the existing short-local declaration position.
-> correct ASM: A1618 sll a0,a0,3; A161C andi t8,a0,0xffff; A1620 jal sins; A1624 move a0,t8, with the surrounding structural instruction sequence also matching.

incorrect ASM: CFE created a halfword temporary for each nested coss return and a word temporary for the clamp, inflating the Spyder frame to 0xA0 instead of 0x98 and moving named locals up by eight bytes.
-> code changed: Reuse the existing fx halfword for both cosine returns, assign MIN(10000, vehicleStrength) to the existing cappedValue word, and keep the timer-scale expression before the sinf call in the C multiplication. Preserve the final unused word declaration.
-> correct ASM: The frame is 0x98, the speed/node/position locals occupy sp+8C, sp+86, sp+80, sp+7E and sp+78/74/70, and cached geometry/type pointers occupy sp+48/50/54.

incorrect ASM: Array double constants force mul.d operands constant-first despite reversing the C product.
-> code changed: Represent D_80141F10_150EC0 and D_80141F18_150EC8 with the existing ShadowGeometryConstant aggregate and read .value.
-> correct ASM: A138C mul.d $f16,$f0,$f6 and A139C mul.d $f10,$f0,$f8 retain the original rodata addresses.

incorrect ASM: With conditional entry-index assignment, UOPT prioritized two cached geometry pointers ahead of the first node value: lb t3,0xc(t6), first pointer t1, second pointer t2.
-> code changed: Retain the previous index with a ternary: entryIdx = nodeC != -1 ? nodeC : entryIdx.
-> correct ASM: A10D4 lb t1,0xc(t6), A10E4 addu t2,t4,t7, and A10F8 addu t3,t4,t8. The complete function diff is zero and the full US ROM checksum is OK.
