nonmatching func_800EB7CC_FA77C, 0xD8

glabel func_800EB7CC_FA77C
    /* FA77C 800EB7CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* FA780 800EB7D0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* FA784 800EB7D4 AFA60020 */  sw         $a2, 0x20($sp)
    /* FA788 800EB7D8 8C82040C */  lw         $v0, 0x40C($a0)
    /* FA78C 800EB7DC 24080034 */  addiu      $t0, $zero, 0x34
    /* FA790 800EB7E0 3C038014 */  lui        $v1, %hi(D_8013E5AC)
    /* FA794 800EB7E4 00480019 */  multu      $v0, $t0
    /* FA798 800EB7E8 2463E5AC */  addiu      $v1, $v1, %lo(D_8013E5AC)
    /* FA79C 800EB7EC 44876000 */  mtc1       $a3, $f12
    /* FA7A0 800EB7F0 00007012 */  mflo       $t6
    /* FA7A4 800EB7F4 006E7821 */  addu       $t7, $v1, $t6
    /* FA7A8 800EB7F8 8DF80004 */  lw         $t8, 0x4($t7)
    /* FA7AC 800EB7FC 33190008 */  andi       $t9, $t8, 0x8
    /* FA7B0 800EB800 57200025 */  bnel       $t9, $zero, .L800EB898_FA848
    /* FA7B4 800EB804 8FBF0014 */   lw        $ra, 0x14($sp)
    /* FA7B8 800EB808 44800000 */  mtc1       $zero, $f0
    /* FA7BC 800EB80C 28410024 */  slti       $at, $v0, 0x24
    /* FA7C0 800EB810 460C003C */  c.lt.s     $f0, $f12
    /* FA7C4 800EB814 00000000 */  nop
    /* FA7C8 800EB818 45000017 */  bc1f       .L800EB878_FA828
    /* FA7CC 800EB81C 00000000 */   nop
    /* FA7D0 800EB820 10C20008 */  beq        $a2, $v0, .L800EB844_FA7F4
    /* FA7D4 800EB824 28410003 */   slti      $at, $v0, 0x3
    /* FA7D8 800EB828 14200006 */  bnez       $at, .L800EB844_FA7F4
    /* FA7DC 800EB82C 00C02825 */   or        $a1, $a2, $zero
    /* FA7E0 800EB830 44076000 */  mfc1       $a3, $f12
    /* FA7E4 800EB834 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FA7E8 800EB838 00003025 */   or        $a2, $zero, $zero
    /* FA7EC 800EB83C 10000016 */  b          .L800EB898_FA848
    /* FA7F0 800EB840 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800EB844_FA7F4:
    /* FA7F4 800EB844 8C8A0404 */  lw         $t2, 0x404($a0)
    /* FA7F8 800EB848 8FA50020 */  lw         $a1, 0x20($sp)
    /* FA7FC 800EB84C 8D4B0E50 */  lw         $t3, 0xE50($t2)
    /* FA800 800EB850 55600011 */  bnel       $t3, $zero, .L800EB898_FA848
    /* FA804 800EB854 8FBF0014 */   lw        $ra, 0x14($sp)
    /* FA808 800EB858 00A80019 */  multu      $a1, $t0
    /* FA80C 800EB85C 44076000 */  mfc1       $a3, $f12
    /* FA810 800EB860 00006812 */  mflo       $t5
    /* FA814 800EB864 006D7021 */  addu       $t6, $v1, $t5
    /* FA818 800EB868 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FA81C 800EB86C 8DC60008 */   lw        $a2, 0x8($t6)
    /* FA820 800EB870 10000009 */  b          .L800EB898_FA848
    /* FA824 800EB874 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800EB878_FA828:
    /* FA828 800EB878 14200003 */  bnez       $at, .L800EB888_FA838
    /* FA82C 800EB87C 2401003B */   addiu     $at, $zero, 0x3B
    /* FA830 800EB880 54410005 */  bnel       $v0, $at, .L800EB898_FA848
    /* FA834 800EB884 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800EB888_FA838:
    /* FA838 800EB888 44070000 */  mfc1       $a3, $f0
    /* FA83C 800EB88C 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FA840 800EB890 00003025 */   or        $a2, $zero, $zero
    /* FA844 800EB894 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800EB898_FA848:
    /* FA848 800EB898 27BD0018 */  addiu      $sp, $sp, 0x18
    /* FA84C 800EB89C 03E00008 */  jr         $ra
    /* FA850 800EB8A0 00000000 */   nop
endlabel func_800EB7CC_FA77C
