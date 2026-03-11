nonmatching func_800EFC28_FEBD8, 0x98

glabel func_800EFC28_FEBD8
    /* FEBD8 800EFC28 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* FEBDC 800EFC2C AFBF0014 */  sw         $ra, 0x14($sp)
    /* FEBE0 800EFC30 AFA40018 */  sw         $a0, 0x18($sp)
    /* FEBE4 800EFC34 0C01E55B */  jal        func_8007956C_8851C
    /* FEBE8 800EFC38 24040012 */   addiu     $a0, $zero, 0x12
    /* FEBEC 800EFC3C 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* FEBF0 800EFC40 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* FEBF4 800EFC44 00027400 */  sll        $t6, $v0, 16
    /* FEBF8 800EFC48 000E7C03 */  sra        $t7, $t6, 16
    /* FEBFC 800EFC4C 000FC080 */  sll        $t8, $t7, 2
    /* FEC00 800EFC50 84680000 */  lh         $t0, 0x0($v1)
    /* FEC04 800EFC54 030FC021 */  addu       $t8, $t8, $t7
    /* FEC08 800EFC58 3C198005 */  lui        $t9, %hi(alienInstances)
    /* FEC0C 800EFC5C 27398198 */  addiu      $t9, $t9, %lo(alienInstances)
    /* FEC10 800EFC60 0018C100 */  sll        $t8, $t8, 4
    /* FEC14 800EFC64 03192021 */  addu       $a0, $t8, $t9
    /* FEC18 800EFC68 A4880000 */  sh         $t0, 0x0($a0)
    /* FEC1C 800EFC6C 84690004 */  lh         $t1, 0x4($v1)
    /* FEC20 800EFC70 93A5001B */  lbu        $a1, 0x1B($sp)
    /* FEC24 800EFC74 3C0B0504 */  lui        $t3, %hi(D_5040770)
    /* FEC28 800EFC78 252A0050 */  addiu      $t2, $t1, 0x50
    /* FEC2C 800EFC7C 14A0000C */  bnez       $a1, .L800EFCB0_FEC60
    /* FEC30 800EFC80 A48A0004 */   sh        $t2, 0x4($a0)
    /* FEC34 800EFC84 00056080 */  sll        $t4, $a1, 2
    /* FEC38 800EFC88 01856023 */  subu       $t4, $t4, $a1
    /* FEC3C 800EFC8C 000C6080 */  sll        $t4, $t4, 2
    /* FEC40 800EFC90 01856021 */  addu       $t4, $t4, $a1
    /* FEC44 800EFC94 000C60C0 */  sll        $t4, $t4, 3
    /* FEC48 800EFC98 3C018025 */  lui        $at, %hi(alienSpecs)
    /* FEC4C 800EFC9C 002C0821 */  addu       $at, $at, $t4
    /* FEC50 800EFCA0 256B0770 */  addiu      $t3, $t3, %lo(D_5040770)
    /* FEC54 800EFCA4 AC2B6680 */  sw         $t3, %lo(alienSpecs)($at)
    /* FEC58 800EFCA8 240D0010 */  addiu      $t5, $zero, 0x10
    /* FEC5C 800EFCAC A08D0024 */  sb         $t5, 0x24($a0)
  .L800EFCB0_FEC60:
    /* FEC60 800EFCB0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* FEC64 800EFCB4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* FEC68 800EFCB8 03E00008 */  jr         $ra
    /* FEC6C 800EFCBC 00000000 */   nop
endlabel func_800EFC28_FEBD8
