nonmatching func_800CD2E8_DC298, 0xA8

glabel func_800CD2E8_DC298
    /* DC298 800CD2E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* DC29C 800CD2EC 00057400 */  sll        $t6, $a1, 16
    /* DC2A0 800CD2F0 0006C400 */  sll        $t8, $a2, 16
    /* DC2A4 800CD2F4 30E800FF */  andi       $t0, $a3, 0xFF
    /* DC2A8 800CD2F8 240100FB */  addiu      $at, $zero, 0xFB
    /* DC2AC 800CD2FC 0018CC03 */  sra        $t9, $t8, 16
    /* DC2B0 800CD300 000E7C03 */  sra        $t7, $t6, 16
    /* DC2B4 800CD304 AFBF0014 */  sw         $ra, 0x14($sp)
    /* DC2B8 800CD308 AFA40018 */  sw         $a0, 0x18($sp)
    /* DC2BC 800CD30C AFA5001C */  sw         $a1, 0x1C($sp)
    /* DC2C0 800CD310 AFA60020 */  sw         $a2, 0x20($sp)
    /* DC2C4 800CD314 11010017 */  beq        $t0, $at, .L800CD374_DC324
    /* DC2C8 800CD318 AFA70024 */   sw        $a3, 0x24($sp)
    /* DC2CC 800CD31C 00084880 */  sll        $t1, $t0, 2
    /* DC2D0 800CD320 01284823 */  subu       $t1, $t1, $t0
    /* DC2D4 800CD324 3C0A8015 */  lui        $t2, %hi(D_80154088)
    /* DC2D8 800CD328 254A4088 */  addiu      $t2, $t2, %lo(D_80154088)
    /* DC2DC 800CD32C 00094880 */  sll        $t1, $t1, 2
    /* DC2E0 800CD330 012A2021 */  addu       $a0, $t1, $t2
    /* DC2E4 800CD334 908B0000 */  lbu        $t3, 0x0($a0)
    /* DC2E8 800CD338 240100FA */  addiu      $at, $zero, 0xFA
    /* DC2EC 800CD33C 3C0D8015 */  lui        $t5, %hi(D_80154318)
    /* DC2F0 800CD340 1161000C */  beq        $t3, $at, .L800CD374_DC324
    /* DC2F4 800CD344 00000000 */   nop
    /* DC2F8 800CD348 84830006 */  lh         $v1, 0x6($a0)
    /* DC2FC 800CD34C 25AD4318 */  addiu      $t5, $t5, %lo(D_80154318)
    /* DC300 800CD350 87AE001A */  lh         $t6, 0x1A($sp)
    /* DC304 800CD354 000360C0 */  sll        $t4, $v1, 3
    /* DC308 800CD358 01836023 */  subu       $t4, $t4, $v1
    /* DC30C 800CD35C 000C6080 */  sll        $t4, $t4, 2
    /* DC310 800CD360 018D1021 */  addu       $v0, $t4, $t5
    /* DC314 800CD364 A44F000A */  sh         $t7, 0xA($v0)
    /* DC318 800CD368 A459000C */  sh         $t9, 0xC($v0)
    /* DC31C 800CD36C 10000004 */  b          .L800CD380_DC330
    /* DC320 800CD370 A44E0008 */   sh        $t6, 0x8($v0)
  .L800CD374_DC324:
    /* DC324 800CD374 3C048014 */  lui        $a0, %hi(D_801436D8)
    /* DC328 800CD378 0C00731B */  jal        osSyncPrintf
    /* DC32C 800CD37C 248436D8 */   addiu     $a0, $a0, %lo(D_801436D8)
  .L800CD380_DC330:
    /* DC330 800CD380 8FBF0014 */  lw         $ra, 0x14($sp)
    /* DC334 800CD384 27BD0018 */  addiu      $sp, $sp, 0x18
    /* DC338 800CD388 03E00008 */  jr         $ra
    /* DC33C 800CD38C 00000000 */   nop
endlabel func_800CD2E8_DC298
