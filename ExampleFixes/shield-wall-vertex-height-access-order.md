Incorrect ASM in func_80096BC4_A5B74

    lh      a0,-0xbe(a2)
    sll     s1,v0,0x10
    lui     t8,0x8014
    negu    a0,a0

-> Code changed

Store zero in the height field. Read it back through a volatile Vtx
pointer and pass the loaded height to the other vertex.

    v2->v.ob[2] = 0;
    lowerHeight = ((volatile Vtx *)v2)->v.ob[2];

-> Correct ASM at A5DA8–A5DB4

    lh      a0,-0xbe(a2)
    sll     s1,v0,0x10
    addiu   a2,a2,-0xc0
    negu    a0,a0

Incorrect ASM in the loop preheader of func_80096BC4_A5B74

    beqz    v1, exit
     li     s2, 0x1ff
    lui     s6, %hi(D_801475F0_1565A0)

-> Code changed

Initialize modBase as 0x1FF. Keep the second modulo expression distinct
from the first divisor for IDO, and include the countdown in the
existing discarded condition after the loop.

    modBase = 0x1FF;
    alpha2 = (color0 + 0x200) % (modBase + selectedGroup * 0);
    if ((u32)v0 | (u32)v1 | (u32)v2 | maxColor | remaining) {}

-> Correct ASM in the loop preheader

    beqz    v1, exit
     lui    s6, %hi(D_801475F0_1565A0)
    lui     t4, %hi(D_8005BB34)
    addiu   t4, t4, %lo(D_8005BB34)
    addiu   s6, s6, %lo(D_801475F0_1565A0)
    li      s5, -1
    li      s2, 0x1ff

Incorrect ASM for the blue remainder in func_80096BC4_A5B74

    addiu   t5, v1, 0x200
    div     zero, t5, at

-> Code changed

Use the full-width remainder in the threshold test. A remainder modulo
511 fits in a signed halfword, so the comparison gives the same result.

    if (alpha2 >= 0x100) {
        alpha0 = modBase - blueCheck;
    }

-> Correct ASM for the dividend

    addiu   t0, v1, 0x200
    div     zero, t0, at
