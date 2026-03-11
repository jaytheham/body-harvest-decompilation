nonmatching func_80070CC0_7FC70, 0x2F8

glabel func_80070CC0_7FC70
    /* 7FC70 80070CC0 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* 7FC74 80070CC4 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* 7FC78 80070CC8 8C620000 */  lw         $v0, 0x0($v1)
    /* 7FC7C 80070CCC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 7FC80 80070CD0 3C188003 */  lui        $t8, %hi(D_800311A8)
    /* 7FC84 80070CD4 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 7FC88 80070CD8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 7FC8C 80070CDC 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 7FC90 80070CE0 271811A8 */  addiu      $t8, $t8, %lo(D_800311A8)
    /* 7FC94 80070CE4 244E0008 */  addiu      $t6, $v0, 0x8
    /* 7FC98 80070CE8 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 7FC9C 80070CEC 0301C824 */  and        $t9, $t8, $at
    /* 7FCA0 80070CF0 3C0F0600 */  lui        $t7, (0x6000000 >> 16)
    /* 7FCA4 80070CF4 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 7FCA8 80070CF8 0C0013D9 */  jal        func_80004F64_5B64
    /* 7FCAC 80070CFC AC590004 */   sw        $t9, 0x4($v0)
    /* 7FCB0 80070D00 0C001A7F */  jal        func_800069FC_75FC
    /* 7FCB4 80070D04 00000000 */   nop
    /* 7FCB8 80070D08 3C0E8015 */  lui        $t6, %hi(D_80157590)
    /* 7FCBC 80070D0C 85CE7590 */  lh         $t6, %lo(D_80157590)($t6)
    /* 7FCC0 80070D10 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* 7FCC4 80070D14 24010003 */  addiu      $at, $zero, 0x3
    /* 7FCC8 80070D18 11C10007 */  beq        $t6, $at, .L80070D38_7FCE8
    /* 7FCCC 80070D1C 2463BB2C */   addiu     $v1, $v1, %lo(D_8005BB2C)
    /* 7FCD0 80070D20 3C0C8005 */  lui        $t4, %hi(D_8004DC60)
    /* 7FCD4 80070D24 258CDC60 */  addiu      $t4, $t4, %lo(D_8004DC60)
    /* 7FCD8 80070D28 85820000 */  lh         $v0, 0x0($t4)
    /* 7FCDC 80070D2C 10400002 */  beqz       $v0, .L80070D38_7FCE8
    /* 7FCE0 80070D30 244FFFFF */   addiu     $t7, $v0, -0x1
    /* 7FCE4 80070D34 A58F0000 */  sh         $t7, 0x0($t4)
  .L80070D38_7FCE8:
    /* 7FCE8 80070D38 3C0C8005 */  lui        $t4, %hi(D_8004DC60)
    /* 7FCEC 80070D3C 258CDC60 */  addiu      $t4, $t4, %lo(D_8004DC60)
    /* 7FCF0 80070D40 85980000 */  lh         $t8, 0x0($t4)
    /* 7FCF4 80070D44 3C0DBA00 */  lui        $t5, (0xBA001402 >> 16)
    /* 7FCF8 80070D48 53000071 */  beql       $t8, $zero, .L80070F10_7FEC0
    /* 7FCFC 80070D4C 8C620000 */   lw        $v0, 0x0($v1)
    /* 7FD00 80070D50 8C620000 */  lw         $v0, 0x0($v1)
    /* 7FD04 80070D54 35AD1402 */  ori        $t5, $t5, (0xBA001402 & 0xFFFF)
    /* 7FD08 80070D58 3C0E0030 */  lui        $t6, (0x300000 >> 16)
    /* 7FD0C 80070D5C 24590008 */  addiu      $t9, $v0, 0x8
    /* 7FD10 80070D60 AC790000 */  sw         $t9, 0x0($v1)
    /* 7FD14 80070D64 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 7FD18 80070D68 AC4D0000 */  sw         $t5, 0x0($v0)
    /* 7FD1C 80070D6C 8C620000 */  lw         $v0, 0x0($v1)
    /* 7FD20 80070D70 3C18F700 */  lui        $t8, (0xF7000000 >> 16)
    /* 7FD24 80070D74 3C1FE700 */  lui        $ra, (0xE7000000 >> 16)
    /* 7FD28 80070D78 244F0008 */  addiu      $t7, $v0, 0x8
    /* 7FD2C 80070D7C AC6F0000 */  sw         $t7, 0x0($v1)
    /* 7FD30 80070D80 AC400004 */  sw         $zero, 0x4($v0)
    /* 7FD34 80070D84 AC580000 */  sw         $t8, 0x0($v0)
    /* 7FD38 80070D88 8C620000 */  lw         $v0, 0x0($v1)
    /* 7FD3C 80070D8C 3C0F8007 */  lui        $t7, %hi(D_80068084)
    /* 7FD40 80070D90 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* 7FD44 80070D94 24590008 */  addiu      $t9, $v0, 0x8
    /* 7FD48 80070D98 AC790000 */  sw         $t9, 0x0($v1)
    /* 7FD4C 80070D9C AC400004 */  sw         $zero, 0x4($v0)
    /* 7FD50 80070DA0 AC5F0000 */  sw         $ra, 0x0($v0)
    /* 7FD54 80070DA4 8C620000 */  lw         $v0, 0x0($v1)
    /* 7FD58 80070DA8 44810000 */  mtc1       $at, $f0
    /* 7FD5C 80070DAC 3C01F600 */  lui        $at, (0xF6000000 >> 16)
    /* 7FD60 80070DB0 244E0008 */  addiu      $t6, $v0, 0x8
    /* 7FD64 80070DB4 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 7FD68 80070DB8 8DEF8084 */  lw         $t7, %lo(D_80068084)($t7)
    /* 7FD6C 80070DBC 25F8FFFF */  addiu      $t8, $t7, -0x1
    /* 7FD70 80070DC0 331903FF */  andi       $t9, $t8, 0x3FF
    /* 7FD74 80070DC4 85980000 */  lh         $t8, 0x0($t4)
    /* 7FD78 80070DC8 00197380 */  sll        $t6, $t9, 14
    /* 7FD7C 80070DCC 01C17825 */  or         $t7, $t6, $at
    /* 7FD80 80070DD0 2719FFFF */  addiu      $t9, $t8, -0x1
    /* 7FD84 80070DD4 332E03FF */  andi       $t6, $t9, 0x3FF
    /* 7FD88 80070DD8 000EC080 */  sll        $t8, $t6, 2
    /* 7FD8C 80070DDC 01F8C825 */  or         $t9, $t7, $t8
    /* 7FD90 80070DE0 AC590000 */  sw         $t9, 0x0($v0)
    /* 7FD94 80070DE4 AC400004 */  sw         $zero, 0x4($v0)
    /* 7FD98 80070DE8 8C620000 */  lw         $v0, 0x0($v1)
    /* 7FD9C 80070DEC 3C0F8007 */  lui        $t7, %hi(D_80068084)
    /* 7FDA0 80070DF0 244E0008 */  addiu      $t6, $v0, 0x8
    /* 7FDA4 80070DF4 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 7FDA8 80070DF8 8DEF8084 */  lw         $t7, %lo(D_80068084)($t7)
    /* 7FDAC 80070DFC 25F8FFFF */  addiu      $t8, $t7, -0x1
    /* 7FDB0 80070E00 331903FF */  andi       $t9, $t8, 0x3FF
    /* 7FDB4 80070E04 3C188007 */  lui        $t8, %hi(D_80068088)
    /* 7FDB8 80070E08 8F188088 */  lw         $t8, %lo(D_80068088)($t8)
    /* 7FDBC 80070E0C 00197380 */  sll        $t6, $t9, 14
    /* 7FDC0 80070E10 01C17825 */  or         $t7, $t6, $at
    /* 7FDC4 80070E14 2719FFFF */  addiu      $t9, $t8, -0x1
    /* 7FDC8 80070E18 332E03FF */  andi       $t6, $t9, 0x3FF
    /* 7FDCC 80070E1C 000EC080 */  sll        $t8, $t6, 2
    /* 7FDD0 80070E20 01F8C825 */  or         $t9, $t7, $t8
    /* 7FDD4 80070E24 AC590000 */  sw         $t9, 0x0($v0)
    /* 7FDD8 80070E28 3C0E8007 */  lui        $t6, %hi(D_80068088)
    /* 7FDDC 80070E2C 8DCE8088 */  lw         $t6, %lo(D_80068088)($t6)
    /* 7FDE0 80070E30 858F0000 */  lh         $t7, 0x0($t4)
    /* 7FDE4 80070E34 3C01ED00 */  lui        $at, (0xED000000 >> 16)
    /* 7FDE8 80070E38 01CFC023 */  subu       $t8, $t6, $t7
    /* 7FDEC 80070E3C 2719FFFF */  addiu      $t9, $t8, -0x1
    /* 7FDF0 80070E40 332E03FF */  andi       $t6, $t9, 0x3FF
    /* 7FDF4 80070E44 000E7880 */  sll        $t7, $t6, 2
    /* 7FDF8 80070E48 AC4F0004 */  sw         $t7, 0x4($v0)
    /* 7FDFC 80070E4C 8C620000 */  lw         $v0, 0x0($v1)
    /* 7FE00 80070E50 24580008 */  addiu      $t8, $v0, 0x8
    /* 7FE04 80070E54 AC780000 */  sw         $t8, 0x0($v1)
    /* 7FE08 80070E58 AC400004 */  sw         $zero, 0x4($v0)
    /* 7FE0C 80070E5C AC5F0000 */  sw         $ra, 0x0($v0)
    /* 7FE10 80070E60 8C620000 */  lw         $v0, 0x0($v1)
    /* 7FE14 80070E64 3C188007 */  lui        $t8, %hi(D_80068088)
    /* 7FE18 80070E68 24590008 */  addiu      $t9, $v0, 0x8
    /* 7FE1C 80070E6C AC790000 */  sw         $t9, 0x0($v1)
    /* 7FE20 80070E70 AC400004 */  sw         $zero, 0x4($v0)
    /* 7FE24 80070E74 AC4D0000 */  sw         $t5, 0x0($v0)
    /* 7FE28 80070E78 858F0000 */  lh         $t7, 0x0($t4)
    /* 7FE2C 80070E7C 8C620000 */  lw         $v0, 0x0($v1)
    /* 7FE30 80070E80 448F2000 */  mtc1       $t7, $f4
    /* 7FE34 80070E84 244E0008 */  addiu      $t6, $v0, 0x8
    /* 7FE38 80070E88 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 7FE3C 80070E8C 468021A0 */  cvt.s.w    $f6, $f4
    /* 7FE40 80070E90 46003202 */  mul.s      $f8, $f6, $f0
    /* 7FE44 80070E94 4600428D */  trunc.w.s  $f10, $f8
    /* 7FE48 80070E98 44195000 */  mfc1       $t9, $f10
    /* 7FE4C 80070E9C 00000000 */  nop
    /* 7FE50 80070EA0 332E0FFF */  andi       $t6, $t9, 0xFFF
    /* 7FE54 80070EA4 01C17825 */  or         $t7, $t6, $at
    /* 7FE58 80070EA8 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 7FE5C 80070EAC 85990000 */  lh         $t9, 0x0($t4)
    /* 7FE60 80070EB0 8F188088 */  lw         $t8, %lo(D_80068088)($t8)
    /* 7FE64 80070EB4 03197023 */  subu       $t6, $t8, $t9
    /* 7FE68 80070EB8 448E8000 */  mtc1       $t6, $f16
    /* 7FE6C 80070EBC 3C0E8007 */  lui        $t6, %hi(D_80068084)
    /* 7FE70 80070EC0 8DCE8084 */  lw         $t6, %lo(D_80068084)($t6)
    /* 7FE74 80070EC4 468084A0 */  cvt.s.w    $f18, $f16
    /* 7FE78 80070EC8 448E4000 */  mtc1       $t6, $f8
    /* 7FE7C 80070ECC 00000000 */  nop
    /* 7FE80 80070ED0 468042A0 */  cvt.s.w    $f10, $f8
    /* 7FE84 80070ED4 46009102 */  mul.s      $f4, $f18, $f0
    /* 7FE88 80070ED8 4600218D */  trunc.w.s  $f6, $f4
    /* 7FE8C 80070EDC 46005402 */  mul.s      $f16, $f10, $f0
    /* 7FE90 80070EE0 44183000 */  mfc1       $t8, $f6
    /* 7FE94 80070EE4 00000000 */  nop
    /* 7FE98 80070EE8 33190FFF */  andi       $t9, $t8, 0xFFF
    /* 7FE9C 80070EEC 4600848D */  trunc.w.s  $f18, $f16
    /* 7FEA0 80070EF0 44189000 */  mfc1       $t8, $f18
    /* 7FEA4 80070EF4 00000000 */  nop
    /* 7FEA8 80070EF8 330E0FFF */  andi       $t6, $t8, 0xFFF
    /* 7FEAC 80070EFC 000E7B00 */  sll        $t7, $t6, 12
    /* 7FEB0 80070F00 01F9C025 */  or         $t8, $t7, $t9
    /* 7FEB4 80070F04 1000001D */  b          .L80070F7C_7FF2C
    /* 7FEB8 80070F08 AC580004 */   sw        $t8, 0x4($v0)
    /* 7FEBC 80070F0C 8C620000 */  lw         $v0, 0x0($v1)
  .L80070F10_7FEC0:
    /* 7FEC0 80070F10 3C0FED00 */  lui        $t7, (0xED000000 >> 16)
    /* 7FEC4 80070F14 3C198007 */  lui        $t9, %hi(D_80068084)
    /* 7FEC8 80070F18 244E0008 */  addiu      $t6, $v0, 0x8
    /* 7FECC 80070F1C AC6E0000 */  sw         $t6, 0x0($v1)
    /* 7FED0 80070F20 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 7FED4 80070F24 8F398084 */  lw         $t9, %lo(D_80068084)($t9)
    /* 7FED8 80070F28 3C188007 */  lui        $t8, %hi(D_80068088)
    /* 7FEDC 80070F2C 8F188088 */  lw         $t8, %lo(D_80068088)($t8)
    /* 7FEE0 80070F30 44992000 */  mtc1       $t9, $f4
    /* 7FEE4 80070F34 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* 7FEE8 80070F38 44988000 */  mtc1       $t8, $f16
    /* 7FEEC 80070F3C 468021A0 */  cvt.s.w    $f6, $f4
    /* 7FEF0 80070F40 44810000 */  mtc1       $at, $f0
    /* 7FEF4 80070F44 468084A0 */  cvt.s.w    $f18, $f16
    /* 7FEF8 80070F48 46003202 */  mul.s      $f8, $f6, $f0
    /* 7FEFC 80070F4C 4600428D */  trunc.w.s  $f10, $f8
    /* 7FF00 80070F50 46009102 */  mul.s      $f4, $f18, $f0
    /* 7FF04 80070F54 440E5000 */  mfc1       $t6, $f10
    /* 7FF08 80070F58 00000000 */  nop
    /* 7FF0C 80070F5C 31CF0FFF */  andi       $t7, $t6, 0xFFF
    /* 7FF10 80070F60 4600218D */  trunc.w.s  $f6, $f4
    /* 7FF14 80070F64 000FCB00 */  sll        $t9, $t7, 12
    /* 7FF18 80070F68 440F3000 */  mfc1       $t7, $f6
    /* 7FF1C 80070F6C 00000000 */  nop
    /* 7FF20 80070F70 31F80FFF */  andi       $t8, $t7, 0xFFF
    /* 7FF24 80070F74 03387025 */  or         $t6, $t9, $t8
    /* 7FF28 80070F78 AC4E0004 */  sw         $t6, 0x4($v0)
  .L80070F7C_7FF2C:
    /* 7FF2C 80070F7C 8C620000 */  lw         $v0, 0x0($v1)
    /* 7FF30 80070F80 3C188003 */  lui        $t8, %hi(D_800311D0)
    /* 7FF34 80070F84 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 7FF38 80070F88 244F0008 */  addiu      $t7, $v0, 0x8
    /* 7FF3C 80070F8C AC6F0000 */  sw         $t7, 0x0($v1)
    /* 7FF40 80070F90 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 7FF44 80070F94 271811D0 */  addiu      $t8, $t8, %lo(D_800311D0)
    /* 7FF48 80070F98 03017024 */  and        $t6, $t8, $at
    /* 7FF4C 80070F9C 3C190600 */  lui        $t9, (0x6000000 >> 16)
    /* 7FF50 80070FA0 AC590000 */  sw         $t9, 0x0($v0)
    /* 7FF54 80070FA4 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 7FF58 80070FA8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 7FF5C 80070FAC 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 7FF60 80070FB0 03E00008 */  jr         $ra
    /* 7FF64 80070FB4 00000000 */   nop
endlabel func_80070CC0_7FC70
