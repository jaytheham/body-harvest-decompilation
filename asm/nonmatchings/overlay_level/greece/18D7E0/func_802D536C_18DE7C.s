nonmatching func_802D536C_18DE7C, 0xC8

glabel func_802D536C_18DE7C
    /* 18DE7C 802D536C 3C0E8005 */  lui        $t6, %hi(D_8004D1B9)
    /* 18DE80 802D5370 91CED1B9 */  lbu        $t6, %lo(D_8004D1B9)($t6)
    /* 18DE84 802D5374 240F00BD */  addiu      $t7, $zero, 0xBD
    /* 18DE88 802D5378 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 18DE8C 802D537C 01EE1823 */  subu       $v1, $t7, $t6
    /* 18DE90 802D5380 0003C400 */  sll        $t8, $v1, 16
    /* 18DE94 802D5384 0018CC03 */  sra        $t9, $t8, 16
    /* 18DE98 802D5388 2B2100B5 */  slti       $at, $t9, 0xB5
    /* 18DE9C 802D538C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 18DEA0 802D5390 1020000B */  beqz       $at, .L802D53C0_18DED0
    /* 18DEA4 802D5394 03201825 */   or        $v1, $t9, $zero
    /* 18DEA8 802D5398 3C05802E */  lui        $a1, %hi(D_802DE464)
    /* 18DEAC 802D539C 24A5E464 */  addiu      $a1, $a1, %lo(D_802DE464)
    /* 18DEB0 802D53A0 84A80000 */  lh         $t0, 0x0($a1)
    /* 18DEB4 802D53A4 3324FFFF */  andi       $a0, $t9, 0xFFFF
    /* 18DEB8 802D53A8 2901000A */  slti       $at, $t0, 0xA
    /* 18DEBC 802D53AC 14200004 */  bnez       $at, .L802D53C0_18DED0
    /* 18DEC0 802D53B0 00000000 */   nop
    /* 18DEC4 802D53B4 0C026FD9 */  jal        func_8009BF64_AAF14
    /* 18DEC8 802D53B8 A7B9001E */   sh        $t9, 0x1E($sp)
    /* 18DECC 802D53BC 87A3001E */  lh         $v1, 0x1E($sp)
  .L802D53C0_18DED0:
    /* 18DED0 802D53C0 3C05802E */  lui        $a1, %hi(D_802DE464)
    /* 18DED4 802D53C4 24A5E464 */  addiu      $a1, $a1, %lo(D_802DE464)
    /* 18DED8 802D53C8 84A20000 */  lh         $v0, 0x0($a1)
    /* 18DEDC 802D53CC 3C04802D */  lui        $a0, %hi(func_802D536C_18DE7C)
    /* 18DEE0 802D53D0 2841000A */  slti       $at, $v0, 0xA
    /* 18DEE4 802D53D4 10200002 */  beqz       $at, .L802D53E0_18DEF0
    /* 18DEE8 802D53D8 24490001 */   addiu     $t1, $v0, 0x1
    /* 18DEEC 802D53DC A4A90000 */  sh         $t1, 0x0($a1)
  .L802D53E0_18DEF0:
    /* 18DEF0 802D53E0 1060000E */  beqz       $v1, .L802D541C_18DF2C
    /* 18DEF4 802D53E4 3C028005 */   lui       $v0, %hi(buildingInstances)
    /* 18DEF8 802D53E8 24420AD8 */  addiu      $v0, $v0, %lo(buildingInstances)
    /* 18DEFC 802D53EC 804A0537 */  lb         $t2, 0x537($v0)
    /* 18DF00 802D53F0 5D40000D */  bgtzl      $t2, .L802D5428_18DF38
    /* 18DF04 802D53F4 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18DF08 802D53F8 804B05F7 */  lb         $t3, 0x5F7($v0)
    /* 18DF0C 802D53FC 5D60000A */  bgtzl      $t3, .L802D5428_18DF38
    /* 18DF10 802D5400 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18DF14 802D5404 804C0567 */  lb         $t4, 0x567($v0)
    /* 18DF18 802D5408 5D800007 */  bgtzl      $t4, .L802D5428_18DF38
    /* 18DF1C 802D540C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18DF20 802D5410 804D05DF */  lb         $t5, 0x5DF($v0)
    /* 18DF24 802D5414 5DA00004 */  bgtzl      $t5, .L802D5428_18DF38
    /* 18DF28 802D5418 8FBF0014 */   lw        $ra, 0x14($sp)
  .L802D541C_18DF2C:
    /* 18DF2C 802D541C 0C001D2F */  jal        func_800074BC_80BC
    /* 18DF30 802D5420 2484536C */   addiu     $a0, $a0, %lo(func_802D536C_18DE7C)
    /* 18DF34 802D5424 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D5428_18DF38:
    /* 18DF38 802D5428 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 18DF3C 802D542C 03E00008 */  jr         $ra
    /* 18DF40 802D5430 00000000 */   nop
endlabel func_802D536C_18DE7C
