nonmatching func_80015BCC_167CC, 0x8C

glabel func_80015BCC_167CC
    /* 167CC 80015BCC 3C0E8007 */  lui        $t6, %hi(D_8006AB88)
    /* 167D0 80015BD0 8DCEAB88 */  lw         $t6, %lo(D_8006AB88)($t6)
    /* 167D4 80015BD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 167D8 80015BD8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 167DC 80015BDC 11C0001A */  beqz       $t6, .L80015C48_16848
    /* 167E0 80015BE0 AFA40018 */   sw        $a0, 0x18($sp)
    /* 167E4 80015BE4 3C0F8005 */  lui        $t7, %hi(gameplayMode)
    /* 167E8 80015BE8 8DEF2ADC */  lw         $t7, %lo(gameplayMode)($t7)
    /* 167EC 80015BEC 24010001 */  addiu      $at, $zero, 0x1
    /* 167F0 80015BF0 3C188003 */  lui        $t8, %hi(D_80031CA4)
    /* 167F4 80015BF4 55E10015 */  bnel       $t7, $at, .L80015C4C_1684C
    /* 167F8 80015BF8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 167FC 80015BFC 83181CA4 */  lb         $t8, %lo(D_80031CA4)($t8)
    /* 16800 80015C00 24010004 */  addiu      $at, $zero, 0x4
    /* 16804 80015C04 3C198005 */  lui        $t9, %hi(D_80052ACA)
    /* 16808 80015C08 1301000D */  beq        $t8, $at, .L80015C40_16840
    /* 1680C 80015C0C 240800FA */   addiu     $t0, $zero, 0xFA
    /* 16810 80015C10 93392ACA */  lbu        $t9, %lo(D_80052ACA)($t9)
    /* 16814 80015C14 24010002 */  addiu      $at, $zero, 0x2
    /* 16818 80015C18 17210005 */  bne        $t9, $at, .L80015C30_16830
    /* 1681C 80015C1C 00000000 */   nop
    /* 16820 80015C20 0C004D04 */  jal        func_80013410_14010
    /* 16824 80015C24 00000000 */   nop
    /* 16828 80015C28 10000008 */  b          .L80015C4C_1684C
    /* 1682C 80015C2C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L80015C30_16830:
    /* 16830 80015C30 0C004CE6 */  jal        func_80013398_13F98
    /* 16834 80015C34 00000000 */   nop
    /* 16838 80015C38 10000004 */  b          .L80015C4C_1684C
    /* 1683C 80015C3C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L80015C40_16840:
    /* 16840 80015C40 3C018003 */  lui        $at, %hi(D_80031CD4)
    /* 16844 80015C44 A4281CD4 */  sh         $t0, %lo(D_80031CD4)($at)
  .L80015C48_16848:
    /* 16848 80015C48 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80015C4C_1684C:
    /* 1684C 80015C4C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 16850 80015C50 03E00008 */  jr         $ra
    /* 16854 80015C54 00000000 */   nop
endlabel func_80015BCC_167CC
