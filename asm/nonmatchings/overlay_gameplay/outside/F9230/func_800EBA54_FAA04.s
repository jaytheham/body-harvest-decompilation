nonmatching func_800EBA54_FAA04, 0x240

glabel func_800EBA54_FAA04
    /* FAA04 800EBA54 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* FAA08 800EBA58 24010005 */  addiu      $at, $zero, 0x5
    /* FAA0C 800EBA5C AFBF0024 */  sw         $ra, 0x24($sp)
    /* FAA10 800EBA60 AFB00020 */  sw         $s0, 0x20($sp)
    /* FAA14 800EBA64 14A10011 */  bne        $a1, $at, .L800EBAAC_FAA5C
    /* FAA18 800EBA68 00803825 */   or        $a3, $a0, $zero
    /* FAA1C 800EBA6C 8CCE0018 */  lw         $t6, 0x18($a2)
    /* FAA20 800EBA70 24010003 */  addiu      $at, $zero, 0x3
    /* FAA24 800EBA74 15C10082 */  bne        $t6, $at, .L800EBC80_FAC30
    /* FAA28 800EBA78 3C013F80 */   lui       $at, (0x3F800000 >> 16)
    /* FAA2C 800EBA7C 44812000 */  mtc1       $at, $f4
    /* FAA30 800EBA80 C4C6001C */  lwc1       $f6, 0x1C($a2)
    /* FAA34 800EBA84 24060032 */  addiu      $a2, $zero, 0x32
    /* FAA38 800EBA88 46062032 */  c.eq.s     $f4, $f6
    /* FAA3C 800EBA8C 00000000 */  nop
    /* FAA40 800EBA90 4502007C */  bc1fl      .L800EBC84_FAC34
    /* FAA44 800EBA94 8FBF0024 */   lw        $ra, 0x24($sp)
    /* FAA48 800EBA98 84840000 */  lh         $a0, 0x0($a0)
    /* FAA4C 800EBA9C 0C0383A7 */  jal        func_800E0E9C_EFE4C
    /* FAA50 800EBAA0 84E50004 */   lh        $a1, 0x4($a3)
    /* FAA54 800EBAA4 10000077 */  b          .L800EBC84_FAC34
    /* FAA58 800EBAA8 8FBF0024 */   lw        $ra, 0x24($sp)
  .L800EBAAC_FAA5C:
    /* FAA5C 800EBAAC 24010030 */  addiu      $at, $zero, 0x30
    /* FAA60 800EBAB0 54A1001A */  bnel       $a1, $at, .L800EBB1C_FAACC
    /* FAA64 800EBAB4 2401002A */   addiu     $at, $zero, 0x2A
    /* FAA68 800EBAB8 8CCF0018 */  lw         $t7, 0x18($a2)
    /* FAA6C 800EBABC 24010001 */  addiu      $at, $zero, 0x1
    /* FAA70 800EBAC0 15E1006F */  bne        $t7, $at, .L800EBC80_FAC30
    /* FAA74 800EBAC4 3C013F80 */   lui       $at, (0x3F800000 >> 16)
    /* FAA78 800EBAC8 44814000 */  mtc1       $at, $f8
    /* FAA7C 800EBACC C4CA001C */  lwc1       $f10, 0x1C($a2)
    /* FAA80 800EBAD0 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* FAA84 800EBAD4 2405008D */  addiu      $a1, $zero, 0x8D
    /* FAA88 800EBAD8 460A4032 */  c.eq.s     $f8, $f10
    /* FAA8C 800EBADC 00000000 */  nop
    /* FAA90 800EBAE0 45020068 */  bc1fl      .L800EBC84_FAC34
    /* FAA94 800EBAE4 8FBF0024 */   lw        $ra, 0x24($sp)
    /* FAA98 800EBAE8 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* FAA9C 800EBAEC 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* FAAA0 800EBAF0 44818000 */  mtc1       $at, $f16
    /* FAAA4 800EBAF4 86180004 */  lh         $t8, 0x4($s0)
    /* FAAA8 800EBAF8 86060000 */  lh         $a2, 0x0($s0)
    /* FAAAC 800EBAFC 86070002 */  lh         $a3, 0x2($s0)
    /* FAAB0 800EBB00 02002025 */  or         $a0, $s0, $zero
    /* FAAB4 800EBB04 E7B00014 */  swc1       $f16, 0x14($sp)
    /* FAAB8 800EBB08 0C04DC6E */  jal        func_801371B8_146168
    /* FAABC 800EBB0C AFB80010 */   sw        $t8, 0x10($sp)
    /* FAAC0 800EBB10 1000005C */  b          .L800EBC84_FAC34
    /* FAAC4 800EBB14 8FBF0024 */   lw        $ra, 0x24($sp)
    /* FAAC8 800EBB18 2401002A */  addiu      $at, $zero, 0x2A
  .L800EBB1C_FAACC:
    /* FAACC 800EBB1C 14A10019 */  bne        $a1, $at, .L800EBB84_FAB34
    /* FAAD0 800EBB20 00000000 */   nop
    /* FAAD4 800EBB24 8CD90018 */  lw         $t9, 0x18($a2)
    /* FAAD8 800EBB28 24010002 */  addiu      $at, $zero, 0x2
    /* FAADC 800EBB2C 17210054 */  bne        $t9, $at, .L800EBC80_FAC30
    /* FAAE0 800EBB30 3C013F80 */   lui       $at, (0x3F800000 >> 16)
    /* FAAE4 800EBB34 44819000 */  mtc1       $at, $f18
    /* FAAE8 800EBB38 C4C4001C */  lwc1       $f4, 0x1C($a2)
    /* FAAEC 800EBB3C 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* FAAF0 800EBB40 2405008D */  addiu      $a1, $zero, 0x8D
    /* FAAF4 800EBB44 46049032 */  c.eq.s     $f18, $f4
    /* FAAF8 800EBB48 00000000 */  nop
    /* FAAFC 800EBB4C 4502004D */  bc1fl      .L800EBC84_FAC34
    /* FAB00 800EBB50 8FBF0024 */   lw        $ra, 0x24($sp)
    /* FAB04 800EBB54 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* FAB08 800EBB58 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* FAB0C 800EBB5C 44813000 */  mtc1       $at, $f6
    /* FAB10 800EBB60 86080004 */  lh         $t0, 0x4($s0)
    /* FAB14 800EBB64 86060000 */  lh         $a2, 0x0($s0)
    /* FAB18 800EBB68 86070002 */  lh         $a3, 0x2($s0)
    /* FAB1C 800EBB6C 02002025 */  or         $a0, $s0, $zero
    /* FAB20 800EBB70 E7A60014 */  swc1       $f6, 0x14($sp)
    /* FAB24 800EBB74 0C04DC6E */  jal        func_801371B8_146168
    /* FAB28 800EBB78 AFA80010 */   sw        $t0, 0x10($sp)
    /* FAB2C 800EBB7C 10000041 */  b          .L800EBC84_FAC34
    /* FAB30 800EBB80 8FBF0024 */   lw        $ra, 0x24($sp)
  .L800EBB84_FAB34:
    /* FAB34 800EBB84 54A0003F */  bnel       $a1, $zero, .L800EBC84_FAC34
    /* FAB38 800EBB88 8FBF0024 */   lw        $ra, 0x24($sp)
    /* FAB3C 800EBB8C 8CC20018 */  lw         $v0, 0x18($a2)
    /* FAB40 800EBB90 24010003 */  addiu      $at, $zero, 0x3
    /* FAB44 800EBB94 10410002 */  beq        $v0, $at, .L800EBBA0_FAB50
    /* FAB48 800EBB98 24010008 */   addiu     $at, $zero, 0x8
    /* FAB4C 800EBB9C 14410038 */  bne        $v0, $at, .L800EBC80_FAC30
  .L800EBBA0_FAB50:
    /* FAB50 800EBBA0 3C013F80 */   lui       $at, (0x3F800000 >> 16)
    /* FAB54 800EBBA4 44814000 */  mtc1       $at, $f8
    /* FAB58 800EBBA8 C4CA001C */  lwc1       $f10, 0x1C($a2)
    /* FAB5C 800EBBAC 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* FAB60 800EBBB0 460A4032 */  c.eq.s     $f8, $f10
    /* FAB64 800EBBB4 00000000 */  nop
    /* FAB68 800EBBB8 45020032 */  bc1fl      .L800EBC84_FAC34
    /* FAB6C 800EBBBC 8FBF0024 */   lw        $ra, 0x24($sp)
    /* FAB70 800EBBC0 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* FAB74 800EBBC4 3C098022 */  lui        $t1, %hi(D_80222A70)
    /* FAB78 800EBBC8 8D292A70 */  lw         $t1, %lo(D_80222A70)($t1)
    /* FAB7C 800EBBCC 86070002 */  lh         $a3, 0x2($s0)
    /* FAB80 800EBBD0 240503E7 */  addiu      $a1, $zero, 0x3E7
    /* FAB84 800EBBD4 02002025 */  or         $a0, $s0, $zero
    /* FAB88 800EBBD8 00E9082A */  slt        $at, $a3, $t1
    /* FAB8C 800EBBDC 50200022 */  beql       $at, $zero, .L800EBC68_FAC18
    /* FAB90 800EBBE0 3C01BF80 */   lui       $at, (0xBF800000 >> 16)
    /* FAB94 800EBBE4 0C000E38 */  jal        func_800038E0_44E0
    /* FAB98 800EBBE8 00000000 */   nop
    /* FAB9C 800EBBEC 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* FABA0 800EBBF0 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* FABA4 800EBBF4 30450001 */  andi       $a1, $v0, 0x1
    /* FABA8 800EBBF8 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* FABAC 800EBBFC 44818000 */  mtc1       $at, $f16
    /* FABB0 800EBC00 860C0004 */  lh         $t4, 0x4($s0)
    /* FABB4 800EBC04 24A500A0 */  addiu      $a1, $a1, 0xA0
    /* FABB8 800EBC08 00055400 */  sll        $t2, $a1, 16
    /* FABBC 800EBC0C 86060000 */  lh         $a2, 0x0($s0)
    /* FABC0 800EBC10 86070002 */  lh         $a3, 0x2($s0)
    /* FABC4 800EBC14 000A2C03 */  sra        $a1, $t2, 16
    /* FABC8 800EBC18 02002025 */  or         $a0, $s0, $zero
    /* FABCC 800EBC1C E7B00014 */  swc1       $f16, 0x14($sp)
    /* FABD0 800EBC20 0C04DC6E */  jal        func_801371B8_146168
    /* FABD4 800EBC24 AFAC0010 */   sw        $t4, 0x10($sp)
    /* FABD8 800EBC28 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* FABDC 800EBC2C 3C058022 */  lui        $a1, %hi(D_80222A70)
    /* FABE0 800EBC30 8CA52A70 */  lw         $a1, %lo(D_80222A70)($a1)
    /* FABE4 800EBC34 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* FABE8 800EBC38 240F0001 */  addiu      $t7, $zero, 0x1
    /* FABEC 800EBC3C 24A50003 */  addiu      $a1, $a1, 0x3
    /* FABF0 800EBC40 00056C00 */  sll        $t5, $a1, 16
    /* FABF4 800EBC44 86040000 */  lh         $a0, 0x0($s0)
    /* FABF8 800EBC48 86060004 */  lh         $a2, 0x4($s0)
    /* FABFC 800EBC4C AFAF0010 */  sw         $t7, 0x10($sp)
    /* FAC00 800EBC50 000D2C03 */  sra        $a1, $t5, 16
    /* FAC04 800EBC54 0C037BCB */  jal        func_800DEF2C_EDEDC
    /* FAC08 800EBC58 2407003C */   addiu     $a3, $zero, 0x3C
    /* FAC0C 800EBC5C 10000009 */  b          .L800EBC84_FAC34
    /* FAC10 800EBC60 8FBF0024 */   lw        $ra, 0x24($sp)
    /* FAC14 800EBC64 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
  .L800EBC68_FAC18:
    /* FAC18 800EBC68 44819000 */  mtc1       $at, $f18
    /* FAC1C 800EBC6C 86180004 */  lh         $t8, 0x4($s0)
    /* FAC20 800EBC70 86060000 */  lh         $a2, 0x0($s0)
    /* FAC24 800EBC74 E7B20014 */  swc1       $f18, 0x14($sp)
    /* FAC28 800EBC78 0C04DC6E */  jal        func_801371B8_146168
    /* FAC2C 800EBC7C AFB80010 */   sw        $t8, 0x10($sp)
  .L800EBC80_FAC30:
    /* FAC30 800EBC80 8FBF0024 */  lw         $ra, 0x24($sp)
  .L800EBC84_FAC34:
    /* FAC34 800EBC84 8FB00020 */  lw         $s0, 0x20($sp)
    /* FAC38 800EBC88 27BD0028 */  addiu      $sp, $sp, 0x28
    /* FAC3C 800EBC8C 03E00008 */  jr         $ra
    /* FAC40 800EBC90 00000000 */   nop
endlabel func_800EBA54_FAA04
