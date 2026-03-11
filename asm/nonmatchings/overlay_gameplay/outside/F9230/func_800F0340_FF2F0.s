nonmatching func_800F0340_FF2F0, 0x32C

glabel func_800F0340_FF2F0
    /* FF2F0 800F0340 3C018015 */  lui        $at, %hi(D_80157F58)
    /* FF2F4 800F0344 00057400 */  sll        $t6, $a1, 16
    /* FF2F8 800F0348 AC247F58 */  sw         $a0, %lo(D_80157F58)($at)
    /* FF2FC 800F034C 000E7C03 */  sra        $t7, $t6, 16
    /* FF300 800F0350 3C028015 */  lui        $v0, %hi(D_80157F5C)
    /* FF304 800F0354 3C038015 */  lui        $v1, %hi(D_80157F60)
    /* FF308 800F0358 24637F60 */  addiu      $v1, $v1, %lo(D_80157F60)
    /* FF30C 800F035C 24427F5C */  addiu      $v0, $v0, %lo(D_80157F5C)
    /* FF310 800F0360 AC400000 */  sw         $zero, 0x0($v0)
    /* FF314 800F0364 AC6F0000 */  sw         $t7, 0x0($v1)
    /* FF318 800F0368 00CF4023 */  subu       $t0, $a2, $t7
    /* FF31C 800F036C 3C018015 */  lui        $at, %hi(D_80157F68)
    /* FF320 800F0370 A4287F68 */  sh         $t0, %lo(D_80157F68)($at)
    /* FF324 800F0374 8C4A0000 */  lw         $t2, 0x0($v0)
    /* FF328 800F0378 8C690000 */  lw         $t1, 0x0($v1)
    /* FF32C 800F037C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* FF330 800F0380 AFBF0014 */  sw         $ra, 0x14($sp)
    /* FF334 800F0384 012A2021 */  addu       $a0, $t1, $t2
    /* FF338 800F0388 00045C00 */  sll        $t3, $a0, 16
    /* FF33C 800F038C AFA5001C */  sw         $a1, 0x1C($sp)
    /* FF340 800F0390 AFA60020 */  sw         $a2, 0x20($sp)
    /* FF344 800F0394 0C03C0BB */  jal        func_800F02EC_FF29C
    /* FF348 800F0398 000B2403 */   sra       $a0, $t3, 16
    /* FF34C 800F039C 3C038015 */  lui        $v1, %hi(D_80157F4C)
    /* FF350 800F03A0 8C637F4C */  lw         $v1, %lo(D_80157F4C)($v1)
    /* FF354 800F03A4 24010001 */  addiu      $at, $zero, 0x1
    /* FF358 800F03A8 90620011 */  lbu        $v0, 0x11($v1)
    /* FF35C 800F03AC 5040000A */  beql       $v0, $zero, .L800F03D8_FF388
    /* FF360 800F03B0 846D0006 */   lh        $t5, 0x6($v1)
    /* FF364 800F03B4 10410012 */  beq        $v0, $at, .L800F0400_FF3B0
    /* FF368 800F03B8 24010002 */   addiu     $at, $zero, 0x2
    /* FF36C 800F03BC 1041002B */  beq        $v0, $at, .L800F046C_FF41C
    /* FF370 800F03C0 24010003 */   addiu     $at, $zero, 0x3
    /* FF374 800F03C4 1041005C */  beq        $v0, $at, .L800F0538_FF4E8
    /* FF378 800F03C8 3C058015 */   lui       $a1, %hi(D_80157588)
    /* FF37C 800F03CC 10000076 */  b          .L800F05A8_FF558
    /* FF380 800F03D0 24A57588 */   addiu     $a1, $a1, %lo(D_80157588)
    /* FF384 800F03D4 846D0006 */  lh         $t5, 0x6($v1)
  .L800F03D8_FF388:
    /* FF388 800F03D8 3C018015 */  lui        $at, %hi(D_80157586)
    /* FF38C 800F03DC 3C058015 */  lui        $a1, %hi(D_80157588)
    /* FF390 800F03E0 A42D7586 */  sh         $t5, %lo(D_80157586)($at)
    /* FF394 800F03E4 846E0008 */  lh         $t6, 0x8($v1)
    /* FF398 800F03E8 24A57588 */  addiu      $a1, $a1, %lo(D_80157588)
    /* FF39C 800F03EC 3C018015 */  lui        $at, %hi(D_8015758A)
    /* FF3A0 800F03F0 A4AE0000 */  sh         $t6, 0x0($a1)
    /* FF3A4 800F03F4 846F000A */  lh         $t7, 0xA($v1)
    /* FF3A8 800F03F8 1000006B */  b          .L800F05A8_FF558
    /* FF3AC 800F03FC A42F758A */   sh        $t7, %lo(D_8015758A)($at)
  .L800F0400_FF3B0:
    /* FF3B0 800F0400 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* FF3B4 800F0404 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* FF3B8 800F0408 3C018015 */  lui        $at, %hi(D_80157586)
    /* FF3BC 800F040C 3C058015 */  lui        $a1, %hi(D_80157588)
    /* FF3C0 800F0410 84580000 */  lh         $t8, 0x0($v0)
    /* FF3C4 800F0414 24A57588 */  addiu      $a1, $a1, %lo(D_80157588)
    /* FF3C8 800F0418 3C0D8025 */  lui        $t5, %hi(D_80257A38)
    /* FF3CC 800F041C 0018C883 */  sra        $t9, $t8, 2
    /* FF3D0 800F0420 A4397586 */  sh         $t9, %lo(D_80157586)($at)
    /* FF3D4 800F0424 84480002 */  lh         $t0, 0x2($v0)
    /* FF3D8 800F0428 3C018015 */  lui        $at, %hi(D_8015758A)
    /* FF3DC 800F042C 00084883 */  sra        $t1, $t0, 2
    /* FF3E0 800F0430 A4A90000 */  sh         $t1, 0x0($a1)
    /* FF3E4 800F0434 904B001A */  lbu        $t3, 0x1A($v0)
    /* FF3E8 800F0438 84AA0000 */  lh         $t2, 0x0($a1)
    /* FF3EC 800F043C 000B60C0 */  sll        $t4, $t3, 3
    /* FF3F0 800F0440 018B6023 */  subu       $t4, $t4, $t3
    /* FF3F4 800F0444 000C6100 */  sll        $t4, $t4, 4
    /* FF3F8 800F0448 01AC6821 */  addu       $t5, $t5, $t4
    /* FF3FC 800F044C 85AD7A38 */  lh         $t5, %lo(D_80257A38)($t5)
    /* FF400 800F0450 000D70C3 */  sra        $t6, $t5, 3
    /* FF404 800F0454 014E7821 */  addu       $t7, $t2, $t6
    /* FF408 800F0458 A4AF0000 */  sh         $t7, 0x0($a1)
    /* FF40C 800F045C 84580004 */  lh         $t8, 0x4($v0)
    /* FF410 800F0460 0018C883 */  sra        $t9, $t8, 2
    /* FF414 800F0464 10000050 */  b          .L800F05A8_FF558
    /* FF418 800F0468 A439758A */   sh        $t9, %lo(D_8015758A)($at)
  .L800F046C_FF41C:
    /* FF41C 800F046C 8468000E */  lh         $t0, 0xE($v1)
    /* FF420 800F0470 24040018 */  addiu      $a0, $zero, 0x18
    /* FF424 800F0474 3C028005 */  lui        $v0, %hi(buildingInstances)
    /* FF428 800F0478 01040019 */  multu      $t0, $a0
    /* FF42C 800F047C 24420AD8 */  addiu      $v0, $v0, %lo(buildingInstances)
    /* FF430 800F0480 3C0A8016 */  lui        $t2, %hi(D_80159DE0)
    /* FF434 800F0484 954A9DE0 */  lhu        $t2, %lo(D_80159DE0)($t2)
    /* FF438 800F0488 3C018015 */  lui        $at, %hi(D_80157586)
    /* FF43C 800F048C 3C058015 */  lui        $a1, %hi(D_80157588)
    /* FF440 800F0490 24A57588 */  addiu      $a1, $a1, %lo(D_80157588)
    /* FF444 800F0494 00004812 */  mflo       $t1
    /* FF448 800F0498 00495821 */  addu       $t3, $v0, $t1
    /* FF44C 800F049C 856C0000 */  lh         $t4, 0x0($t3)
    /* FF450 800F04A0 3C0B8016 */  lui        $t3, %hi(D_80159DE2)
    /* FF454 800F04A4 956B9DE2 */  lhu        $t3, %lo(D_80159DE2)($t3)
    /* FF458 800F04A8 000C6883 */  sra        $t5, $t4, 2
    /* FF45C 800F04AC 01AA7021 */  addu       $t6, $t5, $t2
    /* FF460 800F04B0 A42E7586 */  sh         $t6, %lo(D_80157586)($at)
    /* FF464 800F04B4 846F000E */  lh         $t7, 0xE($v1)
    /* FF468 800F04B8 3C018015 */  lui        $at, %hi(D_8015758A)
    /* FF46C 800F04BC 01E40019 */  multu      $t7, $a0
    /* FF470 800F04C0 0000C012 */  mflo       $t8
    /* FF474 800F04C4 0058C821 */  addu       $t9, $v0, $t8
    /* FF478 800F04C8 87280002 */  lh         $t0, 0x2($t9)
    /* FF47C 800F04CC 00084883 */  sra        $t1, $t0, 2
    /* FF480 800F04D0 012B6021 */  addu       $t4, $t1, $t3
    /* FF484 800F04D4 A4AC0000 */  sh         $t4, 0x0($a1)
    /* FF488 800F04D8 846A000E */  lh         $t2, 0xE($v1)
    /* FF48C 800F04DC 3C088026 */  lui        $t0, %hi(D_802590A4)
    /* FF490 800F04E0 84AD0000 */  lh         $t5, 0x0($a1)
    /* FF494 800F04E4 01440019 */  multu      $t2, $a0
    /* FF498 800F04E8 00007012 */  mflo       $t6
    /* FF49C 800F04EC 004E7821 */  addu       $t7, $v0, $t6
    /* FF4A0 800F04F0 91F80006 */  lbu        $t8, 0x6($t7)
    /* FF4A4 800F04F4 0018C940 */  sll        $t9, $t8, 5
    /* FF4A8 800F04F8 01194021 */  addu       $t0, $t0, $t9
    /* FF4AC 800F04FC 850890A4 */  lh         $t0, %lo(D_802590A4)($t0)
    /* FF4B0 800F0500 3C198016 */  lui        $t9, %hi(D_80159DE4)
    /* FF4B4 800F0504 000848C3 */  sra        $t1, $t0, 3
    /* FF4B8 800F0508 01A95821 */  addu       $t3, $t5, $t1
    /* FF4BC 800F050C A4AB0000 */  sh         $t3, 0x0($a1)
    /* FF4C0 800F0510 846C000E */  lh         $t4, 0xE($v1)
    /* FF4C4 800F0514 97399DE4 */  lhu        $t9, %lo(D_80159DE4)($t9)
    /* FF4C8 800F0518 01840019 */  multu      $t4, $a0
    /* FF4CC 800F051C 00005012 */  mflo       $t2
    /* FF4D0 800F0520 004A7021 */  addu       $t6, $v0, $t2
    /* FF4D4 800F0524 85CF0004 */  lh         $t7, 0x4($t6)
    /* FF4D8 800F0528 000FC083 */  sra        $t8, $t7, 2
    /* FF4DC 800F052C 03194021 */  addu       $t0, $t8, $t9
    /* FF4E0 800F0530 1000001D */  b          .L800F05A8_FF558
    /* FF4E4 800F0534 A428758A */   sh        $t0, %lo(D_8015758A)($at)
  .L800F0538_FF4E8:
    /* FF4E8 800F0538 846D000E */  lh         $t5, 0xE($v1)
    /* FF4EC 800F053C 2404005C */  addiu      $a0, $zero, 0x5C
    /* FF4F0 800F0540 3C028005 */  lui        $v0, %hi(vehicleInstances)
    /* FF4F4 800F0544 01A40019 */  multu      $t5, $a0
    /* FF4F8 800F0548 2442DCD0 */  addiu      $v0, $v0, %lo(vehicleInstances)
    /* FF4FC 800F054C 3C018015 */  lui        $at, %hi(D_80157586)
    /* FF500 800F0550 3C058015 */  lui        $a1, %hi(D_80157588)
    /* FF504 800F0554 24A57588 */  addiu      $a1, $a1, %lo(D_80157588)
    /* FF508 800F0558 00004812 */  mflo       $t1
    /* FF50C 800F055C 00495821 */  addu       $t3, $v0, $t1
    /* FF510 800F0560 856C0000 */  lh         $t4, 0x0($t3)
    /* FF514 800F0564 000C5083 */  sra        $t2, $t4, 2
    /* FF518 800F0568 A42A7586 */  sh         $t2, %lo(D_80157586)($at)
    /* FF51C 800F056C 846E000E */  lh         $t6, 0xE($v1)
    /* FF520 800F0570 3C018015 */  lui        $at, %hi(D_8015758A)
    /* FF524 800F0574 01C40019 */  multu      $t6, $a0
    /* FF528 800F0578 00007812 */  mflo       $t7
    /* FF52C 800F057C 004FC021 */  addu       $t8, $v0, $t7
    /* FF530 800F0580 87190002 */  lh         $t9, 0x2($t8)
    /* FF534 800F0584 00194083 */  sra        $t0, $t9, 2
    /* FF538 800F0588 A4A80000 */  sh         $t0, 0x0($a1)
    /* FF53C 800F058C 846D000E */  lh         $t5, 0xE($v1)
    /* FF540 800F0590 01A40019 */  multu      $t5, $a0
    /* FF544 800F0594 00004812 */  mflo       $t1
    /* FF548 800F0598 00495821 */  addu       $t3, $v0, $t1
    /* FF54C 800F059C 856C0004 */  lh         $t4, 0x4($t3)
    /* FF550 800F05A0 000C5083 */  sra        $t2, $t4, 2
    /* FF554 800F05A4 A42A758A */  sh         $t2, %lo(D_8015758A)($at)
  .L800F05A8_FF558:
    /* FF558 800F05A8 906E0010 */  lbu        $t6, 0x10($v1)
    /* FF55C 800F05AC 3C0F8015 */  lui        $t7, %hi(D_80157586)
    /* FF560 800F05B0 55C00013 */  bnel       $t6, $zero, .L800F0600_FF5B0
    /* FF564 800F05B4 846E0000 */   lh        $t6, 0x0($v1)
    /* FF568 800F05B8 85EF7586 */  lh         $t7, %lo(D_80157586)($t7)
    /* FF56C 800F05BC 84780000 */  lh         $t8, 0x0($v1)
    /* FF570 800F05C0 3C018015 */  lui        $at, %hi(D_80157580)
    /* FF574 800F05C4 3C0B8015 */  lui        $t3, %hi(D_8015758A)
    /* FF578 800F05C8 01F8C821 */  addu       $t9, $t7, $t8
    /* FF57C 800F05CC A4397580 */  sh         $t9, %lo(D_80157580)($at)
    /* FF580 800F05D0 846D0002 */  lh         $t5, 0x2($v1)
    /* FF584 800F05D4 84A80000 */  lh         $t0, 0x0($a1)
    /* FF588 800F05D8 3C018015 */  lui        $at, %hi(D_80157582)
    /* FF58C 800F05DC 856B758A */  lh         $t3, %lo(D_8015758A)($t3)
    /* FF590 800F05E0 010D4821 */  addu       $t1, $t0, $t5
    /* FF594 800F05E4 A4297582 */  sh         $t1, %lo(D_80157582)($at)
    /* FF598 800F05E8 846C0004 */  lh         $t4, 0x4($v1)
    /* FF59C 800F05EC 3C018015 */  lui        $at, %hi(D_80157584)
    /* FF5A0 800F05F0 016C5021 */  addu       $t2, $t3, $t4
    /* FF5A4 800F05F4 1000000A */  b          .L800F0620_FF5D0
    /* FF5A8 800F05F8 A42A7584 */   sh        $t2, %lo(D_80157584)($at)
    /* FF5AC 800F05FC 846E0000 */  lh         $t6, 0x0($v1)
  .L800F0600_FF5B0:
    /* FF5B0 800F0600 3C018015 */  lui        $at, %hi(D_80157580)
    /* FF5B4 800F0604 A42E7580 */  sh         $t6, %lo(D_80157580)($at)
    /* FF5B8 800F0608 846F0002 */  lh         $t7, 0x2($v1)
    /* FF5BC 800F060C 3C018015 */  lui        $at, %hi(D_80157582)
    /* FF5C0 800F0610 A42F7582 */  sh         $t7, %lo(D_80157582)($at)
    /* FF5C4 800F0614 84780004 */  lh         $t8, 0x4($v1)
    /* FF5C8 800F0618 3C018015 */  lui        $at, %hi(D_80157584)
    /* FF5CC 800F061C A4387584 */  sh         $t8, %lo(D_80157584)($at)
  .L800F0620_FF5D0:
    /* FF5D0 800F0620 24190003 */  addiu      $t9, $zero, 0x3
    /* FF5D4 800F0624 3C018015 */  lui        $at, %hi(D_80157590)
    /* FF5D8 800F0628 A4397590 */  sh         $t9, %lo(D_80157590)($at)
    /* FF5DC 800F062C 3C028015 */  lui        $v0, %hi(D_80157FB0)
    /* FF5E0 800F0630 3C018005 */  lui        $at, %hi(D_8004DC60)
    /* FF5E4 800F0634 24080025 */  addiu      $t0, $zero, 0x25
    /* FF5E8 800F0638 24427FB0 */  addiu      $v0, $v0, %lo(D_80157FB0)
    /* FF5EC 800F063C A428DC60 */  sh         $t0, %lo(D_8004DC60)($at)
    /* FF5F0 800F0640 A4400000 */  sh         $zero, 0x0($v0)
    /* FF5F4 800F0644 844D0000 */  lh         $t5, 0x0($v0)
    /* FF5F8 800F0648 3C038015 */  lui        $v1, %hi(D_80157FAE)
    /* FF5FC 800F064C 24637FAE */  addiu      $v1, $v1, %lo(D_80157FAE)
    /* FF600 800F0650 8FBF0014 */  lw         $ra, 0x14($sp)
    /* FF604 800F0654 A46D0000 */  sh         $t5, 0x0($v1)
    /* FF608 800F0658 84690000 */  lh         $t1, 0x0($v1)
    /* FF60C 800F065C 3C018015 */  lui        $at, %hi(D_80157FAC)
    /* FF610 800F0660 27BD0018 */  addiu      $sp, $sp, 0x18
    /* FF614 800F0664 03E00008 */  jr         $ra
    /* FF618 800F0668 A4297FAC */   sh        $t1, %lo(D_80157FAC)($at)
endlabel func_800F0340_FF2F0
