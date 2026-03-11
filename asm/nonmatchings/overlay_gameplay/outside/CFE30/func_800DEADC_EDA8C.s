nonmatching func_800DEADC_EDA8C, 0xA0

glabel func_800DEADC_EDA8C
    /* EDA8C 800DEADC 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* EDA90 800DEAE0 AFBF001C */  sw         $ra, 0x1C($sp)
    /* EDA94 800DEAE4 AFA40020 */  sw         $a0, 0x20($sp)
    /* EDA98 800DEAE8 AFA50024 */  sw         $a1, 0x24($sp)
    /* EDA9C 800DEAEC AFA60028 */  sw         $a2, 0x28($sp)
    /* EDAA0 800DEAF0 0C000E38 */  jal        func_800038E0_44E0
    /* EDAA4 800DEAF4 AFA7002C */   sw        $a3, 0x2C($sp)
    /* EDAA8 800DEAF8 2401000F */  addiu      $at, $zero, 0xF
    /* EDAAC 800DEAFC 0041001A */  div        $zero, $v0, $at
    /* EDAB0 800DEB00 00007010 */  mfhi       $t6
    /* EDAB4 800DEB04 25CF0019 */  addiu      $t7, $t6, 0x19
    /* EDAB8 800DEB08 AFAF0010 */  sw         $t7, 0x10($sp)
    /* EDABC 800DEB0C 87A40022 */  lh         $a0, 0x22($sp)
    /* EDAC0 800DEB10 87A50026 */  lh         $a1, 0x26($sp)
    /* EDAC4 800DEB14 87A6002A */  lh         $a2, 0x2A($sp)
    /* EDAC8 800DEB18 0C0376D8 */  jal        func_800DDB60_ECB10
    /* EDACC 800DEB1C 24070002 */   addiu     $a3, $zero, 0x2
    /* EDAD0 800DEB20 240100FF */  addiu      $at, $zero, 0xFF
    /* EDAD4 800DEB24 10410011 */  beq        $v0, $at, .L800DEB6C_EDB1C
    /* EDAD8 800DEB28 87A3002E */   lh        $v1, 0x2E($sp)
    /* EDADC 800DEB2C 24630078 */  addiu      $v1, $v1, 0x78
    /* EDAE0 800DEB30 0003CC00 */  sll        $t9, $v1, 16
    /* EDAE4 800DEB34 00032400 */  sll        $a0, $v1, 16
    /* EDAE8 800DEB38 00194403 */  sra        $t0, $t9, 16
    /* EDAEC 800DEB3C 0004C403 */  sra        $t8, $a0, 16
    /* EDAF0 800DEB40 29010100 */  slti       $at, $t0, 0x100
    /* EDAF4 800DEB44 14200002 */  bnez       $at, .L800DEB50_EDB00
    /* EDAF8 800DEB48 03002025 */   or        $a0, $t8, $zero
    /* EDAFC 800DEB4C 240400FF */  addiu      $a0, $zero, 0xFF
  .L800DEB50_EDB00:
    /* EDB00 800DEB50 304900FF */  andi       $t1, $v0, 0xFF
    /* EDB04 800DEB54 00095080 */  sll        $t2, $t1, 2
    /* EDB08 800DEB58 01495021 */  addu       $t2, $t2, $t1
    /* EDB0C 800DEB5C 000A5080 */  sll        $t2, $t2, 2
    /* EDB10 800DEB60 3C018015 */  lui        $at, %hi(D_80156EFD)
    /* EDB14 800DEB64 002A0821 */  addu       $at, $at, $t2
    /* EDB18 800DEB68 A0246EFD */  sb         $a0, %lo(D_80156EFD)($at)
  .L800DEB6C_EDB1C:
    /* EDB1C 800DEB6C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* EDB20 800DEB70 27BD0020 */  addiu      $sp, $sp, 0x20
    /* EDB24 800DEB74 03E00008 */  jr         $ra
    /* EDB28 800DEB78 00000000 */   nop
endlabel func_800DEADC_EDA8C
