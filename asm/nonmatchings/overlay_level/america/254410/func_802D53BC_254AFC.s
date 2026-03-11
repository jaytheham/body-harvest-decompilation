nonmatching func_802D53BC_254AFC, 0x84

glabel func_802D53BC_254AFC
    /* 254AFC 802D53BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 254B00 802D53C0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 254B04 802D53C4 0C01E55B */  jal        func_8007956C_8851C
    /* 254B08 802D53C8 24040012 */   addiu     $a0, $zero, 0x12
    /* 254B0C 802D53CC 3C04802E */  lui        $a0, %hi(D_802E0E44)
    /* 254B10 802D53D0 24840E44 */  addiu      $a0, $a0, %lo(D_802E0E44)
    /* 254B14 802D53D4 304300FF */  andi       $v1, $v0, 0xFF
    /* 254B18 802D53D8 240100FF */  addiu      $at, $zero, 0xFF
    /* 254B1C 802D53DC 10610014 */  beq        $v1, $at, .L802D5430_254B70
    /* 254B20 802D53E0 A0820000 */   sb        $v0, 0x0($a0)
    /* 254B24 802D53E4 240E0005 */  addiu      $t6, $zero, 0x5
    /* 254B28 802D53E8 3C018015 */  lui        $at, %hi(D_80157E7C)
    /* 254B2C 802D53EC 0003C080 */  sll        $t8, $v1, 2
    /* 254B30 802D53F0 AC2E7E7C */  sw         $t6, %lo(D_80157E7C)($at)
    /* 254B34 802D53F4 0303C021 */  addu       $t8, $t8, $v1
    /* 254B38 802D53F8 3C198005 */  lui        $t9, %hi(alienInstances)
    /* 254B3C 802D53FC 3C018025 */  lui        $at, %hi(D_80256DEC)
    /* 254B40 802D5400 240F006F */  addiu      $t7, $zero, 0x6F
    /* 254B44 802D5404 27398198 */  addiu      $t9, $t9, %lo(alienInstances)
    /* 254B48 802D5408 0018C100 */  sll        $t8, $t8, 4
    /* 254B4C 802D540C AC2F6DEC */  sw         $t7, %lo(D_80256DEC)($at)
    /* 254B50 802D5410 03191021 */  addu       $v0, $t8, $t9
    /* 254B54 802D5414 2408555C */  addiu      $t0, $zero, 0x555C
    /* 254B58 802D5418 2409568A */  addiu      $t1, $zero, 0x568A
    /* 254B5C 802D541C 240A0004 */  addiu      $t2, $zero, 0x4
    /* 254B60 802D5420 A4480000 */  sh         $t0, 0x0($v0)
    /* 254B64 802D5424 A4490004 */  sh         $t1, 0x4($v0)
    /* 254B68 802D5428 A4400002 */  sh         $zero, 0x2($v0)
    /* 254B6C 802D542C A04A0024 */  sb         $t2, 0x24($v0)
  .L802D5430_254B70:
    /* 254B70 802D5430 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 254B74 802D5434 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 254B78 802D5438 03E00008 */  jr         $ra
    /* 254B7C 802D543C 00000000 */   nop
endlabel func_802D53BC_254AFC
