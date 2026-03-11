nonmatching func_800AD240_BC1F0, 0x17C

glabel func_800AD240_BC1F0
    /* BC1F0 800AD240 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* BC1F4 800AD244 AFB00018 */  sw         $s0, 0x18($sp)
    /* BC1F8 800AD248 309000FF */  andi       $s0, $a0, 0xFF
    /* BC1FC 800AD24C 00107080 */  sll        $t6, $s0, 2
    /* BC200 800AD250 01D07023 */  subu       $t6, $t6, $s0
    /* BC204 800AD254 3C0F8005 */  lui        $t7, %hi(buildingInstances)
    /* BC208 800AD258 25EF0AD8 */  addiu      $t7, $t7, %lo(buildingInstances)
    /* BC20C 800AD25C 000E70C0 */  sll        $t6, $t6, 3
    /* BC210 800AD260 01CF4021 */  addu       $t0, $t6, $t7
    /* BC214 800AD264 91180007 */  lbu        $t8, 0x7($t0)
    /* BC218 800AD268 AFBF001C */  sw         $ra, 0x1C($sp)
    /* BC21C 800AD26C AFA40030 */  sw         $a0, 0x30($sp)
    /* BC220 800AD270 13000009 */  beqz       $t8, .L800AD298_BC248
    /* BC224 800AD274 3C198004 */   lui       $t9, %hi(currentLevel)
    /* BC228 800AD278 8F397F90 */  lw         $t9, %lo(currentLevel)($t9)
    /* BC22C 800AD27C 24010003 */  addiu      $at, $zero, 0x3
    /* BC230 800AD280 02002025 */  or         $a0, $s0, $zero
    /* BC234 800AD284 17210006 */  bne        $t9, $at, .L800AD2A0_BC250
    /* BC238 800AD288 27A5002E */   addiu     $a1, $sp, 0x2E
    /* BC23C 800AD28C 2401003E */  addiu      $at, $zero, 0x3E
    /* BC240 800AD290 56010004 */  bnel       $s0, $at, .L800AD2A4_BC254
    /* BC244 800AD294 27A6002A */   addiu     $a2, $sp, 0x2A
  .L800AD298_BC248:
    /* BC248 800AD298 10000043 */  b          .L800AD3A8_BC358
    /* BC24C 800AD29C 240200FF */   addiu     $v0, $zero, 0xFF
  .L800AD2A0_BC250:
    /* BC250 800AD2A0 27A6002A */  addiu      $a2, $sp, 0x2A
  .L800AD2A4_BC254:
    /* BC254 800AD2A4 27A7002C */  addiu      $a3, $sp, 0x2C
    /* BC258 800AD2A8 AFA80024 */  sw         $t0, 0x24($sp)
    /* BC25C 800AD2AC 0C046D15 */  jal        func_8011B454_12A404
    /* BC260 800AD2B0 A3B00033 */   sb        $s0, 0x33($sp)
    /* BC264 800AD2B4 0C01E55B */  jal        func_8007956C_8851C
    /* BC268 800AD2B8 24040001 */   addiu     $a0, $zero, 0x1
    /* BC26C 800AD2BC 304900FF */  andi       $t1, $v0, 0xFF
    /* BC270 800AD2C0 240100FF */  addiu      $at, $zero, 0xFF
    /* BC274 800AD2C4 8FA80024 */  lw         $t0, 0x24($sp)
    /* BC278 800AD2C8 11210036 */  beq        $t1, $at, .L800AD3A4_BC354
    /* BC27C 800AD2CC 305000FF */   andi      $s0, $v0, 0xFF
    /* BC280 800AD2D0 00106080 */  sll        $t4, $s0, 2
    /* BC284 800AD2D4 01906021 */  addu       $t4, $t4, $s0
    /* BC288 800AD2D8 3C0D8005 */  lui        $t5, %hi(alienInstances)
    /* BC28C 800AD2DC 25AD8198 */  addiu      $t5, $t5, %lo(alienInstances)
    /* BC290 800AD2E0 000C6100 */  sll        $t4, $t4, 4
    /* BC294 800AD2E4 018D1821 */  addu       $v1, $t4, $t5
    /* BC298 800AD2E8 910A0007 */  lbu        $t2, 0x7($t0)
    /* BC29C 800AD2EC 8C780020 */  lw         $t8, 0x20($v1)
    /* BC2A0 800AD2F0 87A4002E */  lh         $a0, 0x2E($sp)
    /* BC2A4 800AD2F4 87A5002C */  lh         $a1, 0x2C($sp)
    /* BC2A8 800AD2F8 87AE002A */  lh         $t6, 0x2A($sp)
    /* BC2AC 800AD2FC 93AF0033 */  lbu        $t7, 0x33($sp)
    /* BC2B0 800AD300 254BFFFF */  addiu      $t3, $t2, -0x1
    /* BC2B4 800AD304 37192000 */  ori        $t9, $t8, 0x2000
    /* BC2B8 800AD308 A10B0007 */  sb         $t3, 0x7($t0)
    /* BC2BC 800AD30C AC790020 */  sw         $t9, 0x20($v1)
    /* BC2C0 800AD310 AFA30020 */  sw         $v1, 0x20($sp)
    /* BC2C4 800AD314 AFA80024 */  sw         $t0, 0x24($sp)
    /* BC2C8 800AD318 A4640000 */  sh         $a0, 0x0($v1)
    /* BC2CC 800AD31C A4650004 */  sh         $a1, 0x4($v1)
    /* BC2D0 800AD320 A46E0002 */  sh         $t6, 0x2($v1)
    /* BC2D4 800AD324 0C02C3C8 */  jal        func_800B0F20_BFED0
    /* BC2D8 800AD328 A06F0046 */   sb        $t7, 0x46($v1)
    /* BC2DC 800AD32C 8FA30020 */  lw         $v1, 0x20($sp)
    /* BC2E0 800AD330 8FA80024 */  lw         $t0, 0x24($sp)
    /* BC2E4 800AD334 320400FF */  andi       $a0, $s0, 0xFF
    /* BC2E8 800AD338 A062001B */  sb         $v0, 0x1B($v1)
    /* BC2EC 800AD33C 0C0471A0 */  jal        func_8011C680_12B630
    /* BC2F0 800AD340 81050011 */   lb        $a1, 0x11($t0)
    /* BC2F4 800AD344 0C02B43C */  jal        func_800AD0F0_BC0A0
    /* BC2F8 800AD348 320400FF */   andi      $a0, $s0, 0xFF
    /* BC2FC 800AD34C 3C098004 */  lui        $t1, %hi(currentLevel)
    /* BC300 800AD350 8D297F90 */  lw         $t1, %lo(currentLevel)($t1)
    /* BC304 800AD354 24010004 */  addiu      $at, $zero, 0x4
    /* BC308 800AD358 3C0A8004 */  lui        $t2, %hi(D_80047F94)
    /* BC30C 800AD35C 55210012 */  bnel       $t1, $at, .L800AD3A8_BC358
    /* BC310 800AD360 02001025 */   or        $v0, $s0, $zero
    /* BC314 800AD364 8D4A7F94 */  lw         $t2, %lo(D_80047F94)($t2)
    /* BC318 800AD368 24040000 */  addiu      $a0, $zero, 0x0
    /* BC31C 800AD36C 5540000E */  bnel       $t2, $zero, .L800AD3A8_BC358
    /* BC320 800AD370 02001025 */   or        $v0, $s0, $zero
    /* BC324 800AD374 0C001C9B */  jal        func_8000726C_7E6C
    /* BC328 800AD378 2405000B */   addiu     $a1, $zero, 0xB
    /* BC32C 800AD37C 14400009 */  bnez       $v0, .L800AD3A4_BC354
    /* BC330 800AD380 24040000 */   addiu     $a0, $zero, 0x0
    /* BC334 800AD384 0C001C9B */  jal        func_8000726C_7E6C
    /* BC338 800AD388 2405000C */   addiu     $a1, $zero, 0xC
    /* BC33C 800AD38C 14400005 */  bnez       $v0, .L800AD3A4_BC354
    /* BC340 800AD390 02002025 */   or        $a0, $s0, $zero
    /* BC344 800AD394 24050001 */  addiu      $a1, $zero, 0x1
    /* BC348 800AD398 00003025 */  or         $a2, $zero, $zero
    /* BC34C 800AD39C 0C02B605 */  jal        func_800AD814_BC7C4
    /* BC350 800AD3A0 00003825 */   or        $a3, $zero, $zero
  .L800AD3A4_BC354:
    /* BC354 800AD3A4 02001025 */  or         $v0, $s0, $zero
  .L800AD3A8_BC358:
    /* BC358 800AD3A8 8FBF001C */  lw         $ra, 0x1C($sp)
    /* BC35C 800AD3AC 8FB00018 */  lw         $s0, 0x18($sp)
    /* BC360 800AD3B0 27BD0030 */  addiu      $sp, $sp, 0x30
    /* BC364 800AD3B4 03E00008 */  jr         $ra
    /* BC368 800AD3B8 00000000 */   nop
endlabel func_800AD240_BC1F0
