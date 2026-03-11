nonmatching destroyThreadIfMessageInQueue, 0x4C

glabel destroyThreadIfMessageInQueue
    /* 11368 80010768 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1136C 8001076C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 11370 80010770 3C048006 */  lui        $a0, %hi(D_80067F88)
    /* 11374 80010774 24847F88 */  addiu      $a0, $a0, %lo(D_80067F88)
    /* 11378 80010778 00002825 */  or         $a1, $zero, $zero
    /* 1137C 8001077C 0C006E9C */  jal        osRecvMesg
    /* 11380 80010780 00003025 */   or        $a2, $zero, $zero
    /* 11384 80010784 2401FFFF */  addiu      $at, $zero, -0x1
    /* 11388 80010788 50410006 */  beql       $v0, $at, .L800107A4_113A4
    /* 1138C 8001078C 00001025 */   or        $v0, $zero, $zero
    /* 11390 80010790 0C003C7A */  jal        func_8000F1E8_FDE8
    /* 11394 80010794 00000000 */   nop
    /* 11398 80010798 10000002 */  b          .L800107A4_113A4
    /* 1139C 8001079C 24020001 */   addiu     $v0, $zero, 0x1
    /* 113A0 800107A0 00001025 */  or         $v0, $zero, $zero
  .L800107A4_113A4:
    /* 113A4 800107A4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 113A8 800107A8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 113AC 800107AC 03E00008 */  jr         $ra
    /* 113B0 800107B0 00000000 */   nop
endlabel destroyThreadIfMessageInQueue
