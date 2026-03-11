nonmatching leoInitUnit_atten, 0x10

glabel leoInitUnit_atten
    /* 5824 80004C24 240E0001 */  addiu      $t6, $zero, 0x1
    /* 5828 80004C28 3C018003 */  lui        $at, %hi(leomecha_bss_0004)
    /* 582C 80004C2C 03E00008 */  jr         $ra
    /* 5830 80004C30 AC2E1400 */   sw        $t6, %lo(leomecha_bss_0004)($at)
endlabel leoInitUnit_atten
