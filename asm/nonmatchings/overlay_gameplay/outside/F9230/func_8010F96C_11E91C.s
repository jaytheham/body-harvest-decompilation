nonmatching func_8010F96C_11E91C, 0x48

glabel func_8010F96C_11E91C
    /* 11E91C 8010F96C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 11E920 8010F970 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 11E924 8010F974 AFA5001C */  sw         $a1, 0x1C($sp)
    /* 11E928 8010F978 00A07025 */  or         $t6, $a1, $zero
    /* 11E92C 8010F97C 8DC60004 */  lw         $a2, 0x4($t6)
    /* 11E930 8010F980 8DC70008 */  lw         $a3, 0x8($t6)
    /* 11E934 8010F984 8CA50000 */  lw         $a1, 0x0($a1)
    /* 11E938 8010F988 0006C403 */  sra        $t8, $a2, 16
    /* 11E93C 8010F98C 0007CC03 */  sra        $t9, $a3, 16
    /* 11E940 8010F990 00057C03 */  sra        $t7, $a1, 16
    /* 11E944 8010F994 01E02825 */  or         $a1, $t7, $zero
    /* 11E948 8010F998 03203825 */  or         $a3, $t9, $zero
    /* 11E94C 8010F99C 0C043E0D */  jal        func_8010F834_11E7E4
    /* 11E950 8010F9A0 03003025 */   or        $a2, $t8, $zero
    /* 11E954 8010F9A4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 11E958 8010F9A8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 11E95C 8010F9AC 03E00008 */  jr         $ra
    /* 11E960 8010F9B0 00000000 */   nop
endlabel func_8010F96C_11E91C
