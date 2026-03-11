nonmatching func_80017B78_18778, 0x80

glabel func_80017B78_18778
    /* 18778 80017B78 3C0E8005 */  lui        $t6, %hi(D_80052AD0)
    /* 1877C 80017B7C 8DCE2AD0 */  lw         $t6, %lo(D_80052AD0)($t6)
    /* 18780 80017B80 3C038007 */  lui        $v1, %hi(D_8006C55E)
    /* 18784 80017B84 3402FFFF */  ori        $v0, $zero, 0xFFFF
    /* 18788 80017B88 11C00019 */  beqz       $t6, .L80017BF0_187F0
    /* 1878C 80017B8C 00000000 */   nop
    /* 18790 80017B90 9463C55E */  lhu        $v1, %lo(D_8006C55E)($v1)
    /* 18794 80017B94 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* 18798 80017B98 3C028005 */  lui        $v0, %hi(gameplayMode)
    /* 1879C 80017B9C 10610012 */  beq        $v1, $at, .L80017BE8_187E8
    /* 187A0 80017BA0 00000000 */   nop
    /* 187A4 80017BA4 8C422ADC */  lw         $v0, %lo(gameplayMode)($v0)
    /* 187A8 80017BA8 24010001 */  addiu      $at, $zero, 0x1
    /* 187AC 80017BAC 24040009 */  addiu      $a0, $zero, 0x9
    /* 187B0 80017BB0 1041000B */  beq        $v0, $at, .L80017BE0_187E0
    /* 187B4 80017BB4 00000000 */   nop
    /* 187B8 80017BB8 10820009 */  beq        $a0, $v0, .L80017BE0_187E0
    /* 187BC 80017BBC 00000000 */   nop
    /* 187C0 80017BC0 10400007 */  beqz       $v0, .L80017BE0_187E0
    /* 187C4 80017BC4 00000000 */   nop
    /* 187C8 80017BC8 10820005 */  beq        $a0, $v0, .L80017BE0_187E0
    /* 187CC 80017BCC 24010006 */   addiu     $at, $zero, 0x6
    /* 187D0 80017BD0 10410003 */  beq        $v0, $at, .L80017BE0_187E0
    /* 187D4 80017BD4 2401000C */   addiu     $at, $zero, 0xC
    /* 187D8 80017BD8 14410003 */  bne        $v0, $at, .L80017BE8_187E8
    /* 187DC 80017BDC 00000000 */   nop
  .L80017BE0_187E0:
    /* 187E0 80017BE0 03E00008 */  jr         $ra
    /* 187E4 80017BE4 00601025 */   or        $v0, $v1, $zero
  .L80017BE8_187E8:
    /* 187E8 80017BE8 03E00008 */  jr         $ra
    /* 187EC 80017BEC 3402FFFF */   ori       $v0, $zero, 0xFFFF
  .L80017BF0_187F0:
    /* 187F0 80017BF0 03E00008 */  jr         $ra
    /* 187F4 80017BF4 00000000 */   nop
endlabel func_80017B78_18778
