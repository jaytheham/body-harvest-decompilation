nonmatching func_800073B8_7FB8, 0x58

glabel func_800073B8_7FB8
    /* 7FB8 800073B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 7FBC 800073BC AFBF0014 */  sw         $ra, 0x14($sp)
    /* 7FC0 800073C0 AFA40018 */  sw         $a0, 0x18($sp)
    /* 7FC4 800073C4 AFA5001C */  sw         $a1, 0x1C($sp)
    /* 7FC8 800073C8 8FA7001C */  lw         $a3, 0x1C($sp)
    /* 7FCC 800073CC 24050001 */  addiu      $a1, $zero, 0x1
    /* 7FD0 800073D0 8FA60018 */  lw         $a2, 0x18($sp)
    /* 7FD4 800073D4 0C007491 */  jal        __ll_lshift
    /* 7FD8 800073D8 24040000 */   addiu     $a0, $zero, 0x0
    /* 7FDC 800073DC 3C048005 */  lui        $a0, %hi(D_8004DC48)
    /* 7FE0 800073E0 2484DC48 */  addiu      $a0, $a0, %lo(D_8004DC48)
    /* 7FE4 800073E4 8C8E0000 */  lw         $t6, 0x0($a0)
    /* 7FE8 800073E8 8C8F0004 */  lw         $t7, 0x4($a0)
    /* 7FEC 800073EC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 7FF0 800073F0 0040C027 */  not        $t8, $v0
    /* 7FF4 800073F4 0060C827 */  not        $t9, $v1
    /* 7FF8 800073F8 01D84024 */  and        $t0, $t6, $t8
    /* 7FFC 800073FC 01F94824 */  and        $t1, $t7, $t9
    /* 8000 80007400 AC890004 */  sw         $t1, 0x4($a0)
    /* 8004 80007404 AC880000 */  sw         $t0, 0x0($a0)
    /* 8008 80007408 03E00008 */  jr         $ra
    /* 800C 8000740C 27BD0018 */   addiu     $sp, $sp, 0x18
endlabel func_800073B8_7FB8
