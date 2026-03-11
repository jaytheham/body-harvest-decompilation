nonmatching func_80087A40_16FB00, 0x278

glabel func_80087A40_16FB00
    /* 16FB00 80087A40 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 16FB04 80087A44 308E00FF */  andi       $t6, $a0, 0xFF
    /* 16FB08 80087A48 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* 16FB0C 80087A4C 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* 16FB10 80087A50 000E7880 */  sll        $t7, $t6, 2
    /* 16FB14 80087A54 8C620000 */  lw         $v0, 0x0($v1)
    /* 16FB18 80087A58 AFB20020 */  sw         $s2, 0x20($sp)
    /* 16FB1C 80087A5C 01EE7823 */  subu       $t7, $t7, $t6
    /* 16FB20 80087A60 000F7880 */  sll        $t7, $t7, 2
    /* 16FB24 80087A64 3C128010 */  lui        $s2, %hi(D_800FB6FE)
    /* 16FB28 80087A68 024F9021 */  addu       $s2, $s2, $t7
    /* 16FB2C 80087A6C 8652B6FE */  lh         $s2, %lo(D_800FB6FE)($s2)
    /* 16FB30 80087A70 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 16FB34 80087A74 24580008 */  addiu      $t8, $v0, 0x8
    /* 16FB38 80087A78 AFBE0038 */  sw         $fp, 0x38($sp)
    /* 16FB3C 80087A7C AFB70034 */  sw         $s7, 0x34($sp)
    /* 16FB40 80087A80 AFB60030 */  sw         $s6, 0x30($sp)
    /* 16FB44 80087A84 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 16FB48 80087A88 AFB40028 */  sw         $s4, 0x28($sp)
    /* 16FB4C 80087A8C AFB30024 */  sw         $s3, 0x24($sp)
    /* 16FB50 80087A90 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 16FB54 80087A94 AFB00018 */  sw         $s0, 0x18($sp)
    /* 16FB58 80087A98 AFA40040 */  sw         $a0, 0x40($sp)
    /* 16FB5C 80087A9C AC780000 */  sw         $t8, 0x0($v1)
    /* 16FB60 80087AA0 3C1FE700 */  lui        $ra, (0xE7000000 >> 16)
    /* 16FB64 80087AA4 AC5F0000 */  sw         $ra, 0x0($v0)
    /* 16FB68 80087AA8 AC400004 */  sw         $zero, 0x4($v0)
    /* 16FB6C 80087AAC 8C620000 */  lw         $v0, 0x0($v1)
    /* 16FB70 80087AB0 3C0FFF32 */  lui        $t7, (0xFF327F3F >> 16)
    /* 16FB74 80087AB4 3C0EFCFF */  lui        $t6, (0xFCFF99FF >> 16)
    /* 16FB78 80087AB8 24590008 */  addiu      $t9, $v0, 0x8
    /* 16FB7C 80087ABC AC790000 */  sw         $t9, 0x0($v1)
    /* 16FB80 80087AC0 35CE99FF */  ori        $t6, $t6, (0xFCFF99FF & 0xFFFF)
    /* 16FB84 80087AC4 35EF7F3F */  ori        $t7, $t7, (0xFF327F3F & 0xFFFF)
    /* 16FB88 80087AC8 AC4F0004 */  sw         $t7, 0x4($v0)
    /* 16FB8C 80087ACC AC4E0000 */  sw         $t6, 0x0($v0)
    /* 16FB90 80087AD0 8C620000 */  lw         $v0, 0x0($v1)
    /* 16FB94 80087AD4 3C0F0101 */  lui        $t7, %hi(D_100E080)
    /* 16FB98 80087AD8 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 16FB9C 80087ADC 24580008 */  addiu      $t8, $v0, 0x8
    /* 16FBA0 80087AE0 AC780000 */  sw         $t8, 0x0($v1)
    /* 16FBA4 80087AE4 AC400004 */  sw         $zero, 0x4($v0)
    /* 16FBA8 80087AE8 AC5F0000 */  sw         $ra, 0x0($v0)
    /* 16FBAC 80087AEC 8C620000 */  lw         $v0, 0x0($v1)
    /* 16FBB0 80087AF0 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 16FBB4 80087AF4 25EFE080 */  addiu      $t7, $t7, %lo(D_100E080)
    /* 16FBB8 80087AF8 24590008 */  addiu      $t9, $v0, 0x8
    /* 16FBBC 80087AFC AC790000 */  sw         $t9, 0x0($v1)
    /* 16FBC0 80087B00 01E1C024 */  and        $t8, $t7, $at
    /* 16FBC4 80087B04 3C0EFD90 */  lui        $t6, (0xFD900000 >> 16)
    /* 16FBC8 80087B08 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 16FBCC 80087B0C AC580004 */  sw         $t8, 0x4($v0)
    /* 16FBD0 80087B10 8C620000 */  lw         $v0, 0x0($v1)
    /* 16FBD4 80087B14 3C0F0708 */  lui        $t7, (0x7080200 >> 16)
    /* 16FBD8 80087B18 35EF0200 */  ori        $t7, $t7, (0x7080200 & 0xFFFF)
    /* 16FBDC 80087B1C 24590008 */  addiu      $t9, $v0, 0x8
    /* 16FBE0 80087B20 AC790000 */  sw         $t9, 0x0($v1)
    /* 16FBE4 80087B24 3C0EF590 */  lui        $t6, (0xF5900000 >> 16)
    /* 16FBE8 80087B28 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 16FBEC 80087B2C AC4F0004 */  sw         $t7, 0x4($v0)
    /* 16FBF0 80087B30 8C620000 */  lw         $v0, 0x0($v1)
    /* 16FBF4 80087B34 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
    /* 16FBF8 80087B38 3C0FF300 */  lui        $t7, (0xF3000000 >> 16)
    /* 16FBFC 80087B3C 24580008 */  addiu      $t8, $v0, 0x8
    /* 16FC00 80087B40 AC780000 */  sw         $t8, 0x0($v1)
    /* 16FC04 80087B44 AC400004 */  sw         $zero, 0x4($v0)
    /* 16FC08 80087B48 AC590000 */  sw         $t9, 0x0($v0)
    /* 16FC0C 80087B4C 8C620000 */  lw         $v0, 0x0($v1)
    /* 16FC10 80087B50 3C18070F */  lui        $t8, (0x70FF400 >> 16)
    /* 16FC14 80087B54 3718F400 */  ori        $t8, $t8, (0x70FF400 & 0xFFFF)
    /* 16FC18 80087B58 244E0008 */  addiu      $t6, $v0, 0x8
    /* 16FC1C 80087B5C AC6E0000 */  sw         $t6, 0x0($v1)
    /* 16FC20 80087B60 AC580004 */  sw         $t8, 0x4($v0)
    /* 16FC24 80087B64 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 16FC28 80087B68 8C620000 */  lw         $v0, 0x0($v1)
    /* 16FC2C 80087B6C 3C0FF580 */  lui        $t7, (0xF5800400 >> 16)
    /* 16FC30 80087B70 3C180008 */  lui        $t8, (0x80200 >> 16)
    /* 16FC34 80087B74 24590008 */  addiu      $t9, $v0, 0x8
    /* 16FC38 80087B78 AC790000 */  sw         $t9, 0x0($v1)
    /* 16FC3C 80087B7C AC400004 */  sw         $zero, 0x4($v0)
    /* 16FC40 80087B80 AC5F0000 */  sw         $ra, 0x0($v0)
    /* 16FC44 80087B84 8C620000 */  lw         $v0, 0x0($v1)
    /* 16FC48 80087B88 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
    /* 16FC4C 80087B8C 35EF0400 */  ori        $t7, $t7, (0xF5800400 & 0xFFFF)
    /* 16FC50 80087B90 244E0008 */  addiu      $t6, $v0, 0x8
    /* 16FC54 80087B94 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 16FC58 80087B98 AC580004 */  sw         $t8, 0x4($v0)
    /* 16FC5C 80087B9C AC4F0000 */  sw         $t7, 0x0($v0)
    /* 16FC60 80087BA0 8C700000 */  lw         $s0, 0x0($v1)
    /* 16FC64 80087BA4 3C0F0007 */  lui        $t7, (0x7C07C >> 16)
    /* 16FC68 80087BA8 35EFC07C */  ori        $t7, $t7, (0x7C07C & 0xFFFF)
    /* 16FC6C 80087BAC 26190008 */  addiu      $t9, $s0, 0x8
    /* 16FC70 80087BB0 AC790000 */  sw         $t9, 0x0($v1)
    /* 16FC74 80087BB4 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
    /* 16FC78 80087BB8 24020020 */  addiu      $v0, $zero, 0x20
    /* 16FC7C 80087BBC 3C018010 */  lui        $at, %hi(D_800FB6E5)
    /* 16FC80 80087BC0 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 16FC84 80087BC4 AE0F0004 */  sw         $t7, 0x4($s0)
    /* 16FC88 80087BC8 A022B6E5 */  sb         $v0, %lo(D_800FB6E5)($at)
    /* 16FC8C 80087BCC 3C018010 */  lui        $at, %hi(D_800FB6E6)
    /* 16FC90 80087BD0 A022B6E6 */  sb         $v0, %lo(D_800FB6E6)($at)
    /* 16FC94 80087BD4 2401FFFB */  addiu      $at, $zero, -0x5
    /* 16FC98 80087BD8 1241002B */  beq        $s2, $at, .L80087C88_16FD48
    /* 16FC9C 80087BDC 2413FFFA */   addiu     $s3, $zero, -0x6
    /* 16FCA0 80087BE0 12530029 */  beq        $s2, $s3, .L80087C88_16FD48
    /* 16FCA4 80087BE4 3C1E8010 */   lui       $fp, %hi(D_800FB6E4)
    /* 16FCA8 80087BE8 3C178010 */  lui        $s7, %hi(D_800FB6E0)
    /* 16FCAC 80087BEC 3C168010 */  lui        $s6, %hi(D_800FB6DC)
    /* 16FCB0 80087BF0 3C148010 */  lui        $s4, %hi(D_800FB7B0)
    /* 16FCB4 80087BF4 3C118010 */  lui        $s1, %hi(D_800FB6D0)
    /* 16FCB8 80087BF8 2631B6D0 */  addiu      $s1, $s1, %lo(D_800FB6D0)
    /* 16FCBC 80087BFC 2694B7B0 */  addiu      $s4, $s4, %lo(D_800FB7B0)
    /* 16FCC0 80087C00 26D6B6DC */  addiu      $s6, $s6, %lo(D_800FB6DC)
    /* 16FCC4 80087C04 26F7B6E0 */  addiu      $s7, $s7, %lo(D_800FB6E0)
    /* 16FCC8 80087C08 27DEB6E4 */  addiu      $fp, $fp, %lo(D_800FB6E4)
    /* 16FCCC 80087C0C 24150016 */  addiu      $s5, $zero, 0x16
  .L80087C10_16FCD0:
    /* 16FCD0 80087C10 02550019 */  multu      $s2, $s5
    /* 16FCD4 80087C14 0000C012 */  mflo       $t8
    /* 16FCD8 80087C18 02988021 */  addu       $s0, $s4, $t8
    /* 16FCDC 80087C1C 86190008 */  lh         $t9, 0x8($s0)
    /* 16FCE0 80087C20 860E000A */  lh         $t6, 0xA($s0)
    /* 16FCE4 80087C24 860F000C */  lh         $t7, 0xC($s0)
    /* 16FCE8 80087C28 44992000 */  mtc1       $t9, $f4
    /* 16FCEC 80087C2C 86190002 */  lh         $t9, 0x2($s0)
    /* 16FCF0 80087C30 448E4000 */  mtc1       $t6, $f8
    /* 16FCF4 80087C34 468021A0 */  cvt.s.w    $f6, $f4
    /* 16FCF8 80087C38 448F8000 */  mtc1       $t7, $f16
    /* 16FCFC 80087C3C 44992000 */  mtc1       $t9, $f4
    /* 16FD00 80087C40 920E0011 */  lbu        $t6, 0x11($s0)
    /* 16FD04 80087C44 2618000E */  addiu      $t8, $s0, 0xE
    /* 16FD08 80087C48 468042A0 */  cvt.s.w    $f10, $f8
    /* 16FD0C 80087C4C E6260000 */  swc1       $f6, 0x0($s1)
    /* 16FD10 80087C50 AED80000 */  sw         $t8, 0x0($s6)
    /* 16FD14 80087C54 A3CE0000 */  sb         $t6, 0x0($fp)
    /* 16FD18 80087C58 468084A0 */  cvt.s.w    $f18, $f16
    /* 16FD1C 80087C5C E62A0004 */  swc1       $f10, 0x4($s1)
    /* 16FD20 80087C60 468021A0 */  cvt.s.w    $f6, $f4
    /* 16FD24 80087C64 E6320008 */  swc1       $f18, 0x8($s1)
    /* 16FD28 80087C68 0C022876 */  jal        func_8008A1D8_172298
    /* 16FD2C 80087C6C E6E60000 */   swc1      $f6, 0x0($s7)
    /* 16FD30 80087C70 86120004 */  lh         $s2, 0x4($s0)
    /* 16FD34 80087C74 2401FFFB */  addiu      $at, $zero, -0x5
    /* 16FD38 80087C78 52410004 */  beql       $s2, $at, .L80087C8C_16FD4C
    /* 16FD3C 80087C7C 8FBF003C */   lw        $ra, 0x3C($sp)
    /* 16FD40 80087C80 1653FFE3 */  bne        $s2, $s3, .L80087C10_16FCD0
    /* 16FD44 80087C84 00000000 */   nop
  .L80087C88_16FD48:
    /* 16FD48 80087C88 8FBF003C */  lw         $ra, 0x3C($sp)
  .L80087C8C_16FD4C:
    /* 16FD4C 80087C8C 8FB00018 */  lw         $s0, 0x18($sp)
    /* 16FD50 80087C90 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 16FD54 80087C94 8FB20020 */  lw         $s2, 0x20($sp)
    /* 16FD58 80087C98 8FB30024 */  lw         $s3, 0x24($sp)
    /* 16FD5C 80087C9C 8FB40028 */  lw         $s4, 0x28($sp)
    /* 16FD60 80087CA0 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 16FD64 80087CA4 8FB60030 */  lw         $s6, 0x30($sp)
    /* 16FD68 80087CA8 8FB70034 */  lw         $s7, 0x34($sp)
    /* 16FD6C 80087CAC 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 16FD70 80087CB0 03E00008 */  jr         $ra
    /* 16FD74 80087CB4 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_80087A40_16FB00
