nonmatching func_800C1384_D0334, 0x94

glabel func_800C1384_D0334
    /* D0334 800C1384 308E00FF */  andi       $t6, $a0, 0xFF
    /* D0338 800C1388 000E7880 */  sll        $t7, $t6, 2
    /* D033C 800C138C 01EE7823 */  subu       $t7, $t7, $t6
    /* D0340 800C1390 3C188015 */  lui        $t8, %hi(D_80154088)
    /* D0344 800C1394 27184088 */  addiu      $t8, $t8, %lo(D_80154088)
    /* D0348 800C1398 000F7880 */  sll        $t7, $t7, 2
    /* D034C 800C139C 01F81021 */  addu       $v0, $t7, $t8
    /* D0350 800C13A0 90590000 */  lbu        $t9, 0x0($v0)
    /* D0354 800C13A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* D0358 800C13A8 AFA40018 */  sw         $a0, 0x18($sp)
    /* D035C 800C13AC 240100FA */  addiu      $at, $zero, 0xFA
    /* D0360 800C13B0 01C02025 */  or         $a0, $t6, $zero
    /* D0364 800C13B4 17210006 */  bne        $t9, $at, .L800C13D0_D0380
    /* D0368 800C13B8 AFBF0014 */   sw        $ra, 0x14($sp)
    /* D036C 800C13BC 3C048014 */  lui        $a0, %hi(D_80142ECC)
    /* D0370 800C13C0 0C00731B */  jal        osSyncPrintf
    /* D0374 800C13C4 24842ECC */   addiu     $a0, $a0, %lo(D_80142ECC)
    /* D0378 800C13C8 10000010 */  b          .L800C140C_D03BC
    /* D037C 800C13CC 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800C13D0_D0380:
    /* D0380 800C13D0 3C038015 */  lui        $v1, %hi(D_80154304)
    /* D0384 800C13D4 3C058015 */  lui        $a1, %hi(D_8015430C)
    /* D0388 800C13D8 24A5430C */  addiu      $a1, $a1, %lo(D_8015430C)
    /* D038C 800C13DC 24634304 */  addiu      $v1, $v1, %lo(D_80154304)
    /* D0390 800C13E0 90690000 */  lbu        $t1, 0x0($v1)
    /* D0394 800C13E4 90AB0000 */  lbu        $t3, 0x0($a1)
    /* D0398 800C13E8 240800FA */  addiu      $t0, $zero, 0xFA
    /* D039C 800C13EC 252AFFFF */  addiu      $t2, $t1, -0x1
    /* D03A0 800C13F0 008B082A */  slt        $at, $a0, $t3
    /* D03A4 800C13F4 A0480000 */  sb         $t0, 0x0($v0)
    /* D03A8 800C13F8 A0400001 */  sb         $zero, 0x1($v0)
    /* D03AC 800C13FC 10200002 */  beqz       $at, .L800C1408_D03B8
    /* D03B0 800C1400 A06A0000 */   sb        $t2, 0x0($v1)
    /* D03B4 800C1404 A0A40000 */  sb         $a0, 0x0($a1)
  .L800C1408_D03B8:
    /* D03B8 800C1408 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800C140C_D03BC:
    /* D03BC 800C140C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* D03C0 800C1410 03E00008 */  jr         $ra
    /* D03C4 800C1414 00000000 */   nop
endlabel func_800C1384_D0334
