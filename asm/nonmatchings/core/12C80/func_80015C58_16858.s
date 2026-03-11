nonmatching func_80015C58_16858, 0x3C

glabel func_80015C58_16858
    /* 16858 80015C58 3C0E8007 */  lui        $t6, %hi(D_8006AB88)
    /* 1685C 80015C5C 8DCEAB88 */  lw         $t6, %lo(D_8006AB88)($t6)
    /* 16860 80015C60 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 16864 80015C64 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 16868 80015C68 AFA40018 */  sw         $a0, 0x18($sp)
    /* 1686C 80015C6C 11C00005 */  beqz       $t6, .L80015C84_16884
    /* 16870 80015C70 308500FF */   andi      $a1, $a0, 0xFF
    /* 16874 80015C74 3C048007 */  lui        $a0, %hi(D_8006AB18)
    /* 16878 80015C78 8C84AB18 */  lw         $a0, %lo(D_8006AB18)($a0)
    /* 1687C 80015C7C 0C0088DC */  jal        alSeqpSetChlVol
    /* 16880 80015C80 00003025 */   or        $a2, $zero, $zero
  .L80015C84_16884:
    /* 16884 80015C84 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 16888 80015C88 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1688C 80015C8C 03E00008 */  jr         $ra
    /* 16890 80015C90 00000000 */   nop
endlabel func_80015C58_16858
