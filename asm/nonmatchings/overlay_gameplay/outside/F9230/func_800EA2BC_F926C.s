nonmatching func_800EA2BC_F926C, 0x40

glabel func_800EA2BC_F926C
    /* F926C 800EA2BC 3C0E8005 */  lui        $t6, %hi(D_80052B34)
    /* F9270 800EA2C0 8DCE2B34 */  lw         $t6, %lo(D_80052B34)($t6)
    /* F9274 800EA2C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* F9278 800EA2C8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* F927C 800EA2CC 91CF001A */  lbu        $t7, 0x1A($t6)
    /* F9280 800EA2D0 3C048015 */  lui        $a0, %hi(D_80157600)
    /* F9284 800EA2D4 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* F9288 800EA2D8 15E00004 */  bnez       $t7, .L800EA2EC_F929C
    /* F928C 800EA2DC 2405002F */   addiu     $a1, $zero, 0x2F
    /* F9290 800EA2E0 00003025 */  or         $a2, $zero, $zero
    /* F9294 800EA2E4 0C03AD4D */  jal        func_800EB534_FA4E4
    /* F9298 800EA2E8 24070000 */   addiu     $a3, $zero, 0x0
  .L800EA2EC_F929C:
    /* F929C 800EA2EC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* F92A0 800EA2F0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* F92A4 800EA2F4 03E00008 */  jr         $ra
    /* F92A8 800EA2F8 00000000 */   nop
endlabel func_800EA2BC_F926C
