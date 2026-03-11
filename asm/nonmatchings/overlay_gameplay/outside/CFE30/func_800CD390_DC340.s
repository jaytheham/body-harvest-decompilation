nonmatching func_800CD390_DC340, 0x9C

glabel func_800CD390_DC340
    /* DC340 800CD390 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* DC344 800CD394 308E00FF */  andi       $t6, $a0, 0xFF
    /* DC348 800CD398 AFA40018 */  sw         $a0, 0x18($sp)
    /* DC34C 800CD39C 29C1001E */  slti       $at, $t6, 0x1E
    /* DC350 800CD3A0 01C02025 */  or         $a0, $t6, $zero
    /* DC354 800CD3A4 1020001D */  beqz       $at, .L800CD41C_DC3CC
    /* DC358 800CD3A8 AFBF0014 */   sw        $ra, 0x14($sp)
    /* DC35C 800CD3AC 000E7880 */  sll        $t7, $t6, 2
    /* DC360 800CD3B0 01EE7823 */  subu       $t7, $t7, $t6
    /* DC364 800CD3B4 3C188015 */  lui        $t8, %hi(D_80154088)
    /* DC368 800CD3B8 27184088 */  addiu      $t8, $t8, %lo(D_80154088)
    /* DC36C 800CD3BC 000F7880 */  sll        $t7, $t7, 2
    /* DC370 800CD3C0 01F81021 */  addu       $v0, $t7, $t8
    /* DC374 800CD3C4 90590000 */  lbu        $t9, 0x0($v0)
    /* DC378 800CD3C8 24010005 */  addiu      $at, $zero, 0x5
    /* DC37C 800CD3CC 57210014 */  bnel       $t9, $at, .L800CD420_DC3D0
    /* DC380 800CD3D0 8FBF0014 */   lw        $ra, 0x14($sp)
    /* DC384 800CD3D4 90480004 */  lbu        $t0, 0x4($v0)
    /* DC388 800CD3D8 00002825 */  or         $a1, $zero, $zero
    /* DC38C 800CD3DC 29010002 */  slti       $at, $t0, 0x2
    /* DC390 800CD3E0 50200008 */  beql       $at, $zero, .L800CD404_DC3B4
    /* DC394 800CD3E4 84490006 */   lh        $t1, 0x6($v0)
    /* DC398 800CD3E8 0C030506 */  jal        func_800C1418_D03C8
    /* DC39C 800CD3EC A3AE001B */   sb        $t6, 0x1B($sp)
    /* DC3A0 800CD3F0 0C0304E1 */  jal        func_800C1384_D0334
    /* DC3A4 800CD3F4 93A4001B */   lbu       $a0, 0x1B($sp)
    /* DC3A8 800CD3F8 10000009 */  b          .L800CD420_DC3D0
    /* DC3AC 800CD3FC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* DC3B0 800CD400 84490006 */  lh         $t1, 0x6($v0)
  .L800CD404_DC3B4:
    /* DC3B4 800CD404 3C018015 */  lui        $at, %hi(D_80154329)
    /* DC3B8 800CD408 000950C0 */  sll        $t2, $t1, 3
    /* DC3BC 800CD40C 01495023 */  subu       $t2, $t2, $t1
    /* DC3C0 800CD410 000A5080 */  sll        $t2, $t2, 2
    /* DC3C4 800CD414 002A0821 */  addu       $at, $at, $t2
    /* DC3C8 800CD418 A0204329 */  sb         $zero, %lo(D_80154329)($at)
  .L800CD41C_DC3CC:
    /* DC3CC 800CD41C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800CD420_DC3D0:
    /* DC3D0 800CD420 27BD0018 */  addiu      $sp, $sp, 0x18
    /* DC3D4 800CD424 03E00008 */  jr         $ra
    /* DC3D8 800CD428 00000000 */   nop
endlabel func_800CD390_DC340
