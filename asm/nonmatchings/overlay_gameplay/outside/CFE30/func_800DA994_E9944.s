nonmatching func_800DA994_E9944, 0x88

glabel func_800DA994_E9944
    /* E9944 800DA994 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* E9948 800DA998 AFBF001C */  sw         $ra, 0x1C($sp)
    /* E994C 800DA99C 3C04800E */  lui        $a0, %hi(func_800DA7CC_E977C)
    /* E9950 800DA9A0 2484A7CC */  addiu      $a0, $a0, %lo(func_800DA7CC_E977C)
    /* E9954 800DA9A4 AFA00010 */  sw         $zero, 0x10($sp)
    /* E9958 800DA9A8 24050028 */  addiu      $a1, $zero, 0x28
    /* E995C 800DA9AC 00003025 */  or         $a2, $zero, $zero
    /* E9960 800DA9B0 0C03667D */  jal        func_800D99F4_E89A4
    /* E9964 800DA9B4 00003825 */   or        $a3, $zero, $zero
    /* E9968 800DA9B8 2401FFFD */  addiu      $at, $zero, -0x3
    /* E996C 800DA9BC 10410013 */  beq        $v0, $at, .L800DAA0C_E99BC
    /* E9970 800DA9C0 A7A20026 */   sh        $v0, 0x26($sp)
    /* E9974 800DA9C4 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* E9978 800DA9C8 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* E997C 800DA9CC 24180078 */  addiu      $t8, $zero, 0x78
    /* E9980 800DA9D0 24070009 */  addiu      $a3, $zero, 0x9
    /* E9984 800DA9D4 84450002 */  lh         $a1, 0x2($v0)
    /* E9988 800DA9D8 84440000 */  lh         $a0, 0x0($v0)
    /* E998C 800DA9DC 84460004 */  lh         $a2, 0x4($v0)
    /* E9990 800DA9E0 24A50050 */  addiu      $a1, $a1, 0x50
    /* E9994 800DA9E4 00057400 */  sll        $t6, $a1, 16
    /* E9998 800DA9E8 000E2C03 */  sra        $a1, $t6, 16
    /* E999C 800DA9EC 0C0376D8 */  jal        func_800DDB60_ECB10
    /* E99A0 800DA9F0 AFB80010 */   sw        $t8, 0x10($sp)
    /* E99A4 800DA9F4 00023400 */  sll        $a2, $v0, 16
    /* E99A8 800DA9F8 0006CC03 */  sra        $t9, $a2, 16
    /* E99AC 800DA9FC 03203025 */  or         $a2, $t9, $zero
    /* E99B0 800DAA00 87A40026 */  lh         $a0, 0x26($sp)
    /* E99B4 800DAA04 0C0366A3 */  jal        func_800D9A8C_E8A3C
    /* E99B8 800DAA08 00002825 */   or        $a1, $zero, $zero
  .L800DAA0C_E99BC:
    /* E99BC 800DAA0C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* E99C0 800DAA10 27BD0028 */  addiu      $sp, $sp, 0x28
    /* E99C4 800DAA14 03E00008 */  jr         $ra
    /* E99C8 800DAA18 00000000 */   nop
endlabel func_800DA994_E9944
