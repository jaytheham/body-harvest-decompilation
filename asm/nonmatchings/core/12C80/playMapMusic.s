nonmatching playMapMusic, 0x48

glabel playMapMusic
    /* 141AC 800135AC 3C0E8003 */  lui        $t6, %hi(D_80031B58)
    /* 141B0 800135B0 91CE1B58 */  lbu        $t6, %lo(D_80031B58)($t6)
    /* 141B4 800135B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 141B8 800135B8 24010001 */  addiu      $at, $zero, 0x1
    /* 141BC 800135BC 15C10006 */  bne        $t6, $at, .L800135D8_141D8
    /* 141C0 800135C0 AFBF0014 */   sw        $ra, 0x14($sp)
    /* 141C4 800135C4 24040042 */  addiu      $a0, $zero, 0x42
    /* 141C8 800135C8 0C005725 */  jal        func_80015C94_16894
    /* 141CC 800135CC 24050008 */   addiu     $a1, $zero, 0x8
    /* 141D0 800135D0 10000005 */  b          .L800135E8_141E8
    /* 141D4 800135D4 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800135D8_141D8:
    /* 141D8 800135D8 24040052 */  addiu      $a0, $zero, 0x52
    /* 141DC 800135DC 0C005725 */  jal        func_80015C94_16894
    /* 141E0 800135E0 24050008 */   addiu     $a1, $zero, 0x8
    /* 141E4 800135E4 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800135E8_141E8:
    /* 141E8 800135E8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 141EC 800135EC 03E00008 */  jr         $ra
    /* 141F0 800135F0 00000000 */   nop
endlabel playMapMusic
