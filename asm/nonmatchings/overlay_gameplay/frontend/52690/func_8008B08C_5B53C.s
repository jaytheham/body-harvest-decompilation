nonmatching func_8008B08C_5B53C, 0xBC

glabel func_8008B08C_5B53C
    /* 5B53C 8008B08C 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 5B540 8008B090 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 5B544 8008B094 AFA40028 */  sw         $a0, 0x28($sp)
    /* 5B548 8008B098 AFA5002C */  sw         $a1, 0x2C($sp)
    /* 5B54C 8008B09C AFA60030 */  sw         $a2, 0x30($sp)
    /* 5B550 8008B0A0 AFA70034 */  sw         $a3, 0x34($sp)
    /* 5B554 8008B0A4 0C020E96 */  jal        func_80083A58_53F08
    /* 5B558 8008B0A8 24040007 */   addiu     $a0, $zero, 0x7
    /* 5B55C 8008B0AC 240100FB */  addiu      $at, $zero, 0xFB
    /* 5B560 8008B0B0 10410020 */  beq        $v0, $at, .L8008B134_5B5E4
    /* 5B564 8008B0B4 304400FF */   andi      $a0, $v0, 0xFF
    /* 5B568 8008B0B8 0C020EDF */  jal        func_80083B7C_5402C
    /* 5B56C 8008B0BC A3A4001F */   sb        $a0, 0x1F($sp)
    /* 5B570 8008B0C0 2401FFFD */  addiu      $at, $zero, -0x3
    /* 5B574 8008B0C4 14410005 */  bne        $v0, $at, .L8008B0DC_5B58C
    /* 5B578 8008B0C8 93A4001F */   lbu       $a0, 0x1F($sp)
    /* 5B57C 8008B0CC 0C020EC5 */  jal        func_80083B14_53FC4
    /* 5B580 8008B0D0 00000000 */   nop
    /* 5B584 8008B0D4 10000018 */  b          .L8008B138_5B5E8
    /* 5B588 8008B0D8 240200FB */   addiu     $v0, $zero, 0xFB
  .L8008B0DC_5B58C:
    /* 5B58C 8008B0DC 000270C0 */  sll        $t6, $v0, 3
    /* 5B590 8008B0E0 01C27023 */  subu       $t6, $t6, $v0
    /* 5B594 8008B0E4 3C0F800E */  lui        $t7, %hi(D_800DE840)
    /* 5B598 8008B0E8 25EFE840 */  addiu      $t7, $t7, %lo(D_800DE840)
    /* 5B59C 8008B0EC 000E7080 */  sll        $t6, $t6, 2
    /* 5B5A0 8008B0F0 01CF1821 */  addu       $v1, $t6, $t7
    /* 5B5A4 8008B0F4 87B8002A */  lh         $t8, 0x2A($sp)
    /* 5B5A8 8008B0F8 87B9002E */  lh         $t9, 0x2E($sp)
    /* 5B5AC 8008B0FC 87A80032 */  lh         $t0, 0x32($sp)
    /* 5B5B0 8008B100 83A90037 */  lb         $t1, 0x37($sp)
    /* 5B5B4 8008B104 83AA003B */  lb         $t2, 0x3B($sp)
    /* 5B5B8 8008B108 83AB003F */  lb         $t3, 0x3F($sp)
    /* 5B5BC 8008B10C 93AD0043 */  lbu        $t5, 0x43($sp)
    /* 5B5C0 8008B110 240C0001 */  addiu      $t4, $zero, 0x1
    /* 5B5C4 8008B114 A06C0011 */  sb         $t4, 0x11($v1)
    /* 5B5C8 8008B118 A4780008 */  sh         $t8, 0x8($v1)
    /* 5B5CC 8008B11C A479000A */  sh         $t9, 0xA($v1)
    /* 5B5D0 8008B120 A468000C */  sh         $t0, 0xC($v1)
    /* 5B5D4 8008B124 A069000E */  sb         $t1, 0xE($v1)
    /* 5B5D8 8008B128 A06A000F */  sb         $t2, 0xF($v1)
    /* 5B5DC 8008B12C A06B0010 */  sb         $t3, 0x10($v1)
    /* 5B5E0 8008B130 A06D0012 */  sb         $t5, 0x12($v1)
  .L8008B134_5B5E4:
    /* 5B5E4 8008B134 00801025 */  or         $v0, $a0, $zero
  .L8008B138_5B5E8:
    /* 5B5E8 8008B138 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 5B5EC 8008B13C 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 5B5F0 8008B140 03E00008 */  jr         $ra
    /* 5B5F4 8008B144 00000000 */   nop
endlabel func_8008B08C_5B53C
