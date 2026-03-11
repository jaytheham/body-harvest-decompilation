nonmatching func_800DEA08_ED9B8, 0xD4

glabel func_800DEA08_ED9B8
    /* ED9B8 800DEA08 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* ED9BC 800DEA0C AFA7002C */  sw         $a3, 0x2C($sp)
    /* ED9C0 800DEA10 87AA002E */  lh         $t2, 0x2E($sp)
    /* ED9C4 800DEA14 AFBF001C */  sw         $ra, 0x1C($sp)
    /* ED9C8 800DEA18 AFA40020 */  sw         $a0, 0x20($sp)
    /* ED9CC 800DEA1C AFA50024 */  sw         $a1, 0x24($sp)
    /* ED9D0 800DEA20 AFA60028 */  sw         $a2, 0x28($sp)
    /* ED9D4 800DEA24 00047400 */  sll        $t6, $a0, 16
    /* ED9D8 800DEA28 0005C400 */  sll        $t8, $a1, 16
    /* ED9DC 800DEA2C 00064400 */  sll        $t0, $a2, 16
    /* ED9E0 800DEA30 00083403 */  sra        $a2, $t0, 16
    /* ED9E4 800DEA34 00182C03 */  sra        $a1, $t8, 16
    /* ED9E8 800DEA38 000E2403 */  sra        $a0, $t6, 16
    /* ED9EC 800DEA3C 24070003 */  addiu      $a3, $zero, 0x3
    /* ED9F0 800DEA40 0C0376D8 */  jal        func_800DDB60_ECB10
    /* ED9F4 800DEA44 AFAA0010 */   sw        $t2, 0x10($sp)
    /* ED9F8 800DEA48 240100FF */  addiu      $at, $zero, 0xFF
    /* ED9FC 800DEA4C 1041001F */  beq        $v0, $at, .L800DEACC_EDA7C
    /* EDA00 800DEA50 93A4003F */   lbu       $a0, 0x3F($sp)
    /* EDA04 800DEA54 93AD003B */  lbu        $t5, 0x3B($sp)
    /* EDA08 800DEA58 00025880 */  sll        $t3, $v0, 2
    /* EDA0C 800DEA5C 01625821 */  addu       $t3, $t3, $v0
    /* EDA10 800DEA60 008D001A */  div        $zero, $a0, $t5
    /* EDA14 800DEA64 3C0C8015 */  lui        $t4, %hi(D_80156EF0)
    /* EDA18 800DEA68 258C6EF0 */  addiu      $t4, $t4, %lo(D_80156EF0)
    /* EDA1C 800DEA6C 000B5880 */  sll        $t3, $t3, 2
    /* EDA20 800DEA70 016C1821 */  addu       $v1, $t3, $t4
    /* EDA24 800DEA74 93AF0043 */  lbu        $t7, 0x43($sp)
    /* EDA28 800DEA78 93B80047 */  lbu        $t8, 0x47($sp)
    /* EDA2C 800DEA7C 93B9004B */  lbu        $t9, 0x4B($sp)
    /* EDA30 800DEA80 83A80033 */  lb         $t0, 0x33($sp)
    /* EDA34 800DEA84 83A90037 */  lb         $t1, 0x37($sp)
    /* EDA38 800DEA88 00007012 */  mflo       $t6
    /* EDA3C 800DEA8C A064000D */  sb         $a0, 0xD($v1)
    /* EDA40 800DEA90 A06E0012 */  sb         $t6, 0x12($v1)
    /* EDA44 800DEA94 15A00002 */  bnez       $t5, .L800DEAA0_EDA50
    /* EDA48 800DEA98 00000000 */   nop
    /* EDA4C 800DEA9C 0007000D */  break      7
  .L800DEAA0_EDA50:
    /* EDA50 800DEAA0 2401FFFF */  addiu      $at, $zero, -0x1
    /* EDA54 800DEAA4 15A10004 */  bne        $t5, $at, .L800DEAB8_EDA68
    /* EDA58 800DEAA8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EDA5C 800DEAAC 14810002 */  bne        $a0, $at, .L800DEAB8_EDA68
    /* EDA60 800DEAB0 00000000 */   nop
    /* EDA64 800DEAB4 0006000D */  break      6
  .L800DEAB8_EDA68:
    /* EDA68 800DEAB8 A06F0006 */  sb         $t7, 0x6($v1)
    /* EDA6C 800DEABC A0780007 */  sb         $t8, 0x7($v1)
    /* EDA70 800DEAC0 A0790008 */  sb         $t9, 0x8($v1)
    /* EDA74 800DEAC4 A0680010 */  sb         $t0, 0x10($v1)
    /* EDA78 800DEAC8 A0690011 */  sb         $t1, 0x11($v1)
  .L800DEACC_EDA7C:
    /* EDA7C 800DEACC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* EDA80 800DEAD0 27BD0020 */  addiu      $sp, $sp, 0x20
    /* EDA84 800DEAD4 03E00008 */  jr         $ra
    /* EDA88 800DEAD8 00000000 */   nop
endlabel func_800DEA08_ED9B8
