nonmatching func_800E52E8_F4298, 0x168

glabel func_800E52E8_F4298
    /* F4298 800E52E8 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* F429C 800E52EC 3C0F8014 */  lui        $t7, %hi(D_8013E40C)
    /* F42A0 800E52F0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* F42A4 800E52F4 AFA40030 */  sw         $a0, 0x30($sp)
    /* F42A8 800E52F8 AFA50034 */  sw         $a1, 0x34($sp)
    /* F42AC 800E52FC AFA60038 */  sw         $a2, 0x38($sp)
    /* F42B0 800E5300 AFA7003C */  sw         $a3, 0x3C($sp)
    /* F42B4 800E5304 25EFE40C */  addiu      $t7, $t7, %lo(D_8013E40C)
    /* F42B8 800E5308 99E10002 */  lwr        $at, 0x2($t7)
    /* F42BC 800E530C 27AE0020 */  addiu      $t6, $sp, 0x20
    /* F42C0 800E5310 3C078015 */  lui        $a3, %hi(D_80152D00)
    /* F42C4 800E5314 B9C10002 */  swr        $at, 0x2($t6)
    /* F42C8 800E5318 87AB0032 */  lh         $t3, 0x32($sp)
    /* F42CC 800E531C 87AC003A */  lh         $t4, 0x3A($sp)
    /* F42D0 800E5320 87AD003E */  lh         $t5, 0x3E($sp)
    /* F42D4 800E5324 87B90046 */  lh         $t9, 0x46($sp)
    /* F42D8 800E5328 24030040 */  addiu      $v1, $zero, 0x40
    /* F42DC 800E532C 24E72D00 */  addiu      $a3, $a3, %lo(D_80152D00)
    /* F42E0 800E5330 00001025 */  or         $v0, $zero, $zero
    /* F42E4 800E5334 24080018 */  addiu      $t0, $zero, 0x18
    /* F42E8 800E5338 A7AB0028 */  sh         $t3, 0x28($sp)
    /* F42EC 800E533C A7AC002A */  sh         $t4, 0x2A($sp)
    /* F42F0 800E5340 A7AD0024 */  sh         $t5, 0x24($sp)
    /* F42F4 800E5344 A7B90026 */  sh         $t9, 0x26($sp)
  .L800E5348_F42F8:
    /* F42F8 800E5348 00480019 */  multu      $v0, $t0
    /* F42FC 800E534C 0000C012 */  mflo       $t8
    /* F4300 800E5350 00F87021 */  addu       $t6, $a3, $t8
    /* F4304 800E5354 85CF0000 */  lh         $t7, 0x0($t6)
    /* F4308 800E5358 55E00004 */  bnel       $t7, $zero, .L800E536C_F431C
    /* F430C 800E535C 24420001 */   addiu     $v0, $v0, 0x1
    /* F4310 800E5360 10000006 */  b          .L800E537C_F432C
    /* F4314 800E5364 304300FF */   andi      $v1, $v0, 0xFF
    /* F4318 800E5368 24420001 */  addiu      $v0, $v0, 0x1
  .L800E536C_F431C:
    /* F431C 800E536C 304A00FF */  andi       $t2, $v0, 0xFF
    /* F4320 800E5370 29410040 */  slti       $at, $t2, 0x40
    /* F4324 800E5374 1420FFF4 */  bnez       $at, .L800E5348_F42F8
    /* F4328 800E5378 01401025 */   or        $v0, $t2, $zero
  .L800E537C_F432C:
    /* F432C 800E537C 24010040 */  addiu      $at, $zero, 0x40
    /* F4330 800E5380 14610014 */  bne        $v1, $at, .L800E53D4_F4384
    /* F4334 800E5384 93A9004B */   lbu       $t1, 0x4B($sp)
    /* F4338 800E5388 3C048014 */  lui        $a0, %hi(D_8013DD1A)
    /* F433C 800E538C 9084DD1A */  lbu        $a0, %lo(D_8013DD1A)($a0)
    /* F4340 800E5390 00001025 */  or         $v0, $zero, $zero
    /* F4344 800E5394 93A5002C */  lbu        $a1, 0x2C($sp)
  .L800E5398_F4348:
    /* F4348 800E5398 00480019 */  multu      $v0, $t0
    /* F434C 800E539C 00005812 */  mflo       $t3
    /* F4350 800E53A0 00EB6021 */  addu       $t4, $a3, $t3
    /* F4354 800E53A4 85830002 */  lh         $v1, 0x2($t4)
    /* F4358 800E53A8 0083082A */  slt        $at, $a0, $v1
    /* F435C 800E53AC 54200004 */  bnel       $at, $zero, .L800E53C0_F4370
    /* F4360 800E53B0 24420001 */   addiu     $v0, $v0, 0x1
    /* F4364 800E53B4 304500FF */  andi       $a1, $v0, 0xFF
    /* F4368 800E53B8 306400FF */  andi       $a0, $v1, 0xFF
    /* F436C 800E53BC 24420001 */  addiu      $v0, $v0, 0x1
  .L800E53C0_F4370:
    /* F4370 800E53C0 304D00FF */  andi       $t5, $v0, 0xFF
    /* F4374 800E53C4 29A10040 */  slti       $at, $t5, 0x40
    /* F4378 800E53C8 1420FFF3 */  bnez       $at, .L800E5398_F4348
    /* F437C 800E53CC 01A01025 */   or        $v0, $t5, $zero
    /* F4380 800E53D0 30A300FF */  andi       $v1, $a1, 0xFF
  .L800E53D4_F4384:
    /* F4384 800E53D4 00680019 */  multu      $v1, $t0
    /* F4388 800E53D8 3C188014 */  lui        $t8, %hi(D_8013DD18)
    /* F438C 800E53DC 0309C021 */  addu       $t8, $t8, $t1
    /* F4390 800E53E0 9318DD18 */  lbu        $t8, %lo(D_8013DD18)($t8)
    /* F4394 800E53E4 87AE0032 */  lh         $t6, 0x32($sp)
    /* F4398 800E53E8 87AF0036 */  lh         $t7, 0x36($sp)
    /* F439C 800E53EC 87AA003A */  lh         $t2, 0x3A($sp)
    /* F43A0 800E53F0 87AB003E */  lh         $t3, 0x3E($sp)
    /* F43A4 800E53F4 87AC0042 */  lh         $t4, 0x42($sp)
    /* F43A8 800E53F8 87AD0046 */  lh         $t5, 0x46($sp)
    /* F43AC 800E53FC 0000C812 */  mflo       $t9
    /* F43B0 800E5400 00F91021 */  addu       $v0, $a3, $t9
    /* F43B4 800E5404 24190001 */  addiu      $t9, $zero, 0x1
    /* F43B8 800E5408 AC400010 */  sw         $zero, 0x10($v0)
    /* F43BC 800E540C A0490014 */  sb         $t1, 0x14($v0)
    /* F43C0 800E5410 A4590000 */  sh         $t9, 0x0($v0)
    /* F43C4 800E5414 27A40028 */  addiu      $a0, $sp, 0x28
    /* F43C8 800E5418 27A50024 */  addiu      $a1, $sp, 0x24
    /* F43CC 800E541C 27A60020 */  addiu      $a2, $sp, 0x20
    /* F43D0 800E5420 A4580002 */  sh         $t8, 0x2($v0)
    /* F43D4 800E5424 A44E0004 */  sh         $t6, 0x4($v0)
    /* F43D8 800E5428 A44F0006 */  sh         $t7, 0x6($v0)
    /* F43DC 800E542C A44A0008 */  sh         $t2, 0x8($v0)
    /* F43E0 800E5430 A44B000A */  sh         $t3, 0xA($v0)
    /* F43E4 800E5434 A44C000C */  sh         $t4, 0xC($v0)
    /* F43E8 800E5438 0C02C69A */  jal        func_800B1A68_C0A18
    /* F43EC 800E543C A44D000E */   sh        $t5, 0xE($v0)
    /* F43F0 800E5440 8FBF0014 */  lw         $ra, 0x14($sp)
    /* F43F4 800E5444 27BD0030 */  addiu      $sp, $sp, 0x30
    /* F43F8 800E5448 03E00008 */  jr         $ra
    /* F43FC 800E544C 00000000 */   nop
endlabel func_800E52E8_F4298
