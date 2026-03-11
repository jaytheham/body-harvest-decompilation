nonmatching func_802D7EAC_1F0BBC, 0x120

glabel func_802D7EAC_1F0BBC
    /* 1F0BBC 802D7EAC 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F0BC0 802D7EB0 000E7880 */  sll        $t7, $t6, 2
    /* 1F0BC4 802D7EB4 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F0BC8 802D7EB8 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F0BCC 802D7EBC 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F0BD0 802D7EC0 000F7900 */  sll        $t7, $t7, 4
    /* 1F0BD4 802D7EC4 01F81821 */  addu       $v1, $t7, $t8
    /* 1F0BD8 802D7EC8 8C790020 */  lw         $t9, 0x20($v1)
    /* 1F0BDC 802D7ECC 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 1F0BE0 802D7ED0 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 1F0BE4 802D7ED4 33280600 */  andi       $t0, $t9, 0x600
    /* 1F0BE8 802D7ED8 11000038 */  beqz       $t0, .L802D7FBC_1F0CCC
    /* 1F0BEC 802D7EDC AFA40030 */   sw        $a0, 0x30($sp)
    /* 1F0BF0 802D7EE0 906B001A */  lbu        $t3, 0x1A($v1)
    /* 1F0BF4 802D7EE4 84650002 */  lh         $a1, 0x2($v1)
    /* 1F0BF8 802D7EE8 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 1F0BFC 802D7EEC 000B6080 */  sll        $t4, $t3, 2
    /* 1F0C00 802D7EF0 018B6023 */  subu       $t4, $t4, $t3
    /* 1F0C04 802D7EF4 000C6080 */  sll        $t4, $t4, 2
    /* 1F0C08 802D7EF8 018B6021 */  addu       $t4, $t4, $t3
    /* 1F0C0C 802D7EFC 000C60C0 */  sll        $t4, $t4, 3
    /* 1F0C10 802D7F00 24A50014 */  addiu      $a1, $a1, 0x14
    /* 1F0C14 802D7F04 00054C00 */  sll        $t1, $a1, 16
    /* 1F0C18 802D7F08 00EC3821 */  addu       $a3, $a3, $t4
    /* 1F0C1C 802D7F0C 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 1F0C20 802D7F10 00092C03 */  sra        $a1, $t1, 16
    /* 1F0C24 802D7F14 84640000 */  lh         $a0, 0x0($v1)
    /* 1F0C28 802D7F18 84660004 */  lh         $a2, 0x4($v1)
    /* 1F0C2C 802D7F1C AFA00010 */  sw         $zero, 0x10($sp)
    /* 1F0C30 802D7F20 0C037E12 */  jal        func_800DF848_EE7F8
    /* 1F0C34 802D7F24 AFA3002C */   sw        $v1, 0x2C($sp)
    /* 1F0C38 802D7F28 8FA3002C */  lw         $v1, 0x2C($sp)
    /* 1F0C3C 802D7F2C 24070002 */  addiu      $a3, $zero, 0x2
    /* 1F0C40 802D7F30 84650002 */  lh         $a1, 0x2($v1)
    /* 1F0C44 802D7F34 84640000 */  lh         $a0, 0x0($v1)
    /* 1F0C48 802D7F38 84660004 */  lh         $a2, 0x4($v1)
    /* 1F0C4C 802D7F3C 24A50064 */  addiu      $a1, $a1, 0x64
    /* 1F0C50 802D7F40 00056C00 */  sll        $t5, $a1, 16
    /* 1F0C54 802D7F44 0C03089D */  jal        func_800C2274_D1224
    /* 1F0C58 802D7F48 000D2C03 */   sra       $a1, $t5, 16
    /* 1F0C5C 802D7F4C 8FA3002C */  lw         $v1, 0x2C($sp)
    /* 1F0C60 802D7F50 240F005A */  addiu      $t7, $zero, 0x5A
    /* 1F0C64 802D7F54 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 1F0C68 802D7F58 9078001A */  lbu        $t8, 0x1A($v1)
    /* 1F0C6C 802D7F5C A0620024 */  sb         $v0, 0x24($v1)
    /* 1F0C70 802D7F60 A46F002C */  sh         $t7, 0x2C($v1)
    /* 1F0C74 802D7F64 0018C880 */  sll        $t9, $t8, 2
    /* 1F0C78 802D7F68 0338C823 */  subu       $t9, $t9, $t8
    /* 1F0C7C 802D7F6C 0019C880 */  sll        $t9, $t9, 2
    /* 1F0C80 802D7F70 0338C821 */  addu       $t9, $t9, $t8
    /* 1F0C84 802D7F74 0019C8C0 */  sll        $t9, $t9, 3
    /* 1F0C88 802D7F78 00F93821 */  addu       $a3, $a3, $t9
    /* 1F0C8C 802D7F7C A060003D */  sb         $zero, 0x3D($v1)
    /* 1F0C90 802D7F80 84E7668C */  lh         $a3, %lo(D_8025668C)($a3)
    /* 1F0C94 802D7F84 2409005A */  addiu      $t1, $zero, 0x5A
    /* 1F0C98 802D7F88 240A00F0 */  addiu      $t2, $zero, 0xF0
    /* 1F0C9C 802D7F8C 24E70032 */  addiu      $a3, $a3, 0x32
    /* 1F0CA0 802D7F90 30E8FFFF */  andi       $t0, $a3, 0xFFFF
    /* 1F0CA4 802D7F94 240B0078 */  addiu      $t3, $zero, 0x78
    /* 1F0CA8 802D7F98 AFAB0018 */  sw         $t3, 0x18($sp)
    /* 1F0CAC 802D7F9C 01003825 */  or         $a3, $t0, $zero
    /* 1F0CB0 802D7FA0 AFAA0014 */  sw         $t2, 0x14($sp)
    /* 1F0CB4 802D7FA4 AFA90010 */  sw         $t1, 0x10($sp)
    /* 1F0CB8 802D7FA8 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 1F0CBC 802D7FAC 84640000 */  lh         $a0, 0x0($v1)
    /* 1F0CC0 802D7FB0 84650002 */  lh         $a1, 0x2($v1)
    /* 1F0CC4 802D7FB4 0C030EF6 */  jal        func_800C3BD8_D2B88
    /* 1F0CC8 802D7FB8 84660004 */   lh        $a2, 0x4($v1)
  .L802D7FBC_1F0CCC:
    /* 1F0CCC 802D7FBC 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 1F0CD0 802D7FC0 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 1F0CD4 802D7FC4 03E00008 */  jr         $ra
    /* 1F0CD8 802D7FC8 00000000 */   nop
endlabel func_802D7EAC_1F0BBC
