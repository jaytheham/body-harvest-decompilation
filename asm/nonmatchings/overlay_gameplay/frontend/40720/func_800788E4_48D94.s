nonmatching func_800788E4_48D94, 0x84

glabel func_800788E4_48D94
    /* 48D94 800788E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 48D98 800788E8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 48D9C 800788EC 240E0001 */  addiu      $t6, $zero, 0x1
    /* 48DA0 800788F0 3C018004 */  lui        $at, %hi(currentLevel)
    /* 48DA4 800788F4 0C001431 */  jal        func_800050C4_5CC4
    /* 48DA8 800788F8 AC2E7F90 */   sw        $t6, %lo(currentLevel)($at)
    /* 48DAC 800788FC 3C028003 */  lui        $v0, %hi(D_80031B84)
    /* 48DB0 80078900 8C421B84 */  lw         $v0, %lo(D_80031B84)($v0)
    /* 48DB4 80078904 3C038006 */  lui        $v1, %hi(D_8005BB48)
    /* 48DB8 80078908 2463BB48 */  addiu      $v1, $v1, %lo(D_8005BB48)
    /* 48DBC 8007890C 38590001 */  xori       $t9, $v0, 0x1
    /* 48DC0 80078910 00194080 */  sll        $t0, $t9, 2
    /* 48DC4 80078914 00027880 */  sll        $t7, $v0, 2
    /* 48DC8 80078918 006FC021 */  addu       $t8, $v1, $t7
    /* 48DCC 8007891C 00684821 */  addu       $t1, $v1, $t0
    /* 48DD0 80078920 8D250000 */  lw         $a1, 0x0($t1)
    /* 48DD4 80078924 0C003727 */  jal        func_8000DC9C_E89C
    /* 48DD8 80078928 8F040000 */   lw        $a0, 0x0($t8)
    /* 48DDC 8007892C 0C001417 */  jal        func_8000505C_5C5C
    /* 48DE0 80078930 00000000 */   nop
    /* 48DE4 80078934 3C018005 */  lui        $at, %hi(showDemoText)
    /* 48DE8 80078938 AC208034 */  sw         $zero, %lo(showDemoText)($at)
    /* 48DEC 8007893C 3C018003 */  lui        $at, %hi(D_800313C8)
    /* 48DF0 80078940 240A0001 */  addiu      $t2, $zero, 0x1
    /* 48DF4 80078944 0C001B77 */  jal        func_80006DDC_79DC
    /* 48DF8 80078948 A42A13C8 */   sh        $t2, %lo(D_800313C8)($at)
    /* 48DFC 8007894C 3C018003 */  lui        $at, %hi(D_800313C8)
    /* 48E00 80078950 0C004749 */  jal        func_80011D24_12924
    /* 48E04 80078954 A42013C8 */   sh        $zero, %lo(D_800313C8)($at)
    /* 48E08 80078958 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 48E0C 8007895C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 48E10 80078960 03E00008 */  jr         $ra
    /* 48E14 80078964 00000000 */   nop
endlabel func_800788E4_48D94
