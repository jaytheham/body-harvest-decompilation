nonmatching debug_printModelSegmentStart, 0x38

glabel debug_printModelSegmentStart
    /* 12834 80011C34 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 12838 80011C38 AFA40018 */  sw         $a0, 0x18($sp)
    /* 1283C 80011C3C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 12840 80011C40 3C048004 */  lui        $a0, %hi(D_800380C4)
    /* 12844 80011C44 0C00731B */  jal        osSyncPrintf
    /* 12848 80011C48 248480C4 */   addiu     $a0, $a0, %lo(D_800380C4)
    /* 1284C 80011C4C 3C048004 */  lui        $a0, %hi(D_800380E4)
    /* 12850 80011C50 248480E4 */  addiu      $a0, $a0, %lo(D_800380E4)
    /* 12854 80011C54 0C00731B */  jal        osSyncPrintf
    /* 12858 80011C58 8FA50018 */   lw        $a1, 0x18($sp)
    /* 1285C 80011C5C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 12860 80011C60 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 12864 80011C64 03E00008 */  jr         $ra
    /* 12868 80011C68 00000000 */   nop
endlabel debug_printModelSegmentStart
