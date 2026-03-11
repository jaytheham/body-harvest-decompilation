nonmatching func_802DAF5C_1F3C6C, 0x74

glabel func_802DAF5C_1F3C6C
    /* 1F3C6C 802DAF5C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 1F3C70 802DAF60 AFA40020 */  sw         $a0, 0x20($sp)
    /* 1F3C74 802DAF64 93AE0023 */  lbu        $t6, 0x23($sp)
    /* 1F3C78 802DAF68 3C188005 */  lui        $t8, %hi(D_800481B8)
    /* 1F3C7C 802DAF6C AFBF001C */  sw         $ra, 0x1C($sp)
    /* 1F3C80 802DAF70 000E7880 */  sll        $t7, $t6, 2
    /* 1F3C84 802DAF74 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F3C88 802DAF78 000F7900 */  sll        $t7, $t7, 4
    /* 1F3C8C 802DAF7C 030FC021 */  addu       $t8, $t8, $t7
    /* 1F3C90 802DAF80 8F1881B8 */  lw         $t8, %lo(D_800481B8)($t8)
    /* 1F3C94 802DAF84 01C02025 */  or         $a0, $t6, $zero
    /* 1F3C98 802DAF88 0018CAC0 */  sll        $t9, $t8, 11
    /* 1F3C9C 802DAF8C 07220006 */  bltzl      $t9, .L802DAFA8_1F3CB8
    /* 1F3CA0 802DAF90 24080003 */   addiu     $t0, $zero, 0x3
    /* 1F3CA4 802DAF94 0C04DD1A */  jal        func_80137468_146418
    /* 1F3CA8 802DAF98 2405000F */   addiu     $a1, $zero, 0xF
    /* 1F3CAC 802DAF9C 0C0B6A11 */  jal        func_802DA844_1F3554
    /* 1F3CB0 802DAFA0 93A40023 */   lbu       $a0, 0x23($sp)
    /* 1F3CB4 802DAFA4 24080003 */  addiu      $t0, $zero, 0x3
  .L802DAFA8_1F3CB8:
    /* 1F3CB8 802DAFA8 AFA80010 */  sw         $t0, 0x10($sp)
    /* 1F3CBC 802DAFAC 93A40023 */  lbu        $a0, 0x23($sp)
    /* 1F3CC0 802DAFB0 2405003C */  addiu      $a1, $zero, 0x3C
    /* 1F3CC4 802DAFB4 00003025 */  or         $a2, $zero, $zero
    /* 1F3CC8 802DAFB8 0C0227AD */  jal        func_80089EB4_98E64
    /* 1F3CCC 802DAFBC 24070006 */   addiu     $a3, $zero, 0x6
    /* 1F3CD0 802DAFC0 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 1F3CD4 802DAFC4 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 1F3CD8 802DAFC8 03E00008 */  jr         $ra
    /* 1F3CDC 802DAFCC 00000000 */   nop
endlabel func_802DAF5C_1F3C6C
