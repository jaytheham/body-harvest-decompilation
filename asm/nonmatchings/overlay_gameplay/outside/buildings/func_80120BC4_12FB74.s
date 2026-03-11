nonmatching func_80120BC4_12FB74, 0x1A8

glabel func_80120BC4_12FB74
    /* 12FB74 80120BC4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 12FB78 80120BC8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 12FB7C 80120BCC 8C8E0008 */  lw         $t6, 0x8($a0)
    /* 12FB80 80120BD0 24070001 */  addiu      $a3, $zero, 0x1
    /* 12FB84 80120BD4 00803025 */  or         $a2, $a0, $zero
    /* 12FB88 80120BD8 31CF0003 */  andi       $t7, $t6, 0x3
    /* 12FB8C 80120BDC 14EF000A */  bne        $a3, $t7, .L80120C08_12FBB8
    /* 12FB90 80120BE0 3C038006 */   lui       $v1, %hi(D_8005BB2C)
    /* 12FB94 80120BE4 3C088016 */  lui        $t0, %hi(D_80159DC8)
    /* 12FB98 80120BE8 3C098016 */  lui        $t1, %hi(D_80159DCC)
    /* 12FB9C 80120BEC 25299DCC */  addiu      $t1, $t1, %lo(D_80159DCC)
    /* 12FBA0 80120BF0 25089DC8 */  addiu      $t0, $t0, %lo(D_80159DC8)
    /* 12FBA4 80120BF4 2418FF20 */  addiu      $t8, $zero, -0xE0
    /* 12FBA8 80120BF8 24190019 */  addiu      $t9, $zero, 0x19
    /* 12FBAC 80120BFC A5180000 */  sh         $t8, 0x0($t0)
    /* 12FBB0 80120C00 10000009 */  b          .L80120C28_12FBD8
    /* 12FBB4 80120C04 A5390000 */   sh        $t9, 0x0($t1)
  .L80120C08_12FBB8:
    /* 12FBB8 80120C08 3C088016 */  lui        $t0, %hi(D_80159DC8)
    /* 12FBBC 80120C0C 3C098016 */  lui        $t1, %hi(D_80159DCC)
    /* 12FBC0 80120C10 25299DCC */  addiu      $t1, $t1, %lo(D_80159DCC)
    /* 12FBC4 80120C14 25089DC8 */  addiu      $t0, $t0, %lo(D_80159DC8)
    /* 12FBC8 80120C18 240AFF20 */  addiu      $t2, $zero, -0xE0
    /* 12FBCC 80120C1C 240B0019 */  addiu      $t3, $zero, 0x19
    /* 12FBD0 80120C20 A50A0000 */  sh         $t2, 0x0($t0)
    /* 12FBD4 80120C24 A52B0000 */  sh         $t3, 0x0($t1)
  .L80120C28_12FBD8:
    /* 12FBD8 80120C28 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* 12FBDC 80120C2C 8C620000 */  lw         $v0, 0x0($v1)
    /* 12FBE0 80120C30 3C0DB700 */  lui        $t5, (0xB7000000 >> 16)
    /* 12FBE4 80120C34 3C0E0002 */  lui        $t6, (0x20000 >> 16)
    /* 12FBE8 80120C38 244C0008 */  addiu      $t4, $v0, 0x8
    /* 12FBEC 80120C3C AC6C0000 */  sw         $t4, 0x0($v1)
    /* 12FBF0 80120C40 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 12FBF4 80120C44 AC4D0000 */  sw         $t5, 0x0($v0)
    /* 12FBF8 80120C48 850F0000 */  lh         $t7, 0x0($t0)
    /* 12FBFC 80120C4C 3C188016 */  lui        $t8, %hi(D_80159DCA)
    /* 12FC00 80120C50 87189DCA */  lh         $t8, %lo(D_80159DCA)($t8)
    /* 12FC04 80120C54 3C018005 */  lui        $at, %hi(D_80052B40)
    /* 12FC08 80120C58 A42F2B40 */  sh         $t7, %lo(D_80052B40)($at)
    /* 12FC0C 80120C5C 3C018005 */  lui        $at, %hi(D_80052B42)
    /* 12FC10 80120C60 A4382B42 */  sh         $t8, %lo(D_80052B42)($at)
    /* 12FC14 80120C64 85390000 */  lh         $t9, 0x0($t1)
    /* 12FC18 80120C68 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 12FC1C 80120C6C 3C018005 */  lui        $at, %hi(D_80052B44)
    /* 12FC20 80120C70 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 12FC24 80120C74 A4392B44 */  sh         $t9, %lo(D_80052B44)($at)
    /* 12FC28 80120C78 A4A00000 */  sh         $zero, 0x0($a1)
    /* 12FC2C 80120C7C 8CCA0008 */  lw         $t2, 0x8($a2)
    /* 12FC30 80120C80 3C088006 */  lui        $t0, %hi(D_8005BB38)
    /* 12FC34 80120C84 2508BB38 */  addiu      $t0, $t0, %lo(D_8005BB38)
    /* 12FC38 80120C88 314B0003 */  andi       $t3, $t2, 0x3
    /* 12FC3C 80120C8C 14EB0004 */  bne        $a3, $t3, .L80120CA0_12FC50
    /* 12FC40 80120C90 3C048005 */   lui       $a0, %hi(D_80052B40)
    /* 12FC44 80120C94 3C028016 */  lui        $v0, %hi(D_8015EA3C)
    /* 12FC48 80120C98 10000004 */  b          .L80120CAC_12FC5C
    /* 12FC4C 80120C9C 8442EA3C */   lh        $v0, %lo(D_8015EA3C)($v0)
  .L80120CA0_12FC50:
    /* 12FC50 80120CA0 3C028016 */  lui        $v0, %hi(D_8015EA3C)
    /* 12FC54 80120CA4 8442EA3C */  lh         $v0, %lo(D_8015EA3C)($v0)
    /* 12FC58 80120CA8 00021023 */  negu       $v0, $v0
  .L80120CAC_12FC5C:
    /* 12FC5C 80120CAC 00026200 */  sll        $t4, $v0, 8
    /* 12FC60 80120CB0 A4AC0002 */  sh         $t4, 0x2($a1)
    /* 12FC64 80120CB4 A4A00004 */  sh         $zero, 0x4($a1)
    /* 12FC68 80120CB8 24842B40 */  addiu      $a0, $a0, %lo(D_80052B40)
    /* 12FC6C 80120CBC 00003025 */  or         $a2, $zero, $zero
    /* 12FC70 80120CC0 0C000E74 */  jal        func_800039D0_45D0
    /* 12FC74 80120CC4 8D070000 */   lw        $a3, 0x0($t0)
    /* 12FC78 80120CC8 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* 12FC7C 80120CCC 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* 12FC80 80120CD0 8C620000 */  lw         $v0, 0x0($v1)
    /* 12FC84 80120CD4 3C0E0100 */  lui        $t6, (0x1000040 >> 16)
    /* 12FC88 80120CD8 3C088006 */  lui        $t0, %hi(D_8005BB38)
    /* 12FC8C 80120CDC 244D0008 */  addiu      $t5, $v0, 0x8
    /* 12FC90 80120CE0 AC6D0000 */  sw         $t5, 0x0($v1)
    /* 12FC94 80120CE4 35CE0040 */  ori        $t6, $t6, (0x1000040 & 0xFFFF)
    /* 12FC98 80120CE8 2508BB38 */  addiu      $t0, $t0, %lo(D_8005BB38)
    /* 12FC9C 80120CEC AC4E0000 */  sw         $t6, 0x0($v0)
    /* 12FCA0 80120CF0 8D0F0000 */  lw         $t7, 0x0($t0)
    /* 12FCA4 80120CF4 3C071FFF */  lui        $a3, (0x1FFFFFFF >> 16)
    /* 12FCA8 80120CF8 34E7FFFF */  ori        $a3, $a3, (0x1FFFFFFF & 0xFFFF)
    /* 12FCAC 80120CFC 01E7C024 */  and        $t8, $t7, $a3
    /* 12FCB0 80120D00 AC580004 */  sw         $t8, 0x4($v0)
    /* 12FCB4 80120D04 8D190000 */  lw         $t9, 0x0($t0)
    /* 12FCB8 80120D08 8C620000 */  lw         $v0, 0x0($v1)
    /* 12FCBC 80120D0C 3C0D0A02 */  lui        $t5, %hi(D_A01FF98)
    /* 12FCC0 80120D10 272A0040 */  addiu      $t2, $t9, 0x40
    /* 12FCC4 80120D14 244B0008 */  addiu      $t3, $v0, 0x8
    /* 12FCC8 80120D18 AD0A0000 */  sw         $t2, 0x0($t0)
    /* 12FCCC 80120D1C AC6B0000 */  sw         $t3, 0x0($v1)
    /* 12FCD0 80120D20 25ADFF98 */  addiu      $t5, $t5, %lo(D_A01FF98)
    /* 12FCD4 80120D24 3C0C0600 */  lui        $t4, (0x6000000 >> 16)
    /* 12FCD8 80120D28 AC4C0000 */  sw         $t4, 0x0($v0)
    /* 12FCDC 80120D2C AC4D0004 */  sw         $t5, 0x4($v0)
    /* 12FCE0 80120D30 8C620000 */  lw         $v0, 0x0($v1)
    /* 12FCE4 80120D34 3C188003 */  lui        $t8, %hi(D_80031160)
    /* 12FCE8 80120D38 27181160 */  addiu      $t8, $t8, %lo(D_80031160)
    /* 12FCEC 80120D3C 3C0F0102 */  lui        $t7, (0x1020040 >> 16)
    /* 12FCF0 80120D40 244E0008 */  addiu      $t6, $v0, 0x8
    /* 12FCF4 80120D44 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 12FCF8 80120D48 35EF0040 */  ori        $t7, $t7, (0x1020040 & 0xFFFF)
    /* 12FCFC 80120D4C 0307C824 */  and        $t9, $t8, $a3
    /* 12FD00 80120D50 AC590004 */  sw         $t9, 0x4($v0)
    /* 12FD04 80120D54 0C0481AC */  jal        func_801206B0_12F660
    /* 12FD08 80120D58 AC4F0000 */   sw        $t7, 0x0($v0)
    /* 12FD0C 80120D5C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 12FD10 80120D60 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 12FD14 80120D64 03E00008 */  jr         $ra
    /* 12FD18 80120D68 00000000 */   nop
endlabel func_80120BC4_12FB74
