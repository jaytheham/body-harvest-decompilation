nonmatching func_802DEE4C_1F7B5C, 0x124

glabel func_802DEE4C_1F7B5C
    /* 1F7B5C 802DEE4C 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 1F7B60 802DEE50 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 1F7B64 802DEE54 AFA40028 */  sw         $a0, 0x28($sp)
    /* 1F7B68 802DEE58 AFB00018 */  sw         $s0, 0x18($sp)
    /* 1F7B6C 802DEE5C 93A4002B */  lbu        $a0, 0x2B($sp)
    /* 1F7B70 802DEE60 00002825 */  or         $a1, $zero, $zero
    /* 1F7B74 802DEE64 2406FFBB */  addiu      $a2, $zero, -0x45
    /* 1F7B78 802DEE68 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 1F7B7C 802DEE6C 240702B3 */   addiu     $a3, $zero, 0x2B3
    /* 1F7B80 802DEE70 93A6002B */  lbu        $a2, 0x2B($sp)
    /* 1F7B84 802DEE74 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 1F7B88 802DEE78 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 1F7B8C 802DEE7C 00067080 */  sll        $t6, $a2, 2
    /* 1F7B90 802DEE80 01C67021 */  addu       $t6, $t6, $a2
    /* 1F7B94 802DEE84 000E7100 */  sll        $t6, $t6, 4
    /* 1F7B98 802DEE88 01CF8021 */  addu       $s0, $t6, $t7
    /* 1F7B9C 802DEE8C 9203000D */  lbu        $v1, 0xD($s0)
    /* 1F7BA0 802DEE90 3C198015 */  lui        $t9, %hi(D_8014DD50)
    /* 1F7BA4 802DEE94 2739DD50 */  addiu      $t9, $t9, %lo(D_8014DD50)
    /* 1F7BA8 802DEE98 0003C100 */  sll        $t8, $v1, 4
    /* 1F7BAC 802DEE9C 03191021 */  addu       $v0, $t8, $t9
    /* 1F7BB0 802DEEA0 94480008 */  lhu        $t0, 0x8($v0)
    /* 1F7BB4 802DEEA4 8604002C */  lh         $a0, 0x2C($s0)
    /* 1F7BB8 802DEEA8 8E050020 */  lw         $a1, 0x20($s0)
    /* 1F7BBC 802DEEAC 240707D0 */  addiu      $a3, $zero, 0x7D0
    /* 1F7BC0 802DEEB0 01044821 */  addu       $t1, $t0, $a0
    /* 1F7BC4 802DEEB4 30AA1000 */  andi       $t2, $a1, 0x1000
    /* 1F7BC8 802DEEB8 11400003 */  beqz       $t2, .L802DEEC8_1F7BD8
    /* 1F7BCC 802DEEBC A4490008 */   sh        $t1, 0x8($v0)
    /* 1F7BD0 802DEEC0 10000001 */  b          .L802DEEC8_1F7BD8
    /* 1F7BD4 802DEEC4 24072710 */   addiu     $a3, $zero, 0x2710
  .L802DEEC8_1F7BD8:
    /* 1F7BD8 802DEEC8 30AB2000 */  andi       $t3, $a1, 0x2000
    /* 1F7BDC 802DEECC 1160001A */  beqz       $t3, .L802DEF38_1F7C48
    /* 1F7BE0 802DEED0 2405025C */   addiu     $a1, $zero, 0x25C
    /* 1F7BE4 802DEED4 A600001E */  sh         $zero, 0x1E($s0)
    /* 1F7BE8 802DEED8 00C02025 */  or         $a0, $a2, $zero
    /* 1F7BEC 802DEEDC 0C04DD1A */  jal        func_80137468_146418
    /* 1F7BF0 802DEEE0 AFA70020 */   sw        $a3, 0x20($sp)
    /* 1F7BF4 802DEEE4 24040100 */  addiu      $a0, $zero, 0x100
    /* 1F7BF8 802DEEE8 0C021C36 */  jal        func_800870D8_96088
    /* 1F7BFC 802DEEEC 92050026 */   lbu       $a1, 0x26($s0)
    /* 1F7C00 802DEEF0 00023400 */  sll        $a2, $v0, 16
    /* 1F7C04 802DEEF4 00066403 */  sra        $t4, $a2, 16
    /* 1F7C08 802DEEF8 01803025 */  or         $a2, $t4, $zero
    /* 1F7C0C 802DEEFC 93A4002B */  lbu        $a0, 0x2B($sp)
    /* 1F7C10 802DEF00 0C021A8D */  jal        func_80086A34_959E4
    /* 1F7C14 802DEF04 00002825 */   or        $a1, $zero, $zero
    /* 1F7C18 802DEF08 92030036 */  lbu        $v1, 0x36($s0)
    /* 1F7C1C 802DEF0C 8FA70020 */  lw         $a3, 0x20($sp)
    /* 1F7C20 802DEF10 10600004 */  beqz       $v1, .L802DEF24_1F7C34
    /* 1F7C24 802DEF14 246DFFFF */   addiu     $t5, $v1, -0x1
    /* 1F7C28 802DEF18 A20D0036 */  sb         $t5, 0x36($s0)
    /* 1F7C2C 802DEF1C 10000006 */  b          .L802DEF38_1F7C48
    /* 1F7C30 802DEF20 8604002C */   lh        $a0, 0x2C($s0)
  .L802DEF24_1F7C34:
    /* 1F7C34 802DEF24 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 1F7C38 802DEF28 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 1F7C3C 802DEF2C 8604002C */  lh         $a0, 0x2C($s0)
    /* 1F7C40 802DEF30 01C17824 */  and        $t7, $t6, $at
    /* 1F7C44 802DEF34 AE0F0020 */  sw         $t7, 0x20($s0)
  .L802DEF38_1F7C48:
    /* 1F7C48 802DEF38 0087082A */  slt        $at, $a0, $a3
    /* 1F7C4C 802DEF3C 10200003 */  beqz       $at, .L802DEF4C_1F7C5C
    /* 1F7C50 802DEF40 24980190 */   addiu     $t8, $a0, 0x190
    /* 1F7C54 802DEF44 10000005 */  b          .L802DEF5C_1F7C6C
    /* 1F7C58 802DEF48 A618002C */   sh        $t8, 0x2C($s0)
  .L802DEF4C_1F7C5C:
    /* 1F7C5C 802DEF4C 00E4082A */  slt        $at, $a3, $a0
    /* 1F7C60 802DEF50 10200002 */  beqz       $at, .L802DEF5C_1F7C6C
    /* 1F7C64 802DEF54 2499FE70 */   addiu     $t9, $a0, -0x190
    /* 1F7C68 802DEF58 A619002C */  sh         $t9, 0x2C($s0)
  .L802DEF5C_1F7C6C:
    /* 1F7C6C 802DEF5C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 1F7C70 802DEF60 8FB00018 */  lw         $s0, 0x18($sp)
    /* 1F7C74 802DEF64 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 1F7C78 802DEF68 03E00008 */  jr         $ra
    /* 1F7C7C 802DEF6C 00000000 */   nop
endlabel func_802DEE4C_1F7B5C
