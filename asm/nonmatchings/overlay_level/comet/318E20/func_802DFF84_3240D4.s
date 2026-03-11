nonmatching func_802DFF84_3240D4, 0x44

glabel func_802DFF84_3240D4
    /* 3240D4 802DFF84 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 3240D8 802DFF88 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 3240DC 802DFF8C AFA40018 */  sw         $a0, 0x18($sp)
    /* 3240E0 802DFF90 308E00FF */  andi       $t6, $a0, 0xFF
    /* 3240E4 802DFF94 0C0B7FC1 */  jal        func_802DFF04_324054
    /* 3240E8 802DFF98 01C02025 */   or        $a0, $t6, $zero
    /* 3240EC 802DFF9C 3C048015 */  lui        $a0, %hi(D_8014DD50)
    /* 3240F0 802DFFA0 2484DD50 */  addiu      $a0, $a0, %lo(D_8014DD50)
    /* 3240F4 802DFFA4 00027900 */  sll        $t7, $v0, 4
    /* 3240F8 802DFFA8 008FC021 */  addu       $t8, $a0, $t7
    /* 3240FC 802DFFAC 8303000C */  lb         $v1, 0xC($t8)
    /* 324100 802DFFB0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 324104 802DFFB4 0003C900 */  sll        $t9, $v1, 4
    /* 324108 802DFFB8 00994021 */  addu       $t0, $a0, $t9
    /* 32410C 802DFFBC 8102000D */  lb         $v0, 0xD($t0)
    /* 324110 802DFFC0 03E00008 */  jr         $ra
    /* 324114 802DFFC4 27BD0018 */   addiu     $sp, $sp, 0x18
endlabel func_802DFF84_3240D4
