nonmatching func_800A3490_B2440, 0x840

glabel func_800A3490_B2440
    /* B2440 800A3490 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* B2444 800A3494 AFBF0014 */  sw         $ra, 0x14($sp)
    /* B2448 800A3498 0C03EBEE */  jal        func_800FAFB8_109F68
    /* B244C 800A349C AFA40070 */   sw        $a0, 0x70($sp)
    /* B2450 800A34A0 3C0E8014 */  lui        $t6, %hi(D_8013D5B8)
    /* B2454 800A34A4 85CED5B8 */  lh         $t6, %lo(D_8013D5B8)($t6)
    /* B2458 800A34A8 2407002D */  addiu      $a3, $zero, 0x2D
    /* B245C 800A34AC 240C002E */  addiu      $t4, $zero, 0x2E
    /* B2460 800A34B0 240D0091 */  addiu      $t5, $zero, 0x91
    /* B2464 800A34B4 3C018015 */  lui        $at, %hi(D_8014F67E)
    /* B2468 800A34B8 AFA2006C */  sw         $v0, 0x6C($sp)
    /* B246C 800A34BC A020F67E */  sb         $zero, %lo(D_8014F67E)($at)
    /* B2470 800A34C0 A3AD0057 */  sb         $t5, 0x57($sp)
    /* B2474 800A34C4 A3AC0058 */  sb         $t4, 0x58($sp)
    /* B2478 800A34C8 A3A70059 */  sb         $a3, 0x59($sp)
    /* B247C 800A34CC 0C028AA2 */  jal        func_800A2A88_B1A38
    /* B2480 800A34D0 A3AE0056 */   sb        $t6, 0x56($sp)
    /* B2484 800A34D4 8FA60070 */  lw         $a2, 0x70($sp)
    /* B2488 800A34D8 93A70059 */  lbu        $a3, 0x59($sp)
    /* B248C 800A34DC 93AC0058 */  lbu        $t4, 0x58($sp)
    /* B2490 800A34E0 104001F7 */  beqz       $v0, .L800A3CC0_B2C70
    /* B2494 800A34E4 93AD0057 */   lbu       $t5, 0x57($sp)
    /* B2498 800A34E8 3C0F8016 */  lui        $t7, %hi(D_80158FE8)
    /* B249C 800A34EC 8DEF8FE8 */  lw         $t7, %lo(D_80158FE8)($t7)
    /* B24A0 800A34F0 51E0000E */  beql       $t7, $zero, .L800A352C_B24DC
    /* B24A4 800A34F4 00001025 */   or        $v0, $zero, $zero
    /* B24A8 800A34F8 AFA60070 */  sw         $a2, 0x70($sp)
    /* B24AC 800A34FC A3A70059 */  sb         $a3, 0x59($sp)
    /* B24B0 800A3500 A3AC0058 */  sb         $t4, 0x58($sp)
    /* B24B4 800A3504 0C028633 */  jal        func_800A18CC_B087C
    /* B24B8 800A3508 A3AD0057 */   sb        $t5, 0x57($sp)
    /* B24BC 800A350C 8FA60070 */  lw         $a2, 0x70($sp)
    /* B24C0 800A3510 93A70059 */  lbu        $a3, 0x59($sp)
    /* B24C4 800A3514 93AC0058 */  lbu        $t4, 0x58($sp)
    /* B24C8 800A3518 10400003 */  beqz       $v0, .L800A3528_B24D8
    /* B24CC 800A351C 93AD0057 */   lbu       $t5, 0x57($sp)
    /* B24D0 800A3520 10000002 */  b          .L800A352C_B24DC
    /* B24D4 800A3524 24020001 */   addiu     $v0, $zero, 0x1
  .L800A3528_B24D8:
    /* B24D8 800A3528 00001025 */  or         $v0, $zero, $zero
  .L800A352C_B24DC:
    /* B24DC 800A352C 14400007 */  bnez       $v0, .L800A354C_B24FC
    /* B24E0 800A3530 3C028016 */   lui       $v0, %hi(D_801591B4)
    /* B24E4 800A3534 8C4291B4 */  lw         $v0, %lo(D_801591B4)($v0)
    /* B24E8 800A3538 24010007 */  addiu      $at, $zero, 0x7
    /* B24EC 800A353C 10410003 */  beq        $v0, $at, .L800A354C_B24FC
    /* B24F0 800A3540 24010008 */   addiu     $at, $zero, 0x8
    /* B24F4 800A3544 14410004 */  bne        $v0, $at, .L800A3558_B2508
    /* B24F8 800A3548 00000000 */   nop
  .L800A354C_B24FC:
    /* B24FC 800A354C 240700FF */  addiu      $a3, $zero, 0xFF
    /* B2500 800A3550 00006025 */  or         $t4, $zero, $zero
    /* B2504 800A3554 00006825 */  or         $t5, $zero, $zero
  .L800A3558_B2508:
    /* B2508 800A3558 3C028014 */  lui        $v0, %hi(D_8013D770)
    /* B250C 800A355C 8C42D770 */  lw         $v0, %lo(D_8013D770)($v0)
    /* B2510 800A3560 3C018014 */  lui        $at, %hi(D_8013D770)
    /* B2514 800A3564 04410002 */  bgez       $v0, .L800A3570_B2520
    /* B2518 800A3568 00000000 */   nop
    /* B251C 800A356C 00001025 */  or         $v0, $zero, $zero
  .L800A3570_B2520:
    /* B2520 800A3570 AC22D770 */  sw         $v0, %lo(D_8013D770)($at)
    /* B2524 800A3574 2841001F */  slti       $at, $v0, 0x1F
    /* B2528 800A3578 14200003 */  bnez       $at, .L800A3588_B2538
    /* B252C 800A357C 2402001E */   addiu     $v0, $zero, 0x1E
    /* B2530 800A3580 3C018014 */  lui        $at, %hi(D_8013D770)
    /* B2534 800A3584 AC22D770 */  sw         $v0, %lo(D_8013D770)($at)
  .L800A3588_B2538:
    /* B2538 800A3588 3C028014 */  lui        $v0, %hi(D_8013D76C)
    /* B253C 800A358C 8C42D76C */  lw         $v0, %lo(D_8013D76C)($v0)
    /* B2540 800A3590 3C018014 */  lui        $at, %hi(D_8013D76C)
    /* B2544 800A3594 18400002 */  blez       $v0, .L800A35A0_B2550
    /* B2548 800A3598 2442FFFF */   addiu     $v0, $v0, -0x1
    /* B254C 800A359C AC22D76C */  sw         $v0, %lo(D_8013D76C)($at)
  .L800A35A0_B2550:
    /* B2550 800A35A0 84D80000 */  lh         $t8, 0x0($a2)
    /* B2554 800A35A4 3C018014 */  lui        $at, %hi(D_8013D5D0)
    /* B2558 800A35A8 3C028005 */  lui        $v0, %hi(D_80052B2C)
    /* B255C 800A35AC AC38D5D0 */  sw         $t8, %lo(D_8013D5D0)($at)
    /* B2560 800A35B0 84D90002 */  lh         $t9, 0x2($a2)
    /* B2564 800A35B4 3C018014 */  lui        $at, %hi(D_8013D5D4)
    /* B2568 800A35B8 8C422B2C */  lw         $v0, %lo(D_80052B2C)($v0)
    /* B256C 800A35BC AC39D5D4 */  sw         $t9, %lo(D_8013D5D4)($at)
    /* B2570 800A35C0 84CE0004 */  lh         $t6, 0x4($a2)
    /* B2574 800A35C4 3C018014 */  lui        $at, %hi(D_8013D5D8)
    /* B2578 800A35C8 AC2ED5D8 */  sw         $t6, %lo(D_8013D5D8)($at)
    /* B257C 800A35CC 84CF0000 */  lh         $t7, 0x0($a2)
    /* B2580 800A35D0 C4440000 */  lwc1       $f4, 0x0($v0)
    /* B2584 800A35D4 C4520008 */  lwc1       $f18, 0x8($v0)
    /* B2588 800A35D8 448F3000 */  mtc1       $t7, $f6
    /* B258C 800A35DC 84CF0004 */  lh         $t7, 0x4($a2)
    /* B2590 800A35E0 46803220 */  cvt.s.w    $f8, $f6
    /* B2594 800A35E4 448F3000 */  mtc1       $t7, $f6
    /* B2598 800A35E8 84CF0002 */  lh         $t7, 0x2($a2)
    /* B259C 800A35EC 46082281 */  sub.s      $f10, $f4, $f8
    /* B25A0 800A35F0 46803120 */  cvt.s.w    $f4, $f6
    /* B25A4 800A35F4 448F3000 */  mtc1       $t7, $f6
    /* B25A8 800A35F8 4600540D */  trunc.w.s  $f16, $f10
    /* B25AC 800A35FC 46049201 */  sub.s      $f8, $f18, $f4
    /* B25B0 800A3600 44038000 */  mfc1       $v1, $f16
    /* B25B4 800A3604 C4500004 */  lwc1       $f16, 0x4($v0)
    /* B25B8 800A3608 468034A0 */  cvt.s.w    $f18, $f6
    /* B25BC 800A360C A3AD0057 */  sb         $t5, 0x57($sp)
    /* B25C0 800A3610 A3AC0058 */  sb         $t4, 0x58($sp)
    /* B25C4 800A3614 A3A70059 */  sb         $a3, 0x59($sp)
    /* B25C8 800A3618 A7A30062 */  sh         $v1, 0x62($sp)
    /* B25CC 800A361C 4600428D */  trunc.w.s  $f10, $f8
    /* B25D0 800A3620 46128101 */  sub.s      $f4, $f16, $f18
    /* B25D4 800A3624 44055000 */  mfc1       $a1, $f10
    /* B25D8 800A3628 4600220D */  trunc.w.s  $f8, $f4
    /* B25DC 800A362C A7A50060 */  sh         $a1, 0x60($sp)
    /* B25E0 800A3630 44044000 */  mfc1       $a0, $f8
    /* B25E4 800A3634 00000000 */  nop
    /* B25E8 800A3638 0004CC00 */  sll        $t9, $a0, 16
    /* B25EC 800A363C 0C0011FF */  jal        func_800047FC_53FC
    /* B25F0 800A3640 00192403 */   sra       $a0, $t9, 16
    /* B25F4 800A3644 87A30062 */  lh         $v1, 0x62($sp)
    /* B25F8 800A3648 87A50060 */  lh         $a1, 0x60($sp)
    /* B25FC 800A364C 00630019 */  multu      $v1, $v1
    /* B2600 800A3650 00007812 */  mflo       $t7
    /* B2604 800A3654 004FC021 */  addu       $t8, $v0, $t7
    /* B2608 800A3658 00000000 */  nop
    /* B260C 800A365C 00A50019 */  multu      $a1, $a1
    /* B2610 800A3660 0000C812 */  mflo       $t9
    /* B2614 800A3664 03197021 */  addu       $t6, $t8, $t9
    /* B2618 800A3668 448E5000 */  mtc1       $t6, $f10
    /* B261C 800A366C 0C007650 */  jal        sqrtf
    /* B2620 800A3670 46805320 */   cvt.s.w   $f12, $f10
    /* B2624 800A3674 4600018D */  trunc.w.s  $f6, $f0
    /* B2628 800A3678 3C048014 */  lui        $a0, %hi(D_8013D774)
    /* B262C 800A367C 8C84D774 */  lw         $a0, %lo(D_8013D774)($a0)
    /* B2630 800A3680 3C0B8014 */  lui        $t3, %hi(D_8013D5B4)
    /* B2634 800A3684 44183000 */  mfc1       $t8, $f6
    /* B2638 800A3688 256BD5B4 */  addiu      $t3, $t3, %lo(D_8013D5B4)
    /* B263C 800A368C 85630000 */  lh         $v1, 0x0($t3)
    /* B2640 800A3690 0304C823 */  subu       $t9, $t8, $a0
    /* B2644 800A3694 24060001 */  addiu      $a2, $zero, 0x1
    /* B2648 800A3698 93A70059 */  lbu        $a3, 0x59($sp)
    /* B264C 800A369C 93AC0058 */  lbu        $t4, 0x58($sp)
    /* B2650 800A36A0 93AD0057 */  lbu        $t5, 0x57($sp)
    /* B2654 800A36A4 07210003 */  bgez       $t9, .L800A36B4_B2664
    /* B2658 800A36A8 00197043 */   sra       $t6, $t9, 1
    /* B265C 800A36AC 27210001 */  addiu      $at, $t9, 0x1
    /* B2660 800A36B0 00017043 */  sra        $t6, $at, 1
  .L800A36B4_B2664:
    /* B2664 800A36B4 3C018014 */  lui        $at, %hi(D_8013D774)
    /* B2668 800A36B8 01C4F821 */  addu       $ra, $t6, $a0
    /* B266C 800A36BC 24080004 */  addiu      $t0, $zero, 0x4
    /* B2670 800A36C0 1066001B */  beq        $v1, $a2, .L800A3730_B26E0
    /* B2674 800A36C4 AC3FD774 */   sw        $ra, %lo(D_8013D774)($at)
    /* B2678 800A36C8 24010002 */  addiu      $at, $zero, 0x2
    /* B267C 800A36CC 106100DA */  beq        $v1, $at, .L800A3A38_B29E8
    /* B2680 800A36D0 3C098006 */   lui       $t1, %hi(D_8005BB2C)
    /* B2684 800A36D4 24010003 */  addiu      $at, $zero, 0x3
    /* B2688 800A36D8 10610003 */  beq        $v1, $at, .L800A36E8_B2698
    /* B268C 800A36DC 3C098006 */   lui       $t1, %hi(D_8005BB2C)
    /* B2690 800A36E0 100000E7 */  b          .L800A3A80_B2A30
    /* B2694 800A36E4 240A00FF */   addiu     $t2, $zero, 0xFF
  .L800A36E8_B2698:
    /* B2698 800A36E8 2529BB2C */  addiu      $t1, $t1, %lo(D_8005BB2C)
    /* B269C 800A36EC 8D230000 */  lw         $v1, 0x0($t1)
    /* B26A0 800A36F0 3C18FA00 */  lui        $t8, (0xFA00FFFF >> 16)
    /* B26A4 800A36F4 3718FFFF */  ori        $t8, $t8, (0xFA00FFFF & 0xFFFF)
    /* B26A8 800A36F8 246F0008 */  addiu      $t7, $v1, 0x8
    /* B26AC 800A36FC AD2F0000 */  sw         $t7, 0x0($t1)
    /* B26B0 800A3700 318F00FF */  andi       $t7, $t4, 0xFF
    /* B26B4 800A3704 AC780000 */  sw         $t8, 0x0($v1)
    /* B26B8 800A3708 000FC400 */  sll        $t8, $t7, 16
    /* B26BC 800A370C 00077600 */  sll        $t6, $a3, 24
    /* B26C0 800A3710 01D8C825 */  or         $t9, $t6, $t8
    /* B26C4 800A3714 31AF00FF */  andi       $t7, $t5, 0xFF
    /* B26C8 800A3718 000F7200 */  sll        $t6, $t7, 8
    /* B26CC 800A371C 032EC025 */  or         $t8, $t9, $t6
    /* B26D0 800A3720 370F00FF */  ori        $t7, $t8, 0xFF
    /* B26D4 800A3724 240A00FF */  addiu      $t2, $zero, 0xFF
    /* B26D8 800A3728 100000D5 */  b          .L800A3A80_B2A30
    /* B26DC 800A372C AC6F0004 */   sw        $t7, 0x4($v1)
  .L800A3730_B26E0:
    /* B26E0 800A3730 93A20056 */  lbu        $v0, 0x56($sp)
    /* B26E4 800A3734 2841008C */  slti       $at, $v0, 0x8C
    /* B26E8 800A3738 10200019 */  beqz       $at, .L800A37A0_B2750
    /* B26EC 800A373C 240A00FF */   addiu     $t2, $zero, 0xFF
    /* B26F0 800A3740 004A0019 */  multu      $v0, $t2
    /* B26F4 800A3744 2401008C */  addiu      $at, $zero, 0x8C
    /* B26F8 800A3748 3C098006 */  lui        $t1, %hi(D_8005BB2C)
    /* B26FC 800A374C 2529BB2C */  addiu      $t1, $t1, %lo(D_8005BB2C)
    /* B2700 800A3750 8D230000 */  lw         $v1, 0x0($t1)
    /* B2704 800A3754 3C0EFA00 */  lui        $t6, (0xFA00FFFF >> 16)
    /* B2708 800A3758 35CEFFFF */  ori        $t6, $t6, (0xFA00FFFF & 0xFFFF)
    /* B270C 800A375C 24790008 */  addiu      $t9, $v1, 0x8
    /* B2710 800A3760 AD390000 */  sw         $t9, 0x0($t1)
    /* B2714 800A3764 AC6E0000 */  sw         $t6, 0x0($v1)
    /* B2718 800A3768 00002012 */  mflo       $a0
    /* B271C 800A376C 00000000 */  nop
    /* B2720 800A3770 00000000 */  nop
    /* B2724 800A3774 0081001A */  div        $zero, $a0, $at
    /* B2728 800A3778 0000C012 */  mflo       $t8
    /* B272C 800A377C 330400FF */  andi       $a0, $t8, 0xFF
    /* B2730 800A3780 0004CE00 */  sll        $t9, $a0, 24
    /* B2734 800A3784 00047400 */  sll        $t6, $a0, 16
    /* B2738 800A3788 032EC025 */  or         $t8, $t9, $t6
    /* B273C 800A378C 00047A00 */  sll        $t7, $a0, 8
    /* B2740 800A3790 030FC825 */  or         $t9, $t8, $t7
    /* B2744 800A3794 03247025 */  or         $t6, $t9, $a0
    /* B2748 800A3798 100000B9 */  b          .L800A3A80_B2A30
    /* B274C 800A379C AC6E0004 */   sw        $t6, 0x4($v1)
  .L800A37A0_B2750:
    /* B2750 800A37A0 240A00FF */  addiu      $t2, $zero, 0xFF
    /* B2754 800A37A4 0142C023 */  subu       $t8, $t2, $v0
    /* B2758 800A37A8 44988000 */  mtc1       $t8, $f16
    /* B275C 800A37AC 3C0142E6 */  lui        $at, (0x42E60000 >> 16)
    /* B2760 800A37B0 44812000 */  mtc1       $at, $f4
    /* B2764 800A37B4 468084A0 */  cvt.s.w    $f18, $f16
    /* B2768 800A37B8 01477823 */  subu       $t7, $t2, $a3
    /* B276C 800A37BC 448F8000 */  mtc1       $t7, $f16
    /* B2770 800A37C0 44874000 */  mtc1       $a3, $f8
    /* B2774 800A37C4 3C098006 */  lui        $t1, %hi(D_8005BB2C)
    /* B2778 800A37C8 2529BB2C */  addiu      $t1, $t1, %lo(D_8005BB2C)
    /* B277C 800A37CC 46049003 */  div.s      $f0, $f18, $f4
    /* B2780 800A37D0 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* B2784 800A37D4 014CC023 */  subu       $t8, $t2, $t4
    /* B2788 800A37D8 468084A0 */  cvt.s.w    $f18, $f16
    /* B278C 800A37DC 04E10004 */  bgez       $a3, .L800A37F0_B27A0
    /* B2790 800A37E0 468042A0 */   cvt.s.w   $f10, $f8
    /* B2794 800A37E4 44813000 */  mtc1       $at, $f6
    /* B2798 800A37E8 00000000 */  nop
    /* B279C 800A37EC 46065280 */  add.s      $f10, $f10, $f6
  .L800A37F0_B27A0:
    /* B27A0 800A37F0 46009102 */  mul.s      $f4, $f18, $f0
    /* B27A4 800A37F4 24070001 */  addiu      $a3, $zero, 0x1
    /* B27A8 800A37F8 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* B27AC 800A37FC 46045200 */  add.s      $f8, $f10, $f4
    /* B27B0 800A3800 4459F800 */  cfc1       $t9, $31
    /* B27B4 800A3804 44C7F800 */  ctc1       $a3, $31
    /* B27B8 800A3808 00000000 */  nop
    /* B27BC 800A380C 460041A4 */  cvt.w.s    $f6, $f8
    /* B27C0 800A3810 4447F800 */  cfc1       $a3, $31
    /* B27C4 800A3814 00000000 */  nop
    /* B27C8 800A3818 30E70078 */  andi       $a3, $a3, 0x78
    /* B27CC 800A381C 50E00013 */  beql       $a3, $zero, .L800A386C_B281C
    /* B27D0 800A3820 44073000 */   mfc1      $a3, $f6
    /* B27D4 800A3824 44813000 */  mtc1       $at, $f6
    /* B27D8 800A3828 24070001 */  addiu      $a3, $zero, 0x1
    /* B27DC 800A382C 46064181 */  sub.s      $f6, $f8, $f6
    /* B27E0 800A3830 44C7F800 */  ctc1       $a3, $31
    /* B27E4 800A3834 00000000 */  nop
    /* B27E8 800A3838 460031A4 */  cvt.w.s    $f6, $f6
    /* B27EC 800A383C 4447F800 */  cfc1       $a3, $31
    /* B27F0 800A3840 00000000 */  nop
    /* B27F4 800A3844 30E70078 */  andi       $a3, $a3, 0x78
    /* B27F8 800A3848 14E00005 */  bnez       $a3, .L800A3860_B2810
    /* B27FC 800A384C 00000000 */   nop
    /* B2800 800A3850 44073000 */  mfc1       $a3, $f6
    /* B2804 800A3854 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* B2808 800A3858 10000007 */  b          .L800A3878_B2828
    /* B280C 800A385C 00E13825 */   or        $a3, $a3, $at
  .L800A3860_B2810:
    /* B2810 800A3860 10000005 */  b          .L800A3878_B2828
    /* B2814 800A3864 2407FFFF */   addiu     $a3, $zero, -0x1
    /* B2818 800A3868 44073000 */  mfc1       $a3, $f6
  .L800A386C_B281C:
    /* B281C 800A386C 00000000 */  nop
    /* B2820 800A3870 04E0FFFB */  bltz       $a3, .L800A3860_B2810
    /* B2824 800A3874 00000000 */   nop
  .L800A3878_B2828:
    /* B2828 800A3878 44D9F800 */  ctc1       $t9, $31
    /* B282C 800A387C 448C8000 */  mtc1       $t4, $f16
    /* B2830 800A3880 30EE00FF */  andi       $t6, $a3, 0xFF
    /* B2834 800A3884 01C03825 */  or         $a3, $t6, $zero
    /* B2838 800A3888 05810005 */  bgez       $t4, .L800A38A0_B2850
    /* B283C 800A388C 468084A0 */   cvt.s.w   $f18, $f16
    /* B2840 800A3890 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* B2844 800A3894 44815000 */  mtc1       $at, $f10
    /* B2848 800A3898 00000000 */  nop
    /* B284C 800A389C 460A9480 */  add.s      $f18, $f18, $f10
  .L800A38A0_B2850:
    /* B2850 800A38A0 44982000 */  mtc1       $t8, $f4
    /* B2854 800A38A4 240C0001 */  addiu      $t4, $zero, 0x1
    /* B2858 800A38A8 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* B285C 800A38AC 46802220 */  cvt.s.w    $f8, $f4
    /* B2860 800A38B0 014D7023 */  subu       $t6, $t2, $t5
    /* B2864 800A38B4 46004182 */  mul.s      $f6, $f8, $f0
    /* B2868 800A38B8 46069400 */  add.s      $f16, $f18, $f6
    /* B286C 800A38BC 444FF800 */  cfc1       $t7, $31
    /* B2870 800A38C0 44CCF800 */  ctc1       $t4, $31
    /* B2874 800A38C4 00000000 */  nop
    /* B2878 800A38C8 460082A4 */  cvt.w.s    $f10, $f16
    /* B287C 800A38CC 444CF800 */  cfc1       $t4, $31
    /* B2880 800A38D0 00000000 */  nop
    /* B2884 800A38D4 318C0078 */  andi       $t4, $t4, 0x78
    /* B2888 800A38D8 51800013 */  beql       $t4, $zero, .L800A3928_B28D8
    /* B288C 800A38DC 440C5000 */   mfc1      $t4, $f10
    /* B2890 800A38E0 44815000 */  mtc1       $at, $f10
    /* B2894 800A38E4 240C0001 */  addiu      $t4, $zero, 0x1
    /* B2898 800A38E8 460A8281 */  sub.s      $f10, $f16, $f10
    /* B289C 800A38EC 44CCF800 */  ctc1       $t4, $31
    /* B28A0 800A38F0 00000000 */  nop
    /* B28A4 800A38F4 460052A4 */  cvt.w.s    $f10, $f10
    /* B28A8 800A38F8 444CF800 */  cfc1       $t4, $31
    /* B28AC 800A38FC 00000000 */  nop
    /* B28B0 800A3900 318C0078 */  andi       $t4, $t4, 0x78
    /* B28B4 800A3904 15800005 */  bnez       $t4, .L800A391C_B28CC
    /* B28B8 800A3908 00000000 */   nop
    /* B28BC 800A390C 440C5000 */  mfc1       $t4, $f10
    /* B28C0 800A3910 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* B28C4 800A3914 10000007 */  b          .L800A3934_B28E4
    /* B28C8 800A3918 01816025 */   or        $t4, $t4, $at
  .L800A391C_B28CC:
    /* B28CC 800A391C 10000005 */  b          .L800A3934_B28E4
    /* B28D0 800A3920 240CFFFF */   addiu     $t4, $zero, -0x1
    /* B28D4 800A3924 440C5000 */  mfc1       $t4, $f10
  .L800A3928_B28D8:
    /* B28D8 800A3928 00000000 */  nop
    /* B28DC 800A392C 0580FFFB */  bltz       $t4, .L800A391C_B28CC
    /* B28E0 800A3930 00000000 */   nop
  .L800A3934_B28E4:
    /* B28E4 800A3934 44CFF800 */  ctc1       $t7, $31
    /* B28E8 800A3938 448D2000 */  mtc1       $t5, $f4
    /* B28EC 800A393C 319900FF */  andi       $t9, $t4, 0xFF
    /* B28F0 800A3940 03206025 */  or         $t4, $t9, $zero
    /* B28F4 800A3944 05A10005 */  bgez       $t5, .L800A395C_B290C
    /* B28F8 800A3948 46802220 */   cvt.s.w   $f8, $f4
    /* B28FC 800A394C 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* B2900 800A3950 44819000 */  mtc1       $at, $f18
    /* B2904 800A3954 00000000 */  nop
    /* B2908 800A3958 46124200 */  add.s      $f8, $f8, $f18
  .L800A395C_B290C:
    /* B290C 800A395C 448E3000 */  mtc1       $t6, $f6
    /* B2910 800A3960 240D0001 */  addiu      $t5, $zero, 0x1
    /* B2914 800A3964 3C0EFA00 */  lui        $t6, (0xFA00FFFF >> 16)
    /* B2918 800A3968 46803420 */  cvt.s.w    $f16, $f6
    /* B291C 800A396C 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* B2920 800A3970 35CEFFFF */  ori        $t6, $t6, (0xFA00FFFF & 0xFFFF)
    /* B2924 800A3974 46008282 */  mul.s      $f10, $f16, $f0
    /* B2928 800A3978 460A4100 */  add.s      $f4, $f8, $f10
    /* B292C 800A397C 4458F800 */  cfc1       $t8, $31
    /* B2930 800A3980 44CDF800 */  ctc1       $t5, $31
    /* B2934 800A3984 00000000 */  nop
    /* B2938 800A3988 460024A4 */  cvt.w.s    $f18, $f4
    /* B293C 800A398C 444DF800 */  cfc1       $t5, $31
    /* B2940 800A3990 00000000 */  nop
    /* B2944 800A3994 31AD0078 */  andi       $t5, $t5, 0x78
    /* B2948 800A3998 51A00013 */  beql       $t5, $zero, .L800A39E8_B2998
    /* B294C 800A399C 440D9000 */   mfc1      $t5, $f18
    /* B2950 800A39A0 44819000 */  mtc1       $at, $f18
    /* B2954 800A39A4 240D0001 */  addiu      $t5, $zero, 0x1
    /* B2958 800A39A8 46122481 */  sub.s      $f18, $f4, $f18
    /* B295C 800A39AC 44CDF800 */  ctc1       $t5, $31
    /* B2960 800A39B0 00000000 */  nop
    /* B2964 800A39B4 460094A4 */  cvt.w.s    $f18, $f18
    /* B2968 800A39B8 444DF800 */  cfc1       $t5, $31
    /* B296C 800A39BC 00000000 */  nop
    /* B2970 800A39C0 31AD0078 */  andi       $t5, $t5, 0x78
    /* B2974 800A39C4 15A00005 */  bnez       $t5, .L800A39DC_B298C
    /* B2978 800A39C8 00000000 */   nop
    /* B297C 800A39CC 440D9000 */  mfc1       $t5, $f18
    /* B2980 800A39D0 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* B2984 800A39D4 10000007 */  b          .L800A39F4_B29A4
    /* B2988 800A39D8 01A16825 */   or        $t5, $t5, $at
  .L800A39DC_B298C:
    /* B298C 800A39DC 10000005 */  b          .L800A39F4_B29A4
    /* B2990 800A39E0 240DFFFF */   addiu     $t5, $zero, -0x1
    /* B2994 800A39E4 440D9000 */  mfc1       $t5, $f18
  .L800A39E8_B2998:
    /* B2998 800A39E8 00000000 */  nop
    /* B299C 800A39EC 05A0FFFB */  bltz       $t5, .L800A39DC_B298C
    /* B29A0 800A39F0 00000000 */   nop
  .L800A39F4_B29A4:
    /* B29A4 800A39F4 8D230000 */  lw         $v1, 0x0($t1)
    /* B29A8 800A39F8 01A07825 */  or         $t7, $t5, $zero
    /* B29AC 800A39FC 01E06825 */  or         $t5, $t7, $zero
    /* B29B0 800A3A00 24790008 */  addiu      $t9, $v1, 0x8
    /* B29B4 800A3A04 AD390000 */  sw         $t9, 0x0($t1)
    /* B29B8 800A3A08 319900FF */  andi       $t9, $t4, 0xFF
    /* B29BC 800A3A0C AC6E0000 */  sw         $t6, 0x0($v1)
    /* B29C0 800A3A10 00197400 */  sll        $t6, $t9, 16
    /* B29C4 800A3A14 44D8F800 */  ctc1       $t8, $31
    /* B29C8 800A3A18 00077E00 */  sll        $t7, $a3, 24
    /* B29CC 800A3A1C 01EEC025 */  or         $t8, $t7, $t6
    /* B29D0 800A3A20 31B900FF */  andi       $t9, $t5, 0xFF
    /* B29D4 800A3A24 00197A00 */  sll        $t7, $t9, 8
    /* B29D8 800A3A28 030F7025 */  or         $t6, $t8, $t7
    /* B29DC 800A3A2C 35D900FF */  ori        $t9, $t6, 0xFF
    /* B29E0 800A3A30 10000013 */  b          .L800A3A80_B2A30
    /* B29E4 800A3A34 AC790004 */   sw        $t9, 0x4($v1)
  .L800A3A38_B29E8:
    /* B29E8 800A3A38 2529BB2C */  addiu      $t1, $t1, %lo(D_8005BB2C)
    /* B29EC 800A3A3C 8D230000 */  lw         $v1, 0x0($t1)
    /* B29F0 800A3A40 3C0FFA00 */  lui        $t7, (0xFA00FFFF >> 16)
    /* B29F4 800A3A44 35EFFFFF */  ori        $t7, $t7, (0xFA00FFFF & 0xFFFF)
    /* B29F8 800A3A48 24780008 */  addiu      $t8, $v1, 0x8
    /* B29FC 800A3A4C AD380000 */  sw         $t8, 0x0($t1)
    /* B2A00 800A3A50 319800FF */  andi       $t8, $t4, 0xFF
    /* B2A04 800A3A54 AC6F0000 */  sw         $t7, 0x0($v1)
    /* B2A08 800A3A58 00187C00 */  sll        $t7, $t8, 16
    /* B2A0C 800A3A5C 0007CE00 */  sll        $t9, $a3, 24
    /* B2A10 800A3A60 032F7025 */  or         $t6, $t9, $t7
    /* B2A14 800A3A64 31B800FF */  andi       $t8, $t5, 0xFF
    /* B2A18 800A3A68 0018CA00 */  sll        $t9, $t8, 8
    /* B2A1C 800A3A6C 01D97825 */  or         $t7, $t6, $t9
    /* B2A20 800A3A70 93AE0056 */  lbu        $t6, 0x56($sp)
    /* B2A24 800A3A74 240A00FF */  addiu      $t2, $zero, 0xFF
    /* B2A28 800A3A78 01EEC825 */  or         $t9, $t7, $t6
    /* B2A2C 800A3A7C AC790004 */  sw         $t9, 0x4($v1)
  .L800A3A80_B2A30:
    /* B2A30 800A3A80 24180587 */  addiu      $t8, $zero, 0x587
    /* B2A34 800A3A84 031F1823 */  subu       $v1, $t8, $ra
    /* B2A38 800A3A88 2401000C */  addiu      $at, $zero, 0xC
    /* B2A3C 800A3A8C 0061001A */  div        $zero, $v1, $at
    /* B2A40 800A3A90 00001812 */  mflo       $v1
    /* B2A44 800A3A94 00000000 */  nop
    /* B2A48 800A3A98 00000000 */  nop
    /* B2A4C 800A3A9C 856E0000 */  lh         $t6, 0x0($t3)
  .L800A3AA0_B2A50:
    /* B2A50 800A3AA0 24060001 */  addiu      $a2, $zero, 0x1
    /* B2A54 800A3AA4 3C048014 */  lui        $a0, %hi(D_8013D5D2)
    /* B2A58 800A3AA8 14CE0005 */  bne        $a2, $t6, .L800A3AC0_B2A70
    /* B2A5C 800A3AAC 3C058014 */   lui       $a1, %hi(D_8013D5D6)
    /* B2A60 800A3AB0 93A20056 */  lbu        $v0, 0x56($sp)
    /* B2A64 800A3AB4 2841008D */  slti       $at, $v0, 0x8D
    /* B2A68 800A3AB8 14200005 */  bnez       $at, .L800A3AD0_B2A80
    /* B2A6C 800A3ABC 00027840 */   sll       $t7, $v0, 1
  .L800A3AC0_B2A70:
    /* B2A70 800A3AC0 01433823 */  subu       $a3, $t2, $v1
    /* B2A74 800A3AC4 0007CC00 */  sll        $t9, $a3, 16
    /* B2A78 800A3AC8 10000004 */  b          .L800A3ADC_B2A8C
    /* B2A7C 800A3ACC 00193C03 */   sra       $a3, $t9, 16
  .L800A3AD0_B2A80:
    /* B2A80 800A3AD0 01E33823 */  subu       $a3, $t7, $v1
    /* B2A84 800A3AD4 00077400 */  sll        $t6, $a3, 16
    /* B2A88 800A3AD8 000E3C03 */  sra        $a3, $t6, 16
  .L800A3ADC_B2A8C:
    /* B2A8C 800A3ADC 3C068014 */  lui        $a2, %hi(D_8013D5DA)
    /* B2A90 800A3AE0 84C6D5DA */  lh         $a2, %lo(D_8013D5DA)($a2)
    /* B2A94 800A3AE4 8484D5D2 */  lh         $a0, %lo(D_8013D5D2)($a0)
    /* B2A98 800A3AE8 84A5D5D6 */  lh         $a1, %lo(D_8013D5D6)($a1)
    /* B2A9C 800A3AEC AFA3001C */  sw         $v1, 0x1C($sp)
    /* B2AA0 800A3AF0 0C028B66 */  jal        func_800A2D98_B1D48
    /* B2AA4 800A3AF4 AFA80064 */   sw        $t0, 0x64($sp)
    /* B2AA8 800A3AF8 8FB8006C */  lw         $t8, 0x6C($sp)
    /* B2AAC 800A3AFC 3C098006 */  lui        $t1, %hi(D_8005BB2C)
    /* B2AB0 800A3B00 3C0B8014 */  lui        $t3, %hi(D_8013D5B4)
    /* B2AB4 800A3B04 930F0055 */  lbu        $t7, 0x55($t8)
    /* B2AB8 800A3B08 256BD5B4 */  addiu      $t3, $t3, %lo(D_8013D5B4)
    /* B2ABC 800A3B0C 2529BB2C */  addiu      $t1, $t1, %lo(D_8005BB2C)
    /* B2AC0 800A3B10 8FA3001C */  lw         $v1, 0x1C($sp)
    /* B2AC4 800A3B14 8FA80064 */  lw         $t0, 0x64($sp)
    /* B2AC8 800A3B18 11E00003 */  beqz       $t7, .L800A3B28_B2AD8
    /* B2ACC 800A3B1C 240A00FF */   addiu     $t2, $zero, 0xFF
    /* B2AD0 800A3B20 10000002 */  b          .L800A3B2C_B2ADC
    /* B2AD4 800A3B24 2508FFFF */   addiu     $t0, $t0, -0x1
  .L800A3B28_B2AD8:
    /* B2AD8 800A3B28 24080001 */  addiu      $t0, $zero, 0x1
  .L800A3B2C_B2ADC:
    /* B2ADC 800A3B2C 29010002 */  slti       $at, $t0, 0x2
    /* B2AE0 800A3B30 5020FFDB */  beql       $at, $zero, .L800A3AA0_B2A50
    /* B2AE4 800A3B34 856E0000 */   lh        $t6, 0x0($t3)
    /* B2AE8 800A3B38 3C0E8016 */  lui        $t6, %hi(D_80158FEC)
    /* B2AEC 800A3B3C 8DCE8FEC */  lw         $t6, %lo(D_80158FEC)($t6)
    /* B2AF0 800A3B40 15C00008 */  bnez       $t6, .L800A3B64_B2B14
    /* B2AF4 800A3B44 3C198016 */   lui       $t9, %hi(D_80158FE4)
    /* B2AF8 800A3B48 8F398FE4 */  lw         $t9, %lo(D_80158FE4)($t9)
    /* B2AFC 800A3B4C 3C188016 */  lui        $t8, %hi(D_80158FE8)
    /* B2B00 800A3B50 57200005 */  bnel       $t9, $zero, .L800A3B68_B2B18
    /* B2B04 800A3B54 856F0000 */   lh        $t7, 0x0($t3)
    /* B2B08 800A3B58 8F188FE8 */  lw         $t8, %lo(D_80158FE8)($t8)
    /* B2B0C 800A3B5C 53000031 */  beql       $t8, $zero, .L800A3C24_B2BD4
    /* B2B10 800A3B60 8D230000 */   lw        $v1, 0x0($t1)
  .L800A3B64_B2B14:
    /* B2B14 800A3B64 856F0000 */  lh         $t7, 0x0($t3)
  .L800A3B68_B2B18:
    /* B2B18 800A3B68 24010003 */  addiu      $at, $zero, 0x3
    /* B2B1C 800A3B6C 3C0E8014 */  lui        $t6, %hi(D_8013D5BC)
    /* B2B20 800A3B70 55E1002C */  bnel       $t7, $at, .L800A3C24_B2BD4
    /* B2B24 800A3B74 8D230000 */   lw        $v1, 0x0($t1)
    /* B2B28 800A3B78 85CED5BC */  lh         $t6, %lo(D_8013D5BC)($t6)
    /* B2B2C 800A3B7C 24010002 */  addiu      $at, $zero, 0x2
    /* B2B30 800A3B80 3C18FA00 */  lui        $t8, (0xFA00FFFF >> 16)
    /* B2B34 800A3B84 11C10011 */  beq        $t6, $at, .L800A3BCC_B2B7C
    /* B2B38 800A3B88 3C058005 */   lui       $a1, %hi(D_80052A8C)
    /* B2B3C 800A3B8C 8D230000 */  lw         $v1, 0x0($t1)
    /* B2B40 800A3B90 3718FFFF */  ori        $t8, $t8, (0xFA00FFFF & 0xFFFF)
    /* B2B44 800A3B94 3C0F8014 */  lui        $t7, %hi(D_8013D5C0)
    /* B2B48 800A3B98 24790008 */  addiu      $t9, $v1, 0x8
    /* B2B4C 800A3B9C AD390000 */  sw         $t9, 0x0($t1)
    /* B2B50 800A3BA0 AC780000 */  sw         $t8, 0x0($v1)
    /* B2B54 800A3BA4 85EFD5C0 */  lh         $t7, %lo(D_8013D5C0)($t7)
    /* B2B58 800A3BA8 2401FF00 */  addiu      $at, $zero, -0x100
    /* B2B5C 800A3BAC 000F7080 */  sll        $t6, $t7, 2
    /* B2B60 800A3BB0 01CF7023 */  subu       $t6, $t6, $t7
    /* B2B64 800A3BB4 000E7080 */  sll        $t6, $t6, 2
    /* B2B68 800A3BB8 014EC823 */  subu       $t9, $t2, $t6
    /* B2B6C 800A3BBC 333800FF */  andi       $t8, $t9, 0xFF
    /* B2B70 800A3BC0 03017825 */  or         $t7, $t8, $at
    /* B2B74 800A3BC4 10000016 */  b          .L800A3C20_B2BD0
    /* B2B78 800A3BC8 AC6F0004 */   sw        $t7, 0x4($v1)
  .L800A3BCC_B2B7C:
    /* B2B7C 800A3BCC 8CA52A8C */  lw         $a1, %lo(D_80052A8C)($a1)
    /* B2B80 800A3BD0 8D230000 */  lw         $v1, 0x0($t1)
    /* B2B84 800A3BD4 3C01FF00 */  lui        $at, (0xFF0000FF >> 16)
    /* B2B88 800A3BD8 30AE0007 */  andi       $t6, $a1, 0x7
    /* B2B8C 800A3BDC 000E2100 */  sll        $a0, $t6, 4
    /* B2B90 800A3BE0 246F0008 */  addiu      $t7, $v1, 0x8
    /* B2B94 800A3BE4 AD2F0000 */  sw         $t7, 0x0($t1)
    /* B2B98 800A3BE8 0004C840 */  sll        $t9, $a0, 1
    /* B2B9C 800A3BEC 3C0EFA00 */  lui        $t6, (0xFA00FFFF >> 16)
    /* B2BA0 800A3BF0 35CEFFFF */  ori        $t6, $t6, (0xFA00FFFF & 0xFFFF)
    /* B2BA4 800A3BF4 27380032 */  addiu      $t8, $t9, 0x32
    /* B2BA8 800A3BF8 330F00FF */  andi       $t7, $t8, 0xFF
    /* B2BAC 800A3BFC AC6E0000 */  sw         $t6, 0x0($v1)
    /* B2BB0 800A3C00 000F7400 */  sll        $t6, $t7, 16
    /* B2BB4 800A3C04 24980032 */  addiu      $t8, $a0, 0x32
    /* B2BB8 800A3C08 330F00FF */  andi       $t7, $t8, 0xFF
    /* B2BBC 800A3C0C 01C1C825 */  or         $t9, $t6, $at
    /* B2BC0 800A3C10 000F7200 */  sll        $t6, $t7, 8
    /* B2BC4 800A3C14 032EC025 */  or         $t8, $t9, $t6
    /* B2BC8 800A3C18 370F00FF */  ori        $t7, $t8, (0xFF0000FF & 0xFFFF)
    /* B2BCC 800A3C1C AC6F0004 */  sw         $t7, 0x4($v1)
  .L800A3C20_B2BD0:
    /* B2BD0 800A3C20 8D230000 */  lw         $v1, 0x0($t1)
  .L800A3C24_B2BD4:
    /* B2BD4 800A3C24 3C0EBA00 */  lui        $t6, (0xBA000C02 >> 16)
    /* B2BD8 800A3C28 35CE0C02 */  ori        $t6, $t6, (0xBA000C02 & 0xFFFF)
    /* B2BDC 800A3C2C 24790008 */  addiu      $t9, $v1, 0x8
    /* B2BE0 800A3C30 AD390000 */  sw         $t9, 0x0($t1)
    /* B2BE4 800A3C34 24182000 */  addiu      $t8, $zero, 0x2000
    /* B2BE8 800A3C38 AC780004 */  sw         $t8, 0x4($v1)
    /* B2BEC 800A3C3C AC6E0000 */  sw         $t6, 0x0($v1)
    /* B2BF0 800A3C40 8D230000 */  lw         $v1, 0x0($t1)
    /* B2BF4 800A3C44 3C0E8000 */  lui        $t6, (0x80008000 >> 16)
    /* B2BF8 800A3C48 3C19BB00 */  lui        $t9, (0xBB000001 >> 16)
    /* B2BFC 800A3C4C 246F0008 */  addiu      $t7, $v1, 0x8
    /* B2C00 800A3C50 AD2F0000 */  sw         $t7, 0x0($t1)
    /* B2C04 800A3C54 37390001 */  ori        $t9, $t9, (0xBB000001 & 0xFFFF)
    /* B2C08 800A3C58 35CE8000 */  ori        $t6, $t6, (0x80008000 & 0xFFFF)
    /* B2C0C 800A3C5C AC6E0004 */  sw         $t6, 0x4($v1)
    /* B2C10 800A3C60 AC790000 */  sw         $t9, 0x0($v1)
    /* B2C14 800A3C64 8D230000 */  lw         $v1, 0x0($t1)
    /* B2C18 800A3C68 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* B2C1C 800A3C6C 3C0EB900 */  lui        $t6, (0xB900031D >> 16)
    /* B2C20 800A3C70 24780008 */  addiu      $t8, $v1, 0x8
    /* B2C24 800A3C74 AD380000 */  sw         $t8, 0x0($t1)
    /* B2C28 800A3C78 AC600004 */  sw         $zero, 0x4($v1)
    /* B2C2C 800A3C7C AC6F0000 */  sw         $t7, 0x0($v1)
    /* B2C30 800A3C80 8D230000 */  lw         $v1, 0x0($t1)
    /* B2C34 800A3C84 3C180055 */  lui        $t8, (0x552078 >> 16)
    /* B2C38 800A3C88 37182078 */  ori        $t8, $t8, (0x552078 & 0xFFFF)
    /* B2C3C 800A3C8C 24790008 */  addiu      $t9, $v1, 0x8
    /* B2C40 800A3C90 AD390000 */  sw         $t9, 0x0($t1)
    /* B2C44 800A3C94 35CE031D */  ori        $t6, $t6, (0xB900031D & 0xFFFF)
    /* B2C48 800A3C98 AC6E0000 */  sw         $t6, 0x0($v1)
    /* B2C4C 800A3C9C AC780004 */  sw         $t8, 0x4($v1)
    /* B2C50 800A3CA0 8D230000 */  lw         $v1, 0x0($t1)
    /* B2C54 800A3CA4 3C0E0002 */  lui        $t6, (0x20001 >> 16)
    /* B2C58 800A3CA8 35CE0001 */  ori        $t6, $t6, (0x20001 & 0xFFFF)
    /* B2C5C 800A3CAC 246F0008 */  addiu      $t7, $v1, 0x8
    /* B2C60 800A3CB0 AD2F0000 */  sw         $t7, 0x0($t1)
    /* B2C64 800A3CB4 3C19B700 */  lui        $t9, (0xB7000000 >> 16)
    /* B2C68 800A3CB8 AC790000 */  sw         $t9, 0x0($v1)
    /* B2C6C 800A3CBC AC6E0004 */  sw         $t6, 0x4($v1)
  .L800A3CC0_B2C70:
    /* B2C70 800A3CC0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* B2C74 800A3CC4 27BD0070 */  addiu      $sp, $sp, 0x70
    /* B2C78 800A3CC8 03E00008 */  jr         $ra
    /* B2C7C 800A3CCC 00000000 */   nop
endlabel func_800A3490_B2440
