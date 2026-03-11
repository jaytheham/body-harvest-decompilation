nonmatching func_802D4F98_1EDCA8, 0xE4

glabel func_802D4F98_1EDCA8
    /* 1EDCA8 802D4F98 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 1EDCAC 802D4F9C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EDCB0 802D4FA0 0C01E55B */  jal        func_8007956C_8851C
    /* 1EDCB4 802D4FA4 24040012 */   addiu     $a0, $zero, 0x12
    /* 1EDCB8 802D4FA8 3C07802E */  lui        $a3, %hi(D_802E04A0)
    /* 1EDCBC 802D4FAC 24E704A0 */  addiu      $a3, $a3, %lo(D_802E04A0)
    /* 1EDCC0 802D4FB0 304E00FF */  andi       $t6, $v0, 0xFF
    /* 1EDCC4 802D4FB4 240100FF */  addiu      $at, $zero, 0xFF
    /* 1EDCC8 802D4FB8 11C10029 */  beq        $t6, $at, .L802D5060_1EDD70
    /* 1EDCCC 802D4FBC A0E20000 */   sb        $v0, 0x0($a3)
    /* 1EDCD0 802D4FC0 240F006F */  addiu      $t7, $zero, 0x6F
    /* 1EDCD4 802D4FC4 3C018025 */  lui        $at, %hi(D_80256DEC)
    /* 1EDCD8 802D4FC8 AC2F6DEC */  sw         $t7, %lo(D_80256DEC)($at)
    /* 1EDCDC 802D4FCC 3C018015 */  lui        $at, %hi(D_80157E7C)
    /* 1EDCE0 802D4FD0 24180002 */  addiu      $t8, $zero, 0x2
    /* 1EDCE4 802D4FD4 AC387E7C */  sw         $t8, %lo(D_80157E7C)($at)
    /* 1EDCE8 802D4FD8 2404A6AC */  addiu      $a0, $zero, -0x5954
    /* 1EDCEC 802D4FDC 2405DDA8 */  addiu      $a1, $zero, -0x2258
    /* 1EDCF0 802D4FE0 0C0479BF */  jal        func_8011E6FC_12D6AC
    /* 1EDCF4 802D4FE4 27A60026 */   addiu     $a2, $sp, 0x26
    /* 1EDCF8 802D4FE8 3C07802E */  lui        $a3, %hi(D_802E04A0)
    /* 1EDCFC 802D4FEC 24E704A0 */  addiu      $a3, $a3, %lo(D_802E04A0)
    /* 1EDD00 802D4FF0 90E50000 */  lbu        $a1, 0x0($a3)
    /* 1EDD04 802D4FF4 3C088005 */  lui        $t0, %hi(alienInstances)
    /* 1EDD08 802D4FF8 25088198 */  addiu      $t0, $t0, %lo(alienInstances)
    /* 1EDD0C 802D4FFC 0005C880 */  sll        $t9, $a1, 2
    /* 1EDD10 802D5000 0325C821 */  addu       $t9, $t9, $a1
    /* 1EDD14 802D5004 0019C900 */  sll        $t9, $t9, 4
    /* 1EDD18 802D5008 87AB0026 */  lh         $t3, 0x26($sp)
    /* 1EDD1C 802D500C 03281821 */  addu       $v1, $t9, $t0
    /* 1EDD20 802D5010 3C18802D */  lui        $t8, %hi(func_802D4F70_1EDC80)
    /* 1EDD24 802D5014 2409A6AC */  addiu      $t1, $zero, -0x5954
    /* 1EDD28 802D5018 240ADDA8 */  addiu      $t2, $zero, -0x2258
    /* 1EDD2C 802D501C 240D0004 */  addiu      $t5, $zero, 0x4
    /* 1EDD30 802D5020 240E0003 */  addiu      $t6, $zero, 0x3
    /* 1EDD34 802D5024 240F0003 */  addiu      $t7, $zero, 0x3
    /* 1EDD38 802D5028 27184F70 */  addiu      $t8, $t8, %lo(func_802D4F70_1EDC80)
    /* 1EDD3C 802D502C 256C000A */  addiu      $t4, $t3, 0xA
    /* 1EDD40 802D5030 A4690000 */  sh         $t1, 0x0($v1)
    /* 1EDD44 802D5034 A46A0004 */  sh         $t2, 0x4($v1)
    /* 1EDD48 802D5038 A46C0002 */  sh         $t4, 0x2($v1)
    /* 1EDD4C 802D503C A06D0024 */  sb         $t5, 0x24($v1)
    /* 1EDD50 802D5040 A06E001B */  sb         $t6, 0x1B($v1)
    /* 1EDD54 802D5044 A3AF0028 */  sb         $t7, 0x28($sp)
    /* 1EDD58 802D5048 AFB80034 */  sw         $t8, 0x34($sp)
    /* 1EDD5C 802D504C 27A40028 */  addiu      $a0, $sp, 0x28
    /* 1EDD60 802D5050 0C02B915 */  jal        func_800AE454_BD404
    /* 1EDD64 802D5054 A3A50030 */   sb        $a1, 0x30($sp)
    /* 1EDD68 802D5058 10000005 */  b          .L802D5070_1EDD80
    /* 1EDD6C 802D505C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D5060_1EDD70:
    /* 1EDD70 802D5060 3C04802E */  lui        $a0, %hi(D_802E0D6C)
    /* 1EDD74 802D5064 0C00731B */  jal        osSyncPrintf
    /* 1EDD78 802D5068 24840D6C */   addiu     $a0, $a0, %lo(D_802E0D6C)
    /* 1EDD7C 802D506C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D5070_1EDD80:
    /* 1EDD80 802D5070 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 1EDD84 802D5074 03E00008 */  jr         $ra
    /* 1EDD88 802D5078 00000000 */   nop
endlabel func_802D4F98_1EDCA8
