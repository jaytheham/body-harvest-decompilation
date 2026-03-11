nonmatching validateSaveVersionAndChecksum, 0xB4

glabel validateSaveVersionAndChecksum
    /* 2224 80001624 3C0E8004 */  lui        $t6, %hi(D_800431C0)
    /* 2228 80001628 25CE31C0 */  addiu      $t6, $t6, %lo(D_800431C0)
    /* 222C 8000162C 008E1021 */  addu       $v0, $a0, $t6
    /* 2230 80001630 90460000 */  lbu        $a2, 0x0($v0)
    /* 2234 80001634 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2238 80001638 2401001C */  addiu      $at, $zero, 0x1C
    /* 223C 8000163C 10C10007 */  beq        $a2, $at, .L8000165C_225C
    /* 2240 80001640 AFBF0014 */   sw        $ra, 0x14($sp)
    /* 2244 80001644 3C048003 */  lui        $a0, %hi(D_8003685C)
    /* 2248 80001648 2484685C */  addiu      $a0, $a0, %lo(D_8003685C)
    /* 224C 8000164C 0C00731B */  jal        osSyncPrintf
    /* 2250 80001650 00C02825 */   or        $a1, $a2, $zero
    /* 2254 80001654 1000001C */  b          .L800016C8_22C8
    /* 2258 80001658 00001025 */   or        $v0, $zero, $zero
  .L8000165C_225C:
    /* 225C 8000165C 904F0003 */  lbu        $t7, 0x3($v0)
    /* 2260 80001660 90590002 */  lbu        $t9, 0x2($v0)
    /* 2264 80001664 24420004 */  addiu      $v0, $v0, 0x4
    /* 2268 80001668 000FC200 */  sll        $t8, $t7, 8
    /* 226C 8000166C 03193021 */  addu       $a2, $t8, $t9
    /* 2270 80001670 30C8FFFF */  andi       $t0, $a2, 0xFFFF
    /* 2274 80001674 01003025 */  or         $a2, $t0, $zero
    /* 2278 80001678 00002025 */  or         $a0, $zero, $zero
    /* 227C 8000167C 18A0000B */  blez       $a1, .L800016AC_22AC
    /* 2280 80001680 00001825 */   or        $v1, $zero, $zero
  .L80001684_2284:
    /* 2284 80001684 90490000 */  lbu        $t1, 0x0($v0)
    /* 2288 80001688 24630001 */  addiu      $v1, $v1, 0x1
    /* 228C 8000168C 306BFFFF */  andi       $t3, $v1, 0xFFFF
    /* 2290 80001690 00892021 */  addu       $a0, $a0, $t1
    /* 2294 80001694 0165082A */  slt        $at, $t3, $a1
    /* 2298 80001698 308AFFFF */  andi       $t2, $a0, 0xFFFF
    /* 229C 8000169C 01601825 */  or         $v1, $t3, $zero
    /* 22A0 800016A0 01402025 */  or         $a0, $t2, $zero
    /* 22A4 800016A4 1420FFF7 */  bnez       $at, .L80001684_2284
    /* 22A8 800016A8 24420001 */   addiu     $v0, $v0, 0x1
  .L800016AC_22AC:
    /* 22AC 800016AC 10860006 */  beq        $a0, $a2, .L800016C8_22C8
    /* 22B0 800016B0 24020001 */   addiu     $v0, $zero, 0x1
    /* 22B4 800016B4 3C048003 */  lui        $a0, %hi(D_80036870)
    /* 22B8 800016B8 0C00731B */  jal        osSyncPrintf
    /* 22BC 800016BC 24846870 */   addiu     $a0, $a0, %lo(D_80036870)
    /* 22C0 800016C0 10000001 */  b          .L800016C8_22C8
    /* 22C4 800016C4 00001025 */   or        $v0, $zero, $zero
  .L800016C8_22C8:
    /* 22C8 800016C8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 22CC 800016CC 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 22D0 800016D0 03E00008 */  jr         $ra
    /* 22D4 800016D4 00000000 */   nop
endlabel validateSaveVersionAndChecksum
