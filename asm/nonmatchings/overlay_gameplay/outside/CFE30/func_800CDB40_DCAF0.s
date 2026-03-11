nonmatching func_800CDB40_DCAF0, 0xB4

glabel func_800CDB40_DCAF0
    /* DCAF0 800CDB40 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* DCAF4 800CDB44 AFBF001C */  sw         $ra, 0x1C($sp)
    /* DCAF8 800CDB48 AFA40030 */  sw         $a0, 0x30($sp)
    /* DCAFC 800CDB4C AFA50034 */  sw         $a1, 0x34($sp)
    /* DCB00 800CDB50 AFA60038 */  sw         $a2, 0x38($sp)
    /* DCB04 800CDB54 24050001 */  addiu      $a1, $zero, 0x1
    /* DCB08 800CDB58 0C0305ED */  jal        func_800C17B4_D0764
    /* DCB0C 800CDB5C 24040009 */   addiu     $a0, $zero, 0x9
    /* DCB10 800CDB60 00024400 */  sll        $t0, $v0, 16
    /* DCB14 800CDB64 00087403 */  sra        $t6, $t0, 16
    /* DCB18 800CDB68 2401FFFD */  addiu      $at, $zero, -0x3
    /* DCB1C 800CDB6C 01C04025 */  or         $t0, $t6, $zero
    /* DCB20 800CDB70 87A40032 */  lh         $a0, 0x32($sp)
    /* DCB24 800CDB74 87A6003A */  lh         $a2, 0x3A($sp)
    /* DCB28 800CDB78 10410019 */  beq        $v0, $at, .L800CDBE0_DCB90
    /* DCB2C 800CDB7C 87A90036 */   lh        $t1, 0x36($sp)
    /* DCB30 800CDB80 000E78C0 */  sll        $t7, $t6, 3
    /* DCB34 800CDB84 01EE7823 */  subu       $t7, $t7, $t6
    /* DCB38 800CDB88 3C188015 */  lui        $t8, %hi(D_80154318)
    /* DCB3C 800CDB8C 27184318 */  addiu      $t8, $t8, %lo(D_80154318)
    /* DCB40 800CDB90 000F7880 */  sll        $t7, $t7, 2
    /* DCB44 800CDB94 01F81821 */  addu       $v1, $t7, $t8
    /* DCB48 800CDB98 2525FFE2 */  addiu      $a1, $t1, -0x1E
    /* DCB4C 800CDB9C 24190001 */  addiu      $t9, $zero, 0x1
    /* DCB50 800CDBA0 00055400 */  sll        $t2, $a1, 16
    /* DCB54 800CDBA4 240C0019 */  addiu      $t4, $zero, 0x19
    /* DCB58 800CDBA8 A4640008 */  sh         $a0, 0x8($v1)
    /* DCB5C 800CDBAC A469000A */  sh         $t1, 0xA($v1)
    /* DCB60 800CDBB0 A466000C */  sh         $a2, 0xC($v1)
    /* DCB64 800CDBB4 A460000E */  sh         $zero, 0xE($v1)
    /* DCB68 800CDBB8 A0790011 */  sb         $t9, 0x11($v1)
    /* DCB6C 800CDBBC AFAC0010 */  sw         $t4, 0x10($sp)
    /* DCB70 800CDBC0 000A2C03 */  sra        $a1, $t2, 16
    /* DCB74 800CDBC4 AFA30024 */  sw         $v1, 0x24($sp)
    /* DCB78 800CDBC8 24070008 */  addiu      $a3, $zero, 0x8
    /* DCB7C 800CDBCC 0C0376D8 */  jal        func_800DDB60_ECB10
    /* DCB80 800CDBD0 A7AE002A */   sh        $t6, 0x2A($sp)
    /* DCB84 800CDBD4 8FA30024 */  lw         $v1, 0x24($sp)
    /* DCB88 800CDBD8 87A8002A */  lh         $t0, 0x2A($sp)
    /* DCB8C 800CDBDC A0620010 */  sb         $v0, 0x10($v1)
  .L800CDBE0_DCB90:
    /* DCB90 800CDBE0 8FBF001C */  lw         $ra, 0x1C($sp)
    /* DCB94 800CDBE4 27BD0030 */  addiu      $sp, $sp, 0x30
    /* DCB98 800CDBE8 01001025 */  or         $v0, $t0, $zero
    /* DCB9C 800CDBEC 03E00008 */  jr         $ra
    /* DCBA0 800CDBF0 00000000 */   nop
endlabel func_800CDB40_DCAF0
