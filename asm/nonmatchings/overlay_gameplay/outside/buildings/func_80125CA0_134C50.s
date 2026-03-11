nonmatching func_80125CA0_134C50, 0xD0

glabel func_80125CA0_134C50
    /* 134C50 80125CA0 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* 134C54 80125CA4 8FAE006C */  lw         $t6, 0x6C($sp)
    /* 134C58 80125CA8 00E41823 */  subu       $v1, $a3, $a0
    /* 134C5C 80125CAC 44839000 */  mtc1       $v1, $f18
    /* 134C60 80125CB0 01C64023 */  subu       $t0, $t6, $a2
    /* 134C64 80125CB4 44888000 */  mtc1       $t0, $f16
    /* 134C68 80125CB8 468093A0 */  cvt.s.w    $f14, $f18
    /* 134C6C 80125CBC AFBF0024 */  sw         $ra, 0x24($sp)
    /* 134C70 80125CC0 AFA40058 */  sw         $a0, 0x58($sp)
    /* 134C74 80125CC4 AFA5005C */  sw         $a1, 0x5C($sp)
    /* 134C78 80125CC8 AFA60060 */  sw         $a2, 0x60($sp)
    /* 134C7C 80125CCC 46808320 */  cvt.s.w    $f12, $f16
    /* 134C80 80125CD0 AFA3002C */  sw         $v1, 0x2C($sp)
    /* 134C84 80125CD4 0C000E09 */  jal        func_80003824_4424
    /* 134C88 80125CD8 AFA80028 */   sw        $t0, 0x28($sp)
    /* 134C8C 80125CDC 8FA3002C */  lw         $v1, 0x2C($sp)
    /* 134C90 80125CE0 8FA80028 */  lw         $t0, 0x28($sp)
    /* 134C94 80125CE4 A7A2003A */  sh         $v0, 0x3A($sp)
    /* 134C98 80125CE8 00630019 */  multu      $v1, $v1
    /* 134C9C 80125CEC 0000C812 */  mflo       $t9
    /* 134CA0 80125CF0 00000000 */  nop
    /* 134CA4 80125CF4 00000000 */  nop
    /* 134CA8 80125CF8 01080019 */  multu      $t0, $t0
    /* 134CAC 80125CFC 00004812 */  mflo       $t1
    /* 134CB0 80125D00 03295021 */  addu       $t2, $t9, $t1
    /* 134CB4 80125D04 448A4000 */  mtc1       $t2, $f8
    /* 134CB8 80125D08 0C007650 */  jal        sqrtf
    /* 134CBC 80125D0C 46804320 */   cvt.s.w   $f12, $f8
    /* 134CC0 80125D10 8FAB0068 */  lw         $t3, 0x68($sp)
    /* 134CC4 80125D14 8FAC005C */  lw         $t4, 0x5C($sp)
    /* 134CC8 80125D18 46000306 */  mov.s      $f12, $f0
    /* 134CCC 80125D1C 016C6823 */  subu       $t5, $t3, $t4
    /* 134CD0 80125D20 000D7023 */  negu       $t6, $t5
    /* 134CD4 80125D24 448E5000 */  mtc1       $t6, $f10
    /* 134CD8 80125D28 0C000E09 */  jal        func_80003824_4424
    /* 134CDC 80125D2C 468053A0 */   cvt.s.w   $f14, $f10
    /* 134CE0 80125D30 87AF003A */  lh         $t7, 0x3A($sp)
    /* 134CE4 80125D34 3C040D04 */  lui        $a0, %hi(D_D03E780)
    /* 134CE8 80125D38 24180001 */  addiu      $t8, $zero, 0x1
    /* 134CEC 80125D3C AFB8001C */  sw         $t8, 0x1C($sp)
    /* 134CF0 80125D40 2484E780 */  addiu      $a0, $a0, %lo(D_D03E780)
    /* 134CF4 80125D44 87A5005A */  lh         $a1, 0x5A($sp)
    /* 134CF8 80125D48 87A6005E */  lh         $a2, 0x5E($sp)
    /* 134CFC 80125D4C 87A70062 */  lh         $a3, 0x62($sp)
    /* 134D00 80125D50 AFA00014 */  sw         $zero, 0x14($sp)
    /* 134D04 80125D54 AFA20018 */  sw         $v0, 0x18($sp)
    /* 134D08 80125D58 0C036547 */  jal        func_800D951C_E84CC
    /* 134D0C 80125D5C AFAF0010 */   sw        $t7, 0x10($sp)
    /* 134D10 80125D60 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 134D14 80125D64 27BD0058 */  addiu      $sp, $sp, 0x58
    /* 134D18 80125D68 03E00008 */  jr         $ra
    /* 134D1C 80125D6C 00000000 */   nop
endlabel func_80125CA0_134C50
