nonmatching func_800E7234_F61E4, 0x6C

glabel func_800E7234_F61E4
    /* F61E4 800E7234 3C048006 */  lui        $a0, %hi(D_8005BB2C)
    /* F61E8 800E7238 2484BB2C */  addiu      $a0, $a0, %lo(D_8005BB2C)
    /* F61EC 800E723C 8C830000 */  lw         $v1, 0x0($a0)
    /* F61F0 800E7240 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* F61F4 800E7244 3C188003 */  lui        $t8, %hi(D_80031160)
    /* F61F8 800E7248 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* F61FC 800E724C AFBF0014 */  sw         $ra, 0x14($sp)
    /* F6200 800E7250 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* F6204 800E7254 27181160 */  addiu      $t8, $t8, %lo(D_80031160)
    /* F6208 800E7258 3C0F0102 */  lui        $t7, (0x1020040 >> 16)
    /* F620C 800E725C 246E0008 */  addiu      $t6, $v1, 0x8
    /* F6210 800E7260 AC8E0000 */  sw         $t6, 0x0($a0)
    /* F6214 800E7264 35EF0040 */  ori        $t7, $t7, (0x1020040 & 0xFFFF)
    /* F6218 800E7268 0301C824 */  and        $t9, $t8, $at
    /* F621C 800E726C AC790004 */  sw         $t9, 0x4($v1)
    /* F6220 800E7270 0C037581 */  jal        func_800DD604_EC5B4
    /* F6224 800E7274 AC6F0000 */   sw        $t7, 0x0($v1)
    /* F6228 800E7278 0C039A8E */  jal        func_800E6A38_F59E8
    /* F622C 800E727C 00000000 */   nop
    /* F6230 800E7280 0C033F61 */  jal        func_800CFD84_DED34
    /* F6234 800E7284 00000000 */   nop
    /* F6238 800E7288 0C03954E */  jal        func_800E5538_F44E8
    /* F623C 800E728C 00000000 */   nop
    /* F6240 800E7290 8FBF0014 */  lw         $ra, 0x14($sp)
    /* F6244 800E7294 27BD0018 */  addiu      $sp, $sp, 0x18
    /* F6248 800E7298 03E00008 */  jr         $ra
    /* F624C 800E729C 00000000 */   nop
endlabel func_800E7234_F61E4
