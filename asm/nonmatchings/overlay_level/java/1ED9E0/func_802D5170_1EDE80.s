nonmatching func_802D5170_1EDE80, 0x88

glabel func_802D5170_1EDE80
    /* 1EDE80 802D5170 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 1EDE84 802D5174 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EDE88 802D5178 0C01E55B */  jal        func_8007956C_8851C
    /* 1EDE8C 802D517C 24040024 */   addiu     $a0, $zero, 0x24
    /* 1EDE90 802D5180 304E00FF */  andi       $t6, $v0, 0xFF
    /* 1EDE94 802D5184 240100FF */  addiu      $at, $zero, 0xFF
    /* 1EDE98 802D5188 11C10014 */  beq        $t6, $at, .L802D51DC_1EDEEC
    /* 1EDE9C 802D518C 304300FF */   andi      $v1, $v0, 0xFF
    /* 1EDEA0 802D5190 00037880 */  sll        $t7, $v1, 2
    /* 1EDEA4 802D5194 01E37821 */  addu       $t7, $t7, $v1
    /* 1EDEA8 802D5198 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1EDEAC 802D519C 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1EDEB0 802D51A0 000F7900 */  sll        $t7, $t7, 4
    /* 1EDEB4 802D51A4 01F81021 */  addu       $v0, $t7, $t8
    /* 1EDEB8 802D51A8 3C0A802D */  lui        $t2, %hi(func_802D513C_1EDE4C)
    /* 1EDEBC 802D51AC 2419EB28 */  addiu      $t9, $zero, -0x14D8
    /* 1EDEC0 802D51B0 24082900 */  addiu      $t0, $zero, 0x2900
    /* 1EDEC4 802D51B4 24090003 */  addiu      $t1, $zero, 0x3
    /* 1EDEC8 802D51B8 254A513C */  addiu      $t2, $t2, %lo(func_802D513C_1EDE4C)
    /* 1EDECC 802D51BC A4590000 */  sh         $t9, 0x0($v0)
    /* 1EDED0 802D51C0 A4480004 */  sh         $t0, 0x4($v0)
    /* 1EDED4 802D51C4 A040001B */  sb         $zero, 0x1B($v0)
    /* 1EDED8 802D51C8 A3A9001C */  sb         $t1, 0x1C($sp)
    /* 1EDEDC 802D51CC A3A30024 */  sb         $v1, 0x24($sp)
    /* 1EDEE0 802D51D0 AFAA0028 */  sw         $t2, 0x28($sp)
    /* 1EDEE4 802D51D4 0C02B915 */  jal        func_800AE454_BD404
    /* 1EDEE8 802D51D8 27A4001C */   addiu     $a0, $sp, 0x1C
  .L802D51DC_1EDEEC:
    /* 1EDEEC 802D51DC 24040000 */  addiu      $a0, $zero, 0x0
    /* 1EDEF0 802D51E0 0C001CEE */  jal        func_800073B8_7FB8
    /* 1EDEF4 802D51E4 2405000C */   addiu     $a1, $zero, 0xC
    /* 1EDEF8 802D51E8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1EDEFC 802D51EC 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 1EDF00 802D51F0 03E00008 */  jr         $ra
    /* 1EDF04 802D51F4 00000000 */   nop
endlabel func_802D5170_1EDE80
