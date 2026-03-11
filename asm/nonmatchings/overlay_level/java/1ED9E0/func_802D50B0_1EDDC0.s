nonmatching func_802D50B0_1EDDC0, 0x8C

glabel func_802D50B0_1EDDC0
    /* 1EDDC0 802D50B0 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 1EDDC4 802D50B4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EDDC8 802D50B8 0C01E55B */  jal        func_8007956C_8851C
    /* 1EDDCC 802D50BC 24040025 */   addiu     $a0, $zero, 0x25
    /* 1EDDD0 802D50C0 304E00FF */  andi       $t6, $v0, 0xFF
    /* 1EDDD4 802D50C4 240100FF */  addiu      $at, $zero, 0xFF
    /* 1EDDD8 802D50C8 11C10018 */  beq        $t6, $at, .L802D512C_1EDE3C
    /* 1EDDDC 802D50CC 304300FF */   andi      $v1, $v0, 0xFF
    /* 1EDDE0 802D50D0 00037880 */  sll        $t7, $v1, 2
    /* 1EDDE4 802D50D4 01E37821 */  addu       $t7, $t7, $v1
    /* 1EDDE8 802D50D8 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1EDDEC 802D50DC 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1EDDF0 802D50E0 000F7900 */  sll        $t7, $t7, 4
    /* 1EDDF4 802D50E4 01F81021 */  addu       $v0, $t7, $t8
    /* 1EDDF8 802D50E8 3C0C802D */  lui        $t4, %hi(func_802D507C_1EDD8C)
    /* 1EDDFC 802D50EC 2419EF66 */  addiu      $t9, $zero, -0x109A
    /* 1EDE00 802D50F0 2408046B */  addiu      $t0, $zero, 0x46B
    /* 1EDE04 802D50F4 240943E0 */  addiu      $t1, $zero, 0x43E0
    /* 1EDE08 802D50F8 240A4000 */  addiu      $t2, $zero, 0x4000
    /* 1EDE0C 802D50FC 240B0003 */  addiu      $t3, $zero, 0x3
    /* 1EDE10 802D5100 258C507C */  addiu      $t4, $t4, %lo(func_802D507C_1EDD8C)
    /* 1EDE14 802D5104 A4590000 */  sh         $t9, 0x0($v0)
    /* 1EDE18 802D5108 A4480002 */  sh         $t0, 0x2($v0)
    /* 1EDE1C 802D510C A4490004 */  sh         $t1, 0x4($v0)
    /* 1EDE20 802D5110 A44A000E */  sh         $t2, 0xE($v0)
    /* 1EDE24 802D5114 A040001B */  sb         $zero, 0x1B($v0)
    /* 1EDE28 802D5118 A3AB001C */  sb         $t3, 0x1C($sp)
    /* 1EDE2C 802D511C A3A30024 */  sb         $v1, 0x24($sp)
    /* 1EDE30 802D5120 AFAC0028 */  sw         $t4, 0x28($sp)
    /* 1EDE34 802D5124 0C02B915 */  jal        func_800AE454_BD404
    /* 1EDE38 802D5128 27A4001C */   addiu     $a0, $sp, 0x1C
  .L802D512C_1EDE3C:
    /* 1EDE3C 802D512C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1EDE40 802D5130 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 1EDE44 802D5134 03E00008 */  jr         $ra
    /* 1EDE48 802D5138 00000000 */   nop
endlabel func_802D50B0_1EDDC0
