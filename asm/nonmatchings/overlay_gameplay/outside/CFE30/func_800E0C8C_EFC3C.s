nonmatching func_800E0C8C_EFC3C, 0x9C

glabel func_800E0C8C_EFC3C
    /* EFC3C 800E0C8C 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* EFC40 800E0C90 AFBF003C */  sw         $ra, 0x3C($sp)
    /* EFC44 800E0C94 AFA40040 */  sw         $a0, 0x40($sp)
    /* EFC48 800E0C98 AFA50044 */  sw         $a1, 0x44($sp)
    /* EFC4C 800E0C9C AFA60048 */  sw         $a2, 0x48($sp)
    /* EFC50 800E0CA0 0C000E38 */  jal        func_800038E0_44E0
    /* EFC54 800E0CA4 AFA7004C */   sw        $a3, 0x4C($sp)
    /* EFC58 800E0CA8 24010009 */  addiu      $at, $zero, 0x9
    /* EFC5C 800E0CAC 0041001A */  div        $zero, $v0, $at
    /* EFC60 800E0CB0 83AE0053 */  lb         $t6, 0x53($sp)
    /* EFC64 800E0CB4 83AF0057 */  lb         $t7, 0x57($sp)
    /* EFC68 800E0CB8 00004010 */  mfhi       $t0
    /* EFC6C 800E0CBC AFAE0010 */  sw         $t6, 0x10($sp)
    /* EFC70 800E0CC0 240E00FF */  addiu      $t6, $zero, 0xFF
    /* EFC74 800E0CC4 2509000A */  addiu      $t1, $t0, 0xA
    /* EFC78 800E0CC8 24180037 */  addiu      $t8, $zero, 0x37
    /* EFC7C 800E0CCC 24190007 */  addiu      $t9, $zero, 0x7
    /* EFC80 800E0CD0 240A0064 */  addiu      $t2, $zero, 0x64
    /* EFC84 800E0CD4 240B00DC */  addiu      $t3, $zero, 0xDC
    /* EFC88 800E0CD8 240C00BE */  addiu      $t4, $zero, 0xBE
    /* EFC8C 800E0CDC 240D002D */  addiu      $t5, $zero, 0x2D
    /* EFC90 800E0CE0 AFAD0030 */  sw         $t5, 0x30($sp)
    /* EFC94 800E0CE4 AFAC002C */  sw         $t4, 0x2C($sp)
    /* EFC98 800E0CE8 AFAB0028 */  sw         $t3, 0x28($sp)
    /* EFC9C 800E0CEC AFAA0024 */  sw         $t2, 0x24($sp)
    /* EFCA0 800E0CF0 AFB9001C */  sw         $t9, 0x1C($sp)
    /* EFCA4 800E0CF4 AFB80018 */  sw         $t8, 0x18($sp)
    /* EFCA8 800E0CF8 AFA90020 */  sw         $t1, 0x20($sp)
    /* EFCAC 800E0CFC AFAE0034 */  sw         $t6, 0x34($sp)
    /* EFCB0 800E0D00 87A40042 */  lh         $a0, 0x42($sp)
    /* EFCB4 800E0D04 87A50046 */  lh         $a1, 0x46($sp)
    /* EFCB8 800E0D08 87A6004A */  lh         $a2, 0x4A($sp)
    /* EFCBC 800E0D0C 83A7004F */  lb         $a3, 0x4F($sp)
    /* EFCC0 800E0D10 0C03297B */  jal        func_800CA5EC_D959C
    /* EFCC4 800E0D14 AFAF0014 */   sw        $t7, 0x14($sp)
    /* EFCC8 800E0D18 8FBF003C */  lw         $ra, 0x3C($sp)
    /* EFCCC 800E0D1C 27BD0040 */  addiu      $sp, $sp, 0x40
    /* EFCD0 800E0D20 03E00008 */  jr         $ra
    /* EFCD4 800E0D24 00000000 */   nop
endlabel func_800E0C8C_EFC3C
