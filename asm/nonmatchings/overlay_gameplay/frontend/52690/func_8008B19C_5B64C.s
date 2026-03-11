nonmatching func_8008B19C_5B64C, 0xC8

glabel func_8008B19C_5B64C
    /* 5B64C 8008B19C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 5B650 8008B1A0 308E00FF */  andi       $t6, $a0, 0xFF
    /* 5B654 8008B1A4 AFA40018 */  sw         $a0, 0x18($sp)
    /* 5B658 8008B1A8 29C10096 */  slti       $at, $t6, 0x96
    /* 5B65C 8008B1AC 01C02025 */  or         $a0, $t6, $zero
    /* 5B660 8008B1B0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 5B664 8008B1B4 AFA5001C */  sw         $a1, 0x1C($sp)
    /* 5B668 8008B1B8 10200026 */  beqz       $at, .L8008B254_5B704
    /* 5B66C 8008B1BC 30AF00FF */   andi      $t7, $a1, 0xFF
    /* 5B670 8008B1C0 000EC080 */  sll        $t8, $t6, 2
    /* 5B674 8008B1C4 030EC023 */  subu       $t8, $t8, $t6
    /* 5B678 8008B1C8 3C19800E */  lui        $t9, %hi(D_800DE130)
    /* 5B67C 8008B1CC 2739E130 */  addiu      $t9, $t9, %lo(D_800DE130)
    /* 5B680 8008B1D0 0018C080 */  sll        $t8, $t8, 2
    /* 5B684 8008B1D4 03191021 */  addu       $v0, $t8, $t9
    /* 5B688 8008B1D8 90480000 */  lbu        $t0, 0x0($v0)
    /* 5B68C 8008B1DC 24010007 */  addiu      $at, $zero, 0x7
    /* 5B690 8008B1E0 5501001D */  bnel       $t0, $at, .L8008B258_5B708
    /* 5B694 8008B1E4 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 5B698 8008B1E8 15E00013 */  bnez       $t7, .L8008B238_5B6E8
    /* 5B69C 8008B1EC 01E01825 */   or        $v1, $t7, $zero
    /* 5B6A0 8008B1F0 90490004 */  lbu        $t1, 0x4($v0)
    /* 5B6A4 8008B1F4 29210002 */  slti       $at, $t1, 0x2
    /* 5B6A8 8008B1F8 50200008 */  beql       $at, $zero, .L8008B21C_5B6CC
    /* 5B6AC 8008B1FC 844A0006 */   lh        $t2, 0x6($v0)
    /* 5B6B0 8008B200 0C021031 */  jal        func_800840C4_54574
    /* 5B6B4 8008B204 A3AE001B */   sb        $t6, 0x1B($sp)
    /* 5B6B8 8008B208 0C020EC5 */  jal        func_80083B14_53FC4
    /* 5B6BC 8008B20C 93A4001B */   lbu       $a0, 0x1B($sp)
    /* 5B6C0 8008B210 10000011 */  b          .L8008B258_5B708
    /* 5B6C4 8008B214 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 5B6C8 8008B218 844A0006 */  lh         $t2, 0x6($v0)
  .L8008B21C_5B6CC:
    /* 5B6CC 8008B21C 3C01800E */  lui        $at, %hi(D_800DE851)
    /* 5B6D0 8008B220 000A58C0 */  sll        $t3, $t2, 3
    /* 5B6D4 8008B224 016A5823 */  subu       $t3, $t3, $t2
    /* 5B6D8 8008B228 000B5880 */  sll        $t3, $t3, 2
    /* 5B6DC 8008B22C 002B0821 */  addu       $at, $at, $t3
    /* 5B6E0 8008B230 10000008 */  b          .L8008B254_5B704
    /* 5B6E4 8008B234 A020E851 */   sb        $zero, %lo(D_800DE851)($at)
  .L8008B238_5B6E8:
    /* 5B6E8 8008B238 24010001 */  addiu      $at, $zero, 0x1
    /* 5B6EC 8008B23C 54610006 */  bnel       $v1, $at, .L8008B258_5B708
    /* 5B6F0 8008B240 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 5B6F4 8008B244 0C021031 */  jal        func_800840C4_54574
    /* 5B6F8 8008B248 A3A4001B */   sb        $a0, 0x1B($sp)
    /* 5B6FC 8008B24C 0C020EC5 */  jal        func_80083B14_53FC4
    /* 5B700 8008B250 93A4001B */   lbu       $a0, 0x1B($sp)
  .L8008B254_5B704:
    /* 5B704 8008B254 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8008B258_5B708:
    /* 5B708 8008B258 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 5B70C 8008B25C 03E00008 */  jr         $ra
    /* 5B710 8008B260 00000000 */   nop
endlabel func_8008B19C_5B64C
