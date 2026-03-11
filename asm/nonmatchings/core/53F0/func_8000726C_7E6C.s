nonmatching func_8000726C_7E6C, 0x60

glabel func_8000726C_7E6C
    /* 7E6C 8000726C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 7E70 80007270 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 7E74 80007274 AFA40018 */  sw         $a0, 0x18($sp)
    /* 7E78 80007278 AFA5001C */  sw         $a1, 0x1C($sp)
    /* 7E7C 8000727C 8FA7001C */  lw         $a3, 0x1C($sp)
    /* 7E80 80007280 24050001 */  addiu      $a1, $zero, 0x1
    /* 7E84 80007284 8FA60018 */  lw         $a2, 0x18($sp)
    /* 7E88 80007288 0C007491 */  jal        __ll_lshift
    /* 7E8C 8000728C 24040000 */   addiu     $a0, $zero, 0x0
    /* 7E90 80007290 3C0E8005 */  lui        $t6, %hi(D_8004DC48)
    /* 7E94 80007294 8DCEDC48 */  lw         $t6, %lo(D_8004DC48)($t6)
    /* 7E98 80007298 3C0F8005 */  lui        $t7, %hi(D_8004DC4C)
    /* 7E9C 8000729C 8DEFDC4C */  lw         $t7, %lo(D_8004DC4C)($t7)
    /* 7EA0 800072A0 004EC024 */  and        $t8, $v0, $t6
    /* 7EA4 800072A4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 7EA8 800072A8 24020000 */  addiu      $v0, $zero, 0x0
    /* 7EAC 800072AC 24010000 */  addiu      $at, $zero, 0x0
    /* 7EB0 800072B0 006FC824 */  and        $t9, $v1, $t7
    /* 7EB4 800072B4 00591026 */  xor        $v0, $v0, $t9
    /* 7EB8 800072B8 00380826 */  xor        $at, $at, $t8
    /* 7EBC 800072BC 00411025 */  or         $v0, $v0, $at
    /* 7EC0 800072C0 0002102B */  sltu       $v0, $zero, $v0
    /* 7EC4 800072C4 03E00008 */  jr         $ra
    /* 7EC8 800072C8 27BD0018 */   addiu     $sp, $sp, 0x18
endlabel func_8000726C_7E6C
