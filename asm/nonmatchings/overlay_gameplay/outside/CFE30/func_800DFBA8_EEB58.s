nonmatching func_800DFBA8_EEB58, 0x2C0

glabel func_800DFBA8_EEB58
    /* EEB58 800DFBA8 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* EEB5C 800DFBAC AFBE0048 */  sw         $fp, 0x48($sp)
    /* EEB60 800DFBB0 AFB70044 */  sw         $s7, 0x44($sp)
    /* EEB64 800DFBB4 AFB60040 */  sw         $s6, 0x40($sp)
    /* EEB68 800DFBB8 0004B400 */  sll        $s6, $a0, 16
    /* EEB6C 800DFBBC 0005BC00 */  sll        $s7, $a1, 16
    /* EEB70 800DFBC0 0006F400 */  sll        $fp, $a2, 16
    /* EEB74 800DFBC4 001EC403 */  sra        $t8, $fp, 16
    /* EEB78 800DFBC8 00177C03 */  sra        $t7, $s7, 16
    /* EEB7C 800DFBCC 00167403 */  sra        $t6, $s6, 16
    /* EEB80 800DFBD0 AFA40078 */  sw         $a0, 0x78($sp)
    /* EEB84 800DFBD4 AFA5007C */  sw         $a1, 0x7C($sp)
    /* EEB88 800DFBD8 AFA60080 */  sw         $a2, 0x80($sp)
    /* EEB8C 800DFBDC AFB1002C */  sw         $s1, 0x2C($sp)
    /* EEB90 800DFBE0 00183400 */  sll        $a2, $t8, 16
    /* EEB94 800DFBE4 000F2C00 */  sll        $a1, $t7, 16
    /* EEB98 800DFBE8 000E2400 */  sll        $a0, $t6, 16
    /* EEB9C 800DFBEC 3C0A8014 */  lui        $t2, %hi(D_8013DF84)
    /* EEBA0 800DFBF0 30F1FFFF */  andi       $s1, $a3, 0xFFFF
    /* EEBA4 800DFBF4 AFBF004C */  sw         $ra, 0x4C($sp)
    /* EEBA8 800DFBF8 AFA70084 */  sw         $a3, 0x84($sp)
    /* EEBAC 800DFBFC 254ADF84 */  addiu      $t2, $t2, %lo(D_8013DF84)
    /* EEBB0 800DFC00 0004CC03 */  sra        $t9, $a0, 16
    /* EEBB4 800DFC04 00054403 */  sra        $t0, $a1, 16
    /* EEBB8 800DFC08 00064C03 */  sra        $t1, $a2, 16
    /* EEBBC 800DFC0C 01C0B025 */  or         $s6, $t6, $zero
    /* EEBC0 800DFC10 01E0B825 */  or         $s7, $t7, $zero
    /* EEBC4 800DFC14 0300F025 */  or         $fp, $t8, $zero
    /* EEBC8 800DFC18 AFB5003C */  sw         $s5, 0x3C($sp)
    /* EEBCC 800DFC1C AFB40038 */  sw         $s4, 0x38($sp)
    /* EEBD0 800DFC20 AFB30034 */  sw         $s3, 0x34($sp)
    /* EEBD4 800DFC24 AFB20030 */  sw         $s2, 0x30($sp)
    /* EEBD8 800DFC28 AFB00028 */  sw         $s0, 0x28($sp)
    /* EEBDC 800DFC2C F7B40020 */  sdc1       $f20, 0x20($sp)
    /* EEBE0 800DFC30 01203025 */  or         $a2, $t1, $zero
    /* EEBE4 800DFC34 01002825 */  or         $a1, $t0, $zero
    /* EEBE8 800DFC38 03202025 */  or         $a0, $t9, $zero
    /* EEBEC 800DFC3C AFAA0014 */  sw         $t2, 0x14($sp)
    /* EEBF0 800DFC40 3227FFFF */  andi       $a3, $s1, 0xFFFF
    /* EEBF4 800DFC44 0C037C0E */  jal        func_800DF038_EDFE8
    /* EEBF8 800DFC48 AFA00010 */   sw        $zero, 0x10($sp)
    /* EEBFC 800DFC4C 02C02025 */  or         $a0, $s6, $zero
    /* EEC00 800DFC50 02E02825 */  or         $a1, $s7, $zero
    /* EEC04 800DFC54 03C03025 */  or         $a2, $fp, $zero
    /* EEC08 800DFC58 0C04D751 */  jal        func_80135D44_144CF4
    /* EEC0C 800DFC5C 3C074120 */   lui       $a3, (0x41200000 >> 16)
    /* EEC10 800DFC60 93A2008B */  lbu        $v0, 0x8B($sp)
    /* EEC14 800DFC64 24140001 */  addiu      $s4, $zero, 0x1
    /* EEC18 800DFC68 02208025 */  or         $s0, $s1, $zero
    /* EEC1C 800DFC6C 28410002 */  slti       $at, $v0, 0x2
    /* EEC20 800DFC70 14200070 */  bnez       $at, .L800DFE34_EEDE4
    /* EEC24 800DFC74 27B50068 */   addiu     $s5, $sp, 0x68
    /* EEC28 800DFC78 06010003 */  bgez       $s0, .L800DFC88_EEC38
    /* EEC2C 800DFC7C 00105843 */   sra       $t3, $s0, 1
    /* EEC30 800DFC80 26010001 */  addiu      $at, $s0, 0x1
    /* EEC34 800DFC84 00015843 */  sra        $t3, $at, 1
  .L800DFC88_EEC38:
    /* EEC38 800DFC88 AFAB0054 */  sw         $t3, 0x54($sp)
    /* EEC3C 800DFC8C 06010003 */  bgez       $s0, .L800DFC9C_EEC4C
    /* EEC40 800DFC90 00106083 */   sra       $t4, $s0, 2
    /* EEC44 800DFC94 26010003 */  addiu      $at, $s0, 0x3
    /* EEC48 800DFC98 00016083 */  sra        $t4, $at, 2
  .L800DFC9C_EEC4C:
    /* EEC4C 800DFC9C 3C018014 */  lui        $at, %hi(D_80144190)
    /* EEC50 800DFCA0 C4344190 */  lwc1       $f20, %lo(D_80144190)($at)
    /* EEC54 800DFCA4 AFAC0050 */  sw         $t4, 0x50($sp)
    /* EEC58 800DFCA8 AFA2005C */  sw         $v0, 0x5C($sp)
  .L800DFCAC_EEC5C:
    /* EEC5C 800DFCAC 0C037EA6 */  jal        func_800DFA98_EEA48
    /* EEC60 800DFCB0 02A02025 */   or        $a0, $s5, $zero
    /* EEC64 800DFCB4 00163400 */  sll        $a2, $s6, 16
    /* EEC68 800DFCB8 00173C00 */  sll        $a3, $s7, 16
    /* EEC6C 800DFCBC 00077403 */  sra        $t6, $a3, 16
    /* EEC70 800DFCC0 00066C03 */  sra        $t5, $a2, 16
    /* EEC74 800DFCC4 01A03025 */  or         $a2, $t5, $zero
    /* EEC78 800DFCC8 01C03825 */  or         $a3, $t6, $zero
    /* EEC7C 800DFCCC 00002025 */  or         $a0, $zero, $zero
    /* EEC80 800DFCD0 240500E8 */  addiu      $a1, $zero, 0xE8
    /* EEC84 800DFCD4 AFBE0010 */  sw         $fp, 0x10($sp)
    /* EEC88 800DFCD8 0C04DC6E */  jal        func_801371B8_146168
    /* EEC8C 800DFCDC E7B40014 */   swc1      $f20, 0x14($sp)
    /* EEC90 800DFCE0 0C000E38 */  jal        func_800038E0_44E0
    /* EEC94 800DFCE4 00000000 */   nop
    /* EEC98 800DFCE8 0C000E38 */  jal        func_800038E0_44E0
    /* EEC9C 800DFCEC 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* EECA0 800DFCF0 0C000E38 */  jal        func_800038E0_44E0
    /* EECA4 800DFCF4 3052FFFF */   andi      $s2, $v0, 0xFFFF
    /* EECA8 800DFCF8 0C000E38 */  jal        func_800038E0_44E0
    /* EECAC 800DFCFC 3053FFFF */   andi      $s3, $v0, 0xFFFF
    /* EECB0 800DFD00 0230001A */  div        $zero, $s1, $s0
    /* EECB4 800DFD04 00007810 */  mfhi       $t7
    /* EECB8 800DFD08 000FC040 */  sll        $t8, $t7, 1
    /* EECBC 800DFD0C 16000002 */  bnez       $s0, .L800DFD18_EECC8
    /* EECC0 800DFD10 00000000 */   nop
    /* EECC4 800DFD14 0007000D */  break      7
  .L800DFD18_EECC8:
    /* EECC8 800DFD18 2401FFFF */  addiu      $at, $zero, -0x1
    /* EECCC 800DFD1C 16010004 */  bne        $s0, $at, .L800DFD30_EECE0
    /* EECD0 800DFD20 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EECD4 800DFD24 16210002 */  bne        $s1, $at, .L800DFD30_EECE0
    /* EECD8 800DFD28 00000000 */   nop
    /* EECDC 800DFD2C 0006000D */  break      6
  .L800DFD30_EECE0:
    /* EECE0 800DFD30 0250001A */  div        $zero, $s2, $s0
    /* EECE4 800DFD34 00005010 */  mfhi       $t2
    /* EECE8 800DFD38 000A5840 */  sll        $t3, $t2, 1
    /* EECEC 800DFD3C 8FAA0054 */  lw         $t2, 0x54($sp)
    /* EECF0 800DFD40 0270001A */  div        $zero, $s3, $s0
    /* EECF4 800DFD44 00007810 */  mfhi       $t7
    /* EECF8 800DFD48 01776021 */  addu       $t4, $t3, $s7
    /* EECFC 800DFD4C 01902823 */  subu       $a1, $t4, $s0
    /* EED00 800DFD50 004A001A */  div        $zero, $v0, $t2
    /* EED04 800DFD54 00056C00 */  sll        $t5, $a1, 16
    /* EED08 800DFD58 0316C821 */  addu       $t9, $t8, $s6
    /* EED0C 800DFD5C 03302023 */  subu       $a0, $t9, $s0
    /* EED10 800DFD60 000D7403 */  sra        $t6, $t5, 16
    /* EED14 800DFD64 8FAD0050 */  lw         $t5, 0x50($sp)
    /* EED18 800DFD68 00044400 */  sll        $t0, $a0, 16
    /* EED1C 800DFD6C 000FC040 */  sll        $t8, $t7, 1
    /* EED20 800DFD70 031EC821 */  addu       $t9, $t8, $fp
    /* EED24 800DFD74 00084C03 */  sra        $t1, $t0, 16
    /* EED28 800DFD78 00005810 */  mfhi       $t3
    /* EED2C 800DFD7C 01706021 */  addu       $t4, $t3, $s0
    /* EED30 800DFD80 03303023 */  subu       $a2, $t9, $s0
    /* EED34 800DFD84 00064400 */  sll        $t0, $a2, 16
    /* EED38 800DFD88 01202025 */  or         $a0, $t1, $zero
    /* EED3C 800DFD8C 16000002 */  bnez       $s0, .L800DFD98_EED48
    /* EED40 800DFD90 00000000 */   nop
    /* EED44 800DFD94 0007000D */  break      7
  .L800DFD98_EED48:
    /* EED48 800DFD98 2401FFFF */  addiu      $at, $zero, -0x1
    /* EED4C 800DFD9C 16010004 */  bne        $s0, $at, .L800DFDB0_EED60
    /* EED50 800DFDA0 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EED54 800DFDA4 16410002 */  bne        $s2, $at, .L800DFDB0_EED60
    /* EED58 800DFDA8 00000000 */   nop
    /* EED5C 800DFDAC 0006000D */  break      6
  .L800DFDB0_EED60:
    /* EED60 800DFDB0 01C02825 */  or         $a1, $t6, $zero
    /* EED64 800DFDB4 16000002 */  bnez       $s0, .L800DFDC0_EED70
    /* EED68 800DFDB8 00000000 */   nop
    /* EED6C 800DFDBC 0007000D */  break      7
  .L800DFDC0_EED70:
    /* EED70 800DFDC0 2401FFFF */  addiu      $at, $zero, -0x1
    /* EED74 800DFDC4 16010004 */  bne        $s0, $at, .L800DFDD8_EED88
    /* EED78 800DFDC8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EED7C 800DFDCC 16610002 */  bne        $s3, $at, .L800DFDD8_EED88
    /* EED80 800DFDD0 00000000 */   nop
    /* EED84 800DFDD4 0006000D */  break      6
  .L800DFDD8_EED88:
    /* EED88 800DFDD8 018D3823 */  subu       $a3, $t4, $t5
    /* EED8C 800DFDDC 30EEFFFF */  andi       $t6, $a3, 0xFFFF
    /* EED90 800DFDE0 00084C03 */  sra        $t1, $t0, 16
    /* EED94 800DFDE4 01203025 */  or         $a2, $t1, $zero
    /* EED98 800DFDE8 15400002 */  bnez       $t2, .L800DFDF4_EEDA4
    /* EED9C 800DFDEC 00000000 */   nop
    /* EEDA0 800DFDF0 0007000D */  break      7
  .L800DFDF4_EEDA4:
    /* EEDA4 800DFDF4 2401FFFF */  addiu      $at, $zero, -0x1
    /* EEDA8 800DFDF8 15410004 */  bne        $t2, $at, .L800DFE0C_EEDBC
    /* EEDAC 800DFDFC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EEDB0 800DFE00 14410002 */  bne        $v0, $at, .L800DFE0C_EEDBC
    /* EEDB4 800DFE04 00000000 */   nop
    /* EEDB8 800DFE08 0006000D */  break      6
  .L800DFE0C_EEDBC:
    /* EEDBC 800DFE0C 01C03825 */  or         $a3, $t6, $zero
    /* EEDC0 800DFE10 AFA00010 */  sw         $zero, 0x10($sp)
    /* EEDC4 800DFE14 0C037E72 */  jal        func_800DF9C8_EE978
    /* EEDC8 800DFE18 AFB50014 */   sw        $s5, 0x14($sp)
    /* EEDCC 800DFE1C 8FB8005C */  lw         $t8, 0x5C($sp)
    /* EEDD0 800DFE20 26940001 */  addiu      $s4, $s4, 0x1
    /* EEDD4 800DFE24 328F00FF */  andi       $t7, $s4, 0xFF
    /* EEDD8 800DFE28 01F8082A */  slt        $at, $t7, $t8
    /* EEDDC 800DFE2C 1420FF9F */  bnez       $at, .L800DFCAC_EEC5C
    /* EEDE0 800DFE30 01E0A025 */   or        $s4, $t7, $zero
  .L800DFE34_EEDE4:
    /* EEDE4 800DFE34 8FBF004C */  lw         $ra, 0x4C($sp)
    /* EEDE8 800DFE38 D7B40020 */  ldc1       $f20, 0x20($sp)
    /* EEDEC 800DFE3C 8FB00028 */  lw         $s0, 0x28($sp)
    /* EEDF0 800DFE40 8FB1002C */  lw         $s1, 0x2C($sp)
    /* EEDF4 800DFE44 8FB20030 */  lw         $s2, 0x30($sp)
    /* EEDF8 800DFE48 8FB30034 */  lw         $s3, 0x34($sp)
    /* EEDFC 800DFE4C 8FB40038 */  lw         $s4, 0x38($sp)
    /* EEE00 800DFE50 8FB5003C */  lw         $s5, 0x3C($sp)
    /* EEE04 800DFE54 8FB60040 */  lw         $s6, 0x40($sp)
    /* EEE08 800DFE58 8FB70044 */  lw         $s7, 0x44($sp)
    /* EEE0C 800DFE5C 8FBE0048 */  lw         $fp, 0x48($sp)
    /* EEE10 800DFE60 03E00008 */  jr         $ra
    /* EEE14 800DFE64 27BD0078 */   addiu     $sp, $sp, 0x78
endlabel func_800DFBA8_EEB58
