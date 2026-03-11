nonmatching func_802DFFC8_324118, 0x50

glabel func_802DFFC8_324118
    /* 324118 802DFFC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 32411C 802DFFCC AFBF0014 */  sw         $ra, 0x14($sp)
    /* 324120 802DFFD0 AFA40018 */  sw         $a0, 0x18($sp)
    /* 324124 802DFFD4 308E00FF */  andi       $t6, $a0, 0xFF
    /* 324128 802DFFD8 0C0B7FC1 */  jal        func_802DFF04_324054
    /* 32412C 802DFFDC 01C02025 */   or        $a0, $t6, $zero
    /* 324130 802DFFE0 3C048015 */  lui        $a0, %hi(D_8014DD50)
    /* 324134 802DFFE4 2484DD50 */  addiu      $a0, $a0, %lo(D_8014DD50)
    /* 324138 802DFFE8 00027900 */  sll        $t7, $v0, 4
    /* 32413C 802DFFEC 008FC021 */  addu       $t8, $a0, $t7
    /* 324140 802DFFF0 8303000C */  lb         $v1, 0xC($t8)
    /* 324144 802DFFF4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 324148 802DFFF8 0003C900 */  sll        $t9, $v1, 4
    /* 32414C 802DFFFC 00994021 */  addu       $t0, $a0, $t9
    /* 324150 802E0000 8103000D */  lb         $v1, 0xD($t0)
    /* 324154 802E0004 00034900 */  sll        $t1, $v1, 4
    /* 324158 802E0008 00895021 */  addu       $t2, $a0, $t1
    /* 32415C 802E000C 8142000D */  lb         $v0, 0xD($t2)
    /* 324160 802E0010 03E00008 */  jr         $ra
    /* 324164 802E0014 27BD0018 */   addiu     $sp, $sp, 0x18
endlabel func_802DFFC8_324118
