nonmatching func_800AD3BC_BC36C, 0x198

glabel func_800AD3BC_BC36C
    /* BC36C 800AD3BC 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* BC370 800AD3C0 AFA40038 */  sw         $a0, 0x38($sp)
    /* BC374 800AD3C4 93A4003B */  lbu        $a0, 0x3B($sp)
    /* BC378 800AD3C8 AFBF001C */  sw         $ra, 0x1C($sp)
    /* BC37C 800AD3CC AFB00018 */  sw         $s0, 0x18($sp)
    /* BC380 800AD3D0 27A50036 */  addiu      $a1, $sp, 0x36
    /* BC384 800AD3D4 27A60032 */  addiu      $a2, $sp, 0x32
    /* BC388 800AD3D8 27A70034 */  addiu      $a3, $sp, 0x34
    /* BC38C 800AD3DC 0C046D15 */  jal        func_8011B454_12A404
    /* BC390 800AD3E0 AFA4002C */   sw        $a0, 0x2C($sp)
    /* BC394 800AD3E4 0C01E55B */  jal        func_8007956C_8851C
    /* BC398 800AD3E8 24040001 */   addiu     $a0, $zero, 0x1
    /* BC39C 800AD3EC 304E00FF */  andi       $t6, $v0, 0xFF
    /* BC3A0 800AD3F0 240100FF */  addiu      $at, $zero, 0xFF
    /* BC3A4 800AD3F4 11C10052 */  beq        $t6, $at, .L800AD540_BC4F0
    /* BC3A8 800AD3F8 305000FF */   andi      $s0, $v0, 0xFF
    /* BC3AC 800AD3FC 93A2003B */  lbu        $v0, 0x3B($sp)
    /* BC3B0 800AD400 00104880 */  sll        $t1, $s0, 2
    /* BC3B4 800AD404 01304821 */  addu       $t1, $t1, $s0
    /* BC3B8 800AD408 3C0A8005 */  lui        $t2, %hi(alienInstances)
    /* BC3BC 800AD40C 254A8198 */  addiu      $t2, $t2, %lo(alienInstances)
    /* BC3C0 800AD410 00094900 */  sll        $t1, $t1, 4
    /* BC3C4 800AD414 00027880 */  sll        $t7, $v0, 2
    /* BC3C8 800AD418 3C188005 */  lui        $t8, %hi(buildingInstances)
    /* BC3CC 800AD41C 012A1821 */  addu       $v1, $t1, $t2
    /* BC3D0 800AD420 01E27823 */  subu       $t7, $t7, $v0
    /* BC3D4 800AD424 000F78C0 */  sll        $t7, $t7, 3
    /* BC3D8 800AD428 27180AD8 */  addiu      $t8, $t8, %lo(buildingInstances)
    /* BC3DC 800AD42C 01F83021 */  addu       $a2, $t7, $t8
    /* BC3E0 800AD430 90D90007 */  lbu        $t9, 0x7($a2)
    /* BC3E4 800AD434 8C6D0020 */  lw         $t5, 0x20($v1)
    /* BC3E8 800AD438 87A40036 */  lh         $a0, 0x36($sp)
    /* BC3EC 800AD43C 87A50034 */  lh         $a1, 0x34($sp)
    /* BC3F0 800AD440 87AB0032 */  lh         $t3, 0x32($sp)
    /* BC3F4 800AD444 240C00A0 */  addiu      $t4, $zero, 0xA0
    /* BC3F8 800AD448 2728FFFF */  addiu      $t0, $t9, -0x1
    /* BC3FC 800AD44C 35AE1000 */  ori        $t6, $t5, 0x1000
    /* BC400 800AD450 A0C80007 */  sb         $t0, 0x7($a2)
    /* BC404 800AD454 A46C0048 */  sh         $t4, 0x48($v1)
    /* BC408 800AD458 AC6E0020 */  sw         $t6, 0x20($v1)
    /* BC40C 800AD45C AFA60028 */  sw         $a2, 0x28($sp)
    /* BC410 800AD460 AFA30024 */  sw         $v1, 0x24($sp)
    /* BC414 800AD464 A0620046 */  sb         $v0, 0x46($v1)
    /* BC418 800AD468 A4640000 */  sh         $a0, 0x0($v1)
    /* BC41C 800AD46C A4650004 */  sh         $a1, 0x4($v1)
    /* BC420 800AD470 0C02C3C8 */  jal        func_800B0F20_BFED0
    /* BC424 800AD474 A46B0002 */   sh        $t3, 0x2($v1)
    /* BC428 800AD478 8FA30024 */  lw         $v1, 0x24($sp)
    /* BC42C 800AD47C 8FA60028 */  lw         $a2, 0x28($sp)
    /* BC430 800AD480 320400FF */  andi       $a0, $s0, 0xFF
    /* BC434 800AD484 A062001B */  sb         $v0, 0x1B($v1)
    /* BC438 800AD488 0C0471A0 */  jal        func_8011C680_12B630
    /* BC43C 800AD48C 80C50011 */   lb        $a1, 0x11($a2)
    /* BC440 800AD490 8FA60028 */  lw         $a2, 0x28($sp)
    /* BC444 800AD494 240100FF */  addiu      $at, $zero, 0xFF
    /* BC448 800AD498 8FA30024 */  lw         $v1, 0x24($sp)
    /* BC44C 800AD49C 90C2000E */  lbu        $v0, 0xE($a2)
    /* BC450 800AD4A0 10410005 */  beq        $v0, $at, .L800AD4B8_BC468
    /* BC454 800AD4A4 00000000 */   nop
    /* BC458 800AD4A8 8C6F0020 */  lw         $t7, 0x20($v1)
    /* BC45C 800AD4AC A4620038 */  sh         $v0, 0x38($v1)
    /* BC460 800AD4B0 35F80080 */  ori        $t8, $t7, 0x80
    /* BC464 800AD4B4 AC780020 */  sw         $t8, 0x20($v1)
  .L800AD4B8_BC468:
    /* BC468 800AD4B8 3C028004 */  lui        $v0, %hi(currentLevel)
    /* BC46C 800AD4BC 8C427F90 */  lw         $v0, %lo(currentLevel)($v0)
    /* BC470 800AD4C0 24010003 */  addiu      $at, $zero, 0x3
    /* BC474 800AD4C4 8FB9002C */  lw         $t9, 0x2C($sp)
    /* BC478 800AD4C8 1441000E */  bne        $v0, $at, .L800AD504_BC4B4
    /* BC47C 800AD4CC 2401003E */   addiu     $at, $zero, 0x3E
    /* BC480 800AD4D0 1721000C */  bne        $t9, $at, .L800AD504_BC4B4
    /* BC484 800AD4D4 02002025 */   or        $a0, $s0, $zero
    /* BC488 800AD4D8 3C028005 */  lui        $v0, %hi(D_8004816C)
    /* BC48C 800AD4DC 2442816C */  addiu      $v0, $v0, %lo(D_8004816C)
    /* BC490 800AD4E0 84480000 */  lh         $t0, 0x0($v0)
    /* BC494 800AD4E4 24050014 */  addiu      $a1, $zero, 0x14
    /* BC498 800AD4E8 00003025 */  or         $a2, $zero, $zero
    /* BC49C 800AD4EC 25090001 */  addiu      $t1, $t0, 0x1
    /* BC4A0 800AD4F0 A4490000 */  sh         $t1, 0x0($v0)
    /* BC4A4 800AD4F4 0C02B605 */  jal        func_800AD814_BC7C4
    /* BC4A8 800AD4F8 00003825 */   or        $a3, $zero, $zero
    /* BC4AC 800AD4FC 3C028004 */  lui        $v0, %hi(currentLevel)
    /* BC4B0 800AD500 8C427F90 */  lw         $v0, %lo(currentLevel)($v0)
  .L800AD504_BC4B4:
    /* BC4B4 800AD504 24010004 */  addiu      $at, $zero, 0x4
    /* BC4B8 800AD508 1441000D */  bne        $v0, $at, .L800AD540_BC4F0
    /* BC4BC 800AD50C 24040000 */   addiu     $a0, $zero, 0x0
    /* BC4C0 800AD510 0C001C9B */  jal        func_8000726C_7E6C
    /* BC4C4 800AD514 2405000B */   addiu     $a1, $zero, 0xB
    /* BC4C8 800AD518 14400009 */  bnez       $v0, .L800AD540_BC4F0
    /* BC4CC 800AD51C 24040000 */   addiu     $a0, $zero, 0x0
    /* BC4D0 800AD520 0C001C9B */  jal        func_8000726C_7E6C
    /* BC4D4 800AD524 2405000C */   addiu     $a1, $zero, 0xC
    /* BC4D8 800AD528 14400005 */  bnez       $v0, .L800AD540_BC4F0
    /* BC4DC 800AD52C 02002025 */   or        $a0, $s0, $zero
    /* BC4E0 800AD530 24050001 */  addiu      $a1, $zero, 0x1
    /* BC4E4 800AD534 00003025 */  or         $a2, $zero, $zero
    /* BC4E8 800AD538 0C02B605 */  jal        func_800AD814_BC7C4
    /* BC4EC 800AD53C 00003825 */   or        $a3, $zero, $zero
  .L800AD540_BC4F0:
    /* BC4F0 800AD540 8FBF001C */  lw         $ra, 0x1C($sp)
    /* BC4F4 800AD544 02001025 */  or         $v0, $s0, $zero
    /* BC4F8 800AD548 8FB00018 */  lw         $s0, 0x18($sp)
    /* BC4FC 800AD54C 03E00008 */  jr         $ra
    /* BC500 800AD550 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_800AD3BC_BC36C
