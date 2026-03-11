nonmatching func_802D6FFC_2B942C, 0x118

glabel func_802D6FFC_2B942C
    /* 2B942C 802D6FFC 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 2B9430 802D7000 AFB50038 */  sw         $s5, 0x38($sp)
    /* 2B9434 802D7004 3C158015 */  lui        $s5, %hi(D_8014D17C)
    /* 2B9438 802D7008 26B5D17C */  addiu      $s5, $s5, %lo(D_8014D17C)
    /* 2B943C 802D700C 86AE0000 */  lh         $t6, 0x0($s5)
    /* 2B9440 802D7010 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 2B9444 802D7014 AFB40034 */  sw         $s4, 0x34($sp)
    /* 2B9448 802D7018 29C10015 */  slti       $at, $t6, 0x15
    /* 2B944C 802D701C AFB30030 */  sw         $s3, 0x30($sp)
    /* 2B9450 802D7020 AFB2002C */  sw         $s2, 0x2C($sp)
    /* 2B9454 802D7024 AFB10028 */  sw         $s1, 0x28($sp)
    /* 2B9458 802D7028 1420002E */  bnez       $at, .L802D70E4_2B9514
    /* 2B945C 802D702C AFB00024 */   sw        $s0, 0x24($sp)
    /* 2B9460 802D7030 3C13802E */  lui        $s3, %hi(D_802E0E9C)
    /* 2B9464 802D7034 3C12802E */  lui        $s2, %hi(D_802E0E8C)
    /* 2B9468 802D7038 26520E8C */  addiu      $s2, $s2, %lo(D_802E0E8C)
    /* 2B946C 802D703C 26730E9C */  addiu      $s3, $s3, %lo(D_802E0E9C)
    /* 2B9470 802D7040 00008025 */  or         $s0, $zero, $zero
    /* 2B9474 802D7044 00008825 */  or         $s1, $zero, $zero
    /* 2B9478 802D7048 24140004 */  addiu      $s4, $zero, 0x4
  .L802D704C_2B947C:
    /* 2B947C 802D704C 86A20000 */  lh         $v0, 0x0($s5)
    /* 2B9480 802D7050 00107880 */  sll        $t7, $s0, 2
    /* 2B9484 802D7054 024FC021 */  addu       $t8, $s2, $t7
    /* 2B9488 802D7058 0222082A */  slt        $at, $s1, $v0
    /* 2B948C 802D705C 1020000D */  beqz       $at, .L802D7094_2B94C4
    /* 2B9490 802D7060 00512823 */   subu      $a1, $v0, $s1
    /* 2B9494 802D7064 8F040000 */  lw         $a0, 0x0($t8)
    /* 2B9498 802D7068 24190005 */  addiu      $t9, $zero, 0x5
    /* 2B949C 802D706C 2408004B */  addiu      $t0, $zero, 0x4B
    /* 2B94A0 802D7070 24090018 */  addiu      $t1, $zero, 0x18
    /* 2B94A4 802D7074 AFA9001C */  sw         $t1, 0x1C($sp)
    /* 2B94A8 802D7078 AFA80018 */  sw         $t0, 0x18($sp)
    /* 2B94AC 802D707C AFB90014 */  sw         $t9, 0x14($sp)
    /* 2B94B0 802D7080 AFB30010 */  sw         $s3, 0x10($sp)
    /* 2B94B4 802D7084 24A5FFEC */  addiu      $a1, $a1, -0x14
    /* 2B94B8 802D7088 2406007D */  addiu      $a2, $zero, 0x7D
    /* 2B94BC 802D708C 0C0B5937 */  jal        func_802D64DC_2B890C
    /* 2B94C0 802D7090 2407000C */   addiu     $a3, $zero, 0xC
  .L802D7094_2B94C4:
    /* 2B94C4 802D7094 26100001 */  addiu      $s0, $s0, 0x1
    /* 2B94C8 802D7098 1614FFEC */  bne        $s0, $s4, .L802D704C_2B947C
    /* 2B94CC 802D709C 2631000C */   addiu     $s1, $s1, 0xC
    /* 2B94D0 802D70A0 3C028005 */  lui        $v0, %hi(buildingInstances)
    /* 2B94D4 802D70A4 24420AD8 */  addiu      $v0, $v0, %lo(buildingInstances)
    /* 2B94D8 802D70A8 804A0687 */  lb         $t2, 0x687($v0)
    /* 2B94DC 802D70AC 5D40000E */  bgtzl      $t2, .L802D70E8_2B9518
    /* 2B94E0 802D70B0 86AE0000 */   lh        $t6, 0x0($s5)
    /* 2B94E4 802D70B4 804B078F */  lb         $t3, 0x78F($v0)
    /* 2B94E8 802D70B8 5D60000B */  bgtzl      $t3, .L802D70E8_2B9518
    /* 2B94EC 802D70BC 86AE0000 */   lh        $t6, 0x0($s5)
    /* 2B94F0 802D70C0 804C0627 */  lb         $t4, 0x627($v0)
    /* 2B94F4 802D70C4 5D800008 */  bgtzl      $t4, .L802D70E8_2B9518
    /* 2B94F8 802D70C8 86AE0000 */   lh        $t6, 0x0($s5)
    /* 2B94FC 802D70CC 804D081F */  lb         $t5, 0x81F($v0)
    /* 2B9500 802D70D0 3C04802D */  lui        $a0, %hi(func_802D6FFC_2B942C)
    /* 2B9504 802D70D4 5DA00004 */  bgtzl      $t5, .L802D70E8_2B9518
    /* 2B9508 802D70D8 86AE0000 */   lh        $t6, 0x0($s5)
    /* 2B950C 802D70DC 0C001D2F */  jal        func_800074BC_80BC
    /* 2B9510 802D70E0 24846FFC */   addiu     $a0, $a0, %lo(func_802D6FFC_2B942C)
  .L802D70E4_2B9514:
    /* 2B9514 802D70E4 86AE0000 */  lh         $t6, 0x0($s5)
  .L802D70E8_2B9518:
    /* 2B9518 802D70E8 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 2B951C 802D70EC 8FB00024 */  lw         $s0, 0x24($sp)
    /* 2B9520 802D70F0 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 2B9524 802D70F4 A6AF0000 */  sh         $t7, 0x0($s5)
    /* 2B9528 802D70F8 8FB50038 */  lw         $s5, 0x38($sp)
    /* 2B952C 802D70FC 8FB10028 */  lw         $s1, 0x28($sp)
    /* 2B9530 802D7100 8FB2002C */  lw         $s2, 0x2C($sp)
    /* 2B9534 802D7104 8FB30030 */  lw         $s3, 0x30($sp)
    /* 2B9538 802D7108 8FB40034 */  lw         $s4, 0x34($sp)
    /* 2B953C 802D710C 03E00008 */  jr         $ra
    /* 2B9540 802D7110 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_802D6FFC_2B942C
