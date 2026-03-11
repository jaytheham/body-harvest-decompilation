nonmatching func_800BD20C_CC1BC, 0xE8

glabel func_800BD20C_CC1BC
    /* CC1BC 800BD20C 3C038004 */  lui        $v1, %hi(D_80047F98)
    /* CC1C0 800BD210 8C637F98 */  lw         $v1, %lo(D_80047F98)($v1)
    /* CC1C4 800BD214 27BDFFF8 */  addiu      $sp, $sp, -0x8
    /* CC1C8 800BD218 AFB00004 */  sw         $s0, 0x4($sp)
    /* CC1CC 800BD21C 18600032 */  blez       $v1, .L800BD2E8_CC298
    /* CC1D0 800BD220 00001025 */   or        $v0, $zero, $zero
    /* CC1D4 800BD224 3C058004 */  lui        $a1, %hi(currentLevel)
    /* CC1D8 800BD228 8CA57F90 */  lw         $a1, %lo(currentLevel)($a1)
    /* CC1DC 800BD22C 3C0F8014 */  lui        $t7, %hi(D_80147F00)
    /* CC1E0 800BD230 25EF7F00 */  addiu      $t7, $t7, %lo(D_80147F00)
    /* CC1E4 800BD234 00057080 */  sll        $t6, $a1, 2
    /* CC1E8 800BD238 01C57023 */  subu       $t6, $t6, $a1
    /* CC1EC 800BD23C 000E7080 */  sll        $t6, $t6, 2
    /* CC1F0 800BD240 3C0D8004 */  lui        $t5, %hi(D_8003E0FC)
    /* CC1F4 800BD244 25ADE0FC */  addiu      $t5, $t5, %lo(D_8003E0FC)
    /* CC1F8 800BD248 01CF3021 */  addu       $a2, $t6, $t7
    /* CC1FC 800BD24C 2410000A */  addiu      $s0, $zero, 0xA
    /* CC200 800BD250 240C0050 */  addiu      $t4, $zero, 0x50
  .L800BD254_CC204:
    /* CC204 800BD254 0002C040 */  sll        $t8, $v0, 1
    /* CC208 800BD258 00D8C821 */  addu       $t9, $a2, $t8
    /* CC20C 800BD25C 9727FFF4 */  lhu        $a3, -0xC($t9)
    /* CC210 800BD260 00002025 */  or         $a0, $zero, $zero
    /* CC214 800BD264 00004025 */  or         $t0, $zero, $zero
  .L800BD268_CC218:
    /* CC218 800BD268 240E0001 */  addiu      $t6, $zero, 0x1
    /* CC21C 800BD26C 010E7804 */  sllv       $t7, $t6, $t0
    /* CC220 800BD270 00EFC024 */  and        $t8, $a3, $t7
    /* CC224 800BD274 53000013 */  beql       $t8, $zero, .L800BD2C4_CC274
    /* CC228 800BD278 24840001 */   addiu     $a0, $a0, 0x1
    /* CC22C 800BD27C 00900019 */  multu      $a0, $s0
    /* CC230 800BD280 0005C880 */  sll        $t9, $a1, 2
    /* CC234 800BD284 0325C821 */  addu       $t9, $t9, $a1
    /* CC238 800BD288 0019C900 */  sll        $t9, $t9, 4
    /* CC23C 800BD28C 01B97021 */  addu       $t6, $t5, $t9
    /* CC240 800BD290 00007812 */  mflo       $t7
    /* CC244 800BD294 01CF4021 */  addu       $t0, $t6, $t7
    /* CC248 800BD298 8109FFB6 */  lb         $t1, -0x4A($t0)
    /* CC24C 800BD29C 11890008 */  beq        $t4, $t1, .L800BD2C0_CC270
    /* CC250 800BD2A0 00095023 */   negu      $t2, $t1
    /* CC254 800BD2A4 0149082A */  slt        $at, $t2, $t1
    /* CC258 800BD2A8 10200003 */  beqz       $at, .L800BD2B8_CC268
    /* CC25C 800BD2AC 01405825 */   or        $t3, $t2, $zero
    /* CC260 800BD2B0 10000001 */  b          .L800BD2B8_CC268
    /* CC264 800BD2B4 01205825 */   or        $t3, $t1, $zero
  .L800BD2B8_CC268:
    /* CC268 800BD2B8 25780001 */  addiu      $t8, $t3, 0x1
    /* CC26C 800BD2BC A118FFB6 */  sb         $t8, -0x4A($t0)
  .L800BD2C0_CC270:
    /* CC270 800BD2C0 24840001 */  addiu      $a0, $a0, 0x1
  .L800BD2C4_CC274:
    /* CC274 800BD2C4 308800FF */  andi       $t0, $a0, 0xFF
    /* CC278 800BD2C8 29010010 */  slti       $at, $t0, 0x10
    /* CC27C 800BD2CC 1420FFE6 */  bnez       $at, .L800BD268_CC218
    /* CC280 800BD2D0 01002025 */   or        $a0, $t0, $zero
    /* CC284 800BD2D4 24420001 */  addiu      $v0, $v0, 0x1
    /* CC288 800BD2D8 304E00FF */  andi       $t6, $v0, 0xFF
    /* CC28C 800BD2DC 01C3082A */  slt        $at, $t6, $v1
    /* CC290 800BD2E0 1420FFDC */  bnez       $at, .L800BD254_CC204
    /* CC294 800BD2E4 01C01025 */   or        $v0, $t6, $zero
  .L800BD2E8_CC298:
    /* CC298 800BD2E8 8FB00004 */  lw         $s0, 0x4($sp)
    /* CC29C 800BD2EC 03E00008 */  jr         $ra
    /* CC2A0 800BD2F0 27BD0008 */   addiu     $sp, $sp, 0x8
endlabel func_800BD20C_CC1BC
