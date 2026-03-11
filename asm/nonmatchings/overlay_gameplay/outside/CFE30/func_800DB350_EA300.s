nonmatching func_800DB350_EA300, 0x3C4

glabel func_800DB350_EA300
    /* EA300 800DB350 3C058015 */  lui        $a1, %hi(D_80153AB8)
    /* EA304 800DB354 24A53AB8 */  addiu      $a1, $a1, %lo(D_80153AB8)
    /* EA308 800DB358 3C018015 */  lui        $at, %hi(D_80153BC8)
    /* EA30C 800DB35C C4223BC8 */  lwc1       $f2, %lo(D_80153BC8)($at)
    /* EA310 800DB360 C4A40000 */  lwc1       $f4, 0x0($a1)
    /* EA314 800DB364 C4A60004 */  lwc1       $f6, 0x4($a1)
    /* EA318 800DB368 C4A80008 */  lwc1       $f8, 0x8($a1)
    /* EA31C 800DB36C 46041002 */  mul.s      $f0, $f2, $f4
    /* EA320 800DB370 C4AA000C */  lwc1       $f10, 0xC($a1)
    /* EA324 800DB374 C4A40010 */  lwc1       $f4, 0x10($a1)
    /* EA328 800DB378 46061302 */  mul.s      $f12, $f2, $f6
    /* EA32C 800DB37C 3C078015 */  lui        $a3, %hi(D_80153BB8)
    /* EA330 800DB380 24E73BB8 */  addiu      $a3, $a3, %lo(D_80153BB8)
    /* EA334 800DB384 46081382 */  mul.s      $f14, $f2, $f8
    /* EA338 800DB388 C4A60014 */  lwc1       $f6, 0x14($a1)
    /* EA33C 800DB38C 3C068006 */  lui        $a2, %hi(D_8005BB34)
    /* EA340 800DB390 460A1402 */  mul.s      $f16, $f2, $f10
    /* EA344 800DB394 C4EA0000 */  lwc1       $f10, 0x0($a3)
    /* EA348 800DB398 24C6BB34 */  addiu      $a2, $a2, %lo(D_8005BB34)
    /* EA34C 800DB39C 46041482 */  mul.s      $f18, $f2, $f4
    /* EA350 800DB3A0 8CD80000 */  lw         $t8, 0x0($a2)
    /* EA354 800DB3A4 46005100 */  add.s      $f4, $f10, $f0
    /* EA358 800DB3A8 46061202 */  mul.s      $f8, $f2, $f6
    /* EA35C 800DB3AC 27BDFFF8 */  addiu      $sp, $sp, -0x8
    /* EA360 800DB3B0 3C088015 */  lui        $t0, %hi(D_80153BC4)
    /* EA364 800DB3B4 25083BC4 */  addiu      $t0, $t0, %lo(D_80153BC4)
    /* EA368 800DB3B8 3C098015 */  lui        $t1, %hi(D_80153BCC)
    /* EA36C 800DB3BC 25293BCC */  addiu      $t1, $t1, %lo(D_80153BCC)
    /* EA370 800DB3C0 4600218D */  trunc.w.s  $f6, $f4
    /* EA374 800DB3C4 E7A80004 */  swc1       $f8, 0x4($sp)
    /* EA378 800DB3C8 3C0A8015 */  lui        $t2, %hi(D_80153BCD)
    /* EA37C 800DB3CC 254A3BCD */  addiu      $t2, $t2, %lo(D_80153BCD)
    /* EA380 800DB3D0 440F3000 */  mfc1       $t7, $f6
    /* EA384 800DB3D4 3C0B8015 */  lui        $t3, %hi(D_80153BCE)
    /* EA388 800DB3D8 256B3BCE */  addiu      $t3, $t3, %lo(D_80153BCE)
    /* EA38C 800DB3DC A70F0000 */  sh         $t7, 0x0($t8)
    /* EA390 800DB3E0 C4E80004 */  lwc1       $f8, 0x4($a3)
    /* EA394 800DB3E4 8CCE0000 */  lw         $t6, 0x0($a2)
    /* EA398 800DB3E8 3C0C8006 */  lui        $t4, %hi(D_8005BB2C)
    /* EA39C 800DB3EC 460C4280 */  add.s      $f10, $f8, $f12
    /* EA3A0 800DB3F0 258CBB2C */  addiu      $t4, $t4, %lo(D_8005BB2C)
    /* EA3A4 800DB3F4 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* EA3A8 800DB3F8 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* EA3AC 800DB3FC 4600510D */  trunc.w.s  $f4, $f10
    /* EA3B0 800DB400 440D2000 */  mfc1       $t5, $f4
    /* EA3B4 800DB404 00000000 */  nop
    /* EA3B8 800DB408 A5CD0002 */  sh         $t5, 0x2($t6)
    /* EA3BC 800DB40C C4E60008 */  lwc1       $f6, 0x8($a3)
    /* EA3C0 800DB410 8CD90000 */  lw         $t9, 0x0($a2)
    /* EA3C4 800DB414 460E3200 */  add.s      $f8, $f6, $f14
    /* EA3C8 800DB418 4600428D */  trunc.w.s  $f10, $f8
    /* EA3CC 800DB41C 44185000 */  mfc1       $t8, $f10
    /* EA3D0 800DB420 00000000 */  nop
    /* EA3D4 800DB424 A7380004 */  sh         $t8, 0x4($t9)
    /* EA3D8 800DB428 8CCD0000 */  lw         $t5, 0x0($a2)
    /* EA3DC 800DB42C A5A00006 */  sh         $zero, 0x6($t5)
    /* EA3E0 800DB430 8CCE0000 */  lw         $t6, 0x0($a2)
    /* EA3E4 800DB434 A5C00008 */  sh         $zero, 0x8($t6)
    /* EA3E8 800DB438 8CCF0000 */  lw         $t7, 0x0($a2)
    /* EA3EC 800DB43C A5E0000A */  sh         $zero, 0xA($t7)
    /* EA3F0 800DB440 8D180000 */  lw         $t8, 0x0($t0)
    /* EA3F4 800DB444 8CCD0000 */  lw         $t5, 0x0($a2)
    /* EA3F8 800DB448 93190000 */  lbu        $t9, 0x0($t8)
    /* EA3FC 800DB44C A1B9000C */  sb         $t9, 0xC($t5)
    /* EA400 800DB450 8D0E0000 */  lw         $t6, 0x0($t0)
    /* EA404 800DB454 8CD80000 */  lw         $t8, 0x0($a2)
    /* EA408 800DB458 91CF0001 */  lbu        $t7, 0x1($t6)
    /* EA40C 800DB45C A30F000D */  sb         $t7, 0xD($t8)
    /* EA410 800DB460 8D190000 */  lw         $t9, 0x0($t0)
    /* EA414 800DB464 8CCE0000 */  lw         $t6, 0x0($a2)
    /* EA418 800DB468 932D0002 */  lbu        $t5, 0x2($t9)
    /* EA41C 800DB46C A1CD000E */  sb         $t5, 0xE($t6)
    /* EA420 800DB470 8CD80000 */  lw         $t8, 0x0($a2)
    /* EA424 800DB474 912F0000 */  lbu        $t7, 0x0($t1)
    /* EA428 800DB478 A30F000F */  sb         $t7, 0xF($t8)
    /* EA42C 800DB47C C4E40000 */  lwc1       $f4, 0x0($a3)
    /* EA430 800DB480 8CD90000 */  lw         $t9, 0x0($a2)
    /* EA434 800DB484 46102180 */  add.s      $f6, $f4, $f16
    /* EA438 800DB488 272D0010 */  addiu      $t5, $t9, 0x10
    /* EA43C 800DB48C ACCD0000 */  sw         $t5, 0x0($a2)
    /* EA440 800DB490 4600320D */  trunc.w.s  $f8, $f6
    /* EA444 800DB494 440F4000 */  mfc1       $t7, $f8
    /* EA448 800DB498 00000000 */  nop
    /* EA44C 800DB49C A5AF0000 */  sh         $t7, 0x0($t5)
    /* EA450 800DB4A0 C4EA0004 */  lwc1       $f10, 0x4($a3)
    /* EA454 800DB4A4 8CCE0000 */  lw         $t6, 0x0($a2)
    /* EA458 800DB4A8 46125100 */  add.s      $f4, $f10, $f18
    /* EA45C 800DB4AC 4600218D */  trunc.w.s  $f6, $f4
    /* EA460 800DB4B0 440D3000 */  mfc1       $t5, $f6
    /* EA464 800DB4B4 00000000 */  nop
    /* EA468 800DB4B8 A5CD0002 */  sh         $t5, 0x2($t6)
    /* EA46C 800DB4BC C7AA0004 */  lwc1       $f10, 0x4($sp)
    /* EA470 800DB4C0 C4E80008 */  lwc1       $f8, 0x8($a3)
    /* EA474 800DB4C4 8CD90000 */  lw         $t9, 0x0($a2)
    /* EA478 800DB4C8 460A4100 */  add.s      $f4, $f8, $f10
    /* EA47C 800DB4CC 4600218D */  trunc.w.s  $f6, $f4
    /* EA480 800DB4D0 44183000 */  mfc1       $t8, $f6
    /* EA484 800DB4D4 00000000 */  nop
    /* EA488 800DB4D8 A7380004 */  sh         $t8, 0x4($t9)
    /* EA48C 800DB4DC 8CCD0000 */  lw         $t5, 0x0($a2)
    /* EA490 800DB4E0 A5A00006 */  sh         $zero, 0x6($t5)
    /* EA494 800DB4E4 914E0000 */  lbu        $t6, 0x0($t2)
    /* EA498 800DB4E8 8CD80000 */  lw         $t8, 0x0($a2)
    /* EA49C 800DB4EC 000E7980 */  sll        $t7, $t6, 6
    /* EA4A0 800DB4F0 A70F0008 */  sh         $t7, 0x8($t8)
    /* EA4A4 800DB4F4 8CD90000 */  lw         $t9, 0x0($a2)
    /* EA4A8 800DB4F8 A720000A */  sh         $zero, 0xA($t9)
    /* EA4AC 800DB4FC 8D0D0000 */  lw         $t5, 0x0($t0)
    /* EA4B0 800DB500 8CCF0000 */  lw         $t7, 0x0($a2)
    /* EA4B4 800DB504 91AE0000 */  lbu        $t6, 0x0($t5)
    /* EA4B8 800DB508 A1EE000C */  sb         $t6, 0xC($t7)
    /* EA4BC 800DB50C 8D180000 */  lw         $t8, 0x0($t0)
    /* EA4C0 800DB510 8CCD0000 */  lw         $t5, 0x0($a2)
    /* EA4C4 800DB514 93190001 */  lbu        $t9, 0x1($t8)
    /* EA4C8 800DB518 A1B9000D */  sb         $t9, 0xD($t5)
    /* EA4CC 800DB51C 8D0E0000 */  lw         $t6, 0x0($t0)
    /* EA4D0 800DB520 8CD80000 */  lw         $t8, 0x0($a2)
    /* EA4D4 800DB524 91CF0002 */  lbu        $t7, 0x2($t6)
    /* EA4D8 800DB528 A30F000E */  sb         $t7, 0xE($t8)
    /* EA4DC 800DB52C 8CCD0000 */  lw         $t5, 0x0($a2)
    /* EA4E0 800DB530 91390000 */  lbu        $t9, 0x0($t1)
    /* EA4E4 800DB534 A1B9000F */  sb         $t9, 0xF($t5)
    /* EA4E8 800DB538 C4E80000 */  lwc1       $f8, 0x0($a3)
    /* EA4EC 800DB53C 8CCE0000 */  lw         $t6, 0x0($a2)
    /* EA4F0 800DB540 46004281 */  sub.s      $f10, $f8, $f0
    /* EA4F4 800DB544 25CF0010 */  addiu      $t7, $t6, 0x10
    /* EA4F8 800DB548 ACCF0000 */  sw         $t7, 0x0($a2)
    /* EA4FC 800DB54C 4600510D */  trunc.w.s  $f4, $f10
    /* EA500 800DB550 44192000 */  mfc1       $t9, $f4
    /* EA504 800DB554 00000000 */  nop
    /* EA508 800DB558 A5F90000 */  sh         $t9, 0x0($t7)
    /* EA50C 800DB55C C4E60004 */  lwc1       $f6, 0x4($a3)
    /* EA510 800DB560 8CD80000 */  lw         $t8, 0x0($a2)
    /* EA514 800DB564 460C3201 */  sub.s      $f8, $f6, $f12
    /* EA518 800DB568 4600428D */  trunc.w.s  $f10, $f8
    /* EA51C 800DB56C 440F5000 */  mfc1       $t7, $f10
    /* EA520 800DB570 00000000 */  nop
    /* EA524 800DB574 A70F0002 */  sh         $t7, 0x2($t8)
    /* EA528 800DB578 C4E40008 */  lwc1       $f4, 0x8($a3)
    /* EA52C 800DB57C 8CCE0000 */  lw         $t6, 0x0($a2)
    /* EA530 800DB580 460E2181 */  sub.s      $f6, $f4, $f14
    /* EA534 800DB584 4600320D */  trunc.w.s  $f8, $f6
    /* EA538 800DB588 440D4000 */  mfc1       $t5, $f8
    /* EA53C 800DB58C 00000000 */  nop
    /* EA540 800DB590 A5CD0004 */  sh         $t5, 0x4($t6)
    /* EA544 800DB594 8CCF0000 */  lw         $t7, 0x0($a2)
    /* EA548 800DB598 A5E00006 */  sh         $zero, 0x6($t7)
    /* EA54C 800DB59C 91580000 */  lbu        $t8, 0x0($t2)
    /* EA550 800DB5A0 8CCD0000 */  lw         $t5, 0x0($a2)
    /* EA554 800DB5A4 0018C980 */  sll        $t9, $t8, 6
    /* EA558 800DB5A8 A5B90008 */  sh         $t9, 0x8($t5)
    /* EA55C 800DB5AC 916E0000 */  lbu        $t6, 0x0($t3)
    /* EA560 800DB5B0 8CD80000 */  lw         $t8, 0x0($a2)
    /* EA564 800DB5B4 000E7980 */  sll        $t7, $t6, 6
    /* EA568 800DB5B8 A70F000A */  sh         $t7, 0xA($t8)
    /* EA56C 800DB5BC 8D190000 */  lw         $t9, 0x0($t0)
    /* EA570 800DB5C0 8CCE0000 */  lw         $t6, 0x0($a2)
    /* EA574 800DB5C4 932D0000 */  lbu        $t5, 0x0($t9)
    /* EA578 800DB5C8 A1CD000C */  sb         $t5, 0xC($t6)
    /* EA57C 800DB5CC 8D0F0000 */  lw         $t7, 0x0($t0)
    /* EA580 800DB5D0 8CD90000 */  lw         $t9, 0x0($a2)
    /* EA584 800DB5D4 91F80001 */  lbu        $t8, 0x1($t7)
    /* EA588 800DB5D8 A338000D */  sb         $t8, 0xD($t9)
    /* EA58C 800DB5DC 8D0D0000 */  lw         $t5, 0x0($t0)
    /* EA590 800DB5E0 8CCF0000 */  lw         $t7, 0x0($a2)
    /* EA594 800DB5E4 91AE0002 */  lbu        $t6, 0x2($t5)
    /* EA598 800DB5E8 A1EE000E */  sb         $t6, 0xE($t7)
    /* EA59C 800DB5EC 8CD90000 */  lw         $t9, 0x0($a2)
    /* EA5A0 800DB5F0 91380000 */  lbu        $t8, 0x0($t1)
    /* EA5A4 800DB5F4 A338000F */  sb         $t8, 0xF($t9)
    /* EA5A8 800DB5F8 C4EA0000 */  lwc1       $f10, 0x0($a3)
    /* EA5AC 800DB5FC 8CCD0000 */  lw         $t5, 0x0($a2)
    /* EA5B0 800DB600 46105101 */  sub.s      $f4, $f10, $f16
    /* EA5B4 800DB604 25AE0010 */  addiu      $t6, $t5, 0x10
    /* EA5B8 800DB608 ACCE0000 */  sw         $t6, 0x0($a2)
    /* EA5BC 800DB60C 4600218D */  trunc.w.s  $f6, $f4
    /* EA5C0 800DB610 44183000 */  mfc1       $t8, $f6
    /* EA5C4 800DB614 00000000 */  nop
    /* EA5C8 800DB618 A5D80000 */  sh         $t8, 0x0($t6)
    /* EA5CC 800DB61C C4E80004 */  lwc1       $f8, 0x4($a3)
    /* EA5D0 800DB620 8CCF0000 */  lw         $t7, 0x0($a2)
    /* EA5D4 800DB624 46124281 */  sub.s      $f10, $f8, $f18
    /* EA5D8 800DB628 4600510D */  trunc.w.s  $f4, $f10
    /* EA5DC 800DB62C 440E2000 */  mfc1       $t6, $f4
    /* EA5E0 800DB630 00000000 */  nop
    /* EA5E4 800DB634 A5EE0002 */  sh         $t6, 0x2($t7)
    /* EA5E8 800DB638 C7A80004 */  lwc1       $f8, 0x4($sp)
    /* EA5EC 800DB63C C4E60008 */  lwc1       $f6, 0x8($a3)
    /* EA5F0 800DB640 8CCD0000 */  lw         $t5, 0x0($a2)
    /* EA5F4 800DB644 46083281 */  sub.s      $f10, $f6, $f8
    /* EA5F8 800DB648 4600510D */  trunc.w.s  $f4, $f10
    /* EA5FC 800DB64C 44192000 */  mfc1       $t9, $f4
    /* EA600 800DB650 00000000 */  nop
    /* EA604 800DB654 A5B90004 */  sh         $t9, 0x4($t5)
    /* EA608 800DB658 8CCE0000 */  lw         $t6, 0x0($a2)
    /* EA60C 800DB65C A5C00006 */  sh         $zero, 0x6($t6)
    /* EA610 800DB660 8CCF0000 */  lw         $t7, 0x0($a2)
    /* EA614 800DB664 A5E00008 */  sh         $zero, 0x8($t7)
    /* EA618 800DB668 91780000 */  lbu        $t8, 0x0($t3)
    /* EA61C 800DB66C 8CCD0000 */  lw         $t5, 0x0($a2)
    /* EA620 800DB670 0018C980 */  sll        $t9, $t8, 6
    /* EA624 800DB674 A5B9000A */  sh         $t9, 0xA($t5)
    /* EA628 800DB678 8D0E0000 */  lw         $t6, 0x0($t0)
    /* EA62C 800DB67C 8CD80000 */  lw         $t8, 0x0($a2)
    /* EA630 800DB680 91CF0000 */  lbu        $t7, 0x0($t6)
    /* EA634 800DB684 A30F000C */  sb         $t7, 0xC($t8)
    /* EA638 800DB688 8D190000 */  lw         $t9, 0x0($t0)
    /* EA63C 800DB68C 8CCE0000 */  lw         $t6, 0x0($a2)
    /* EA640 800DB690 932D0001 */  lbu        $t5, 0x1($t9)
    /* EA644 800DB694 A1CD000D */  sb         $t5, 0xD($t6)
    /* EA648 800DB698 8D0F0000 */  lw         $t7, 0x0($t0)
    /* EA64C 800DB69C 8CD90000 */  lw         $t9, 0x0($a2)
    /* EA650 800DB6A0 91F80002 */  lbu        $t8, 0x2($t7)
    /* EA654 800DB6A4 A338000E */  sb         $t8, 0xE($t9)
    /* EA658 800DB6A8 8CCE0000 */  lw         $t6, 0x0($a2)
    /* EA65C 800DB6AC 912D0000 */  lbu        $t5, 0x0($t1)
    /* EA660 800DB6B0 A1CD000F */  sb         $t5, 0xF($t6)
    /* EA664 800DB6B4 8CCF0000 */  lw         $t7, 0x0($a2)
    /* EA668 800DB6B8 8D830000 */  lw         $v1, 0x0($t4)
    /* EA66C 800DB6BC 3C0D0400 */  lui        $t5, (0x400103F >> 16)
    /* EA670 800DB6C0 25F80010 */  addiu      $t8, $t7, 0x10
    /* EA674 800DB6C4 24790008 */  addiu      $t9, $v1, 0x8
    /* EA678 800DB6C8 ACD80000 */  sw         $t8, 0x0($a2)
    /* EA67C 800DB6CC AD990000 */  sw         $t9, 0x0($t4)
    /* EA680 800DB6D0 35AD103F */  ori        $t5, $t5, (0x400103F & 0xFFFF)
    /* EA684 800DB6D4 AC6D0000 */  sw         $t5, 0x0($v1)
    /* EA688 800DB6D8 8CCE0000 */  lw         $t6, 0x0($a2)
    /* EA68C 800DB6DC 3C0DB100 */  lui        $t5, (0xB1000206 >> 16)
    /* EA690 800DB6E0 35AD0206 */  ori        $t5, $t5, (0xB1000206 & 0xFFFF)
    /* EA694 800DB6E4 25CFFFC0 */  addiu      $t7, $t6, -0x40
    /* EA698 800DB6E8 01E1C024 */  and        $t8, $t7, $at
    /* EA69C 800DB6EC AC780004 */  sw         $t8, 0x4($v1)
    /* EA6A0 800DB6F0 8D830000 */  lw         $v1, 0x0($t4)
    /* EA6A4 800DB6F4 3C0E0006 */  lui        $t6, (0x60204 >> 16)
    /* EA6A8 800DB6F8 35CE0204 */  ori        $t6, $t6, (0x60204 & 0xFFFF)
    /* EA6AC 800DB6FC 24790008 */  addiu      $t9, $v1, 0x8
    /* EA6B0 800DB700 AD990000 */  sw         $t9, 0x0($t4)
    /* EA6B4 800DB704 27BD0008 */  addiu      $sp, $sp, 0x8
    /* EA6B8 800DB708 AC6E0004 */  sw         $t6, 0x4($v1)
    /* EA6BC 800DB70C 03E00008 */  jr         $ra
    /* EA6C0 800DB710 AC6D0000 */   sw        $t5, 0x0($v1)
endlabel func_800DB350_EA300
