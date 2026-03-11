nonmatching func_800AF764_BE714, 0x70

glabel func_800AF764_BE714
    /* BE714 800AF764 00042C00 */  sll        $a1, $a0, 16
    /* BE718 800AF768 00057403 */  sra        $t6, $a1, 16
    /* BE71C 800AF76C 000E7880 */  sll        $t7, $t6, 2
    /* BE720 800AF770 01EE7821 */  addu       $t7, $t7, $t6
    /* BE724 800AF774 000F7880 */  sll        $t7, $t7, 2
    /* BE728 800AF778 3C188022 */  lui        $t8, %hi(D_80223788)
    /* BE72C 800AF77C 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* BE730 800AF780 030FC021 */  addu       $t8, $t8, $t7
    /* BE734 800AF784 3C198015 */  lui        $t9, %hi(D_8014F820)
    /* BE738 800AF788 8F39F820 */  lw         $t9, %lo(D_8014F820)($t9)
    /* BE73C 800AF78C 8F183788 */  lw         $t8, %lo(D_80223788)($t8)
    /* BE740 800AF790 3C0B800B */  lui        $t3, %hi(func_800AFD48_BECF8)
    /* BE744 800AF794 AFBF0014 */  sw         $ra, 0x14($sp)
    /* BE748 800AF798 03194021 */  addu       $t0, $t8, $t9
    /* BE74C 800AF79C AFA40030 */  sw         $a0, 0x30($sp)
    /* BE750 800AF7A0 2509000A */  addiu      $t1, $t0, 0xA
    /* BE754 800AF7A4 240A0002 */  addiu      $t2, $zero, 0x2
    /* BE758 800AF7A8 256BFD48 */  addiu      $t3, $t3, %lo(func_800AFD48_BECF8)
    /* BE75C 800AF7AC A3AE0029 */  sb         $t6, 0x29($sp)
    /* BE760 800AF7B0 AFA90024 */  sw         $t1, 0x24($sp)
    /* BE764 800AF7B4 A3AA0020 */  sb         $t2, 0x20($sp)
    /* BE768 800AF7B8 AFAB002C */  sw         $t3, 0x2C($sp)
    /* BE76C 800AF7BC 0C02B915 */  jal        func_800AE454_BD404
    /* BE770 800AF7C0 27A40020 */   addiu     $a0, $sp, 0x20
    /* BE774 800AF7C4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* BE778 800AF7C8 27BD0030 */  addiu      $sp, $sp, 0x30
    /* BE77C 800AF7CC 03E00008 */  jr         $ra
    /* BE780 800AF7D0 00000000 */   nop
endlabel func_800AF764_BE714
