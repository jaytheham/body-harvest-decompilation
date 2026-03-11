nonmatching func_800D9294_E8244, 0x288

glabel func_800D9294_E8244
    /* E8244 800D9294 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* E8248 800D9298 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* E824C 800D929C 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* E8250 800D92A0 8C620000 */  lw         $v0, 0x0($v1)
    /* E8254 800D92A4 AFB20020 */  sw         $s2, 0x20($sp)
    /* E8258 800D92A8 3C128015 */  lui        $s2, %hi(D_801542E2)
    /* E825C 800D92AC 865242E2 */  lh         $s2, %lo(D_801542E2)($s2)
    /* E8260 800D92B0 AFBF003C */  sw         $ra, 0x3C($sp)
    /* E8264 800D92B4 244E0008 */  addiu      $t6, $v0, 0x8
    /* E8268 800D92B8 AFBE0038 */  sw         $fp, 0x38($sp)
    /* E826C 800D92BC AFB70034 */  sw         $s7, 0x34($sp)
    /* E8270 800D92C0 AFB60030 */  sw         $s6, 0x30($sp)
    /* E8274 800D92C4 AFB5002C */  sw         $s5, 0x2C($sp)
    /* E8278 800D92C8 AFB40028 */  sw         $s4, 0x28($sp)
    /* E827C 800D92CC AFB30024 */  sw         $s3, 0x24($sp)
    /* E8280 800D92D0 AFB1001C */  sw         $s1, 0x1C($sp)
    /* E8284 800D92D4 AFB00018 */  sw         $s0, 0x18($sp)
    /* E8288 800D92D8 AC6E0000 */  sw         $t6, 0x0($v1)
    /* E828C 800D92DC 3C1FE700 */  lui        $ra, (0xE7000000 >> 16)
    /* E8290 800D92E0 AC5F0000 */  sw         $ra, 0x0($v0)
    /* E8294 800D92E4 AC400004 */  sw         $zero, 0x4($v0)
    /* E8298 800D92E8 8C620000 */  lw         $v0, 0x0($v1)
    /* E829C 800D92EC 3C19F0F5 */  lui        $t9, (0xF0F5FFFF >> 16)
    /* E82A0 800D92F0 3739FFFF */  ori        $t9, $t9, (0xF0F5FFFF & 0xFFFF)
    /* E82A4 800D92F4 244F0008 */  addiu      $t7, $v0, 0x8
    /* E82A8 800D92F8 AC6F0000 */  sw         $t7, 0x0($v1)
    /* E82AC 800D92FC 3C18FA00 */  lui        $t8, (0xFA000000 >> 16)
    /* E82B0 800D9300 AC580000 */  sw         $t8, 0x0($v0)
    /* E82B4 800D9304 AC590004 */  sw         $t9, 0x4($v0)
    /* E82B8 800D9308 8C620000 */  lw         $v0, 0x0($v1)
    /* E82BC 800D930C 3C18FF65 */  lui        $t8, (0xFF65FEFF >> 16)
    /* E82C0 800D9310 3C0FFCFF */  lui        $t7, (0xFCFFB3FF >> 16)
    /* E82C4 800D9314 244E0008 */  addiu      $t6, $v0, 0x8
    /* E82C8 800D9318 AC6E0000 */  sw         $t6, 0x0($v1)
    /* E82CC 800D931C 35EFB3FF */  ori        $t7, $t7, (0xFCFFB3FF & 0xFFFF)
    /* E82D0 800D9320 3718FEFF */  ori        $t8, $t8, (0xFF65FEFF & 0xFFFF)
    /* E82D4 800D9324 AC580004 */  sw         $t8, 0x4($v0)
    /* E82D8 800D9328 AC4F0000 */  sw         $t7, 0x0($v0)
    /* E82DC 800D932C 8C620000 */  lw         $v0, 0x0($v1)
    /* E82E0 800D9330 3C0F0101 */  lui        $t7, %hi(D_100ACF0)
    /* E82E4 800D9334 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* E82E8 800D9338 24590008 */  addiu      $t9, $v0, 0x8
    /* E82EC 800D933C AC790000 */  sw         $t9, 0x0($v1)
    /* E82F0 800D9340 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* E82F4 800D9344 25EFACF0 */  addiu      $t7, $t7, %lo(D_100ACF0)
    /* E82F8 800D9348 01E1C024 */  and        $t8, $t7, $at
    /* E82FC 800D934C 3C0EFD90 */  lui        $t6, (0xFD900000 >> 16)
    /* E8300 800D9350 AC4E0000 */  sw         $t6, 0x0($v0)
    /* E8304 800D9354 AC580004 */  sw         $t8, 0x4($v0)
    /* E8308 800D9358 8C620000 */  lw         $v0, 0x0($v1)
    /* E830C 800D935C 3C0F0708 */  lui        $t7, (0x7080200 >> 16)
    /* E8310 800D9360 35EF0200 */  ori        $t7, $t7, (0x7080200 & 0xFFFF)
    /* E8314 800D9364 24590008 */  addiu      $t9, $v0, 0x8
    /* E8318 800D9368 AC790000 */  sw         $t9, 0x0($v1)
    /* E831C 800D936C 3C0EF590 */  lui        $t6, (0xF5900000 >> 16)
    /* E8320 800D9370 AC4E0000 */  sw         $t6, 0x0($v0)
    /* E8324 800D9374 AC4F0004 */  sw         $t7, 0x4($v0)
    /* E8328 800D9378 8C620000 */  lw         $v0, 0x0($v1)
    /* E832C 800D937C 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
    /* E8330 800D9380 3C0FF300 */  lui        $t7, (0xF3000000 >> 16)
    /* E8334 800D9384 24580008 */  addiu      $t8, $v0, 0x8
    /* E8338 800D9388 AC780000 */  sw         $t8, 0x0($v1)
    /* E833C 800D938C AC400004 */  sw         $zero, 0x4($v0)
    /* E8340 800D9390 AC590000 */  sw         $t9, 0x0($v0)
    /* E8344 800D9394 8C620000 */  lw         $v0, 0x0($v1)
    /* E8348 800D9398 3C180703 */  lui        $t8, (0x703F800 >> 16)
    /* E834C 800D939C 3718F800 */  ori        $t8, $t8, (0x703F800 & 0xFFFF)
    /* E8350 800D93A0 244E0008 */  addiu      $t6, $v0, 0x8
    /* E8354 800D93A4 AC6E0000 */  sw         $t6, 0x0($v1)
    /* E8358 800D93A8 AC580004 */  sw         $t8, 0x4($v0)
    /* E835C 800D93AC AC4F0000 */  sw         $t7, 0x0($v0)
    /* E8360 800D93B0 8C620000 */  lw         $v0, 0x0($v1)
    /* E8364 800D93B4 3C0FF580 */  lui        $t7, (0xF5800200 >> 16)
    /* E8368 800D93B8 3C180008 */  lui        $t8, (0x80200 >> 16)
    /* E836C 800D93BC 24590008 */  addiu      $t9, $v0, 0x8
    /* E8370 800D93C0 AC790000 */  sw         $t9, 0x0($v1)
    /* E8374 800D93C4 AC400004 */  sw         $zero, 0x4($v0)
    /* E8378 800D93C8 AC5F0000 */  sw         $ra, 0x0($v0)
    /* E837C 800D93CC 8C620000 */  lw         $v0, 0x0($v1)
    /* E8380 800D93D0 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
    /* E8384 800D93D4 35EF0200 */  ori        $t7, $t7, (0xF5800200 & 0xFFFF)
    /* E8388 800D93D8 244E0008 */  addiu      $t6, $v0, 0x8
    /* E838C 800D93DC AC6E0000 */  sw         $t6, 0x0($v1)
    /* E8390 800D93E0 AC580004 */  sw         $t8, 0x4($v0)
    /* E8394 800D93E4 AC4F0000 */  sw         $t7, 0x0($v0)
    /* E8398 800D93E8 8C620000 */  lw         $v0, 0x0($v1)
    /* E839C 800D93EC 3C0F0003 */  lui        $t7, (0x3C03C >> 16)
    /* E83A0 800D93F0 35EFC03C */  ori        $t7, $t7, (0x3C03C & 0xFFFF)
    /* E83A4 800D93F4 24590008 */  addiu      $t9, $v0, 0x8
    /* E83A8 800D93F8 AC790000 */  sw         $t9, 0x0($v1)
    /* E83AC 800D93FC 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
    /* E83B0 800D9400 AC4E0000 */  sw         $t6, 0x0($v0)
    /* E83B4 800D9404 AC4F0004 */  sw         $t7, 0x4($v0)
    /* E83B8 800D9408 8C620000 */  lw         $v0, 0x0($v1)
    /* E83BC 800D940C 3C198015 */  lui        $t9, %hi(D_80153B80)
    /* E83C0 800D9410 27393B80 */  addiu      $t9, $t9, %lo(D_80153B80)
    /* E83C4 800D9414 24580008 */  addiu      $t8, $v0, 0x8
    /* E83C8 800D9418 AC780000 */  sw         $t8, 0x0($v1)
    /* E83CC 800D941C 3C018015 */  lui        $at, %hi(D_80153BC4)
    /* E83D0 800D9420 AC400004 */  sw         $zero, 0x4($v0)
    /* E83D4 800D9424 AC5F0000 */  sw         $ra, 0x0($v0)
    /* E83D8 800D9428 AC393BC4 */  sw         $t9, %lo(D_80153BC4)($at)
    /* E83DC 800D942C 24050010 */  addiu      $a1, $zero, 0x10
    /* E83E0 800D9430 3C018015 */  lui        $at, %hi(D_80153BCD)
    /* E83E4 800D9434 A0253BCD */  sb         $a1, %lo(D_80153BCD)($at)
    /* E83E8 800D9438 3C018015 */  lui        $at, %hi(D_80153BCE)
    /* E83EC 800D943C A0253BCE */  sb         $a1, %lo(D_80153BCE)($at)
    /* E83F0 800D9440 241EFFFB */  addiu      $fp, $zero, -0x5
    /* E83F4 800D9444 3C018015 */  lui        $at, %hi(D_80153BCC)
    /* E83F8 800D9448 240E00FF */  addiu      $t6, $zero, 0xFF
    /* E83FC 800D944C 125E0027 */  beq        $s2, $fp, .L800D94EC_E849C
    /* E8400 800D9450 A02E3BCC */   sb        $t6, %lo(D_80153BCC)($at)
    /* E8404 800D9454 2414FFFA */  addiu      $s4, $zero, -0x6
    /* E8408 800D9458 12540024 */  beq        $s2, $s4, .L800D94EC_E849C
    /* E840C 800D945C 3C178015 */   lui       $s7, %hi(D_80153BC8)
    /* E8410 800D9460 3C158015 */  lui        $s5, %hi(D_80154318)
    /* E8414 800D9464 3C138015 */  lui        $s3, %hi(D_80156EDA)
    /* E8418 800D9468 3C118015 */  lui        $s1, %hi(D_80153BB8)
    /* E841C 800D946C 26313BB8 */  addiu      $s1, $s1, %lo(D_80153BB8)
    /* E8420 800D9470 26736EDA */  addiu      $s3, $s3, %lo(D_80156EDA)
    /* E8424 800D9474 26B54318 */  addiu      $s5, $s5, %lo(D_80154318)
    /* E8428 800D9478 26F73BC8 */  addiu      $s7, $s7, %lo(D_80153BC8)
    /* E842C 800D947C 2416001C */  addiu      $s6, $zero, 0x1C
  .L800D9480_E8430:
    /* E8430 800D9480 02560019 */  multu      $s2, $s6
    /* E8434 800D9484 00007812 */  mflo       $t7
    /* E8438 800D9488 02AF8021 */  addu       $s0, $s5, $t7
    /* E843C 800D948C 86180008 */  lh         $t8, 0x8($s0)
    /* E8440 800D9490 8619000A */  lh         $t9, 0xA($s0)
    /* E8444 800D9494 860E000C */  lh         $t6, 0xC($s0)
    /* E8448 800D9498 44982000 */  mtc1       $t8, $f4
    /* E844C 800D949C 860F0002 */  lh         $t7, 0x2($s0)
    /* E8450 800D94A0 44994000 */  mtc1       $t9, $f8
    /* E8454 800D94A4 468021A0 */  cvt.s.w    $f6, $f4
    /* E8458 800D94A8 448E8000 */  mtc1       $t6, $f16
    /* E845C 800D94AC 448F2000 */  mtc1       $t7, $f4
    /* E8460 800D94B0 468042A0 */  cvt.s.w    $f10, $f8
    /* E8464 800D94B4 E6260000 */  swc1       $f6, 0x0($s1)
    /* E8468 800D94B8 468084A0 */  cvt.s.w    $f18, $f16
    /* E846C 800D94BC E62A0004 */  swc1       $f10, 0x4($s1)
    /* E8470 800D94C0 468021A0 */  cvt.s.w    $f6, $f4
    /* E8474 800D94C4 E6320008 */  swc1       $f18, 0x8($s1)
    /* E8478 800D94C8 0C036CD4 */  jal        func_800DB350_EA300
    /* E847C 800D94CC E6E60000 */   swc1      $f6, 0x0($s7)
    /* E8480 800D94D0 86780000 */  lh         $t8, 0x0($s3)
    /* E8484 800D94D4 86120004 */  lh         $s2, 0x4($s0)
    /* E8488 800D94D8 27190004 */  addiu      $t9, $t8, 0x4
    /* E848C 800D94DC 125E0003 */  beq        $s2, $fp, .L800D94EC_E849C
    /* E8490 800D94E0 A6790000 */   sh        $t9, 0x0($s3)
    /* E8494 800D94E4 1654FFE6 */  bne        $s2, $s4, .L800D9480_E8430
    /* E8498 800D94E8 00000000 */   nop
  .L800D94EC_E849C:
    /* E849C 800D94EC 8FBF003C */  lw         $ra, 0x3C($sp)
    /* E84A0 800D94F0 8FB00018 */  lw         $s0, 0x18($sp)
    /* E84A4 800D94F4 8FB1001C */  lw         $s1, 0x1C($sp)
    /* E84A8 800D94F8 8FB20020 */  lw         $s2, 0x20($sp)
    /* E84AC 800D94FC 8FB30024 */  lw         $s3, 0x24($sp)
    /* E84B0 800D9500 8FB40028 */  lw         $s4, 0x28($sp)
    /* E84B4 800D9504 8FB5002C */  lw         $s5, 0x2C($sp)
    /* E84B8 800D9508 8FB60030 */  lw         $s6, 0x30($sp)
    /* E84BC 800D950C 8FB70034 */  lw         $s7, 0x34($sp)
    /* E84C0 800D9510 8FBE0038 */  lw         $fp, 0x38($sp)
    /* E84C4 800D9514 03E00008 */  jr         $ra
    /* E84C8 800D9518 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800D9294_E8244
