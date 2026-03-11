nonmatching func_800DDB18_ECAC8, 0x48

glabel func_800DDB18_ECAC8
    /* ECAC8 800DDB18 3C038015 */  lui        $v1, %hi(D_80156EF0)
    /* ECACC 800DDB1C 24636EF0 */  addiu      $v1, $v1, %lo(D_80156EF0)
    /* ECAD0 800DDB20 00001025 */  or         $v0, $zero, $zero
    /* ECAD4 800DDB24 24040014 */  addiu      $a0, $zero, 0x14
  .L800DDB28_ECAD8:
    /* ECAD8 800DDB28 00440019 */  multu      $v0, $a0
    /* ECADC 800DDB2C 24420001 */  addiu      $v0, $v0, 0x1
    /* ECAE0 800DDB30 305800FF */  andi       $t8, $v0, 0xFF
    /* ECAE4 800DDB34 2B010050 */  slti       $at, $t8, 0x50
    /* ECAE8 800DDB38 03001025 */  or         $v0, $t8, $zero
    /* ECAEC 800DDB3C 00007012 */  mflo       $t6
    /* ECAF0 800DDB40 006E7821 */  addu       $t7, $v1, $t6
    /* ECAF4 800DDB44 1420FFF8 */  bnez       $at, .L800DDB28_ECAD8
    /* ECAF8 800DDB48 A5E0000A */   sh        $zero, 0xA($t7)
    /* ECAFC 800DDB4C 3C018015 */  lui        $at, %hi(D_80157530)
    /* ECB00 800DDB50 A0207530 */  sb         $zero, %lo(D_80157530)($at)
    /* ECB04 800DDB54 3C018015 */  lui        $at, %hi(D_80157531)
    /* ECB08 800DDB58 03E00008 */  jr         $ra
    /* ECB0C 800DDB5C A0207531 */   sb        $zero, %lo(D_80157531)($at)
endlabel func_800DDB18_ECAC8
