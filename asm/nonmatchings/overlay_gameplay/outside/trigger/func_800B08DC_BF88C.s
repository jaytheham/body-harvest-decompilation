nonmatching func_800B08DC_BF88C, 0x124

glabel func_800B08DC_BF88C
    /* BF88C 800B08DC 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* BF890 800B08E0 AFB1001C */  sw         $s1, 0x1C($sp)
    /* BF894 800B08E4 3C118022 */  lui        $s1, %hi(D_80223778)
    /* BF898 800B08E8 8E313778 */  lw         $s1, %lo(D_80223778)($s1)
    /* BF89C 800B08EC AFBF003C */  sw         $ra, 0x3C($sp)
    /* BF8A0 800B08F0 AFBE0038 */  sw         $fp, 0x38($sp)
    /* BF8A4 800B08F4 02201025 */  or         $v0, $s1, $zero
    /* BF8A8 800B08F8 AFB70034 */  sw         $s7, 0x34($sp)
    /* BF8AC 800B08FC AFB60030 */  sw         $s6, 0x30($sp)
    /* BF8B0 800B0900 AFB5002C */  sw         $s5, 0x2C($sp)
    /* BF8B4 800B0904 AFB40028 */  sw         $s4, 0x28($sp)
    /* BF8B8 800B0908 AFB30024 */  sw         $s3, 0x24($sp)
    /* BF8BC 800B090C AFB20020 */  sw         $s2, 0x20($sp)
    /* BF8C0 800B0910 AFB00018 */  sw         $s0, 0x18($sp)
    /* BF8C4 800B0914 AFA40040 */  sw         $a0, 0x40($sp)
    /* BF8C8 800B0918 1220002D */  beqz       $s1, .L800B09D0_BF980
    /* BF8CC 800B091C 2631FFFF */   addiu     $s1, $s1, -0x1
    /* BF8D0 800B0920 3C0F8022 */  lui        $t7, %hi(D_80222A78)
    /* BF8D4 800B0924 25EF2A78 */  addiu      $t7, $t7, %lo(D_80222A78)
    /* BF8D8 800B0928 00117100 */  sll        $t6, $s1, 4
    /* BF8DC 800B092C 3C12800B */  lui        $s2, %hi(func_800AFD48_BECF8)
    /* BF8E0 800B0930 3C1E8014 */  lui        $fp, %hi(D_80142C40)
    /* BF8E4 800B0934 3C158022 */  lui        $s5, %hi(D_80223780)
    /* BF8E8 800B0938 3C148004 */  lui        $s4, %hi(D_8003BCC0)
    /* BF8EC 800B093C 2694BCC0 */  addiu      $s4, $s4, %lo(D_8003BCC0)
    /* BF8F0 800B0940 26B53780 */  addiu      $s5, $s5, %lo(D_80223780)
    /* BF8F4 800B0944 27DE2C40 */  addiu      $fp, $fp, %lo(D_80142C40)
    /* BF8F8 800B0948 2652FD48 */  addiu      $s2, $s2, %lo(func_800AFD48_BECF8)
    /* BF8FC 800B094C 01CF8021 */  addu       $s0, $t6, $t7
    /* BF900 800B0950 24170060 */  addiu      $s7, $zero, 0x60
    /* BF904 800B0954 24160014 */  addiu      $s6, $zero, 0x14
    /* BF908 800B0958 24130018 */  addiu      $s3, $zero, 0x18
  .L800B095C_BF90C:
    /* BF90C 800B095C 8E02000C */  lw         $v0, 0xC($s0)
    /* BF910 800B0960 52420004 */  beql       $s2, $v0, .L800B0974_BF924
    /* BF914 800B0964 92180009 */   lbu       $t8, 0x9($s0)
    /* BF918 800B0968 54400016 */  bnel       $v0, $zero, .L800B09C4_BF974
    /* BF91C 800B096C 02201025 */   or        $v0, $s1, $zero
    /* BF920 800B0970 92180009 */  lbu        $t8, 0x9($s0)
  .L800B0974_BF924:
    /* BF924 800B0974 8FAD0040 */  lw         $t5, 0x40($sp)
    /* BF928 800B0978 03160019 */  multu      $t8, $s6
    /* BF92C 800B097C 0000C812 */  mflo       $t9
    /* BF930 800B0980 02B91821 */  addu       $v1, $s5, $t9
    /* BF934 800B0984 80680000 */  lb         $t0, 0x0($v1)
    /* BF938 800B0988 01170019 */  multu      $t0, $s7
    /* BF93C 800B098C 00004812 */  mflo       $t1
    /* BF940 800B0990 02895021 */  addu       $t2, $s4, $t1
    /* BF944 800B0994 914B0006 */  lbu        $t3, 0x6($t2)
    /* BF948 800B0998 526B000A */  beql       $s3, $t3, .L800B09C4_BF974
    /* BF94C 800B099C 02201025 */   or        $v0, $s1, $zero
    /* BF950 800B09A0 906C0012 */  lbu        $t4, 0x12($v1)
    /* BF954 800B09A4 03C02025 */  or         $a0, $fp, $zero
    /* BF958 800B09A8 02202825 */  or         $a1, $s1, $zero
    /* BF95C 800B09AC 018D082A */  slt        $at, $t4, $t5
    /* BF960 800B09B0 50200004 */  beql       $at, $zero, .L800B09C4_BF974
    /* BF964 800B09B4 02201025 */   or        $v0, $s1, $zero
    /* BF968 800B09B8 0C00731B */  jal        osSyncPrintf
    /* BF96C 800B09BC A2000000 */   sb        $zero, 0x0($s0)
    /* BF970 800B09C0 02201025 */  or         $v0, $s1, $zero
  .L800B09C4_BF974:
    /* BF974 800B09C4 2610FFF0 */  addiu      $s0, $s0, -0x10
    /* BF978 800B09C8 1620FFE4 */  bnez       $s1, .L800B095C_BF90C
    /* BF97C 800B09CC 2631FFFF */   addiu     $s1, $s1, -0x1
  .L800B09D0_BF980:
    /* BF980 800B09D0 8FBF003C */  lw         $ra, 0x3C($sp)
    /* BF984 800B09D4 8FB00018 */  lw         $s0, 0x18($sp)
    /* BF988 800B09D8 8FB1001C */  lw         $s1, 0x1C($sp)
    /* BF98C 800B09DC 8FB20020 */  lw         $s2, 0x20($sp)
    /* BF990 800B09E0 8FB30024 */  lw         $s3, 0x24($sp)
    /* BF994 800B09E4 8FB40028 */  lw         $s4, 0x28($sp)
    /* BF998 800B09E8 8FB5002C */  lw         $s5, 0x2C($sp)
    /* BF99C 800B09EC 8FB60030 */  lw         $s6, 0x30($sp)
    /* BF9A0 800B09F0 8FB70034 */  lw         $s7, 0x34($sp)
    /* BF9A4 800B09F4 8FBE0038 */  lw         $fp, 0x38($sp)
    /* BF9A8 800B09F8 03E00008 */  jr         $ra
    /* BF9AC 800B09FC 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800B08DC_BF88C
