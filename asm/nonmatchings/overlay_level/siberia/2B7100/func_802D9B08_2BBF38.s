nonmatching func_802D9B08_2BBF38, 0xF4

glabel func_802D9B08_2BBF38
    /* 2BBF38 802D9B08 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2BBF3C 802D9B0C 000E7880 */  sll        $t7, $t6, 2
    /* 2BBF40 802D9B10 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BBF44 802D9B14 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BBF48 802D9B18 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BBF4C 802D9B1C 000F7900 */  sll        $t7, $t7, 4
    /* 2BBF50 802D9B20 01F81821 */  addu       $v1, $t7, $t8
    /* 2BBF54 802D9B24 8C790020 */  lw         $t9, 0x20($v1)
    /* 2BBF58 802D9B28 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 2BBF5C 802D9B2C AFA40030 */  sw         $a0, 0x30($sp)
    /* 2BBF60 802D9B30 33281000 */  andi       $t0, $t9, 0x1000
    /* 2BBF64 802D9B34 01C02025 */  or         $a0, $t6, $zero
    /* 2BBF68 802D9B38 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 2BBF6C 802D9B3C AFA50034 */  sw         $a1, 0x34($sp)
    /* 2BBF70 802D9B40 1100002A */  beqz       $t0, .L802D9BEC_2BC01C
    /* 2BBF74 802D9B44 AFA60038 */   sw        $a2, 0x38($sp)
    /* 2BBF78 802D9B48 87A90036 */  lh         $t1, 0x36($sp)
    /* 2BBF7C 802D9B4C 87AA003A */  lh         $t2, 0x3A($sp)
    /* 2BBF80 802D9B50 3C0B802E */  lui        $t3, %hi(D_802E1ED4)
    /* 2BBF84 802D9B54 256B1ED4 */  addiu      $t3, $t3, %lo(D_802E1ED4)
    /* 2BBF88 802D9B58 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 2BBF8C 802D9B5C 24050002 */  addiu      $a1, $zero, 0x2
    /* 2BBF90 802D9B60 2406000D */  addiu      $a2, $zero, 0xD
    /* 2BBF94 802D9B64 27A7002C */  addiu      $a3, $sp, 0x2C
    /* 2BBF98 802D9B68 AFA30024 */  sw         $v1, 0x24($sp)
    /* 2BBF9C 802D9B6C A3AE0033 */  sb         $t6, 0x33($sp)
    /* 2BBFA0 802D9B70 A7A9002C */  sh         $t1, 0x2C($sp)
    /* 2BBFA4 802D9B74 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2BBFA8 802D9B78 A7AA002E */   sh        $t2, 0x2E($sp)
    /* 2BBFAC 802D9B7C 304C00FF */  andi       $t4, $v0, 0xFF
    /* 2BBFB0 802D9B80 258DFFFF */  addiu      $t5, $t4, -0x1
    /* 2BBFB4 802D9B84 2DA1000D */  sltiu      $at, $t5, 0xD
    /* 2BBFB8 802D9B88 8FA30024 */  lw         $v1, 0x24($sp)
    /* 2BBFBC 802D9B8C 10200017 */  beqz       $at, .L802D9BEC_2BC01C
    /* 2BBFC0 802D9B90 93A70033 */   lbu       $a3, 0x33($sp)
    /* 2BBFC4 802D9B94 000D6880 */  sll        $t5, $t5, 2
    /* 2BBFC8 802D9B98 3C01802E */  lui        $at, %hi(jtbl_802E300C_overlay_level_siberia)
    /* 2BBFCC 802D9B9C 002D0821 */  addu       $at, $at, $t5
    /* 2BBFD0 802D9BA0 8C2D300C */  lw         $t5, %lo(jtbl_802E300C_overlay_level_siberia)($at)
    /* 2BBFD4 802D9BA4 01A00008 */  jr         $t5
    /* 2BBFD8 802D9BA8 00000000 */   nop
    /* 2BBFDC 802D9BAC 00E02025 */  or         $a0, $a3, $zero
    /* 2BBFE0 802D9BB0 0C04DD1A */  jal        func_80137468_146418
    /* 2BBFE4 802D9BB4 24050192 */   addiu     $a1, $zero, 0x192
    /* 2BBFE8 802D9BB8 1000000D */  b          .L802D9BF0_2BC020
    /* 2BBFEC 802D9BBC 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 2BBFF0 802D9BC0 A460001E */  sh         $zero, 0x1E($v1)
    /* 2BBFF4 802D9BC4 30E400FF */  andi       $a0, $a3, 0xFF
    /* 2BBFF8 802D9BC8 00002825 */  or         $a1, $zero, $zero
    /* 2BBFFC 802D9BCC 0C021C62 */  jal        func_80087188_96138
    /* 2BC000 802D9BD0 24060010 */   addiu     $a2, $zero, 0x10
    /* 2BC004 802D9BD4 10000006 */  b          .L802D9BF0_2BC020
    /* 2BC008 802D9BD8 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 2BC00C 802D9BDC 8C6E0020 */  lw         $t6, 0x20($v1)
    /* 2BC010 802D9BE0 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 2BC014 802D9BE4 01C17824 */  and        $t7, $t6, $at
    /* 2BC018 802D9BE8 AC6F0020 */  sw         $t7, 0x20($v1)
  .L802D9BEC_2BC01C:
    /* 2BC01C 802D9BEC 8FBF001C */  lw         $ra, 0x1C($sp)
  .L802D9BF0_2BC020:
    /* 2BC020 802D9BF0 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 2BC024 802D9BF4 03E00008 */  jr         $ra
    /* 2BC028 802D9BF8 00000000 */   nop
endlabel func_802D9B08_2BBF38
