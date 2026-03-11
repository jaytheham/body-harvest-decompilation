nonmatching func_802D5578_18E088, 0xB4

glabel func_802D5578_18E088
    /* 18E088 802D5578 3C028005 */  lui        $v0, %hi(vehicleInstances)
    /* 18E08C 802D557C 2442DCD0 */  addiu      $v0, $v0, %lo(vehicleInstances)
    /* 18E090 802D5580 944E1E50 */  lhu        $t6, 0x1E50($v0)
    /* 18E094 802D5584 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 18E098 802D5588 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 18E09C 802D558C 31CF8000 */  andi       $t7, $t6, 0x8000
    /* 18E0A0 802D5590 15E00005 */  bnez       $t7, .L802D55A8_18E0B8
    /* 18E0A4 802D5594 3C04802D */   lui       $a0, %hi(func_802D5578_18E088)
    /* 18E0A8 802D5598 0C001D2F */  jal        func_800074BC_80BC
    /* 18E0AC 802D559C 24845578 */   addiu     $a0, $a0, %lo(func_802D5578_18E088)
    /* 18E0B0 802D55A0 3C028005 */  lui        $v0, %hi(vehicleInstances)
    /* 18E0B4 802D55A4 2442DCD0 */  addiu      $v0, $v0, %lo(vehicleInstances)
  .L802D55A8_18E0B8:
    /* 18E0B8 802D55A8 84581E30 */  lh         $t8, 0x1E30($v0)
    /* 18E0BC 802D55AC 2B011000 */  slti       $at, $t8, 0x1000
    /* 18E0C0 802D55B0 1020000B */  beqz       $at, .L802D55E0_18E0F0
    /* 18E0C4 802D55B4 00000000 */   nop
    /* 18E0C8 802D55B8 84591E34 */  lh         $t9, 0x1E34($v0)
    /* 18E0CC 802D55BC 2B219500 */  slti       $at, $t9, -0x6B00
    /* 18E0D0 802D55C0 10200007 */  beqz       $at, .L802D55E0_18E0F0
    /* 18E0D4 802D55C4 00000000 */   nop
    /* 18E0D8 802D55C8 94481E50 */  lhu        $t0, 0x1E50($v0)
    /* 18E0DC 802D55CC 3C04802D */  lui        $a0, %hi(func_802D5578_18E088)
    /* 18E0E0 802D55D0 24845578 */  addiu      $a0, $a0, %lo(func_802D5578_18E088)
    /* 18E0E4 802D55D4 3109FBFF */  andi       $t1, $t0, 0xFBFF
    /* 18E0E8 802D55D8 0C001D2F */  jal        func_800074BC_80BC
    /* 18E0EC 802D55DC A4491E50 */   sh        $t1, 0x1E50($v0)
  .L802D55E0_18E0F0:
    /* 18E0F0 802D55E0 3C02802E */  lui        $v0, %hi(D_802DE466)
    /* 18E0F4 802D55E4 2442E466 */  addiu      $v0, $v0, %lo(D_802DE466)
    /* 18E0F8 802D55E8 944A0000 */  lhu        $t2, 0x0($v0)
    /* 18E0FC 802D55EC 240109C4 */  addiu      $at, $zero, 0x9C4
    /* 18E100 802D55F0 3C0D8005 */  lui        $t5, %hi(D_80048030)
    /* 18E104 802D55F4 254B0001 */  addiu      $t3, $t2, 0x1
    /* 18E108 802D55F8 316CFFFF */  andi       $t4, $t3, 0xFFFF
    /* 18E10C 802D55FC 15810007 */  bne        $t4, $at, .L802D561C_18E12C
    /* 18E110 802D5600 A44B0000 */   sh        $t3, 0x0($v0)
    /* 18E114 802D5604 91AD8030 */  lbu        $t5, %lo(D_80048030)($t5)
    /* 18E118 802D5608 2401000F */  addiu      $at, $zero, 0xF
    /* 18E11C 802D560C 55A10004 */  bnel       $t5, $at, .L802D5620_18E130
    /* 18E120 802D5610 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 18E124 802D5614 0C001DA4 */  jal        func_80007690_8290
    /* 18E128 802D5618 00000000 */   nop
  .L802D561C_18E12C:
    /* 18E12C 802D561C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D5620_18E130:
    /* 18E130 802D5620 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 18E134 802D5624 03E00008 */  jr         $ra
    /* 18E138 802D5628 00000000 */   nop
endlabel func_802D5578_18E088
