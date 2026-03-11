nonmatching func_80086D88_16EE48, 0x108

glabel func_80086D88_16EE48
    /* 16EE48 80086D88 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 16EE4C 80086D8C AFB1001C */  sw         $s1, 0x1C($sp)
    /* 16EE50 80086D90 AFB20020 */  sw         $s2, 0x20($sp)
    /* 16EE54 80086D94 AFB00018 */  sw         $s0, 0x18($sp)
    /* 16EE58 80086D98 3C118010 */  lui        $s1, %hi(D_800FB6F8)
    /* 16EE5C 80086D9C AFBF0024 */  sw         $ra, 0x24($sp)
    /* 16EE60 80086DA0 2631B6F8 */  addiu      $s1, $s1, %lo(D_800FB6F8)
    /* 16EE64 80086DA4 00008025 */  or         $s0, $zero, $zero
    /* 16EE68 80086DA8 2412000C */  addiu      $s2, $zero, 0xC
  .L80086DAC_16EE6C:
    /* 16EE6C 80086DAC 02120019 */  multu      $s0, $s2
    /* 16EE70 80086DB0 00007012 */  mflo       $t6
    /* 16EE74 80086DB4 022E7821 */  addu       $t7, $s1, $t6
    /* 16EE78 80086DB8 91F80000 */  lbu        $t8, 0x0($t7)
    /* 16EE7C 80086DBC 2F010009 */  sltiu      $at, $t8, 0x9
    /* 16EE80 80086DC0 10200028 */  beqz       $at, .L80086E64_16EF24
    /* 16EE84 80086DC4 0018C080 */   sll       $t8, $t8, 2
    /* 16EE88 80086DC8 3C01800A */  lui        $at, %hi(jtbl_800A5488_overlay_gameplay_inside)
    /* 16EE8C 80086DCC 00380821 */  addu       $at, $at, $t8
    /* 16EE90 80086DD0 8C385488 */  lw         $t8, %lo(jtbl_800A5488_overlay_gameplay_inside)($at)
    /* 16EE94 80086DD4 03000008 */  jr         $t8
    /* 16EE98 80086DD8 00000000 */   nop
    /* 16EE9C 80086DDC 0C0217CA */  jal        func_80085F28_16DFE8
    /* 16EEA0 80086DE0 320400FF */   andi      $a0, $s0, 0xFF
    /* 16EEA4 80086DE4 10000020 */  b          .L80086E68_16EF28
    /* 16EEA8 80086DE8 26100001 */   addiu     $s0, $s0, 0x1
    /* 16EEAC 80086DEC 0C021750 */  jal        func_80085D40_16DE00
    /* 16EEB0 80086DF0 320400FF */   andi      $a0, $s0, 0xFF
    /* 16EEB4 80086DF4 1000001C */  b          .L80086E68_16EF28
    /* 16EEB8 80086DF8 26100001 */   addiu     $s0, $s0, 0x1
    /* 16EEBC 80086DFC 0C021096 */  jal        func_80084258_16C318
    /* 16EEC0 80086E00 320400FF */   andi      $a0, $s0, 0xFF
    /* 16EEC4 80086E04 10000018 */  b          .L80086E68_16EF28
    /* 16EEC8 80086E08 26100001 */   addiu     $s0, $s0, 0x1
    /* 16EECC 80086E0C 0C021954 */  jal        func_80086550_16E610
    /* 16EED0 80086E10 00000000 */   nop
    /* 16EED4 80086E14 10000014 */  b          .L80086E68_16EF28
    /* 16EED8 80086E18 26100001 */   addiu     $s0, $s0, 0x1
    /* 16EEDC 80086E1C 0C0219CA */  jal        func_80086728_16E7E8
    /* 16EEE0 80086E20 00000000 */   nop
    /* 16EEE4 80086E24 10000010 */  b          .L80086E68_16EF28
    /* 16EEE8 80086E28 26100001 */   addiu     $s0, $s0, 0x1
    /* 16EEEC 80086E2C 0C021A23 */  jal        func_8008688C_16E94C
    /* 16EEF0 80086E30 00000000 */   nop
    /* 16EEF4 80086E34 1000000C */  b          .L80086E68_16EF28
    /* 16EEF8 80086E38 26100001 */   addiu     $s0, $s0, 0x1
    /* 16EEFC 80086E3C 0C021A8D */  jal        func_80086A34_16EAF4
    /* 16EF00 80086E40 00000000 */   nop
    /* 16EF04 80086E44 10000008 */  b          .L80086E68_16EF28
    /* 16EF08 80086E48 26100001 */   addiu     $s0, $s0, 0x1
    /* 16EF0C 80086E4C 0C021ACD */  jal        func_80086B34_16EBF4
    /* 16EF10 80086E50 320400FF */   andi      $a0, $s0, 0xFF
    /* 16EF14 80086E54 10000004 */  b          .L80086E68_16EF28
    /* 16EF18 80086E58 26100001 */   addiu     $s0, $s0, 0x1
    /* 16EF1C 80086E5C 0C02260D */  jal        func_80089834_1718F4
    /* 16EF20 80086E60 320400FF */   andi      $a0, $s0, 0xFF
  .L80086E64_16EF24:
    /* 16EF24 80086E64 26100001 */  addiu      $s0, $s0, 0x1
  .L80086E68_16EF28:
    /* 16EF28 80086E68 321900FF */  andi       $t9, $s0, 0xFF
    /* 16EF2C 80086E6C 2B21000F */  slti       $at, $t9, 0xF
    /* 16EF30 80086E70 1420FFCE */  bnez       $at, .L80086DAC_16EE6C
    /* 16EF34 80086E74 03208025 */   or        $s0, $t9, $zero
    /* 16EF38 80086E78 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 16EF3C 80086E7C 8FB00018 */  lw         $s0, 0x18($sp)
    /* 16EF40 80086E80 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 16EF44 80086E84 8FB20020 */  lw         $s2, 0x20($sp)
    /* 16EF48 80086E88 03E00008 */  jr         $ra
    /* 16EF4C 80086E8C 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_80086D88_16EE48
