nonmatching func_802D6F4C_2B937C, 0xB0

glabel func_802D6F4C_2B937C
    /* 2B937C 802D6F4C 3C028005 */  lui        $v0, %hi(buildingInstances)
    /* 2B9380 802D6F50 24420AD8 */  addiu      $v0, $v0, %lo(buildingInstances)
    /* 2B9384 802D6F54 8C430680 */  lw         $v1, 0x680($v0)
    /* 2B9388 802D6F58 8C460788 */  lw         $a2, 0x788($v0)
    /* 2B938C 802D6F5C 3C0C0001 */  lui        $t4, (0x10000 >> 16)
    /* 2B9390 802D6F60 00032B02 */  srl        $a1, $v1, 12
    /* 2B9394 802D6F64 00AC7025 */  or         $t6, $a1, $t4
    /* 2B9398 802D6F68 01C57826 */  xor        $t7, $t6, $a1
    /* 2B939C 802D6F6C 8C480620 */  lw         $t0, 0x620($v0)
    /* 2B93A0 802D6F70 000FC300 */  sll        $t8, $t7, 12
    /* 2B93A4 802D6F74 00063B02 */  srl        $a3, $a2, 12
    /* 2B93A8 802D6F78 00EC6825 */  or         $t5, $a3, $t4
    /* 2B93AC 802D6F7C 0303C826 */  xor        $t9, $t8, $v1
    /* 2B93B0 802D6F80 8C4A0818 */  lw         $t2, 0x818($v0)
    /* 2B93B4 802D6F84 01A77026 */  xor        $t6, $t5, $a3
    /* 2B93B8 802D6F88 AC590680 */  sw         $t9, 0x680($v0)
    /* 2B93BC 802D6F8C 000E7B00 */  sll        $t7, $t6, 12
    /* 2B93C0 802D6F90 00084B02 */  srl        $t1, $t0, 12
    /* 2B93C4 802D6F94 012CC825 */  or         $t9, $t1, $t4
    /* 2B93C8 802D6F98 01E6C026 */  xor        $t8, $t7, $a2
    /* 2B93CC 802D6F9C AC580788 */  sw         $t8, 0x788($v0)
    /* 2B93D0 802D6FA0 03296826 */  xor        $t5, $t9, $t1
    /* 2B93D4 802D6FA4 000A5B02 */  srl        $t3, $t2, 12
    /* 2B93D8 802D6FA8 000D7300 */  sll        $t6, $t5, 12
    /* 2B93DC 802D6FAC 016CC025 */  or         $t8, $t3, $t4
    /* 2B93E0 802D6FB0 030BC826 */  xor        $t9, $t8, $t3
    /* 2B93E4 802D6FB4 00196B00 */  sll        $t5, $t9, 12
    /* 2B93E8 802D6FB8 01C87826 */  xor        $t7, $t6, $t0
    /* 2B93EC 802D6FBC 01AA7026 */  xor        $t6, $t5, $t2
    /* 2B93F0 802D6FC0 AC4F0620 */  sw         $t7, 0x620($v0)
    /* 2B93F4 802D6FC4 AC4E0818 */  sw         $t6, 0x818($v0)
    /* 2B93F8 802D6FC8 3C018015 */  lui        $at, %hi(D_8014D17E)
    /* 2B93FC 802D6FCC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2B9400 802D6FD0 A420D17E */  sh         $zero, %lo(D_8014D17E)($at)
    /* 2B9404 802D6FD4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2B9408 802D6FD8 3C018016 */  lui        $at, %hi(D_801591C4)
    /* 2B940C 802D6FDC 3C04802D */  lui        $a0, %hi(func_802D6CA0_2B90D0)
    /* 2B9410 802D6FE0 A42091C4 */  sh         $zero, %lo(D_801591C4)($at)
    /* 2B9414 802D6FE4 0C001D04 */  jal        func_80007410_8010
    /* 2B9418 802D6FE8 24846CA0 */   addiu     $a0, $a0, %lo(func_802D6CA0_2B90D0)
    /* 2B941C 802D6FEC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2B9420 802D6FF0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2B9424 802D6FF4 03E00008 */  jr         $ra
    /* 2B9428 802D6FF8 00000000 */   nop
endlabel func_802D6F4C_2B937C
