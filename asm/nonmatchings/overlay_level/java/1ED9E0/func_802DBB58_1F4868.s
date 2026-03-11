nonmatching func_802DBB58_1F4868, 0x8C

glabel func_802DBB58_1F4868
    /* 1F4868 802DBB58 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F486C 802DBB5C 000E7880 */  sll        $t7, $t6, 2
    /* 1F4870 802DBB60 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F4874 802DBB64 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F4878 802DBB68 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F487C 802DBB6C 000F7900 */  sll        $t7, $t7, 4
    /* 1F4880 802DBB70 01F81021 */  addu       $v0, $t7, $t8
    /* 1F4884 802DBB74 8C590020 */  lw         $t9, 0x20($v0)
    /* 1F4888 802DBB78 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 1F488C 802DBB7C AFA40030 */  sw         $a0, 0x30($sp)
    /* 1F4890 802DBB80 33280600 */  andi       $t0, $t9, 0x600
    /* 1F4894 802DBB84 01C02025 */  or         $a0, $t6, $zero
    /* 1F4898 802DBB88 11000012 */  beqz       $t0, .L802DBBD4_1F48E4
    /* 1F489C 802DBB8C AFBF001C */   sw        $ra, 0x1C($sp)
    /* 1F48A0 802DBB90 AFA20024 */  sw         $v0, 0x24($sp)
    /* 1F48A4 802DBB94 0C021512 */  jal        func_80085448_943F8
    /* 1F48A8 802DBB98 A3AE0033 */   sb        $t6, 0x33($sp)
    /* 1F48AC 802DBB9C 1040000D */  beqz       $v0, .L802DBBD4_1F48E4
    /* 1F48B0 802DBBA0 8FA40024 */   lw        $a0, 0x24($sp)
    /* 1F48B4 802DBBA4 00002825 */  or         $a1, $zero, $zero
    /* 1F48B8 802DBBA8 00003025 */  or         $a2, $zero, $zero
    /* 1F48BC 802DBBAC 00003825 */  or         $a3, $zero, $zero
    /* 1F48C0 802DBBB0 0C04A4D5 */  jal        func_80129354_138304
    /* 1F48C4 802DBBB4 AFA00010 */   sw        $zero, 0x10($sp)
    /* 1F48C8 802DBBB8 10400006 */  beqz       $v0, .L802DBBD4_1F48E4
    /* 1F48CC 802DBBBC 93A40033 */   lbu       $a0, 0x33($sp)
    /* 1F48D0 802DBBC0 0C04DD1A */  jal        func_80137468_146418
    /* 1F48D4 802DBBC4 24050065 */   addiu     $a1, $zero, 0x65
    /* 1F48D8 802DBBC8 8FAA0024 */  lw         $t2, 0x24($sp)
    /* 1F48DC 802DBBCC 2409001E */  addiu      $t1, $zero, 0x1E
    /* 1F48E0 802DBBD0 A549001E */  sh         $t1, 0x1E($t2)
  .L802DBBD4_1F48E4:
    /* 1F48E4 802DBBD4 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 1F48E8 802DBBD8 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 1F48EC 802DBBDC 03E00008 */  jr         $ra
    /* 1F48F0 802DBBE0 00000000 */   nop
endlabel func_802DBB58_1F4868
