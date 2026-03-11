nonmatching func_800EB8A4_FA854, 0x110

glabel func_800EB8A4_FA854
    /* FA854 800EB8A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* FA858 800EB8A8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* FA85C 800EB8AC 8C8E0404 */  lw         $t6, 0x404($a0)
    /* FA860 800EB8B0 44856000 */  mtc1       $a1, $f12
    /* FA864 800EB8B4 8DCF0E50 */  lw         $t7, 0xE50($t6)
    /* FA868 800EB8B8 55E0003B */  bnel       $t7, $zero, .L800EB9A8_FA958
    /* FA86C 800EB8BC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* FA870 800EB8C0 8C85040C */  lw         $a1, 0x40C($a0)
    /* FA874 800EB8C4 3C198014 */  lui        $t9, %hi(D_8013E5AC)
    /* FA878 800EB8C8 2739E5AC */  addiu      $t9, $t9, %lo(D_8013E5AC)
    /* FA87C 800EB8CC 0005C080 */  sll        $t8, $a1, 2
    /* FA880 800EB8D0 0305C023 */  subu       $t8, $t8, $a1
    /* FA884 800EB8D4 0018C080 */  sll        $t8, $t8, 2
    /* FA888 800EB8D8 0305C021 */  addu       $t8, $t8, $a1
    /* FA88C 800EB8DC 0018C080 */  sll        $t8, $t8, 2
    /* FA890 800EB8E0 03191021 */  addu       $v0, $t8, $t9
    /* FA894 800EB8E4 8C480014 */  lw         $t0, 0x14($v0)
    /* FA898 800EB8E8 51000021 */  beql       $t0, $zero, .L800EB970_FA920
    /* FA89C 800EB8EC 8C430004 */   lw        $v1, 0x4($v0)
    /* FA8A0 800EB8F0 8C490004 */  lw         $t1, 0x4($v0)
    /* FA8A4 800EB8F4 00003025 */  or         $a2, $zero, $zero
    /* FA8A8 800EB8F8 312A0001 */  andi       $t2, $t1, 0x1
    /* FA8AC 800EB8FC 51400017 */  beql       $t2, $zero, .L800EB95C_FA90C
    /* FA8B0 800EB900 44076000 */   mfc1      $a3, $f12
    /* FA8B4 800EB904 908B041C */  lbu        $t3, 0x41C($a0)
    /* FA8B8 800EB908 904C0018 */  lbu        $t4, 0x18($v0)
    /* FA8BC 800EB90C 00003025 */  or         $a2, $zero, $zero
    /* FA8C0 800EB910 556C0009 */  bnel       $t3, $t4, .L800EB938_FA8E8
    /* FA8C4 800EB914 44076000 */   mfc1      $a3, $f12
    /* FA8C8 800EB918 44076000 */  mfc1       $a3, $f12
    /* FA8CC 800EB91C 8C45001C */  lw         $a1, 0x1C($v0)
    /* FA8D0 800EB920 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FA8D4 800EB924 AFA40018 */   sw        $a0, 0x18($sp)
    /* FA8D8 800EB928 8FA40018 */  lw         $a0, 0x18($sp)
    /* FA8DC 800EB92C 1000001D */  b          .L800EB9A4_FA954
    /* FA8E0 800EB930 A080041C */   sb        $zero, 0x41C($a0)
    /* FA8E4 800EB934 44076000 */  mfc1       $a3, $f12
  .L800EB938_FA8E8:
    /* FA8E8 800EB938 8C460008 */  lw         $a2, 0x8($v0)
    /* FA8EC 800EB93C 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FA8F0 800EB940 AFA40018 */   sw        $a0, 0x18($sp)
    /* FA8F4 800EB944 8FA40018 */  lw         $a0, 0x18($sp)
    /* FA8F8 800EB948 908D041C */  lbu        $t5, 0x41C($a0)
    /* FA8FC 800EB94C 25AE0001 */  addiu      $t6, $t5, 0x1
    /* FA900 800EB950 10000014 */  b          .L800EB9A4_FA954
    /* FA904 800EB954 A08E041C */   sb        $t6, 0x41C($a0)
    /* FA908 800EB958 44076000 */  mfc1       $a3, $f12
  .L800EB95C_FA90C:
    /* FA90C 800EB95C 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FA910 800EB960 8C45001C */   lw        $a1, 0x1C($v0)
    /* FA914 800EB964 10000010 */  b          .L800EB9A8_FA958
    /* FA918 800EB968 8FBF0014 */   lw        $ra, 0x14($sp)
    /* FA91C 800EB96C 8C430004 */  lw         $v1, 0x4($v0)
  .L800EB970_FA920:
    /* FA920 800EB970 306F0001 */  andi       $t7, $v1, 0x1
    /* FA924 800EB974 11E00006 */  beqz       $t7, .L800EB990_FA940
    /* FA928 800EB978 30780002 */   andi      $t8, $v1, 0x2
    /* FA92C 800EB97C 44076000 */  mfc1       $a3, $f12
    /* FA930 800EB980 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FA934 800EB984 8C460008 */   lw        $a2, 0x8($v0)
    /* FA938 800EB988 10000007 */  b          .L800EB9A8_FA958
    /* FA93C 800EB98C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800EB990_FA940:
    /* FA940 800EB990 13000004 */  beqz       $t8, .L800EB9A4_FA954
    /* FA944 800EB994 00003025 */   or        $a2, $zero, $zero
    /* FA948 800EB998 44076000 */  mfc1       $a3, $f12
    /* FA94C 800EB99C 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FA950 800EB9A0 8C450008 */   lw        $a1, 0x8($v0)
  .L800EB9A4_FA954:
    /* FA954 800EB9A4 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800EB9A8_FA958:
    /* FA958 800EB9A8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* FA95C 800EB9AC 03E00008 */  jr         $ra
    /* FA960 800EB9B0 00000000 */   nop
endlabel func_800EB8A4_FA854
