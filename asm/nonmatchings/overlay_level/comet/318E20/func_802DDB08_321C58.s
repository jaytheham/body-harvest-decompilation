nonmatching func_802DDB08_321C58, 0x13C

glabel func_802DDB08_321C58
    /* 321C58 802DDB08 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 321C5C 802DDB0C AFA60050 */  sw         $a2, 0x50($sp)
    /* 321C60 802DDB10 87AE0052 */  lh         $t6, 0x52($sp)
    /* 321C64 802DDB14 3C098015 */  lui        $t1, %hi(D_8014DD50)
    /* 321C68 802DDB18 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 321C6C 802DDB1C AFA5004C */  sw         $a1, 0x4C($sp)
    /* 321C70 802DDB20 000E7900 */  sll        $t7, $t6, 4
    /* 321C74 802DDB24 93AB004F */  lbu        $t3, 0x4F($sp)
    /* 321C78 802DDB28 012FC021 */  addu       $t8, $t1, $t7
    /* 321C7C 802DDB2C 8308000C */  lb         $t0, 0xC($t8)
    /* 321C80 802DDB30 000B6080 */  sll        $t4, $t3, 2
    /* 321C84 802DDB34 3C0D802E */  lui        $t5, %hi(D_802E5DF0)
    /* 321C88 802DDB38 018B6023 */  subu       $t4, $t4, $t3
    /* 321C8C 802DDB3C 0008C900 */  sll        $t9, $t0, 4
    /* 321C90 802DDB40 01395021 */  addu       $t2, $t1, $t9
    /* 321C94 802DDB44 000C6040 */  sll        $t4, $t4, 1
    /* 321C98 802DDB48 25AD5DF0 */  addiu      $t5, $t5, %lo(D_802E5DF0)
    /* 321C9C 802DDB4C 8143000C */  lb         $v1, 0xC($t2)
    /* 321CA0 802DDB50 018D1021 */  addu       $v0, $t4, $t5
    /* 321CA4 802DDB54 AFA40048 */  sw         $a0, 0x48($sp)
    /* 321CA8 802DDB58 844E0000 */  lh         $t6, 0x0($v0)
    /* 321CAC 802DDB5C 844F0002 */  lh         $t7, 0x2($v0)
    /* 321CB0 802DDB60 84580004 */  lh         $t8, 0x4($v0)
    /* 321CB4 802DDB64 00032600 */  sll        $a0, $v1, 24
    /* 321CB8 802DDB68 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 321CBC 802DDB6C 0004CE03 */  sra        $t9, $a0, 24
    /* 321CC0 802DDB70 AFA70054 */  sw         $a3, 0x54($sp)
    /* 321CC4 802DDB74 03202025 */  or         $a0, $t9, $zero
    /* 321CC8 802DDB78 27A50040 */  addiu      $a1, $sp, 0x40
    /* 321CCC 802DDB7C 27A60034 */  addiu      $a2, $sp, 0x34
    /* 321CD0 802DDB80 A7A80032 */  sh         $t0, 0x32($sp)
    /* 321CD4 802DDB84 A7AE0040 */  sh         $t6, 0x40($sp)
    /* 321CD8 802DDB88 A7AF0042 */  sh         $t7, 0x42($sp)
    /* 321CDC 802DDB8C 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 321CE0 802DDB90 A7B80044 */   sh        $t8, 0x44($sp)
    /* 321CE4 802DDB94 87A80032 */  lh         $t0, 0x32($sp)
    /* 321CE8 802DDB98 8FAA0034 */  lw         $t2, 0x34($sp)
    /* 321CEC 802DDB9C 8FAB0038 */  lw         $t3, 0x38($sp)
    /* 321CF0 802DDBA0 8FAC003C */  lw         $t4, 0x3C($sp)
    /* 321CF4 802DDBA4 00082600 */  sll        $a0, $t0, 24
    /* 321CF8 802DDBA8 00046E03 */  sra        $t5, $a0, 24
    /* 321CFC 802DDBAC 01A02025 */  or         $a0, $t5, $zero
    /* 321D00 802DDBB0 27A50040 */  addiu      $a1, $sp, 0x40
    /* 321D04 802DDBB4 27A60034 */  addiu      $a2, $sp, 0x34
    /* 321D08 802DDBB8 A7AA0040 */  sh         $t2, 0x40($sp)
    /* 321D0C 802DDBBC A7AB0042 */  sh         $t3, 0x42($sp)
    /* 321D10 802DDBC0 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 321D14 802DDBC4 A7AC0044 */   sh        $t4, 0x44($sp)
    /* 321D18 802DDBC8 8FAE0034 */  lw         $t6, 0x34($sp)
    /* 321D1C 802DDBCC 8FAF0038 */  lw         $t7, 0x38($sp)
    /* 321D20 802DDBD0 8FB8003C */  lw         $t8, 0x3C($sp)
    /* 321D24 802DDBD4 83A40053 */  lb         $a0, 0x53($sp)
    /* 321D28 802DDBD8 27A50040 */  addiu      $a1, $sp, 0x40
    /* 321D2C 802DDBDC 27A60034 */  addiu      $a2, $sp, 0x34
    /* 321D30 802DDBE0 A7AE0040 */  sh         $t6, 0x40($sp)
    /* 321D34 802DDBE4 A7AF0042 */  sh         $t7, 0x42($sp)
    /* 321D38 802DDBE8 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 321D3C 802DDBEC A7B80044 */   sh        $t8, 0x44($sp)
    /* 321D40 802DDBF0 93B9004B */  lbu        $t9, 0x4B($sp)
    /* 321D44 802DDBF4 8FA20054 */  lw         $v0, 0x54($sp)
    /* 321D48 802DDBF8 3C0B8005 */  lui        $t3, %hi(alienInstances)
    /* 321D4C 802DDBFC 00195080 */  sll        $t2, $t9, 2
    /* 321D50 802DDC00 01595021 */  addu       $t2, $t2, $t9
    /* 321D54 802DDC04 000A5100 */  sll        $t2, $t2, 4
    /* 321D58 802DDC08 256B8198 */  addiu      $t3, $t3, %lo(alienInstances)
    /* 321D5C 802DDC0C 244C0004 */  addiu      $t4, $v0, 0x4
    /* 321D60 802DDC10 244D0008 */  addiu      $t5, $v0, 0x8
    /* 321D64 802DDC14 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 321D68 802DDC18 AFAC0014 */  sw         $t4, 0x14($sp)
    /* 321D6C 802DDC1C 014B2021 */  addu       $a0, $t2, $t3
    /* 321D70 802DDC20 87A50036 */  lh         $a1, 0x36($sp)
    /* 321D74 802DDC24 87A6003A */  lh         $a2, 0x3A($sp)
    /* 321D78 802DDC28 87A7003E */  lh         $a3, 0x3E($sp)
    /* 321D7C 802DDC2C 0C04A10A */  jal        func_80128428_1373D8
    /* 321D80 802DDC30 AFA20010 */   sw        $v0, 0x10($sp)
    /* 321D84 802DDC34 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 321D88 802DDC38 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 321D8C 802DDC3C 03E00008 */  jr         $ra
    /* 321D90 802DDC40 00000000 */   nop
endlabel func_802DDB08_321C58
