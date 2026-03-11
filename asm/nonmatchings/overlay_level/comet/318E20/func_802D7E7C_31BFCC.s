nonmatching func_802D7E7C_31BFCC, 0x94

glabel func_802D7E7C_31BFCC
    /* 31BFCC 802D7E7C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 31BFD0 802D7E80 000E7880 */  sll        $t7, $t6, 2
    /* 31BFD4 802D7E84 01EE7821 */  addu       $t7, $t7, $t6
    /* 31BFD8 802D7E88 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 31BFDC 802D7E8C 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 31BFE0 802D7E90 000F7900 */  sll        $t7, $t7, 4
    /* 31BFE4 802D7E94 01F81821 */  addu       $v1, $t7, $t8
    /* 31BFE8 802D7E98 8C790020 */  lw         $t9, 0x20($v1)
    /* 31BFEC 802D7E9C 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 31BFF0 802D7EA0 AFA40030 */  sw         $a0, 0x30($sp)
    /* 31BFF4 802D7EA4 33282000 */  andi       $t0, $t9, 0x2000
    /* 31BFF8 802D7EA8 01C02025 */  or         $a0, $t6, $zero
    /* 31BFFC 802D7EAC AFBF001C */  sw         $ra, 0x1C($sp)
    /* 31C000 802D7EB0 11000013 */  beqz       $t0, .L802D7F00_31C050
    /* 31C004 802D7EB4 AFA50034 */   sw        $a1, 0x34($sp)
    /* 31C008 802D7EB8 87A90036 */  lh         $t1, 0x36($sp)
    /* 31C00C 802D7EBC 3C0A802E */  lui        $t2, %hi(D_802E4FB4)
    /* 31C010 802D7EC0 254A4FB4 */  addiu      $t2, $t2, %lo(D_802E4FB4)
    /* 31C014 802D7EC4 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 31C018 802D7EC8 24050001 */  addiu      $a1, $zero, 0x1
    /* 31C01C 802D7ECC 24060002 */  addiu      $a2, $zero, 0x2
    /* 31C020 802D7ED0 27A7002C */  addiu      $a3, $sp, 0x2C
    /* 31C024 802D7ED4 AFA30024 */  sw         $v1, 0x24($sp)
    /* 31C028 802D7ED8 0C0207C6 */  jal        func_80081F18_90EC8
    /* 31C02C 802D7EDC A7A9002C */   sh        $t1, 0x2C($sp)
    /* 31C030 802D7EE0 304B00FF */  andi       $t3, $v0, 0xFF
    /* 31C034 802D7EE4 24010002 */  addiu      $at, $zero, 0x2
    /* 31C038 802D7EE8 15610005 */  bne        $t3, $at, .L802D7F00_31C050
    /* 31C03C 802D7EEC 8FA30024 */   lw        $v1, 0x24($sp)
    /* 31C040 802D7EF0 8C6C0020 */  lw         $t4, 0x20($v1)
    /* 31C044 802D7EF4 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 31C048 802D7EF8 01816824 */  and        $t5, $t4, $at
    /* 31C04C 802D7EFC AC6D0020 */  sw         $t5, 0x20($v1)
  .L802D7F00_31C050:
    /* 31C050 802D7F00 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 31C054 802D7F04 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 31C058 802D7F08 03E00008 */  jr         $ra
    /* 31C05C 802D7F0C 00000000 */   nop
endlabel func_802D7E7C_31BFCC
