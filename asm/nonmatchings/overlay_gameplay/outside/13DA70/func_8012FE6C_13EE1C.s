nonmatching func_8012FE6C_13EE1C, 0x144

glabel func_8012FE6C_13EE1C
    /* 13EE1C 8012FE6C 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* 13EE20 8012FE70 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* 13EE24 8012FE74 8C620000 */  lw         $v0, 0x0($v1)
    /* 13EE28 8012FE78 AFA40000 */  sw         $a0, 0x0($sp)
    /* 13EE2C 8012FE7C 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* 13EE30 8012FE80 24580008 */  addiu      $t8, $v0, 0x8
    /* 13EE34 8012FE84 AC780000 */  sw         $t8, 0x0($v1)
    /* 13EE38 8012FE88 AC400004 */  sw         $zero, 0x4($v0)
    /* 13EE3C 8012FE8C AC590000 */  sw         $t9, 0x0($v0)
    /* 13EE40 8012FE90 8C620000 */  lw         $v0, 0x0($v1)
    /* 13EE44 8012FE94 00807025 */  or         $t6, $a0, $zero
    /* 13EE48 8012FE98 01C02025 */  or         $a0, $t6, $zero
    /* 13EE4C 8012FE9C 244E0008 */  addiu      $t6, $v0, 0x8
    /* 13EE50 8012FEA0 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 13EE54 8012FEA4 3C0FBA00 */  lui        $t7, (0xBA001402 >> 16)
    /* 13EE58 8012FEA8 35EF1402 */  ori        $t7, $t7, (0xBA001402 & 0xFFFF)
    /* 13EE5C 8012FEAC AC4F0000 */  sw         $t7, 0x0($v0)
    /* 13EE60 8012FEB0 AC400004 */  sw         $zero, 0x4($v0)
    /* 13EE64 8012FEB4 8C620000 */  lw         $v0, 0x0($v1)
    /* 13EE68 8012FEB8 3C0E0001 */  lui        $t6, (0x10001 >> 16)
    /* 13EE6C 8012FEBC 35CE0001 */  ori        $t6, $t6, (0x10001 & 0xFFFF)
    /* 13EE70 8012FEC0 24580008 */  addiu      $t8, $v0, 0x8
    /* 13EE74 8012FEC4 AC780000 */  sw         $t8, 0x0($v1)
    /* 13EE78 8012FEC8 3C19B600 */  lui        $t9, (0xB6000000 >> 16)
    /* 13EE7C 8012FECC AC590000 */  sw         $t9, 0x0($v0)
    /* 13EE80 8012FED0 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 13EE84 8012FED4 8C620000 */  lw         $v0, 0x0($v1)
    /* 13EE88 8012FED8 3C190050 */  lui        $t9, (0x504240 >> 16)
    /* 13EE8C 8012FEDC 3C18B900 */  lui        $t8, (0xB900031D >> 16)
    /* 13EE90 8012FEE0 244F0008 */  addiu      $t7, $v0, 0x8
    /* 13EE94 8012FEE4 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 13EE98 8012FEE8 3718031D */  ori        $t8, $t8, (0xB900031D & 0xFFFF)
    /* 13EE9C 8012FEEC 37394240 */  ori        $t9, $t9, (0x504240 & 0xFFFF)
    /* 13EEA0 8012FEF0 AC590004 */  sw         $t9, 0x4($v0)
    /* 13EEA4 8012FEF4 AC580000 */  sw         $t8, 0x0($v0)
    /* 13EEA8 8012FEF8 8C620000 */  lw         $v0, 0x0($v1)
    /* 13EEAC 8012FEFC 3C0FBA00 */  lui        $t7, (0xBA000E02 >> 16)
    /* 13EEB0 8012FF00 35EF0E02 */  ori        $t7, $t7, (0xBA000E02 & 0xFFFF)
    /* 13EEB4 8012FF04 244E0008 */  addiu      $t6, $v0, 0x8
    /* 13EEB8 8012FF08 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 13EEBC 8012FF0C AC400004 */  sw         $zero, 0x4($v0)
    /* 13EEC0 8012FF10 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 13EEC4 8012FF14 8C620000 */  lw         $v0, 0x0($v1)
    /* 13EEC8 8012FF18 3C0EFFFD */  lui        $t6, (0xFFFDF6FB >> 16)
    /* 13EECC 8012FF1C 3C19FCFF */  lui        $t9, (0xFCFFFFFF >> 16)
    /* 13EED0 8012FF20 24580008 */  addiu      $t8, $v0, 0x8
    /* 13EED4 8012FF24 AC780000 */  sw         $t8, 0x0($v1)
    /* 13EED8 8012FF28 3739FFFF */  ori        $t9, $t9, (0xFCFFFFFF & 0xFFFF)
    /* 13EEDC 8012FF2C 35CEF6FB */  ori        $t6, $t6, (0xFFFDF6FB & 0xFFFF)
    /* 13EEE0 8012FF30 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 13EEE4 8012FF34 AC590000 */  sw         $t9, 0x0($v0)
    /* 13EEE8 8012FF38 8C620000 */  lw         $v0, 0x0($v1)
    /* 13EEEC 8012FF3C 309900FF */  andi       $t9, $a0, 0xFF
    /* 13EEF0 8012FF40 3C18FA00 */  lui        $t8, (0xFA000000 >> 16)
    /* 13EEF4 8012FF44 244F0008 */  addiu      $t7, $v0, 0x8
    /* 13EEF8 8012FF48 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 13EEFC 8012FF4C AC590004 */  sw         $t9, 0x4($v0)
    /* 13EF00 8012FF50 AC580000 */  sw         $t8, 0x0($v0)
    /* 13EF04 8012FF54 8C620000 */  lw         $v0, 0x0($v1)
    /* 13EF08 8012FF58 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* 13EF0C 8012FF5C 3C198007 */  lui        $t9, %hi(D_80068084)
    /* 13EF10 8012FF60 244E0008 */  addiu      $t6, $v0, 0x8
    /* 13EF14 8012FF64 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 13EF18 8012FF68 AC400004 */  sw         $zero, 0x4($v0)
    /* 13EF1C 8012FF6C AC4F0000 */  sw         $t7, 0x0($v0)
    /* 13EF20 8012FF70 8C620000 */  lw         $v0, 0x0($v1)
    /* 13EF24 8012FF74 3C01F600 */  lui        $at, (0xF6000000 >> 16)
    /* 13EF28 8012FF78 24580008 */  addiu      $t8, $v0, 0x8
    /* 13EF2C 8012FF7C AC780000 */  sw         $t8, 0x0($v1)
    /* 13EF30 8012FF80 8F398084 */  lw         $t9, %lo(D_80068084)($t9)
    /* 13EF34 8012FF84 332E03FF */  andi       $t6, $t9, 0x3FF
    /* 13EF38 8012FF88 3C198007 */  lui        $t9, %hi(D_80068088)
    /* 13EF3C 8012FF8C 8F398088 */  lw         $t9, %lo(D_80068088)($t9)
    /* 13EF40 8012FF90 000E7B80 */  sll        $t7, $t6, 14
    /* 13EF44 8012FF94 01E1C025 */  or         $t8, $t7, $at
    /* 13EF48 8012FF98 332E03FF */  andi       $t6, $t9, 0x3FF
    /* 13EF4C 8012FF9C 000E7880 */  sll        $t7, $t6, 2
    /* 13EF50 8012FFA0 030FC825 */  or         $t9, $t8, $t7
    /* 13EF54 8012FFA4 AC590000 */  sw         $t9, 0x0($v0)
    /* 13EF58 8012FFA8 03E00008 */  jr         $ra
    /* 13EF5C 8012FFAC AC400004 */   sw        $zero, 0x4($v0)
endlabel func_8012FE6C_13EE1C
