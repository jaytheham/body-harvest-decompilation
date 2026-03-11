nonmatching func_802DA854_2BCC84, 0xBC

glabel func_802DA854_2BCC84
    /* 2BCC84 802DA854 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2BCC88 802DA858 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 2BCC8C 802DA85C 000E5880 */  sll        $t3, $t6, 2
    /* 2BCC90 802DA860 016E5821 */  addu       $t3, $t3, $t6
    /* 2BCC94 802DA864 3C0C8005 */  lui        $t4, %hi(alienInstances)
    /* 2BCC98 802DA868 258C8198 */  addiu      $t4, $t4, %lo(alienInstances)
    /* 2BCC9C 802DA86C 000B5900 */  sll        $t3, $t3, 4
    /* 2BCCA0 802DA870 016C1821 */  addu       $v1, $t3, $t4
    /* 2BCCA4 802DA874 906D004B */  lbu        $t5, 0x4B($v1)
    /* 2BCCA8 802DA878 AFA40030 */  sw         $a0, 0x30($sp)
    /* 2BCCAC 802DA87C 01C02025 */  or         $a0, $t6, $zero
    /* 2BCCB0 802DA880 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 2BCCB4 802DA884 AFA50034 */  sw         $a1, 0x34($sp)
    /* 2BCCB8 802DA888 AFA60038 */  sw         $a2, 0x38($sp)
    /* 2BCCBC 802DA88C AFA7003C */  sw         $a3, 0x3C($sp)
    /* 2BCCC0 802DA890 A7A50028 */  sh         $a1, 0x28($sp)
    /* 2BCCC4 802DA894 A7A6002A */  sh         $a2, 0x2A($sp)
    /* 2BCCC8 802DA898 15A0000B */  bnez       $t5, .L802DA8C8_2BCCF8
    /* 2BCCCC 802DA89C A7A7002C */   sh        $a3, 0x2C($sp)
    /* 2BCCD0 802DA8A0 3C0E802E */  lui        $t6, %hi(D_802E2040)
    /* 2BCCD4 802DA8A4 25CE2040 */  addiu      $t6, $t6, %lo(D_802E2040)
    /* 2BCCD8 802DA8A8 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 2BCCDC 802DA8AC 24050003 */  addiu      $a1, $zero, 0x3
    /* 2BCCE0 802DA8B0 24060005 */  addiu      $a2, $zero, 0x5
    /* 2BCCE4 802DA8B4 27A70028 */  addiu      $a3, $sp, 0x28
    /* 2BCCE8 802DA8B8 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2BCCEC 802DA8BC AFA30020 */   sw        $v1, 0x20($sp)
    /* 2BCCF0 802DA8C0 1000000A */  b          .L802DA8EC_2BCD1C
    /* 2BCCF4 802DA8C4 8FA30020 */   lw        $v1, 0x20($sp)
  .L802DA8C8_2BCCF8:
    /* 2BCCF8 802DA8C8 3C0F802E */  lui        $t7, %hi(D_802E2190)
    /* 2BCCFC 802DA8CC 25EF2190 */  addiu      $t7, $t7, %lo(D_802E2190)
    /* 2BCD00 802DA8D0 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 2BCD04 802DA8D4 24050003 */  addiu      $a1, $zero, 0x3
    /* 2BCD08 802DA8D8 24060005 */  addiu      $a2, $zero, 0x5
    /* 2BCD0C 802DA8DC 27A70028 */  addiu      $a3, $sp, 0x28
    /* 2BCD10 802DA8E0 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2BCD14 802DA8E4 AFA30020 */   sw        $v1, 0x20($sp)
    /* 2BCD18 802DA8E8 8FA30020 */  lw         $v1, 0x20($sp)
  .L802DA8EC_2BCD1C:
    /* 2BCD1C 802DA8EC 305800FF */  andi       $t8, $v0, 0xFF
    /* 2BCD20 802DA8F0 24010005 */  addiu      $at, $zero, 0x5
    /* 2BCD24 802DA8F4 57010003 */  bnel       $t8, $at, .L802DA904_2BCD34
    /* 2BCD28 802DA8F8 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 2BCD2C 802DA8FC A0600036 */  sb         $zero, 0x36($v1)
    /* 2BCD30 802DA900 8FBF001C */  lw         $ra, 0x1C($sp)
  .L802DA904_2BCD34:
    /* 2BCD34 802DA904 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 2BCD38 802DA908 03E00008 */  jr         $ra
    /* 2BCD3C 802DA90C 00000000 */   nop
endlabel func_802DA854_2BCC84
