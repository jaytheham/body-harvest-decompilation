nonmatching func_802D90C8_191BD8, 0x54

glabel func_802D90C8_191BD8
    /* 191BD8 802D90C8 308E00FF */  andi       $t6, $a0, 0xFF
    /* 191BDC 802D90CC 000E7880 */  sll        $t7, $t6, 2
    /* 191BE0 802D90D0 01EE7821 */  addu       $t7, $t7, $t6
    /* 191BE4 802D90D4 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 191BE8 802D90D8 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 191BEC 802D90DC 000F7900 */  sll        $t7, $t7, 4
    /* 191BF0 802D90E0 01F81021 */  addu       $v0, $t7, $t8
    /* 191BF4 802D90E4 8C590020 */  lw         $t9, 0x20($v0)
    /* 191BF8 802D90E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 191BFC 802D90EC 3C01BFFF */  lui        $at, (0xBFFFEFFF >> 16)
    /* 191C00 802D90F0 3421EFFF */  ori        $at, $at, (0xBFFFEFFF & 0xFFFF)
    /* 191C04 802D90F4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 191C08 802D90F8 AFA40018 */  sw         $a0, 0x18($sp)
    /* 191C0C 802D90FC 03214024 */  and        $t0, $t9, $at
    /* 191C10 802D9100 01C02025 */  or         $a0, $t6, $zero
    /* 191C14 802D9104 0C021CEA */  jal        func_800873A8_96358
    /* 191C18 802D9108 AC480020 */   sw        $t0, 0x20($v0)
    /* 191C1C 802D910C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 191C20 802D9110 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 191C24 802D9114 03E00008 */  jr         $ra
    /* 191C28 802D9118 00000000 */   nop
endlabel func_802D90C8_191BD8
