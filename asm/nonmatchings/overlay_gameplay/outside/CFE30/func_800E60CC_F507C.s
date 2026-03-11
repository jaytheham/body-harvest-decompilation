nonmatching func_800E60CC_F507C, 0x80

glabel func_800E60CC_F507C
    /* F507C 800E60CC 3C038015 */  lui        $v1, %hi(D_80152C96)
    /* F5080 800E60D0 84632C96 */  lh         $v1, %lo(D_80152C96)($v1)
    /* F5084 800E60D4 AFA40000 */  sw         $a0, 0x0($sp)
    /* F5088 800E60D8 308E00FF */  andi       $t6, $a0, 0xFF
    /* F508C 800E60DC AFA50004 */  sw         $a1, 0x4($sp)
    /* F5090 800E60E0 30A600FF */  andi       $a2, $a1, 0xFF
    /* F5094 800E60E4 18600016 */  blez       $v1, .L800E6140_F50F0
    /* F5098 800E60E8 00001025 */   or        $v0, $zero, $zero
    /* F509C 800E60EC 3C078015 */  lui        $a3, %hi(D_80152CA0)
    /* F50A0 800E60F0 24E72CA0 */  addiu      $a3, $a3, %lo(D_80152CA0)
    /* F50A4 800E60F4 01C02825 */  or         $a1, $t6, $zero
    /* F50A8 800E60F8 24080003 */  addiu      $t0, $zero, 0x3
  .L800E60FC_F50AC:
    /* F50AC 800E60FC 00480019 */  multu      $v0, $t0
    /* F50B0 800E6100 24420001 */  addiu      $v0, $v0, 0x1
    /* F50B4 800E6104 00024C00 */  sll        $t1, $v0, 16
    /* F50B8 800E6108 00091403 */  sra        $v0, $t1, 16
    /* F50BC 800E610C 0043082A */  slt        $at, $v0, $v1
    /* F50C0 800E6110 00007812 */  mflo       $t7
    /* F50C4 800E6114 00EF2021 */  addu       $a0, $a3, $t7
    /* F50C8 800E6118 90980001 */  lbu        $t8, 0x1($a0)
    /* F50CC 800E611C 14B80006 */  bne        $a1, $t8, .L800E6138_F50E8
    /* F50D0 800E6120 00000000 */   nop
    /* F50D4 800E6124 90990000 */  lbu        $t9, 0x0($a0)
    /* F50D8 800E6128 14D90003 */  bne        $a2, $t9, .L800E6138_F50E8
    /* F50DC 800E612C 00000000 */   nop
    /* F50E0 800E6130 03E00008 */  jr         $ra
    /* F50E4 800E6134 24020001 */   addiu     $v0, $zero, 0x1
  .L800E6138_F50E8:
    /* F50E8 800E6138 1420FFF0 */  bnez       $at, .L800E60FC_F50AC
    /* F50EC 800E613C 00000000 */   nop
  .L800E6140_F50F0:
    /* F50F0 800E6140 00001025 */  or         $v0, $zero, $zero
    /* F50F4 800E6144 03E00008 */  jr         $ra
    /* F50F8 800E6148 00000000 */   nop
endlabel func_800E60CC_F507C
