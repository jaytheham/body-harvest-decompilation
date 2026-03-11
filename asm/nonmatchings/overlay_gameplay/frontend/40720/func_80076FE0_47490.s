nonmatching func_80076FE0_47490, 0x6C

glabel func_80076FE0_47490
    /* 47490 80076FE0 00801025 */  or         $v0, $a0, $zero
    /* 47494 80076FE4 00A01825 */  or         $v1, $a1, $zero
    /* 47498 80076FE8 24060007 */  addiu      $a2, $zero, 0x7
  .L80076FEC_4749C:
    /* 4749C 80076FEC 24050009 */  addiu      $a1, $zero, 0x9
  .L80076FF0_474A0:
    /* 474A0 80076FF0 2407001F */  addiu      $a3, $zero, 0x1F
  .L80076FF4_474A4:
    /* 474A4 80076FF4 2408000F */  addiu      $t0, $zero, 0xF
  .L80076FF8_474A8:
    /* 474A8 80076FF8 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 474AC 80076FFC 01002025 */  or         $a0, $t0, $zero
    /* 474B0 80077000 24630004 */  addiu      $v1, $v1, 0x4
    /* 474B4 80077004 24420004 */  addiu      $v0, $v0, 0x4
    /* 474B8 80077008 AC6EFFFC */  sw         $t6, -0x4($v1)
    /* 474BC 8007700C 1500FFFA */  bnez       $t0, .L80076FF8_474A8
    /* 474C0 80077010 2508FFFF */   addiu     $t0, $t0, -0x1
    /* 474C4 80077014 00E02025 */  or         $a0, $a3, $zero
    /* 474C8 80077018 24420240 */  addiu      $v0, $v0, 0x240
    /* 474CC 8007701C 14E0FFF5 */  bnez       $a3, .L80076FF4_474A4
    /* 474D0 80077020 24E7FFFF */   addiu     $a3, $a3, -0x1
    /* 474D4 80077024 00A02025 */  or         $a0, $a1, $zero
    /* 474D8 80077028 2442B040 */  addiu      $v0, $v0, -0x4FC0
    /* 474DC 8007702C 14A0FFF0 */  bnez       $a1, .L80076FF0_474A0
    /* 474E0 80077030 24A5FFFF */   addiu     $a1, $a1, -0x1
    /* 474E4 80077034 00C02025 */  or         $a0, $a2, $zero
    /* 474E8 80077038 24424D80 */  addiu      $v0, $v0, 0x4D80
    /* 474EC 8007703C 14C0FFEB */  bnez       $a2, .L80076FEC_4749C
    /* 474F0 80077040 24C6FFFF */   addiu     $a2, $a2, -0x1
    /* 474F4 80077044 03E00008 */  jr         $ra
    /* 474F8 80077048 00000000 */   nop
endlabel func_80076FE0_47490
