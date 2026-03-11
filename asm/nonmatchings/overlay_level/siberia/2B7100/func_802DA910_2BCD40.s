nonmatching func_802DA910_2BCD40, 0x110

glabel func_802DA910_2BCD40
    /* 2BCD40 802DA910 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2BCD44 802DA914 000E7880 */  sll        $t7, $t6, 2
    /* 2BCD48 802DA918 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BCD4C 802DA91C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BCD50 802DA920 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BCD54 802DA924 000F7900 */  sll        $t7, $t7, 4
    /* 2BCD58 802DA928 01F81821 */  addu       $v1, $t7, $t8
    /* 2BCD5C 802DA92C 8C790020 */  lw         $t9, 0x20($v1)
    /* 2BCD60 802DA930 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 2BCD64 802DA934 AFA40028 */  sw         $a0, 0x28($sp)
    /* 2BCD68 802DA938 33280600 */  andi       $t0, $t9, 0x600
    /* 2BCD6C 802DA93C 01C02025 */  or         $a0, $t6, $zero
    /* 2BCD70 802DA940 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2BCD74 802DA944 9067001A */  lbu        $a3, 0x1A($v1)
    /* 2BCD78 802DA948 15000002 */  bnez       $t0, .L802DA954_2BCD84
    /* 2BCD7C 802DA94C 24060001 */   addiu     $a2, $zero, 0x1
    /* 2BCD80 802DA950 24060004 */  addiu      $a2, $zero, 0x4
  .L802DA954_2BCD84:
    /* 2BCD84 802DA954 2465000E */  addiu      $a1, $v1, 0xE
    /* 2BCD88 802DA958 AFA30018 */  sw         $v1, 0x18($sp)
    /* 2BCD8C 802DA95C AFA60020 */  sw         $a2, 0x20($sp)
    /* 2BCD90 802DA960 0C02023C */  jal        func_800808F0_8F8A0
    /* 2BCD94 802DA964 A3A70027 */   sb        $a3, 0x27($sp)
    /* 2BCD98 802DA968 8FA30018 */  lw         $v1, 0x18($sp)
    /* 2BCD9C 802DA96C 93A70027 */  lbu        $a3, 0x27($sp)
    /* 2BCDA0 802DA970 8FA60020 */  lw         $a2, 0x20($sp)
    /* 2BCDA4 802DA974 9069004B */  lbu        $t1, 0x4B($v1)
    /* 2BCDA8 802DA978 00077880 */  sll        $t7, $a3, 2
    /* 2BCDAC 802DA97C 01E77823 */  subu       $t7, $t7, $a3
    /* 2BCDB0 802DA980 1520000E */  bnez       $t1, .L802DA9BC_2BCDEC
    /* 2BCDB4 802DA984 000F7880 */   sll       $t7, $t7, 2
    /* 2BCDB8 802DA988 00075080 */  sll        $t2, $a3, 2
    /* 2BCDBC 802DA98C 01475023 */  subu       $t2, $t2, $a3
    /* 2BCDC0 802DA990 000A5080 */  sll        $t2, $t2, 2
    /* 2BCDC4 802DA994 01475021 */  addu       $t2, $t2, $a3
    /* 2BCDC8 802DA998 3C0B8025 */  lui        $t3, %hi(alienSpecs)
    /* 2BCDCC 802DA99C 256B6680 */  addiu      $t3, $t3, %lo(alienSpecs)
    /* 2BCDD0 802DA9A0 000A50C0 */  sll        $t2, $t2, 3
    /* 2BCDD4 802DA9A4 014B1021 */  addu       $v0, $t2, $t3
    /* 2BCDD8 802DA9A8 84450040 */  lh         $a1, 0x40($v0)
    /* 2BCDDC 802DA9AC 00056043 */  sra        $t4, $a1, 1
    /* 2BCDE0 802DA9B0 000C6C00 */  sll        $t5, $t4, 16
    /* 2BCDE4 802DA9B4 10000007 */  b          .L802DA9D4_2BCE04
    /* 2BCDE8 802DA9B8 000D2C03 */   sra       $a1, $t5, 16
  .L802DA9BC_2BCDEC:
    /* 2BCDEC 802DA9BC 01E77821 */  addu       $t7, $t7, $a3
    /* 2BCDF0 802DA9C0 3C188025 */  lui        $t8, %hi(alienSpecs)
    /* 2BCDF4 802DA9C4 27186680 */  addiu      $t8, $t8, %lo(alienSpecs)
    /* 2BCDF8 802DA9C8 000F78C0 */  sll        $t7, $t7, 3
    /* 2BCDFC 802DA9CC 01F81021 */  addu       $v0, $t7, $t8
    /* 2BCE00 802DA9D0 84450040 */  lh         $a1, 0x40($v0)
  .L802DA9D4_2BCE04:
    /* 2BCE04 802DA9D4 84640012 */  lh         $a0, 0x12($v1)
    /* 2BCE08 802DA9D8 0085082A */  slt        $at, $a0, $a1
    /* 2BCE0C 802DA9DC 50200008 */  beql       $at, $zero, .L802DAA00_2BCE30
    /* 2BCE10 802DA9E0 844A003E */   lh        $t2, 0x3E($v0)
    /* 2BCE14 802DA9E4 8459003E */  lh         $t9, 0x3E($v0)
    /* 2BCE18 802DA9E8 03260019 */  multu      $t9, $a2
    /* 2BCE1C 802DA9EC 00004012 */  mflo       $t0
    /* 2BCE20 802DA9F0 00884821 */  addu       $t1, $a0, $t0
    /* 2BCE24 802DA9F4 10000006 */  b          .L802DAA10_2BCE40
    /* 2BCE28 802DA9F8 A4690012 */   sh        $t1, 0x12($v1)
    /* 2BCE2C 802DA9FC 844A003E */  lh         $t2, 0x3E($v0)
  .L802DAA00_2BCE30:
    /* 2BCE30 802DAA00 01460019 */  multu      $t2, $a2
    /* 2BCE34 802DAA04 00005812 */  mflo       $t3
    /* 2BCE38 802DAA08 008B6023 */  subu       $t4, $a0, $t3
    /* 2BCE3C 802DAA0C A46C0012 */  sh         $t4, 0x12($v1)
  .L802DAA10_2BCE40:
    /* 2BCE40 802DAA10 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2BCE44 802DAA14 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 2BCE48 802DAA18 03E00008 */  jr         $ra
    /* 2BCE4C 802DAA1C 00000000 */   nop
endlabel func_802DA910_2BCD40
