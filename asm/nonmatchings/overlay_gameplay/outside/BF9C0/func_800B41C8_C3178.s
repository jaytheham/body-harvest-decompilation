nonmatching func_800B41C8_C3178, 0xE8

glabel func_800B41C8_C3178
    /* C3178 800B41C8 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* C317C 800B41CC AFBF001C */  sw         $ra, 0x1C($sp)
    /* C3180 800B41D0 AFB10018 */  sw         $s1, 0x18($sp)
    /* C3184 800B41D4 AFB00014 */  sw         $s0, 0x14($sp)
    /* C3188 800B41D8 00C08025 */  or         $s0, $a2, $zero
    /* C318C 800B41DC 309100FF */  andi       $s1, $a0, 0xFF
    /* C3190 800B41E0 AFA40020 */  sw         $a0, 0x20($sp)
    /* C3194 800B41E4 AFA50024 */  sw         $a1, 0x24($sp)
    /* C3198 800B41E8 0C02C320 */  jal        func_800B0C80_BFC30
    /* C319C 800B41EC AFA7002C */   sw        $a3, 0x2C($sp)
    /* C31A0 800B41F0 0C02CCAB */  jal        func_800B32AC_C225C
    /* C31A4 800B41F4 02002025 */   or        $a0, $s0, $zero
    /* C31A8 800B41F8 322400FF */  andi       $a0, $s1, 0xFF
    /* C31AC 800B41FC 93A50027 */  lbu        $a1, 0x27($sp)
    /* C31B0 800B4200 02003025 */  or         $a2, $s0, $zero
    /* C31B4 800B4204 0C02D014 */  jal        func_800B4050_C3000
    /* C31B8 800B4208 93A7002F */   lbu       $a3, 0x2F($sp)
    /* C31BC 800B420C 0C02C2E5 */  jal        func_800B0B94_BFB44
    /* C31C0 800B4210 00000000 */   nop
    /* C31C4 800B4214 3C018015 */  lui        $at, %hi(D_8014FDC8)
    /* C31C8 800B4218 3C028015 */  lui        $v0, %hi(D_8014FD48)
    /* C31CC 800B421C A420FDC8 */  sh         $zero, %lo(D_8014FDC8)($at)
    /* C31D0 800B4220 2442FD48 */  addiu      $v0, $v0, %lo(D_8014FD48)
    /* C31D4 800B4224 00008025 */  or         $s0, $zero, $zero
  .L800B4228_C31D8:
    /* C31D8 800B4228 00107040 */  sll        $t6, $s0, 1
    /* C31DC 800B422C 26100001 */  addiu      $s0, $s0, 0x1
    /* C31E0 800B4230 0010C400 */  sll        $t8, $s0, 16
    /* C31E4 800B4234 00188403 */  sra        $s0, $t8, 16
    /* C31E8 800B4238 2A010040 */  slti       $at, $s0, 0x40
    /* C31EC 800B423C 004E7821 */  addu       $t7, $v0, $t6
    /* C31F0 800B4240 1420FFF9 */  bnez       $at, .L800B4228_C31D8
    /* C31F4 800B4244 A1E00000 */   sb        $zero, 0x0($t7)
    /* C31F8 800B4248 3C088004 */  lui        $t0, %hi(currentLevel)
    /* C31FC 800B424C 8D087F90 */  lw         $t0, %lo(currentLevel)($t0)
    /* C3200 800B4250 3C018015 */  lui        $at, %hi(D_8014F838)
    /* C3204 800B4254 AC20F838 */  sw         $zero, %lo(D_8014F838)($at)
    /* C3208 800B4258 24010005 */  addiu      $at, $zero, 0x5
    /* C320C 800B425C 1101000F */  beq        $t0, $at, .L800B429C_C324C
    /* C3210 800B4260 3C118004 */   lui       $s1, %hi(D_80047F98)
    /* C3214 800B4264 26317F98 */  addiu      $s1, $s1, %lo(D_80047F98)
    /* C3218 800B4268 8E290000 */  lw         $t1, 0x0($s1)
    /* C321C 800B426C 00008025 */  or         $s0, $zero, $zero
    /* C3220 800B4270 5920000B */  blezl      $t1, .L800B42A0_C3250
    /* C3224 800B4274 8FBF001C */   lw        $ra, 0x1C($sp)
  .L800B4278_C3228:
    /* C3228 800B4278 0C02C597 */  jal        func_800B165C_C060C
    /* C322C 800B427C 02002025 */   or        $a0, $s0, $zero
    /* C3230 800B4280 8E2C0000 */  lw         $t4, 0x0($s1)
    /* C3234 800B4284 26100001 */  addiu      $s0, $s0, 0x1
    /* C3238 800B4288 00105400 */  sll        $t2, $s0, 16
    /* C323C 800B428C 000A8403 */  sra        $s0, $t2, 16
    /* C3240 800B4290 020C082A */  slt        $at, $s0, $t4
    /* C3244 800B4294 1420FFF8 */  bnez       $at, .L800B4278_C3228
    /* C3248 800B4298 00000000 */   nop
  .L800B429C_C324C:
    /* C324C 800B429C 8FBF001C */  lw         $ra, 0x1C($sp)
  .L800B42A0_C3250:
    /* C3250 800B42A0 8FB00014 */  lw         $s0, 0x14($sp)
    /* C3254 800B42A4 8FB10018 */  lw         $s1, 0x18($sp)
    /* C3258 800B42A8 03E00008 */  jr         $ra
    /* C325C 800B42AC 27BD0020 */   addiu     $sp, $sp, 0x20
endlabel func_800B41C8_C3178
