nonmatching func_802DBD18_31FE68, 0xB8

glabel func_802DBD18_31FE68
    /* 31FE68 802DBD18 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 31FE6C 802DBD1C AFA40020 */  sw         $a0, 0x20($sp)
    /* 31FE70 802DBD20 93AE0023 */  lbu        $t6, 0x23($sp)
    /* 31FE74 802DBD24 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 31FE78 802DBD28 AFB00018 */  sw         $s0, 0x18($sp)
    /* 31FE7C 802DBD2C 000E7880 */  sll        $t7, $t6, 2
    /* 31FE80 802DBD30 01EE7821 */  addu       $t7, $t7, $t6
    /* 31FE84 802DBD34 000F7900 */  sll        $t7, $t7, 4
    /* 31FE88 802DBD38 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 31FE8C 802DBD3C AFBF001C */  sw         $ra, 0x1C($sp)
    /* 31FE90 802DBD40 01F88021 */  addu       $s0, $t7, $t8
    /* 31FE94 802DBD44 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 31FE98 802DBD48 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 31FE9C 802DBD4C 0C021395 */  jal        func_80084E54_93E04
    /* 31FEA0 802DBD50 02002825 */   or        $a1, $s0, $zero
    /* 31FEA4 802DBD54 28411388 */  slti       $at, $v0, 0x1388
    /* 31FEA8 802DBD58 10200012 */  beqz       $at, .L802DBDA4_31FEF4
    /* 31FEAC 802DBD5C 93A40023 */   lbu       $a0, 0x23($sp)
    /* 31FEB0 802DBD60 0C0213FA */  jal        func_80084FE8_93F98
    /* 31FEB4 802DBD64 34058000 */   ori       $a1, $zero, 0x8000
    /* 31FEB8 802DBD68 1040000E */  beqz       $v0, .L802DBDA4_31FEF4
    /* 31FEBC 802DBD6C 93A40023 */   lbu       $a0, 0x23($sp)
    /* 31FEC0 802DBD70 00002825 */  or         $a1, $zero, $zero
    /* 31FEC4 802DBD74 0C021C73 */  jal        func_800871CC_9617C
    /* 31FEC8 802DBD78 00003025 */   or        $a2, $zero, $zero
    /* 31FECC 802DBD7C 5040000C */  beql       $v0, $zero, .L802DBDB0_31FF00
    /* 31FED0 802DBD80 8602001E */   lh        $v0, 0x1E($s0)
    /* 31FED4 802DBD84 0C000E38 */  jal        func_800038E0_44E0
    /* 31FED8 802DBD88 00000000 */   nop
    /* 31FEDC 802DBD8C 2401000F */  addiu      $at, $zero, 0xF
    /* 31FEE0 802DBD90 0041001A */  div        $zero, $v0, $at
    /* 31FEE4 802DBD94 0000C810 */  mfhi       $t9
    /* 31FEE8 802DBD98 2728000F */  addiu      $t0, $t9, 0xF
    /* 31FEEC 802DBD9C 10000003 */  b          .L802DBDAC_31FEFC
    /* 31FEF0 802DBDA0 A608001E */   sh        $t0, 0x1E($s0)
  .L802DBDA4_31FEF4:
    /* 31FEF4 802DBDA4 0C020037 */  jal        func_800800DC_8F08C
    /* 31FEF8 802DBDA8 93A40023 */   lbu       $a0, 0x23($sp)
  .L802DBDAC_31FEFC:
    /* 31FEFC 802DBDAC 8602001E */  lh         $v0, 0x1E($s0)
  .L802DBDB0_31FF00:
    /* 31FF00 802DBDB0 10400002 */  beqz       $v0, .L802DBDBC_31FF0C
    /* 31FF04 802DBDB4 2449FFFF */   addiu     $t1, $v0, -0x1
    /* 31FF08 802DBDB8 A609001E */  sh         $t1, 0x1E($s0)
  .L802DBDBC_31FF0C:
    /* 31FF0C 802DBDBC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 31FF10 802DBDC0 8FB00018 */  lw         $s0, 0x18($sp)
    /* 31FF14 802DBDC4 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 31FF18 802DBDC8 03E00008 */  jr         $ra
    /* 31FF1C 802DBDCC 00000000 */   nop
endlabel func_802DBD18_31FE68
