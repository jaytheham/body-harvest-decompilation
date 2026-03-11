nonmatching func_800E71F8_F61A8, 0x3C

glabel func_800E71F8_F61A8
    /* F61A8 800E71F8 3C048006 */  lui        $a0, %hi(D_8005BB2C)
    /* F61AC 800E71FC 2484BB2C */  addiu      $a0, $a0, %lo(D_8005BB2C)
    /* F61B0 800E7200 8C830000 */  lw         $v1, 0x0($a0)
    /* F61B4 800E7204 3C188003 */  lui        $t8, %hi(D_80031160)
    /* F61B8 800E7208 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* F61BC 800E720C 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* F61C0 800E7210 27181160 */  addiu      $t8, $t8, %lo(D_80031160)
    /* F61C4 800E7214 3C0F0102 */  lui        $t7, (0x1020040 >> 16)
    /* F61C8 800E7218 246E0008 */  addiu      $t6, $v1, 0x8
    /* F61CC 800E721C AC8E0000 */  sw         $t6, 0x0($a0)
    /* F61D0 800E7220 35EF0040 */  ori        $t7, $t7, (0x1020040 & 0xFFFF)
    /* F61D4 800E7224 0301C824 */  and        $t9, $t8, $at
    /* F61D8 800E7228 AC790004 */  sw         $t9, 0x4($v1)
    /* F61DC 800E722C 03E00008 */  jr         $ra
    /* F61E0 800E7230 AC6F0000 */   sw        $t7, 0x0($v1)
endlabel func_800E71F8_F61A8
