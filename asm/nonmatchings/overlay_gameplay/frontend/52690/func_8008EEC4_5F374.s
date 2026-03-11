nonmatching func_8008EEC4_5F374, 0x31C

glabel func_8008EEC4_5F374
    /* 5F374 8008EEC4 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 5F378 8008EEC8 3C0E800E */  lui        $t6, %hi(D_800DE0B6)
    /* 5F37C 8008EECC 91CEE0B6 */  lbu        $t6, %lo(D_800DE0B6)($t6)
    /* 5F380 8008EED0 24010001 */  addiu      $at, $zero, 0x1
    /* 5F384 8008EED4 AFBF0054 */  sw         $ra, 0x54($sp)
    /* 5F388 8008EED8 AFB20050 */  sw         $s2, 0x50($sp)
    /* 5F38C 8008EEDC AFB1004C */  sw         $s1, 0x4C($sp)
    /* 5F390 8008EEE0 AFB00048 */  sw         $s0, 0x48($sp)
    /* 5F394 8008EEE4 15C100B7 */  bne        $t6, $at, .L8008F1C4_5F674
    /* 5F398 8008EEE8 F7B40040 */   sdc1      $f20, 0x40($sp)
    /* 5F39C 8008EEEC 3C0142A0 */  lui        $at, (0x42A00000 >> 16)
    /* 5F3A0 8008EEF0 4481A000 */  mtc1       $at, $f20
    /* 5F3A4 8008EEF4 00008825 */  or         $s1, $zero, $zero
    /* 5F3A8 8008EEF8 241203E8 */  addiu      $s2, $zero, 0x3E8
    /* 5F3AC 8008EEFC 27B00060 */  addiu      $s0, $sp, 0x60
  .L8008EF00_5F3B0:
    /* 5F3B0 8008EF00 0C000E38 */  jal        func_800038E0_44E0
    /* 5F3B4 8008EF04 00000000 */   nop
    /* 5F3B8 8008EF08 0052001A */  div        $zero, $v0, $s2
    /* 5F3BC 8008EF0C 00007810 */  mfhi       $t7
    /* 5F3C0 8008EF10 25F8FC18 */  addiu      $t8, $t7, -0x3E8
    /* 5F3C4 8008EF14 44982000 */  mtc1       $t8, $f4
    /* 5F3C8 8008EF18 16400002 */  bnez       $s2, .L8008EF24_5F3D4
    /* 5F3CC 8008EF1C 00000000 */   nop
    /* 5F3D0 8008EF20 0007000D */  break      7
  .L8008EF24_5F3D4:
    /* 5F3D4 8008EF24 2401FFFF */  addiu      $at, $zero, -0x1
    /* 5F3D8 8008EF28 16410004 */  bne        $s2, $at, .L8008EF3C_5F3EC
    /* 5F3DC 8008EF2C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 5F3E0 8008EF30 14410002 */  bne        $v0, $at, .L8008EF3C_5F3EC
    /* 5F3E4 8008EF34 00000000 */   nop
    /* 5F3E8 8008EF38 0006000D */  break      6
  .L8008EF3C_5F3EC:
    /* 5F3EC 8008EF3C 468021A0 */  cvt.s.w    $f6, $f4
    /* 5F3F0 8008EF40 0C000E38 */  jal        func_800038E0_44E0
    /* 5F3F4 8008EF44 E7A60060 */   swc1      $f6, 0x60($sp)
    /* 5F3F8 8008EF48 0052001A */  div        $zero, $v0, $s2
    /* 5F3FC 8008EF4C 0000C810 */  mfhi       $t9
    /* 5F400 8008EF50 2728FE0C */  addiu      $t0, $t9, -0x1F4
    /* 5F404 8008EF54 44884000 */  mtc1       $t0, $f8
    /* 5F408 8008EF58 16400002 */  bnez       $s2, .L8008EF64_5F414
    /* 5F40C 8008EF5C 00000000 */   nop
    /* 5F410 8008EF60 0007000D */  break      7
  .L8008EF64_5F414:
    /* 5F414 8008EF64 2401FFFF */  addiu      $at, $zero, -0x1
    /* 5F418 8008EF68 16410004 */  bne        $s2, $at, .L8008EF7C_5F42C
    /* 5F41C 8008EF6C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 5F420 8008EF70 14410002 */  bne        $v0, $at, .L8008EF7C_5F42C
    /* 5F424 8008EF74 00000000 */   nop
    /* 5F428 8008EF78 0006000D */  break      6
  .L8008EF7C_5F42C:
    /* 5F42C 8008EF7C 468042A0 */  cvt.s.w    $f10, $f8
    /* 5F430 8008EF80 0C000E38 */  jal        func_800038E0_44E0
    /* 5F434 8008EF84 E7AA0064 */   swc1      $f10, 0x64($sp)
    /* 5F438 8008EF88 0052001A */  div        $zero, $v0, $s2
    /* 5F43C 8008EF8C 00004810 */  mfhi       $t1
    /* 5F440 8008EF90 252AFC18 */  addiu      $t2, $t1, -0x3E8
    /* 5F444 8008EF94 448A8000 */  mtc1       $t2, $f16
    /* 5F448 8008EF98 16400002 */  bnez       $s2, .L8008EFA4_5F454
    /* 5F44C 8008EF9C 00000000 */   nop
    /* 5F450 8008EFA0 0007000D */  break      7
  .L8008EFA4_5F454:
    /* 5F454 8008EFA4 2401FFFF */  addiu      $at, $zero, -0x1
    /* 5F458 8008EFA8 16410004 */  bne        $s2, $at, .L8008EFBC_5F46C
    /* 5F45C 8008EFAC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 5F460 8008EFB0 14410002 */  bne        $v0, $at, .L8008EFBC_5F46C
    /* 5F464 8008EFB4 00000000 */   nop
    /* 5F468 8008EFB8 0006000D */  break      6
  .L8008EFBC_5F46C:
    /* 5F46C 8008EFBC 468084A0 */  cvt.s.w    $f18, $f16
    /* 5F470 8008EFC0 02002025 */  or         $a0, $s0, $zero
    /* 5F474 8008EFC4 02002825 */  or         $a1, $s0, $zero
    /* 5F478 8008EFC8 0C020DED */  jal        func_800837B4_53C64
    /* 5F47C 8008EFCC E7B20068 */   swc1      $f18, 0x68($sp)
    /* 5F480 8008EFD0 4600A306 */  mov.s      $f12, $f20
    /* 5F484 8008EFD4 02002825 */  or         $a1, $s0, $zero
    /* 5F488 8008EFD8 0C020E2E */  jal        func_800838B8_53D68
    /* 5F48C 8008EFDC 02003025 */   or        $a2, $s0, $zero
    /* 5F490 8008EFE0 C7A40060 */  lwc1       $f4, 0x60($sp)
    /* 5F494 8008EFE4 C7A80064 */  lwc1       $f8, 0x64($sp)
    /* 5F498 8008EFE8 C7B00068 */  lwc1       $f16, 0x68($sp)
    /* 5F49C 8008EFEC 4600218D */  trunc.w.s  $f6, $f4
    /* 5F4A0 8008EFF0 240A0046 */  addiu      $t2, $zero, 0x46
    /* 5F4A4 8008EFF4 240B0019 */  addiu      $t3, $zero, 0x19
    /* 5F4A8 8008EFF8 4600428D */  trunc.w.s  $f10, $f8
    /* 5F4AC 8008EFFC 44043000 */  mfc1       $a0, $f6
    /* 5F4B0 8008F000 240D006E */  addiu      $t5, $zero, 0x6E
    /* 5F4B4 8008F004 4600848D */  trunc.w.s  $f18, $f16
    /* 5F4B8 8008F008 44055000 */  mfc1       $a1, $f10
    /* 5F4BC 8008F00C 00046400 */  sll        $t4, $a0, 16
    /* 5F4C0 8008F010 000C2403 */  sra        $a0, $t4, 16
    /* 5F4C4 8008F014 44069000 */  mfc1       $a2, $f18
    /* 5F4C8 8008F018 00057C00 */  sll        $t7, $a1, 16
    /* 5F4CC 8008F01C 000F2C03 */  sra        $a1, $t7, 16
    /* 5F4D0 8008F020 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 5F4D4 8008F024 240C0003 */  addiu      $t4, $zero, 0x3
    /* 5F4D8 8008F028 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 5F4DC 8008F02C 241800FF */  addiu      $t8, $zero, 0xFF
    /* 5F4E0 8008F030 24190003 */  addiu      $t9, $zero, 0x3
    /* 5F4E4 8008F034 00064400 */  sll        $t0, $a2, 16
    /* 5F4E8 8008F038 00083403 */  sra        $a2, $t0, 16
    /* 5F4EC 8008F03C AFB90034 */  sw         $t9, 0x34($sp)
    /* 5F4F0 8008F040 AFB80030 */  sw         $t8, 0x30($sp)
    /* 5F4F4 8008F044 AFAE0028 */  sw         $t6, 0x28($sp)
    /* 5F4F8 8008F048 AFAC0020 */  sw         $t4, 0x20($sp)
    /* 5F4FC 8008F04C AFAF002C */  sw         $t7, 0x2C($sp)
    /* 5F500 8008F050 AFAD0024 */  sw         $t5, 0x24($sp)
    /* 5F504 8008F054 AFAB001C */  sw         $t3, 0x1C($sp)
    /* 5F508 8008F058 AFAA0018 */  sw         $t2, 0x18($sp)
    /* 5F50C 8008F05C 2407FFFF */  addiu      $a3, $zero, -0x1
    /* 5F510 8008F060 AFA00010 */  sw         $zero, 0x10($sp)
    /* 5F514 8008F064 0C02173B */  jal        func_80085CEC_5619C
    /* 5F518 8008F068 AFA00014 */   sw        $zero, 0x14($sp)
    /* 5F51C 8008F06C 26310001 */  addiu      $s1, $s1, 0x1
    /* 5F520 8008F070 322800FF */  andi       $t0, $s1, 0xFF
    /* 5F524 8008F074 29010003 */  slti       $at, $t0, 0x3
    /* 5F528 8008F078 1420FFA1 */  bnez       $at, .L8008EF00_5F3B0
    /* 5F52C 8008F07C 01008825 */   or        $s1, $t0, $zero
    /* 5F530 8008F080 0C000E38 */  jal        func_800038E0_44E0
    /* 5F534 8008F084 00000000 */   nop
    /* 5F538 8008F088 0052001A */  div        $zero, $v0, $s2
    /* 5F53C 8008F08C 00004810 */  mfhi       $t1
    /* 5F540 8008F090 252AFE0C */  addiu      $t2, $t1, -0x1F4
    /* 5F544 8008F094 448A2000 */  mtc1       $t2, $f4
    /* 5F548 8008F098 16400002 */  bnez       $s2, .L8008F0A4_5F554
    /* 5F54C 8008F09C 00000000 */   nop
    /* 5F550 8008F0A0 0007000D */  break      7
  .L8008F0A4_5F554:
    /* 5F554 8008F0A4 2401FFFF */  addiu      $at, $zero, -0x1
    /* 5F558 8008F0A8 16410004 */  bne        $s2, $at, .L8008F0BC_5F56C
    /* 5F55C 8008F0AC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 5F560 8008F0B0 14410002 */  bne        $v0, $at, .L8008F0BC_5F56C
    /* 5F564 8008F0B4 00000000 */   nop
    /* 5F568 8008F0B8 0006000D */  break      6
  .L8008F0BC_5F56C:
    /* 5F56C 8008F0BC 468021A0 */  cvt.s.w    $f6, $f4
    /* 5F570 8008F0C0 0C000E38 */  jal        func_800038E0_44E0
    /* 5F574 8008F0C4 E7A60060 */   swc1      $f6, 0x60($sp)
    /* 5F578 8008F0C8 0052001A */  div        $zero, $v0, $s2
    /* 5F57C 8008F0CC 00005810 */  mfhi       $t3
    /* 5F580 8008F0D0 256CFE0C */  addiu      $t4, $t3, -0x1F4
    /* 5F584 8008F0D4 448C4000 */  mtc1       $t4, $f8
    /* 5F588 8008F0D8 16400002 */  bnez       $s2, .L8008F0E4_5F594
    /* 5F58C 8008F0DC 00000000 */   nop
    /* 5F590 8008F0E0 0007000D */  break      7
  .L8008F0E4_5F594:
    /* 5F594 8008F0E4 2401FFFF */  addiu      $at, $zero, -0x1
    /* 5F598 8008F0E8 16410004 */  bne        $s2, $at, .L8008F0FC_5F5AC
    /* 5F59C 8008F0EC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 5F5A0 8008F0F0 14410002 */  bne        $v0, $at, .L8008F0FC_5F5AC
    /* 5F5A4 8008F0F4 00000000 */   nop
    /* 5F5A8 8008F0F8 0006000D */  break      6
  .L8008F0FC_5F5AC:
    /* 5F5AC 8008F0FC 468042A0 */  cvt.s.w    $f10, $f8
    /* 5F5B0 8008F100 0C000E38 */  jal        func_800038E0_44E0
    /* 5F5B4 8008F104 E7AA0064 */   swc1      $f10, 0x64($sp)
    /* 5F5B8 8008F108 0052001A */  div        $zero, $v0, $s2
    /* 5F5BC 8008F10C 00006810 */  mfhi       $t5
    /* 5F5C0 8008F110 25AEFE0C */  addiu      $t6, $t5, -0x1F4
    /* 5F5C4 8008F114 448E8000 */  mtc1       $t6, $f16
    /* 5F5C8 8008F118 16400002 */  bnez       $s2, .L8008F124_5F5D4
    /* 5F5CC 8008F11C 00000000 */   nop
    /* 5F5D0 8008F120 0007000D */  break      7
  .L8008F124_5F5D4:
    /* 5F5D4 8008F124 2401FFFF */  addiu      $at, $zero, -0x1
    /* 5F5D8 8008F128 16410004 */  bne        $s2, $at, .L8008F13C_5F5EC
    /* 5F5DC 8008F12C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 5F5E0 8008F130 14410002 */  bne        $v0, $at, .L8008F13C_5F5EC
    /* 5F5E4 8008F134 00000000 */   nop
    /* 5F5E8 8008F138 0006000D */  break      6
  .L8008F13C_5F5EC:
    /* 5F5EC 8008F13C 468084A0 */  cvt.s.w    $f18, $f16
    /* 5F5F0 8008F140 02002025 */  or         $a0, $s0, $zero
    /* 5F5F4 8008F144 02002825 */  or         $a1, $s0, $zero
    /* 5F5F8 8008F148 0C020DED */  jal        func_800837B4_53C64
    /* 5F5FC 8008F14C E7B20068 */   swc1      $f18, 0x68($sp)
    /* 5F600 8008F150 3C0143AA */  lui        $at, (0x43AA0000 >> 16)
    /* 5F604 8008F154 44816000 */  mtc1       $at, $f12
    /* 5F608 8008F158 02002825 */  or         $a1, $s0, $zero
    /* 5F60C 8008F15C 0C020E2E */  jal        func_800838B8_53D68
    /* 5F610 8008F160 02003025 */   or        $a2, $s0, $zero
    /* 5F614 8008F164 0C000E38 */  jal        func_800038E0_44E0
    /* 5F618 8008F168 00000000 */   nop
    /* 5F61C 8008F16C 2401000F */  addiu      $at, $zero, 0xF
    /* 5F620 8008F170 0041001A */  div        $zero, $v0, $at
    /* 5F624 8008F174 C7A40060 */  lwc1       $f4, 0x60($sp)
    /* 5F628 8008F178 C7A80064 */  lwc1       $f8, 0x64($sp)
    /* 5F62C 8008F17C C7B00068 */  lwc1       $f16, 0x68($sp)
    /* 5F630 8008F180 4600218D */  trunc.w.s  $f6, $f4
    /* 5F634 8008F184 00007010 */  mfhi       $t6
    /* 5F638 8008F188 25CF000F */  addiu      $t7, $t6, 0xF
    /* 5F63C 8008F18C 4600428D */  trunc.w.s  $f10, $f8
    /* 5F640 8008F190 44043000 */  mfc1       $a0, $f6
    /* 5F644 8008F194 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 5F648 8008F198 4600848D */  trunc.w.s  $f18, $f16
    /* 5F64C 8008F19C 44055000 */  mfc1       $a1, $f10
    /* 5F650 8008F1A0 0004C400 */  sll        $t8, $a0, 16
    /* 5F654 8008F1A4 00182403 */  sra        $a0, $t8, 16
    /* 5F658 8008F1A8 44069000 */  mfc1       $a2, $f18
    /* 5F65C 8008F1AC 00054C00 */  sll        $t1, $a1, 16
    /* 5F660 8008F1B0 00092C03 */  sra        $a1, $t1, 16
    /* 5F664 8008F1B4 00066400 */  sll        $t4, $a2, 16
    /* 5F668 8008F1B8 000C3403 */  sra        $a2, $t4, 16
    /* 5F66C 8008F1BC 0C02370D */  jal        func_8008DC34_5E0E4
    /* 5F670 8008F1C0 2407000D */   addiu     $a3, $zero, 0xD
  .L8008F1C4_5F674:
    /* 5F674 8008F1C4 8FBF0054 */  lw         $ra, 0x54($sp)
    /* 5F678 8008F1C8 D7B40040 */  ldc1       $f20, 0x40($sp)
    /* 5F67C 8008F1CC 8FB00048 */  lw         $s0, 0x48($sp)
    /* 5F680 8008F1D0 8FB1004C */  lw         $s1, 0x4C($sp)
    /* 5F684 8008F1D4 8FB20050 */  lw         $s2, 0x50($sp)
    /* 5F688 8008F1D8 03E00008 */  jr         $ra
    /* 5F68C 8008F1DC 27BD0070 */   addiu     $sp, $sp, 0x70
endlabel func_8008EEC4_5F374
