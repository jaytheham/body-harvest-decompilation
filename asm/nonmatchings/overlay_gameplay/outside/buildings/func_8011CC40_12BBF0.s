nonmatching func_8011CC40_12BBF0, 0x164

glabel func_8011CC40_12BBF0
    /* 12BBF0 8011CC40 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 12BBF4 8011CC44 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 12BBF8 8011CC48 AFA40040 */  sw         $a0, 0x40($sp)
    /* 12BBFC 8011CC4C AFA50044 */  sw         $a1, 0x44($sp)
    /* 12BC00 8011CC50 AFB70030 */  sw         $s7, 0x30($sp)
    /* 12BC04 8011CC54 AFB6002C */  sw         $s6, 0x2C($sp)
    /* 12BC08 8011CC58 AFB50028 */  sw         $s5, 0x28($sp)
    /* 12BC0C 8011CC5C AFB40024 */  sw         $s4, 0x24($sp)
    /* 12BC10 8011CC60 AFB30020 */  sw         $s3, 0x20($sp)
    /* 12BC14 8011CC64 AFB2001C */  sw         $s2, 0x1C($sp)
    /* 12BC18 8011CC68 AFB10018 */  sw         $s1, 0x18($sp)
    /* 12BC1C 8011CC6C AFB00014 */  sw         $s0, 0x14($sp)
    /* 12BC20 8011CC70 AFA60048 */  sw         $a2, 0x48($sp)
    /* 12BC24 8011CC74 93A50047 */  lbu        $a1, 0x47($sp)
    /* 12BC28 8011CC78 0C0472F6 */  jal        func_8011CBD8_12BB88
    /* 12BC2C 8011CC7C 93A40043 */   lbu       $a0, 0x43($sp)
    /* 12BC30 8011CC80 00408025 */  or         $s0, $v0, $zero
    /* 12BC34 8011CC84 93A40043 */  lbu        $a0, 0x43($sp)
    /* 12BC38 8011CC88 0C047308 */  jal        func_8011CC20_12BBD0
    /* 12BC3C 8011CC8C 93A50047 */   lbu       $a1, 0x47($sp)
    /* 12BC40 8011CC90 3C128014 */  lui        $s2, %hi(D_80140A00)
    /* 12BC44 8011CC94 26520A00 */  addiu      $s2, $s2, %lo(D_80140A00)
    /* 12BC48 8011CC98 3C178014 */  lui        $s7, %hi(D_80144E84)
    /* 12BC4C 8011CC9C 3C158016 */  lui        $s5, %hi(D_8015D0B0)
    /* 12BC50 8011CCA0 3C138016 */  lui        $s3, %hi(D_8015EA58)
    /* 12BC54 8011CCA4 A7A2003A */  sh         $v0, 0x3A($sp)
    /* 12BC58 8011CCA8 24110017 */  addiu      $s1, $zero, 0x17
    /* 12BC5C 8011CCAC AE400000 */  sw         $zero, 0x0($s2)
    /* 12BC60 8011CCB0 2673EA58 */  addiu      $s3, $s3, %lo(D_8015EA58)
    /* 12BC64 8011CCB4 26B5D0B0 */  addiu      $s5, $s5, %lo(D_8015D0B0)
    /* 12BC68 8011CCB8 26F74E84 */  addiu      $s7, $s7, %lo(D_80144E84)
    /* 12BC6C 8011CCBC 24161964 */  addiu      $s6, $zero, 0x1964
    /* 12BC70 8011CCC0 241400FF */  addiu      $s4, $zero, 0xFF
  .L8011CCC4_12BC74:
    /* 12BC74 8011CCC4 02B01021 */  addu       $v0, $s5, $s0
  .L8011CCC8_12BC78:
    /* 12BC78 8011CCC8 904E0000 */  lbu        $t6, 0x0($v0)
    /* 12BC7C 8011CCCC 02304021 */  addu       $t0, $s1, $s0
    /* 12BC80 8011CCD0 168E000F */  bne        $s4, $t6, .L8011CD10_12BCC0
    /* 12BC84 8011CCD4 00000000 */   nop
    /* 12BC88 8011CCD8 93AF004B */  lbu        $t7, 0x4B($sp)
    /* 12BC8C 8011CCDC 97B8003A */  lhu        $t8, 0x3A($sp)
    /* 12BC90 8011CCE0 0010C840 */  sll        $t9, $s0, 1
    /* 12BC94 8011CCE4 3C018016 */  lui        $at, %hi(D_80159DE8)
    /* 12BC98 8011CCE8 00390821 */  addu       $at, $at, $t9
    /* 12BC9C 8011CCEC A04F0000 */  sb         $t7, 0x0($v0)
    /* 12BCA0 8011CCF0 83A40043 */  lb         $a0, 0x43($sp)
    /* 12BCA4 8011CCF4 83A50047 */  lb         $a1, 0x47($sp)
    /* 12BCA8 8011CCF8 24060800 */  addiu      $a2, $zero, 0x800
    /* 12BCAC 8011CCFC 24070001 */  addiu      $a3, $zero, 0x1
    /* 12BCB0 8011CD00 0C02CC5B */  jal        func_800B316C_C211C
    /* 12BCB4 8011CD04 A4389DE8 */   sh        $t8, %lo(D_80159DE8)($at)
    /* 12BCB8 8011CD08 1000001C */  b          .L8011CD7C_12BD2C
    /* 12BCBC 8011CD0C 8FB00014 */   lw        $s0, 0x14($sp)
  .L8011CD10_12BCC0:
    /* 12BCC0 8011CD10 0116001B */  divu       $zero, $t0, $s6
    /* 12BCC4 8011CD14 8E490000 */  lw         $t1, 0x0($s2)
    /* 12BCC8 8011CD18 00008010 */  mfhi       $s0
    /* 12BCCC 8011CD1C 26310001 */  addiu      $s1, $s1, 0x1
    /* 12BCD0 8011CD20 252A0001 */  addiu      $t2, $t1, 0x1
    /* 12BCD4 8011CD24 16C00002 */  bnez       $s6, .L8011CD30_12BCE0
    /* 12BCD8 8011CD28 00000000 */   nop
    /* 12BCDC 8011CD2C 0007000D */  break      7
  .L8011CD30_12BCE0:
    /* 12BCE0 8011CD30 29410011 */  slti       $at, $t2, 0x11
    /* 12BCE4 8011CD34 AE4A0000 */  sw         $t2, 0x0($s2)
    /* 12BCE8 8011CD38 1420FFE2 */  bnez       $at, .L8011CCC4_12BC74
    /* 12BCEC 8011CD3C 01405825 */   or        $t3, $t2, $zero
    /* 12BCF0 8011CD40 966C0000 */  lhu        $t4, 0x0($s3)
    /* 12BCF4 8011CD44 258D0001 */  addiu      $t5, $t4, 0x1
    /* 12BCF8 8011CD48 31AEFFFF */  andi       $t6, $t5, 0xFFFF
    /* 12BCFC 8011CD4C 29C10010 */  slti       $at, $t6, 0x10
    /* 12BD00 8011CD50 10200005 */  beqz       $at, .L8011CD68_12BD18
    /* 12BD04 8011CD54 A66D0000 */   sh        $t5, 0x0($s3)
    /* 12BD08 8011CD58 0C00731B */  jal        osSyncPrintf
    /* 12BD0C 8011CD5C 02E02025 */   or        $a0, $s7, $zero
    /* 12BD10 8011CD60 1000FFD9 */  b          .L8011CCC8_12BC78
    /* 12BD14 8011CD64 02B01021 */   addu      $v0, $s5, $s0
  .L8011CD68_12BD18:
    /* 12BD18 8011CD68 3C048014 */  lui        $a0, %hi(D_80144EAC)
    /* 12BD1C 8011CD6C 0C00731B */  jal        osSyncPrintf
    /* 12BD20 8011CD70 24844EAC */   addiu     $a0, $a0, %lo(D_80144EAC)
  .L8011CD74_12BD24:
    /* 12BD24 8011CD74 1000FFFF */  b          .L8011CD74_12BD24
    /* 12BD28 8011CD78 00000000 */   nop
  .L8011CD7C_12BD2C:
    /* 12BD2C 8011CD7C 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 12BD30 8011CD80 8FB10018 */  lw         $s1, 0x18($sp)
    /* 12BD34 8011CD84 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 12BD38 8011CD88 8FB30020 */  lw         $s3, 0x20($sp)
    /* 12BD3C 8011CD8C 8FB40024 */  lw         $s4, 0x24($sp)
    /* 12BD40 8011CD90 8FB50028 */  lw         $s5, 0x28($sp)
    /* 12BD44 8011CD94 8FB6002C */  lw         $s6, 0x2C($sp)
    /* 12BD48 8011CD98 8FB70030 */  lw         $s7, 0x30($sp)
    /* 12BD4C 8011CD9C 03E00008 */  jr         $ra
    /* 12BD50 8011CDA0 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_8011CC40_12BBF0
