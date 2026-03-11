nonmatching func_802E088C_2C2CBC, 0xCC

glabel func_802E088C_2C2CBC
    /* 2C2CBC 802E088C 308600FF */  andi       $a2, $a0, 0xFF
    /* 2C2CC0 802E0890 00067080 */  sll        $t6, $a2, 2
    /* 2C2CC4 802E0894 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 2C2CC8 802E0898 01C67021 */  addu       $t6, $t6, $a2
    /* 2C2CCC 802E089C 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 2C2CD0 802E08A0 AFB00018 */  sw         $s0, 0x18($sp)
    /* 2C2CD4 802E08A4 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 2C2CD8 802E08A8 000E7100 */  sll        $t6, $t6, 4
    /* 2C2CDC 802E08AC 01CF8021 */  addu       $s0, $t6, $t7
    /* 2C2CE0 802E08B0 8E020020 */  lw         $v0, 0x20($s0)
    /* 2C2CE4 802E08B4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 2C2CE8 802E08B8 AFA40030 */  sw         $a0, 0x30($sp)
    /* 2C2CEC 802E08BC 0002C2C0 */  sll        $t8, $v0, 11
    /* 2C2CF0 802E08C0 07000015 */  bltz       $t8, .L802E0918_2C2D48
    /* 2C2CF4 802E08C4 00025040 */   sll       $t2, $v0, 1
    /* 2C2CF8 802E08C8 3C014010 */  lui        $at, (0x40100000 >> 16)
    /* 2C2CFC 802E08CC 00062400 */  sll        $a0, $a2, 16
    /* 2C2D00 802E08D0 0041C825 */  or         $t9, $v0, $at
    /* 2C2D04 802E08D4 00044403 */  sra        $t0, $a0, 16
    /* 2C2D08 802E08D8 AE190020 */  sw         $t9, 0x20($s0)
    /* 2C2D0C 802E08DC 01002025 */  or         $a0, $t0, $zero
    /* 2C2D10 802E08E0 00C01825 */  or         $v1, $a2, $zero
    /* 2C2D14 802E08E4 0C022000 */  jal        func_80088000_96FB0
    /* 2C2D18 802E08E8 AFA60024 */   sw        $a2, 0x24($sp)
    /* 2C2D1C 802E08EC 0C04AC87 */  jal        func_8012B21C_13A1CC
    /* 2C2D20 802E08F0 00000000 */   nop
    /* 2C2D24 802E08F4 0C02A4AC */  jal        func_800A92B0_B8260
    /* 2C2D28 802E08F8 00000000 */   nop
    /* 2C2D2C 802E08FC 240900AA */  addiu      $t1, $zero, 0xAA
    /* 2C2D30 802E0900 A609002C */  sh         $t1, 0x2C($s0)
    /* 2C2D34 802E0904 8FA40024 */  lw         $a0, 0x24($sp)
    /* 2C2D38 802E0908 0C04DD1A */  jal        func_80137468_146418
    /* 2C2D3C 802E090C 24050011 */   addiu     $a1, $zero, 0x11
    /* 2C2D40 802E0910 1000000D */  b          .L802E0948_2C2D78
    /* 2C2D44 802E0914 8FBF001C */   lw        $ra, 0x1C($sp)
  .L802E0918_2C2D48:
    /* 2C2D48 802E0918 0542000B */  bltzl      $t2, .L802E0948_2C2D78
    /* 2C2D4C 802E091C 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 2C2D50 802E0920 86040000 */  lh         $a0, 0x0($s0)
    /* 2C2D54 802E0924 86050004 */  lh         $a1, 0x4($s0)
    /* 2C2D58 802E0928 0C02E134 */  jal        func_800B84D0_C7480
    /* 2C2D5C 802E092C A3A60033 */   sb        $a2, 0x33($sp)
    /* 2C2D60 802E0930 244B0032 */  addiu      $t3, $v0, 0x32
    /* 2C2D64 802E0934 000B6203 */  sra        $t4, $t3, 8
    /* 2C2D68 802E0938 A60C0002 */  sh         $t4, 0x2($s0)
    /* 2C2D6C 802E093C 0C02A8D0 */  jal        func_800AA340_B92F0
    /* 2C2D70 802E0940 93A40033 */   lbu       $a0, 0x33($sp)
    /* 2C2D74 802E0944 8FBF001C */  lw         $ra, 0x1C($sp)
  .L802E0948_2C2D78:
    /* 2C2D78 802E0948 8FB00018 */  lw         $s0, 0x18($sp)
    /* 2C2D7C 802E094C 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 2C2D80 802E0950 03E00008 */  jr         $ra
    /* 2C2D84 802E0954 00000000 */   nop
endlabel func_802E088C_2C2CBC
