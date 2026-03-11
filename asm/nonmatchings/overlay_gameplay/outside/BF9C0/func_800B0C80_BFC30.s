nonmatching func_800B0C80_BFC30, 0x90

glabel func_800B0C80_BFC30
    /* BFC30 800B0C80 3C0F8004 */  lui        $t7, %hi(currentLevel)
    /* BFC34 800B0C84 3C198004 */  lui        $t9, %hi(D_80047F94)
    /* BFC38 800B0C88 8F397F94 */  lw         $t9, %lo(D_80047F94)($t9)
    /* BFC3C 800B0C8C 8DEF7F90 */  lw         $t7, %lo(currentLevel)($t7)
    /* BFC40 800B0C90 3C0B8014 */  lui        $t3, %hi(D_80147C30)
    /* BFC44 800B0C94 00194080 */  sll        $t0, $t9, 2
    /* BFC48 800B0C98 000FC0C0 */  sll        $t8, $t7, 3
    /* BFC4C 800B0C9C 01194023 */  subu       $t0, $t0, $t9
    /* BFC50 800B0CA0 030FC021 */  addu       $t8, $t8, $t7
    /* BFC54 800B0CA4 0018C100 */  sll        $t8, $t8, 4
    /* BFC58 800B0CA8 000840C0 */  sll        $t0, $t0, 3
    /* BFC5C 800B0CAC 03084821 */  addu       $t1, $t8, $t0
    /* BFC60 800B0CB0 252AFF70 */  addiu      $t2, $t1, -0x90
    /* BFC64 800B0CB4 256B7C30 */  addiu      $t3, $t3, %lo(D_80147C30)
    /* BFC68 800B0CB8 014B6021 */  addu       $t4, $t2, $t3
    /* BFC6C 800B0CBC 89810000 */  lwl        $at, 0x0($t4)
    /* BFC70 800B0CC0 99810003 */  lwr        $at, 0x3($t4)
    /* BFC74 800B0CC4 3C0E8015 */  lui        $t6, %hi(D_8014FD30)
    /* BFC78 800B0CC8 25CEFD30 */  addiu      $t6, $t6, %lo(D_8014FD30)
    /* BFC7C 800B0CCC ADC10000 */  sw         $at, 0x0($t6)
    /* BFC80 800B0CD0 89990004 */  lwl        $t9, 0x4($t4)
    /* BFC84 800B0CD4 99990007 */  lwr        $t9, 0x7($t4)
    /* BFC88 800B0CD8 ADD90004 */  sw         $t9, 0x4($t6)
    /* BFC8C 800B0CDC 89810008 */  lwl        $at, 0x8($t4)
    /* BFC90 800B0CE0 9981000B */  lwr        $at, 0xB($t4)
    /* BFC94 800B0CE4 ADC10008 */  sw         $at, 0x8($t6)
    /* BFC98 800B0CE8 8999000C */  lwl        $t9, 0xC($t4)
    /* BFC9C 800B0CEC 9999000F */  lwr        $t9, 0xF($t4)
    /* BFCA0 800B0CF0 ADD9000C */  sw         $t9, 0xC($t6)
    /* BFCA4 800B0CF4 89810010 */  lwl        $at, 0x10($t4)
    /* BFCA8 800B0CF8 99810013 */  lwr        $at, 0x13($t4)
    /* BFCAC 800B0CFC ADC10010 */  sw         $at, 0x10($t6)
    /* BFCB0 800B0D00 89990014 */  lwl        $t9, 0x14($t4)
    /* BFCB4 800B0D04 99990017 */  lwr        $t9, 0x17($t4)
    /* BFCB8 800B0D08 03E00008 */  jr         $ra
    /* BFCBC 800B0D0C ADD90014 */   sw        $t9, 0x14($t6)
endlabel func_800B0C80_BFC30
