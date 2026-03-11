nonmatching func_800AA340_B92F0, 0xF10

glabel func_800AA340_B92F0
    /* B92F0 800AA340 27BDFF28 */  addiu      $sp, $sp, -0xD8
    /* B92F4 800AA344 AFB1004C */  sw         $s1, 0x4C($sp)
    /* B92F8 800AA348 309100FF */  andi       $s1, $a0, 0xFF
    /* B92FC 800AA34C AFBF006C */  sw         $ra, 0x6C($sp)
    /* B9300 800AA350 AFB00048 */  sw         $s0, 0x48($sp)
    /* B9304 800AA354 AFA400D8 */  sw         $a0, 0xD8($sp)
    /* B9308 800AA358 240E0001 */  addiu      $t6, $zero, 0x1
    /* B930C 800AA35C 3C018003 */  lui        $at, %hi(D_80031414)
    /* B9310 800AA360 AFBE0068 */  sw         $fp, 0x68($sp)
    /* B9314 800AA364 AFB70064 */  sw         $s7, 0x64($sp)
    /* B9318 800AA368 AFB60060 */  sw         $s6, 0x60($sp)
    /* B931C 800AA36C AFB5005C */  sw         $s5, 0x5C($sp)
    /* B9320 800AA370 AFB40058 */  sw         $s4, 0x58($sp)
    /* B9324 800AA374 AFB30054 */  sw         $s3, 0x54($sp)
    /* B9328 800AA378 AFB20050 */  sw         $s2, 0x50($sp)
    /* B932C 800AA37C F7BA0040 */  sdc1       $f26, 0x40($sp)
    /* B9330 800AA380 F7B80038 */  sdc1       $f24, 0x38($sp)
    /* B9334 800AA384 F7B60030 */  sdc1       $f22, 0x30($sp)
    /* B9338 800AA388 F7B40028 */  sdc1       $f20, 0x28($sp)
    /* B933C 800AA38C 00008025 */  or         $s0, $zero, $zero
    /* B9340 800AA390 AC2E1414 */  sw         $t6, %lo(D_80031414)($at)
    /* B9344 800AA394 322400FF */  andi       $a0, $s1, 0xFF
    /* B9348 800AA398 24050002 */  addiu      $a1, $zero, 0x2
    /* B934C 800AA39C 0C022480 */  jal        func_80089200_981B0
    /* B9350 800AA3A0 2406012C */   addiu     $a2, $zero, 0x12C
    /* B9354 800AA3A4 00117880 */  sll        $t7, $s1, 2
    /* B9358 800AA3A8 01F17821 */  addu       $t7, $t7, $s1
    /* B935C 800AA3AC 3C188005 */  lui        $t8, %hi(alienInstances)
    /* B9360 800AA3B0 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* B9364 800AA3B4 000F7900 */  sll        $t7, $t7, 4
    /* B9368 800AA3B8 01F81021 */  addu       $v0, $t7, $t8
    /* B936C 800AA3BC 8443002C */  lh         $v1, 0x2C($v0)
    /* B9370 800AA3C0 28610051 */  slti       $at, $v1, 0x51
    /* B9374 800AA3C4 14200231 */  bnez       $at, .L800AAC8C_B9C3C
    /* B9378 800AA3C8 28610083 */   slti      $at, $v1, 0x83
    /* B937C 800AA3CC 1420002D */  bnez       $at, .L800AA484_B9434
    /* B9380 800AA3D0 24190001 */   addiu     $t9, $zero, 0x1
    /* B9384 800AA3D4 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* B9388 800AA3D8 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* B938C 800AA3DC 00034823 */  negu       $t1, $v1
    /* B9390 800AA3E0 00095080 */  sll        $t2, $t1, 2
    /* B9394 800AA3E4 00046080 */  sll        $t4, $a0, 2
    /* B9398 800AA3E8 01846021 */  addu       $t4, $t4, $a0
    /* B939C 800AA3EC 000C60C0 */  sll        $t4, $t4, 3
    /* B93A0 800AA3F0 01846023 */  subu       $t4, $t4, $a0
    /* B93A4 800AA3F4 000C6100 */  sll        $t4, $t4, 4
    /* B93A8 800AA3F8 01846021 */  addu       $t4, $t4, $a0
    /* B93AC 800AA3FC 24080006 */  addiu      $t0, $zero, 0x6
    /* B93B0 800AA400 254B02A8 */  addiu      $t3, $t2, 0x2A8
    /* B93B4 800AA404 000C6140 */  sll        $t4, $t4, 5
    /* B93B8 800AA408 A3B90099 */  sb         $t9, 0x99($sp)
    /* B93BC 800AA40C A3A80098 */  sb         $t0, 0x98($sp)
    /* B93C0 800AA410 A7AB0096 */  sh         $t3, 0x96($sp)
    /* B93C4 800AA414 3184FFFF */  andi       $a0, $t4, 0xFFFF
    /* B93C8 800AA418 0C007654 */  jal        coss
    /* B93CC 800AA41C AFA20080 */   sw        $v0, 0x80($sp)
    /* B93D0 800AA420 44822000 */  mtc1       $v0, $f4
    /* B93D4 800AA424 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* B93D8 800AA428 4481D800 */  mtc1       $at, $f27
    /* B93DC 800AA42C 468021A0 */  cvt.s.w    $f6, $f4
    /* B93E0 800AA430 4480D000 */  mtc1       $zero, $f26
    /* B93E4 800AA434 3C014069 */  lui        $at, (0x40690000 >> 16)
    /* B93E8 800AA438 44818800 */  mtc1       $at, $f17
    /* B93EC 800AA43C 44808000 */  mtc1       $zero, $f16
    /* B93F0 800AA440 8FB80080 */  lw         $t8, 0x80($sp)
    /* B93F4 800AA444 46003221 */  cvt.d.s    $f8, $f6
    /* B93F8 800AA448 463A4283 */  div.d      $f10, $f8, $f26
    /* B93FC 800AA44C 46305482 */  mul.d      $f18, $f10, $f16
    /* B9400 800AA450 4620910D */  trunc.w.d  $f4, $f18
    /* B9404 800AA454 440F2000 */  mfc1       $t7, $f4
    /* B9408 800AA458 0C000E38 */  jal        func_800038E0_44E0
    /* B940C 800AA45C A70F000A */   sh        $t7, 0xA($t8)
    /* B9410 800AA460 04410004 */  bgez       $v0, .L800AA474_B9424
    /* B9414 800AA464 30590003 */   andi      $t9, $v0, 0x3
    /* B9418 800AA468 13200002 */  beqz       $t9, .L800AA474_B9424
    /* B941C 800AA46C 00000000 */   nop
    /* B9420 800AA470 2739FFFC */  addiu      $t9, $t9, -0x4
  .L800AA474_B9424:
    /* B9424 800AA474 17200057 */  bnez       $t9, .L800AA5D4_B9584
    /* B9428 800AA478 00000000 */   nop
    /* B942C 800AA47C 10000055 */  b          .L800AA5D4_B9584
    /* B9430 800AA480 24100001 */   addiu     $s0, $zero, 0x1
  .L800AA484_B9434:
    /* B9434 800AA484 28610083 */  slti       $at, $v1, 0x83
    /* B9438 800AA488 10200030 */  beqz       $at, .L800AA54C_B94FC
    /* B943C 800AA48C 24090004 */   addiu     $t1, $zero, 0x4
    /* B9440 800AA490 2861005B */  slti       $at, $v1, 0x5B
    /* B9444 800AA494 1420002D */  bnez       $at, .L800AA54C_B94FC
    /* B9448 800AA498 24080002 */   addiu     $t0, $zero, 0x2
    /* B944C 800AA49C 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* B9450 800AA4A0 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* B9454 800AA4A4 00035023 */  negu       $t2, $v1
    /* B9458 800AA4A8 000A5880 */  sll        $t3, $t2, 2
    /* B945C 800AA4AC 00046880 */  sll        $t5, $a0, 2
    /* B9460 800AA4B0 01A46821 */  addu       $t5, $t5, $a0
    /* B9464 800AA4B4 000D68C0 */  sll        $t5, $t5, 3
    /* B9468 800AA4B8 01A46823 */  subu       $t5, $t5, $a0
    /* B946C 800AA4BC 000D6900 */  sll        $t5, $t5, 4
    /* B9470 800AA4C0 01A46821 */  addu       $t5, $t5, $a0
    /* B9474 800AA4C4 24090004 */  addiu      $t1, $zero, 0x4
    /* B9478 800AA4C8 256C02A8 */  addiu      $t4, $t3, 0x2A8
    /* B947C 800AA4CC 000D6940 */  sll        $t5, $t5, 5
    /* B9480 800AA4D0 A3A80099 */  sb         $t0, 0x99($sp)
    /* B9484 800AA4D4 A3A90098 */  sb         $t1, 0x98($sp)
    /* B9488 800AA4D8 A7AC0096 */  sh         $t4, 0x96($sp)
    /* B948C 800AA4DC 31A4FFFF */  andi       $a0, $t5, 0xFFFF
    /* B9490 800AA4E0 0C007654 */  jal        coss
    /* B9494 800AA4E4 AFA20080 */   sw        $v0, 0x80($sp)
    /* B9498 800AA4E8 44823000 */  mtc1       $v0, $f6
    /* B949C 800AA4EC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* B94A0 800AA4F0 4481D800 */  mtc1       $at, $f27
    /* B94A4 800AA4F4 46803220 */  cvt.s.w    $f8, $f6
    /* B94A8 800AA4F8 4480D000 */  mtc1       $zero, $f26
    /* B94AC 800AA4FC 3C014079 */  lui        $at, (0x40790000 >> 16)
    /* B94B0 800AA500 44819800 */  mtc1       $at, $f19
    /* B94B4 800AA504 44809000 */  mtc1       $zero, $f18
    /* B94B8 800AA508 8FB90080 */  lw         $t9, 0x80($sp)
    /* B94BC 800AA50C 460042A1 */  cvt.d.s    $f10, $f8
    /* B94C0 800AA510 463A5403 */  div.d      $f16, $f10, $f26
    /* B94C4 800AA514 46328102 */  mul.d      $f4, $f16, $f18
    /* B94C8 800AA518 4620218D */  trunc.w.d  $f6, $f4
    /* B94CC 800AA51C 44183000 */  mfc1       $t8, $f6
    /* B94D0 800AA520 0C000E38 */  jal        func_800038E0_44E0
    /* B94D4 800AA524 A738000A */   sh        $t8, 0xA($t9)
    /* B94D8 800AA528 04410004 */  bgez       $v0, .L800AA53C_B94EC
    /* B94DC 800AA52C 30480001 */   andi      $t0, $v0, 0x1
    /* B94E0 800AA530 11000002 */  beqz       $t0, .L800AA53C_B94EC
    /* B94E4 800AA534 00000000 */   nop
    /* B94E8 800AA538 2508FFFE */  addiu      $t0, $t0, -0x2
  .L800AA53C_B94EC:
    /* B94EC 800AA53C 15000025 */  bnez       $t0, .L800AA5D4_B9584
    /* B94F0 800AA540 00000000 */   nop
    /* B94F4 800AA544 10000023 */  b          .L800AA5D4_B9584
    /* B94F8 800AA548 24100001 */   addiu     $s0, $zero, 0x1
  .L800AA54C_B94FC:
    /* B94FC 800AA54C 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* B9500 800AA550 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* B9504 800AA554 240A0003 */  addiu      $t2, $zero, 0x3
    /* B9508 800AA558 240B0140 */  addiu      $t3, $zero, 0x140
    /* B950C 800AA55C 00046080 */  sll        $t4, $a0, 2
    /* B9510 800AA560 01846021 */  addu       $t4, $t4, $a0
    /* B9514 800AA564 000C60C0 */  sll        $t4, $t4, 3
    /* B9518 800AA568 01846023 */  subu       $t4, $t4, $a0
    /* B951C 800AA56C 000C6100 */  sll        $t4, $t4, 4
    /* B9520 800AA570 01846021 */  addu       $t4, $t4, $a0
    /* B9524 800AA574 000C6140 */  sll        $t4, $t4, 5
    /* B9528 800AA578 A3A90099 */  sb         $t1, 0x99($sp)
    /* B952C 800AA57C A3AA0098 */  sb         $t2, 0x98($sp)
    /* B9530 800AA580 A7AB0096 */  sh         $t3, 0x96($sp)
    /* B9534 800AA584 3184FFFF */  andi       $a0, $t4, 0xFFFF
    /* B9538 800AA588 0C007654 */  jal        coss
    /* B953C 800AA58C AFA20080 */   sw        $v0, 0x80($sp)
    /* B9540 800AA590 44824000 */  mtc1       $v0, $f8
    /* B9544 800AA594 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* B9548 800AA598 4481D800 */  mtc1       $at, $f27
    /* B954C 800AA59C 468042A0 */  cvt.s.w    $f10, $f8
    /* B9550 800AA5A0 4480D000 */  mtc1       $zero, $f26
    /* B9554 800AA5A4 3C014089 */  lui        $at, (0x40890000 >> 16)
    /* B9558 800AA5A8 44812800 */  mtc1       $at, $f5
    /* B955C 800AA5AC 44802000 */  mtc1       $zero, $f4
    /* B9560 800AA5B0 8FB80080 */  lw         $t8, 0x80($sp)
    /* B9564 800AA5B4 46005421 */  cvt.d.s    $f16, $f10
    /* B9568 800AA5B8 24100001 */  addiu      $s0, $zero, 0x1
    /* B956C 800AA5BC 463A8483 */  div.d      $f18, $f16, $f26
    /* B9570 800AA5C0 46249182 */  mul.d      $f6, $f18, $f4
    /* B9574 800AA5C4 4620320D */  trunc.w.d  $f8, $f6
    /* B9578 800AA5C8 440F4000 */  mfc1       $t7, $f8
    /* B957C 800AA5CC 00000000 */  nop
    /* B9580 800AA5D0 A70F000A */  sh         $t7, 0xA($t8)
  .L800AA5D4_B9584:
    /* B9584 800AA5D4 520000B8 */  beql       $s0, $zero, .L800AA8B8_B9868
    /* B9588 800AA5D8 93A30099 */   lbu       $v1, 0x99($sp)
    /* B958C 800AA5DC 3C178025 */  lui        $s7, %hi(alienSpecs)
    /* B9590 800AA5E0 26F76680 */  addiu      $s7, $s7, %lo(alienSpecs)
    /* B9594 800AA5E4 86F30B2C */  lh         $s3, 0xB2C($s7)
    /* B9598 800AA5E8 86F40B2E */  lh         $s4, 0xB2E($s7)
    /* B959C 800AA5EC 86F50B30 */  lh         $s5, 0xB30($s7)
    /* B95A0 800AA5F0 2673FF38 */  addiu      $s3, $s3, -0xC8
    /* B95A4 800AA5F4 2694FF38 */  addiu      $s4, $s4, -0xC8
    /* B95A8 800AA5F8 26B5FF38 */  addiu      $s5, $s5, -0xC8
    /* B95AC 800AA5FC 0013CC00 */  sll        $t9, $s3, 16
    /* B95B0 800AA600 00144C00 */  sll        $t1, $s4, 16
    /* B95B4 800AA604 00155C00 */  sll        $t3, $s5, 16
    /* B95B8 800AA608 00199C03 */  sra        $s3, $t9, 16
    /* B95BC 800AA60C 0009A403 */  sra        $s4, $t1, 16
    /* B95C0 800AA610 0C000E38 */  jal        func_800038E0_44E0
    /* B95C4 800AA614 000BAC03 */   sra       $s5, $t3, 16
    /* B95C8 800AA618 0C000E38 */  jal        func_800038E0_44E0
    /* B95CC 800AA61C 3050FFFF */   andi      $s0, $v0, 0xFFFF
    /* B95D0 800AA620 0C000E38 */  jal        func_800038E0_44E0
    /* B95D4 800AA624 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* B95D8 800AA628 0C000E38 */  jal        func_800038E0_44E0
    /* B95DC 800AA62C 3052FFFF */   andi      $s2, $v0, 0xFFFF
    /* B95E0 800AA630 0213001A */  div        $zero, $s0, $s3
    /* B95E4 800AA634 00006810 */  mfhi       $t5
    /* B95E8 800AA638 8FA30080 */  lw         $v1, 0x80($sp)
    /* B95EC 800AA63C 0013B043 */  sra        $s6, $s3, 1
    /* B95F0 800AA640 0235001A */  div        $zero, $s1, $s5
    /* B95F4 800AA644 00004010 */  mfhi       $t0
    /* B95F8 800AA648 846E0000 */  lh         $t6, 0x0($v1)
    /* B95FC 800AA64C 16600002 */  bnez       $s3, .L800AA658_B9608
    /* B9600 800AA650 00000000 */   nop
    /* B9604 800AA654 0007000D */  break      7
  .L800AA658_B9608:
    /* B9608 800AA658 2401FFFF */  addiu      $at, $zero, -0x1
    /* B960C 800AA65C 16610004 */  bne        $s3, $at, .L800AA670_B9620
    /* B9610 800AA660 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B9614 800AA664 16010002 */  bne        $s0, $at, .L800AA670_B9620
    /* B9618 800AA668 00000000 */   nop
    /* B961C 800AA66C 0006000D */  break      6
  .L800AA670_B9620:
    /* B9620 800AA670 0254001A */  div        $zero, $s2, $s4
    /* B9624 800AA674 01AE7821 */  addu       $t7, $t5, $t6
    /* B9628 800AA678 00006810 */  mfhi       $t5
    /* B962C 800AA67C 84690002 */  lh         $t1, 0x2($v1)
    /* B9630 800AA680 846E0004 */  lh         $t6, 0x4($v1)
    /* B9634 800AA684 01F62023 */  subu       $a0, $t7, $s6
    /* B9638 800AA688 0015B843 */  sra        $s7, $s5, 1
    /* B963C 800AA68C 01095021 */  addu       $t2, $t0, $t1
    /* B9640 800AA690 01572823 */  subu       $a1, $t2, $s7
    /* B9644 800AA694 0004C400 */  sll        $t8, $a0, 16
    /* B9648 800AA698 0014F043 */  sra        $fp, $s4, 1
    /* B964C 800AA69C 01AE7821 */  addu       $t7, $t5, $t6
    /* B9650 800AA6A0 01FE3023 */  subu       $a2, $t7, $fp
    /* B9654 800AA6A4 0018CC03 */  sra        $t9, $t8, 16
    /* B9658 800AA6A8 00055C00 */  sll        $t3, $a1, 16
    /* B965C 800AA6AC 000B6403 */  sra        $t4, $t3, 16
    /* B9660 800AA6B0 0006C400 */  sll        $t8, $a2, 16
    /* B9664 800AA6B4 00183403 */  sra        $a2, $t8, 16
    /* B9668 800AA6B8 01802825 */  or         $a1, $t4, $zero
    /* B966C 800AA6BC 03202025 */  or         $a0, $t9, $zero
    /* B9670 800AA6C0 16A00002 */  bnez       $s5, .L800AA6CC_B967C
    /* B9674 800AA6C4 00000000 */   nop
    /* B9678 800AA6C8 0007000D */  break      7
  .L800AA6CC_B967C:
    /* B967C 800AA6CC 2401FFFF */  addiu      $at, $zero, -0x1
    /* B9680 800AA6D0 16A10004 */  bne        $s5, $at, .L800AA6E4_B9694
    /* B9684 800AA6D4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B9688 800AA6D8 16210002 */  bne        $s1, $at, .L800AA6E4_B9694
    /* B968C 800AA6DC 00000000 */   nop
    /* B9690 800AA6E0 0006000D */  break      6
  .L800AA6E4_B9694:
    /* B9694 800AA6E4 24070007 */  addiu      $a3, $zero, 0x7
    /* B9698 800AA6E8 16800002 */  bnez       $s4, .L800AA6F4_B96A4
    /* B969C 800AA6EC 00000000 */   nop
    /* B96A0 800AA6F0 0007000D */  break      7
  .L800AA6F4_B96A4:
    /* B96A4 800AA6F4 2401FFFF */  addiu      $at, $zero, -0x1
    /* B96A8 800AA6F8 16810004 */  bne        $s4, $at, .L800AA70C_B96BC
    /* B96AC 800AA6FC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B96B0 800AA700 16410002 */  bne        $s2, $at, .L800AA70C_B96BC
    /* B96B4 800AA704 00000000 */   nop
    /* B96B8 800AA708 0006000D */  break      6
  .L800AA70C_B96BC:
    /* B96BC 800AA70C 2401012C */  addiu      $at, $zero, 0x12C
    /* B96C0 800AA710 0041001A */  div        $zero, $v0, $at
    /* B96C4 800AA714 00004010 */  mfhi       $t0
    /* B96C8 800AA718 250900C8 */  addiu      $t1, $t0, 0xC8
    /* B96CC 800AA71C 0C0376D8 */  jal        func_800DDB60_ECB10
    /* B96D0 800AA720 AFA90010 */   sw        $t1, 0x10($sp)
    /* B96D4 800AA724 305000FF */  andi       $s0, $v0, 0xFF
    /* B96D8 800AA728 00402025 */  or         $a0, $v0, $zero
    /* B96DC 800AA72C 0C037787 */  jal        func_800DDE1C_ECDCC
    /* B96E0 800AA730 240500FF */   addiu     $a1, $zero, 0xFF
    /* B96E4 800AA734 320400FF */  andi       $a0, $s0, 0xFF
    /* B96E8 800AA738 0C0377B8 */  jal        func_800DDEE0_ECE90
    /* B96EC 800AA73C 24050001 */   addiu     $a1, $zero, 0x1
    /* B96F0 800AA740 0C000E38 */  jal        func_800038E0_44E0
    /* B96F4 800AA744 00000000 */   nop
    /* B96F8 800AA748 24010064 */  addiu      $at, $zero, 0x64
    /* B96FC 800AA74C 0041001A */  div        $zero, $v0, $at
    /* B9700 800AA750 00005810 */  mfhi       $t3
    /* B9704 800AA754 448B5000 */  mtc1       $t3, $f10
    /* B9708 800AA758 3C0143FA */  lui        $at, (0x43FA0000 >> 16)
    /* B970C 800AA75C 44819000 */  mtc1       $at, $f18
    /* B9710 800AA760 46805420 */  cvt.s.w    $f16, $f10
    /* B9714 800AA764 3C018014 */  lui        $at, %hi(D_80142900)
    /* B9718 800AA768 D4282900 */  ldc1       $f8, %lo(D_80142900)($at)
    /* B971C 800AA76C 8FA30080 */  lw         $v1, 0x80($sp)
    /* B9720 800AA770 00002025 */  or         $a0, $zero, $zero
    /* B9724 800AA774 240500E8 */  addiu      $a1, $zero, 0xE8
    /* B9728 800AA778 46128103 */  div.s      $f4, $f16, $f18
    /* B972C 800AA77C 846A0004 */  lh         $t2, 0x4($v1)
    /* B9730 800AA780 84660000 */  lh         $a2, 0x0($v1)
    /* B9734 800AA784 84670002 */  lh         $a3, 0x2($v1)
    /* B9738 800AA788 AFAA0010 */  sw         $t2, 0x10($sp)
    /* B973C 800AA78C 460021A1 */  cvt.d.s    $f6, $f4
    /* B9740 800AA790 46283280 */  add.d      $f10, $f6, $f8
    /* B9744 800AA794 46205420 */  cvt.s.d    $f16, $f10
    /* B9748 800AA798 0C04DC6E */  jal        func_801371B8_146168
    /* B974C 800AA79C E7B00014 */   swc1      $f16, 0x14($sp)
    /* B9750 800AA7A0 0C000E38 */  jal        func_800038E0_44E0
    /* B9754 800AA7A4 00000000 */   nop
    /* B9758 800AA7A8 0C000E38 */  jal        func_800038E0_44E0
    /* B975C 800AA7AC 3050FFFF */   andi      $s0, $v0, 0xFFFF
    /* B9760 800AA7B0 0C000E38 */  jal        func_800038E0_44E0
    /* B9764 800AA7B4 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* B9768 800AA7B8 0C000E38 */  jal        func_800038E0_44E0
    /* B976C 800AA7BC 3052FFFF */   andi      $s2, $v0, 0xFFFF
    /* B9770 800AA7C0 0213001A */  div        $zero, $s0, $s3
    /* B9774 800AA7C4 00006010 */  mfhi       $t4
    /* B9778 800AA7C8 8FA30080 */  lw         $v1, 0x80($sp)
    /* B977C 800AA7CC 16600002 */  bnez       $s3, .L800AA7D8_B9788
    /* B9780 800AA7D0 00000000 */   nop
    /* B9784 800AA7D4 0007000D */  break      7
  .L800AA7D8_B9788:
    /* B9788 800AA7D8 2401FFFF */  addiu      $at, $zero, -0x1
    /* B978C 800AA7DC 16610004 */  bne        $s3, $at, .L800AA7F0_B97A0
    /* B9790 800AA7E0 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B9794 800AA7E4 16010002 */  bne        $s0, $at, .L800AA7F0_B97A0
    /* B9798 800AA7E8 00000000 */   nop
    /* B979C 800AA7EC 0006000D */  break      6
  .L800AA7F0_B97A0:
    /* B97A0 800AA7F0 0235001A */  div        $zero, $s1, $s5
    /* B97A4 800AA7F4 0000C810 */  mfhi       $t9
    /* B97A8 800AA7F8 846D0000 */  lh         $t5, 0x0($v1)
    /* B97AC 800AA7FC 84680002 */  lh         $t0, 0x2($v1)
    /* B97B0 800AA800 0254001A */  div        $zero, $s2, $s4
    /* B97B4 800AA804 018D7021 */  addu       $t6, $t4, $t5
    /* B97B8 800AA808 00006010 */  mfhi       $t4
    /* B97BC 800AA80C 846D0004 */  lh         $t5, 0x4($v1)
    /* B97C0 800AA810 01D62023 */  subu       $a0, $t6, $s6
    /* B97C4 800AA814 03284821 */  addu       $t1, $t9, $t0
    /* B97C8 800AA818 01372823 */  subu       $a1, $t1, $s7
    /* B97CC 800AA81C 00047C00 */  sll        $t7, $a0, 16
    /* B97D0 800AA820 018D7021 */  addu       $t6, $t4, $t5
    /* B97D4 800AA824 01DE3023 */  subu       $a2, $t6, $fp
    /* B97D8 800AA828 000FC403 */  sra        $t8, $t7, 16
    /* B97DC 800AA82C 00055400 */  sll        $t2, $a1, 16
    /* B97E0 800AA830 000A5C03 */  sra        $t3, $t2, 16
    /* B97E4 800AA834 00067C00 */  sll        $t7, $a2, 16
    /* B97E8 800AA838 000F3403 */  sra        $a2, $t7, 16
    /* B97EC 800AA83C 01602825 */  or         $a1, $t3, $zero
    /* B97F0 800AA840 03002025 */  or         $a0, $t8, $zero
    /* B97F4 800AA844 16A00002 */  bnez       $s5, .L800AA850_B9800
    /* B97F8 800AA848 00000000 */   nop
    /* B97FC 800AA84C 0007000D */  break      7
  .L800AA850_B9800:
    /* B9800 800AA850 2401FFFF */  addiu      $at, $zero, -0x1
    /* B9804 800AA854 16A10004 */  bne        $s5, $at, .L800AA868_B9818
    /* B9808 800AA858 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B980C 800AA85C 16210002 */  bne        $s1, $at, .L800AA868_B9818
    /* B9810 800AA860 00000000 */   nop
    /* B9814 800AA864 0006000D */  break      6
  .L800AA868_B9818:
    /* B9818 800AA868 AFA00010 */  sw         $zero, 0x10($sp)
    /* B981C 800AA86C 16800002 */  bnez       $s4, .L800AA878_B9828
    /* B9820 800AA870 00000000 */   nop
    /* B9824 800AA874 0007000D */  break      7
  .L800AA878_B9828:
    /* B9828 800AA878 2401FFFF */  addiu      $at, $zero, -0x1
    /* B982C 800AA87C 16810004 */  bne        $s4, $at, .L800AA890_B9840
    /* B9830 800AA880 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B9834 800AA884 16410002 */  bne        $s2, $at, .L800AA890_B9840
    /* B9838 800AA888 00000000 */   nop
    /* B983C 800AA88C 0006000D */  break      6
  .L800AA890_B9840:
    /* B9840 800AA890 24010032 */  addiu      $at, $zero, 0x32
    /* B9844 800AA894 0041001A */  div        $zero, $v0, $at
    /* B9848 800AA898 00003810 */  mfhi       $a3
    /* B984C 800AA89C 24E7001E */  addiu      $a3, $a3, 0x1E
    /* B9850 800AA8A0 30F9FFFF */  andi       $t9, $a3, 0xFFFF
    /* B9854 800AA8A4 0C037E8D */  jal        func_800DFA34_EE9E4
    /* B9858 800AA8A8 03203825 */   or        $a3, $t9, $zero
    /* B985C 800AA8AC 0C038D78 */  jal        func_800E35E0_F2590
    /* B9860 800AA8B0 24040078 */   addiu     $a0, $zero, 0x78
    /* B9864 800AA8B4 93A30099 */  lbu        $v1, 0x99($sp)
  .L800AA8B8_B9868:
    /* B9868 800AA8B8 93A40098 */  lbu        $a0, 0x98($sp)
    /* B986C 800AA8BC A7A000D6 */  sh         $zero, 0xD6($sp)
    /* B9870 800AA8C0 18600253 */  blez       $v1, .L800AB210_BA1C0
    /* B9874 800AA8C4 24880001 */   addiu     $t0, $a0, 0x1
    /* B9878 800AA8C8 AFA80074 */  sw         $t0, 0x74($sp)
    /* B987C 800AA8CC AFA3007C */  sw         $v1, 0x7C($sp)
    /* B9880 800AA8D0 AFA40078 */  sw         $a0, 0x78($sp)
    /* B9884 800AA8D4 97BE00BC */  lhu        $fp, 0xBC($sp)
  .L800AA8D8_B9888:
    /* B9888 800AA8D8 8FA20080 */  lw         $v0, 0x80($sp)
    /* B988C 800AA8DC 24130001 */  addiu      $s3, $zero, 0x1
    /* B9890 800AA8E0 84550002 */  lh         $s5, 0x2($v0)
    /* B9894 800AA8E4 84540000 */  lh         $s4, 0x0($v0)
    /* B9898 800AA8E8 84560004 */  lh         $s6, 0x4($v0)
    /* B989C 800AA8EC 0C000E38 */  jal        func_800038E0_44E0
    /* B98A0 800AA8F0 26B50064 */   addiu     $s5, $s5, 0x64
    /* B98A4 800AA8F4 240101F4 */  addiu      $at, $zero, 0x1F4
    /* B98A8 800AA8F8 0041001A */  div        $zero, $v0, $at
    /* B98AC 800AA8FC 00004810 */  mfhi       $t1
    /* B98B0 800AA900 252A01F4 */  addiu      $t2, $t1, 0x1F4
    /* B98B4 800AA904 000A5C00 */  sll        $t3, $t2, 16
    /* B98B8 800AA908 8FAD0078 */  lw         $t5, 0x78($sp)
    /* B98BC 800AA90C 000B6403 */  sra        $t4, $t3, 16
    /* B98C0 800AA910 8FA3007C */  lw         $v1, 0x7C($sp)
    /* B98C4 800AA914 018D001A */  div        $zero, $t4, $t5
    /* B98C8 800AA918 15A00002 */  bnez       $t5, .L800AA924_B98D4
    /* B98CC 800AA91C 00000000 */   nop
    /* B98D0 800AA920 0007000D */  break      7
  .L800AA924_B98D4:
    /* B98D4 800AA924 2401FFFF */  addiu      $at, $zero, -0x1
    /* B98D8 800AA928 15A10004 */  bne        $t5, $at, .L800AA93C_B98EC
    /* B98DC 800AA92C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B98E0 800AA930 15810002 */  bne        $t4, $at, .L800AA93C_B98EC
    /* B98E4 800AA934 00000000 */   nop
    /* B98E8 800AA938 0006000D */  break      6
  .L800AA93C_B98EC:
    /* B98EC 800AA93C 00008012 */  mflo       $s0
    /* B98F0 800AA940 00107400 */  sll        $t6, $s0, 16
    /* B98F4 800AA944 000E7C03 */  sra        $t7, $t6, 16
    /* B98F8 800AA948 24010001 */  addiu      $at, $zero, 0x1
    /* B98FC 800AA94C 10610009 */  beq        $v1, $at, .L800AA974_B9924
    /* B9900 800AA950 01E08025 */   or        $s0, $t7, $zero
    /* B9904 800AA954 24010002 */  addiu      $at, $zero, 0x2
    /* B9908 800AA958 10610012 */  beq        $v1, $at, .L800AA9A4_B9954
    /* B990C 800AA95C 87A900D6 */   lh        $t1, 0xD6($sp)
    /* B9910 800AA960 24010004 */  addiu      $at, $zero, 0x4
    /* B9914 800AA964 10610031 */  beq        $v1, $at, .L800AAA2C_B99DC
    /* B9918 800AA968 87AC00D6 */   lh        $t4, 0xD6($sp)
    /* B991C 800AA96C 10000050 */  b          .L800AAAB0_B9A60
    /* B9920 800AA970 8FA90074 */   lw        $t1, 0x74($sp)
  .L800AA974_B9924:
    /* B9924 800AA974 0C000E38 */  jal        func_800038E0_44E0
    /* B9928 800AA978 00000000 */   nop
    /* B992C 800AA97C 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* B9930 800AA980 04410004 */  bgez       $v0, .L800AA994_B9944
    /* B9934 800AA984 0041F024 */   and       $fp, $v0, $at
    /* B9938 800AA988 13C00002 */  beqz       $fp, .L800AA994_B9944
    /* B993C 800AA98C 24210001 */   addiu     $at, $at, 0x1
    /* B9940 800AA990 03C1F023 */  subu       $fp, $fp, $at
  .L800AA994_B9944:
    /* B9944 800AA994 33D8FFFF */  andi       $t8, $fp, 0xFFFF
    /* B9948 800AA998 0300F025 */  or         $fp, $t8, $zero
    /* B994C 800AA99C 10000043 */  b          .L800AAAAC_B9A5C
    /* B9950 800AA9A0 8FA3007C */   lw        $v1, 0x7C($sp)
  .L800AA9A4_B9954:
    /* B9954 800AA9A4 3C0A0001 */  lui        $t2, (0x10000 >> 16)
    /* B9958 800AA9A8 0143001A */  div        $zero, $t2, $v1
    /* B995C 800AA9AC 00005812 */  mflo       $t3
    /* B9960 800AA9B0 000B6400 */  sll        $t4, $t3, 16
    /* B9964 800AA9B4 000C6C03 */  sra        $t5, $t4, 16
    /* B9968 800AA9B8 012D0019 */  multu      $t1, $t5
    /* B996C 800AA9BC 3C028005 */  lui        $v0, %hi(D_80052A8C)
    /* B9970 800AA9C0 8C422A8C */  lw         $v0, %lo(D_80052A8C)($v0)
    /* B9974 800AA9C4 8FAF0080 */  lw         $t7, 0x80($sp)
    /* B9978 800AA9C8 0002C880 */  sll        $t9, $v0, 2
    /* B997C 800AA9CC 0322C823 */  subu       $t9, $t9, $v0
    /* B9980 800AA9D0 0019C8C0 */  sll        $t9, $t9, 3
    /* B9984 800AA9D4 0322C821 */  addu       $t9, $t9, $v0
    /* B9988 800AA9D8 85F80006 */  lh         $t8, 0x6($t7)
    /* B998C 800AA9DC 0019CA40 */  sll        $t9, $t9, 9
    /* B9990 800AA9E0 3328FFFF */  andi       $t0, $t9, 0xFFFF
    /* B9994 800AA9E4 00007012 */  mflo       $t6
    /* B9998 800AA9E8 01001025 */  or         $v0, $t0, $zero
    /* B999C 800AA9EC 030EC821 */  addu       $t9, $t8, $t6
    /* B99A0 800AA9F0 0322F021 */  addu       $fp, $t9, $v0
    /* B99A4 800AA9F4 27DE4000 */  addiu      $fp, $fp, 0x4000
    /* B99A8 800AA9F8 33C8FFFF */  andi       $t0, $fp, 0xFFFF
    /* B99AC 800AA9FC 14600002 */  bnez       $v1, .L800AAA08_B99B8
    /* B99B0 800AAA00 00000000 */   nop
    /* B99B4 800AAA04 0007000D */  break      7
  .L800AAA08_B99B8:
    /* B99B8 800AAA08 2401FFFF */  addiu      $at, $zero, -0x1
    /* B99BC 800AAA0C 14610004 */  bne        $v1, $at, .L800AAA20_B99D0
    /* B99C0 800AAA10 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B99C4 800AAA14 15410002 */  bne        $t2, $at, .L800AAA20_B99D0
    /* B99C8 800AAA18 00000000 */   nop
    /* B99CC 800AAA1C 0006000D */  break      6
  .L800AAA20_B99D0:
    /* B99D0 800AAA20 0100F025 */  or         $fp, $t0, $zero
    /* B99D4 800AAA24 10000022 */  b          .L800AAAB0_B9A60
    /* B99D8 800AAA28 8FA90074 */   lw        $t1, 0x74($sp)
  .L800AAA2C_B99DC:
    /* B99DC 800AAA2C 3C090001 */  lui        $t1, (0x10000 >> 16)
    /* B99E0 800AAA30 0123001A */  div        $zero, $t1, $v1
    /* B99E4 800AAA34 00006812 */  mflo       $t5
    /* B99E8 800AAA38 000D7C00 */  sll        $t7, $t5, 16
    /* B99EC 800AAA3C 000FC403 */  sra        $t8, $t7, 16
    /* B99F0 800AAA40 01980019 */  multu      $t4, $t8
    /* B99F4 800AAA44 3C028005 */  lui        $v0, %hi(D_80052A8C)
    /* B99F8 800AAA48 8C422A8C */  lw         $v0, %lo(D_80052A8C)($v0)
    /* B99FC 800AAA4C 8FB90080 */  lw         $t9, 0x80($sp)
    /* B9A00 800AAA50 00025080 */  sll        $t2, $v0, 2
    /* B9A04 800AAA54 01425023 */  subu       $t2, $t2, $v0
    /* B9A08 800AAA58 000A50C0 */  sll        $t2, $t2, 3
    /* B9A0C 800AAA5C 01425021 */  addu       $t2, $t2, $v0
    /* B9A10 800AAA60 87280006 */  lh         $t0, 0x6($t9)
    /* B9A14 800AAA64 000A5200 */  sll        $t2, $t2, 8
    /* B9A18 800AAA68 314BFFFF */  andi       $t3, $t2, 0xFFFF
    /* B9A1C 800AAA6C 00007012 */  mflo       $t6
    /* B9A20 800AAA70 01601025 */  or         $v0, $t3, $zero
    /* B9A24 800AAA74 010E5021 */  addu       $t2, $t0, $t6
    /* B9A28 800AAA78 0142F021 */  addu       $fp, $t2, $v0
    /* B9A2C 800AAA7C 27DE4000 */  addiu      $fp, $fp, 0x4000
    /* B9A30 800AAA80 33CBFFFF */  andi       $t3, $fp, 0xFFFF
    /* B9A34 800AAA84 0160F025 */  or         $fp, $t3, $zero
    /* B9A38 800AAA88 14600002 */  bnez       $v1, .L800AAA94_B9A44
    /* B9A3C 800AAA8C 00000000 */   nop
    /* B9A40 800AAA90 0007000D */  break      7
  .L800AAA94_B9A44:
    /* B9A44 800AAA94 2401FFFF */  addiu      $at, $zero, -0x1
    /* B9A48 800AAA98 14610004 */  bne        $v1, $at, .L800AAAAC_B9A5C
    /* B9A4C 800AAA9C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B9A50 800AAAA0 15210002 */  bne        $t1, $at, .L800AAAAC_B9A5C
    /* B9A54 800AAAA4 00000000 */   nop
    /* B9A58 800AAAA8 0006000D */  break      6
  .L800AAAAC_B9A5C:
    /* B9A5C 800AAAAC 8FA90074 */  lw         $t1, 0x74($sp)
  .L800AAAB0_B9A60:
    /* B9A60 800AAAB0 87AD0096 */  lh         $t5, 0x96($sp)
    /* B9A64 800AAAB4 8FAF0078 */  lw         $t7, 0x78($sp)
    /* B9A68 800AAAB8 29210002 */  slti       $at, $t1, 0x2
    /* B9A6C 800AAABC 1420006A */  bnez       $at, .L800AAC68_B9C18
    /* B9A70 800AAAC0 340C8000 */   ori       $t4, $zero, 0x8000
    /* B9A74 800AAAC4 018F001A */  div        $zero, $t4, $t7
    /* B9A78 800AAAC8 44909000 */  mtc1       $s0, $f18
    /* B9A7C 800AAACC 448D2000 */  mtc1       $t5, $f4
    /* B9A80 800AAAD0 0000B812 */  mflo       $s7
    /* B9A84 800AAAD4 468095A1 */  cvt.d.w    $f22, $f18
    /* B9A88 800AAAD8 0017C400 */  sll        $t8, $s7, 16
    /* B9A8C 800AAADC 0018CC03 */  sra        $t9, $t8, 16
    /* B9A90 800AAAE0 0320B825 */  or         $s7, $t9, $zero
    /* B9A94 800AAAE4 46802621 */  cvt.d.w    $f24, $f4
    /* B9A98 800AAAE8 15E00002 */  bnez       $t7, .L800AAAF4_B9AA4
    /* B9A9C 800AAAEC 00000000 */   nop
    /* B9AA0 800AAAF0 0007000D */  break      7
  .L800AAAF4_B9AA4:
    /* B9AA4 800AAAF4 2401FFFF */  addiu      $at, $zero, -0x1
    /* B9AA8 800AAAF8 15E10004 */  bne        $t7, $at, .L800AAB0C_B9ABC
    /* B9AAC 800AAAFC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B9AB0 800AAB00 15810002 */  bne        $t4, $at, .L800AAB0C_B9ABC
    /* B9AB4 800AAB04 00000000 */   nop
    /* B9AB8 800AAB08 0006000D */  break      6
  .L800AAB0C_B9ABC:
    /* B9ABC 800AAB0C 8FA20080 */  lw         $v0, 0x80($sp)
    /* B9AC0 800AAB10 84510000 */  lh         $s1, 0x0($v0)
    /* B9AC4 800AAB14 84520004 */  lh         $s2, 0x4($v0)
    /* B9AC8 800AAB18 00112400 */  sll        $a0, $s1, 16
    /* B9ACC 800AAB1C 00122C00 */  sll        $a1, $s2, 16
    /* B9AD0 800AAB20 00057403 */  sra        $t6, $a1, 16
    /* B9AD4 800AAB24 00044403 */  sra        $t0, $a0, 16
    /* B9AD8 800AAB28 01002025 */  or         $a0, $t0, $zero
    /* B9ADC 800AAB2C 0C02E134 */  jal        func_800B84D0_C7480
    /* B9AE0 800AAB30 01C02825 */   or        $a1, $t6, $zero
    /* B9AE4 800AAB34 00028203 */  sra        $s0, $v0, 8
    /* B9AE8 800AAB38 0C007660 */  jal        sins
    /* B9AEC 800AAB3C 33C4FFFF */   andi      $a0, $fp, 0xFFFF
    /* B9AF0 800AAB40 44828000 */  mtc1       $v0, $f16
    /* B9AF4 800AAB44 44933000 */  mtc1       $s3, $f6
    /* B9AF8 800AAB48 44914000 */  mtc1       $s1, $f8
    /* B9AFC 800AAB4C 468084A0 */  cvt.s.w    $f18, $f16
    /* B9B00 800AAB50 33C4FFFF */  andi       $a0, $fp, 0xFFFF
    /* B9B04 800AAB54 46803521 */  cvt.d.w    $f20, $f6
    /* B9B08 800AAB58 46009121 */  cvt.d.s    $f4, $f18
    /* B9B0C 800AAB5C 468042A1 */  cvt.d.w    $f10, $f8
    /* B9B10 800AAB60 463A2183 */  div.d      $f6, $f4, $f26
    /* B9B14 800AAB64 46363202 */  mul.d      $f8, $f6, $f22
    /* B9B18 800AAB68 00000000 */  nop
    /* B9B1C 800AAB6C 46344402 */  mul.d      $f16, $f8, $f20
    /* B9B20 800AAB70 46305480 */  add.d      $f18, $f10, $f16
    /* B9B24 800AAB74 4620910D */  trunc.w.d  $f4, $f18
    /* B9B28 800AAB78 44112000 */  mfc1       $s1, $f4
    /* B9B2C 800AAB7C 0C007654 */  jal        coss
    /* B9B30 800AAB80 00000000 */   nop
    /* B9B34 800AAB84 44825000 */  mtc1       $v0, $f10
    /* B9B38 800AAB88 44923000 */  mtc1       $s2, $f6
    /* B9B3C 800AAB8C 02770019 */  multu      $s3, $s7
    /* B9B40 800AAB90 46805420 */  cvt.s.w    $f16, $f10
    /* B9B44 800AAB94 46803221 */  cvt.d.w    $f8, $f6
    /* B9B48 800AAB98 460084A1 */  cvt.d.s    $f18, $f16
    /* B9B4C 800AAB9C 00002012 */  mflo       $a0
    /* B9B50 800AABA0 463A9103 */  div.d      $f4, $f18, $f26
    /* B9B54 800AABA4 3089FFFF */  andi       $t1, $a0, 0xFFFF
    /* B9B58 800AABA8 01202025 */  or         $a0, $t1, $zero
    /* B9B5C 800AABAC 46202187 */  neg.d      $f6, $f4
    /* B9B60 800AABB0 46363282 */  mul.d      $f10, $f6, $f22
    /* B9B64 800AABB4 00000000 */  nop
    /* B9B68 800AABB8 46345402 */  mul.d      $f16, $f10, $f20
    /* B9B6C 800AABBC 46304480 */  add.d      $f18, $f8, $f16
    /* B9B70 800AABC0 4620910D */  trunc.w.d  $f4, $f18
    /* B9B74 800AABC4 44122000 */  mfc1       $s2, $f4
    /* B9B78 800AABC8 0C007660 */  jal        sins
    /* B9B7C 800AABCC 00000000 */   nop
    /* B9B80 800AABD0 44824000 */  mtc1       $v0, $f8
    /* B9B84 800AABD4 44903000 */  mtc1       $s0, $f6
    /* B9B88 800AABD8 00112400 */  sll        $a0, $s1, 16
    /* B9B8C 800AABDC 46804420 */  cvt.s.w    $f16, $f8
    /* B9B90 800AABE0 00123400 */  sll        $a2, $s2, 16
    /* B9B94 800AABE4 00143C00 */  sll        $a3, $s4, 16
    /* B9B98 800AABE8 0007CC03 */  sra        $t9, $a3, 16
    /* B9B9C 800AABEC 0006C403 */  sra        $t8, $a2, 16
    /* B9BA0 800AABF0 468032A1 */  cvt.d.w    $f10, $f6
    /* B9BA4 800AABF4 00046403 */  sra        $t4, $a0, 16
    /* B9BA8 800AABF8 24080001 */  addiu      $t0, $zero, 0x1
    /* B9BAC 800AABFC AFA80018 */  sw         $t0, 0x18($sp)
    /* B9BB0 800AAC00 460084A1 */  cvt.d.s    $f18, $f16
    /* B9BB4 800AAC04 01802025 */  or         $a0, $t4, $zero
    /* B9BB8 800AAC08 463A9103 */  div.d      $f4, $f18, $f26
    /* B9BBC 800AAC0C 03003025 */  or         $a2, $t8, $zero
    /* B9BC0 800AAC10 03203825 */  or         $a3, $t9, $zero
    /* B9BC4 800AAC14 AFB50010 */  sw         $s5, 0x10($sp)
    /* B9BC8 800AAC18 AFB60014 */  sw         $s6, 0x14($sp)
    /* B9BCC 800AAC1C 46382182 */  mul.d      $f6, $f4, $f24
    /* B9BD0 800AAC20 46265200 */  add.d      $f8, $f10, $f6
    /* B9BD4 800AAC24 4620440D */  trunc.w.d  $f16, $f8
    /* B9BD8 800AAC28 44108000 */  mfc1       $s0, $f16
    /* B9BDC 800AAC2C 00000000 */  nop
    /* B9BE0 800AAC30 00102C00 */  sll        $a1, $s0, 16
    /* B9BE4 800AAC34 00057C03 */  sra        $t7, $a1, 16
    /* B9BE8 800AAC38 0C0345AF */  jal        func_800D16BC_E066C
    /* B9BEC 800AAC3C 01E02825 */   or        $a1, $t7, $zero
    /* B9BF0 800AAC40 8FAB0074 */  lw         $t3, 0x74($sp)
    /* B9BF4 800AAC44 26730001 */  addiu      $s3, $s3, 0x1
    /* B9BF8 800AAC48 00137400 */  sll        $t6, $s3, 16
    /* B9BFC 800AAC4C 000E9C03 */  sra        $s3, $t6, 16
    /* B9C00 800AAC50 026B082A */  slt        $at, $s3, $t3
    /* B9C04 800AAC54 0220A025 */  or         $s4, $s1, $zero
    /* B9C08 800AAC58 0200A825 */  or         $s5, $s0, $zero
    /* B9C0C 800AAC5C 1420FFAB */  bnez       $at, .L800AAB0C_B9ABC
    /* B9C10 800AAC60 0240B025 */   or        $s6, $s2, $zero
    /* B9C14 800AAC64 8FA3007C */  lw         $v1, 0x7C($sp)
  .L800AAC68_B9C18:
    /* B9C18 800AAC68 87A200D6 */  lh         $v0, 0xD6($sp)
    /* B9C1C 800AAC6C 24420001 */  addiu      $v0, $v0, 0x1
    /* B9C20 800AAC70 00024C00 */  sll        $t1, $v0, 16
    /* B9C24 800AAC74 00096C03 */  sra        $t5, $t1, 16
    /* B9C28 800AAC78 01A3082A */  slt        $at, $t5, $v1
    /* B9C2C 800AAC7C 1420FF16 */  bnez       $at, .L800AA8D8_B9888
    /* B9C30 800AAC80 A7AD00D6 */   sh        $t5, 0xD6($sp)
    /* B9C34 800AAC84 10000162 */  b          .L800AB210_BA1C0
    /* B9C38 800AAC88 A7BE00BC */   sh        $fp, 0xBC($sp)
  .L800AAC8C_B9C3C:
    /* B9C3C 800AAC8C 24010050 */  addiu      $at, $zero, 0x50
    /* B9C40 800AAC90 14610045 */  bne        $v1, $at, .L800AADA8_B9D58
    /* B9C44 800AAC94 AFA20080 */   sw        $v0, 0x80($sp)
    /* B9C48 800AAC98 3C178025 */  lui        $s7, %hi(alienSpecs)
    /* B9C4C 800AAC9C 26F76680 */  addiu      $s7, $s7, %lo(alienSpecs)
    /* B9C50 800AACA0 96E70B04 */  lhu        $a3, 0xB04($s7)
    /* B9C54 800AACA4 84440000 */  lh         $a0, 0x0($v0)
    /* B9C58 800AACA8 84450002 */  lh         $a1, 0x2($v0)
    /* B9C5C 800AACAC 84460004 */  lh         $a2, 0x4($v0)
    /* B9C60 800AACB0 AFA00010 */  sw         $zero, 0x10($sp)
    /* B9C64 800AACB4 0C037E12 */  jal        func_800DF848_EE7F8
    /* B9C68 800AACB8 AFA20080 */   sw        $v0, 0x80($sp)
    /* B9C6C 800AACBC 0C038D78 */  jal        func_800E35E0_F2590
    /* B9C70 800AACC0 240400FF */   addiu     $a0, $zero, 0xFF
    /* B9C74 800AACC4 86EF0B04 */  lh         $t7, 0xB04($s7)
    /* B9C78 800AACC8 3C013FF8 */  lui        $at, (0x3FF80000 >> 16)
    /* B9C7C 800AACCC 44815800 */  mtc1       $at, $f11
    /* B9C80 800AACD0 448F9000 */  mtc1       $t7, $f18
    /* B9C84 800AACD4 44805000 */  mtc1       $zero, $f10
    /* B9C88 800AACD8 24070001 */  addiu      $a3, $zero, 0x1
    /* B9C8C 800AACDC 46809121 */  cvt.d.w    $f4, $f18
    /* B9C90 800AACE0 8FAC0080 */  lw         $t4, 0x80($sp)
    /* B9C94 800AACE4 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* B9C98 800AACE8 24080050 */  addiu      $t0, $zero, 0x50
    /* B9C9C 800AACEC 240E00F0 */  addiu      $t6, $zero, 0xF0
    /* B9CA0 800AACF0 462A2182 */  mul.d      $f6, $f4, $f10
    /* B9CA4 800AACF4 240A0078 */  addiu      $t2, $zero, 0x78
    /* B9CA8 800AACF8 85840000 */  lh         $a0, 0x0($t4)
    /* B9CAC 800AACFC 85850002 */  lh         $a1, 0x2($t4)
    /* B9CB0 800AAD00 85860004 */  lh         $a2, 0x4($t4)
    /* B9CB4 800AAD04 4458F800 */  cfc1       $t8, $31
    /* B9CB8 800AAD08 44C7F800 */  ctc1       $a3, $31
    /* B9CBC 800AAD0C 00000000 */  nop
    /* B9CC0 800AAD10 46203224 */  cvt.w.d    $f8, $f6
    /* B9CC4 800AAD14 4447F800 */  cfc1       $a3, $31
    /* B9CC8 800AAD18 00000000 */  nop
    /* B9CCC 800AAD1C 30E70078 */  andi       $a3, $a3, 0x78
    /* B9CD0 800AAD20 50E00014 */  beql       $a3, $zero, .L800AAD74_B9D24
    /* B9CD4 800AAD24 44074000 */   mfc1      $a3, $f8
    /* B9CD8 800AAD28 44814800 */  mtc1       $at, $f9
    /* B9CDC 800AAD2C 44804000 */  mtc1       $zero, $f8
    /* B9CE0 800AAD30 24070001 */  addiu      $a3, $zero, 0x1
    /* B9CE4 800AAD34 46283201 */  sub.d      $f8, $f6, $f8
    /* B9CE8 800AAD38 44C7F800 */  ctc1       $a3, $31
    /* B9CEC 800AAD3C 00000000 */  nop
    /* B9CF0 800AAD40 46204224 */  cvt.w.d    $f8, $f8
    /* B9CF4 800AAD44 4447F800 */  cfc1       $a3, $31
    /* B9CF8 800AAD48 00000000 */  nop
    /* B9CFC 800AAD4C 30E70078 */  andi       $a3, $a3, 0x78
    /* B9D00 800AAD50 14E00005 */  bnez       $a3, .L800AAD68_B9D18
    /* B9D04 800AAD54 00000000 */   nop
    /* B9D08 800AAD58 44074000 */  mfc1       $a3, $f8
    /* B9D0C 800AAD5C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* B9D10 800AAD60 10000007 */  b          .L800AAD80_B9D30
    /* B9D14 800AAD64 00E13825 */   or        $a3, $a3, $at
  .L800AAD68_B9D18:
    /* B9D18 800AAD68 10000005 */  b          .L800AAD80_B9D30
    /* B9D1C 800AAD6C 2407FFFF */   addiu     $a3, $zero, -0x1
    /* B9D20 800AAD70 44074000 */  mfc1       $a3, $f8
  .L800AAD74_B9D24:
    /* B9D24 800AAD74 00000000 */  nop
    /* B9D28 800AAD78 04E0FFFB */  bltz       $a3, .L800AAD68_B9D18
    /* B9D2C 800AAD7C 00000000 */   nop
  .L800AAD80_B9D30:
    /* B9D30 800AAD80 44D8F800 */  ctc1       $t8, $31
    /* B9D34 800AAD84 30F9FFFF */  andi       $t9, $a3, 0xFFFF
    /* B9D38 800AAD88 03203825 */  or         $a3, $t9, $zero
    /* B9D3C 800AAD8C AFA80010 */  sw         $t0, 0x10($sp)
    /* B9D40 800AAD90 AFAE0014 */  sw         $t6, 0x14($sp)
    /* B9D44 800AAD94 AFAA0018 */  sw         $t2, 0x18($sp)
    /* B9D48 800AAD98 0C030EF6 */  jal        func_800C3BD8_D2B88
    /* B9D4C 800AAD9C AFA0001C */   sw        $zero, 0x1C($sp)
    /* B9D50 800AADA0 8FAB0080 */  lw         $t3, 0x80($sp)
    /* B9D54 800AADA4 8563002C */  lh         $v1, 0x2C($t3)
  .L800AADA8_B9D58:
    /* B9D58 800AADA8 3C178025 */  lui        $s7, %hi(alienSpecs)
    /* B9D5C 800AADAC 28610029 */  slti       $at, $v1, 0x29
    /* B9D60 800AADB0 26F76680 */  addiu      $s7, $s7, %lo(alienSpecs)
    /* B9D64 800AADB4 14200079 */  bnez       $at, .L800AAF9C_B9F4C
    /* B9D68 800AADB8 8FA20080 */   lw        $v0, 0x80($sp)
    /* B9D6C 800AADBC 28610046 */  slti       $at, $v1, 0x46
    /* B9D70 800AADC0 10200076 */  beqz       $at, .L800AAF9C_B9F4C
    /* B9D74 800AADC4 AFA20080 */   sw        $v0, 0x80($sp)
    /* B9D78 800AADC8 0003F080 */  sll        $fp, $v1, 2
    /* B9D7C 800AADCC 03C3F021 */  addu       $fp, $fp, $v1
    /* B9D80 800AADD0 001EF0C0 */  sll        $fp, $fp, 3
    /* B9D84 800AADD4 03C3F023 */  subu       $fp, $fp, $v1
    /* B9D88 800AADD8 001EF100 */  sll        $fp, $fp, 4
    /* B9D8C 800AADDC 03C3F021 */  addu       $fp, $fp, $v1
    /* B9D90 800AADE0 3C01FFF9 */  lui        $at, (0xFFF9E580 >> 16)
    /* B9D94 800AADE4 3421E580 */  ori        $at, $at, (0xFFF9E580 & 0xFFFF)
    /* B9D98 800AADE8 001EF0C0 */  sll        $fp, $fp, 3
    /* B9D9C 800AADEC 03C1F021 */  addu       $fp, $fp, $at
    /* B9DA0 800AADF0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* B9DA4 800AADF4 4481D800 */  mtc1       $at, $f27
    /* B9DA8 800AADF8 3C018014 */  lui        $at, %hi(D_80142908)
    /* B9DAC 800AADFC C4362908 */  lwc1       $f22, %lo(D_80142908)($at)
    /* B9DB0 800AAE00 3C01403E */  lui        $at, (0x403E0000 >> 16)
    /* B9DB4 800AAE04 33C9FFFF */  andi       $t1, $fp, 0xFFFF
    /* B9DB8 800AAE08 4481A800 */  mtc1       $at, $f21
    /* B9DBC 800AAE0C 4480D000 */  mtc1       $zero, $f26
    /* B9DC0 800AAE10 4480A000 */  mtc1       $zero, $f20
    /* B9DC4 800AAE14 0120F025 */  or         $fp, $t1, $zero
    /* B9DC8 800AAE18 A7A000D6 */  sh         $zero, 0xD6($sp)
    /* B9DCC 800AAE1C AFA20080 */  sw         $v0, 0x80($sp)
  .L800AAE20_B9DD0:
    /* B9DD0 800AAE20 8FA20080 */  lw         $v0, 0x80($sp)
    /* B9DD4 800AAE24 84510000 */  lh         $s1, 0x0($v0)
    /* B9DD8 800AAE28 84520004 */  lh         $s2, 0x4($v0)
    /* B9DDC 800AAE2C 00112400 */  sll        $a0, $s1, 16
    /* B9DE0 800AAE30 00122C00 */  sll        $a1, $s2, 16
    /* B9DE4 800AAE34 00056403 */  sra        $t4, $a1, 16
    /* B9DE8 800AAE38 00046C03 */  sra        $t5, $a0, 16
    /* B9DEC 800AAE3C 01A02025 */  or         $a0, $t5, $zero
    /* B9DF0 800AAE40 0C02E134 */  jal        func_800B84D0_C7480
    /* B9DF4 800AAE44 01802825 */   or        $a1, $t4, $zero
    /* B9DF8 800AAE48 0C007660 */  jal        sins
    /* B9DFC 800AAE4C 33C4FFFF */   andi      $a0, $fp, 0xFFFF
    /* B9E00 800AAE50 44828000 */  mtc1       $v0, $f16
    /* B9E04 800AAE54 8FAF0080 */  lw         $t7, 0x80($sp)
    /* B9E08 800AAE58 33C4FFFF */  andi       $a0, $fp, 0xFFFF
    /* B9E0C 800AAE5C 468084A0 */  cvt.s.w    $f18, $f16
    /* B9E10 800AAE60 85F8002C */  lh         $t8, 0x2C($t7)
    /* B9E14 800AAE64 2719FFB0 */  addiu      $t9, $t8, -0x50
    /* B9E18 800AAE68 44993000 */  mtc1       $t9, $f6
    /* B9E1C 800AAE6C 46009121 */  cvt.d.s    $f4, $f18
    /* B9E20 800AAE70 463A2283 */  div.d      $f10, $f4, $f26
    /* B9E24 800AAE74 44912000 */  mtc1       $s1, $f4
    /* B9E28 800AAE78 46803221 */  cvt.d.w    $f8, $f6
    /* B9E2C 800AAE7C 468021A1 */  cvt.d.w    $f6, $f4
    /* B9E30 800AAE80 46285402 */  mul.d      $f16, $f10, $f8
    /* B9E34 800AAE84 00000000 */  nop
    /* B9E38 800AAE88 46348482 */  mul.d      $f18, $f16, $f20
    /* B9E3C 800AAE8C 46323280 */  add.d      $f10, $f6, $f18
    /* B9E40 800AAE90 4620520D */  trunc.w.d  $f8, $f10
    /* B9E44 800AAE94 44114000 */  mfc1       $s1, $f8
    /* B9E48 800AAE98 0C007654 */  jal        coss
    /* B9E4C 800AAE9C 00000000 */   nop
    /* B9E50 800AAEA0 44828000 */  mtc1       $v0, $f16
    /* B9E54 800AAEA4 8FAE0080 */  lw         $t6, 0x80($sp)
    /* B9E58 800AAEA8 00002025 */  or         $a0, $zero, $zero
    /* B9E5C 800AAEAC 46808120 */  cvt.s.w    $f4, $f16
    /* B9E60 800AAEB0 85CA002C */  lh         $t2, 0x2C($t6)
    /* B9E64 800AAEB4 85CD0004 */  lh         $t5, 0x4($t6)
    /* B9E68 800AAEB8 85C60000 */  lh         $a2, 0x0($t6)
    /* B9E6C 800AAEBC 254BFFB0 */  addiu      $t3, $t2, -0x50
    /* B9E70 800AAEC0 448B4000 */  mtc1       $t3, $f8
    /* B9E74 800AAEC4 460021A1 */  cvt.d.s    $f6, $f4
    /* B9E78 800AAEC8 85C70002 */  lh         $a3, 0x2($t6)
    /* B9E7C 800AAECC 463A3483 */  div.d      $f18, $f6, $f26
    /* B9E80 800AAED0 E7B60014 */  swc1       $f22, 0x14($sp)
    /* B9E84 800AAED4 240500E8 */  addiu      $a1, $zero, 0xE8
    /* B9E88 800AAED8 AFAD0010 */  sw         $t5, 0x10($sp)
    /* B9E8C 800AAEDC 46804421 */  cvt.d.w    $f16, $f8
    /* B9E90 800AAEE0 46209287 */  neg.d      $f10, $f18
    /* B9E94 800AAEE4 44929000 */  mtc1       $s2, $f18
    /* B9E98 800AAEE8 46305102 */  mul.d      $f4, $f10, $f16
    /* B9E9C 800AAEEC 46809221 */  cvt.d.w    $f8, $f18
    /* B9EA0 800AAEF0 46342182 */  mul.d      $f6, $f4, $f20
    /* B9EA4 800AAEF4 46264280 */  add.d      $f10, $f8, $f6
    /* B9EA8 800AAEF8 4620540D */  trunc.w.d  $f16, $f10
    /* B9EAC 800AAEFC 44128000 */  mfc1       $s2, $f16
    /* B9EB0 800AAF00 0C04DC6E */  jal        func_801371B8_146168
    /* B9EB4 800AAF04 00000000 */   nop
    /* B9EB8 800AAF08 00118400 */  sll        $s0, $s1, 16
    /* B9EBC 800AAF0C 00129C00 */  sll        $s3, $s2, 16
    /* B9EC0 800AAF10 0013C403 */  sra        $t8, $s3, 16
    /* B9EC4 800AAF14 00106403 */  sra        $t4, $s0, 16
    /* B9EC8 800AAF18 000C2400 */  sll        $a0, $t4, 16
    /* B9ECC 800AAF1C 00182C00 */  sll        $a1, $t8, 16
    /* B9ED0 800AAF20 0005CC03 */  sra        $t9, $a1, 16
    /* B9ED4 800AAF24 00047C03 */  sra        $t7, $a0, 16
    /* B9ED8 800AAF28 01E02025 */  or         $a0, $t7, $zero
    /* B9EDC 800AAF2C 03202825 */  or         $a1, $t9, $zero
    /* B9EE0 800AAF30 01808025 */  or         $s0, $t4, $zero
    /* B9EE4 800AAF34 0C02E134 */  jal        func_800B84D0_C7480
    /* B9EE8 800AAF38 03009825 */   or        $s3, $t8, $zero
    /* B9EEC 800AAF3C 00102400 */  sll        $a0, $s0, 16
    /* B9EF0 800AAF40 00022A03 */  sra        $a1, $v0, 8
    /* B9EF4 800AAF44 00133400 */  sll        $a2, $s3, 16
    /* B9EF8 800AAF48 00064C03 */  sra        $t1, $a2, 16
    /* B9EFC 800AAF4C 00055400 */  sll        $t2, $a1, 16
    /* B9F00 800AAF50 00044403 */  sra        $t0, $a0, 16
    /* B9F04 800AAF54 01002025 */  or         $a0, $t0, $zero
    /* B9F08 800AAF58 000A2C03 */  sra        $a1, $t2, 16
    /* B9F0C 800AAF5C 01203025 */  or         $a2, $t1, $zero
    /* B9F10 800AAF60 2407004C */  addiu      $a3, $zero, 0x4C
    /* B9F14 800AAF64 0C037E8D */  jal        func_800DFA34_EE9E4
    /* B9F18 800AAF68 AFA00010 */   sw        $zero, 0x10($sp)
    /* B9F1C 800AAF6C 87AD00D6 */  lh         $t5, 0xD6($sp)
    /* B9F20 800AAF70 27DE09C4 */  addiu      $fp, $fp, 0x9C4
    /* B9F24 800AAF74 33CEFFFF */  andi       $t6, $fp, 0xFFFF
    /* B9F28 800AAF78 25AC0001 */  addiu      $t4, $t5, 0x1
    /* B9F2C 800AAF7C 000C7C00 */  sll        $t7, $t4, 16
    /* B9F30 800AAF80 000FC403 */  sra        $t8, $t7, 16
    /* B9F34 800AAF84 2B010002 */  slti       $at, $t8, 0x2
    /* B9F38 800AAF88 A7AC00D6 */  sh         $t4, 0xD6($sp)
    /* B9F3C 800AAF8C 1420FFA4 */  bnez       $at, .L800AAE20_B9DD0
    /* B9F40 800AAF90 01C0F025 */   or        $fp, $t6, $zero
    /* B9F44 800AAF94 8FB90080 */  lw         $t9, 0x80($sp)
    /* B9F48 800AAF98 8723002C */  lh         $v1, 0x2C($t9)
  .L800AAF9C_B9F4C:
    /* B9F4C 800AAF9C 28610028 */  slti       $at, $v1, 0x28
    /* B9F50 800AAFA0 10200096 */  beqz       $at, .L800AB1FC_BA1AC
    /* B9F54 800AAFA4 8FA20080 */   lw        $v0, 0x80($sp)
    /* B9F58 800AAFA8 2401000A */  addiu      $at, $zero, 0xA
    /* B9F5C 800AAFAC 0061001A */  div        $zero, $v1, $at
    /* B9F60 800AAFB0 00004010 */  mfhi       $t0
    /* B9F64 800AAFB4 24010001 */  addiu      $at, $zero, 0x1
    /* B9F68 800AAFB8 11000003 */  beqz       $t0, .L800AAFC8_B9F78
    /* B9F6C 800AAFBC 00000000 */   nop
    /* B9F70 800AAFC0 5461008F */  bnel       $v1, $at, .L800AB200_BA1B0
    /* B9F74 800AAFC4 8443000A */   lh        $v1, 0xA($v0)
  .L800AAFC8_B9F78:
    /* B9F78 800AAFC8 0C000E38 */  jal        func_800038E0_44E0
    /* B9F7C 800AAFCC AFA20080 */   sw        $v0, 0x80($sp)
    /* B9F80 800AAFD0 24100190 */  addiu      $s0, $zero, 0x190
    /* B9F84 800AAFD4 0050001A */  div        $zero, $v0, $s0
    /* B9F88 800AAFD8 8FAB0080 */  lw         $t3, 0x80($sp)
    /* B9F8C 800AAFDC 00005010 */  mfhi       $t2
    /* B9F90 800AAFE0 85690000 */  lh         $t1, 0x0($t3)
    /* B9F94 800AAFE4 16000002 */  bnez       $s0, .L800AAFF0_B9FA0
    /* B9F98 800AAFE8 00000000 */   nop
    /* B9F9C 800AAFEC 0007000D */  break      7
  .L800AAFF0_B9FA0:
    /* B9FA0 800AAFF0 2401FFFF */  addiu      $at, $zero, -0x1
    /* B9FA4 800AAFF4 16010004 */  bne        $s0, $at, .L800AB008_B9FB8
    /* B9FA8 800AAFF8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B9FAC 800AAFFC 14410002 */  bne        $v0, $at, .L800AB008_B9FB8
    /* B9FB0 800AB000 00000000 */   nop
    /* B9FB4 800AB004 0006000D */  break      6
  .L800AB008_B9FB8:
    /* B9FB8 800AB008 0149A021 */  addu       $s4, $t2, $t1
    /* B9FBC 800AB00C 2694FF38 */  addiu      $s4, $s4, -0xC8
    /* B9FC0 800AB010 0C000E38 */  jal        func_800038E0_44E0
    /* B9FC4 800AB014 85760002 */   lh        $s6, 0x2($t3)
    /* B9FC8 800AB018 0050001A */  div        $zero, $v0, $s0
    /* B9FCC 800AB01C 8FAD0080 */  lw         $t5, 0x80($sp)
    /* B9FD0 800AB020 00007010 */  mfhi       $t6
    /* B9FD4 800AB024 85AC0004 */  lh         $t4, 0x4($t5)
    /* B9FD8 800AB028 16000002 */  bnez       $s0, .L800AB034_B9FE4
    /* B9FDC 800AB02C 00000000 */   nop
    /* B9FE0 800AB030 0007000D */  break      7
  .L800AB034_B9FE4:
    /* B9FE4 800AB034 2401FFFF */  addiu      $at, $zero, -0x1
    /* B9FE8 800AB038 16010004 */  bne        $s0, $at, .L800AB04C_B9FFC
    /* B9FEC 800AB03C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* B9FF0 800AB040 14410002 */  bne        $v0, $at, .L800AB04C_B9FFC
    /* B9FF4 800AB044 00000000 */   nop
    /* B9FF8 800AB048 0006000D */  break      6
  .L800AB04C_B9FFC:
    /* B9FFC 800AB04C 01CCA821 */  addu       $s5, $t6, $t4
    /* BA000 800AB050 0C000E38 */  jal        func_800038E0_44E0
    /* BA004 800AB054 26B5FF38 */   addiu     $s5, $s5, -0xC8
    /* BA008 800AB058 0C000E38 */  jal        func_800038E0_44E0
    /* BA00C 800AB05C 3052FFFF */   andi      $s2, $v0, 0xFFFF
    /* BA010 800AB060 240307D0 */  addiu      $v1, $zero, 0x7D0
    /* BA014 800AB064 0243001A */  div        $zero, $s2, $v1
    /* BA018 800AB068 00005810 */  mfhi       $t3
    /* BA01C 800AB06C 00148400 */  sll        $s0, $s4, 16
    /* BA020 800AB070 00107C03 */  sra        $t7, $s0, 16
    /* BA024 800AB074 0043001A */  div        $zero, $v0, $v1
    /* BA028 800AB078 000F2400 */  sll        $a0, $t7, 16
    /* BA02C 800AB07C 00169C00 */  sll        $s3, $s6, 16
    /* BA030 800AB080 0013CC03 */  sra        $t9, $s3, 16
    /* BA034 800AB084 00192C00 */  sll        $a1, $t9, 16
    /* BA038 800AB088 0004C403 */  sra        $t8, $a0, 16
    /* BA03C 800AB08C 01E08025 */  or         $s0, $t7, $zero
    /* BA040 800AB090 01743821 */  addu       $a3, $t3, $s4
    /* BA044 800AB094 00158C00 */  sll        $s1, $s5, 16
    /* BA048 800AB098 00115403 */  sra        $t2, $s1, 16
    /* BA04C 800AB09C 24E7FC18 */  addiu      $a3, $a3, -0x3E8
    /* BA050 800AB0A0 00007810 */  mfhi       $t7
    /* BA054 800AB0A4 03002025 */  or         $a0, $t8, $zero
    /* BA058 800AB0A8 00054403 */  sra        $t0, $a1, 16
    /* BA05C 800AB0AC 01002825 */  or         $a1, $t0, $zero
    /* BA060 800AB0B0 01F5C021 */  addu       $t8, $t7, $s5
    /* BA064 800AB0B4 00076C00 */  sll        $t5, $a3, 16
    /* BA068 800AB0B8 000A3400 */  sll        $a2, $t2, 16
    /* BA06C 800AB0BC 03209825 */  or         $s3, $t9, $zero
    /* BA070 800AB0C0 2719FC18 */  addiu      $t9, $t8, -0x3E8
    /* BA074 800AB0C4 00064C03 */  sra        $t1, $a2, 16
    /* BA078 800AB0C8 000D7403 */  sra        $t6, $t5, 16
    /* BA07C 800AB0CC 24080005 */  addiu      $t0, $zero, 0x5
    /* BA080 800AB0D0 240C0BB8 */  addiu      $t4, $zero, 0xBB8
    /* BA084 800AB0D4 AFAC0010 */  sw         $t4, 0x10($sp)
    /* BA088 800AB0D8 AFA80018 */  sw         $t0, 0x18($sp)
    /* BA08C 800AB0DC 01C03825 */  or         $a3, $t6, $zero
    /* BA090 800AB0E0 01203025 */  or         $a2, $t1, $zero
    /* BA094 800AB0E4 AFB90014 */  sw         $t9, 0x14($sp)
    /* BA098 800AB0E8 01408825 */  or         $s1, $t2, $zero
    /* BA09C 800AB0EC 14600002 */  bnez       $v1, .L800AB0F8_BA0A8
    /* BA0A0 800AB0F0 00000000 */   nop
    /* BA0A4 800AB0F4 0007000D */  break      7
  .L800AB0F8_BA0A8:
    /* BA0A8 800AB0F8 2401FFFF */  addiu      $at, $zero, -0x1
    /* BA0AC 800AB0FC 14610004 */  bne        $v1, $at, .L800AB110_BA0C0
    /* BA0B0 800AB100 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* BA0B4 800AB104 16410002 */  bne        $s2, $at, .L800AB110_BA0C0
    /* BA0B8 800AB108 00000000 */   nop
    /* BA0BC 800AB10C 0006000D */  break      6
  .L800AB110_BA0C0:
    /* BA0C0 800AB110 14600002 */  bnez       $v1, .L800AB11C_BA0CC
    /* BA0C4 800AB114 00000000 */   nop
    /* BA0C8 800AB118 0007000D */  break      7
  .L800AB11C_BA0CC:
    /* BA0CC 800AB11C 2401FFFF */  addiu      $at, $zero, -0x1
    /* BA0D0 800AB120 14610004 */  bne        $v1, $at, .L800AB134_BA0E4
    /* BA0D4 800AB124 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* BA0D8 800AB128 14410002 */  bne        $v0, $at, .L800AB134_BA0E4
    /* BA0DC 800AB12C 00000000 */   nop
    /* BA0E0 800AB130 0006000D */  break      6
  .L800AB134_BA0E4:
    /* BA0E4 800AB134 0C0345AF */  jal        func_800D16BC_E066C
    /* BA0E8 800AB138 00000000 */   nop
    /* BA0EC 800AB13C 8FAA0080 */  lw         $t2, 0x80($sp)
    /* BA0F0 800AB140 00102400 */  sll        $a0, $s0, 16
    /* BA0F4 800AB144 24010001 */  addiu      $at, $zero, 0x1
    /* BA0F8 800AB148 8549002C */  lh         $t1, 0x2C($t2)
    /* BA0FC 800AB14C 00045403 */  sra        $t2, $a0, 16
    /* BA100 800AB150 01402025 */  or         $a0, $t2, $zero
    /* BA104 800AB154 1521001D */  bne        $t1, $at, .L800AB1CC_BA17C
    /* BA108 800AB158 00132C00 */   sll       $a1, $s3, 16
    /* BA10C 800AB15C 86E70B04 */  lh         $a3, 0xB04($s7)
    /* BA110 800AB160 00102400 */  sll        $a0, $s0, 16
    /* BA114 800AB164 00132C00 */  sll        $a1, $s3, 16
    /* BA118 800AB168 00113400 */  sll        $a2, $s1, 16
    /* BA11C 800AB16C 00067403 */  sra        $t6, $a2, 16
    /* BA120 800AB170 00056C03 */  sra        $t5, $a1, 16
    /* BA124 800AB174 00045C03 */  sra        $t3, $a0, 16
    /* BA128 800AB178 24180008 */  addiu      $t8, $zero, 0x8
    /* BA12C 800AB17C 00076040 */  sll        $t4, $a3, 1
    /* BA130 800AB180 3187FFFF */  andi       $a3, $t4, 0xFFFF
    /* BA134 800AB184 AFB80010 */  sw         $t8, 0x10($sp)
    /* BA138 800AB188 01602025 */  or         $a0, $t3, $zero
    /* BA13C 800AB18C 01A02825 */  or         $a1, $t5, $zero
    /* BA140 800AB190 0C037E12 */  jal        func_800DF848_EE7F8
    /* BA144 800AB194 01C03025 */   or        $a2, $t6, $zero
    /* BA148 800AB198 00102400 */  sll        $a0, $s0, 16
    /* BA14C 800AB19C 00112C00 */  sll        $a1, $s1, 16
    /* BA150 800AB1A0 00054403 */  sra        $t0, $a1, 16
    /* BA154 800AB1A4 0004CC03 */  sra        $t9, $a0, 16
    /* BA158 800AB1A8 03202025 */  or         $a0, $t9, $zero
    /* BA15C 800AB1AC 01002825 */  or         $a1, $t0, $zero
    /* BA160 800AB1B0 24060001 */  addiu      $a2, $zero, 0x1
    /* BA164 800AB1B4 0C02E360 */  jal        func_800B8D80_C7D30
    /* BA168 800AB1B8 24070002 */   addiu     $a3, $zero, 0x2
    /* BA16C 800AB1BC 0C02FB49 */  jal        func_800BED24_CDCD4
    /* BA170 800AB1C0 00000000 */   nop
    /* BA174 800AB1C4 1000000A */  b          .L800AB1F0_BA1A0
    /* BA178 800AB1C8 00000000 */   nop
  .L800AB1CC_BA17C:
    /* BA17C 800AB1CC 00113400 */  sll        $a2, $s1, 16
    /* BA180 800AB1D0 00065C03 */  sra        $t3, $a2, 16
    /* BA184 800AB1D4 00054C03 */  sra        $t1, $a1, 16
    /* BA188 800AB1D8 240D0008 */  addiu      $t5, $zero, 0x8
    /* BA18C 800AB1DC AFAD0010 */  sw         $t5, 0x10($sp)
    /* BA190 800AB1E0 01202825 */  or         $a1, $t1, $zero
    /* BA194 800AB1E4 01603025 */  or         $a2, $t3, $zero
    /* BA198 800AB1E8 0C037E12 */  jal        func_800DF848_EE7F8
    /* BA19C 800AB1EC 96E70B04 */   lhu       $a3, 0xB04($s7)
  .L800AB1F0_BA1A0:
    /* BA1A0 800AB1F0 0C038D78 */  jal        func_800E35E0_F2590
    /* BA1A4 800AB1F4 240400FF */   addiu     $a0, $zero, 0xFF
    /* BA1A8 800AB1F8 8FA20080 */  lw         $v0, 0x80($sp)
  .L800AB1FC_BA1AC:
    /* BA1AC 800AB1FC 8443000A */  lh         $v1, 0xA($v0)
  .L800AB200_BA1B0:
    /* BA1B0 800AB200 28610BB8 */  slti       $at, $v1, 0xBB8
    /* BA1B4 800AB204 10200002 */  beqz       $at, .L800AB210_BA1C0
    /* BA1B8 800AB208 246E0032 */   addiu     $t6, $v1, 0x32
    /* BA1BC 800AB20C A44E000A */  sh         $t6, 0xA($v0)
  .L800AB210_BA1C0:
    /* BA1C0 800AB210 8FBF006C */  lw         $ra, 0x6C($sp)
    /* BA1C4 800AB214 D7B40028 */  ldc1       $f20, 0x28($sp)
    /* BA1C8 800AB218 D7B60030 */  ldc1       $f22, 0x30($sp)
    /* BA1CC 800AB21C D7B80038 */  ldc1       $f24, 0x38($sp)
    /* BA1D0 800AB220 D7BA0040 */  ldc1       $f26, 0x40($sp)
    /* BA1D4 800AB224 8FB00048 */  lw         $s0, 0x48($sp)
    /* BA1D8 800AB228 8FB1004C */  lw         $s1, 0x4C($sp)
    /* BA1DC 800AB22C 8FB20050 */  lw         $s2, 0x50($sp)
    /* BA1E0 800AB230 8FB30054 */  lw         $s3, 0x54($sp)
    /* BA1E4 800AB234 8FB40058 */  lw         $s4, 0x58($sp)
    /* BA1E8 800AB238 8FB5005C */  lw         $s5, 0x5C($sp)
    /* BA1EC 800AB23C 8FB60060 */  lw         $s6, 0x60($sp)
    /* BA1F0 800AB240 8FB70064 */  lw         $s7, 0x64($sp)
    /* BA1F4 800AB244 8FBE0068 */  lw         $fp, 0x68($sp)
    /* BA1F8 800AB248 03E00008 */  jr         $ra
    /* BA1FC 800AB24C 27BD00D8 */   addiu     $sp, $sp, 0xD8
endlabel func_800AA340_B92F0
