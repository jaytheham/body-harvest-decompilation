nonmatching func_802DA9C0_31EB10, 0x24C

glabel func_802DA9C0_31EB10
    /* 31EB10 802DA9C0 27BDFF80 */  addiu      $sp, $sp, -0x80
    /* 31EB14 802DA9C4 AFB1003C */  sw         $s1, 0x3C($sp)
    /* 31EB18 802DA9C8 309100FF */  andi       $s1, $a0, 0xFF
    /* 31EB1C 802DA9CC 00117880 */  sll        $t7, $s1, 2
    /* 31EB20 802DA9D0 01F17821 */  addu       $t7, $t7, $s1
    /* 31EB24 802DA9D4 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 31EB28 802DA9D8 AFB20040 */  sw         $s2, 0x40($sp)
    /* 31EB2C 802DA9DC 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 31EB30 802DA9E0 000F7900 */  sll        $t7, $t7, 4
    /* 31EB34 802DA9E4 01F89021 */  addu       $s2, $t7, $t8
    /* 31EB38 802DA9E8 8E590020 */  lw         $t9, 0x20($s2)
    /* 31EB3C 802DA9EC AFB00038 */  sw         $s0, 0x38($sp)
    /* 31EB40 802DA9F0 00058400 */  sll        $s0, $a1, 16
    /* 31EB44 802DA9F4 33294000 */  andi       $t1, $t9, 0x4000
    /* 31EB48 802DA9F8 00107403 */  sra        $t6, $s0, 16
    /* 31EB4C 802DA9FC AFBF0054 */  sw         $ra, 0x54($sp)
    /* 31EB50 802DAA00 AFB60050 */  sw         $s6, 0x50($sp)
    /* 31EB54 802DAA04 AFB5004C */  sw         $s5, 0x4C($sp)
    /* 31EB58 802DAA08 AFB40048 */  sw         $s4, 0x48($sp)
    /* 31EB5C 802DAA0C AFB30044 */  sw         $s3, 0x44($sp)
    /* 31EB60 802DAA10 AFA40080 */  sw         $a0, 0x80($sp)
    /* 31EB64 802DAA14 11200072 */  beqz       $t1, .L802DABE0_31ED30
    /* 31EB68 802DAA18 AFA50084 */   sw        $a1, 0x84($sp)
    /* 31EB6C 802DAA1C 3C028015 */  lui        $v0, %hi(D_8014DD50)
    /* 31EB70 802DAA20 2442DD50 */  addiu      $v0, $v0, %lo(D_8014DD50)
    /* 31EB74 802DAA24 000E5100 */  sll        $t2, $t6, 4
    /* 31EB78 802DAA28 004A5821 */  addu       $t3, $v0, $t2
    /* 31EB7C 802DAA2C 8163000C */  lb         $v1, 0xC($t3)
    /* 31EB80 802DAA30 8648000C */  lh         $t0, 0xC($s2)
    /* 31EB84 802DAA34 A7AE0074 */  sh         $t6, 0x74($sp)
    /* 31EB88 802DAA38 00036100 */  sll        $t4, $v1, 4
    /* 31EB8C 802DAA3C 004C6821 */  addu       $t5, $v0, $t4
    /* 31EB90 802DAA40 00087900 */  sll        $t7, $t0, 4
    /* 31EB94 802DAA44 81AE000C */  lb         $t6, 0xC($t5)
    /* 31EB98 802DAA48 004FC021 */  addu       $t8, $v0, $t7
    /* 31EB9C 802DAA4C 8319000C */  lb         $t9, 0xC($t8)
    /* 31EBA0 802DAA50 3C09802E */  lui        $t1, %hi(D_802E5234)
    /* 31EBA4 802DAA54 25295234 */  addiu      $t1, $t1, %lo(D_802E5234)
    /* 31EBA8 802DAA58 AFA90010 */  sw         $t1, 0x10($sp)
    /* 31EBAC 802DAA5C 322400FF */  andi       $a0, $s1, 0xFF
    /* 31EBB0 802DAA60 24050005 */  addiu      $a1, $zero, 0x5
    /* 31EBB4 802DAA64 24060003 */  addiu      $a2, $zero, 0x3
    /* 31EBB8 802DAA68 27A70074 */  addiu      $a3, $sp, 0x74
    /* 31EBBC 802DAA6C A7A30076 */  sh         $v1, 0x76($sp)
    /* 31EBC0 802DAA70 A7A8007A */  sh         $t0, 0x7A($sp)
    /* 31EBC4 802DAA74 A7AE0078 */  sh         $t6, 0x78($sp)
    /* 31EBC8 802DAA78 0C0207C6 */  jal        func_80081F18_90EC8
    /* 31EBCC 802DAA7C A7B9007C */   sh        $t9, 0x7C($sp)
    /* 31EBD0 802DAA80 24010002 */  addiu      $at, $zero, 0x2
    /* 31EBD4 802DAA84 1441004F */  bne        $v0, $at, .L802DABC4_31ED14
    /* 31EBD8 802DAA88 00008025 */   or        $s0, $zero, $zero
    /* 31EBDC 802DAA8C 0220A025 */  or         $s4, $s1, $zero
    /* 31EBE0 802DAA90 24160014 */  addiu      $s6, $zero, 0x14
    /* 31EBE4 802DAA94 24150028 */  addiu      $s5, $zero, 0x28
    /* 31EBE8 802DAA98 2413000A */  addiu      $s3, $zero, 0xA
    /* 31EBEC 802DAA9C A640001E */  sh         $zero, 0x1E($s2)
  .L802DAAA0_31EBF0:
    /* 31EBF0 802DAAA0 02802025 */  or         $a0, $s4, $zero
    /* 31EBF4 802DAAA4 0C04DD1A */  jal        func_80137468_146418
    /* 31EBF8 802DAAA8 24050134 */   addiu     $a1, $zero, 0x134
    /* 31EBFC 802DAAAC 322400FF */  andi       $a0, $s1, 0xFF
    /* 31EC00 802DAAB0 0C0213FA */  jal        func_80084FE8_93F98
    /* 31EC04 802DAAB4 24050800 */   addiu     $a1, $zero, 0x800
    /* 31EC08 802DAAB8 1040000B */  beqz       $v0, .L802DAAE8_31EC38
    /* 31EC0C 802DAABC 00000000 */   nop
    /* 31EC10 802DAAC0 02150019 */  multu      $s0, $s5
    /* 31EC14 802DAAC4 322400FF */  andi       $a0, $s1, 0xFF
    /* 31EC18 802DAAC8 24050001 */  addiu      $a1, $zero, 0x1
    /* 31EC1C 802DAACC 00003012 */  mflo       $a2
    /* 31EC20 802DAAD0 0C021C73 */  jal        func_800871CC_9617C
    /* 31EC24 802DAAD4 00000000 */   nop
    /* 31EC28 802DAAD8 5040000D */  beql       $v0, $zero, .L802DAB10_31EC60
    /* 31EC2C 802DAADC 26100001 */   addiu     $s0, $s0, 0x1
    /* 31EC30 802DAAE0 1000000A */  b          .L802DAB0C_31EC5C
    /* 31EC34 802DAAE4 A653001E */   sh        $s3, 0x1E($s2)
  .L802DAAE8_31EC38:
    /* 31EC38 802DAAE8 02160019 */  multu      $s0, $s6
    /* 31EC3C 802DAAEC 322400FF */  andi       $a0, $s1, 0xFF
    /* 31EC40 802DAAF0 24050001 */  addiu      $a1, $zero, 0x1
    /* 31EC44 802DAAF4 00003012 */  mflo       $a2
    /* 31EC48 802DAAF8 0C021C62 */  jal        func_80087188_96138
    /* 31EC4C 802DAAFC 00000000 */   nop
    /* 31EC50 802DAB00 50400003 */  beql       $v0, $zero, .L802DAB10_31EC60
    /* 31EC54 802DAB04 26100001 */   addiu     $s0, $s0, 0x1
    /* 31EC58 802DAB08 A653001E */  sh         $s3, 0x1E($s2)
  .L802DAB0C_31EC5C:
    /* 31EC5C 802DAB0C 26100001 */  addiu      $s0, $s0, 0x1
  .L802DAB10_31EC60:
    /* 31EC60 802DAB10 00105400 */  sll        $t2, $s0, 16
    /* 31EC64 802DAB14 000A8403 */  sra        $s0, $t2, 16
    /* 31EC68 802DAB18 2A010006 */  slti       $at, $s0, 0x6
    /* 31EC6C 802DAB1C 5420FFE0 */  bnel       $at, $zero, .L802DAAA0_31EBF0
    /* 31EC70 802DAB20 A640001E */   sh        $zero, 0x1E($s2)
    /* 31EC74 802DAB24 924C001A */  lbu        $t4, 0x1A($s2)
    /* 31EC78 802DAB28 3C0E8025 */  lui        $t6, %hi(alienSpecs)
    /* 31EC7C 802DAB2C 25CE6680 */  addiu      $t6, $t6, %lo(alienSpecs)
    /* 31EC80 802DAB30 000C6880 */  sll        $t5, $t4, 2
    /* 31EC84 802DAB34 01AC6823 */  subu       $t5, $t5, $t4
    /* 31EC88 802DAB38 000D6880 */  sll        $t5, $t5, 2
    /* 31EC8C 802DAB3C 01AC6821 */  addu       $t5, $t5, $t4
    /* 31EC90 802DAB40 000D68C0 */  sll        $t5, $t5, 3
    /* 31EC94 802DAB44 01AE1021 */  addu       $v0, $t5, $t6
    /* 31EC98 802DAB48 27AF006C */  addiu      $t7, $sp, 0x6C
    /* 31EC9C 802DAB4C 27B80068 */  addiu      $t8, $sp, 0x68
    /* 31ECA0 802DAB50 27B90064 */  addiu      $t9, $sp, 0x64
    /* 31ECA4 802DAB54 AFB90018 */  sw         $t9, 0x18($sp)
    /* 31ECA8 802DAB58 AFB80014 */  sw         $t8, 0x14($sp)
    /* 31ECAC 802DAB5C AFAF0010 */  sw         $t7, 0x10($sp)
    /* 31ECB0 802DAB60 8445002C */  lh         $a1, 0x2C($v0)
    /* 31ECB4 802DAB64 8446002E */  lh         $a2, 0x2E($v0)
    /* 31ECB8 802DAB68 84470030 */  lh         $a3, 0x30($v0)
    /* 31ECBC 802DAB6C 0C04A10A */  jal        func_80128428_1373D8
    /* 31ECC0 802DAB70 02402025 */   or        $a0, $s2, $zero
    /* 31ECC4 802DAB74 24090009 */  addiu      $t1, $zero, 0x9
    /* 31ECC8 802DAB78 240A0014 */  addiu      $t2, $zero, 0x14
    /* 31ECCC 802DAB7C 240B0096 */  addiu      $t3, $zero, 0x96
    /* 31ECD0 802DAB80 240C00A6 */  addiu      $t4, $zero, 0xA6
    /* 31ECD4 802DAB84 240D0085 */  addiu      $t5, $zero, 0x85
    /* 31ECD8 802DAB88 240E002F */  addiu      $t6, $zero, 0x2F
    /* 31ECDC 802DAB8C AFAE0028 */  sw         $t6, 0x28($sp)
    /* 31ECE0 802DAB90 AFAD0024 */  sw         $t5, 0x24($sp)
    /* 31ECE4 802DAB94 AFAC0020 */  sw         $t4, 0x20($sp)
    /* 31ECE8 802DAB98 AFAB001C */  sw         $t3, 0x1C($sp)
    /* 31ECEC 802DAB9C AFAA0018 */  sw         $t2, 0x18($sp)
    /* 31ECF0 802DABA0 AFA90010 */  sw         $t1, 0x10($sp)
    /* 31ECF4 802DABA4 87A4006E */  lh         $a0, 0x6E($sp)
    /* 31ECF8 802DABA8 87A5006A */  lh         $a1, 0x6A($sp)
    /* 31ECFC 802DABAC 87A60066 */  lh         $a2, 0x66($sp)
    /* 31ED00 802DABB0 24070064 */  addiu      $a3, $zero, 0x64
    /* 31ED04 802DABB4 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 31ED08 802DABB8 AFA00014 */   sw        $zero, 0x14($sp)
    /* 31ED0C 802DABBC 10000009 */  b          .L802DABE4_31ED34
    /* 31ED10 802DABC0 24020001 */   addiu     $v0, $zero, 0x1
  .L802DABC4_31ED14:
    /* 31ED14 802DABC4 24010003 */  addiu      $at, $zero, 0x3
    /* 31ED18 802DABC8 54410006 */  bnel       $v0, $at, .L802DABE4_31ED34
    /* 31ED1C 802DABCC 00001025 */   or        $v0, $zero, $zero
    /* 31ED20 802DABD0 8E4F0020 */  lw         $t7, 0x20($s2)
    /* 31ED24 802DABD4 2401BFFF */  addiu      $at, $zero, -0x4001
    /* 31ED28 802DABD8 01E1C024 */  and        $t8, $t7, $at
    /* 31ED2C 802DABDC AE580020 */  sw         $t8, 0x20($s2)
  .L802DABE0_31ED30:
    /* 31ED30 802DABE0 00001025 */  or         $v0, $zero, $zero
  .L802DABE4_31ED34:
    /* 31ED34 802DABE4 8FBF0054 */  lw         $ra, 0x54($sp)
    /* 31ED38 802DABE8 8FB00038 */  lw         $s0, 0x38($sp)
    /* 31ED3C 802DABEC 8FB1003C */  lw         $s1, 0x3C($sp)
    /* 31ED40 802DABF0 8FB20040 */  lw         $s2, 0x40($sp)
    /* 31ED44 802DABF4 8FB30044 */  lw         $s3, 0x44($sp)
    /* 31ED48 802DABF8 8FB40048 */  lw         $s4, 0x48($sp)
    /* 31ED4C 802DABFC 8FB5004C */  lw         $s5, 0x4C($sp)
    /* 31ED50 802DAC00 8FB60050 */  lw         $s6, 0x50($sp)
    /* 31ED54 802DAC04 03E00008 */  jr         $ra
    /* 31ED58 802DAC08 27BD0080 */   addiu     $sp, $sp, 0x80
endlabel func_802DA9C0_31EB10
