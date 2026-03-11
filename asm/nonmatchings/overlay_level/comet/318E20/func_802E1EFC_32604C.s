nonmatching func_802E1EFC_32604C, 0xE4

glabel func_802E1EFC_32604C
    /* 32604C 802E1EFC 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 326050 802E1F00 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 326054 802E1F04 AFA40030 */  sw         $a0, 0x30($sp)
    /* 326058 802E1F08 AFA50034 */  sw         $a1, 0x34($sp)
    /* 32605C 802E1F0C 0C0B7FF2 */  jal        func_802DFFC8_324118
    /* 326060 802E1F10 93A40033 */   lbu       $a0, 0x33($sp)
    /* 326064 802E1F14 93B90037 */  lbu        $t9, 0x37($sp)
    /* 326068 802E1F18 00021C00 */  sll        $v1, $v0, 16
    /* 32606C 802E1F1C 00037403 */  sra        $t6, $v1, 16
    /* 326070 802E1F20 00194080 */  sll        $t0, $t9, 2
    /* 326074 802E1F24 01194021 */  addu       $t0, $t0, $t9
    /* 326078 802E1F28 000E7900 */  sll        $t7, $t6, 4
    /* 32607C 802E1F2C 3C188015 */  lui        $t8, %hi(D_8014DD5C)
    /* 326080 802E1F30 00084100 */  sll        $t0, $t0, 4
    /* 326084 802E1F34 3C098005 */  lui        $t1, %hi(D_800481A4)
    /* 326088 802E1F38 030FC021 */  addu       $t8, $t8, $t7
    /* 32608C 802E1F3C 01284821 */  addu       $t1, $t1, $t0
    /* 326090 802E1F40 8318DD5C */  lb         $t8, %lo(D_8014DD5C)($t8)
    /* 326094 802E1F44 852981A4 */  lh         $t1, %lo(D_800481A4)($t1)
    /* 326098 802E1F48 3C0A802E */  lui        $t2, %hi(D_802E6E20)
    /* 32609C 802E1F4C 254A6E20 */  addiu      $t2, $t2, %lo(D_802E6E20)
    /* 3260A0 802E1F50 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 3260A4 802E1F54 A7AE0028 */  sh         $t6, 0x28($sp)
    /* 3260A8 802E1F58 93A40033 */  lbu        $a0, 0x33($sp)
    /* 3260AC 802E1F5C 24050003 */  addiu      $a1, $zero, 0x3
    /* 3260B0 802E1F60 24060004 */  addiu      $a2, $zero, 0x4
    /* 3260B4 802E1F64 27A70028 */  addiu      $a3, $sp, 0x28
    /* 3260B8 802E1F68 A7B8002A */  sh         $t8, 0x2A($sp)
    /* 3260BC 802E1F6C 0C020821 */  jal        func_80082084_91034
    /* 3260C0 802E1F70 A7A9002C */   sh        $t1, 0x2C($sp)
    /* 3260C4 802E1F74 00021E00 */  sll        $v1, $v0, 24
    /* 3260C8 802E1F78 00035E03 */  sra        $t3, $v1, 24
    /* 3260CC 802E1F7C 24010002 */  addiu      $at, $zero, 0x2
    /* 3260D0 802E1F80 1441000F */  bne        $v0, $at, .L802E1FC0_326110
    /* 3260D4 802E1F84 01601825 */   or        $v1, $t3, $zero
    /* 3260D8 802E1F88 93A40037 */  lbu        $a0, 0x37($sp)
    /* 3260DC 802E1F8C 0C0B8730 */  jal        func_802E1CC0_325E10
    /* 3260E0 802E1F90 A3AB0027 */   sb        $t3, 0x27($sp)
    /* 3260E4 802E1F94 93AC0033 */  lbu        $t4, 0x33($sp)
    /* 3260E8 802E1F98 3C0E8005 */  lui        $t6, %hi(alienInstances)
    /* 3260EC 802E1F9C 25CE8198 */  addiu      $t6, $t6, %lo(alienInstances)
    /* 3260F0 802E1FA0 000C6880 */  sll        $t5, $t4, 2
    /* 3260F4 802E1FA4 01AC6821 */  addu       $t5, $t5, $t4
    /* 3260F8 802E1FA8 000D6900 */  sll        $t5, $t5, 4
    /* 3260FC 802E1FAC 01AE1021 */  addu       $v0, $t5, $t6
    /* 326100 802E1FB0 844F0012 */  lh         $t7, 0x12($v0)
    /* 326104 802E1FB4 83A30027 */  lb         $v1, 0x27($sp)
    /* 326108 802E1FB8 25F8FD80 */  addiu      $t8, $t7, -0x280
    /* 32610C 802E1FBC A4580012 */  sh         $t8, 0x12($v0)
  .L802E1FC0_326110:
    /* 326110 802E1FC0 24010004 */  addiu      $at, $zero, 0x4
    /* 326114 802E1FC4 14610003 */  bne        $v1, $at, .L802E1FD4_326124
    /* 326118 802E1FC8 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 32611C 802E1FCC 10000002 */  b          .L802E1FD8_326128
    /* 326120 802E1FD0 00001025 */   or        $v0, $zero, $zero
  .L802E1FD4_326124:
    /* 326124 802E1FD4 24020001 */  addiu      $v0, $zero, 0x1
  .L802E1FD8_326128:
    /* 326128 802E1FD8 03E00008 */  jr         $ra
    /* 32612C 802E1FDC 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_802E1EFC_32604C
