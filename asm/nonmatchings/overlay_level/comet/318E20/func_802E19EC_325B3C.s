nonmatching func_802E19EC_325B3C, 0xF8

glabel func_802E19EC_325B3C
    /* 325B3C 802E19EC 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 325B40 802E19F0 AFA40030 */  sw         $a0, 0x30($sp)
    /* 325B44 802E19F4 93AE0033 */  lbu        $t6, 0x33($sp)
    /* 325B48 802E19F8 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 325B4C 802E19FC 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 325B50 802E1A00 000E7880 */  sll        $t7, $t6, 2
    /* 325B54 802E1A04 01EE7821 */  addu       $t7, $t7, $t6
    /* 325B58 802E1A08 000F7900 */  sll        $t7, $t7, 4
    /* 325B5C 802E1A0C 01F81821 */  addu       $v1, $t7, $t8
    /* 325B60 802E1A10 9079001A */  lbu        $t9, 0x1A($v1)
    /* 325B64 802E1A14 3C09802E */  lui        $t1, %hi(D_802E7188)
    /* 325B68 802E1A18 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 325B6C 802E1A1C 25297188 */  addiu      $t1, $t1, %lo(D_802E7188)
    /* 325B70 802E1A20 A3B9002F */  sb         $t9, 0x2F($sp)
    /* 325B74 802E1A24 8D210000 */  lw         $at, 0x0($t1)
    /* 325B78 802E1A28 27A50028 */  addiu      $a1, $sp, 0x28
    /* 325B7C 802E1A2C 8064000D */  lb         $a0, 0xD($v1)
    /* 325B80 802E1A30 ACA10000 */  sw         $at, 0x0($a1)
    /* 325B84 802E1A34 95210004 */  lhu        $at, 0x4($t1)
    /* 325B88 802E1A38 A460001E */  sh         $zero, 0x1E($v1)
    /* 325B8C 802E1A3C 27A6001C */  addiu      $a2, $sp, 0x1C
    /* 325B90 802E1A40 A4A10004 */  sh         $at, 0x4($a1)
    /* 325B94 802E1A44 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 325B98 802E1A48 AFA30018 */   sw        $v1, 0x18($sp)
    /* 325B9C 802E1A4C 93AD002F */  lbu        $t5, 0x2F($sp)
    /* 325BA0 802E1A50 8FA30018 */  lw         $v1, 0x18($sp)
    /* 325BA4 802E1A54 8FB8001C */  lw         $t8, 0x1C($sp)
    /* 325BA8 802E1A58 000D7080 */  sll        $t6, $t5, 2
    /* 325BAC 802E1A5C 01CD7023 */  subu       $t6, $t6, $t5
    /* 325BB0 802E1A60 846A000C */  lh         $t2, 0xC($v1)
    /* 325BB4 802E1A64 000E7080 */  sll        $t6, $t6, 2
    /* 325BB8 802E1A68 3C0F8025 */  lui        $t7, %hi(alienSpecs)
    /* 325BBC 802E1A6C 01CD7021 */  addu       $t6, $t6, $t5
    /* 325BC0 802E1A70 000E70C0 */  sll        $t6, $t6, 3
    /* 325BC4 802E1A74 25EF6680 */  addiu      $t7, $t7, %lo(alienSpecs)
    /* 325BC8 802E1A78 3C0C8015 */  lui        $t4, %hi(D_8014DD50)
    /* 325BCC 802E1A7C 01CF1021 */  addu       $v0, $t6, $t7
    /* 325BD0 802E1A80 258CDD50 */  addiu      $t4, $t4, %lo(D_8014DD50)
    /* 325BD4 802E1A84 000A4900 */  sll        $t1, $t2, 4
    /* 325BD8 802E1A88 012C4021 */  addu       $t0, $t1, $t4
    /* 325BDC 802E1A8C A4580020 */  sh         $t8, 0x20($v0)
    /* 325BE0 802E1A90 950F000A */  lhu        $t7, 0xA($t0)
    /* 325BE4 802E1A94 8478000A */  lh         $t8, 0xA($v1)
    /* 325BE8 802E1A98 8FB90020 */  lw         $t9, 0x20($sp)
    /* 325BEC 802E1A9C 95060006 */  lhu        $a2, 0x6($t0)
    /* 325BF0 802E1AA0 01F83821 */  addu       $a3, $t7, $t8
    /* 325BF4 802E1AA4 8FAB0024 */  lw         $t3, 0x24($sp)
    /* 325BF8 802E1AA8 24E70FA0 */  addiu      $a3, $a3, 0xFA0
    /* 325BFC 802E1AAC A4590022 */  sh         $t9, 0x22($v0)
    /* 325C00 802E1AB0 00063023 */  negu       $a2, $a2
    /* 325C04 802E1AB4 00066C00 */  sll        $t5, $a2, 16
    /* 325C08 802E1AB8 0007CC00 */  sll        $t9, $a3, 16
    /* 325C0C 802E1ABC 00193C03 */  sra        $a3, $t9, 16
    /* 325C10 802E1AC0 000D3403 */  sra        $a2, $t5, 16
    /* 325C14 802E1AC4 93A40033 */  lbu        $a0, 0x33($sp)
    /* 325C18 802E1AC8 00002825 */  or         $a1, $zero, $zero
    /* 325C1C 802E1ACC 0C021A29 */  jal        func_800868A4_95854
    /* 325C20 802E1AD0 A44B0024 */   sh        $t3, 0x24($v0)
    /* 325C24 802E1AD4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 325C28 802E1AD8 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 325C2C 802E1ADC 03E00008 */  jr         $ra
    /* 325C30 802E1AE0 00000000 */   nop
endlabel func_802E19EC_325B3C
