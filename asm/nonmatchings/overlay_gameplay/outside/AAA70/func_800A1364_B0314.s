nonmatching func_800A1364_B0314, 0x84

glabel func_800A1364_B0314
    /* B0314 800A1364 3C0E8014 */  lui        $t6, %hi(D_8013D75C)
    /* B0318 800A1368 8DCED75C */  lw         $t6, %lo(D_8013D75C)($t6)
    /* B031C 800A136C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* B0320 800A1370 AFBF0014 */  sw         $ra, 0x14($sp)
    /* B0324 800A1374 3C018014 */  lui        $at, %hi(D_8013D758)
    /* B0328 800A1378 0C007D50 */  jal        osGetCount
    /* B032C 800A137C AC2ED758 */   sw        $t6, %lo(D_8013D758)($at)
    /* B0330 800A1380 3C058014 */  lui        $a1, %hi(D_8013D75C)
    /* B0334 800A1384 24A5D75C */  addiu      $a1, $a1, %lo(D_8013D75C)
    /* B0338 800A1388 3C048015 */  lui        $a0, %hi(D_8014F20C)
    /* B033C 800A138C 2484F20C */  addiu      $a0, $a0, %lo(D_8014F20C)
    /* B0340 800A1390 ACA20000 */  sw         $v0, 0x0($a1)
    /* B0344 800A1394 3C098015 */  lui        $t1, %hi(D_8014F610)
    /* B0348 800A1398 8D29F610 */  lw         $t1, %lo(D_8014F610)($t1)
    /* B034C 800A139C 8C830000 */  lw         $v1, 0x0($a0)
    /* B0350 800A13A0 3C188014 */  lui        $t8, %hi(D_8013D758)
    /* B0354 800A13A4 8F18D758 */  lw         $t8, %lo(D_8013D758)($t8)
    /* B0358 800A13A8 00095080 */  sll        $t2, $t1, 2
    /* B035C 800A13AC 00034140 */  sll        $t0, $v1, 5
    /* B0360 800A13B0 010A5821 */  addu       $t3, $t0, $t2
    /* B0364 800A13B4 3C018015 */  lui        $at, %hi(D_8014F210)
    /* B0368 800A13B8 002B0821 */  addu       $at, $at, $t3
    /* B036C 800A13BC 0058C823 */  subu       $t9, $v0, $t8
    /* B0370 800A13C0 AC39F210 */  sw         $t9, %lo(D_8014F210)($at)
    /* B0374 800A13C4 246C0001 */  addiu      $t4, $v1, 0x1
    /* B0378 800A13C8 2D810020 */  sltiu      $at, $t4, 0x20
    /* B037C 800A13CC 14200002 */  bnez       $at, .L800A13D8_B0388
    /* B0380 800A13D0 AC8C0000 */   sw        $t4, 0x0($a0)
    /* B0384 800A13D4 AC800000 */  sw         $zero, 0x0($a0)
  .L800A13D8_B0388:
    /* B0388 800A13D8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* B038C 800A13DC 27BD0018 */  addiu      $sp, $sp, 0x18
    /* B0390 800A13E0 03E00008 */  jr         $ra
    /* B0394 800A13E4 00000000 */   nop
endlabel func_800A1364_B0314
