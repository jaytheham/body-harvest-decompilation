nonmatching func_802DCA6C_19557C, 0x70

glabel func_802DCA6C_19557C
    /* 19557C 802DCA6C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 195580 802DCA70 000E7880 */  sll        $t7, $t6, 2
    /* 195584 802DCA74 01EE7821 */  addu       $t7, $t7, $t6
    /* 195588 802DCA78 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 19558C 802DCA7C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 195590 802DCA80 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 195594 802DCA84 000F7900 */  sll        $t7, $t7, 4
    /* 195598 802DCA88 01F81021 */  addu       $v0, $t7, $t8
    /* 19559C 802DCA8C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1955A0 802DCA90 AFA40018 */  sw         $a0, 0x18($sp)
    /* 1955A4 802DCA94 2419009C */  addiu      $t9, $zero, 0x9C
    /* 1955A8 802DCA98 240800CA */  addiu      $t0, $zero, 0xCA
    /* 1955AC 802DCA9C 24090058 */  addiu      $t1, $zero, 0x58
    /* 1955B0 802DCAA0 01C02025 */  or         $a0, $t6, $zero
    /* 1955B4 802DCAA4 A4590014 */  sh         $t9, 0x14($v0)
    /* 1955B8 802DCAA8 A4480016 */  sh         $t0, 0x16($v0)
    /* 1955BC 802DCAAC A4490018 */  sh         $t1, 0x18($v0)
    /* 1955C0 802DCAB0 0C0B7140 */  jal        func_802DC500_195010
    /* 1955C4 802DCAB4 A3AE001B */   sb        $t6, 0x1B($sp)
    /* 1955C8 802DCAB8 93A4001B */  lbu        $a0, 0x1B($sp)
    /* 1955CC 802DCABC 24050099 */  addiu      $a1, $zero, 0x99
    /* 1955D0 802DCAC0 24060032 */  addiu      $a2, $zero, 0x32
    /* 1955D4 802DCAC4 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 1955D8 802DCAC8 240700D4 */   addiu     $a3, $zero, 0xD4
    /* 1955DC 802DCACC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1955E0 802DCAD0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1955E4 802DCAD4 03E00008 */  jr         $ra
    /* 1955E8 802DCAD8 00000000 */   nop
endlabel func_802DCA6C_19557C
