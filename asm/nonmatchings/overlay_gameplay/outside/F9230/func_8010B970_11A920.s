nonmatching func_8010B970_11A920, 0x94

glabel func_8010B970_11A920
    /* 11A920 8010B970 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 11A924 8010B974 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 11A928 8010B978 AFA40020 */  sw         $a0, 0x20($sp)
    /* 11A92C 8010B97C 90AE001A */  lbu        $t6, 0x1A($a1)
    /* 11A930 8010B980 3C188025 */  lui        $t8, %hi(vehicleSpecs)
    /* 11A934 8010B984 27187A00 */  addiu      $t8, $t8, %lo(vehicleSpecs)
    /* 11A938 8010B988 000E78C0 */  sll        $t7, $t6, 3
    /* 11A93C 8010B98C 01EE7823 */  subu       $t7, $t7, $t6
    /* 11A940 8010B990 000F7900 */  sll        $t7, $t7, 4
    /* 11A944 8010B994 01F8C821 */  addu       $t9, $t7, $t8
    /* 11A948 8010B998 AFB9001C */  sw         $t9, 0x1C($sp)
    /* 11A94C 8010B99C AFA50024 */  sw         $a1, 0x24($sp)
    /* 11A950 8010B9A0 0C01E3F8 */  jal        func_80078FE0_87F90
    /* 11A954 8010B9A4 27A60018 */   addiu     $a2, $sp, 0x18
    /* 11A958 8010B9A8 1440000B */  bnez       $v0, .L8010B9D8_11A988
    /* 11A95C 8010B9AC 8FA50024 */   lw        $a1, 0x24($sp)
    /* 11A960 8010B9B0 8FA8001C */  lw         $t0, 0x1C($sp)
    /* 11A964 8010B9B4 00001025 */  or         $v0, $zero, $zero
    /* 11A968 8010B9B8 8D09004C */  lw         $t1, 0x4C($t0)
    /* 11A96C 8010B9BC 00095080 */  sll        $t2, $t1, 2
    /* 11A970 8010B9C0 0541000C */  bgez       $t2, .L8010B9F4_11A9A4
    /* 11A974 8010B9C4 00000000 */   nop
    /* 11A978 8010B9C8 94AB0020 */  lhu        $t3, 0x20($a1)
    /* 11A97C 8010B9CC 316C0002 */  andi       $t4, $t3, 0x2
    /* 11A980 8010B9D0 11800008 */  beqz       $t4, .L8010B9F4_11A9A4
    /* 11A984 8010B9D4 00000000 */   nop
  .L8010B9D8_11A988:
    /* 11A988 8010B9D8 8FA40020 */  lw         $a0, 0x20($sp)
    /* 11A98C 8010B9DC 0C01E4B8 */  jal        func_800792E0_88290
    /* 11A990 8010B9E0 8FA50018 */   lw        $a1, 0x18($sp)
    /* 11A994 8010B9E4 0C005060 */  jal        func_80014180_14D80
    /* 11A998 8010B9E8 00002025 */   or        $a0, $zero, $zero
    /* 11A99C 8010B9EC 10000001 */  b          .L8010B9F4_11A9A4
    /* 11A9A0 8010B9F0 24020001 */   addiu     $v0, $zero, 0x1
  .L8010B9F4_11A9A4:
    /* 11A9A4 8010B9F4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 11A9A8 8010B9F8 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 11A9AC 8010B9FC 03E00008 */  jr         $ra
    /* 11A9B0 8010BA00 00000000 */   nop
endlabel func_8010B970_11A920
