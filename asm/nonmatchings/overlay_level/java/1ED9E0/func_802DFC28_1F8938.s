nonmatching func_802DFC28_1F8938, 0x80

glabel func_802DFC28_1F8938
    /* 1F8938 802DFC28 308600FF */  andi       $a2, $a0, 0xFF
    /* 1F893C 802DFC2C 24080050 */  addiu      $t0, $zero, 0x50
    /* 1F8940 802DFC30 00C80019 */  multu      $a2, $t0
    /* 1F8944 802DFC34 3C078005 */  lui        $a3, %hi(alienInstances)
    /* 1F8948 802DFC38 24E78198 */  addiu      $a3, $a3, %lo(alienInstances)
    /* 1F894C 802DFC3C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1F8950 802DFC40 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1F8954 802DFC44 AFA40018 */  sw         $a0, 0x18($sp)
    /* 1F8958 802DFC48 00007012 */  mflo       $t6
    /* 1F895C 802DFC4C 00EE1821 */  addu       $v1, $a3, $t6
    /* 1F8960 802DFC50 8C6F0020 */  lw         $t7, 0x20($v1)
    /* 1F8964 802DFC54 000FC2C0 */  sll        $t8, $t7, 11
    /* 1F8968 802DFC58 0700000D */  bltz       $t8, .L802DFC90_1F89A0
    /* 1F896C 802DFC5C 00000000 */   nop
    /* 1F8970 802DFC60 90790025 */  lbu        $t9, 0x25($v1)
    /* 1F8974 802DFC64 00C02025 */  or         $a0, $a2, $zero
    /* 1F8978 802DFC68 2405000F */  addiu      $a1, $zero, 0xF
    /* 1F897C 802DFC6C 03280019 */  multu      $t9, $t0
    /* 1F8980 802DFC70 A3A6001B */  sb         $a2, 0x1B($sp)
    /* 1F8984 802DFC74 00004812 */  mflo       $t1
    /* 1F8988 802DFC78 00E91021 */  addu       $v0, $a3, $t1
    /* 1F898C 802DFC7C 904A0026 */  lbu        $t2, 0x26($v0)
    /* 1F8990 802DFC80 254BFFFF */  addiu      $t3, $t2, -0x1
    /* 1F8994 802DFC84 0C04DD1A */  jal        func_80137468_146418
    /* 1F8998 802DFC88 A04B0026 */   sb        $t3, 0x26($v0)
    /* 1F899C 802DFC8C 93A6001B */  lbu        $a2, 0x1B($sp)
  .L802DFC90_1F89A0:
    /* 1F89A0 802DFC90 0C022C0B */  jal        func_8008B02C_99FDC
    /* 1F89A4 802DFC94 30C400FF */   andi      $a0, $a2, 0xFF
    /* 1F89A8 802DFC98 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1F89AC 802DFC9C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1F89B0 802DFCA0 03E00008 */  jr         $ra
    /* 1F89B4 802DFCA4 00000000 */   nop
endlabel func_802DFC28_1F8938
