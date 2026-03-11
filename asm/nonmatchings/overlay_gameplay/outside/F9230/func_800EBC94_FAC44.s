nonmatching func_800EBC94_FAC44, 0xC8

glabel func_800EBC94_FAC44
    /* FAC44 800EBC94 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* FAC48 800EBC98 AFBF0014 */  sw         $ra, 0x14($sp)
    /* FAC4C 800EBC9C AFA5001C */  sw         $a1, 0x1C($sp)
    /* FAC50 800EBCA0 A4800022 */  sh         $zero, 0x22($a0)
    /* FAC54 800EBCA4 AFA40018 */  sw         $a0, 0x18($sp)
    /* FAC58 800EBCA8 0C03ED0C */  jal        func_800FB430_10A3E0
    /* FAC5C 800EBCAC 24050000 */   addiu     $a1, $zero, 0x0
    /* FAC60 800EBCB0 8FAE001C */  lw         $t6, 0x1C($sp)
    /* FAC64 800EBCB4 8FA40018 */  lw         $a0, 0x18($sp)
    /* FAC68 800EBCB8 3C0F8004 */  lui        $t7, %hi(currentControllerStates)
    /* FAC6C 800EBCBC 81C20002 */  lb         $v0, 0x2($t6)
    /* FAC70 800EBCC0 2841003E */  slti       $at, $v0, 0x3E
    /* FAC74 800EBCC4 54200003 */  bnel       $at, $zero, .L800EBCD4_FAC84
    /* FAC78 800EBCC8 2841FFC3 */   slti      $at, $v0, -0x3D
    /* FAC7C 800EBCCC 2402003D */  addiu      $v0, $zero, 0x3D
    /* FAC80 800EBCD0 2841FFC3 */  slti       $at, $v0, -0x3D
  .L800EBCD4_FAC84:
    /* FAC84 800EBCD4 10200002 */  beqz       $at, .L800EBCE0_FAC90
    /* FAC88 800EBCD8 00000000 */   nop
    /* FAC8C 800EBCDC 2402FFC3 */  addiu      $v0, $zero, -0x3D
  .L800EBCE0_FAC90:
    /* FAC90 800EBCE0 95EF7588 */  lhu        $t7, %lo(currentControllerStates)($t7)
    /* FAC94 800EBCE4 31F80010 */  andi       $t8, $t7, 0x10
    /* FAC98 800EBCE8 1300000B */  beqz       $t8, .L800EBD18_FACC8
    /* FAC9C 800EBCEC 00000000 */   nop
    /* FACA0 800EBCF0 00420019 */  multu      $v0, $v0
    /* FACA4 800EBCF4 0000C812 */  mflo       $t9
    /* FACA8 800EBCF8 00000000 */  nop
    /* FACAC 800EBCFC 00000000 */  nop
    /* FACB0 800EBD00 03220019 */  multu      $t9, $v0
    /* FACB4 800EBD04 00001812 */  mflo       $v1
    /* FACB8 800EBD08 00034203 */  sra        $t0, $v1, 8
    /* FACBC 800EBD0C 00084C00 */  sll        $t1, $t0, 16
    /* FACC0 800EBD10 1000000B */  b          .L800EBD40_FACF0
    /* FACC4 800EBD14 00091C03 */   sra       $v1, $t1, 16
  .L800EBD18_FACC8:
    /* FACC8 800EBD18 00420019 */  multu      $v0, $v0
    /* FACCC 800EBD1C 00005812 */  mflo       $t3
    /* FACD0 800EBD20 00000000 */  nop
    /* FACD4 800EBD24 00000000 */  nop
    /* FACD8 800EBD28 01620019 */  multu      $t3, $v0
    /* FACDC 800EBD2C 00001812 */  mflo       $v1
    /* FACE0 800EBD30 00036203 */  sra        $t4, $v1, 8
    /* FACE4 800EBD34 000C6C00 */  sll        $t5, $t4, 16
    /* FACE8 800EBD38 000D7403 */  sra        $t6, $t5, 16
    /* FACEC 800EBD3C 000E1840 */  sll        $v1, $t6, 1
  .L800EBD40_FACF0:
    /* FACF0 800EBD40 8498000E */  lh         $t8, 0xE($a0)
    /* FACF4 800EBD44 0303C821 */  addu       $t9, $t8, $v1
    /* FACF8 800EBD48 A499000E */  sh         $t9, 0xE($a0)
    /* FACFC 800EBD4C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* FAD00 800EBD50 27BD0018 */  addiu      $sp, $sp, 0x18
    /* FAD04 800EBD54 03E00008 */  jr         $ra
    /* FAD08 800EBD58 00000000 */   nop
endlabel func_800EBC94_FAC44
