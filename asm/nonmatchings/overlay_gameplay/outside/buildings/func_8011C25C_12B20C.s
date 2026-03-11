nonmatching func_8011C25C_12B20C, 0xDC

glabel func_8011C25C_12B20C
    /* 12B20C 8011C25C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 12B210 8011C260 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 12B214 8011C264 AFA40020 */  sw         $a0, 0x20($sp)
    /* 12B218 8011C268 80880001 */  lb         $t0, 0x1($a0)
    /* 12B21C 8011C26C 80860002 */  lb         $a2, 0x2($a0)
    /* 12B220 8011C270 80870000 */  lb         $a3, 0x0($a0)
    /* 12B224 8011C274 00086A00 */  sll        $t5, $t0, 8
    /* 12B228 8011C278 0006CA00 */  sll        $t9, $a2, 8
    /* 12B22C 8011C27C 01B92023 */  subu       $a0, $t5, $t9
    /* 12B230 8011C280 00045C00 */  sll        $t3, $a0, 16
    /* 12B234 8011C284 0007C200 */  sll        $t8, $a3, 8
    /* 12B238 8011C288 A7B8001E */  sh         $t8, 0x1E($sp)
    /* 12B23C 8011C28C 000B2403 */  sra        $a0, $t3, 16
    /* 12B240 8011C290 A7B9001A */  sh         $t9, 0x1A($sp)
    /* 12B244 8011C294 A7AD001C */  sh         $t5, 0x1C($sp)
    /* 12B248 8011C298 0C045D42 */  jal        func_80117508_1264B8
    /* 12B24C 8011C29C AFA50024 */   sw        $a1, 0x24($sp)
    /* 12B250 8011C2A0 8FA50024 */  lw         $a1, 0x24($sp)
    /* 12B254 8011C2A4 3C098005 */  lui        $t1, %hi(buildingInstances)
    /* 12B258 8011C2A8 87A6001A */  lh         $a2, 0x1A($sp)
    /* 12B25C 8011C2AC 87A7001E */  lh         $a3, 0x1E($sp)
    /* 12B260 8011C2B0 87A8001C */  lh         $t0, 0x1C($sp)
    /* 12B264 8011C2B4 2444FFFF */  addiu      $a0, $v0, -0x1
    /* 12B268 8011C2B8 25290AD8 */  addiu      $t1, $t1, %lo(buildingInstances)
    /* 12B26C 8011C2BC 240A0018 */  addiu      $t2, $zero, 0x18
    /* 12B270 8011C2C0 24A50001 */  addiu      $a1, $a1, 0x1
  .L8011C2C4_12B274:
    /* 12B274 8011C2C4 14A00003 */  bnez       $a1, .L8011C2D4_12B284
    /* 12B278 8011C2C8 00E67821 */   addu      $t7, $a3, $a2
    /* 12B27C 8011C2CC 10000016 */  b          .L8011C328_12B2D8
    /* 12B280 8011C2D0 00801025 */   or        $v0, $a0, $zero
  .L8011C2D4_12B284:
    /* 12B284 8011C2D4 24840001 */  addiu      $a0, $a0, 0x1
    /* 12B288 8011C2D8 008A0019 */  multu      $a0, $t2
    /* 12B28C 8011C2DC 00E67023 */  subu       $t6, $a3, $a2
    /* 12B290 8011C2E0 00006812 */  mflo       $t5
    /* 12B294 8011C2E4 012D1021 */  addu       $v0, $t1, $t5
    /* 12B298 8011C2E8 84430000 */  lh         $v1, 0x0($v0)
    /* 12B29C 8011C2EC 006E082A */  slt        $at, $v1, $t6
    /* 12B2A0 8011C2F0 14200004 */  bnez       $at, .L8011C304_12B2B4
    /* 12B2A4 8011C2F4 006F082A */   slt       $at, $v1, $t7
    /* 12B2A8 8011C2F8 50200003 */  beql       $at, $zero, .L8011C308_12B2B8
    /* 12B2AC 8011C2FC 288100FF */   slti      $at, $a0, 0xFF
    /* 12B2B0 8011C300 24A5FFFF */  addiu      $a1, $a1, -0x1
  .L8011C304_12B2B4:
    /* 12B2B4 8011C304 288100FF */  slti       $at, $a0, 0xFF
  .L8011C308_12B2B8:
    /* 12B2B8 8011C308 50200007 */  beql       $at, $zero, .L8011C328_12B2D8
    /* 12B2BC 8011C30C 2402FFFF */   addiu     $v0, $zero, -0x1
    /* 12B2C0 8011C310 84580004 */  lh         $t8, 0x4($v0)
    /* 12B2C4 8011C314 0106C821 */  addu       $t9, $t0, $a2
    /* 12B2C8 8011C318 0319082A */  slt        $at, $t8, $t9
    /* 12B2CC 8011C31C 1420FFE9 */  bnez       $at, .L8011C2C4_12B274
    /* 12B2D0 8011C320 00000000 */   nop
    /* 12B2D4 8011C324 2402FFFF */  addiu      $v0, $zero, -0x1
  .L8011C328_12B2D8:
    /* 12B2D8 8011C328 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 12B2DC 8011C32C 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 12B2E0 8011C330 03E00008 */  jr         $ra
    /* 12B2E4 8011C334 00000000 */   nop
endlabel func_8011C25C_12B20C
