nonmatching func_802DC98C_19549C, 0x70

glabel func_802DC98C_19549C
    /* 19549C 802DC98C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1954A0 802DC990 000E7880 */  sll        $t7, $t6, 2
    /* 1954A4 802DC994 01EE7821 */  addu       $t7, $t7, $t6
    /* 1954A8 802DC998 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1954AC 802DC99C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1954B0 802DC9A0 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1954B4 802DC9A4 000F7900 */  sll        $t7, $t7, 4
    /* 1954B8 802DC9A8 01F81021 */  addu       $v0, $t7, $t8
    /* 1954BC 802DC9AC AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1954C0 802DC9B0 AFA40018 */  sw         $a0, 0x18($sp)
    /* 1954C4 802DC9B4 2419FF58 */  addiu      $t9, $zero, -0xA8
    /* 1954C8 802DC9B8 240800B6 */  addiu      $t0, $zero, 0xB6
    /* 1954CC 802DC9BC 24090039 */  addiu      $t1, $zero, 0x39
    /* 1954D0 802DC9C0 01C02025 */  or         $a0, $t6, $zero
    /* 1954D4 802DC9C4 A4590014 */  sh         $t9, 0x14($v0)
    /* 1954D8 802DC9C8 A4480016 */  sh         $t0, 0x16($v0)
    /* 1954DC 802DC9CC A4490018 */  sh         $t1, 0x18($v0)
    /* 1954E0 802DC9D0 0C0B7140 */  jal        func_802DC500_195010
    /* 1954E4 802DC9D4 A3AE001B */   sb        $t6, 0x1B($sp)
    /* 1954E8 802DC9D8 93A4001B */  lbu        $a0, 0x1B($sp)
    /* 1954EC 802DC9DC 2405FF78 */  addiu      $a1, $zero, -0x88
    /* 1954F0 802DC9E0 24060032 */  addiu      $a2, $zero, 0x32
    /* 1954F4 802DC9E4 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 1954F8 802DC9E8 240700D4 */   addiu     $a3, $zero, 0xD4
    /* 1954FC 802DC9EC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 195500 802DC9F0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 195504 802DC9F4 03E00008 */  jr         $ra
    /* 195508 802DC9F8 00000000 */   nop
endlabel func_802DC98C_19549C
