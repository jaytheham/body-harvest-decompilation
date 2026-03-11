nonmatching func_800D6A84_E5A34, 0x58

glabel func_800D6A84_E5A34
    /* E5A34 800D6A84 308E00FF */  andi       $t6, $a0, 0xFF
    /* E5A38 800D6A88 3C188015 */  lui        $t8, %hi(D_80153AE0)
    /* E5A3C 800D6A8C 27183AE0 */  addiu      $t8, $t8, %lo(D_80153AE0)
    /* E5A40 800D6A90 000E7940 */  sll        $t7, $t6, 5
    /* E5A44 800D6A94 01F81021 */  addu       $v0, $t7, $t8
    /* E5A48 800D6A98 000E1880 */  sll        $v1, $t6, 2
    /* E5A4C 800D6A9C 3C198014 */  lui        $t9, %hi(D_8013E2F4)
    /* E5A50 800D6AA0 A0400013 */  sb         $zero, 0x13($v0)
    /* E5A54 800D6AA4 A0400014 */  sb         $zero, 0x14($v0)
    /* E5A58 800D6AA8 0323C821 */  addu       $t9, $t9, $v1
    /* E5A5C 800D6AAC 8F39E2F4 */  lw         $t9, %lo(D_8013E2F4)($t9)
    /* E5A60 800D6AB0 3C088014 */  lui        $t0, %hi(D_8013E2EC)
    /* E5A64 800D6AB4 010E4021 */  addu       $t0, $t0, $t6
    /* E5A68 800D6AB8 AC590018 */  sw         $t9, 0x18($v0)
    /* E5A6C 800D6ABC 9108E2EC */  lbu        $t0, %lo(D_8013E2EC)($t0)
    /* E5A70 800D6AC0 3C098014 */  lui        $t1, %hi(D_8013E308)
    /* E5A74 800D6AC4 01234821 */  addu       $t1, $t1, $v1
    /* E5A78 800D6AC8 A0480012 */  sb         $t0, 0x12($v0)
    /* E5A7C 800D6ACC 8D29E308 */  lw         $t1, %lo(D_8013E308)($t1)
    /* E5A80 800D6AD0 AFA40000 */  sw         $a0, 0x0($sp)
    /* E5A84 800D6AD4 03E00008 */  jr         $ra
    /* E5A88 800D6AD8 AC49001C */   sw        $t1, 0x1C($v0)
endlabel func_800D6A84_E5A34
