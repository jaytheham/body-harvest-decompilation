nonmatching func_800EB9C4_FA974, 0x90

glabel func_800EB9C4_FA974
    /* FA974 800EB9C4 3C0F8014 */  lui        $t7, %hi(D_8013E45C)
    /* FA978 800EB9C8 25EFE45C */  addiu      $t7, $t7, %lo(D_8013E45C)
    /* FA97C 800EB9CC 00047140 */  sll        $t6, $a0, 5
    /* FA980 800EB9D0 01CF1021 */  addu       $v0, $t6, $t7
    /* FA984 800EB9D4 8443000C */  lh         $v1, 0xC($v0)
    /* FA988 800EB9D8 8CB80298 */  lw         $t8, 0x298($a1)
    /* FA98C 800EB9DC 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* FA990 800EB9E0 57030008 */  bnel       $t8, $v1, .L800EBA04_FA9B4
    /* FA994 800EB9E4 44811000 */   mtc1      $at, $f2
    /* FA998 800EB9E8 C4A4029C */  lwc1       $f4, 0x29C($a1)
    /* FA99C 800EB9EC C4460010 */  lwc1       $f6, 0x10($v0)
    /* FA9A0 800EB9F0 46062032 */  c.eq.s     $f4, $f6
    /* FA9A4 800EB9F4 00000000 */  nop
    /* FA9A8 800EB9F8 45010012 */  bc1t       .L800EBA44_FA9F4
    /* FA9AC 800EB9FC 00000000 */   nop
    /* FA9B0 800EBA00 44811000 */  mtc1       $at, $f2
  .L800EBA04_FA9B4:
    /* FA9B4 800EBA04 C4400010 */  lwc1       $f0, 0x10($v0)
    /* FA9B8 800EBA08 46001032 */  c.eq.s     $f2, $f0
    /* FA9BC 800EBA0C 00000000 */  nop
    /* FA9C0 800EBA10 45020006 */  bc1fl      .L800EBA2C_FA9DC
    /* FA9C4 800EBA14 46001032 */   c.eq.s    $f2, $f0
    /* FA9C8 800EBA18 8CB90298 */  lw         $t9, 0x298($a1)
    /* FA9CC 800EBA1C 0079082A */  slt        $at, $v1, $t9
    /* FA9D0 800EBA20 14200008 */  bnez       $at, .L800EBA44_FA9F4
    /* FA9D4 800EBA24 00000000 */   nop
    /* FA9D8 800EBA28 46001032 */  c.eq.s     $f2, $f0
  .L800EBA2C_FA9DC:
    /* FA9DC 800EBA2C 2401FFFF */  addiu      $at, $zero, -0x1
    /* FA9E0 800EBA30 00001025 */  or         $v0, $zero, $zero
    /* FA9E4 800EBA34 45000005 */  bc1f       .L800EBA4C_FA9FC
    /* FA9E8 800EBA38 00000000 */   nop
    /* FA9EC 800EBA3C 14610003 */  bne        $v1, $at, .L800EBA4C_FA9FC
    /* FA9F0 800EBA40 00000000 */   nop
  .L800EBA44_FA9F4:
    /* FA9F4 800EBA44 03E00008 */  jr         $ra
    /* FA9F8 800EBA48 24020001 */   addiu     $v0, $zero, 0x1
  .L800EBA4C_FA9FC:
    /* FA9FC 800EBA4C 03E00008 */  jr         $ra
    /* FAA00 800EBA50 00000000 */   nop
endlabel func_800EB9C4_FA974
