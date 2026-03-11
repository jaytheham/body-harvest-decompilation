nonmatching func_80120334_12F2E4, 0xE0

glabel func_80120334_12F2E4
    /* 12F2E4 80120334 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 12F2E8 80120338 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 12F2EC 8012033C AFB00040 */  sw         $s0, 0x40($sp)
    /* 12F2F0 80120340 240EFF64 */  addiu      $t6, $zero, -0x9C
    /* 12F2F4 80120344 240F01CC */  addiu      $t7, $zero, 0x1CC
    /* 12F2F8 80120348 241800B8 */  addiu      $t8, $zero, 0xB8
    /* 12F2FC 8012034C 24190098 */  addiu      $t9, $zero, 0x98
    /* 12F300 80120350 2408000F */  addiu      $t0, $zero, 0xF
    /* 12F304 80120354 00808025 */  or         $s0, $a0, $zero
    /* 12F308 80120358 AFA80020 */  sw         $t0, 0x20($sp)
    /* 12F30C 8012035C AFB9001C */  sw         $t9, 0x1C($sp)
    /* 12F310 80120360 AFB80018 */  sw         $t8, 0x18($sp)
    /* 12F314 80120364 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 12F318 80120368 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 12F31C 8012036C 24050005 */  addiu      $a1, $zero, 0x5
    /* 12F320 80120370 2406FF25 */  addiu      $a2, $zero, -0xDB
    /* 12F324 80120374 0C047EA4 */  jal        func_8011FA90_12EA40
    /* 12F328 80120378 00003825 */   or        $a3, $zero, $zero
    /* 12F32C 8012037C 3C098005 */  lui        $t1, %hi(buildingInstances)
    /* 12F330 80120380 25290AD8 */  addiu      $t1, $t1, %lo(buildingInstances)
    /* 12F334 80120384 02092823 */  subu       $a1, $s0, $t1
    /* 12F338 80120388 24010018 */  addiu      $at, $zero, 0x18
    /* 12F33C 8012038C 00A1001A */  div        $zero, $a1, $at
    /* 12F340 80120390 86070002 */  lh         $a3, 0x2($s0)
    /* 12F344 80120394 860F0004 */  lh         $t7, 0x4($s0)
    /* 12F348 80120398 86060000 */  lh         $a2, 0x0($s0)
    /* 12F34C 8012039C 00005012 */  mflo       $t2
    /* 12F350 801203A0 000A5900 */  sll        $t3, $t2, 4
    /* 12F354 801203A4 25650005 */  addiu      $a1, $t3, 0x5
    /* 12F358 801203A8 3C0A8012 */  lui        $t2, %hi(func_801202DC_12F28C)
    /* 12F35C 801203AC 24E70015 */  addiu      $a3, $a3, 0x15
    /* 12F360 801203B0 00076C00 */  sll        $t5, $a3, 16
    /* 12F364 801203B4 254A02DC */  addiu      $t2, $t2, %lo(func_801202DC_12F28C)
    /* 12F368 801203B8 30ACFFFF */  andi       $t4, $a1, 0xFFFF
    /* 12F36C 801203BC 24090064 */  addiu      $t1, $zero, 0x64
    /* 12F370 801203C0 24190064 */  addiu      $t9, $zero, 0x64
    /* 12F374 801203C4 24080064 */  addiu      $t0, $zero, 0x64
    /* 12F378 801203C8 25F8FF40 */  addiu      $t8, $t7, -0xC0
    /* 12F37C 801203CC AFB80010 */  sw         $t8, 0x10($sp)
    /* 12F380 801203D0 AFA80024 */  sw         $t0, 0x24($sp)
    /* 12F384 801203D4 AFB90020 */  sw         $t9, 0x20($sp)
    /* 12F388 801203D8 AFA90028 */  sw         $t1, 0x28($sp)
    /* 12F38C 801203DC 01802825 */  or         $a1, $t4, $zero
    /* 12F390 801203E0 AFAA002C */  sw         $t2, 0x2C($sp)
    /* 12F394 801203E4 000D3C03 */  sra        $a3, $t5, 16
    /* 12F398 801203E8 AFA00030 */  sw         $zero, 0x30($sp)
    /* 12F39C 801203EC AFA0001C */  sw         $zero, 0x1C($sp)
    /* 12F3A0 801203F0 AFA00018 */  sw         $zero, 0x18($sp)
    /* 12F3A4 801203F4 AFA00014 */  sw         $zero, 0x14($sp)
    /* 12F3A8 801203F8 0C04B5C0 */  jal        func_8012D700_13C6B0
    /* 12F3AC 801203FC 24040004 */   addiu     $a0, $zero, 0x4
    /* 12F3B0 80120400 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 12F3B4 80120404 8FB00040 */  lw         $s0, 0x40($sp)
    /* 12F3B8 80120408 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 12F3BC 8012040C 03E00008 */  jr         $ra
    /* 12F3C0 80120410 00000000 */   nop
endlabel func_80120334_12F2E4
