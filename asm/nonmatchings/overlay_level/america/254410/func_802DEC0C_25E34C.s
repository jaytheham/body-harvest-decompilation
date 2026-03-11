nonmatching func_802DEC0C_25E34C, 0xA0

glabel func_802DEC0C_25E34C
    /* 25E34C 802DEC0C 3C01802E */  lui        $at, %hi(D_802DF3A4)
    /* 25E350 802DEC10 C420F3A4 */  lwc1       $f0, %lo(D_802DF3A4)($at)
    /* 25E354 802DEC14 3C01C2F8 */  lui        $at, (0xC2F80000 >> 16)
    /* 25E358 802DEC18 44812000 */  mtc1       $at, $f4
    /* 25E35C 802DEC1C 3C014190 */  lui        $at, (0x41900000 >> 16)
    /* 25E360 802DEC20 44815000 */  mtc1       $at, $f10
    /* 25E364 802DEC24 46002182 */  mul.s      $f6, $f4, $f0
    /* 25E368 802DEC28 3C0141A8 */  lui        $at, (0x41A80000 >> 16)
    /* 25E36C 802DEC2C 44812000 */  mtc1       $at, $f4
    /* 25E370 802DEC30 46005402 */  mul.s      $f16, $f10, $f0
    /* 25E374 802DEC34 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 25E378 802DEC38 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 25E37C 802DEC3C AFA40020 */  sw         $a0, 0x20($sp)
    /* 25E380 802DEC40 93A40023 */  lbu        $a0, 0x23($sp)
    /* 25E384 802DEC44 4600320D */  trunc.w.s  $f8, $f6
    /* 25E388 802DEC48 46002182 */  mul.s      $f6, $f4, $f0
    /* 25E38C 802DEC4C 44054000 */  mfc1       $a1, $f8
    /* 25E390 802DEC50 4600848D */  trunc.w.s  $f18, $f16
    /* 25E394 802DEC54 00057C00 */  sll        $t7, $a1, 16
    /* 25E398 802DEC58 000F2C03 */  sra        $a1, $t7, 16
    /* 25E39C 802DEC5C 4600320D */  trunc.w.s  $f8, $f6
    /* 25E3A0 802DEC60 44069000 */  mfc1       $a2, $f18
    /* 25E3A4 802DEC64 44074000 */  mfc1       $a3, $f8
    /* 25E3A8 802DEC68 00064400 */  sll        $t0, $a2, 16
    /* 25E3AC 802DEC6C 00083403 */  sra        $a2, $t0, 16
    /* 25E3B0 802DEC70 00075C00 */  sll        $t3, $a3, 16
    /* 25E3B4 802DEC74 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 25E3B8 802DEC78 000B3C03 */   sra       $a3, $t3, 16
    /* 25E3BC 802DEC7C 3C0D802E */  lui        $t5, %hi(D_802E0B44)
    /* 25E3C0 802DEC80 25AD0B44 */  addiu      $t5, $t5, %lo(D_802E0B44)
    /* 25E3C4 802DEC84 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 25E3C8 802DEC88 93A40023 */  lbu        $a0, 0x23($sp)
    /* 25E3CC 802DEC8C 2405FF80 */  addiu      $a1, $zero, -0x80
    /* 25E3D0 802DEC90 00003025 */  or         $a2, $zero, $zero
    /* 25E3D4 802DEC94 0C0B7A64 */  jal        func_802DE990_25E0D0
    /* 25E3D8 802DEC98 00003825 */   or        $a3, $zero, $zero
    /* 25E3DC 802DEC9C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 25E3E0 802DECA0 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 25E3E4 802DECA4 03E00008 */  jr         $ra
    /* 25E3E8 802DECA8 00000000 */   nop
endlabel func_802DEC0C_25E34C
