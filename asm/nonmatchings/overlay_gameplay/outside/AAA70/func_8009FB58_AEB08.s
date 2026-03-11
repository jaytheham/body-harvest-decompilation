nonmatching func_8009FB58_AEB08, 0x8A4

glabel func_8009FB58_AEB08
    /* AEB08 8009FB58 27BDFEE0 */  addiu      $sp, $sp, -0x120
    /* AEB0C 8009FB5C AFB2001C */  sw         $s2, 0x1C($sp)
    /* AEB10 8009FB60 3C128006 */  lui        $s2, %hi(D_8005BB2C)
    /* AEB14 8009FB64 2652BB2C */  addiu      $s2, $s2, %lo(D_8005BB2C)
    /* AEB18 8009FB68 8E420000 */  lw         $v0, 0x0($s2)
    /* AEB1C 8009FB6C AFBF002C */  sw         $ra, 0x2C($sp)
    /* AEB20 8009FB70 AFB50028 */  sw         $s5, 0x28($sp)
    /* AEB24 8009FB74 244E0008 */  addiu      $t6, $v0, 0x8
    /* AEB28 8009FB78 AFB40024 */  sw         $s4, 0x24($sp)
    /* AEB2C 8009FB7C AFB30020 */  sw         $s3, 0x20($sp)
    /* AEB30 8009FB80 AFB10018 */  sw         $s1, 0x18($sp)
    /* AEB34 8009FB84 AFB00014 */  sw         $s0, 0x14($sp)
    /* AEB38 8009FB88 AE4E0000 */  sw         $t6, 0x0($s2)
    /* AEB3C 8009FB8C 3C0FBB00 */  lui        $t7, (0xBB000001 >> 16)
    /* AEB40 8009FB90 3C188000 */  lui        $t8, (0x80008000 >> 16)
    /* AEB44 8009FB94 37188000 */  ori        $t8, $t8, (0x80008000 & 0xFFFF)
    /* AEB48 8009FB98 35EF0001 */  ori        $t7, $t7, (0xBB000001 & 0xFFFF)
    /* AEB4C 8009FB9C AC4F0000 */  sw         $t7, 0x0($v0)
    /* AEB50 8009FBA0 AC580004 */  sw         $t8, 0x4($v0)
    /* AEB54 8009FBA4 8E420000 */  lw         $v0, 0x0($s2)
    /* AEB58 8009FBA8 3C0EBA00 */  lui        $t6, (0xBA000E02 >> 16)
    /* AEB5C 8009FBAC 35CE0E02 */  ori        $t6, $t6, (0xBA000E02 & 0xFFFF)
    /* AEB60 8009FBB0 24590008 */  addiu      $t9, $v0, 0x8
    /* AEB64 8009FBB4 AE590000 */  sw         $t9, 0x0($s2)
    /* AEB68 8009FBB8 340F8000 */  ori        $t7, $zero, 0x8000
    /* AEB6C 8009FBBC AC4F0004 */  sw         $t7, 0x4($v0)
    /* AEB70 8009FBC0 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AEB74 8009FBC4 8E420000 */  lw         $v0, 0x0($s2)
    /* AEB78 8009FBC8 3C0E0050 */  lui        $t6, (0x504240 >> 16)
    /* AEB7C 8009FBCC 3C19B900 */  lui        $t9, (0xB900031D >> 16)
    /* AEB80 8009FBD0 24580008 */  addiu      $t8, $v0, 0x8
    /* AEB84 8009FBD4 AE580000 */  sw         $t8, 0x0($s2)
    /* AEB88 8009FBD8 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
    /* AEB8C 8009FBDC 35CE4240 */  ori        $t6, $t6, (0x504240 & 0xFFFF)
    /* AEB90 8009FBE0 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AEB94 8009FBE4 AC590000 */  sw         $t9, 0x0($v0)
    /* AEB98 8009FBE8 8E420000 */  lw         $v0, 0x0($s2)
    /* AEB9C 8009FBEC 3C19FF2F */  lui        $t9, (0xFF2FFFFF >> 16)
    /* AEBA0 8009FBF0 3C18FC11 */  lui        $t8, (0xFC119623 >> 16)
    /* AEBA4 8009FBF4 244F0008 */  addiu      $t7, $v0, 0x8
    /* AEBA8 8009FBF8 AE4F0000 */  sw         $t7, 0x0($s2)
    /* AEBAC 8009FBFC 37189623 */  ori        $t8, $t8, (0xFC119623 & 0xFFFF)
    /* AEBB0 8009FC00 3739FFFF */  ori        $t9, $t9, (0xFF2FFFFF & 0xFFFF)
    /* AEBB4 8009FC04 AC590004 */  sw         $t9, 0x4($v0)
    /* AEBB8 8009FC08 AC580000 */  sw         $t8, 0x0($v0)
    /* AEBBC 8009FC0C 8E420000 */  lw         $v0, 0x0($s2)
    /* AEBC0 8009FC10 3C0D0503 */  lui        $t5, %hi(D_5032190)
    /* AEBC4 8009FC14 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* AEBC8 8009FC18 244E0008 */  addiu      $t6, $v0, 0x8
    /* AEBCC 8009FC1C AE4E0000 */  sw         $t6, 0x0($s2)
    /* AEBD0 8009FC20 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* AEBD4 8009FC24 25AD2190 */  addiu      $t5, $t5, %lo(D_5032190)
    /* AEBD8 8009FC28 01A1C024 */  and        $t8, $t5, $at
    /* AEBDC 8009FC2C 3C0FFD50 */  lui        $t7, (0xFD500000 >> 16)
    /* AEBE0 8009FC30 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AEBE4 8009FC34 AC580004 */  sw         $t8, 0x4($v0)
    /* AEBE8 8009FC38 8E420000 */  lw         $v0, 0x0($s2)
    /* AEBEC 8009FC3C 3C0F0700 */  lui        $t7, (0x7000000 >> 16)
    /* AEBF0 8009FC40 3C0EF550 */  lui        $t6, (0xF5500000 >> 16)
    /* AEBF4 8009FC44 24590008 */  addiu      $t9, $v0, 0x8
    /* AEBF8 8009FC48 AE590000 */  sw         $t9, 0x0($s2)
    /* AEBFC 8009FC4C AC4F0004 */  sw         $t7, 0x4($v0)
    /* AEC00 8009FC50 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AEC04 8009FC54 8E420000 */  lw         $v0, 0x0($s2)
    /* AEC08 8009FC58 03006825 */  or         $t5, $t8, $zero
    /* AEC0C 8009FC5C 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
    /* AEC10 8009FC60 24580008 */  addiu      $t8, $v0, 0x8
    /* AEC14 8009FC64 AE580000 */  sw         $t8, 0x0($s2)
    /* AEC18 8009FC68 AC400004 */  sw         $zero, 0x4($v0)
    /* AEC1C 8009FC6C AC590000 */  sw         $t9, 0x0($v0)
    /* AEC20 8009FC70 8E420000 */  lw         $v0, 0x0($s2)
    /* AEC24 8009FC74 3C18070F */  lui        $t8, (0x70FF400 >> 16)
    /* AEC28 8009FC78 3718F400 */  ori        $t8, $t8, (0x70FF400 & 0xFFFF)
    /* AEC2C 8009FC7C 244E0008 */  addiu      $t6, $v0, 0x8
    /* AEC30 8009FC80 AE4E0000 */  sw         $t6, 0x0($s2)
    /* AEC34 8009FC84 3C0FF300 */  lui        $t7, (0xF3000000 >> 16)
    /* AEC38 8009FC88 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AEC3C 8009FC8C AC580004 */  sw         $t8, 0x4($v0)
    /* AEC40 8009FC90 8E420000 */  lw         $v0, 0x0($s2)
    /* AEC44 8009FC94 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* AEC48 8009FC98 3C18F540 */  lui        $t8, (0xF5400400 >> 16)
    /* AEC4C 8009FC9C 24590008 */  addiu      $t9, $v0, 0x8
    /* AEC50 8009FCA0 AE590000 */  sw         $t9, 0x0($s2)
    /* AEC54 8009FCA4 AC400004 */  sw         $zero, 0x4($v0)
    /* AEC58 8009FCA8 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AEC5C 8009FCAC 8E420000 */  lw         $v0, 0x0($s2)
    /* AEC60 8009FCB0 37180400 */  ori        $t8, $t8, (0xF5400400 & 0xFFFF)
    /* AEC64 8009FCB4 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
    /* AEC68 8009FCB8 244F0008 */  addiu      $t7, $v0, 0x8
    /* AEC6C 8009FCBC AE4F0000 */  sw         $t7, 0x0($s2)
    /* AEC70 8009FCC0 AC400004 */  sw         $zero, 0x4($v0)
    /* AEC74 8009FCC4 AC580000 */  sw         $t8, 0x0($v0)
    /* AEC78 8009FCC8 8E420000 */  lw         $v0, 0x0($s2)
    /* AEC7C 8009FCCC AFAD0038 */  sw         $t5, 0x38($sp)
    /* AEC80 8009FCD0 3C0F0007 */  lui        $t7, (0x7C07C >> 16)
    /* AEC84 8009FCD4 24590008 */  addiu      $t9, $v0, 0x8
    /* AEC88 8009FCD8 AE590000 */  sw         $t9, 0x0($s2)
    /* AEC8C 8009FCDC 35EFC07C */  ori        $t7, $t7, (0x7C07C & 0xFFFF)
    /* AEC90 8009FCE0 AC4F0004 */  sw         $t7, 0x4($v0)
    /* AEC94 8009FCE4 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AEC98 8009FCE8 8E420000 */  lw         $v0, 0x0($s2)
    /* AEC9C 8009FCEC 3C19FA00 */  lui        $t9, (0xFA00FFFF >> 16)
    /* AECA0 8009FCF0 3C158005 */  lui        $s5, %hi(D_80052A8C)
    /* AECA4 8009FCF4 24580008 */  addiu      $t8, $v0, 0x8
    /* AECA8 8009FCF8 AE580000 */  sw         $t8, 0x0($s2)
    /* AECAC 8009FCFC 3739FFFF */  ori        $t9, $t9, (0xFA00FFFF & 0xFFFF)
    /* AECB0 8009FD00 26B52A8C */  addiu      $s5, $s5, %lo(D_80052A8C)
    /* AECB4 8009FD04 AC590000 */  sw         $t9, 0x0($v0)
    /* AECB8 8009FD08 8EA50000 */  lw         $a1, 0x0($s5)
    /* AECBC 8009FD0C 3C100503 */  lui        $s0, %hi(D_5032390)
    /* AECC0 8009FD10 26102390 */  addiu      $s0, $s0, %lo(D_5032390)
    /* AECC4 8009FD14 00057080 */  sll        $t6, $a1, 2
    /* AECC8 8009FD18 01C57023 */  subu       $t6, $t6, $a1
    /* AECCC 8009FD1C 000E7080 */  sll        $t6, $t6, 2
    /* AECD0 8009FD20 31CF00FF */  andi       $t7, $t6, 0xFF
    /* AECD4 8009FD24 000FC600 */  sll        $t8, $t7, 24
    /* AECD8 8009FD28 000FCC00 */  sll        $t9, $t7, 16
    /* AECDC 8009FD2C 03197025 */  or         $t6, $t8, $t9
    /* AECE0 8009FD30 35CF00FF */  ori        $t7, $t6, 0xFF
    /* AECE4 8009FD34 AC4F0004 */  sw         $t7, 0x4($v0)
    /* AECE8 8009FD38 8E420000 */  lw         $v0, 0x0($s2)
    /* AECEC 8009FD3C 3C19FD10 */  lui        $t9, (0xFD100000 >> 16)
    /* AECF0 8009FD40 3C0FE800 */  lui        $t7, (0xE8000000 >> 16)
    /* AECF4 8009FD44 24580008 */  addiu      $t8, $v0, 0x8
    /* AECF8 8009FD48 AE580000 */  sw         $t8, 0x0($s2)
    /* AECFC 8009FD4C AC500004 */  sw         $s0, 0x4($v0)
    /* AED00 8009FD50 AC590000 */  sw         $t9, 0x0($v0)
    /* AED04 8009FD54 8E420000 */  lw         $v0, 0x0($s2)
    /* AED08 8009FD58 3C19F500 */  lui        $t9, (0xF5000100 >> 16)
    /* AED0C 8009FD5C 37390100 */  ori        $t9, $t9, (0xF5000100 & 0xFFFF)
    /* AED10 8009FD60 244E0008 */  addiu      $t6, $v0, 0x8
    /* AED14 8009FD64 AE4E0000 */  sw         $t6, 0x0($s2)
    /* AED18 8009FD68 AC400004 */  sw         $zero, 0x4($v0)
    /* AED1C 8009FD6C AC4F0000 */  sw         $t7, 0x0($v0)
    /* AED20 8009FD70 8E420000 */  lw         $v0, 0x0($s2)
    /* AED24 8009FD74 3C0E0700 */  lui        $t6, (0x7000000 >> 16)
    /* AED28 8009FD78 3C1FE700 */  lui        $ra, (0xE7000000 >> 16)
    /* AED2C 8009FD7C 24580008 */  addiu      $t8, $v0, 0x8
    /* AED30 8009FD80 AE580000 */  sw         $t8, 0x0($s2)
    /* AED34 8009FD84 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AED38 8009FD88 AC590000 */  sw         $t9, 0x0($v0)
    /* AED3C 8009FD8C 8E420000 */  lw         $v0, 0x0($s2)
    /* AED40 8009FD90 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
    /* AED44 8009FD94 3C0EF000 */  lui        $t6, (0xF0000000 >> 16)
    /* AED48 8009FD98 244F0008 */  addiu      $t7, $v0, 0x8
    /* AED4C 8009FD9C AE4F0000 */  sw         $t7, 0x0($s2)
    /* AED50 8009FDA0 AC400004 */  sw         $zero, 0x4($v0)
    /* AED54 8009FDA4 AC580000 */  sw         $t8, 0x0($v0)
    /* AED58 8009FDA8 8E420000 */  lw         $v0, 0x0($s2)
    /* AED5C 8009FDAC 3C0F0703 */  lui        $t7, (0x703C000 >> 16)
    /* AED60 8009FDB0 35EFC000 */  ori        $t7, $t7, (0x703C000 & 0xFFFF)
    /* AED64 8009FDB4 24590008 */  addiu      $t9, $v0, 0x8
    /* AED68 8009FDB8 AE590000 */  sw         $t9, 0x0($s2)
    /* AED6C 8009FDBC AC4F0004 */  sw         $t7, 0x4($v0)
    /* AED70 8009FDC0 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AED74 8009FDC4 8E420000 */  lw         $v0, 0x0($s2)
    /* AED78 8009FDC8 3C0EBA00 */  lui        $t6, (0xBA001301 >> 16)
    /* AED7C 8009FDCC 35CE1301 */  ori        $t6, $t6, (0xBA001301 & 0xFFFF)
    /* AED80 8009FDD0 24580008 */  addiu      $t8, $v0, 0x8
    /* AED84 8009FDD4 AE580000 */  sw         $t8, 0x0($s2)
    /* AED88 8009FDD8 AC400004 */  sw         $zero, 0x4($v0)
    /* AED8C 8009FDDC AC5F0000 */  sw         $ra, 0x0($v0)
    /* AED90 8009FDE0 8E420000 */  lw         $v0, 0x0($s2)
    /* AED94 8009FDE4 3C0F0008 */  lui        $t7, (0x80000 >> 16)
    /* AED98 8009FDE8 3C068003 */  lui        $a2, %hi(gzip_data_0000)
    /* AED9C 8009FDEC 24590008 */  addiu      $t9, $v0, 0x8
    /* AEDA0 8009FDF0 AE590000 */  sw         $t9, 0x0($s2)
    /* AEDA4 8009FDF4 AC4F0004 */  sw         $t7, 0x4($v0)
    /* AEDA8 8009FDF8 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AEDAC 8009FDFC 8E420000 */  lw         $v0, 0x0($s2)
    /* AEDB0 8009FE00 24C6448C */  addiu      $a2, $a2, %lo(gzip_data_0000)
    /* AEDB4 8009FE04 3C148005 */  lui        $s4, %hi(D_80052B34)
    /* AEDB8 8009FE08 24580008 */  addiu      $t8, $v0, 0x8
    /* AEDBC 8009FE0C AE580000 */  sw         $t8, 0x0($s2)
    /* AEDC0 8009FE10 AC400004 */  sw         $zero, 0x4($v0)
    /* AEDC4 8009FE14 AC5F0000 */  sw         $ra, 0x0($v0)
    /* AEDC8 8009FE18 8CD90000 */  lw         $t9, 0x0($a2)
    /* AEDCC 8009FE1C AFB00034 */  sw         $s0, 0x34($sp)
    /* AEDD0 8009FE20 26942B34 */  addiu      $s4, $s4, %lo(D_80052B34)
    /* AEDD4 8009FE24 13200023 */  beqz       $t9, .L8009FEB4_AEE64
    /* AEDD8 8009FE28 3C028007 */   lui       $v0, %hi(D_8006C56D)
    /* AEDDC 8009FE2C 8042C56D */  lb         $v0, %lo(D_8006C56D)($v0)
    /* AEDE0 8009FE30 8E840000 */  lw         $a0, 0x0($s4)
    /* AEDE4 8009FE34 3C038007 */  lui        $v1, %hi(D_8006C56E)
    /* AEDE8 8009FE38 8063C56E */  lb         $v1, %lo(D_8006C56E)($v1)
    /* AEDEC 8009FE3C 84850000 */  lh         $a1, 0x0($a0)
    /* AEDF0 8009FE40 00027200 */  sll        $t6, $v0, 8
    /* AEDF4 8009FE44 25C20080 */  addiu      $v0, $t6, 0x80
    /* AEDF8 8009FE48 2458FE00 */  addiu      $t8, $v0, -0x200
    /* AEDFC 8009FE4C 00037A00 */  sll        $t7, $v1, 8
    /* AEE00 8009FE50 00B8082A */  slt        $at, $a1, $t8
    /* AEE04 8009FE54 1420000F */  bnez       $at, .L8009FE94_AEE44
    /* AEE08 8009FE58 25E30080 */   addiu     $v1, $t7, 0x80
    /* AEE0C 8009FE5C 24590200 */  addiu      $t9, $v0, 0x200
    /* AEE10 8009FE60 0325082A */  slt        $at, $t9, $a1
    /* AEE14 8009FE64 5420000C */  bnel       $at, $zero, .L8009FE98_AEE48
    /* AEE18 8009FE68 00022400 */   sll       $a0, $v0, 16
    /* AEE1C 8009FE6C 84850004 */  lh         $a1, 0x4($a0)
    /* AEE20 8009FE70 246EFE00 */  addiu      $t6, $v1, -0x200
    /* AEE24 8009FE74 246F0200 */  addiu      $t7, $v1, 0x200
    /* AEE28 8009FE78 00AE082A */  slt        $at, $a1, $t6
    /* AEE2C 8009FE7C 14200005 */  bnez       $at, .L8009FE94_AEE44
    /* AEE30 8009FE80 01E5082A */   slt       $at, $t7, $a1
    /* AEE34 8009FE84 54200004 */  bnel       $at, $zero, .L8009FE98_AEE48
    /* AEE38 8009FE88 00022400 */   sll       $a0, $v0, 16
    /* AEE3C 8009FE8C 10000009 */  b          .L8009FEB4_AEE64
    /* AEE40 8009FE90 ACC00000 */   sw        $zero, 0x0($a2)
  .L8009FE94_AEE44:
    /* AEE44 8009FE94 00022400 */  sll        $a0, $v0, 16
  .L8009FE98_AEE48:
    /* AEE48 8009FE98 00032C00 */  sll        $a1, $v1, 16
    /* AEE4C 8009FE9C 0005CC03 */  sra        $t9, $a1, 16
    /* AEE50 8009FEA0 0004C403 */  sra        $t8, $a0, 16
    /* AEE54 8009FEA4 03002025 */  or         $a0, $t8, $zero
    /* AEE58 8009FEA8 03202825 */  or         $a1, $t9, $zero
    /* AEE5C 8009FEAC 0C027076 */  jal        func_8009C1D8_AB188
    /* AEE60 8009FEB0 24060001 */   addiu     $a2, $zero, 0x1
  .L8009FEB4_AEE64:
    /* AEE64 8009FEB4 3C148005 */  lui        $s4, %hi(D_80052B34)
    /* AEE68 8009FEB8 3C118015 */  lui        $s1, %hi(D_8014D188)
    /* AEE6C 8009FEBC 26942B34 */  addiu      $s4, $s4, %lo(D_80052B34)
    /* AEE70 8009FEC0 2631D188 */  addiu      $s1, $s1, %lo(D_8014D188)
    /* AEE74 8009FEC4 00008025 */  or         $s0, $zero, $zero
    /* AEE78 8009FEC8 24130018 */  addiu      $s3, $zero, 0x18
  .L8009FECC_AEE7C:
    /* AEE7C 8009FECC 862E0000 */  lh         $t6, 0x0($s1)
    /* AEE80 8009FED0 59C00004 */  blezl      $t6, .L8009FEE4_AEE94
    /* AEE84 8009FED4 26100001 */   addiu     $s0, $s0, 0x1
    /* AEE88 8009FED8 0C01D882 */  jal        func_80076208_851B8
    /* AEE8C 8009FEDC 02002025 */   or        $a0, $s0, $zero
    /* AEE90 8009FEE0 26100001 */  addiu      $s0, $s0, 0x1
  .L8009FEE4_AEE94:
    /* AEE94 8009FEE4 1613FFF9 */  bne        $s0, $s3, .L8009FECC_AEE7C
    /* AEE98 8009FEE8 26310002 */   addiu     $s1, $s1, 0x2
    /* AEE9C 8009FEEC 8E420000 */  lw         $v0, 0x0($s2)
    /* AEEA0 8009FEF0 3C18BA00 */  lui        $t8, (0xBA001301 >> 16)
    /* AEEA4 8009FEF4 3C118015 */  lui        $s1, %hi(D_8014ED04)
    /* AEEA8 8009FEF8 244F0008 */  addiu      $t7, $v0, 0x8
    /* AEEAC 8009FEFC AE4F0000 */  sw         $t7, 0x0($s2)
    /* AEEB0 8009FF00 37181301 */  ori        $t8, $t8, (0xBA001301 & 0xFFFF)
    /* AEEB4 8009FF04 3C190008 */  lui        $t9, (0x80000 >> 16)
    /* AEEB8 8009FF08 2631ED04 */  addiu      $s1, $s1, %lo(D_8014ED04)
    /* AEEBC 8009FF0C AC590004 */  sw         $t9, 0x4($v0)
    /* AEEC0 8009FF10 AC580000 */  sw         $t8, 0x0($v0)
    /* AEEC4 8009FF14 8E2E0000 */  lw         $t6, 0x0($s1)
    /* AEEC8 8009FF18 3C010001 */  lui        $at, (0x186A0 >> 16)
    /* AEECC 8009FF1C 342186A0 */  ori        $at, $at, (0x186A0 & 0xFFFF)
    /* AEED0 8009FF20 51C1002A */  beql       $t6, $at, .L8009FFCC_AEF7C
    /* AEED4 8009FF24 3C014014 */   lui       $at, (0x40140000 >> 16)
    /* AEED8 8009FF28 8E420000 */  lw         $v0, 0x0($s2)
    /* AEEDC 8009FF2C 3C18FA00 */  lui        $t8, (0xFA00FFFF >> 16)
    /* AEEE0 8009FF30 3718FFFF */  ori        $t8, $t8, (0xFA00FFFF & 0xFFFF)
    /* AEEE4 8009FF34 244F0008 */  addiu      $t7, $v0, 0x8
    /* AEEE8 8009FF38 AE4F0000 */  sw         $t7, 0x0($s2)
    /* AEEEC 8009FF3C AC580000 */  sw         $t8, 0x0($v0)
    /* AEEF0 8009FF40 8EA70000 */  lw         $a3, 0x0($s5)
    /* AEEF4 8009FF44 3C138015 */  lui        $s3, %hi(D_8014ED08)
    /* AEEF8 8009FF48 2673ED08 */  addiu      $s3, $s3, %lo(D_8014ED08)
    /* AEEFC 8009FF4C 0007C880 */  sll        $t9, $a3, 2
    /* AEF00 8009FF50 0327C821 */  addu       $t9, $t9, $a3
    /* AEF04 8009FF54 0019C880 */  sll        $t9, $t9, 2
    /* AEF08 8009FF58 332E00FF */  andi       $t6, $t9, 0xFF
    /* AEF0C 8009FF5C 000E7E00 */  sll        $t7, $t6, 24
    /* AEF10 8009FF60 000EC200 */  sll        $t8, $t6, 8
    /* AEF14 8009FF64 01F8C825 */  or         $t9, $t7, $t8
    /* AEF18 8009FF68 372E00FF */  ori        $t6, $t9, 0xFF
    /* AEF1C 8009FF6C AC4E0004 */  sw         $t6, 0x4($v0)
    /* AEF20 8009FF70 86650002 */  lh         $a1, 0x2($s3)
    /* AEF24 8009FF74 86240002 */  lh         $a0, 0x2($s1)
    /* AEF28 8009FF78 0C027076 */  jal        func_8009C1D8_AB188
    /* AEF2C 8009FF7C 24060001 */   addiu     $a2, $zero, 0x1
    /* AEF30 8009FF80 8E8F0000 */  lw         $t7, 0x0($s4)
    /* AEF34 8009FF84 8E390000 */  lw         $t9, 0x0($s1)
    /* AEF38 8009FF88 85F80000 */  lh         $t8, 0x0($t7)
    /* AEF3C 8009FF8C 0C03E710 */  jal        func_800F9C40_108BF0
    /* AEF40 8009FF90 03192023 */   subu      $a0, $t8, $t9
    /* AEF44 8009FF94 8E8E0000 */  lw         $t6, 0x0($s4)
    /* AEF48 8009FF98 8E780000 */  lw         $t8, 0x0($s3)
    /* AEF4C 8009FF9C 00408025 */  or         $s0, $v0, $zero
    /* AEF50 8009FFA0 85CF0004 */  lh         $t7, 0x4($t6)
    /* AEF54 8009FFA4 0C03E710 */  jal        func_800F9C40_108BF0
    /* AEF58 8009FFA8 01F82023 */   subu      $a0, $t7, $t8
    /* AEF5C 8009FFAC 0050C821 */  addu       $t9, $v0, $s0
    /* AEF60 8009FFB0 3C010019 */  lui        $at, (0x190000 >> 16)
    /* AEF64 8009FFB4 0321082B */  sltu       $at, $t9, $at
    /* AEF68 8009FFB8 10200003 */  beqz       $at, .L8009FFC8_AEF78
    /* AEF6C 8009FFBC 3C0E0001 */   lui       $t6, (0x186A0 >> 16)
    /* AEF70 8009FFC0 35CE86A0 */  ori        $t6, $t6, (0x186A0 & 0xFFFF)
    /* AEF74 8009FFC4 AE2E0000 */  sw         $t6, 0x0($s1)
  .L8009FFC8_AEF78:
    /* AEF78 8009FFC8 3C014014 */  lui        $at, (0x40140000 >> 16)
  .L8009FFCC_AEF7C:
    /* AEF7C 8009FFCC 44816800 */  mtc1       $at, $f13
    /* AEF80 8009FFD0 3C088015 */  lui        $t0, %hi(D_8014F1E4)
    /* AEF84 8009FFD4 2508F1E4 */  addiu      $t0, $t0, %lo(D_8014F1E4)
    /* AEF88 8009FFD8 3C018015 */  lui        $at, %hi(D_8014F1EC)
    /* AEF8C 8009FFDC C426F1EC */  lwc1       $f6, %lo(D_8014F1EC)($at)
    /* AEF90 8009FFE0 C5000000 */  lwc1       $f0, 0x0($t0)
    /* AEF94 8009FFE4 44806000 */  mtc1       $zero, $f12
    /* AEF98 8009FFE8 3C098015 */  lui        $t1, %hi(D_8014F1E8)
    /* AEF9C 8009FFEC 46003201 */  sub.s      $f8, $f6, $f0
    /* AEFA0 8009FFF0 2529F1E8 */  addiu      $t1, $t1, %lo(D_8014F1E8)
    /* AEFA4 8009FFF4 3C018015 */  lui        $at, %hi(D_8014F1F0)
    /* AEFA8 8009FFF8 46000121 */  cvt.d.s    $f4, $f0
    /* AEFAC 8009FFFC 460042A1 */  cvt.d.s    $f10, $f8
    /* AEFB0 800A0000 C5220000 */  lwc1       $f2, 0x0($t1)
    /* AEFB4 800A0004 462C5403 */  div.d      $f16, $f10, $f12
    /* AEFB8 800A0008 8E420000 */  lw         $v0, 0x0($s2)
    /* AEFBC 800A000C 3C048005 */  lui        $a0, %hi(D_80052B40)
    /* AEFC0 800A0010 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* AEFC4 800A0014 46001221 */  cvt.d.s    $f8, $f2
    /* AEFC8 800A0018 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* AEFCC 800A001C 24842B40 */  addiu      $a0, $a0, %lo(D_80052B40)
    /* AEFD0 800A0020 240FFFFF */  addiu      $t7, $zero, -0x1
    /* AEFD4 800A0024 24590008 */  addiu      $t9, $v0, 0x8
    /* AEFD8 800A0028 3C108006 */  lui        $s0, %hi(D_8005BB38)
    /* AEFDC 800A002C 2610BB38 */  addiu      $s0, $s0, %lo(D_8005BB38)
    /* AEFE0 800A0030 3C068014 */  lui        $a2, %hi(D_8013D588)
    /* AEFE4 800A0034 24C6D588 */  addiu      $a2, $a2, %lo(D_8013D588)
    /* AEFE8 800A0038 46302480 */  add.d      $f18, $f4, $f16
    /* AEFEC 800A003C 462091A0 */  cvt.s.d    $f6, $f18
    /* AEFF0 800A0040 E5060000 */  swc1       $f6, 0x0($t0)
    /* AEFF4 800A0044 C42AF1F0 */  lwc1       $f10, %lo(D_8014F1F0)($at)
    /* AEFF8 800A0048 A48F0004 */  sh         $t7, 0x4($a0)
    /* AEFFC 800A004C A4A00000 */  sh         $zero, 0x0($a1)
    /* AF000 800A0050 46025101 */  sub.s      $f4, $f10, $f2
    /* AF004 800A0054 A4A00004 */  sh         $zero, 0x4($a1)
    /* AF008 800A0058 AE590000 */  sw         $t9, 0x0($s2)
    /* AF00C 800A005C 46002421 */  cvt.d.s    $f16, $f4
    /* AF010 800A0060 C5040000 */  lwc1       $f4, 0x0($t0)
    /* AF014 800A0064 462C8483 */  div.d      $f18, $f16, $f12
    /* AF018 800A0068 4600240D */  trunc.w.s  $f16, $f4
    /* AF01C 800A006C 44188000 */  mfc1       $t8, $f16
    /* AF020 800A0070 00000000 */  nop
    /* AF024 800A0074 A4980000 */  sh         $t8, 0x0($a0)
    /* AF028 800A0078 3418F000 */  ori        $t8, $zero, 0xF000
    /* AF02C 800A007C A4B80002 */  sh         $t8, 0x2($a1)
    /* AF030 800A0080 46324180 */  add.d      $f6, $f8, $f18
    /* AF034 800A0084 462032A0 */  cvt.s.d    $f10, $f6
    /* AF038 800A0088 E52A0000 */  swc1       $f10, 0x0($t1)
    /* AF03C 800A008C C5280000 */  lwc1       $f8, 0x0($t1)
    /* AF040 800A0090 4600448D */  trunc.w.s  $f18, $f8
    /* AF044 800A0094 440E9000 */  mfc1       $t6, $f18
    /* AF048 800A0098 00000000 */  nop
    /* AF04C 800A009C A48E0002 */  sh         $t6, 0x2($a0)
    /* AF050 800A00A0 3C0EFA00 */  lui        $t6, (0xFA00FFFF >> 16)
    /* AF054 800A00A4 35CEFFFF */  ori        $t6, $t6, (0xFA00FFFF & 0xFFFF)
    /* AF058 800A00A8 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AF05C 800A00AC AC4F0004 */  sw         $t7, 0x4($v0)
    /* AF060 800A00B0 0C000E74 */  jal        func_800039D0_45D0
    /* AF064 800A00B4 8E070000 */   lw        $a3, 0x0($s0)
    /* AF068 800A00B8 8E420000 */  lw         $v0, 0x0($s2)
    /* AF06C 800A00BC 3C190106 */  lui        $t9, (0x1060040 >> 16)
    /* AF070 800A00C0 37390040 */  ori        $t9, $t9, (0x1060040 & 0xFFFF)
    /* AF074 800A00C4 24580008 */  addiu      $t8, $v0, 0x8
    /* AF078 800A00C8 AE580000 */  sw         $t8, 0x0($s2)
    /* AF07C 800A00CC AC590000 */  sw         $t9, 0x0($v0)
    /* AF080 800A00D0 8E0E0000 */  lw         $t6, 0x0($s0)
    /* AF084 800A00D4 3C1F1FFF */  lui        $ra, (0x1FFFFFFF >> 16)
    /* AF088 800A00D8 37FFFFFF */  ori        $ra, $ra, (0x1FFFFFFF & 0xFFFF)
    /* AF08C 800A00DC 01DF7824 */  and        $t7, $t6, $ra
    /* AF090 800A00E0 AC4F0004 */  sw         $t7, 0x4($v0)
    /* AF094 800A00E4 8E180000 */  lw         $t8, 0x0($s0)
    /* AF098 800A00E8 8E420000 */  lw         $v0, 0x0($s2)
    /* AF09C 800A00EC 3C0F0400 */  lui        $t7, (0x400103F >> 16)
    /* AF0A0 800A00F0 27190040 */  addiu      $t9, $t8, 0x40
    /* AF0A4 800A00F4 AE190000 */  sw         $t9, 0x0($s0)
    /* AF0A8 800A00F8 3C188014 */  lui        $t8, %hi(D_8013D5E8)
    /* AF0AC 800A00FC 244E0008 */  addiu      $t6, $v0, 0x8
    /* AF0B0 800A0100 AE4E0000 */  sw         $t6, 0x0($s2)
    /* AF0B4 800A0104 2718D5E8 */  addiu      $t8, $t8, %lo(D_8013D5E8)
    /* AF0B8 800A0108 031FC824 */  and        $t9, $t8, $ra
    /* AF0BC 800A010C 35EF103F */  ori        $t7, $t7, (0x400103F & 0xFFFF)
    /* AF0C0 800A0110 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AF0C4 800A0114 AC590004 */  sw         $t9, 0x4($v0)
    /* AF0C8 800A0118 8E420000 */  lw         $v0, 0x0($s2)
    /* AF0CC 800A011C 3C0F0002 */  lui        $t7, (0x20004 >> 16)
    /* AF0D0 800A0120 3C0DBF00 */  lui        $t5, (0xBF000000 >> 16)
    /* AF0D4 800A0124 244E0008 */  addiu      $t6, $v0, 0x8
    /* AF0D8 800A0128 AE4E0000 */  sw         $t6, 0x0($s2)
    /* AF0DC 800A012C 35EF0004 */  ori        $t7, $t7, (0x20004 & 0xFFFF)
    /* AF0E0 800A0130 AC4F0004 */  sw         $t7, 0x4($v0)
    /* AF0E4 800A0134 AC4D0000 */  sw         $t5, 0x0($v0)
    /* AF0E8 800A0138 8E420000 */  lw         $v0, 0x0($s2)
    /* AF0EC 800A013C 3C190002 */  lui        $t9, (0x20406 >> 16)
    /* AF0F0 800A0140 37390406 */  ori        $t9, $t9, (0x20406 & 0xFFFF)
    /* AF0F4 800A0144 24580008 */  addiu      $t8, $v0, 0x8
    /* AF0F8 800A0148 AE580000 */  sw         $t8, 0x0($s2)
    /* AF0FC 800A014C AC590004 */  sw         $t9, 0x4($v0)
    /* AF100 800A0150 AC4D0000 */  sw         $t5, 0x0($v0)
    /* AF104 800A0154 8E420000 */  lw         $v0, 0x0($s2)
    /* AF108 800A0158 3C0FBD00 */  lui        $t7, (0xBD000000 >> 16)
    /* AF10C 800A015C 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* AF110 800A0160 244E0008 */  addiu      $t6, $v0, 0x8
    /* AF114 800A0164 AE4E0000 */  sw         $t6, 0x0($s2)
    /* AF118 800A0168 AC400004 */  sw         $zero, 0x4($v0)
    /* AF11C 800A016C AC4F0000 */  sw         $t7, 0x0($v0)
    /* AF120 800A0170 8E420000 */  lw         $v0, 0x0($s2)
    /* AF124 800A0174 3C0FFC11 */  lui        $t7, (0xFC119623 >> 16)
    /* AF128 800A0178 35EF9623 */  ori        $t7, $t7, (0xFC119623 & 0xFFFF)
    /* AF12C 800A017C 24580008 */  addiu      $t8, $v0, 0x8
    /* AF130 800A0180 AE580000 */  sw         $t8, 0x0($s2)
    /* AF134 800A0184 AC400004 */  sw         $zero, 0x4($v0)
    /* AF138 800A0188 AC590000 */  sw         $t9, 0x0($v0)
    /* AF13C 800A018C 8E420000 */  lw         $v0, 0x0($s2)
    /* AF140 800A0190 3C18FF2F */  lui        $t8, (0xFF2FFFFF >> 16)
    /* AF144 800A0194 3718FFFF */  ori        $t8, $t8, (0xFF2FFFFF & 0xFFFF)
    /* AF148 800A0198 244E0008 */  addiu      $t6, $v0, 0x8
    /* AF14C 800A019C AE4E0000 */  sw         $t6, 0x0($s2)
    /* AF150 800A01A0 AC580004 */  sw         $t8, 0x4($v0)
    /* AF154 800A01A4 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AF158 800A01A8 8E420000 */  lw         $v0, 0x0($s2)
    /* AF15C 800A01AC 3C0EFD50 */  lui        $t6, (0xFD500000 >> 16)
    /* AF160 800A01B0 3C118005 */  lui        $s1, %hi(D_8004D0F8)
    /* AF164 800A01B4 24590008 */  addiu      $t9, $v0, 0x8
    /* AF168 800A01B8 AE590000 */  sw         $t9, 0x0($s2)
    /* AF16C 800A01BC AC4E0000 */  sw         $t6, 0x0($v0)
    /* AF170 800A01C0 8FAF0038 */  lw         $t7, 0x38($sp)
    /* AF174 800A01C4 3C0E0700 */  lui        $t6, (0x7000000 >> 16)
    /* AF178 800A01C8 3C19F550 */  lui        $t9, (0xF5500000 >> 16)
    /* AF17C 800A01CC AC4F0004 */  sw         $t7, 0x4($v0)
    /* AF180 800A01D0 8E420000 */  lw         $v0, 0x0($s2)
    /* AF184 800A01D4 2631D0F8 */  addiu      $s1, $s1, %lo(D_8004D0F8)
    /* AF188 800A01D8 241300FE */  addiu      $s3, $zero, 0xFE
    /* AF18C 800A01DC 24580008 */  addiu      $t8, $v0, 0x8
    /* AF190 800A01E0 AE580000 */  sw         $t8, 0x0($s2)
    /* AF194 800A01E4 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AF198 800A01E8 AC590000 */  sw         $t9, 0x0($v0)
    /* AF19C 800A01EC 8E420000 */  lw         $v0, 0x0($s2)
    /* AF1A0 800A01F0 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
    /* AF1A4 800A01F4 3C0EF300 */  lui        $t6, (0xF3000000 >> 16)
    /* AF1A8 800A01F8 244F0008 */  addiu      $t7, $v0, 0x8
    /* AF1AC 800A01FC AE4F0000 */  sw         $t7, 0x0($s2)
    /* AF1B0 800A0200 AC400004 */  sw         $zero, 0x4($v0)
    /* AF1B4 800A0204 AC580000 */  sw         $t8, 0x0($v0)
    /* AF1B8 800A0208 8E420000 */  lw         $v0, 0x0($s2)
    /* AF1BC 800A020C 3C0F070F */  lui        $t7, (0x70FF400 >> 16)
    /* AF1C0 800A0210 35EFF400 */  ori        $t7, $t7, (0x70FF400 & 0xFFFF)
    /* AF1C4 800A0214 24590008 */  addiu      $t9, $v0, 0x8
    /* AF1C8 800A0218 AE590000 */  sw         $t9, 0x0($s2)
    /* AF1CC 800A021C AC4F0004 */  sw         $t7, 0x4($v0)
    /* AF1D0 800A0220 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AF1D4 800A0224 8E420000 */  lw         $v0, 0x0($s2)
    /* AF1D8 800A0228 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* AF1DC 800A022C 3C0FF540 */  lui        $t7, (0xF5400400 >> 16)
    /* AF1E0 800A0230 24580008 */  addiu      $t8, $v0, 0x8
    /* AF1E4 800A0234 AE580000 */  sw         $t8, 0x0($s2)
    /* AF1E8 800A0238 AC400004 */  sw         $zero, 0x4($v0)
    /* AF1EC 800A023C AC590000 */  sw         $t9, 0x0($v0)
    /* AF1F0 800A0240 8E420000 */  lw         $v0, 0x0($s2)
    /* AF1F4 800A0244 35EF0400 */  ori        $t7, $t7, (0xF5400400 & 0xFFFF)
    /* AF1F8 800A0248 3C19F200 */  lui        $t9, (0xF2000000 >> 16)
    /* AF1FC 800A024C 244E0008 */  addiu      $t6, $v0, 0x8
    /* AF200 800A0250 AE4E0000 */  sw         $t6, 0x0($s2)
    /* AF204 800A0254 AC400004 */  sw         $zero, 0x4($v0)
    /* AF208 800A0258 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AF20C 800A025C 8E420000 */  lw         $v0, 0x0($s2)
    /* AF210 800A0260 3C0E0007 */  lui        $t6, (0x7C07C >> 16)
    /* AF214 800A0264 35CEC07C */  ori        $t6, $t6, (0x7C07C & 0xFFFF)
    /* AF218 800A0268 24580008 */  addiu      $t8, $v0, 0x8
    /* AF21C 800A026C AE580000 */  sw         $t8, 0x0($s2)
    /* AF220 800A0270 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AF224 800A0274 AC590000 */  sw         $t9, 0x0($v0)
    /* AF228 800A0278 8E420000 */  lw         $v0, 0x0($s2)
    /* AF22C 800A027C 3C18FD10 */  lui        $t8, (0xFD100000 >> 16)
    /* AF230 800A0280 244F0008 */  addiu      $t7, $v0, 0x8
    /* AF234 800A0284 AE4F0000 */  sw         $t7, 0x0($s2)
    /* AF238 800A0288 AC580000 */  sw         $t8, 0x0($v0)
    /* AF23C 800A028C 8FB90034 */  lw         $t9, 0x34($sp)
    /* AF240 800A0290 3C0FE800 */  lui        $t7, (0xE8000000 >> 16)
    /* AF244 800A0294 AC590004 */  sw         $t9, 0x4($v0)
    /* AF248 800A0298 8E420000 */  lw         $v0, 0x0($s2)
    /* AF24C 800A029C 3C19F500 */  lui        $t9, (0xF5000100 >> 16)
    /* AF250 800A02A0 37390100 */  ori        $t9, $t9, (0xF5000100 & 0xFFFF)
    /* AF254 800A02A4 244E0008 */  addiu      $t6, $v0, 0x8
    /* AF258 800A02A8 AE4E0000 */  sw         $t6, 0x0($s2)
    /* AF25C 800A02AC AC400004 */  sw         $zero, 0x4($v0)
    /* AF260 800A02B0 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AF264 800A02B4 8E420000 */  lw         $v0, 0x0($s2)
    /* AF268 800A02B8 3C0E0700 */  lui        $t6, (0x7000000 >> 16)
    /* AF26C 800A02BC 24580008 */  addiu      $t8, $v0, 0x8
    /* AF270 800A02C0 AE580000 */  sw         $t8, 0x0($s2)
    /* AF274 800A02C4 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AF278 800A02C8 AC590000 */  sw         $t9, 0x0($v0)
    /* AF27C 800A02CC 8E420000 */  lw         $v0, 0x0($s2)
    /* AF280 800A02D0 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
    /* AF284 800A02D4 3C0EF000 */  lui        $t6, (0xF0000000 >> 16)
    /* AF288 800A02D8 244F0008 */  addiu      $t7, $v0, 0x8
    /* AF28C 800A02DC AE4F0000 */  sw         $t7, 0x0($s2)
    /* AF290 800A02E0 AC400004 */  sw         $zero, 0x4($v0)
    /* AF294 800A02E4 AC580000 */  sw         $t8, 0x0($v0)
    /* AF298 800A02E8 8E420000 */  lw         $v0, 0x0($s2)
    /* AF29C 800A02EC 3C0F0703 */  lui        $t7, (0x703C000 >> 16)
    /* AF2A0 800A02F0 35EFC000 */  ori        $t7, $t7, (0x703C000 & 0xFFFF)
    /* AF2A4 800A02F4 24590008 */  addiu      $t9, $v0, 0x8
    /* AF2A8 800A02F8 AE590000 */  sw         $t9, 0x0($s2)
    /* AF2AC 800A02FC AC4F0004 */  sw         $t7, 0x4($v0)
    /* AF2B0 800A0300 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AF2B4 800A0304 8E420000 */  lw         $v0, 0x0($s2)
    /* AF2B8 800A0308 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* AF2BC 800A030C 24580008 */  addiu      $t8, $v0, 0x8
    /* AF2C0 800A0310 AE580000 */  sw         $t8, 0x0($s2)
    /* AF2C4 800A0314 AC400004 */  sw         $zero, 0x4($v0)
    /* AF2C8 800A0318 AC590000 */  sw         $t9, 0x0($v0)
  .L800A031C_AF2CC:
    /* AF2CC 800A031C 922E001A */  lbu        $t6, 0x1A($s1)
    /* AF2D0 800A0320 24010019 */  addiu      $at, $zero, 0x19
    /* AF2D4 800A0324 55C10029 */  bnel       $t6, $at, .L800A03CC_AF37C
    /* AF2D8 800A0328 02608025 */   or        $s0, $s3, $zero
    /* AF2DC 800A032C 8E2F0020 */  lw         $t7, 0x20($s1)
    /* AF2E0 800A0330 000FC2C0 */  sll        $t8, $t7, 11
    /* AF2E4 800A0334 07020025 */  bltzl      $t8, .L800A03CC_AF37C
    /* AF2E8 800A0338 02608025 */   or        $s0, $s3, $zero
    /* AF2EC 800A033C 8E990000 */  lw         $t9, 0x0($s4)
    /* AF2F0 800A0340 862F0000 */  lh         $t7, 0x0($s1)
    /* AF2F4 800A0344 872E0000 */  lh         $t6, 0x0($t9)
    /* AF2F8 800A0348 01CF2023 */  subu       $a0, $t6, $t7
    /* AF2FC 800A034C 0004C083 */  sra        $t8, $a0, 2
    /* AF300 800A0350 0C03E710 */  jal        func_800F9C40_108BF0
    /* AF304 800A0354 03002025 */   or        $a0, $t8, $zero
    /* AF308 800A0358 8E990000 */  lw         $t9, 0x0($s4)
    /* AF30C 800A035C 862F0004 */  lh         $t7, 0x4($s1)
    /* AF310 800A0360 00408025 */  or         $s0, $v0, $zero
    /* AF314 800A0364 872E0004 */  lh         $t6, 0x4($t9)
    /* AF318 800A0368 01CF2023 */  subu       $a0, $t6, $t7
    /* AF31C 800A036C 0004C083 */  sra        $t8, $a0, 2
    /* AF320 800A0370 0C03E710 */  jal        func_800F9C40_108BF0
    /* AF324 800A0374 03002025 */   or        $a0, $t8, $zero
    /* AF328 800A0378 0050C821 */  addu       $t9, $v0, $s0
    /* AF32C 800A037C 3401C351 */  ori        $at, $zero, 0xC351
    /* AF330 800A0380 0321082A */  slt        $at, $t9, $at
    /* AF334 800A0384 54200011 */  bnel       $at, $zero, .L800A03CC_AF37C
    /* AF338 800A0388 02608025 */   or        $s0, $s3, $zero
    /* AF33C 800A038C 8E420000 */  lw         $v0, 0x0($s2)
    /* AF340 800A0390 3C0FFA00 */  lui        $t7, (0xFA000000 >> 16)
    /* AF344 800A0394 3C01FF00 */  lui        $at, (0xFF000000 >> 16)
    /* AF348 800A0398 244E0008 */  addiu      $t6, $v0, 0x8
    /* AF34C 800A039C AE4E0000 */  sw         $t6, 0x0($s2)
    /* AF350 800A03A0 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AF354 800A03A4 8EB90000 */  lw         $t9, 0x0($s5)
    /* AF358 800A03A8 24060001 */  addiu      $a2, $zero, 0x1
    /* AF35C 800A03AC 00197100 */  sll        $t6, $t9, 4
    /* AF360 800A03B0 31CF00FF */  andi       $t7, $t6, 0xFF
    /* AF364 800A03B4 01E1C025 */  or         $t8, $t7, $at
    /* AF368 800A03B8 AC580004 */  sw         $t8, 0x4($v0)
    /* AF36C 800A03BC 86250004 */  lh         $a1, 0x4($s1)
    /* AF370 800A03C0 0C027076 */  jal        func_8009C1D8_AB188
    /* AF374 800A03C4 86240000 */   lh        $a0, 0x0($s1)
    /* AF378 800A03C8 02608025 */  or         $s0, $s3, $zero
  .L800A03CC_AF37C:
    /* AF37C 800A03CC 2631FFB0 */  addiu      $s1, $s1, -0x50
    /* AF380 800A03D0 1660FFD2 */  bnez       $s3, .L800A031C_AF2CC
    /* AF384 800A03D4 2673FFFF */   addiu     $s3, $s3, -0x1
    /* AF388 800A03D8 8FBF002C */  lw         $ra, 0x2C($sp)
    /* AF38C 800A03DC 8FB00014 */  lw         $s0, 0x14($sp)
    /* AF390 800A03E0 8FB10018 */  lw         $s1, 0x18($sp)
    /* AF394 800A03E4 8FB2001C */  lw         $s2, 0x1C($sp)
    /* AF398 800A03E8 8FB30020 */  lw         $s3, 0x20($sp)
    /* AF39C 800A03EC 8FB40024 */  lw         $s4, 0x24($sp)
    /* AF3A0 800A03F0 8FB50028 */  lw         $s5, 0x28($sp)
    /* AF3A4 800A03F4 03E00008 */  jr         $ra
    /* AF3A8 800A03F8 27BD0120 */   addiu     $sp, $sp, 0x120
endlabel func_8009FB58_AEB08
