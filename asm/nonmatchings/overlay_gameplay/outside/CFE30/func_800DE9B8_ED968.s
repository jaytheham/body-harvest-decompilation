nonmatching func_800DE9B8_ED968, 0x50

glabel func_800DE9B8_ED968
    /* ED968 800DE9B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* ED96C 800DE9BC AFA7002C */  sw         $a3, 0x2C($sp)
    /* ED970 800DE9C0 93AA002F */  lbu        $t2, 0x2F($sp)
    /* ED974 800DE9C4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* ED978 800DE9C8 AFA40020 */  sw         $a0, 0x20($sp)
    /* ED97C 800DE9CC AFA50024 */  sw         $a1, 0x24($sp)
    /* ED980 800DE9D0 AFA60028 */  sw         $a2, 0x28($sp)
    /* ED984 800DE9D4 00047400 */  sll        $t6, $a0, 16
    /* ED988 800DE9D8 0005C400 */  sll        $t8, $a1, 16
    /* ED98C 800DE9DC 00064400 */  sll        $t0, $a2, 16
    /* ED990 800DE9E0 00083403 */  sra        $a2, $t0, 16
    /* ED994 800DE9E4 00182C03 */  sra        $a1, $t8, 16
    /* ED998 800DE9E8 000E2403 */  sra        $a0, $t6, 16
    /* ED99C 800DE9EC 24070001 */  addiu      $a3, $zero, 0x1
    /* ED9A0 800DE9F0 0C0376D8 */  jal        func_800DDB60_ECB10
    /* ED9A4 800DE9F4 AFAA0010 */   sw        $t2, 0x10($sp)
    /* ED9A8 800DE9F8 8FBF001C */  lw         $ra, 0x1C($sp)
    /* ED9AC 800DE9FC 27BD0020 */  addiu      $sp, $sp, 0x20
    /* ED9B0 800DEA00 03E00008 */  jr         $ra
    /* ED9B4 800DEA04 00000000 */   nop
endlabel func_800DE9B8_ED968
