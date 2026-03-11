nonmatching func_800B99A8_C8958, 0x120

glabel func_800B99A8_C8958
    /* C8958 800B99A8 3C098014 */  lui        $t1, %hi(D_8013DAE0)
    /* C895C 800B99AC 2529DAE0 */  addiu      $t1, $t1, %lo(D_8013DAE0)
    /* C8960 800B99B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* C8964 800B99B4 91280000 */  lbu        $t0, 0x0($t1)
    /* C8968 800B99B8 2401000F */  addiu      $at, $zero, 0xF
    /* C896C 800B99BC AFBF0014 */  sw         $ra, 0x14($sp)
    /* C8970 800B99C0 AFA40018 */  sw         $a0, 0x18($sp)
    /* C8974 800B99C4 AFA5001C */  sw         $a1, 0x1C($sp)
    /* C8978 800B99C8 AFA60020 */  sw         $a2, 0x20($sp)
    /* C897C 800B99CC 15010006 */  bne        $t0, $at, .L800B99E8_C8998
    /* C8980 800B99D0 AFA70024 */   sw        $a3, 0x24($sp)
    /* C8984 800B99D4 3C048014 */  lui        $a0, %hi(D_80142D94)
    /* C8988 800B99D8 0C00731B */  jal        osSyncPrintf
    /* C898C 800B99DC 24842D94 */   addiu     $a0, $a0, %lo(D_80142D94)
    /* C8990 800B99E0 10000036 */  b          .L800B9ABC_C8A6C
    /* C8994 800B99E4 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800B99E8_C8998:
    /* C8998 800B99E8 3C0A8014 */  lui        $t2, %hi(D_8013DAE4)
    /* C899C 800B99EC 254ADAE4 */  addiu      $t2, $t2, %lo(D_8013DAE4)
    /* C89A0 800B99F0 91460000 */  lbu        $a2, 0x0($t2)
    /* C89A4 800B99F4 24050012 */  addiu      $a1, $zero, 0x12
    /* C89A8 800B99F8 8FAF0018 */  lw         $t7, 0x18($sp)
    /* C89AC 800B99FC 00C50019 */  multu      $a2, $a1
    /* C89B0 800B9A00 3C048015 */  lui        $a0, %hi(D_80152B80)
    /* C89B4 800B9A04 85F80000 */  lh         $t8, 0x0($t7)
    /* C89B8 800B9A08 8FB90018 */  lw         $t9, 0x18($sp)
    /* C89BC 800B9A0C 24842B80 */  addiu      $a0, $a0, %lo(D_80152B80)
    /* C89C0 800B9A10 87AC001E */  lh         $t4, 0x1E($sp)
    /* C89C4 800B9A14 87AD0022 */  lh         $t5, 0x22($sp)
    /* C89C8 800B9A18 8FA70028 */  lw         $a3, 0x28($sp)
    /* C89CC 800B9A1C 28C1000F */  slti       $at, $a2, 0xF
    /* C89D0 800B9A20 30C200FF */  andi       $v0, $a2, 0xFF
    /* C89D4 800B9A24 00007012 */  mflo       $t6
    /* C89D8 800B9A28 008E1821 */  addu       $v1, $a0, $t6
    /* C89DC 800B9A2C A4780000 */  sh         $t8, 0x0($v1)
    /* C89E0 800B9A30 872B0002 */  lh         $t3, 0x2($t9)
    /* C89E4 800B9A34 93AE0027 */  lbu        $t6, 0x27($sp)
    /* C89E8 800B9A38 A46C0004 */  sh         $t4, 0x4($v1)
    /* C89EC 800B9A3C A46D0006 */  sh         $t5, 0x6($v1)
    /* C89F0 800B9A40 A46B0002 */  sh         $t3, 0x2($v1)
    /* C89F4 800B9A44 A06E0008 */  sb         $t6, 0x8($v1)
    /* C89F8 800B9A48 90EF0000 */  lbu        $t7, 0x0($a3)
    /* C89FC 800B9A4C 87AB002E */  lh         $t3, 0x2E($sp)
    /* C8A00 800B9A50 87AC0032 */  lh         $t4, 0x32($sp)
    /* C8A04 800B9A54 A06F0009 */  sb         $t7, 0x9($v1)
    /* C8A08 800B9A58 90F80001 */  lbu        $t8, 0x1($a3)
    /* C8A0C 800B9A5C 97AD0036 */  lhu        $t5, 0x36($sp)
    /* C8A10 800B9A60 250E0001 */  addiu      $t6, $t0, 0x1
    /* C8A14 800B9A64 A078000A */  sb         $t8, 0xA($v1)
    /* C8A18 800B9A68 90F90002 */  lbu        $t9, 0x2($a3)
    /* C8A1C 800B9A6C A12E0000 */  sb         $t6, 0x0($t1)
    /* C8A20 800B9A70 A46B000C */  sh         $t3, 0xC($v1)
    /* C8A24 800B9A74 A46C000E */  sh         $t4, 0xE($v1)
    /* C8A28 800B9A78 A46D0010 */  sh         $t5, 0x10($v1)
    /* C8A2C 800B9A7C 1020000E */  beqz       $at, .L800B9AB8_C8A68
    /* C8A30 800B9A80 A079000B */   sb        $t9, 0xB($v1)
  .L800B9A84_C8A34:
    /* C8A34 800B9A84 00450019 */  multu      $v0, $a1
    /* C8A38 800B9A88 00007812 */  mflo       $t7
    /* C8A3C 800B9A8C 008FC021 */  addu       $t8, $a0, $t7
    /* C8A40 800B9A90 93190008 */  lbu        $t9, 0x8($t8)
    /* C8A44 800B9A94 57200004 */  bnel       $t9, $zero, .L800B9AA8_C8A58
    /* C8A48 800B9A98 24420001 */   addiu     $v0, $v0, 0x1
    /* C8A4C 800B9A9C 10000006 */  b          .L800B9AB8_C8A68
    /* C8A50 800B9AA0 A1420000 */   sb        $v0, 0x0($t2)
    /* C8A54 800B9AA4 24420001 */  addiu      $v0, $v0, 0x1
  .L800B9AA8_C8A58:
    /* C8A58 800B9AA8 304B00FF */  andi       $t3, $v0, 0xFF
    /* C8A5C 800B9AAC 2961000F */  slti       $at, $t3, 0xF
    /* C8A60 800B9AB0 1420FFF4 */  bnez       $at, .L800B9A84_C8A34
    /* C8A64 800B9AB4 01601025 */   or        $v0, $t3, $zero
  .L800B9AB8_C8A68:
    /* C8A68 800B9AB8 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800B9ABC_C8A6C:
    /* C8A6C 800B9ABC 27BD0018 */  addiu      $sp, $sp, 0x18
    /* C8A70 800B9AC0 03E00008 */  jr         $ra
    /* C8A74 800B9AC4 00000000 */   nop
endlabel func_800B99A8_C8958
