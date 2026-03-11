nonmatching func_800CDA98_DCA48, 0xA8

glabel func_800CDA98_DCA48
    /* DCA48 800CDA98 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* DCA4C 800CDA9C AFBF001C */  sw         $ra, 0x1C($sp)
    /* DCA50 800CDAA0 AFA40030 */  sw         $a0, 0x30($sp)
    /* DCA54 800CDAA4 AFA50034 */  sw         $a1, 0x34($sp)
    /* DCA58 800CDAA8 AFA60038 */  sw         $a2, 0x38($sp)
    /* DCA5C 800CDAAC AFA7003C */  sw         $a3, 0x3C($sp)
    /* DCA60 800CDAB0 24050001 */  addiu      $a1, $zero, 0x1
    /* DCA64 800CDAB4 0C0305ED */  jal        func_800C17B4_D0764
    /* DCA68 800CDAB8 24040009 */   addiu     $a0, $zero, 0x9
    /* DCA6C 800CDABC 00024400 */  sll        $t0, $v0, 16
    /* DCA70 800CDAC0 2401FFFD */  addiu      $at, $zero, -0x3
    /* DCA74 800CDAC4 00087403 */  sra        $t6, $t0, 16
    /* DCA78 800CDAC8 87A40032 */  lh         $a0, 0x32($sp)
    /* DCA7C 800CDACC 87A6003A */  lh         $a2, 0x3A($sp)
    /* DCA80 800CDAD0 10410017 */  beq        $v0, $at, .L800CDB30_DCAE0
    /* DCA84 800CDAD4 87A90036 */   lh        $t1, 0x36($sp)
    /* DCA88 800CDAD8 000E78C0 */  sll        $t7, $t6, 3
    /* DCA8C 800CDADC 01EE7823 */  subu       $t7, $t7, $t6
    /* DCA90 800CDAE0 3C188015 */  lui        $t8, %hi(D_80154318)
    /* DCA94 800CDAE4 27184318 */  addiu      $t8, $t8, %lo(D_80154318)
    /* DCA98 800CDAE8 000F7880 */  sll        $t7, $t7, 2
    /* DCA9C 800CDAEC 01F81821 */  addu       $v1, $t7, $t8
    /* DCAA0 800CDAF0 87B9003E */  lh         $t9, 0x3E($sp)
    /* DCAA4 800CDAF4 25250012 */  addiu      $a1, $t1, 0x12
    /* DCAA8 800CDAF8 00055400 */  sll        $t2, $a1, 16
    /* DCAAC 800CDAFC 240C0019 */  addiu      $t4, $zero, 0x19
    /* DCAB0 800CDB00 A4640008 */  sh         $a0, 0x8($v1)
    /* DCAB4 800CDB04 A469000A */  sh         $t1, 0xA($v1)
    /* DCAB8 800CDB08 A466000C */  sh         $a2, 0xC($v1)
    /* DCABC 800CDB0C A0600011 */  sb         $zero, 0x11($v1)
    /* DCAC0 800CDB10 AFAC0010 */  sw         $t4, 0x10($sp)
    /* DCAC4 800CDB14 000A2C03 */  sra        $a1, $t2, 16
    /* DCAC8 800CDB18 AFA30024 */  sw         $v1, 0x24($sp)
    /* DCACC 800CDB1C 24070008 */  addiu      $a3, $zero, 0x8
    /* DCAD0 800CDB20 0C0376D8 */  jal        func_800DDB60_ECB10
    /* DCAD4 800CDB24 A479000E */   sh        $t9, 0xE($v1)
    /* DCAD8 800CDB28 8FA30024 */  lw         $v1, 0x24($sp)
    /* DCADC 800CDB2C A0620010 */  sb         $v0, 0x10($v1)
  .L800CDB30_DCAE0:
    /* DCAE0 800CDB30 8FBF001C */  lw         $ra, 0x1C($sp)
    /* DCAE4 800CDB34 27BD0030 */  addiu      $sp, $sp, 0x30
    /* DCAE8 800CDB38 03E00008 */  jr         $ra
    /* DCAEC 800CDB3C 00000000 */   nop
endlabel func_800CDA98_DCA48
