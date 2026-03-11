nonmatching func_80004C8C_588C, 0x3C

glabel func_80004C8C_588C
    /* 588C 80004C8C 3C048006 */  lui        $a0, %hi(D_8005BB2C)
    /* 5890 80004C90 2484BB2C */  addiu      $a0, $a0, %lo(D_8005BB2C)
    /* 5894 80004C94 8C830000 */  lw         $v1, 0x0($a0)
    /* 5898 80004C98 3C0FBC00 */  lui        $t7, (0xBC000806 >> 16)
    /* 589C 80004C9C 35EF0806 */  ori        $t7, $t7, (0xBC000806 & 0xFFFF)
    /* 58A0 80004CA0 246E0008 */  addiu      $t6, $v1, 0x8
    /* 58A4 80004CA4 AC8E0000 */  sw         $t6, 0x0($a0)
    /* 58A8 80004CA8 3C188006 */  lui        $t8, %hi(D_8005BB20)
    /* 58AC 80004CAC AC6F0000 */  sw         $t7, 0x0($v1)
    /* 58B0 80004CB0 8F18BB20 */  lw         $t8, %lo(D_8005BB20)($t8)
    /* 58B4 80004CB4 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 58B8 80004CB8 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 58BC 80004CBC 0301C824 */  and        $t9, $t8, $at
    /* 58C0 80004CC0 03E00008 */  jr         $ra
    /* 58C4 80004CC4 AC790004 */   sw        $t9, 0x4($v1)
endlabel func_80004C8C_588C
