nonmatching func_800E72A0_F6250, 0x98

glabel func_800E72A0_F6250
    /* F6250 800E72A0 3C0E8004 */  lui        $t6, %hi(currentLevel)
    /* F6254 800E72A4 8DCE7F90 */  lw         $t6, %lo(currentLevel)($t6)
    /* F6258 800E72A8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* F625C 800E72AC 24010002 */  addiu      $at, $zero, 0x2
    /* F6260 800E72B0 15C1000A */  bne        $t6, $at, .L800E72DC_F628C
    /* F6264 800E72B4 AFBF0014 */   sw        $ra, 0x14($sp)
    /* F6268 800E72B8 24040000 */  addiu      $a0, $zero, 0x0
    /* F626C 800E72BC 0C001C9B */  jal        func_8000726C_7E6C
    /* F6270 800E72C0 2405001E */   addiu     $a1, $zero, 0x1E
    /* F6274 800E72C4 14400005 */  bnez       $v0, .L800E72DC_F628C
    /* F6278 800E72C8 00000000 */   nop
    /* F627C 800E72CC 0C038A0C */  jal        func_800E2830_F17E0
    /* F6280 800E72D0 00000000 */   nop
    /* F6284 800E72D4 10000008 */  b          .L800E72F8_F62A8
    /* F6288 800E72D8 00000000 */   nop
  .L800E72DC_F628C:
    /* F628C 800E72DC 3C0F8004 */  lui        $t7, %hi(currentLevel)
    /* F6290 800E72E0 8DEF7F90 */  lw         $t7, %lo(currentLevel)($t7)
    /* F6294 800E72E4 24010004 */  addiu      $at, $zero, 0x4
    /* F6298 800E72E8 15E10003 */  bne        $t7, $at, .L800E72F8_F62A8
    /* F629C 800E72EC 00000000 */   nop
    /* F62A0 800E72F0 0C038A0C */  jal        func_800E2830_F17E0
    /* F62A4 800E72F4 00000000 */   nop
  .L800E72F8_F62A8:
    /* F62A8 800E72F8 0C038704 */  jal        func_800E1C10_F0BC0
    /* F62AC 800E72FC 00000000 */   nop
    /* F62B0 800E7300 3C188005 */  lui        $t8, %hi(D_80052ACB)
    /* F62B4 800E7304 93182ACB */  lbu        $t8, %lo(D_80052ACB)($t8)
    /* F62B8 800E7308 17000003 */  bnez       $t8, .L800E7318_F62C8
    /* F62BC 800E730C 00000000 */   nop
    /* F62C0 800E7310 0C03992D */  jal        func_800E64B4_F5464
    /* F62C4 800E7314 00000000 */   nop
  .L800E7318_F62C8:
    /* F62C8 800E7318 0C0396DE */  jal        func_800E5B78_F4B28
    /* F62CC 800E731C 00000000 */   nop
    /* F62D0 800E7320 0C039483 */  jal        func_800E520C_F41BC
    /* F62D4 800E7324 00000000 */   nop
    /* F62D8 800E7328 8FBF0014 */  lw         $ra, 0x14($sp)
    /* F62DC 800E732C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* F62E0 800E7330 03E00008 */  jr         $ra
    /* F62E4 800E7334 00000000 */   nop
endlabel func_800E72A0_F6250
