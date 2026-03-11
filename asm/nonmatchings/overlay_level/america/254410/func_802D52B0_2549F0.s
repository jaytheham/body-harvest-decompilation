nonmatching func_802D52B0_2549F0, 0xBC

glabel func_802D52B0_2549F0
    /* 2549F0 802D52B0 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 2549F4 802D52B4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2549F8 802D52B8 0C01E55B */  jal        func_8007956C_8851C
    /* 2549FC 802D52BC 24040012 */   addiu     $a0, $zero, 0x12
    /* 254A00 802D52C0 304E00FF */  andi       $t6, $v0, 0xFF
    /* 254A04 802D52C4 240100FF */  addiu      $at, $zero, 0xFF
    /* 254A08 802D52C8 11C10024 */  beq        $t6, $at, .L802D535C_254A9C
    /* 254A0C 802D52CC 304700FF */   andi      $a3, $v0, 0xFF
    /* 254A10 802D52D0 240F005D */  addiu      $t7, $zero, 0x5D
    /* 254A14 802D52D4 3C018025 */  lui        $at, %hi(D_80256DEC)
    /* 254A18 802D52D8 AC2F6DEC */  sw         $t7, %lo(D_80256DEC)($at)
    /* 254A1C 802D52DC 3C018015 */  lui        $at, %hi(D_80157E7C)
    /* 254A20 802D52E0 24180002 */  addiu      $t8, $zero, 0x2
    /* 254A24 802D52E4 AC387E7C */  sw         $t8, %lo(D_80157E7C)($at)
    /* 254A28 802D52E8 2404F0D8 */  addiu      $a0, $zero, -0xF28
    /* 254A2C 802D52EC 24059D00 */  addiu      $a1, $zero, -0x6300
    /* 254A30 802D52F0 27A60022 */  addiu      $a2, $sp, 0x22
    /* 254A34 802D52F4 0C0479BF */  jal        func_8011E6FC_12D6AC
    /* 254A38 802D52F8 A3A70037 */   sb        $a3, 0x37($sp)
    /* 254A3C 802D52FC 93A70037 */  lbu        $a3, 0x37($sp)
    /* 254A40 802D5300 3C088005 */  lui        $t0, %hi(alienInstances)
    /* 254A44 802D5304 87AB0022 */  lh         $t3, 0x22($sp)
    /* 254A48 802D5308 0007C880 */  sll        $t9, $a3, 2
    /* 254A4C 802D530C 0327C821 */  addu       $t9, $t9, $a3
    /* 254A50 802D5310 0019C900 */  sll        $t9, $t9, 4
    /* 254A54 802D5314 25088198 */  addiu      $t0, $t0, %lo(alienInstances)
    /* 254A58 802D5318 03281821 */  addu       $v1, $t9, $t0
    /* 254A5C 802D531C 3C0F802D */  lui        $t7, %hi(func_802D5288_2549C8)
    /* 254A60 802D5320 2409F0D8 */  addiu      $t1, $zero, -0xF28
    /* 254A64 802D5324 240A9D00 */  addiu      $t2, $zero, -0x6300
    /* 254A68 802D5328 240D0004 */  addiu      $t5, $zero, 0x4
    /* 254A6C 802D532C 240E0003 */  addiu      $t6, $zero, 0x3
    /* 254A70 802D5330 25EF5288 */  addiu      $t7, $t7, %lo(func_802D5288_2549C8)
    /* 254A74 802D5334 256C000A */  addiu      $t4, $t3, 0xA
    /* 254A78 802D5338 A4690000 */  sh         $t1, 0x0($v1)
    /* 254A7C 802D533C A46A0004 */  sh         $t2, 0x4($v1)
    /* 254A80 802D5340 A46C0002 */  sh         $t4, 0x2($v1)
    /* 254A84 802D5344 A06D0024 */  sb         $t5, 0x24($v1)
    /* 254A88 802D5348 A3AE0024 */  sb         $t6, 0x24($sp)
    /* 254A8C 802D534C AFAF0030 */  sw         $t7, 0x30($sp)
    /* 254A90 802D5350 27A40024 */  addiu      $a0, $sp, 0x24
    /* 254A94 802D5354 0C02B915 */  jal        func_800AE454_BD404
    /* 254A98 802D5358 A3A7002C */   sb        $a3, 0x2C($sp)
  .L802D535C_254A9C:
    /* 254A9C 802D535C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 254AA0 802D5360 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 254AA4 802D5364 03E00008 */  jr         $ra
    /* 254AA8 802D5368 00000000 */   nop
endlabel func_802D52B0_2549F0
