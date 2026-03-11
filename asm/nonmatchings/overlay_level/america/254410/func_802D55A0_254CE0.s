nonmatching func_802D55A0_254CE0, 0x44

glabel func_802D55A0_254CE0
    /* 254CE0 802D55A0 3C028005 */  lui        $v0, %hi(buildingInstances)
    /* 254CE4 802D55A4 24420AD8 */  addiu      $v0, $v0, %lo(buildingInstances)
    /* 254CE8 802D55A8 904E11FA */  lbu        $t6, 0x11FA($v0)
    /* 254CEC 802D55AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 254CF0 802D55B0 2401000C */  addiu      $at, $zero, 0xC
    /* 254CF4 802D55B4 15C10004 */  bne        $t6, $at, .L802D55C8_254D08
    /* 254CF8 802D55B8 AFBF0014 */   sw        $ra, 0x14($sp)
    /* 254CFC 802D55BC 240F0032 */  addiu      $t7, $zero, 0x32
    /* 254D00 802D55C0 10000004 */  b          .L802D55D4_254D14
    /* 254D04 802D55C4 A04F11FA */   sb        $t7, 0x11FA($v0)
  .L802D55C8_254D08:
    /* 254D08 802D55C8 3C04802E */  lui        $a0, %hi(D_802E0D28)
    /* 254D0C 802D55CC 0C00731B */  jal        osSyncPrintf
    /* 254D10 802D55D0 24840D28 */   addiu     $a0, $a0, %lo(D_802E0D28)
  .L802D55D4_254D14:
    /* 254D14 802D55D4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 254D18 802D55D8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 254D1C 802D55DC 03E00008 */  jr         $ra
    /* 254D20 802D55E0 00000000 */   nop
endlabel func_802D55A0_254CE0
