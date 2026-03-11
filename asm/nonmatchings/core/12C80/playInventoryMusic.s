nonmatching playInventoryMusic, 0x48

glabel playInventoryMusic
    /* 141F4 800135F4 3C0E8003 */  lui        $t6, %hi(D_80031B58)
    /* 141F8 800135F8 91CE1B58 */  lbu        $t6, %lo(D_80031B58)($t6)
    /* 141FC 800135FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 14200 80013600 24010001 */  addiu      $at, $zero, 0x1
    /* 14204 80013604 15C10006 */  bne        $t6, $at, .L80013620_14220
    /* 14208 80013608 AFBF0014 */   sw        $ra, 0x14($sp)
    /* 1420C 8001360C 24040043 */  addiu      $a0, $zero, 0x43
    /* 14210 80013610 0C005725 */  jal        func_80015C94_16894
    /* 14214 80013614 24050009 */   addiu     $a1, $zero, 0x9
    /* 14218 80013618 10000005 */  b          .L80013630_14230
    /* 1421C 8001361C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L80013620_14220:
    /* 14220 80013620 24040053 */  addiu      $a0, $zero, 0x53
    /* 14224 80013624 0C005725 */  jal        func_80015C94_16894
    /* 14228 80013628 24050009 */   addiu     $a1, $zero, 0x9
    /* 1422C 8001362C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80013630_14230:
    /* 14230 80013630 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 14234 80013634 03E00008 */  jr         $ra
    /* 14238 80013638 00000000 */   nop
endlabel playInventoryMusic
