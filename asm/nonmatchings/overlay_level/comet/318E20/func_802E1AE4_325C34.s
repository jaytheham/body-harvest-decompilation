nonmatching func_802E1AE4_325C34, 0x150

glabel func_802E1AE4_325C34
    /* 325C34 802E1AE4 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 325C38 802E1AE8 3C0F802E */  lui        $t7, %hi(D_802E7190)
    /* 325C3C 802E1AEC AFBF001C */  sw         $ra, 0x1C($sp)
    /* 325C40 802E1AF0 AFA40048 */  sw         $a0, 0x48($sp)
    /* 325C44 802E1AF4 AFA5004C */  sw         $a1, 0x4C($sp)
    /* 325C48 802E1AF8 25EF7190 */  addiu      $t7, $t7, %lo(D_802E7190)
    /* 325C4C 802E1AFC 8DE10000 */  lw         $at, 0x0($t7)
    /* 325C50 802E1B00 27AE0038 */  addiu      $t6, $sp, 0x38
    /* 325C54 802E1B04 ADC10000 */  sw         $at, 0x0($t6)
    /* 325C58 802E1B08 95E10004 */  lhu        $at, 0x4($t7)
    /* 325C5C 802E1B0C A5C10004 */  sh         $at, 0x4($t6)
    /* 325C60 802E1B10 0C0B7FE1 */  jal        func_802DFF84_3240D4
    /* 325C64 802E1B14 93A4004B */   lbu       $a0, 0x4B($sp)
    /* 325C68 802E1B18 93AD004F */  lbu        $t5, 0x4F($sp)
    /* 325C6C 802E1B1C 00023C00 */  sll        $a3, $v0, 16
    /* 325C70 802E1B20 00075403 */  sra        $t2, $a3, 16
    /* 325C74 802E1B24 000DC880 */  sll        $t9, $t5, 2
    /* 325C78 802E1B28 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 325C7C 802E1B2C 032DC821 */  addu       $t9, $t9, $t5
    /* 325C80 802E1B30 000A5900 */  sll        $t3, $t2, 4
    /* 325C84 802E1B34 3C0C8015 */  lui        $t4, %hi(D_8014DD5C)
    /* 325C88 802E1B38 0019C900 */  sll        $t9, $t9, 4
    /* 325C8C 802E1B3C 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 325C90 802E1B40 018B6021 */  addu       $t4, $t4, $t3
    /* 325C94 802E1B44 03381821 */  addu       $v1, $t9, $t8
    /* 325C98 802E1B48 818CDD5C */  lb         $t4, %lo(D_8014DD5C)($t4)
    /* 325C9C 802E1B4C 846E000C */  lh         $t6, 0xC($v1)
    /* 325CA0 802E1B50 84640000 */  lh         $a0, 0x0($v1)
    /* 325CA4 802E1B54 84650002 */  lh         $a1, 0x2($v1)
    /* 325CA8 802E1B58 84660004 */  lh         $a2, 0x4($v1)
    /* 325CAC 802E1B5C A7AA0040 */  sh         $t2, 0x40($sp)
    /* 325CB0 802E1B60 A7AC0042 */  sh         $t4, 0x42($sp)
    /* 325CB4 802E1B64 0C021833 */  jal        func_800860CC_9507C
    /* 325CB8 802E1B68 A7AE0044 */   sh        $t6, 0x44($sp)
    /* 325CBC 802E1B6C 3C08802E */  lui        $t0, %hi(D_802E70C8)
    /* 325CC0 802E1B70 250870C8 */  addiu      $t0, $t0, %lo(D_802E70C8)
    /* 325CC4 802E1B74 24431388 */  addiu      $v1, $v0, 0x1388
    /* 325CC8 802E1B78 3C09802E */  lui        $t1, %hi(D_802E7148)
    /* 325CCC 802E1B7C 244F1770 */  addiu      $t7, $v0, 0x1770
    /* 325CD0 802E1B80 25297148 */  addiu      $t1, $t1, %lo(D_802E7148)
    /* 325CD4 802E1B84 A50F000A */  sh         $t7, 0xA($t0)
    /* 325CD8 802E1B88 A503001A */  sh         $v1, 0x1A($t0)
    /* 325CDC 802E1B8C A503003A */  sh         $v1, 0x3A($t0)
    /* 325CE0 802E1B90 A503005A */  sh         $v1, 0x5A($t0)
    /* 325CE4 802E1B94 AFA90010 */  sw         $t1, 0x10($sp)
    /* 325CE8 802E1B98 93A4004B */  lbu        $a0, 0x4B($sp)
    /* 325CEC 802E1B9C 24050002 */  addiu      $a1, $zero, 0x2
    /* 325CF0 802E1BA0 24060008 */  addiu      $a2, $zero, 0x8
    /* 325CF4 802E1BA4 0C0207C6 */  jal        func_80081F18_90EC8
    /* 325CF8 802E1BA8 27A70040 */   addiu     $a3, $sp, 0x40
    /* 325CFC 802E1BAC 00022E00 */  sll        $a1, $v0, 24
    /* 325D00 802E1BB0 00055603 */  sra        $t2, $a1, 24
    /* 325D04 802E1BB4 24010002 */  addiu      $at, $zero, 0x2
    /* 325D08 802E1BB8 10410008 */  beq        $v0, $at, .L802E1BDC_325D2C
    /* 325D0C 802E1BBC 01402825 */   or        $a1, $t2, $zero
    /* 325D10 802E1BC0 00021E00 */  sll        $v1, $v0, 24
    /* 325D14 802E1BC4 00035E03 */  sra        $t3, $v1, 24
    /* 325D18 802E1BC8 24010004 */  addiu      $at, $zero, 0x4
    /* 325D1C 802E1BCC 11610003 */  beq        $t3, $at, .L802E1BDC_325D2C
    /* 325D20 802E1BD0 24010006 */   addiu     $at, $zero, 0x6
    /* 325D24 802E1BD4 55610010 */  bnel       $t3, $at, .L802E1C18_325D68
    /* 325D28 802E1BD8 24010008 */   addiu     $at, $zero, 0x8
  .L802E1BDC_325D2C:
    /* 325D2C 802E1BDC 93A4004F */  lbu        $a0, 0x4F($sp)
    /* 325D30 802E1BE0 0C0B867B */  jal        func_802E19EC_325B3C
    /* 325D34 802E1BE4 A3A5002B */   sb        $a1, 0x2B($sp)
    /* 325D38 802E1BE8 93AC004B */  lbu        $t4, 0x4B($sp)
    /* 325D3C 802E1BEC 3C198005 */  lui        $t9, %hi(alienInstances)
    /* 325D40 802E1BF0 27398198 */  addiu      $t9, $t9, %lo(alienInstances)
    /* 325D44 802E1BF4 000C6880 */  sll        $t5, $t4, 2
    /* 325D48 802E1BF8 01AC6821 */  addu       $t5, $t5, $t4
    /* 325D4C 802E1BFC 000D6900 */  sll        $t5, $t5, 4
    /* 325D50 802E1C00 01B91021 */  addu       $v0, $t5, $t9
    /* 325D54 802E1C04 84580012 */  lh         $t8, 0x12($v0)
    /* 325D58 802E1C08 83A5002B */  lb         $a1, 0x2B($sp)
    /* 325D5C 802E1C0C 270EFD80 */  addiu      $t6, $t8, -0x280
    /* 325D60 802E1C10 A44E0012 */  sh         $t6, 0x12($v0)
    /* 325D64 802E1C14 24010008 */  addiu      $at, $zero, 0x8
  .L802E1C18_325D68:
    /* 325D68 802E1C18 14A10003 */  bne        $a1, $at, .L802E1C28_325D78
    /* 325D6C 802E1C1C 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 325D70 802E1C20 10000002 */  b          .L802E1C2C_325D7C
    /* 325D74 802E1C24 00001025 */   or        $v0, $zero, $zero
  .L802E1C28_325D78:
    /* 325D78 802E1C28 24020001 */  addiu      $v0, $zero, 0x1
  .L802E1C2C_325D7C:
    /* 325D7C 802E1C2C 03E00008 */  jr         $ra
    /* 325D80 802E1C30 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_802E1AE4_325C34
