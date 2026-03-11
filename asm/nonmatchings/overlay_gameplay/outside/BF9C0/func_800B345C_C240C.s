nonmatching func_800B345C_C240C, 0xBF4

glabel func_800B345C_C240C
    /* C240C 800B345C 27BDFF48 */  addiu      $sp, $sp, -0xB8
    /* C2410 800B3460 3C018015 */  lui        $at, %hi(D_8014F8A0)
    /* C2414 800B3464 AC26F8A0 */  sw         $a2, %lo(D_8014F8A0)($at)
    /* C2418 800B3468 F7BE0040 */  sdc1       $f30, 0x40($sp)
    /* C241C 800B346C 3C014700 */  lui        $at, (0x47000000 >> 16)
    /* C2420 800B3470 4481F000 */  mtc1       $at, $f30
    /* C2424 800B3474 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* C2428 800B3478 F7BC0038 */  sdc1       $f28, 0x38($sp)
    /* C242C 800B347C F7BA0030 */  sdc1       $f26, 0x30($sp)
    /* C2430 800B3480 4481D800 */  mtc1       $at, $f27
    /* C2434 800B3484 4481E000 */  mtc1       $at, $f28
    /* C2438 800B3488 F7B80028 */  sdc1       $f24, 0x28($sp)
    /* C243C 800B348C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* C2440 800B3490 4481C800 */  mtc1       $at, $f25
    /* C2444 800B3494 F7B60020 */  sdc1       $f22, 0x20($sp)
    /* C2448 800B3498 3C0F8015 */  lui        $t7, %hi(D_8014F89C)
    /* C244C 800B349C 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* C2450 800B34A0 91EFF89C */  lbu        $t7, %lo(D_8014F89C)($t7)
    /* C2454 800B34A4 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* C2458 800B34A8 4481B800 */  mtc1       $at, $f23
    /* C245C 800B34AC AFBE0068 */  sw         $fp, 0x68($sp)
    /* C2460 800B34B0 AFB5005C */  sw         $s5, 0x5C($sp)
    /* C2464 800B34B4 AFB40058 */  sw         $s4, 0x58($sp)
    /* C2468 800B34B8 3C013FE8 */  lui        $at, (0x3FE80000 >> 16)
    /* C246C 800B34BC AFB00048 */  sw         $s0, 0x48($sp)
    /* C2470 800B34C0 3C158015 */  lui        $s5, %hi(D_8014F89D)
    /* C2474 800B34C4 3C148014 */  lui        $s4, %hi(D_8013D9AC)
    /* C2478 800B34C8 3C1E8015 */  lui        $fp, %hi(D_80151DD8)
    /* C247C 800B34CC 4481A800 */  mtc1       $at, $f21
    /* C2480 800B34D0 4480A000 */  mtc1       $zero, $f20
    /* C2484 800B34D4 4480B000 */  mtc1       $zero, $f22
    /* C2488 800B34D8 4480C000 */  mtc1       $zero, $f24
    /* C248C 800B34DC 4480D000 */  mtc1       $zero, $f26
    /* C2490 800B34E0 AFBF006C */  sw         $ra, 0x6C($sp)
    /* C2494 800B34E4 AFB70064 */  sw         $s7, 0x64($sp)
    /* C2498 800B34E8 AFB60060 */  sw         $s6, 0x60($sp)
    /* C249C 800B34EC AFB30054 */  sw         $s3, 0x54($sp)
    /* C24A0 800B34F0 AFB20050 */  sw         $s2, 0x50($sp)
    /* C24A4 800B34F4 AFB1004C */  sw         $s1, 0x4C($sp)
    /* C24A8 800B34F8 AFA400B8 */  sw         $a0, 0xB8($sp)
    /* C24AC 800B34FC AFA500BC */  sw         $a1, 0xBC($sp)
    /* C24B0 800B3500 AFA600C0 */  sw         $a2, 0xC0($sp)
    /* C24B4 800B3504 AFA700C4 */  sw         $a3, 0xC4($sp)
    /* C24B8 800B3508 92B5F89D */  lbu        $s5, %lo(D_8014F89D)($s5)
    /* C24BC 800B350C 27DE1DD8 */  addiu      $fp, $fp, %lo(D_80151DD8)
    /* C24C0 800B3510 2694D9AC */  addiu      $s4, $s4, %lo(D_8013D9AC)
    /* C24C4 800B3514 00008025 */  or         $s0, $zero, $zero
    /* C24C8 800B3518 AFA00088 */  sw         $zero, 0x88($sp)
    /* C24CC 800B351C A7AF0094 */  sh         $t7, 0x94($sp)
  .L800B3520_C24D0:
    /* C24D0 800B3520 8FA30088 */  lw         $v1, 0x88($sp)
    /* C24D4 800B3524 00008825 */  or         $s1, $zero, $zero
    /* C24D8 800B3528 00009825 */  or         $s3, $zero, $zero
    /* C24DC 800B352C 02A31021 */  addu       $v0, $s5, $v1
    /* C24E0 800B3530 0002C200 */  sll        $t8, $v0, 8
    /* C24E4 800B3534 305900FF */  andi       $t9, $v0, 0xFF
    /* C24E8 800B3538 AFB9007C */  sw         $t9, 0x7C($sp)
    /* C24EC 800B353C AFB80080 */  sw         $t8, 0x80($sp)
  .L800B3540_C24F0:
    /* C24F0 800B3540 87AC0094 */  lh         $t4, 0x94($sp)
    /* C24F4 800B3544 8FAD0080 */  lw         $t5, 0x80($sp)
    /* C24F8 800B3548 8FA700C0 */  lw         $a3, 0xC0($sp)
    /* C24FC 800B354C 01934821 */  addu       $t1, $t4, $s3
    /* C2500 800B3550 012D1821 */  addu       $v1, $t1, $t5
    /* C2504 800B3554 306EFFFF */  andi       $t6, $v1, 0xFFFF
    /* C2508 800B3558 000E7840 */  sll        $t7, $t6, 1
    /* C250C 800B355C 00EF1021 */  addu       $v0, $a3, $t7
    /* C2510 800B3560 9458FE00 */  lhu        $t8, -0x200($v0)
    /* C2514 800B3564 000E7040 */  sll        $t6, $t6, 1
    /* C2518 800B3568 00EE7821 */  addu       $t7, $a3, $t6
    /* C251C 800B356C 3319003F */  andi       $t9, $t8, 0x3F
    /* C2520 800B3570 A3B900AC */  sb         $t9, 0xAC($sp)
    /* C2524 800B3574 944CFFFE */  lhu        $t4, -0x2($v0)
    /* C2528 800B3578 312500FF */  andi       $a1, $t1, 0xFF
    /* C252C 800B357C 93A4007F */  lbu        $a0, 0x7F($sp)
    /* C2530 800B3580 318D003F */  andi       $t5, $t4, 0x3F
    /* C2534 800B3584 A3AD00AD */  sb         $t5, 0xAD($sp)
    /* C2538 800B3588 95F80000 */  lhu        $t8, 0x0($t7)
    /* C253C 800B358C 27A600A0 */  addiu      $a2, $sp, 0xA0
    /* C2540 800B3590 3319003F */  andi       $t9, $t8, 0x3F
    /* C2544 800B3594 A3B900AE */  sb         $t9, 0xAE($sp)
    /* C2548 800B3598 944C0002 */  lhu        $t4, 0x2($v0)
    /* C254C 800B359C 318D003F */  andi       $t5, $t4, 0x3F
    /* C2550 800B35A0 A3AD00AF */  sb         $t5, 0xAF($sp)
    /* C2554 800B35A4 944E0200 */  lhu        $t6, 0x200($v0)
    /* C2558 800B35A8 31CF003F */  andi       $t7, $t6, 0x3F
    /* C255C 800B35AC 0C02C605 */  jal        func_800B1814_C07C4
    /* C2560 800B35B0 A3AF00B0 */   sb        $t7, 0xB0($sp)
    /* C2564 800B35B4 3C038015 */  lui        $v1, %hi(D_80151DD0)
    /* C2568 800B35B8 90631DD0 */  lbu        $v1, %lo(D_80151DD0)($v1)
    /* C256C 800B35BC 24010002 */  addiu      $at, $zero, 0x2
    /* C2570 800B35C0 54610026 */  bnel       $v1, $at, .L800B365C_C260C
    /* C2574 800B35C4 24010003 */   addiu     $at, $zero, 0x3
    /* C2578 800B35C8 93B600A0 */  lbu        $s6, 0xA0($sp)
    /* C257C 800B35CC 92860000 */  lbu        $a2, 0x0($s4)
    /* C2580 800B35D0 24070040 */  addiu      $a3, $zero, 0x40
    /* C2584 800B35D4 02C02825 */  or         $a1, $s6, $zero
    /* C2588 800B35D8 04A10003 */  bgez       $a1, .L800B35E8_C2598
    /* C258C 800B35DC 00052043 */   sra       $a0, $a1, 1
    /* C2590 800B35E0 24A10001 */  addiu      $at, $a1, 0x1
    /* C2594 800B35E4 00012043 */  sra        $a0, $at, 1
  .L800B35E8_C2598:
    /* C2598 800B35E8 0C02C284 */  jal        func_800B0A10_BF9C0
    /* C259C 800B35EC 00000000 */   nop
    /* C25A0 800B35F0 93B700A1 */  lbu        $s7, 0xA1($sp)
    /* C25A4 800B35F4 305600FF */  andi       $s6, $v0, 0xFF
    /* C25A8 800B35F8 A3B600A0 */  sb         $s6, 0xA0($sp)
    /* C25AC 800B35FC 02E02825 */  or         $a1, $s7, $zero
    /* C25B0 800B3600 04A10003 */  bgez       $a1, .L800B3610_C25C0
    /* C25B4 800B3604 00052043 */   sra       $a0, $a1, 1
    /* C25B8 800B3608 24A10001 */  addiu      $at, $a1, 0x1
    /* C25BC 800B360C 00012043 */  sra        $a0, $at, 1
  .L800B3610_C25C0:
    /* C25C0 800B3610 92860000 */  lbu        $a2, 0x0($s4)
    /* C25C4 800B3614 0C02C284 */  jal        func_800B0A10_BF9C0
    /* C25C8 800B3618 24070040 */   addiu     $a3, $zero, 0x40
    /* C25CC 800B361C 93B200A2 */  lbu        $s2, 0xA2($sp)
    /* C25D0 800B3620 305700FF */  andi       $s7, $v0, 0xFF
    /* C25D4 800B3624 A3B700A1 */  sb         $s7, 0xA1($sp)
    /* C25D8 800B3628 02402825 */  or         $a1, $s2, $zero
    /* C25DC 800B362C 04A10003 */  bgez       $a1, .L800B363C_C25EC
    /* C25E0 800B3630 00052043 */   sra       $a0, $a1, 1
    /* C25E4 800B3634 24A10001 */  addiu      $at, $a1, 0x1
    /* C25E8 800B3638 00012043 */  sra        $a0, $at, 1
  .L800B363C_C25EC:
    /* C25EC 800B363C 92860000 */  lbu        $a2, 0x0($s4)
    /* C25F0 800B3640 0C02C284 */  jal        func_800B0A10_BF9C0
    /* C25F4 800B3644 24070040 */   addiu     $a3, $zero, 0x40
    /* C25F8 800B3648 305200FF */  andi       $s2, $v0, 0xFF
    /* C25FC 800B364C 3C038015 */  lui        $v1, %hi(D_80151DD0)
    /* C2600 800B3650 90631DD0 */  lbu        $v1, %lo(D_80151DD0)($v1)
    /* C2604 800B3654 A3B200A2 */  sb         $s2, 0xA2($sp)
    /* C2608 800B3658 24010003 */  addiu      $at, $zero, 0x3
  .L800B365C_C260C:
    /* C260C 800B365C 54610025 */  bnel       $v1, $at, .L800B36F4_C26A4
    /* C2610 800B3660 24010004 */   addiu     $at, $zero, 0x4
    /* C2614 800B3664 93B600A0 */  lbu        $s6, 0xA0($sp)
    /* C2618 800B3668 00002025 */  or         $a0, $zero, $zero
    /* C261C 800B366C 92860000 */  lbu        $a2, 0x0($s4)
    /* C2620 800B3670 06C10003 */  bgez       $s6, .L800B3680_C2630
    /* C2624 800B3674 00162843 */   sra       $a1, $s6, 1
    /* C2628 800B3678 26C10001 */  addiu      $at, $s6, 0x1
    /* C262C 800B367C 00012843 */  sra        $a1, $at, 1
  .L800B3680_C2630:
    /* C2630 800B3680 0C02C284 */  jal        func_800B0A10_BF9C0
    /* C2634 800B3684 24070096 */   addiu     $a3, $zero, 0x96
    /* C2638 800B3688 93B700A1 */  lbu        $s7, 0xA1($sp)
    /* C263C 800B368C 305600FF */  andi       $s6, $v0, 0xFF
    /* C2640 800B3690 A3B600A0 */  sb         $s6, 0xA0($sp)
    /* C2644 800B3694 00002025 */  or         $a0, $zero, $zero
    /* C2648 800B3698 06E10003 */  bgez       $s7, .L800B36A8_C2658
    /* C264C 800B369C 00172843 */   sra       $a1, $s7, 1
    /* C2650 800B36A0 26E10001 */  addiu      $at, $s7, 0x1
    /* C2654 800B36A4 00012843 */  sra        $a1, $at, 1
  .L800B36A8_C2658:
    /* C2658 800B36A8 92860000 */  lbu        $a2, 0x0($s4)
    /* C265C 800B36AC 0C02C284 */  jal        func_800B0A10_BF9C0
    /* C2660 800B36B0 24070096 */   addiu     $a3, $zero, 0x96
    /* C2664 800B36B4 93B200A2 */  lbu        $s2, 0xA2($sp)
    /* C2668 800B36B8 305700FF */  andi       $s7, $v0, 0xFF
    /* C266C 800B36BC A3B700A1 */  sb         $s7, 0xA1($sp)
    /* C2670 800B36C0 00002025 */  or         $a0, $zero, $zero
    /* C2674 800B36C4 06410003 */  bgez       $s2, .L800B36D4_C2684
    /* C2678 800B36C8 00122843 */   sra       $a1, $s2, 1
    /* C267C 800B36CC 26410001 */  addiu      $at, $s2, 0x1
    /* C2680 800B36D0 00012843 */  sra        $a1, $at, 1
  .L800B36D4_C2684:
    /* C2684 800B36D4 92860000 */  lbu        $a2, 0x0($s4)
    /* C2688 800B36D8 0C02C284 */  jal        func_800B0A10_BF9C0
    /* C268C 800B36DC 24070096 */   addiu     $a3, $zero, 0x96
    /* C2690 800B36E0 305200FF */  andi       $s2, $v0, 0xFF
    /* C2694 800B36E4 3C038015 */  lui        $v1, %hi(D_80151DD0)
    /* C2698 800B36E8 90631DD0 */  lbu        $v1, %lo(D_80151DD0)($v1)
    /* C269C 800B36EC A3B200A2 */  sb         $s2, 0xA2($sp)
    /* C26A0 800B36F0 24010004 */  addiu      $at, $zero, 0x4
  .L800B36F4_C26A4:
    /* C26A4 800B36F4 14610007 */  bne        $v1, $at, .L800B3714_C26C4
    /* C26A8 800B36F8 00000000 */   nop
    /* C26AC 800B36FC 301700FF */  andi       $s7, $zero, 0xFF
    /* C26B0 800B3700 301600FF */  andi       $s6, $zero, 0xFF
    /* C26B4 800B3704 A3B600A0 */  sb         $s6, 0xA0($sp)
    /* C26B8 800B3708 A3B700A1 */  sb         $s7, 0xA1($sp)
    /* C26BC 800B370C 00009025 */  or         $s2, $zero, $zero
    /* C26C0 800B3710 A3A000A2 */  sb         $zero, 0xA2($sp)
  .L800B3714_C26C4:
    /* C26C4 800B3714 3C038014 */  lui        $v1, %hi(D_8013D9B0)
    /* C26C8 800B3718 9063D9B0 */  lbu        $v1, %lo(D_8013D9B0)($v1)
    /* C26CC 800B371C 106001A4 */  beqz       $v1, .L800B3DB0_C2D60
    /* C26D0 800B3720 2861003D */   slti      $at, $v1, 0x3D
    /* C26D4 800B3724 14200037 */  bnez       $at, .L800B3804_C27B4
    /* C26D8 800B3728 00601025 */   or        $v0, $v1, $zero
    /* C26DC 800B372C 2463FFC4 */  addiu      $v1, $v1, -0x3C
    /* C26E0 800B3730 0003C400 */  sll        $t8, $v1, 16
    /* C26E4 800B3734 00181C03 */  sra        $v1, $t8, 16
    /* C26E8 800B3738 44832000 */  mtc1       $v1, $f4
    /* C26EC 800B373C 3C014170 */  lui        $at, (0x41700000 >> 16)
    /* C26F0 800B3740 44814000 */  mtc1       $at, $f8
    /* C26F4 800B3744 468021A0 */  cvt.s.w    $f6, $f4
    /* C26F8 800B3748 24040001 */  addiu      $a0, $zero, 0x1
    /* C26FC 800B374C 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* C2700 800B3750 46083283 */  div.s      $f10, $f6, $f8
    /* C2704 800B3754 461E5402 */  mul.s      $f16, $f10, $f30
    /* C2708 800B3758 444CF800 */  cfc1       $t4, $31
    /* C270C 800B375C 44C4F800 */  ctc1       $a0, $31
    /* C2710 800B3760 00000000 */  nop
    /* C2714 800B3764 460084A4 */  cvt.w.s    $f18, $f16
    /* C2718 800B3768 4444F800 */  cfc1       $a0, $31
    /* C271C 800B376C 00000000 */  nop
    /* C2720 800B3770 30840078 */  andi       $a0, $a0, 0x78
    /* C2724 800B3774 50800013 */  beql       $a0, $zero, .L800B37C4_C2774
    /* C2728 800B3778 44049000 */   mfc1      $a0, $f18
    /* C272C 800B377C 44819000 */  mtc1       $at, $f18
    /* C2730 800B3780 24040001 */  addiu      $a0, $zero, 0x1
    /* C2734 800B3784 46128481 */  sub.s      $f18, $f16, $f18
    /* C2738 800B3788 44C4F800 */  ctc1       $a0, $31
    /* C273C 800B378C 00000000 */  nop
    /* C2740 800B3790 460094A4 */  cvt.w.s    $f18, $f18
    /* C2744 800B3794 4444F800 */  cfc1       $a0, $31
    /* C2748 800B3798 00000000 */  nop
    /* C274C 800B379C 30840078 */  andi       $a0, $a0, 0x78
    /* C2750 800B37A0 14800005 */  bnez       $a0, .L800B37B8_C2768
    /* C2754 800B37A4 00000000 */   nop
    /* C2758 800B37A8 44049000 */  mfc1       $a0, $f18
    /* C275C 800B37AC 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* C2760 800B37B0 10000007 */  b          .L800B37D0_C2780
    /* C2764 800B37B4 00812025 */   or        $a0, $a0, $at
  .L800B37B8_C2768:
    /* C2768 800B37B8 10000005 */  b          .L800B37D0_C2780
    /* C276C 800B37BC 2404FFFF */   addiu     $a0, $zero, -0x1
    /* C2770 800B37C0 44049000 */  mfc1       $a0, $f18
  .L800B37C4_C2774:
    /* C2774 800B37C4 00000000 */  nop
    /* C2778 800B37C8 0480FFFB */  bltz       $a0, .L800B37B8_C2768
    /* C277C 800B37CC 00000000 */   nop
  .L800B37D0_C2780:
    /* C2780 800B37D0 44CCF800 */  ctc1       $t4, $31
    /* C2784 800B37D4 308DFFFF */  andi       $t5, $a0, 0xFFFF
    /* C2788 800B37D8 0C007654 */  jal        coss
    /* C278C 800B37DC 01A02025 */   or        $a0, $t5, $zero
    /* C2790 800B37E0 44822000 */  mtc1       $v0, $f4
    /* C2794 800B37E4 00000000 */  nop
    /* C2798 800B37E8 468021A0 */  cvt.s.w    $f6, $f4
    /* C279C 800B37EC 46003221 */  cvt.d.s    $f8, $f6
    /* C27A0 800B37F0 46384283 */  div.d      $f10, $f8, $f24
    /* C27A4 800B37F4 462AB401 */  sub.d      $f16, $f22, $f10
    /* C27A8 800B37F8 463A8483 */  div.d      $f18, $f16, $f26
    /* C27AC 800B37FC 10000035 */  b          .L800B38D4_C2884
    /* C27B0 800B3800 46209020 */   cvt.s.d   $f0, $f18
  .L800B3804_C27B4:
    /* C27B4 800B3804 00021C00 */  sll        $v1, $v0, 16
    /* C27B8 800B3808 00037403 */  sra        $t6, $v1, 16
    /* C27BC 800B380C 448E2000 */  mtc1       $t6, $f4
    /* C27C0 800B3810 3C014270 */  lui        $at, (0x42700000 >> 16)
    /* C27C4 800B3814 44814000 */  mtc1       $at, $f8
    /* C27C8 800B3818 468021A0 */  cvt.s.w    $f6, $f4
    /* C27CC 800B381C 24040001 */  addiu      $a0, $zero, 0x1
    /* C27D0 800B3820 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* C27D4 800B3824 46083283 */  div.s      $f10, $f6, $f8
    /* C27D8 800B3828 461E5402 */  mul.s      $f16, $f10, $f30
    /* C27DC 800B382C 444FF800 */  cfc1       $t7, $31
    /* C27E0 800B3830 44C4F800 */  ctc1       $a0, $31
    /* C27E4 800B3834 00000000 */  nop
    /* C27E8 800B3838 460084A4 */  cvt.w.s    $f18, $f16
    /* C27EC 800B383C 4444F800 */  cfc1       $a0, $31
    /* C27F0 800B3840 00000000 */  nop
    /* C27F4 800B3844 30840078 */  andi       $a0, $a0, 0x78
    /* C27F8 800B3848 50800013 */  beql       $a0, $zero, .L800B3898_C2848
    /* C27FC 800B384C 44049000 */   mfc1      $a0, $f18
    /* C2800 800B3850 44819000 */  mtc1       $at, $f18
    /* C2804 800B3854 24040001 */  addiu      $a0, $zero, 0x1
    /* C2808 800B3858 46128481 */  sub.s      $f18, $f16, $f18
    /* C280C 800B385C 44C4F800 */  ctc1       $a0, $31
    /* C2810 800B3860 00000000 */  nop
    /* C2814 800B3864 460094A4 */  cvt.w.s    $f18, $f18
    /* C2818 800B3868 4444F800 */  cfc1       $a0, $31
    /* C281C 800B386C 00000000 */  nop
    /* C2820 800B3870 30840078 */  andi       $a0, $a0, 0x78
    /* C2824 800B3874 14800005 */  bnez       $a0, .L800B388C_C283C
    /* C2828 800B3878 00000000 */   nop
    /* C282C 800B387C 44049000 */  mfc1       $a0, $f18
    /* C2830 800B3880 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* C2834 800B3884 10000007 */  b          .L800B38A4_C2854
    /* C2838 800B3888 00812025 */   or        $a0, $a0, $at
  .L800B388C_C283C:
    /* C283C 800B388C 10000005 */  b          .L800B38A4_C2854
    /* C2840 800B3890 2404FFFF */   addiu     $a0, $zero, -0x1
    /* C2844 800B3894 44049000 */  mfc1       $a0, $f18
  .L800B3898_C2848:
    /* C2848 800B3898 00000000 */  nop
    /* C284C 800B389C 0480FFFB */  bltz       $a0, .L800B388C_C283C
    /* C2850 800B38A0 00000000 */   nop
  .L800B38A4_C2854:
    /* C2854 800B38A4 44CFF800 */  ctc1       $t7, $31
    /* C2858 800B38A8 3098FFFF */  andi       $t8, $a0, 0xFFFF
    /* C285C 800B38AC 0C007654 */  jal        coss
    /* C2860 800B38B0 03002025 */   or        $a0, $t8, $zero
    /* C2864 800B38B4 44822000 */  mtc1       $v0, $f4
    /* C2868 800B38B8 00000000 */  nop
    /* C286C 800B38BC 468021A0 */  cvt.s.w    $f6, $f4
    /* C2870 800B38C0 46003221 */  cvt.d.s    $f8, $f6
    /* C2874 800B38C4 46384283 */  div.d      $f10, $f8, $f24
    /* C2878 800B38C8 46365400 */  add.d      $f16, $f10, $f22
    /* C287C 800B38CC 463A8483 */  div.d      $f18, $f16, $f26
    /* C2880 800B38D0 46209020 */  cvt.s.d    $f0, $f18
  .L800B38D4_C2884:
    /* C2884 800B38D4 3C198014 */  lui        $t9, %hi(D_8013D9B4)
    /* C2888 800B38D8 8F39D9B4 */  lw         $t9, %lo(D_8013D9B4)($t9)
    /* C288C 800B38DC 93B600A0 */  lbu        $s6, 0xA0($sp)
    /* C2890 800B38E0 93B700A1 */  lbu        $s7, 0xA1($sp)
    /* C2894 800B38E4 53200099 */  beql       $t9, $zero, .L800B3B4C_C2AFC
    /* C2898 800B38E8 44965000 */   mtc1      $s6, $f10
    /* C289C 800B38EC 93B600A0 */  lbu        $s6, 0xA0($sp)
    /* C28A0 800B38F0 93B200A2 */  lbu        $s2, 0xA2($sp)
    /* C28A4 800B38F4 93B700A1 */  lbu        $s7, 0xA1($sp)
    /* C28A8 800B38F8 44962000 */  mtc1       $s6, $f4
    /* C28AC 800B38FC 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* C28B0 800B3900 06C10004 */  bgez       $s6, .L800B3914_C28C4
    /* C28B4 800B3904 468021A0 */   cvt.s.w   $f6, $f4
    /* C28B8 800B3908 44814000 */  mtc1       $at, $f8
    /* C28BC 800B390C 00000000 */  nop
    /* C28C0 800B3910 46083180 */  add.s      $f6, $f6, $f8
  .L800B3914_C28C4:
    /* C28C4 800B3914 46003282 */  mul.s      $f10, $f6, $f0
    /* C28C8 800B3918 00166043 */  sra        $t4, $s6, 1
    /* C28CC 800B391C 448C9000 */  mtc1       $t4, $f18
    /* C28D0 800B3920 24160001 */  addiu      $s6, $zero, 0x1
    /* C28D4 800B3924 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* C28D8 800B3928 46809120 */  cvt.s.w    $f4, $f18
    /* C28DC 800B392C 461C5403 */  div.s      $f16, $f10, $f28
    /* C28E0 800B3930 46048200 */  add.s      $f8, $f16, $f4
    /* C28E4 800B3934 444DF800 */  cfc1       $t5, $31
    /* C28E8 800B3938 44D6F800 */  ctc1       $s6, $31
    /* C28EC 800B393C 00000000 */  nop
    /* C28F0 800B3940 460041A4 */  cvt.w.s    $f6, $f8
    /* C28F4 800B3944 4456F800 */  cfc1       $s6, $31
    /* C28F8 800B3948 00000000 */  nop
    /* C28FC 800B394C 32D60078 */  andi       $s6, $s6, 0x78
    /* C2900 800B3950 52C00013 */  beql       $s6, $zero, .L800B39A0_C2950
    /* C2904 800B3954 44163000 */   mfc1      $s6, $f6
    /* C2908 800B3958 44813000 */  mtc1       $at, $f6
    /* C290C 800B395C 24160001 */  addiu      $s6, $zero, 0x1
    /* C2910 800B3960 46064181 */  sub.s      $f6, $f8, $f6
    /* C2914 800B3964 44D6F800 */  ctc1       $s6, $31
    /* C2918 800B3968 00000000 */  nop
    /* C291C 800B396C 460031A4 */  cvt.w.s    $f6, $f6
    /* C2920 800B3970 4456F800 */  cfc1       $s6, $31
    /* C2924 800B3974 00000000 */  nop
    /* C2928 800B3978 32D60078 */  andi       $s6, $s6, 0x78
    /* C292C 800B397C 16C00005 */  bnez       $s6, .L800B3994_C2944
    /* C2930 800B3980 00000000 */   nop
    /* C2934 800B3984 44163000 */  mfc1       $s6, $f6
    /* C2938 800B3988 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* C293C 800B398C 10000007 */  b          .L800B39AC_C295C
    /* C2940 800B3990 02C1B025 */   or        $s6, $s6, $at
  .L800B3994_C2944:
    /* C2944 800B3994 10000005 */  b          .L800B39AC_C295C
    /* C2948 800B3998 2416FFFF */   addiu     $s6, $zero, -0x1
    /* C294C 800B399C 44163000 */  mfc1       $s6, $f6
  .L800B39A0_C2950:
    /* C2950 800B39A0 00000000 */  nop
    /* C2954 800B39A4 06C0FFFB */  bltz       $s6, .L800B3994_C2944
    /* C2958 800B39A8 00000000 */   nop
  .L800B39AC_C295C:
    /* C295C 800B39AC 44CDF800 */  ctc1       $t5, $31
    /* C2960 800B39B0 44975000 */  mtc1       $s7, $f10
    /* C2964 800B39B4 32CE00FF */  andi       $t6, $s6, 0xFF
    /* C2968 800B39B8 01C0B025 */  or         $s6, $t6, $zero
    /* C296C 800B39BC 06E10005 */  bgez       $s7, .L800B39D4_C2984
    /* C2970 800B39C0 468054A0 */   cvt.s.w   $f18, $f10
    /* C2974 800B39C4 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* C2978 800B39C8 44818000 */  mtc1       $at, $f16
    /* C297C 800B39CC 00000000 */  nop
    /* C2980 800B39D0 46109480 */  add.s      $f18, $f18, $f16
  .L800B39D4_C2984:
    /* C2984 800B39D4 46009102 */  mul.s      $f4, $f18, $f0
    /* C2988 800B39D8 00177843 */  sra        $t7, $s7, 1
    /* C298C 800B39DC 448F3000 */  mtc1       $t7, $f6
    /* C2990 800B39E0 24170001 */  addiu      $s7, $zero, 0x1
    /* C2994 800B39E4 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* C2998 800B39E8 468032A0 */  cvt.s.w    $f10, $f6
    /* C299C 800B39EC 461C2203 */  div.s      $f8, $f4, $f28
    /* C29A0 800B39F0 460A4400 */  add.s      $f16, $f8, $f10
    /* C29A4 800B39F4 4458F800 */  cfc1       $t8, $31
    /* C29A8 800B39F8 44D7F800 */  ctc1       $s7, $31
    /* C29AC 800B39FC 00000000 */  nop
    /* C29B0 800B3A00 460084A4 */  cvt.w.s    $f18, $f16
    /* C29B4 800B3A04 4457F800 */  cfc1       $s7, $31
    /* C29B8 800B3A08 00000000 */  nop
    /* C29BC 800B3A0C 32F70078 */  andi       $s7, $s7, 0x78
    /* C29C0 800B3A10 52E00013 */  beql       $s7, $zero, .L800B3A60_C2A10
    /* C29C4 800B3A14 44179000 */   mfc1      $s7, $f18
    /* C29C8 800B3A18 44819000 */  mtc1       $at, $f18
    /* C29CC 800B3A1C 24170001 */  addiu      $s7, $zero, 0x1
    /* C29D0 800B3A20 46128481 */  sub.s      $f18, $f16, $f18
    /* C29D4 800B3A24 44D7F800 */  ctc1       $s7, $31
    /* C29D8 800B3A28 00000000 */  nop
    /* C29DC 800B3A2C 460094A4 */  cvt.w.s    $f18, $f18
    /* C29E0 800B3A30 4457F800 */  cfc1       $s7, $31
    /* C29E4 800B3A34 00000000 */  nop
    /* C29E8 800B3A38 32F70078 */  andi       $s7, $s7, 0x78
    /* C29EC 800B3A3C 16E00005 */  bnez       $s7, .L800B3A54_C2A04
    /* C29F0 800B3A40 00000000 */   nop
    /* C29F4 800B3A44 44179000 */  mfc1       $s7, $f18
    /* C29F8 800B3A48 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* C29FC 800B3A4C 10000007 */  b          .L800B3A6C_C2A1C
    /* C2A00 800B3A50 02E1B825 */   or        $s7, $s7, $at
  .L800B3A54_C2A04:
    /* C2A04 800B3A54 10000005 */  b          .L800B3A6C_C2A1C
    /* C2A08 800B3A58 2417FFFF */   addiu     $s7, $zero, -0x1
    /* C2A0C 800B3A5C 44179000 */  mfc1       $s7, $f18
  .L800B3A60_C2A10:
    /* C2A10 800B3A60 00000000 */  nop
    /* C2A14 800B3A64 06E0FFFB */  bltz       $s7, .L800B3A54_C2A04
    /* C2A18 800B3A68 00000000 */   nop
  .L800B3A6C_C2A1C:
    /* C2A1C 800B3A6C 44D8F800 */  ctc1       $t8, $31
    /* C2A20 800B3A70 44922000 */  mtc1       $s2, $f4
    /* C2A24 800B3A74 32F900FF */  andi       $t9, $s7, 0xFF
    /* C2A28 800B3A78 0320B825 */  or         $s7, $t9, $zero
    /* C2A2C 800B3A7C 06410005 */  bgez       $s2, .L800B3A94_C2A44
    /* C2A30 800B3A80 468021A0 */   cvt.s.w   $f6, $f4
    /* C2A34 800B3A84 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* C2A38 800B3A88 44814000 */  mtc1       $at, $f8
    /* C2A3C 800B3A8C 00000000 */  nop
    /* C2A40 800B3A90 46083180 */  add.s      $f6, $f6, $f8
  .L800B3A94_C2A44:
    /* C2A44 800B3A94 46003282 */  mul.s      $f10, $f6, $f0
    /* C2A48 800B3A98 00126043 */  sra        $t4, $s2, 1
    /* C2A4C 800B3A9C 448C9000 */  mtc1       $t4, $f18
    /* C2A50 800B3AA0 24120001 */  addiu      $s2, $zero, 0x1
    /* C2A54 800B3AA4 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* C2A58 800B3AA8 46809120 */  cvt.s.w    $f4, $f18
    /* C2A5C 800B3AAC 461C5403 */  div.s      $f16, $f10, $f28
    /* C2A60 800B3AB0 46048200 */  add.s      $f8, $f16, $f4
    /* C2A64 800B3AB4 444DF800 */  cfc1       $t5, $31
    /* C2A68 800B3AB8 44D2F800 */  ctc1       $s2, $31
    /* C2A6C 800B3ABC 00000000 */  nop
    /* C2A70 800B3AC0 460041A4 */  cvt.w.s    $f6, $f8
    /* C2A74 800B3AC4 4452F800 */  cfc1       $s2, $31
    /* C2A78 800B3AC8 00000000 */  nop
    /* C2A7C 800B3ACC 32520078 */  andi       $s2, $s2, 0x78
    /* C2A80 800B3AD0 52400013 */  beql       $s2, $zero, .L800B3B20_C2AD0
    /* C2A84 800B3AD4 44123000 */   mfc1      $s2, $f6
    /* C2A88 800B3AD8 44813000 */  mtc1       $at, $f6
    /* C2A8C 800B3ADC 24120001 */  addiu      $s2, $zero, 0x1
    /* C2A90 800B3AE0 46064181 */  sub.s      $f6, $f8, $f6
    /* C2A94 800B3AE4 44D2F800 */  ctc1       $s2, $31
    /* C2A98 800B3AE8 00000000 */  nop
    /* C2A9C 800B3AEC 460031A4 */  cvt.w.s    $f6, $f6
    /* C2AA0 800B3AF0 4452F800 */  cfc1       $s2, $31
    /* C2AA4 800B3AF4 00000000 */  nop
    /* C2AA8 800B3AF8 32520078 */  andi       $s2, $s2, 0x78
    /* C2AAC 800B3AFC 16400005 */  bnez       $s2, .L800B3B14_C2AC4
    /* C2AB0 800B3B00 00000000 */   nop
    /* C2AB4 800B3B04 44123000 */  mfc1       $s2, $f6
    /* C2AB8 800B3B08 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* C2ABC 800B3B0C 10000007 */  b          .L800B3B2C_C2ADC
    /* C2AC0 800B3B10 02419025 */   or        $s2, $s2, $at
  .L800B3B14_C2AC4:
    /* C2AC4 800B3B14 10000005 */  b          .L800B3B2C_C2ADC
    /* C2AC8 800B3B18 2412FFFF */   addiu     $s2, $zero, -0x1
    /* C2ACC 800B3B1C 44123000 */  mfc1       $s2, $f6
  .L800B3B20_C2AD0:
    /* C2AD0 800B3B20 00000000 */  nop
    /* C2AD4 800B3B24 0640FFFB */  bltz       $s2, .L800B3B14_C2AC4
    /* C2AD8 800B3B28 00000000 */   nop
  .L800B3B2C_C2ADC:
    /* C2ADC 800B3B2C 44CDF800 */  ctc1       $t5, $31
    /* C2AE0 800B3B30 324E00FF */  andi       $t6, $s2, 0xFF
    /* C2AE4 800B3B34 01C09025 */  or         $s2, $t6, $zero
    /* C2AE8 800B3B38 A3AE00A2 */  sb         $t6, 0xA2($sp)
    /* C2AEC 800B3B3C A3B600A0 */  sb         $s6, 0xA0($sp)
    /* C2AF0 800B3B40 1000009B */  b          .L800B3DB0_C2D60
    /* C2AF4 800B3B44 A3B700A1 */   sb        $s7, 0xA1($sp)
    /* C2AF8 800B3B48 44965000 */  mtc1       $s6, $f10
  .L800B3B4C_C2AFC:
    /* C2AFC 800B3B4C 93B200A2 */  lbu        $s2, 0xA2($sp)
    /* C2B00 800B3B50 06C10005 */  bgez       $s6, .L800B3B68_C2B18
    /* C2B04 800B3B54 468054A0 */   cvt.s.w   $f18, $f10
    /* C2B08 800B3B58 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* C2B0C 800B3B5C 44818000 */  mtc1       $at, $f16
    /* C2B10 800B3B60 00000000 */  nop
    /* C2B14 800B3B64 46109480 */  add.s      $f18, $f18, $f16
  .L800B3B68_C2B18:
    /* C2B18 800B3B68 46009102 */  mul.s      $f4, $f18, $f0
    /* C2B1C 800B3B6C 00167883 */  sra        $t7, $s6, 2
    /* C2B20 800B3B70 448F5000 */  mtc1       $t7, $f10
    /* C2B24 800B3B74 24160001 */  addiu      $s6, $zero, 0x1
    /* C2B28 800B3B78 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* C2B2C 800B3B7C 46805421 */  cvt.d.w    $f16, $f10
    /* C2B30 800B3B80 46002221 */  cvt.d.s    $f8, $f4
    /* C2B34 800B3B84 46344182 */  mul.d      $f6, $f8, $f20
    /* C2B38 800B3B88 46303480 */  add.d      $f18, $f6, $f16
    /* C2B3C 800B3B8C 4458F800 */  cfc1       $t8, $31
    /* C2B40 800B3B90 44D6F800 */  ctc1       $s6, $31
    /* C2B44 800B3B94 00000000 */  nop
    /* C2B48 800B3B98 46209124 */  cvt.w.d    $f4, $f18
    /* C2B4C 800B3B9C 4456F800 */  cfc1       $s6, $31
    /* C2B50 800B3BA0 00000000 */  nop
    /* C2B54 800B3BA4 32D60078 */  andi       $s6, $s6, 0x78
    /* C2B58 800B3BA8 52C00014 */  beql       $s6, $zero, .L800B3BFC_C2BAC
    /* C2B5C 800B3BAC 44162000 */   mfc1      $s6, $f4
    /* C2B60 800B3BB0 44812800 */  mtc1       $at, $f5
    /* C2B64 800B3BB4 44802000 */  mtc1       $zero, $f4
    /* C2B68 800B3BB8 24160001 */  addiu      $s6, $zero, 0x1
    /* C2B6C 800B3BBC 46249101 */  sub.d      $f4, $f18, $f4
    /* C2B70 800B3BC0 44D6F800 */  ctc1       $s6, $31
    /* C2B74 800B3BC4 00000000 */  nop
    /* C2B78 800B3BC8 46202124 */  cvt.w.d    $f4, $f4
    /* C2B7C 800B3BCC 4456F800 */  cfc1       $s6, $31
    /* C2B80 800B3BD0 00000000 */  nop
    /* C2B84 800B3BD4 32D60078 */  andi       $s6, $s6, 0x78
    /* C2B88 800B3BD8 16C00005 */  bnez       $s6, .L800B3BF0_C2BA0
    /* C2B8C 800B3BDC 00000000 */   nop
    /* C2B90 800B3BE0 44162000 */  mfc1       $s6, $f4
    /* C2B94 800B3BE4 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* C2B98 800B3BE8 10000007 */  b          .L800B3C08_C2BB8
    /* C2B9C 800B3BEC 02C1B025 */   or        $s6, $s6, $at
  .L800B3BF0_C2BA0:
    /* C2BA0 800B3BF0 10000005 */  b          .L800B3C08_C2BB8
    /* C2BA4 800B3BF4 2416FFFF */   addiu     $s6, $zero, -0x1
    /* C2BA8 800B3BF8 44162000 */  mfc1       $s6, $f4
  .L800B3BFC_C2BAC:
    /* C2BAC 800B3BFC 00000000 */  nop
    /* C2BB0 800B3C00 06C0FFFB */  bltz       $s6, .L800B3BF0_C2BA0
    /* C2BB4 800B3C04 00000000 */   nop
  .L800B3C08_C2BB8:
    /* C2BB8 800B3C08 44D8F800 */  ctc1       $t8, $31
    /* C2BBC 800B3C0C 44974000 */  mtc1       $s7, $f8
    /* C2BC0 800B3C10 32D900FF */  andi       $t9, $s6, 0xFF
    /* C2BC4 800B3C14 0320B025 */  or         $s6, $t9, $zero
    /* C2BC8 800B3C18 06E10005 */  bgez       $s7, .L800B3C30_C2BE0
    /* C2BCC 800B3C1C 468042A0 */   cvt.s.w   $f10, $f8
    /* C2BD0 800B3C20 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* C2BD4 800B3C24 44813000 */  mtc1       $at, $f6
    /* C2BD8 800B3C28 00000000 */  nop
    /* C2BDC 800B3C2C 46065280 */  add.s      $f10, $f10, $f6
  .L800B3C30_C2BE0:
    /* C2BE0 800B3C30 46005402 */  mul.s      $f16, $f10, $f0
    /* C2BE4 800B3C34 00176083 */  sra        $t4, $s7, 2
    /* C2BE8 800B3C38 448C4000 */  mtc1       $t4, $f8
    /* C2BEC 800B3C3C 24170001 */  addiu      $s7, $zero, 0x1
    /* C2BF0 800B3C40 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* C2BF4 800B3C44 468041A1 */  cvt.d.w    $f6, $f8
    /* C2BF8 800B3C48 460084A1 */  cvt.d.s    $f18, $f16
    /* C2BFC 800B3C4C 46349102 */  mul.d      $f4, $f18, $f20
    /* C2C00 800B3C50 46262280 */  add.d      $f10, $f4, $f6
    /* C2C04 800B3C54 444DF800 */  cfc1       $t5, $31
    /* C2C08 800B3C58 44D7F800 */  ctc1       $s7, $31
    /* C2C0C 800B3C5C 00000000 */  nop
    /* C2C10 800B3C60 46205424 */  cvt.w.d    $f16, $f10
    /* C2C14 800B3C64 4457F800 */  cfc1       $s7, $31
    /* C2C18 800B3C68 00000000 */  nop
    /* C2C1C 800B3C6C 32F70078 */  andi       $s7, $s7, 0x78
    /* C2C20 800B3C70 52E00014 */  beql       $s7, $zero, .L800B3CC4_C2C74
    /* C2C24 800B3C74 44178000 */   mfc1      $s7, $f16
    /* C2C28 800B3C78 44818800 */  mtc1       $at, $f17
    /* C2C2C 800B3C7C 44808000 */  mtc1       $zero, $f16
    /* C2C30 800B3C80 24170001 */  addiu      $s7, $zero, 0x1
    /* C2C34 800B3C84 46305401 */  sub.d      $f16, $f10, $f16
    /* C2C38 800B3C88 44D7F800 */  ctc1       $s7, $31
    /* C2C3C 800B3C8C 00000000 */  nop
    /* C2C40 800B3C90 46208424 */  cvt.w.d    $f16, $f16
    /* C2C44 800B3C94 4457F800 */  cfc1       $s7, $31
    /* C2C48 800B3C98 00000000 */  nop
    /* C2C4C 800B3C9C 32F70078 */  andi       $s7, $s7, 0x78
    /* C2C50 800B3CA0 16E00005 */  bnez       $s7, .L800B3CB8_C2C68
    /* C2C54 800B3CA4 00000000 */   nop
    /* C2C58 800B3CA8 44178000 */  mfc1       $s7, $f16
    /* C2C5C 800B3CAC 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* C2C60 800B3CB0 10000007 */  b          .L800B3CD0_C2C80
    /* C2C64 800B3CB4 02E1B825 */   or        $s7, $s7, $at
  .L800B3CB8_C2C68:
    /* C2C68 800B3CB8 10000005 */  b          .L800B3CD0_C2C80
    /* C2C6C 800B3CBC 2417FFFF */   addiu     $s7, $zero, -0x1
    /* C2C70 800B3CC0 44178000 */  mfc1       $s7, $f16
  .L800B3CC4_C2C74:
    /* C2C74 800B3CC4 00000000 */  nop
    /* C2C78 800B3CC8 06E0FFFB */  bltz       $s7, .L800B3CB8_C2C68
    /* C2C7C 800B3CCC 00000000 */   nop
  .L800B3CD0_C2C80:
    /* C2C80 800B3CD0 44CDF800 */  ctc1       $t5, $31
    /* C2C84 800B3CD4 44929000 */  mtc1       $s2, $f18
    /* C2C88 800B3CD8 32EE00FF */  andi       $t6, $s7, 0xFF
    /* C2C8C 800B3CDC 01C0B825 */  or         $s7, $t6, $zero
    /* C2C90 800B3CE0 06410005 */  bgez       $s2, .L800B3CF8_C2CA8
    /* C2C94 800B3CE4 46809220 */   cvt.s.w   $f8, $f18
    /* C2C98 800B3CE8 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* C2C9C 800B3CEC 44812000 */  mtc1       $at, $f4
    /* C2CA0 800B3CF0 00000000 */  nop
    /* C2CA4 800B3CF4 46044200 */  add.s      $f8, $f8, $f4
  .L800B3CF8_C2CA8:
    /* C2CA8 800B3CF8 46004182 */  mul.s      $f6, $f8, $f0
    /* C2CAC 800B3CFC 00127883 */  sra        $t7, $s2, 2
    /* C2CB0 800B3D00 448F9000 */  mtc1       $t7, $f18
    /* C2CB4 800B3D04 24120001 */  addiu      $s2, $zero, 0x1
    /* C2CB8 800B3D08 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* C2CBC 800B3D0C 46809121 */  cvt.d.w    $f4, $f18
    /* C2CC0 800B3D10 460032A1 */  cvt.d.s    $f10, $f6
    /* C2CC4 800B3D14 46345402 */  mul.d      $f16, $f10, $f20
    /* C2CC8 800B3D18 46248200 */  add.d      $f8, $f16, $f4
    /* C2CCC 800B3D1C 4458F800 */  cfc1       $t8, $31
    /* C2CD0 800B3D20 44D2F800 */  ctc1       $s2, $31
    /* C2CD4 800B3D24 00000000 */  nop
    /* C2CD8 800B3D28 462041A4 */  cvt.w.d    $f6, $f8
    /* C2CDC 800B3D2C 4452F800 */  cfc1       $s2, $31
    /* C2CE0 800B3D30 00000000 */  nop
    /* C2CE4 800B3D34 32520078 */  andi       $s2, $s2, 0x78
    /* C2CE8 800B3D38 52400014 */  beql       $s2, $zero, .L800B3D8C_C2D3C
    /* C2CEC 800B3D3C 44123000 */   mfc1      $s2, $f6
    /* C2CF0 800B3D40 44813800 */  mtc1       $at, $f7
    /* C2CF4 800B3D44 44803000 */  mtc1       $zero, $f6
    /* C2CF8 800B3D48 24120001 */  addiu      $s2, $zero, 0x1
    /* C2CFC 800B3D4C 46264181 */  sub.d      $f6, $f8, $f6
    /* C2D00 800B3D50 44D2F800 */  ctc1       $s2, $31
    /* C2D04 800B3D54 00000000 */  nop
    /* C2D08 800B3D58 462031A4 */  cvt.w.d    $f6, $f6
    /* C2D0C 800B3D5C 4452F800 */  cfc1       $s2, $31
    /* C2D10 800B3D60 00000000 */  nop
    /* C2D14 800B3D64 32520078 */  andi       $s2, $s2, 0x78
    /* C2D18 800B3D68 16400005 */  bnez       $s2, .L800B3D80_C2D30
    /* C2D1C 800B3D6C 00000000 */   nop
    /* C2D20 800B3D70 44123000 */  mfc1       $s2, $f6
    /* C2D24 800B3D74 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* C2D28 800B3D78 10000007 */  b          .L800B3D98_C2D48
    /* C2D2C 800B3D7C 02419025 */   or        $s2, $s2, $at
  .L800B3D80_C2D30:
    /* C2D30 800B3D80 10000005 */  b          .L800B3D98_C2D48
    /* C2D34 800B3D84 2412FFFF */   addiu     $s2, $zero, -0x1
    /* C2D38 800B3D88 44123000 */  mfc1       $s2, $f6
  .L800B3D8C_C2D3C:
    /* C2D3C 800B3D8C 00000000 */  nop
    /* C2D40 800B3D90 0640FFFB */  bltz       $s2, .L800B3D80_C2D30
    /* C2D44 800B3D94 00000000 */   nop
  .L800B3D98_C2D48:
    /* C2D48 800B3D98 325900FF */  andi       $t9, $s2, 0xFF
    /* C2D4C 800B3D9C 44D8F800 */  ctc1       $t8, $31
    /* C2D50 800B3DA0 03209025 */  or         $s2, $t9, $zero
    /* C2D54 800B3DA4 A3B900A2 */  sb         $t9, 0xA2($sp)
    /* C2D58 800B3DA8 A3B600A0 */  sb         $s6, 0xA0($sp)
    /* C2D5C 800B3DAC A3B700A1 */  sb         $s7, 0xA1($sp)
  .L800B3DB0_C2D60:
    /* C2D60 800B3DB0 3C0C8014 */  lui        $t4, %hi(D_8013D9C8)
    /* C2D64 800B3DB4 8D8CD9C8 */  lw         $t4, %lo(D_8013D9C8)($t4)
    /* C2D68 800B3DB8 27A400AC */  addiu      $a0, $sp, 0xAC
    /* C2D6C 800B3DBC 27A500A0 */  addiu      $a1, $sp, 0xA0
    /* C2D70 800B3DC0 11800007 */  beqz       $t4, .L800B3DE0_C2D90
    /* C2D74 800B3DC4 00000000 */   nop
    /* C2D78 800B3DC8 241600FF */  addiu      $s6, $zero, 0xFF
    /* C2D7C 800B3DCC 241700FF */  addiu      $s7, $zero, 0xFF
    /* C2D80 800B3DD0 241200FF */  addiu      $s2, $zero, 0xFF
    /* C2D84 800B3DD4 A3B200A2 */  sb         $s2, 0xA2($sp)
    /* C2D88 800B3DD8 A3B700A1 */  sb         $s7, 0xA1($sp)
    /* C2D8C 800B3DDC A3B600A0 */  sb         $s6, 0xA0($sp)
  .L800B3DE0_C2D90:
    /* C2D90 800B3DE0 0C02CB3C */  jal        func_800B2CF0_C1CA0
    /* C2D94 800B3DE4 27A600A8 */   addiu     $a2, $sp, 0xA8
    /* C2D98 800B3DE8 24050013 */  addiu      $a1, $zero, 0x13
    /* C2D9C 800B3DEC 83CD0961 */  lb         $t5, 0x961($fp)
    /* C2DA0 800B3DF0 83D80960 */  lb         $t8, 0x960($fp)
    /* C2DA4 800B3DF4 8FB90088 */  lw         $t9, 0x88($sp)
    /* C2DA8 800B3DF8 01B37021 */  addu       $t6, $t5, $s3
    /* C2DAC 800B3DFC 01C5001A */  div        $zero, $t6, $a1
    /* C2DB0 800B3E00 03196021 */  addu       $t4, $t8, $t9
    /* C2DB4 800B3E04 00001810 */  mfhi       $v1
    /* C2DB8 800B3E08 306FFFFF */  andi       $t7, $v1, 0xFFFF
    /* C2DBC 800B3E0C 14A00002 */  bnez       $a1, .L800B3E18_C2DC8
    /* C2DC0 800B3E10 00000000 */   nop
    /* C2DC4 800B3E14 0007000D */  break      7
  .L800B3E18_C2DC8:
    /* C2DC8 800B3E18 2401FFFF */  addiu      $at, $zero, -0x1
    /* C2DCC 800B3E1C 14A10004 */  bne        $a1, $at, .L800B3E30_C2DE0
    /* C2DD0 800B3E20 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* C2DD4 800B3E24 15C10002 */  bne        $t6, $at, .L800B3E30_C2DE0
    /* C2DD8 800B3E28 00000000 */   nop
    /* C2DDC 800B3E2C 0006000D */  break      6
  .L800B3E30_C2DE0:
    /* C2DE0 800B3E30 0185001A */  div        $zero, $t4, $a1
    /* C2DE4 800B3E34 00002010 */  mfhi       $a0
    /* C2DE8 800B3E38 308DFFFF */  andi       $t5, $a0, 0xFFFF
    /* C2DEC 800B3E3C 01E01825 */  or         $v1, $t7, $zero
    /* C2DF0 800B3E40 000D7100 */  sll        $t6, $t5, 4
    /* C2DF4 800B3E44 01CD7023 */  subu       $t6, $t6, $t5
    /* C2DF8 800B3E48 14A00002 */  bnez       $a1, .L800B3E54_C2E04
    /* C2DFC 800B3E4C 00000000 */   nop
    /* C2E00 800B3E50 0007000D */  break      7
  .L800B3E54_C2E04:
    /* C2E04 800B3E54 2401FFFF */  addiu      $at, $zero, -0x1
    /* C2E08 800B3E58 14A10004 */  bne        $a1, $at, .L800B3E6C_C2E1C
    /* C2E0C 800B3E5C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* C2E10 800B3E60 15810002 */  bne        $t4, $at, .L800B3E6C_C2E1C
    /* C2E14 800B3E64 00000000 */   nop
    /* C2E18 800B3E68 0006000D */  break      6
  .L800B3E6C_C2E1C:
    /* C2E1C 800B3E6C 000E70C0 */  sll        $t6, $t6, 3
    /* C2E20 800B3E70 0003C080 */  sll        $t8, $v1, 2
    /* C2E24 800B3E74 0303C023 */  subu       $t8, $t8, $v1
    /* C2E28 800B3E78 03CE7821 */  addu       $t7, $fp, $t6
    /* C2E2C 800B3E7C 26310001 */  addiu      $s1, $s1, 0x1
    /* C2E30 800B3E80 01A02025 */  or         $a0, $t5, $zero
    /* C2E34 800B3E84 0018C040 */  sll        $t8, $t8, 1
    /* C2E38 800B3E88 93B900A8 */  lbu        $t9, 0xA8($sp)
    /* C2E3C 800B3E8C 93AC00AA */  lbu        $t4, 0xAA($sp)
    /* C2E40 800B3E90 93AD00A9 */  lbu        $t5, 0xA9($sp)
    /* C2E44 800B3E94 322E00FF */  andi       $t6, $s1, 0xFF
    /* C2E48 800B3E98 01F81021 */  addu       $v0, $t7, $t8
    /* C2E4C 800B3E9C 29C10013 */  slti       $at, $t6, 0x13
    /* C2E50 800B3EA0 01C08825 */  or         $s1, $t6, $zero
    /* C2E54 800B3EA4 01C09825 */  or         $s3, $t6, $zero
    /* C2E58 800B3EA8 A0590002 */  sb         $t9, 0x2($v0)
    /* C2E5C 800B3EAC A04C0004 */  sb         $t4, 0x4($v0)
    /* C2E60 800B3EB0 1420FDA3 */  bnez       $at, .L800B3540_C24F0
    /* C2E64 800B3EB4 A04D0003 */   sb        $t5, 0x3($v0)
    /* C2E68 800B3EB8 26100001 */  addiu      $s0, $s0, 0x1
    /* C2E6C 800B3EBC 320F00FF */  andi       $t7, $s0, 0xFF
    /* C2E70 800B3EC0 29E10013 */  slti       $at, $t7, 0x13
    /* C2E74 800B3EC4 01E08025 */  or         $s0, $t7, $zero
    /* C2E78 800B3EC8 1420FD95 */  bnez       $at, .L800B3520_C24D0
    /* C2E7C 800B3ECC AFAF0088 */   sw        $t7, 0x88($sp)
    /* C2E80 800B3ED0 3C0A8015 */  lui        $t2, %hi(D_8014FD48)
    /* C2E84 800B3ED4 254AFD48 */  addiu      $t2, $t2, %lo(D_8014FD48)
    /* C2E88 800B3ED8 00008025 */  or         $s0, $zero, $zero
    /* C2E8C 800B3EDC 240B003C */  addiu      $t3, $zero, 0x3C
  .L800B3EE0_C2E90:
    /* C2E90 800B3EE0 00008825 */  or         $s1, $zero, $zero
    /* C2E94 800B3EE4 00009825 */  or         $s3, $zero, $zero
  .L800B3EE8_C2E98:
    /* C2E98 800B3EE8 87B80094 */  lh         $t8, 0x94($sp)
    /* C2E9C 800B3EEC 00004025 */  or         $t0, $zero, $zero
    /* C2EA0 800B3EF0 03134821 */  addu       $t1, $t8, $s3
  .L800B3EF4_C2EA4:
    /* C2EA4 800B3EF4 0008C840 */  sll        $t9, $t0, 1
    /* C2EA8 800B3EF8 01591021 */  addu       $v0, $t2, $t9
    /* C2EAC 800B3EFC 90440000 */  lbu        $a0, 0x0($v0)
    /* C2EB0 800B3F00 25080001 */  addiu      $t0, $t0, 0x1
    /* C2EB4 800B3F04 55240032 */  bnel       $t1, $a0, .L800B3FD0_C2F80
    /* C2EB8 800B3F08 310D00FF */   andi      $t5, $t0, 0xFF
    /* C2EBC 800B3F0C 90450001 */  lbu        $a1, 0x1($v0)
    /* C2EC0 800B3F10 02B06021 */  addu       $t4, $s5, $s0
    /* C2EC4 800B3F14 5585002E */  bnel       $t4, $a1, .L800B3FD0_C2F80
    /* C2EC8 800B3F18 310D00FF */   andi      $t5, $t0, 0xFF
    /* C2ECC 800B3F1C 00A40019 */  multu      $a1, $a0
    /* C2ED0 800B3F20 00107900 */  sll        $t7, $s0, 4
    /* C2ED4 800B3F24 0011C080 */  sll        $t8, $s1, 2
    /* C2ED8 800B3F28 0311C023 */  subu       $t8, $t8, $s1
    /* C2EDC 800B3F2C 01F07823 */  subu       $t7, $t7, $s0
    /* C2EE0 800B3F30 000F78C0 */  sll        $t7, $t7, 3
    /* C2EE4 800B3F34 0018C040 */  sll        $t8, $t8, 1
    /* C2EE8 800B3F38 3C0C8015 */  lui        $t4, %hi(D_80151DD8)
    /* C2EEC 800B3F3C 258C1DD8 */  addiu      $t4, $t4, %lo(D_80151DD8)
    /* C2EF0 800B3F40 01F8C821 */  addu       $t9, $t7, $t8
    /* C2EF4 800B3F44 00006812 */  mflo       $t5
    /* C2EF8 800B3F48 032C1021 */  addu       $v0, $t9, $t4
    /* C2EFC 800B3F4C 00000000 */  nop
    /* C2F00 800B3F50 01AB001A */  div        $zero, $t5, $t3
    /* C2F04 800B3F54 00001810 */  mfhi       $v1
    /* C2F08 800B3F58 306E00FF */  andi       $t6, $v1, 0xFF
    /* C2F0C 800B3F5C 15600002 */  bnez       $t3, .L800B3F68_C2F18
    /* C2F10 800B3F60 00000000 */   nop
    /* C2F14 800B3F64 0007000D */  break      7
  .L800B3F68_C2F18:
    /* C2F18 800B3F68 2401FFFF */  addiu      $at, $zero, -0x1
    /* C2F1C 800B3F6C 15610004 */  bne        $t3, $at, .L800B3F80_C2F30
    /* C2F20 800B3F70 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* C2F24 800B3F74 15A10002 */  bne        $t5, $at, .L800B3F80_C2F30
    /* C2F28 800B3F78 00000000 */   nop
    /* C2F2C 800B3F7C 0006000D */  break      6
  .L800B3F80_C2F30:
    /* C2F30 800B3F80 25C60014 */  addiu      $a2, $t6, 0x14
    /* C2F34 800B3F84 01C01825 */  or         $v1, $t6, $zero
    /* C2F38 800B3F88 04C10003 */  bgez       $a2, .L800B3F98_C2F48
    /* C2F3C 800B3F8C 01C03825 */   or        $a3, $t6, $zero
    /* C2F40 800B3F90 10000002 */  b          .L800B3F9C_C2F4C
    /* C2F44 800B3F94 A0400002 */   sb        $zero, 0x2($v0)
  .L800B3F98_C2F48:
    /* C2F48 800B3F98 A0460002 */  sb         $a2, 0x2($v0)
  .L800B3F9C_C2F4C:
    /* C2F4C 800B3F9C 24E3FFFB */  addiu      $v1, $a3, -0x5
    /* C2F50 800B3FA0 04630004 */  bgezl      $v1, .L800B3FB4_C2F64
    /* C2F54 800B3FA4 A0430003 */   sb        $v1, 0x3($v0)
    /* C2F58 800B3FA8 10000002 */  b          .L800B3FB4_C2F64
    /* C2F5C 800B3FAC A0400003 */   sb        $zero, 0x3($v0)
    /* C2F60 800B3FB0 A0430003 */  sb         $v1, 0x3($v0)
  .L800B3FB4_C2F64:
    /* C2F64 800B3FB4 24E3FFE7 */  addiu      $v1, $a3, -0x19
    /* C2F68 800B3FB8 04630004 */  bgezl      $v1, .L800B3FCC_C2F7C
    /* C2F6C 800B3FBC A0430004 */   sb        $v1, 0x4($v0)
    /* C2F70 800B3FC0 10000002 */  b          .L800B3FCC_C2F7C
    /* C2F74 800B3FC4 A0400004 */   sb        $zero, 0x4($v0)
    /* C2F78 800B3FC8 A0430004 */  sb         $v1, 0x4($v0)
  .L800B3FCC_C2F7C:
    /* C2F7C 800B3FCC 310D00FF */  andi       $t5, $t0, 0xFF
  .L800B3FD0_C2F80:
    /* C2F80 800B3FD0 29A10040 */  slti       $at, $t5, 0x40
    /* C2F84 800B3FD4 1420FFC7 */  bnez       $at, .L800B3EF4_C2EA4
    /* C2F88 800B3FD8 01A04025 */   or        $t0, $t5, $zero
    /* C2F8C 800B3FDC 26310001 */  addiu      $s1, $s1, 0x1
    /* C2F90 800B3FE0 322E00FF */  andi       $t6, $s1, 0xFF
    /* C2F94 800B3FE4 29C10013 */  slti       $at, $t6, 0x13
    /* C2F98 800B3FE8 01C08825 */  or         $s1, $t6, $zero
    /* C2F9C 800B3FEC 1420FFBE */  bnez       $at, .L800B3EE8_C2E98
    /* C2FA0 800B3FF0 01C09825 */   or        $s3, $t6, $zero
    /* C2FA4 800B3FF4 26100001 */  addiu      $s0, $s0, 0x1
    /* C2FA8 800B3FF8 320F00FF */  andi       $t7, $s0, 0xFF
    /* C2FAC 800B3FFC 29E10013 */  slti       $at, $t7, 0x13
    /* C2FB0 800B4000 1420FFB7 */  bnez       $at, .L800B3EE0_C2E90
    /* C2FB4 800B4004 01E08025 */   or        $s0, $t7, $zero
    /* C2FB8 800B4008 8FBF006C */  lw         $ra, 0x6C($sp)
    /* C2FBC 800B400C D7B40018 */  ldc1       $f20, 0x18($sp)
    /* C2FC0 800B4010 D7B60020 */  ldc1       $f22, 0x20($sp)
    /* C2FC4 800B4014 D7B80028 */  ldc1       $f24, 0x28($sp)
    /* C2FC8 800B4018 D7BA0030 */  ldc1       $f26, 0x30($sp)
    /* C2FCC 800B401C D7BC0038 */  ldc1       $f28, 0x38($sp)
    /* C2FD0 800B4020 D7BE0040 */  ldc1       $f30, 0x40($sp)
    /* C2FD4 800B4024 8FB00048 */  lw         $s0, 0x48($sp)
    /* C2FD8 800B4028 8FB1004C */  lw         $s1, 0x4C($sp)
    /* C2FDC 800B402C 8FB20050 */  lw         $s2, 0x50($sp)
    /* C2FE0 800B4030 8FB30054 */  lw         $s3, 0x54($sp)
    /* C2FE4 800B4034 8FB40058 */  lw         $s4, 0x58($sp)
    /* C2FE8 800B4038 8FB5005C */  lw         $s5, 0x5C($sp)
    /* C2FEC 800B403C 8FB60060 */  lw         $s6, 0x60($sp)
    /* C2FF0 800B4040 8FB70064 */  lw         $s7, 0x64($sp)
    /* C2FF4 800B4044 8FBE0068 */  lw         $fp, 0x68($sp)
    /* C2FF8 800B4048 03E00008 */  jr         $ra
    /* C2FFC 800B404C 27BD00B8 */   addiu     $sp, $sp, 0xB8
endlabel func_800B345C_C240C
