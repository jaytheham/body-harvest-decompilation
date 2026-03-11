nonmatching func_800EF0B0_FE060, 0x9C

glabel func_800EF0B0_FE060
    /* FE060 800EF0B0 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* FE064 800EF0B4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* FE068 800EF0B8 0C004800 */  jal        func_80012000_12C00
    /* FE06C 800EF0BC 00000000 */   nop
    /* FE070 800EF0C0 00401825 */  or         $v1, $v0, $zero
    /* FE074 800EF0C4 00002825 */  or         $a1, $zero, $zero
    /* FE078 800EF0C8 00002025 */  or         $a0, $zero, $zero
    /* FE07C 800EF0CC 27A20028 */  addiu      $v0, $sp, 0x28
    /* FE080 800EF0D0 2406FFB8 */  addiu      $a2, $zero, -0x48
  .L800EF0D4_FE084:
    /* FE084 800EF0D4 8C610000 */  lw         $at, 0x0($v1)
  .L800EF0D8_FE088:
    /* FE088 800EF0D8 24630008 */  addiu      $v1, $v1, 0x8
    /* FE08C 800EF0DC 24A50001 */  addiu      $a1, $a1, 0x1
    /* FE090 800EF0E0 AC410000 */  sw         $at, 0x0($v0)
    /* FE094 800EF0E4 8C78FFFC */  lw         $t8, -0x4($v1)
    /* FE098 800EF0E8 AC580004 */  sw         $t8, 0x4($v0)
    /* FE09C 800EF0EC 83B90028 */  lb         $t9, 0x28($sp)
    /* FE0A0 800EF0F0 1726FFF8 */  bne        $t9, $a2, .L800EF0D4_FE084
    /* FE0A4 800EF0F4 00992021 */   addu      $a0, $a0, $t9
    /* FE0A8 800EF0F8 28A10039 */  slti       $at, $a1, 0x39
    /* FE0AC 800EF0FC 5020FFF6 */  beql       $at, $zero, .L800EF0D8_FE088
    /* FE0B0 800EF100 8C610000 */   lw        $at, 0x0($v1)
    /* FE0B4 800EF104 3C088004 */  lui        $t0, %hi(D_8004758E)
    /* FE0B8 800EF108 9508758E */  lhu        $t0, %lo(D_8004758E)($t0)
    /* FE0BC 800EF10C 2401F772 */  addiu      $at, $zero, -0x88E
    /* FE0C0 800EF110 8FBF0014 */  lw         $ra, 0x14($sp)
    /* FE0C4 800EF114 31092000 */  andi       $t1, $t0, 0x2000
    /* FE0C8 800EF118 11200003 */  beqz       $t1, .L800EF128_FE0D8
    /* FE0CC 800EF11C 00000000 */   nop
    /* FE0D0 800EF120 10000008 */  b          .L800EF144_FE0F4
    /* FE0D4 800EF124 00001025 */   or        $v0, $zero, $zero
  .L800EF128_FE0D8:
    /* FE0D8 800EF128 14810006 */  bne        $a0, $at, .L800EF144_FE0F4
    /* FE0DC 800EF12C 00001025 */   or        $v0, $zero, $zero
    /* FE0E0 800EF130 24010038 */  addiu      $at, $zero, 0x38
    /* FE0E4 800EF134 14A10003 */  bne        $a1, $at, .L800EF144_FE0F4
    /* FE0E8 800EF138 00000000 */   nop
    /* FE0EC 800EF13C 10000001 */  b          .L800EF144_FE0F4
    /* FE0F0 800EF140 24020001 */   addiu     $v0, $zero, 0x1
  .L800EF144_FE0F4:
    /* FE0F4 800EF144 03E00008 */  jr         $ra
    /* FE0F8 800EF148 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_800EF0B0_FE060
