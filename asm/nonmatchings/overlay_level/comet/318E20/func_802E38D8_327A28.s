nonmatching func_802E38D8_327A28, 0x140

glabel func_802E38D8_327A28
    /* 327A28 802E38D8 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 327A2C 802E38DC 3C0F802E */  lui        $t7, %hi(D_802E71C8)
    /* 327A30 802E38E0 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 327A34 802E38E4 AFA40040 */  sw         $a0, 0x40($sp)
    /* 327A38 802E38E8 25EF71C8 */  addiu      $t7, $t7, %lo(D_802E71C8)
    /* 327A3C 802E38EC 8DE10000 */  lw         $at, 0x0($t7)
    /* 327A40 802E38F0 27AE0038 */  addiu      $t6, $sp, 0x38
    /* 327A44 802E38F4 3C0C8005 */  lui        $t4, %hi(alienInstances)
    /* 327A48 802E38F8 ADC10000 */  sw         $at, 0x0($t6)
    /* 327A4C 802E38FC 95E10004 */  lhu        $at, 0x4($t7)
    /* 327A50 802E3900 258C8198 */  addiu      $t4, $t4, %lo(alienInstances)
    /* 327A54 802E3904 A5C10004 */  sh         $at, 0x4($t6)
    /* 327A58 802E3908 93AA0043 */  lbu        $t2, 0x43($sp)
    /* 327A5C 802E390C 000A5880 */  sll        $t3, $t2, 2
    /* 327A60 802E3910 016A5821 */  addu       $t3, $t3, $t2
    /* 327A64 802E3914 000B5900 */  sll        $t3, $t3, 4
    /* 327A68 802E3918 016C1821 */  addu       $v1, $t3, $t4
    /* 327A6C 802E391C 90640025 */  lbu        $a0, 0x25($v1)
    /* 327A70 802E3920 0C0B7FC1 */  jal        func_802DFF04_324054
    /* 327A74 802E3924 AFA3002C */   sw        $v1, 0x2C($sp)
    /* 327A78 802E3928 3C088015 */  lui        $t0, %hi(D_8014DD50)
    /* 327A7C 802E392C 2508DD50 */  addiu      $t0, $t0, %lo(D_8014DD50)
    /* 327A80 802E3930 00026900 */  sll        $t5, $v0, 4
    /* 327A84 802E3934 010DC821 */  addu       $t9, $t0, $t5
    /* 327A88 802E3938 8326000C */  lb         $a2, 0xC($t9)
    /* 327A8C 802E393C 00022C00 */  sll        $a1, $v0, 16
    /* 327A90 802E3940 00057C03 */  sra        $t7, $a1, 16
    /* 327A94 802E3944 0006C100 */  sll        $t8, $a2, 4
    /* 327A98 802E3948 01187021 */  addu       $t6, $t0, $t8
    /* 327A9C 802E394C 81C6000D */  lb         $a2, 0xD($t6)
    /* 327AA0 802E3950 01E02825 */  or         $a1, $t7, $zero
    /* 327AA4 802E3954 93A40043 */  lbu        $a0, 0x43($sp)
    /* 327AA8 802E3958 0C0B8D61 */  jal        func_802E3584_3276D4
    /* 327AAC 802E395C 27A70038 */   addiu     $a3, $sp, 0x38
    /* 327AB0 802E3960 3C08802E */  lui        $t0, %hi(D_802E7C54)
    /* 327AB4 802E3964 25087C54 */  addiu      $t0, $t0, %lo(D_802E7C54)
    /* 327AB8 802E3968 8D020000 */  lw         $v0, 0x0($t0)
    /* 327ABC 802E396C 8FA3002C */  lw         $v1, 0x2C($sp)
    /* 327AC0 802E3970 240B000F */  addiu      $t3, $zero, 0xF
    /* 327AC4 802E3974 28410100 */  slti       $at, $v0, 0x100
    /* 327AC8 802E3978 10200012 */  beqz       $at, .L802E39C4_327B14
    /* 327ACC 802E397C 24470064 */   addiu     $a3, $v0, 0x64
    /* 327AD0 802E3980 00074C00 */  sll        $t1, $a3, 16
    /* 327AD4 802E3984 240C0003 */  addiu      $t4, $zero, 0x3
    /* 327AD8 802E3988 240D0028 */  addiu      $t5, $zero, 0x28
    /* 327ADC 802E398C AFAD0018 */  sw         $t5, 0x18($sp)
    /* 327AE0 802E3990 AFAC0014 */  sw         $t4, 0x14($sp)
    /* 327AE4 802E3994 00093C03 */  sra        $a3, $t1, 16
    /* 327AE8 802E3998 84640000 */  lh         $a0, 0x0($v1)
    /* 327AEC 802E399C 84650002 */  lh         $a1, 0x2($v1)
    /* 327AF0 802E39A0 84660004 */  lh         $a2, 0x4($v1)
    /* 327AF4 802E39A4 0C0315A9 */  jal        func_800C56A4_D4654
    /* 327AF8 802E39A8 AFAB0010 */   sw        $t3, 0x10($sp)
    /* 327AFC 802E39AC 3C08802E */  lui        $t0, %hi(D_802E7C54)
    /* 327B00 802E39B0 25087C54 */  addiu      $t0, $t0, %lo(D_802E7C54)
    /* 327B04 802E39B4 8D190000 */  lw         $t9, 0x0($t0)
    /* 327B08 802E39B8 27380002 */  addiu      $t8, $t9, 0x2
    /* 327B0C 802E39BC 1000000A */  b          .L802E39E8_327B38
    /* 327B10 802E39C0 AD180000 */   sw        $t8, 0x0($t0)
  .L802E39C4_327B14:
    /* 327B14 802E39C4 8C620020 */  lw         $v0, 0x20($v1)
    /* 327B18 802E39C8 3C01FFBF */  lui        $at, (0xFFBFFFFF >> 16)
    /* 327B1C 802E39CC 3421FFFF */  ori        $at, $at, (0xFFBFFFFF & 0xFFFF)
    /* 327B20 802E39D0 304E4000 */  andi       $t6, $v0, 0x4000
    /* 327B24 802E39D4 15C00004 */  bnez       $t6, .L802E39E8_327B38
    /* 327B28 802E39D8 344F4000 */   ori       $t7, $v0, 0x4000
    /* 327B2C 802E39DC AC6F0020 */  sw         $t7, 0x20($v1)
    /* 327B30 802E39E0 01E15024 */  and        $t2, $t7, $at
    /* 327B34 802E39E4 AC6A0020 */  sw         $t2, 0x20($v1)
  .L802E39E8_327B38:
    /* 327B38 802E39E8 3C040D04 */  lui        $a0, %hi(D_D040F50)
    /* 327B3C 802E39EC 0C0047E4 */  jal        func_80011F90_12B90
    /* 327B40 802E39F0 24840F50 */   addiu     $a0, $a0, %lo(D_D040F50)
    /* 327B44 802E39F4 3C08802E */  lui        $t0, %hi(D_802E7C54)
    /* 327B48 802E39F8 25087C54 */  addiu      $t0, $t0, %lo(D_802E7C54)
    /* 327B4C 802E39FC 85040002 */  lh         $a0, 0x2($t0)
    /* 327B50 802E3A00 0C001085 */  jal        func_80004214_4E14
    /* 327B54 802E3A04 00402825 */   or        $a1, $v0, $zero
    /* 327B58 802E3A08 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 327B5C 802E3A0C 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 327B60 802E3A10 03E00008 */  jr         $ra
    /* 327B64 802E3A14 00000000 */   nop
endlabel func_802E38D8_327A28
