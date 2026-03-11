nonmatching func_802D4F1C_2B734C, 0x13C

glabel func_802D4F1C_2B734C
    /* 2B734C 802D4F1C 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 2B7350 802D4F20 240E03B6 */  addiu      $t6, $zero, 0x3B6
    /* 2B7354 802D4F24 3C018003 */  lui        $at, %hi(D_800313F8)
    /* 2B7358 802D4F28 3C028004 */  lui        $v0, %hi(D_80047743)
    /* 2B735C 802D4F2C A42E13F8 */  sh         $t6, %lo(D_800313F8)($at)
    /* 2B7360 802D4F30 24427743 */  addiu      $v0, $v0, %lo(D_80047743)
    /* 2B7364 802D4F34 2418002F */  addiu      $t8, $zero, 0x2F
    /* 2B7368 802D4F38 A0580000 */  sb         $t8, 0x0($v0)
    /* 2B736C 802D4F3C 3C018003 */  lui        $at, %hi(D_800313E8)
    /* 2B7370 802D4F40 3C038004 */  lui        $v1, %hi(D_80047744)
    /* 2B7374 802D4F44 A03813E8 */  sb         $t8, %lo(D_800313E8)($at)
    /* 2B7378 802D4F48 24637744 */  addiu      $v1, $v1, %lo(D_80047744)
    /* 2B737C 802D4F4C 2408007B */  addiu      $t0, $zero, 0x7B
    /* 2B7380 802D4F50 A0680000 */  sb         $t0, 0x0($v1)
    /* 2B7384 802D4F54 3C018003 */  lui        $at, %hi(D_800313EC)
    /* 2B7388 802D4F58 3C048004 */  lui        $a0, %hi(D_80047745)
    /* 2B738C 802D4F5C A02813EC */  sb         $t0, %lo(D_800313EC)($at)
    /* 2B7390 802D4F60 24847745 */  addiu      $a0, $a0, %lo(D_80047745)
    /* 2B7394 802D4F64 AFB50028 */  sw         $s5, 0x28($sp)
    /* 2B7398 802D4F68 AFB40024 */  sw         $s4, 0x24($sp)
    /* 2B739C 802D4F6C 240A002E */  addiu      $t2, $zero, 0x2E
    /* 2B73A0 802D4F70 AFB30020 */  sw         $s3, 0x20($sp)
    /* 2B73A4 802D4F74 AFB2001C */  sw         $s2, 0x1C($sp)
    /* 2B73A8 802D4F78 AFB10018 */  sw         $s1, 0x18($sp)
    /* 2B73AC 802D4F7C AFB00014 */  sw         $s0, 0x14($sp)
    /* 2B73B0 802D4F80 A08A0000 */  sb         $t2, 0x0($a0)
    /* 2B73B4 802D4F84 3C018003 */  lui        $at, %hi(D_800313F0)
    /* 2B73B8 802D4F88 3C14802E */  lui        $s4, %hi(D_802E30A0)
    /* 2B73BC 802D4F8C 3C15802D */  lui        $s5, %hi(D_802D48D0)
    /* 2B73C0 802D4F90 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 2B73C4 802D4F94 A02A13F0 */  sb         $t2, %lo(D_800313F0)($at)
    /* 2B73C8 802D4F98 26B548D0 */  addiu      $s5, $s5, %lo(D_802D48D0)
    /* 2B73CC 802D4F9C 269430A0 */  addiu      $s4, $s4, %lo(D_802E30A0)
    /* 2B73D0 802D4FA0 00008025 */  or         $s0, $zero, $zero
    /* 2B73D4 802D4FA4 27B10035 */  addiu      $s1, $sp, 0x35
    /* 2B73D8 802D4FA8 27B20034 */  addiu      $s2, $sp, 0x34
    /* 2B73DC 802D4FAC 27B30033 */  addiu      $s3, $sp, 0x33
  .L802D4FB0_2B73E0:
    /* 2B73E0 802D4FB0 320400FF */  andi       $a0, $s0, 0xFF
    /* 2B73E4 802D4FB4 02202825 */  or         $a1, $s1, $zero
    /* 2B73E8 802D4FB8 02403025 */  or         $a2, $s2, $zero
    /* 2B73EC 802D4FBC 0C00128E */  jal        func_80004A38_5638
    /* 2B73F0 802D4FC0 02603825 */   or        $a3, $s3, $zero
    /* 2B73F4 802D4FC4 00101840 */  sll        $v1, $s0, 1
    /* 2B73F8 802D4FC8 02A31021 */  addu       $v0, $s5, $v1
    /* 2B73FC 802D4FCC 944B0000 */  lhu        $t3, 0x0($v0)
    /* 2B7400 802D4FD0 02836021 */  addu       $t4, $s4, $v1
    /* 2B7404 802D4FD4 26100001 */  addiu      $s0, $s0, 0x1
    /* 2B7408 802D4FD8 A58B0000 */  sh         $t3, 0x0($t4)
    /* 2B740C 802D4FDC 93AD0035 */  lbu        $t5, 0x35($sp)
    /* 2B7410 802D4FE0 93B90034 */  lbu        $t9, 0x34($sp)
    /* 2B7414 802D4FE4 93AC0033 */  lbu        $t4, 0x33($sp)
    /* 2B7418 802D4FE8 25AEFFF4 */  addiu      $t6, $t5, -0xC
    /* 2B741C 802D4FEC 000EC2C0 */  sll        $t8, $t6, 11
    /* 2B7420 802D4FF0 2728FFFD */  addiu      $t0, $t9, -0x3
    /* 2B7424 802D4FF4 00084980 */  sll        $t1, $t0, 6
    /* 2B7428 802D4FF8 0010CC00 */  sll        $t9, $s0, 16
    /* 2B742C 802D4FFC 03095821 */  addu       $t3, $t8, $t1
    /* 2B7430 802D5000 258DFFF4 */  addiu      $t5, $t4, -0xC
    /* 2B7434 802D5004 00198403 */  sra        $s0, $t9, 16
    /* 2B7438 802D5008 A4580000 */  sh         $t8, 0x0($v0)
    /* 2B743C 802D500C 000D7040 */  sll        $t6, $t5, 1
    /* 2B7440 802D5010 2A010026 */  slti       $at, $s0, 0x26
    /* 2B7444 802D5014 A44B0000 */  sh         $t3, 0x0($v0)
    /* 2B7448 802D5018 016E7821 */  addu       $t7, $t3, $t6
    /* 2B744C 802D501C 1420FFE4 */  bnez       $at, .L802D4FB0_2B73E0
    /* 2B7450 802D5020 A44F0000 */   sh        $t7, 0x0($v0)
    /* 2B7454 802D5024 0C001252 */  jal        func_80004948_5548
    /* 2B7458 802D5028 00000000 */   nop
    /* 2B745C 802D502C 0C001309 */  jal        leoInitUnit_atten
    /* 2B7460 802D5030 00000000 */   nop
    /* 2B7464 802D5034 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 2B7468 802D5038 8FB00014 */  lw         $s0, 0x14($sp)
    /* 2B746C 802D503C 8FB10018 */  lw         $s1, 0x18($sp)
    /* 2B7470 802D5040 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 2B7474 802D5044 8FB30020 */  lw         $s3, 0x20($sp)
    /* 2B7478 802D5048 8FB40024 */  lw         $s4, 0x24($sp)
    /* 2B747C 802D504C 8FB50028 */  lw         $s5, 0x28($sp)
    /* 2B7480 802D5050 03E00008 */  jr         $ra
    /* 2B7484 802D5054 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_802D4F1C_2B734C
