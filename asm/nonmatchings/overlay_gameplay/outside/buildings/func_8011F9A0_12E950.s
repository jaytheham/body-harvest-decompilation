nonmatching func_8011F9A0_12E950, 0xF0

glabel func_8011F9A0_12E950
    /* 12E950 8011F9A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 12E954 8011F9A4 3C0E8016 */  lui        $t6, %hi(D_80159DC8)
    /* 12E958 8011F9A8 85CE9DC8 */  lh         $t6, %lo(D_80159DC8)($t6)
    /* 12E95C 8011F9AC AFA40018 */  sw         $a0, 0x18($sp)
    /* 12E960 8011F9B0 3C048005 */  lui        $a0, %hi(D_80052B40)
    /* 12E964 8011F9B4 24842B40 */  addiu      $a0, $a0, %lo(D_80052B40)
    /* 12E968 8011F9B8 3C0F8016 */  lui        $t7, %hi(D_80159DCA)
    /* 12E96C 8011F9BC A48E0000 */  sh         $t6, 0x0($a0)
    /* 12E970 8011F9C0 85EF9DCA */  lh         $t7, %lo(D_80159DCA)($t7)
    /* 12E974 8011F9C4 3C188016 */  lui        $t8, %hi(D_80159DCC)
    /* 12E978 8011F9C8 3C088006 */  lui        $t0, %hi(D_8005BB38)
    /* 12E97C 8011F9CC A48F0002 */  sh         $t7, 0x2($a0)
    /* 12E980 8011F9D0 87189DCC */  lh         $t8, %lo(D_80159DCC)($t8)
    /* 12E984 8011F9D4 2508BB38 */  addiu      $t0, $t0, %lo(D_8005BB38)
    /* 12E988 8011F9D8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 12E98C 8011F9DC 8D070000 */  lw         $a3, 0x0($t0)
    /* 12E990 8011F9E0 00002825 */  or         $a1, $zero, $zero
    /* 12E994 8011F9E4 00003025 */  or         $a2, $zero, $zero
    /* 12E998 8011F9E8 0C000E74 */  jal        func_800039D0_45D0
    /* 12E99C 8011F9EC A4980004 */   sh        $t8, 0x4($a0)
    /* 12E9A0 8011F9F0 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* 12E9A4 8011F9F4 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* 12E9A8 8011F9F8 8C620000 */  lw         $v0, 0x0($v1)
    /* 12E9AC 8011F9FC 3C090100 */  lui        $t1, (0x1000040 >> 16)
    /* 12E9B0 8011FA00 3C088006 */  lui        $t0, %hi(D_8005BB38)
    /* 12E9B4 8011FA04 24590008 */  addiu      $t9, $v0, 0x8
    /* 12E9B8 8011FA08 AC790000 */  sw         $t9, 0x0($v1)
    /* 12E9BC 8011FA0C 35290040 */  ori        $t1, $t1, (0x1000040 & 0xFFFF)
    /* 12E9C0 8011FA10 2508BB38 */  addiu      $t0, $t0, %lo(D_8005BB38)
    /* 12E9C4 8011FA14 AC490000 */  sw         $t1, 0x0($v0)
    /* 12E9C8 8011FA18 8D0A0000 */  lw         $t2, 0x0($t0)
    /* 12E9CC 8011FA1C 3C071FFF */  lui        $a3, (0x1FFFFFFF >> 16)
    /* 12E9D0 8011FA20 34E7FFFF */  ori        $a3, $a3, (0x1FFFFFFF & 0xFFFF)
    /* 12E9D4 8011FA24 01475824 */  and        $t3, $t2, $a3
    /* 12E9D8 8011FA28 AC4B0004 */  sw         $t3, 0x4($v0)
    /* 12E9DC 8011FA2C 8D0C0000 */  lw         $t4, 0x0($t0)
    /* 12E9E0 8011FA30 8C620000 */  lw         $v0, 0x0($v1)
    /* 12E9E4 8011FA34 3C0F0600 */  lui        $t7, (0x6000000 >> 16)
    /* 12E9E8 8011FA38 258D0040 */  addiu      $t5, $t4, 0x40
    /* 12E9EC 8011FA3C 244E0008 */  addiu      $t6, $v0, 0x8
    /* 12E9F0 8011FA40 AD0D0000 */  sw         $t5, 0x0($t0)
    /* 12E9F4 8011FA44 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 12E9F8 8011FA48 3C188016 */  lui        $t8, %hi(D_80159DC4)
    /* 12E9FC 8011FA4C AC4F0000 */  sw         $t7, 0x0($v0)
    /* 12EA00 8011FA50 8F189DC4 */  lw         $t8, %lo(D_80159DC4)($t8)
    /* 12EA04 8011FA54 3C0A8003 */  lui        $t2, %hi(D_80031160)
    /* 12EA08 8011FA58 254A1160 */  addiu      $t2, $t2, %lo(D_80031160)
    /* 12EA0C 8011FA5C AC580004 */  sw         $t8, 0x4($v0)
    /* 12EA10 8011FA60 8C620000 */  lw         $v0, 0x0($v1)
    /* 12EA14 8011FA64 3C090102 */  lui        $t1, (0x1020040 >> 16)
    /* 12EA18 8011FA68 35290040 */  ori        $t1, $t1, (0x1020040 & 0xFFFF)
    /* 12EA1C 8011FA6C 24590008 */  addiu      $t9, $v0, 0x8
    /* 12EA20 8011FA70 AC790000 */  sw         $t9, 0x0($v1)
    /* 12EA24 8011FA74 01475824 */  and        $t3, $t2, $a3
    /* 12EA28 8011FA78 AC4B0004 */  sw         $t3, 0x4($v0)
    /* 12EA2C 8011FA7C AC490000 */  sw         $t1, 0x0($v0)
    /* 12EA30 8011FA80 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 12EA34 8011FA84 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 12EA38 8011FA88 03E00008 */  jr         $ra
    /* 12EA3C 8011FA8C 00000000 */   nop
endlabel func_8011F9A0_12E950
