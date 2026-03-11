nonmatching func_8008AEC8_5B378, 0x1C4

glabel func_8008AEC8_5B378
    /* 5B378 8008AEC8 308E00FF */  andi       $t6, $a0, 0xFF
    /* 5B37C 8008AECC 000E7880 */  sll        $t7, $t6, 2
    /* 5B380 8008AED0 01EE7823 */  subu       $t7, $t7, $t6
    /* 5B384 8008AED4 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 5B388 8008AED8 000F7880 */  sll        $t7, $t7, 2
    /* 5B38C 8008AEDC 3C18800E */  lui        $t8, %hi(D_800DE136)
    /* 5B390 8008AEE0 030FC021 */  addu       $t8, $t8, $t7
    /* 5B394 8008AEE4 8718E136 */  lh         $t8, %lo(D_800DE136)($t8)
    /* 5B398 8008AEE8 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 5B39C 8008AEEC AFA40030 */  sw         $a0, 0x30($sp)
    /* 5B3A0 8008AEF0 01C02025 */  or         $a0, $t6, $zero
    /* 5B3A4 8008AEF4 AFB10018 */  sw         $s1, 0x18($sp)
    /* 5B3A8 8008AEF8 AFB00014 */  sw         $s0, 0x14($sp)
    /* 5B3AC 8008AEFC 0C020EDF */  jal        func_80083B7C_5402C
    /* 5B3B0 8008AF00 A7B8002E */   sh        $t8, 0x2E($sp)
    /* 5B3B4 8008AF04 00024400 */  sll        $t0, $v0, 16
    /* 5B3B8 8008AF08 2401FFFD */  addiu      $at, $zero, -0x3
    /* 5B3BC 8008AF0C 1041005A */  beq        $v0, $at, .L8008B078_5B528
    /* 5B3C0 8008AF10 0008CC03 */   sra       $t9, $t0, 16
    /* 5B3C4 8008AF14 0C000E38 */  jal        func_800038E0_44E0
    /* 5B3C8 8008AF18 A7B90026 */   sh        $t9, 0x26($sp)
    /* 5B3CC 8008AF1C 87A80026 */  lh         $t0, 0x26($sp)
    /* 5B3D0 8008AF20 2405001C */  addiu      $a1, $zero, 0x1C
    /* 5B3D4 8008AF24 3C04800E */  lui        $a0, %hi(D_800DE840)
    /* 5B3D8 8008AF28 01050019 */  multu      $t0, $a1
    /* 5B3DC 8008AF2C 2484E840 */  addiu      $a0, $a0, %lo(D_800DE840)
    /* 5B3E0 8008AF30 24070003 */  addiu      $a3, $zero, 0x3
    /* 5B3E4 8008AF34 3C06800B */  lui        $a2, %hi(D_800AA640)
    /* 5B3E8 8008AF38 24C6A640 */  addiu      $a2, $a2, %lo(D_800AA640)
    /* 5B3EC 8008AF3C 00001812 */  mflo       $v1
    /* 5B3F0 8008AF40 00835821 */  addu       $t3, $a0, $v1
    /* 5B3F4 8008AF44 00838021 */  addu       $s0, $a0, $v1
    /* 5B3F8 8008AF48 0045001A */  div        $zero, $v0, $a1
    /* 5B3FC 8008AF4C 00004810 */  mfhi       $t1
    /* 5B400 8008AF50 252A001C */  addiu      $t2, $t1, 0x1C
    /* 5B404 8008AF54 A56A0002 */  sh         $t2, 0x2($t3)
    /* 5B408 8008AF58 87AC002E */  lh         $t4, 0x2E($sp)
    /* 5B40C 8008AF5C 14A00002 */  bnez       $a1, .L8008AF68_5B418
    /* 5B410 8008AF60 00000000 */   nop
    /* 5B414 8008AF64 0007000D */  break      7
  .L8008AF68_5B418:
    /* 5B418 8008AF68 2401FFFF */  addiu      $at, $zero, -0x1
    /* 5B41C 8008AF6C 14A10004 */  bne        $a1, $at, .L8008AF80_5B430
    /* 5B420 8008AF70 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 5B424 8008AF74 14410002 */  bne        $v0, $at, .L8008AF80_5B430
    /* 5B428 8008AF78 00000000 */   nop
    /* 5B42C 8008AF7C 0006000D */  break      6
  .L8008AF80_5B430:
    /* 5B430 8008AF80 01850019 */  multu      $t4, $a1
    /* 5B434 8008AF84 26100008 */  addiu      $s0, $s0, 0x8
    /* 5B438 8008AF88 00006812 */  mflo       $t5
    /* 5B43C 8008AF8C 008D8821 */  addu       $s1, $a0, $t5
    /* 5B440 8008AF90 922E0012 */  lbu        $t6, 0x12($s1)
    /* 5B444 8008AF94 26310008 */  addiu      $s1, $s1, 0x8
    /* 5B448 8008AF98 01C70019 */  multu      $t6, $a3
    /* 5B44C 8008AF9C 00007812 */  mflo       $t7
    /* 5B450 8008AFA0 00CFC021 */  addu       $t8, $a2, $t7
    /* 5B454 8008AFA4 93190000 */  lbu        $t9, 0x0($t8)
    /* 5B458 8008AFA8 A2190006 */  sb         $t9, 0x6($s0)
    /* 5B45C 8008AFAC 9229000A */  lbu        $t1, 0xA($s1)
    /* 5B460 8008AFB0 2419008C */  addiu      $t9, $zero, 0x8C
    /* 5B464 8008AFB4 01270019 */  multu      $t1, $a3
    /* 5B468 8008AFB8 00005012 */  mflo       $t2
    /* 5B46C 8008AFBC 00CA5821 */  addu       $t3, $a2, $t2
    /* 5B470 8008AFC0 916C0001 */  lbu        $t4, 0x1($t3)
    /* 5B474 8008AFC4 A20C0007 */  sb         $t4, 0x7($s0)
    /* 5B478 8008AFC8 922D000A */  lbu        $t5, 0xA($s1)
    /* 5B47C 8008AFCC 01A70019 */  multu      $t5, $a3
    /* 5B480 8008AFD0 00007012 */  mflo       $t6
    /* 5B484 8008AFD4 00CE7821 */  addu       $t7, $a2, $t6
    /* 5B488 8008AFD8 91F80002 */  lbu        $t8, 0x2($t7)
    /* 5B48C 8008AFDC A2190009 */  sb         $t9, 0x9($s0)
    /* 5B490 8008AFE0 A2180008 */  sb         $t8, 0x8($s0)
    /* 5B494 8008AFE4 86290000 */  lh         $t1, 0x0($s1)
    /* 5B498 8008AFE8 A6090000 */  sh         $t1, 0x0($s0)
    /* 5B49C 8008AFEC 862A0002 */  lh         $t2, 0x2($s1)
    /* 5B4A0 8008AFF0 A60A0002 */  sh         $t2, 0x2($s0)
    /* 5B4A4 8008AFF4 862B0004 */  lh         $t3, 0x4($s1)
    /* 5B4A8 8008AFF8 0C000E38 */  jal        func_800038E0_44E0
    /* 5B4AC 8008AFFC A60B0004 */   sh        $t3, 0x4($s0)
    /* 5B4B0 8008B000 822D0006 */  lb         $t5, 0x6($s1)
    /* 5B4B4 8008B004 04410004 */  bgez       $v0, .L8008B018_5B4C8
    /* 5B4B8 8008B008 304C0003 */   andi      $t4, $v0, 0x3
    /* 5B4BC 8008B00C 11800002 */  beqz       $t4, .L8008B018_5B4C8
    /* 5B4C0 8008B010 00000000 */   nop
    /* 5B4C4 8008B014 258CFFFC */  addiu      $t4, $t4, -0x4
  .L8008B018_5B4C8:
    /* 5B4C8 8008B018 018D7021 */  addu       $t6, $t4, $t5
    /* 5B4CC 8008B01C 25CFFFFE */  addiu      $t7, $t6, -0x2
    /* 5B4D0 8008B020 0C000E38 */  jal        func_800038E0_44E0
    /* 5B4D4 8008B024 A20F000A */   sb        $t7, 0xA($s0)
    /* 5B4D8 8008B028 82390007 */  lb         $t9, 0x7($s1)
    /* 5B4DC 8008B02C 04410004 */  bgez       $v0, .L8008B040_5B4F0
    /* 5B4E0 8008B030 30580003 */   andi      $t8, $v0, 0x3
    /* 5B4E4 8008B034 13000002 */  beqz       $t8, .L8008B040_5B4F0
    /* 5B4E8 8008B038 00000000 */   nop
    /* 5B4EC 8008B03C 2718FFFC */  addiu      $t8, $t8, -0x4
  .L8008B040_5B4F0:
    /* 5B4F0 8008B040 03194821 */  addu       $t1, $t8, $t9
    /* 5B4F4 8008B044 252AFFFE */  addiu      $t2, $t1, -0x2
    /* 5B4F8 8008B048 0C000E38 */  jal        func_800038E0_44E0
    /* 5B4FC 8008B04C A20A000B */   sb        $t2, 0xB($s0)
    /* 5B500 8008B050 822C0008 */  lb         $t4, 0x8($s1)
    /* 5B504 8008B054 04410004 */  bgez       $v0, .L8008B068_5B518
    /* 5B508 8008B058 304B0003 */   andi      $t3, $v0, 0x3
    /* 5B50C 8008B05C 11600002 */  beqz       $t3, .L8008B068_5B518
    /* 5B510 8008B060 00000000 */   nop
    /* 5B514 8008B064 256BFFFC */  addiu      $t3, $t3, -0x4
  .L8008B068_5B518:
    /* 5B518 8008B068 016C6821 */  addu       $t5, $t3, $t4
    /* 5B51C 8008B06C 25AEFFFE */  addiu      $t6, $t5, -0x2
    /* 5B520 8008B070 A20E000C */  sb         $t6, 0xC($s0)
    /* 5B524 8008B074 A200000D */  sb         $zero, 0xD($s0)
  .L8008B078_5B528:
    /* 5B528 8008B078 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 5B52C 8008B07C 8FB00014 */  lw         $s0, 0x14($sp)
    /* 5B530 8008B080 8FB10018 */  lw         $s1, 0x18($sp)
    /* 5B534 8008B084 03E00008 */  jr         $ra
    /* 5B538 8008B088 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_8008AEC8_5B378
