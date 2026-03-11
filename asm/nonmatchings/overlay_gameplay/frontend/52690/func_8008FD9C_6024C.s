nonmatching func_8008FD9C_6024C, 0x54

glabel func_8008FD9C_6024C
    /* 6024C 8008FD9C 3C048006 */  lui        $a0, %hi(D_8005BB2C)
    /* 60250 8008FDA0 2484BB2C */  addiu      $a0, $a0, %lo(D_8005BB2C)
    /* 60254 8008FDA4 8C830000 */  lw         $v1, 0x0($a0)
    /* 60258 8008FDA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 6025C 8008FDAC 3C188003 */  lui        $t8, %hi(D_80031160)
    /* 60260 8008FDB0 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 60264 8008FDB4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 60268 8008FDB8 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 6026C 8008FDBC 27181160 */  addiu      $t8, $t8, %lo(D_80031160)
    /* 60270 8008FDC0 3C0F0102 */  lui        $t7, (0x1020040 >> 16)
    /* 60274 8008FDC4 246E0008 */  addiu      $t6, $v1, 0x8
    /* 60278 8008FDC8 AC8E0000 */  sw         $t6, 0x0($a0)
    /* 6027C 8008FDCC 35EF0040 */  ori        $t7, $t7, (0x1020040 & 0xFFFF)
    /* 60280 8008FDD0 0301C824 */  and        $t9, $t8, $at
    /* 60284 8008FDD4 AC790004 */  sw         $t9, 0x4($v1)
    /* 60288 8008FDD8 0C023663 */  jal        func_8008D98C_5DE3C
    /* 6028C 8008FDDC AC6F0000 */   sw        $t7, 0x0($v1)
    /* 60290 8008FDE0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 60294 8008FDE4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 60298 8008FDE8 03E00008 */  jr         $ra
    /* 6029C 8008FDEC 00000000 */   nop
endlabel func_8008FD9C_6024C
