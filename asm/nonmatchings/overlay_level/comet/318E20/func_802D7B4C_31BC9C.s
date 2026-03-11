nonmatching func_802D7B4C_31BC9C, 0xD0

glabel func_802D7B4C_31BC9C
    /* 31BC9C 802D7B4C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 31BCA0 802D7B50 AFA40020 */  sw         $a0, 0x20($sp)
    /* 31BCA4 802D7B54 93AE0023 */  lbu        $t6, 0x23($sp)
    /* 31BCA8 802D7B58 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 31BCAC 802D7B5C AFB00018 */  sw         $s0, 0x18($sp)
    /* 31BCB0 802D7B60 000E7880 */  sll        $t7, $t6, 2
    /* 31BCB4 802D7B64 01EE7821 */  addu       $t7, $t7, $t6
    /* 31BCB8 802D7B68 000F7900 */  sll        $t7, $t7, 4
    /* 31BCBC 802D7B6C 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 31BCC0 802D7B70 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 31BCC4 802D7B74 01F88021 */  addu       $s0, $t7, $t8
    /* 31BCC8 802D7B78 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 31BCCC 802D7B7C 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 31BCD0 802D7B80 0C021395 */  jal        func_80084E54_93E04
    /* 31BCD4 802D7B84 02002825 */   or        $a1, $s0, $zero
    /* 31BCD8 802D7B88 28411388 */  slti       $at, $v0, 0x1388
    /* 31BCDC 802D7B8C 10200018 */  beqz       $at, .L802D7BF0_31BD40
    /* 31BCE0 802D7B90 93A40023 */   lbu       $a0, 0x23($sp)
    /* 31BCE4 802D7B94 0C0213FA */  jal        func_80084FE8_93F98
    /* 31BCE8 802D7B98 34058000 */   ori       $a1, $zero, 0x8000
    /* 31BCEC 802D7B9C 10400014 */  beqz       $v0, .L802D7BF0_31BD40
    /* 31BCF0 802D7BA0 93A40023 */   lbu       $a0, 0x23($sp)
    /* 31BCF4 802D7BA4 00002825 */  or         $a1, $zero, $zero
    /* 31BCF8 802D7BA8 0C021C73 */  jal        func_800871CC_9617C
    /* 31BCFC 802D7BAC 24060014 */   addiu     $a2, $zero, 0x14
    /* 31BD00 802D7BB0 50400012 */  beql       $v0, $zero, .L802D7BFC_31BD4C
    /* 31BD04 802D7BB4 8602001E */   lh        $v0, 0x1E($s0)
    /* 31BD08 802D7BB8 8219003D */  lb         $t9, 0x3D($s0)
    /* 31BD0C 802D7BBC 24010003 */  addiu      $at, $zero, 0x3
    /* 31BD10 802D7BC0 240A0046 */  addiu      $t2, $zero, 0x46
    /* 31BD14 802D7BC4 27280001 */  addiu      $t0, $t9, 0x1
    /* 31BD18 802D7BC8 A208003D */  sb         $t0, 0x3D($s0)
    /* 31BD1C 802D7BCC 8209003D */  lb         $t1, 0x3D($s0)
    /* 31BD20 802D7BD0 240B000C */  addiu      $t3, $zero, 0xC
    /* 31BD24 802D7BD4 15210004 */  bne        $t1, $at, .L802D7BE8_31BD38
    /* 31BD28 802D7BD8 00000000 */   nop
    /* 31BD2C 802D7BDC A60A001E */  sh         $t2, 0x1E($s0)
    /* 31BD30 802D7BE0 10000005 */  b          .L802D7BF8_31BD48
    /* 31BD34 802D7BE4 A200003D */   sb        $zero, 0x3D($s0)
  .L802D7BE8_31BD38:
    /* 31BD38 802D7BE8 10000003 */  b          .L802D7BF8_31BD48
    /* 31BD3C 802D7BEC A60B001E */   sh        $t3, 0x1E($s0)
  .L802D7BF0_31BD40:
    /* 31BD40 802D7BF0 0C020037 */  jal        func_800800DC_8F08C
    /* 31BD44 802D7BF4 93A40023 */   lbu       $a0, 0x23($sp)
  .L802D7BF8_31BD48:
    /* 31BD48 802D7BF8 8602001E */  lh         $v0, 0x1E($s0)
  .L802D7BFC_31BD4C:
    /* 31BD4C 802D7BFC 10400002 */  beqz       $v0, .L802D7C08_31BD58
    /* 31BD50 802D7C00 244CFFFF */   addiu     $t4, $v0, -0x1
    /* 31BD54 802D7C04 A60C001E */  sh         $t4, 0x1E($s0)
  .L802D7C08_31BD58:
    /* 31BD58 802D7C08 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 31BD5C 802D7C0C 8FB00018 */  lw         $s0, 0x18($sp)
    /* 31BD60 802D7C10 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 31BD64 802D7C14 03E00008 */  jr         $ra
    /* 31BD68 802D7C18 00000000 */   nop
endlabel func_802D7B4C_31BC9C
