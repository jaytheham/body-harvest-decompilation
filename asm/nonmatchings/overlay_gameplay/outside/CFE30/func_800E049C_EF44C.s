nonmatching func_800E049C_EF44C, 0x118

glabel func_800E049C_EF44C
    /* EF44C 800E049C 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* EF450 800E04A0 AFBF003C */  sw         $ra, 0x3C($sp)
    /* EF454 800E04A4 AFA40048 */  sw         $a0, 0x48($sp)
    /* EF458 800E04A8 AFA5004C */  sw         $a1, 0x4C($sp)
    /* EF45C 800E04AC 0C000E38 */  jal        func_800038E0_44E0
    /* EF460 800E04B0 AFA60050 */   sw        $a2, 0x50($sp)
    /* EF464 800E04B4 0C000E38 */  jal        func_800038E0_44E0
    /* EF468 800E04B8 A7A20040 */   sh        $v0, 0x40($sp)
    /* EF46C 800E04BC 0C000E38 */  jal        func_800038E0_44E0
    /* EF470 800E04C0 A7A20042 */   sh        $v0, 0x42($sp)
    /* EF474 800E04C4 2403000A */  addiu      $v1, $zero, 0xA
    /* EF478 800E04C8 97AE0040 */  lhu        $t6, 0x40($sp)
    /* EF47C 800E04CC 97A80042 */  lhu        $t0, 0x42($sp)
    /* EF480 800E04D0 2419007F */  addiu      $t9, $zero, 0x7F
    /* EF484 800E04D4 01C3001A */  div        $zero, $t6, $v1
    /* EF488 800E04D8 00003810 */  mfhi       $a3
    /* EF48C 800E04DC 24E7FFEC */  addiu      $a3, $a3, -0x14
    /* EF490 800E04E0 00077E00 */  sll        $t7, $a3, 24
    /* EF494 800E04E4 0103001A */  div        $zero, $t0, $v1
    /* EF498 800E04E8 00004810 */  mfhi       $t1
    /* EF49C 800E04EC 000FC603 */  sra        $t8, $t7, 24
    /* EF4A0 800E04F0 03003825 */  or         $a3, $t8, $zero
    /* EF4A4 800E04F4 252AFFEC */  addiu      $t2, $t1, -0x14
    /* EF4A8 800E04F8 AFB90010 */  sw         $t9, 0x10($sp)
    /* EF4AC 800E04FC 241900BE */  addiu      $t9, $zero, 0xBE
    /* EF4B0 800E0500 240900C8 */  addiu      $t1, $zero, 0xC8
    /* EF4B4 800E0504 241800B4 */  addiu      $t8, $zero, 0xB4
    /* EF4B8 800E0508 240F00A0 */  addiu      $t7, $zero, 0xA0
    /* EF4BC 800E050C 240B0028 */  addiu      $t3, $zero, 0x28
    /* EF4C0 800E0510 240C0006 */  addiu      $t4, $zero, 0x6
    /* EF4C4 800E0514 AFAC001C */  sw         $t4, 0x1C($sp)
    /* EF4C8 800E0518 AFAB0018 */  sw         $t3, 0x18($sp)
    /* EF4CC 800E051C AFAF0024 */  sw         $t7, 0x24($sp)
    /* EF4D0 800E0520 AFB80028 */  sw         $t8, 0x28($sp)
    /* EF4D4 800E0524 AFA90034 */  sw         $t1, 0x34($sp)
    /* EF4D8 800E0528 AFB9002C */  sw         $t9, 0x2C($sp)
    /* EF4DC 800E052C AFAA0014 */  sw         $t2, 0x14($sp)
    /* EF4E0 800E0530 87A4004A */  lh         $a0, 0x4A($sp)
    /* EF4E4 800E0534 87A5004E */  lh         $a1, 0x4E($sp)
    /* EF4E8 800E0538 87A60052 */  lh         $a2, 0x52($sp)
    /* EF4EC 800E053C 14600002 */  bnez       $v1, .L800E0548_EF4F8
    /* EF4F0 800E0540 00000000 */   nop
    /* EF4F4 800E0544 0007000D */  break      7
  .L800E0548_EF4F8:
    /* EF4F8 800E0548 2401FFFF */  addiu      $at, $zero, -0x1
    /* EF4FC 800E054C 14610004 */  bne        $v1, $at, .L800E0560_EF510
    /* EF500 800E0550 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EF504 800E0554 15C10002 */  bne        $t6, $at, .L800E0560_EF510
    /* EF508 800E0558 00000000 */   nop
    /* EF50C 800E055C 0006000D */  break      6
  .L800E0560_EF510:
    /* EF510 800E0560 14600002 */  bnez       $v1, .L800E056C_EF51C
    /* EF514 800E0564 00000000 */   nop
    /* EF518 800E0568 0007000D */  break      7
  .L800E056C_EF51C:
    /* EF51C 800E056C 2401FFFF */  addiu      $at, $zero, -0x1
    /* EF520 800E0570 14610004 */  bne        $v1, $at, .L800E0584_EF534
    /* EF524 800E0574 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* EF528 800E0578 15010002 */  bne        $t0, $at, .L800E0584_EF534
    /* EF52C 800E057C 00000000 */   nop
    /* EF530 800E0580 0006000D */  break      6
  .L800E0584_EF534:
    /* EF534 800E0584 24010003 */  addiu      $at, $zero, 0x3
    /* EF538 800E0588 0041001A */  div        $zero, $v0, $at
    /* EF53C 800E058C 00006810 */  mfhi       $t5
    /* EF540 800E0590 25AE0003 */  addiu      $t6, $t5, 0x3
    /* EF544 800E0594 240800FF */  addiu      $t0, $zero, 0xFF
    /* EF548 800E0598 AFA80030 */  sw         $t0, 0x30($sp)
    /* EF54C 800E059C 0C03297B */  jal        func_800CA5EC_D959C
    /* EF550 800E05A0 AFAE0020 */   sw        $t6, 0x20($sp)
    /* EF554 800E05A4 8FBF003C */  lw         $ra, 0x3C($sp)
    /* EF558 800E05A8 27BD0048 */  addiu      $sp, $sp, 0x48
    /* EF55C 800E05AC 03E00008 */  jr         $ra
    /* EF560 800E05B0 00000000 */   nop
endlabel func_800E049C_EF44C
