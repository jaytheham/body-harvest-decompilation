nonmatching func_800DC5B8_EB568, 0x1028

glabel func_800DC5B8_EB568
    /* EB568 800DC5B8 27BDFF10 */  addiu      $sp, $sp, -0xF0
    /* EB56C 800DC5BC 24030020 */  addiu      $v1, $zero, 0x20
    /* EB570 800DC5C0 3C018015 */  lui        $at, %hi(D_80153BCD)
    /* EB574 800DC5C4 A0233BCD */  sb         $v1, %lo(D_80153BCD)($at)
    /* EB578 800DC5C8 3C028015 */  lui        $v0, %hi(D_80153B90)
    /* EB57C 800DC5CC 3C018015 */  lui        $at, %hi(D_80153BCE)
    /* EB580 800DC5D0 24423B90 */  addiu      $v0, $v0, %lo(D_80153B90)
    /* EB584 800DC5D4 A0233BCE */  sb         $v1, %lo(D_80153BCE)($at)
    /* EB588 800DC5D8 AFB30030 */  sw         $s3, 0x30($sp)
    /* EB58C 800DC5DC C4440000 */  lwc1       $f4, 0x0($v0)
    /* EB590 800DC5E0 C4460004 */  lwc1       $f6, 0x4($v0)
    /* EB594 800DC5E4 C4480008 */  lwc1       $f8, 0x8($v0)
    /* EB598 800DC5E8 00809825 */  or         $s3, $a0, $zero
    /* EB59C 800DC5EC 27A400E4 */  addiu      $a0, $sp, 0xE4
    /* EB5A0 800DC5F0 AFBF0034 */  sw         $ra, 0x34($sp)
    /* EB5A4 800DC5F4 AFA500F4 */  sw         $a1, 0xF4($sp)
    /* EB5A8 800DC5F8 AFB2002C */  sw         $s2, 0x2C($sp)
    /* EB5AC 800DC5FC AFB10028 */  sw         $s1, 0x28($sp)
    /* EB5B0 800DC600 AFB00024 */  sw         $s0, 0x24($sp)
    /* EB5B4 800DC604 F7B60018 */  sdc1       $f22, 0x18($sp)
    /* EB5B8 800DC608 F7B40010 */  sdc1       $f20, 0x10($sp)
    /* EB5BC 800DC60C AFA600F8 */  sw         $a2, 0xF8($sp)
    /* EB5C0 800DC610 AFA700FC */  sw         $a3, 0xFC($sp)
    /* EB5C4 800DC614 00802825 */  or         $a1, $a0, $zero
    /* EB5C8 800DC618 E7A400E4 */  swc1       $f4, 0xE4($sp)
    /* EB5CC 800DC61C E7A600E8 */  swc1       $f6, 0xE8($sp)
    /* EB5D0 800DC620 0C030409 */  jal        func_800C1024_CFFD4
    /* EB5D4 800DC624 E7A800EC */   swc1      $f8, 0xEC($sp)
    /* EB5D8 800DC628 3C128015 */  lui        $s2, %hi(D_80153BA0)
    /* EB5DC 800DC62C 26523BA0 */  addiu      $s2, $s2, %lo(D_80153BA0)
    /* EB5E0 800DC630 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* EB5E4 800DC634 4481B000 */  mtc1       $at, $f22
    /* EB5E8 800DC638 C64A0000 */  lwc1       $f10, 0x0($s2)
    /* EB5EC 800DC63C C6720000 */  lwc1       $f18, 0x0($s3)
    /* EB5F0 800DC640 C6460004 */  lwc1       $f6, 0x4($s2)
    /* EB5F4 800DC644 46165402 */  mul.s      $f16, $f10, $f22
    /* EB5F8 800DC648 27B100D8 */  addiu      $s1, $sp, 0xD8
    /* EB5FC 800DC64C 02202025 */  or         $a0, $s1, $zero
    /* EB600 800DC650 46163202 */  mul.s      $f8, $f6, $f22
    /* EB604 800DC654 46128101 */  sub.s      $f4, $f16, $f18
    /* EB608 800DC658 C6520008 */  lwc1       $f18, 0x8($s2)
    /* EB60C 800DC65C E7A400D8 */  swc1       $f4, 0xD8($sp)
    /* EB610 800DC660 C66A0004 */  lwc1       $f10, 0x4($s3)
    /* EB614 800DC664 46169102 */  mul.s      $f4, $f18, $f22
    /* EB618 800DC668 460A4401 */  sub.s      $f16, $f8, $f10
    /* EB61C 800DC66C E7B000DC */  swc1       $f16, 0xDC($sp)
    /* EB620 800DC670 C6660008 */  lwc1       $f6, 0x8($s3)
    /* EB624 800DC674 46062201 */  sub.s      $f8, $f4, $f6
    /* EB628 800DC678 0C0303F5 */  jal        func_800C0FD4_CFF84
    /* EB62C 800DC67C E7A800E0 */   swc1      $f8, 0xE0($sp)
    /* EB630 800DC680 E7A000A8 */  swc1       $f0, 0xA8($sp)
    /* EB634 800DC684 02202025 */  or         $a0, $s1, $zero
    /* EB638 800DC688 0C030409 */  jal        func_800C1024_CFFD4
    /* EB63C 800DC68C 02202825 */   or        $a1, $s1, $zero
    /* EB640 800DC690 02202025 */  or         $a0, $s1, $zero
    /* EB644 800DC694 0C030424 */  jal        func_800C1090_D0040
    /* EB648 800DC698 27A500E4 */   addiu     $a1, $sp, 0xE4
    /* EB64C 800DC69C E7A000B0 */  swc1       $f0, 0xB0($sp)
    /* EB650 800DC6A0 0C000DA0 */  jal        func_80003680_4280
    /* EB654 800DC6A4 46000306 */   mov.s     $f12, $f0
    /* EB658 800DC6A8 24104000 */  addiu      $s0, $zero, 0x4000
    /* EB65C 800DC6AC 02027023 */  subu       $t6, $s0, $v0
    /* EB660 800DC6B0 000E7C00 */  sll        $t7, $t6, 16
    /* EB664 800DC6B4 000FC403 */  sra        $t8, $t7, 16
    /* EB668 800DC6B8 44985000 */  mtc1       $t8, $f10
    /* EB66C 800DC6BC 3C018014 */  lui        $at, %hi(D_801440B0)
    /* EB670 800DC6C0 D42040B0 */  ldc1       $f0, %lo(D_801440B0)($at)
    /* EB674 800DC6C4 46805420 */  cvt.s.w    $f16, $f10
    /* EB678 800DC6C8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* EB67C 800DC6CC 44811800 */  mtc1       $at, $f3
    /* EB680 800DC6D0 44801000 */  mtc1       $zero, $f2
    /* EB684 800DC6D4 3C018014 */  lui        $at, %hi(D_801440B8)
    /* EB688 800DC6D8 D43440B8 */  ldc1       $f20, %lo(D_801440B8)($at)
    /* EB68C 800DC6DC 460084A1 */  cvt.d.s    $f18, $f16
    /* EB690 800DC6E0 46209102 */  mul.d      $f4, $f18, $f0
    /* EB694 800DC6E4 46222183 */  div.d      $f6, $f4, $f2
    /* EB698 800DC6E8 4634303E */  c.le.d     $f6, $f20
    /* EB69C 800DC6EC 00000000 */  nop
    /* EB6A0 800DC6F0 45000013 */  bc1f       .L800DC740_EB6F0
    /* EB6A4 800DC6F4 00000000 */   nop
    /* EB6A8 800DC6F8 0C000DA0 */  jal        func_80003680_4280
    /* EB6AC 800DC6FC C7AC00B0 */   lwc1      $f12, 0xB0($sp)
    /* EB6B0 800DC700 0202C823 */  subu       $t9, $s0, $v0
    /* EB6B4 800DC704 00195C00 */  sll        $t3, $t9, 16
    /* EB6B8 800DC708 000B6403 */  sra        $t4, $t3, 16
    /* EB6BC 800DC70C 448C4000 */  mtc1       $t4, $f8
    /* EB6C0 800DC710 3C018014 */  lui        $at, %hi(D_801440C0)
    /* EB6C4 800DC714 D42040C0 */  ldc1       $f0, %lo(D_801440C0)($at)
    /* EB6C8 800DC718 468042A0 */  cvt.s.w    $f10, $f8
    /* EB6CC 800DC71C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* EB6D0 800DC720 44811800 */  mtc1       $at, $f3
    /* EB6D4 800DC724 44801000 */  mtc1       $zero, $f2
    /* EB6D8 800DC728 46005421 */  cvt.d.s    $f16, $f10
    /* EB6DC 800DC72C 46208482 */  mul.d      $f18, $f16, $f0
    /* EB6E0 800DC730 46229103 */  div.d      $f4, $f18, $f2
    /* EB6E4 800DC734 4624A181 */  sub.d      $f6, $f20, $f4
    /* EB6E8 800DC738 10000013 */  b          .L800DC788_EB738
    /* EB6EC 800DC73C 462033A0 */   cvt.s.d   $f14, $f6
  .L800DC740_EB6F0:
    /* EB6F0 800DC740 0C000DA0 */  jal        func_80003680_4280
    /* EB6F4 800DC744 C7AC00B0 */   lwc1      $f12, 0xB0($sp)
    /* EB6F8 800DC748 02026823 */  subu       $t5, $s0, $v0
    /* EB6FC 800DC74C 000D7400 */  sll        $t6, $t5, 16
    /* EB700 800DC750 000E7C03 */  sra        $t7, $t6, 16
    /* EB704 800DC754 448F4000 */  mtc1       $t7, $f8
    /* EB708 800DC758 3C018014 */  lui        $at, %hi(D_801440C8)
    /* EB70C 800DC75C D42040C8 */  ldc1       $f0, %lo(D_801440C8)($at)
    /* EB710 800DC760 468042A0 */  cvt.s.w    $f10, $f8
    /* EB714 800DC764 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* EB718 800DC768 44811800 */  mtc1       $at, $f3
    /* EB71C 800DC76C 44801000 */  mtc1       $zero, $f2
    /* EB720 800DC770 46005421 */  cvt.d.s    $f16, $f10
    /* EB724 800DC774 46208482 */  mul.d      $f18, $f16, $f0
    /* EB728 800DC778 46229103 */  div.d      $f4, $f18, $f2
    /* EB72C 800DC77C 4624A181 */  sub.d      $f6, $f20, $f4
    /* EB730 800DC780 46203207 */  neg.d      $f8, $f6
    /* EB734 800DC784 462043A0 */  cvt.s.d    $f14, $f8
  .L800DC788_EB738:
    /* EB738 800DC788 3C014004 */  lui        $at, (0x40040000 >> 16)
    /* EB73C 800DC78C 44811800 */  mtc1       $at, $f3
    /* EB740 800DC790 44801000 */  mtc1       $zero, $f2
    /* EB744 800DC794 46007521 */  cvt.d.s    $f20, $f14
    /* EB748 800DC798 3C048014 */  lui        $a0, %hi(D_8013E344)
    /* EB74C 800DC79C 4622A03C */  c.lt.d     $f20, $f2
    /* EB750 800DC7A0 240300FF */  addiu      $v1, $zero, 0xFF
    /* EB754 800DC7A4 3C014014 */  lui        $at, (0x40140000 >> 16)
    /* EB758 800DC7A8 2484E344 */  addiu      $a0, $a0, %lo(D_8013E344)
    /* EB75C 800DC7AC 45020004 */  bc1fl      .L800DC7C0_EB770
    /* EB760 800DC7B0 44815800 */   mtc1      $at, $f11
    /* EB764 800DC7B4 10000034 */  b          .L800DC888_EB838
    /* EB768 800DC7B8 A3A300A0 */   sb        $v1, 0xA0($sp)
    /* EB76C 800DC7BC 44815800 */  mtc1       $at, $f11
  .L800DC7C0_EB770:
    /* EB770 800DC7C0 44805000 */  mtc1       $zero, $f10
    /* EB774 800DC7C4 3C014014 */  lui        $at, (0x40140000 >> 16)
    /* EB778 800DC7C8 462AA03C */  c.lt.d     $f20, $f10
    /* EB77C 800DC7CC 00000000 */  nop
    /* EB780 800DC7D0 4502002E */  bc1fl      .L800DC88C_EB83C
    /* EB784 800DC7D4 3C014316 */   lui       $at, (0x43160000 >> 16)
    /* EB788 800DC7D8 44818800 */  mtc1       $at, $f17
    /* EB78C 800DC7DC 44808000 */  mtc1       $zero, $f16
    /* EB790 800DC7E0 3C018014 */  lui        $at, %hi(D_801440D0)
    /* EB794 800DC7E4 D42840D0 */  ldc1       $f8, %lo(D_801440D0)($at)
    /* EB798 800DC7E8 46348481 */  sub.d      $f18, $f16, $f20
    /* EB79C 800DC7EC 24030001 */  addiu      $v1, $zero, 0x1
    /* EB7A0 800DC7F0 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* EB7A4 800DC7F4 46209120 */  cvt.s.d    $f4, $f18
    /* EB7A8 800DC7F8 460021A1 */  cvt.d.s    $f6, $f4
    /* EB7AC 800DC7FC 46283282 */  mul.d      $f10, $f6, $f8
    /* EB7B0 800DC800 4458F800 */  cfc1       $t8, $31
    /* EB7B4 800DC804 44C3F800 */  ctc1       $v1, $31
    /* EB7B8 800DC808 00000000 */  nop
    /* EB7BC 800DC80C 46205424 */  cvt.w.d    $f16, $f10
    /* EB7C0 800DC810 4443F800 */  cfc1       $v1, $31
    /* EB7C4 800DC814 00000000 */  nop
    /* EB7C8 800DC818 30630078 */  andi       $v1, $v1, 0x78
    /* EB7CC 800DC81C 50600014 */  beql       $v1, $zero, .L800DC870_EB820
    /* EB7D0 800DC820 44038000 */   mfc1      $v1, $f16
    /* EB7D4 800DC824 44818800 */  mtc1       $at, $f17
    /* EB7D8 800DC828 44808000 */  mtc1       $zero, $f16
    /* EB7DC 800DC82C 24030001 */  addiu      $v1, $zero, 0x1
    /* EB7E0 800DC830 46305401 */  sub.d      $f16, $f10, $f16
    /* EB7E4 800DC834 44C3F800 */  ctc1       $v1, $31
    /* EB7E8 800DC838 00000000 */  nop
    /* EB7EC 800DC83C 46208424 */  cvt.w.d    $f16, $f16
    /* EB7F0 800DC840 4443F800 */  cfc1       $v1, $31
    /* EB7F4 800DC844 00000000 */  nop
    /* EB7F8 800DC848 30630078 */  andi       $v1, $v1, 0x78
    /* EB7FC 800DC84C 14600005 */  bnez       $v1, .L800DC864_EB814
    /* EB800 800DC850 00000000 */   nop
    /* EB804 800DC854 44038000 */  mfc1       $v1, $f16
    /* EB808 800DC858 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* EB80C 800DC85C 10000007 */  b          .L800DC87C_EB82C
    /* EB810 800DC860 00611825 */   or        $v1, $v1, $at
  .L800DC864_EB814:
    /* EB814 800DC864 10000005 */  b          .L800DC87C_EB82C
    /* EB818 800DC868 2403FFFF */   addiu     $v1, $zero, -0x1
    /* EB81C 800DC86C 44038000 */  mfc1       $v1, $f16
  .L800DC870_EB820:
    /* EB820 800DC870 00000000 */  nop
    /* EB824 800DC874 0460FFFB */  bltz       $v1, .L800DC864_EB814
    /* EB828 800DC878 00000000 */   nop
  .L800DC87C_EB82C:
    /* EB82C 800DC87C 44D8F800 */  ctc1       $t8, $31
    /* EB830 800DC880 A3A300A0 */  sb         $v1, 0xA0($sp)
    /* EB834 800DC884 00000000 */  nop
  .L800DC888_EB838:
    /* EB838 800DC888 3C014316 */  lui        $at, (0x43160000 >> 16)
  .L800DC88C_EB83C:
    /* EB83C 800DC88C C7A000F4 */  lwc1       $f0, 0xF4($sp)
    /* EB840 800DC890 44819000 */  mtc1       $at, $f18
    /* EB844 800DC894 93A300A0 */  lbu        $v1, 0xA0($sp)
    /* EB848 800DC898 3C014170 */  lui        $at, (0x41700000 >> 16)
    /* EB84C 800DC89C 4612003E */  c.le.s     $f0, $f18
    /* EB850 800DC8A0 83A200FB */  lb         $v0, 0xFB($sp)
    /* EB854 800DC8A4 45020009 */  bc1fl      .L800DC8CC_EB87C
    /* EB858 800DC8A8 3C0143A5 */   lui       $at, (0x43A50000 >> 16)
    /* EB85C 800DC8AC 44812000 */  mtc1       $at, $f4
    /* EB860 800DC8B0 00000000 */  nop
    /* EB864 800DC8B4 4604703C */  c.lt.s     $f14, $f4
    /* EB868 800DC8B8 00000000 */  nop
    /* EB86C 800DC8BC 45020003 */  bc1fl      .L800DC8CC_EB87C
    /* EB870 800DC8C0 3C0143A5 */   lui       $at, (0x43A50000 >> 16)
    /* EB874 800DC8C4 240300FF */  addiu      $v1, $zero, 0xFF
    /* EB878 800DC8C8 3C0143A5 */  lui        $at, (0x43A50000 >> 16)
  .L800DC8CC_EB87C:
    /* EB87C 800DC8CC 44813000 */  mtc1       $at, $f6
    /* EB880 800DC8D0 3C018014 */  lui        $at, %hi(D_801440D8)
    /* EB884 800DC8D4 4600303C */  c.lt.s     $f6, $f0
    /* EB888 800DC8D8 00000000 */  nop
    /* EB88C 800DC8DC 4500003F */  bc1f       .L800DC9DC_EB98C
    /* EB890 800DC8E0 00000000 */   nop
    /* EB894 800DC8E4 C42C40D8 */  lwc1       $f12, %lo(D_801440D8)($at)
    /* EB898 800DC8E8 3C018014 */  lui        $at, %hi(D_801440E0)
    /* EB89C 800DC8EC 460C003E */  c.le.s     $f0, $f12
    /* EB8A0 800DC8F0 00000000 */  nop
    /* EB8A4 800DC8F4 45000039 */  bc1f       .L800DC9DC_EB98C
    /* EB8A8 800DC8F8 00000000 */   nop
    /* EB8AC 800DC8FC D42840E0 */  ldc1       $f8, %lo(D_801440E0)($at)
    /* EB8B0 800DC900 3C018014 */  lui        $at, %hi(D_801440E8)
    /* EB8B4 800DC904 C42A40E8 */  lwc1       $f10, %lo(D_801440E8)($at)
    /* EB8B8 800DC908 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* EB8BC 800DC90C 46005401 */  sub.s      $f16, $f10, $f0
    /* EB8C0 800DC910 44835000 */  mtc1       $v1, $f10
    /* EB8C4 800DC914 460084A1 */  cvt.d.s    $f18, $f16
    /* EB8C8 800DC918 46805420 */  cvt.s.w    $f16, $f10
    /* EB8CC 800DC91C 46324102 */  mul.d      $f4, $f8, $f18
    /* EB8D0 800DC920 04610004 */  bgez       $v1, .L800DC934_EB8E4
    /* EB8D4 800DC924 462021A0 */   cvt.s.d   $f6, $f4
    /* EB8D8 800DC928 44814000 */  mtc1       $at, $f8
    /* EB8DC 800DC92C 00000000 */  nop
    /* EB8E0 800DC930 46088400 */  add.s      $f16, $f16, $f8
  .L800DC934_EB8E4:
    /* EB8E4 800DC934 46068482 */  mul.s      $f18, $f16, $f6
    /* EB8E8 800DC938 24030001 */  addiu      $v1, $zero, 0x1
    /* EB8EC 800DC93C 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* EB8F0 800DC940 444BF800 */  cfc1       $t3, $31
    /* EB8F4 800DC944 44C3F800 */  ctc1       $v1, $31
    /* EB8F8 800DC948 00000000 */  nop
    /* EB8FC 800DC94C 46009124 */  cvt.w.s    $f4, $f18
    /* EB900 800DC950 4443F800 */  cfc1       $v1, $31
    /* EB904 800DC954 00000000 */  nop
    /* EB908 800DC958 30630078 */  andi       $v1, $v1, 0x78
    /* EB90C 800DC95C 50600019 */  beql       $v1, $zero, .L800DC9C4_EB974
    /* EB910 800DC960 44032000 */   mfc1      $v1, $f4
    /* EB914 800DC964 44812000 */  mtc1       $at, $f4
    /* EB918 800DC968 24030001 */  addiu      $v1, $zero, 0x1
    /* EB91C 800DC96C 46049101 */  sub.s      $f4, $f18, $f4
    /* EB920 800DC970 44C3F800 */  ctc1       $v1, $31
    /* EB924 800DC974 00000000 */  nop
    /* EB928 800DC978 46002124 */  cvt.w.s    $f4, $f4
    /* EB92C 800DC97C 4443F800 */  cfc1       $v1, $31
    /* EB930 800DC980 00000000 */  nop
    /* EB934 800DC984 30630078 */  andi       $v1, $v1, 0x78
    /* EB938 800DC988 54600009 */  bnel       $v1, $zero, .L800DC9B0_EB960
    /* EB93C 800DC98C 2403FFFF */   addiu     $v1, $zero, -0x1
    /* EB940 800DC990 44032000 */  mfc1       $v1, $f4
    /* EB944 800DC994 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* EB948 800DC998 44CBF800 */  ctc1       $t3, $31
    /* EB94C 800DC99C 00611825 */  or         $v1, $v1, $at
    /* EB950 800DC9A0 306C00FF */  andi       $t4, $v1, 0xFF
    /* EB954 800DC9A4 10000014 */  b          .L800DC9F8_EB9A8
    /* EB958 800DC9A8 01801825 */   or        $v1, $t4, $zero
  .L800DC9AC_EB95C:
    /* EB95C 800DC9AC 2403FFFF */  addiu      $v1, $zero, -0x1
  .L800DC9B0_EB960:
    /* EB960 800DC9B0 306C00FF */  andi       $t4, $v1, 0xFF
    /* EB964 800DC9B4 44CBF800 */  ctc1       $t3, $31
    /* EB968 800DC9B8 1000000F */  b          .L800DC9F8_EB9A8
    /* EB96C 800DC9BC 01801825 */   or        $v1, $t4, $zero
    /* EB970 800DC9C0 44032000 */  mfc1       $v1, $f4
  .L800DC9C4_EB974:
    /* EB974 800DC9C4 00000000 */  nop
    /* EB978 800DC9C8 0460FFF8 */  bltz       $v1, .L800DC9AC_EB95C
    /* EB97C 800DC9CC 306C00FF */   andi      $t4, $v1, 0xFF
    /* EB980 800DC9D0 44CBF800 */  ctc1       $t3, $31
    /* EB984 800DC9D4 10000008 */  b          .L800DC9F8_EB9A8
    /* EB988 800DC9D8 01801825 */   or        $v1, $t4, $zero
  .L800DC9DC_EB98C:
    /* EB98C 800DC9DC 3C018014 */  lui        $at, %hi(D_801440EC)
    /* EB990 800DC9E0 C42C40EC */  lwc1       $f12, %lo(D_801440EC)($at)
    /* EB994 800DC9E4 4600603C */  c.lt.s     $f12, $f0
    /* EB998 800DC9E8 00000000 */  nop
    /* EB99C 800DC9EC 45020003 */  bc1fl      .L800DC9FC_EB9AC
    /* EB9A0 800DC9F0 2401FFFF */   addiu     $at, $zero, -0x1
    /* EB9A4 800DC9F4 00001825 */  or         $v1, $zero, $zero
  .L800DC9F8_EB9A8:
    /* EB9A8 800DC9F8 2401FFFF */  addiu      $at, $zero, -0x1
  .L800DC9FC_EB9AC:
    /* EB9AC 800DC9FC 10410031 */  beq        $v0, $at, .L800DCAC4_EBA74
    /* EB9B0 800DCA00 240F00B4 */   addiu     $t7, $zero, 0xB4
    /* EB9B4 800DCA04 44835000 */  mtc1       $v1, $f10
    /* EB9B8 800DCA08 44823000 */  mtc1       $v0, $f6
    /* EB9BC 800DCA0C 04610005 */  bgez       $v1, .L800DCA24_EB9D4
    /* EB9C0 800DCA10 46805220 */   cvt.s.w   $f8, $f10
    /* EB9C4 800DCA14 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* EB9C8 800DCA18 44818000 */  mtc1       $at, $f16
    /* EB9CC 800DCA1C 00000000 */  nop
    /* EB9D0 800DCA20 46104200 */  add.s      $f8, $f8, $f16
  .L800DCA24_EB9D4:
    /* EB9D4 800DCA24 468034A0 */  cvt.s.w    $f18, $f6
    /* EB9D8 800DCA28 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
    /* EB9DC 800DCA2C 44815000 */  mtc1       $at, $f10
    /* EB9E0 800DCA30 24030001 */  addiu      $v1, $zero, 0x1
    /* EB9E4 800DCA34 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* EB9E8 800DCA38 46124102 */  mul.s      $f4, $f8, $f18
    /* EB9EC 800DCA3C 460A2403 */  div.s      $f16, $f4, $f10
    /* EB9F0 800DCA40 444DF800 */  cfc1       $t5, $31
    /* EB9F4 800DCA44 44C3F800 */  ctc1       $v1, $31
    /* EB9F8 800DCA48 00000000 */  nop
    /* EB9FC 800DCA4C 460081A4 */  cvt.w.s    $f6, $f16
    /* EBA00 800DCA50 4443F800 */  cfc1       $v1, $31
    /* EBA04 800DCA54 00000000 */  nop
    /* EBA08 800DCA58 30630078 */  andi       $v1, $v1, 0x78
    /* EBA0C 800DCA5C 50600013 */  beql       $v1, $zero, .L800DCAAC_EBA5C
    /* EBA10 800DCA60 44033000 */   mfc1      $v1, $f6
    /* EBA14 800DCA64 44813000 */  mtc1       $at, $f6
    /* EBA18 800DCA68 24030001 */  addiu      $v1, $zero, 0x1
    /* EBA1C 800DCA6C 46068181 */  sub.s      $f6, $f16, $f6
    /* EBA20 800DCA70 44C3F800 */  ctc1       $v1, $31
    /* EBA24 800DCA74 00000000 */  nop
    /* EBA28 800DCA78 460031A4 */  cvt.w.s    $f6, $f6
    /* EBA2C 800DCA7C 4443F800 */  cfc1       $v1, $31
    /* EBA30 800DCA80 00000000 */  nop
    /* EBA34 800DCA84 30630078 */  andi       $v1, $v1, 0x78
    /* EBA38 800DCA88 14600005 */  bnez       $v1, .L800DCAA0_EBA50
    /* EBA3C 800DCA8C 00000000 */   nop
    /* EBA40 800DCA90 44033000 */  mfc1       $v1, $f6
    /* EBA44 800DCA94 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* EBA48 800DCA98 10000007 */  b          .L800DCAB8_EBA68
    /* EBA4C 800DCA9C 00611825 */   or        $v1, $v1, $at
  .L800DCAA0_EBA50:
    /* EBA50 800DCAA0 10000005 */  b          .L800DCAB8_EBA68
    /* EBA54 800DCAA4 2403FFFF */   addiu     $v1, $zero, -0x1
    /* EBA58 800DCAA8 44033000 */  mfc1       $v1, $f6
  .L800DCAAC_EBA5C:
    /* EBA5C 800DCAAC 00000000 */  nop
    /* EBA60 800DCAB0 0460FFFB */  bltz       $v1, .L800DCAA0_EBA50
    /* EBA64 800DCAB4 00000000 */   nop
  .L800DCAB8_EBA68:
    /* EBA68 800DCAB8 44CDF800 */  ctc1       $t5, $31
    /* EBA6C 800DCABC 306E00FF */  andi       $t6, $v1, 0xFF
    /* EBA70 800DCAC0 01C01825 */  or         $v1, $t6, $zero
  .L800DCAC4_EBA74:
    /* EBA74 800DCAC4 90820000 */  lbu        $v0, 0x0($a0)
    /* EBA78 800DCAC8 00608025 */  or         $s0, $v1, $zero
    /* EBA7C 800DCACC 0043082A */  slt        $at, $v0, $v1
    /* EBA80 800DCAD0 50200004 */  beql       $at, $zero, .L800DCAE4_EBA94
    /* EBA84 800DCAD4 284100B5 */   slti      $at, $v0, 0xB5
    /* EBA88 800DCAD8 A0830000 */  sb         $v1, 0x0($a0)
    /* EBA8C 800DCADC 306200FF */  andi       $v0, $v1, 0xFF
    /* EBA90 800DCAE0 284100B5 */  slti       $at, $v0, 0xB5
  .L800DCAE4_EBA94:
    /* EBA94 800DCAE4 54200003 */  bnel       $at, $zero, .L800DCAF4_EBAA4
    /* EBA98 800DCAE8 3C0141B0 */   lui       $at, (0x41B00000 >> 16)
    /* EBA9C 800DCAEC A08F0000 */  sb         $t7, 0x0($a0)
    /* EBAA0 800DCAF0 3C0141B0 */  lui        $at, (0x41B00000 >> 16)
  .L800DCAF4_EBAA4:
    /* EBAA4 800DCAF4 44814000 */  mtc1       $at, $f8
    /* EBAA8 800DCAF8 00000000 */  nop
    /* EBAAC 800DCAFC 4608703C */  c.lt.s     $f14, $f8
    /* EBAB0 800DCB00 00000000 */  nop
    /* EBAB4 800DCB04 450202AE */  bc1fl      .L800DD5C0_EC570
    /* EBAB8 800DCB08 8FBF0034 */   lw        $ra, 0x34($sp)
    /* EBABC 800DCB0C 4634103C */  c.lt.d     $f2, $f20
    /* EBAC0 800DCB10 00000000 */  nop
    /* EBAC4 800DCB14 450202AA */  bc1fl      .L800DD5C0_EC570
    /* EBAC8 800DCB18 8FBF0034 */   lw        $ra, 0x34($sp)
    /* EBACC 800DCB1C 460C003C */  c.lt.s     $f0, $f12
    /* EBAD0 800DCB20 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* EBAD4 800DCB24 C7A400B0 */  lwc1       $f4, 0xB0($sp)
    /* EBAD8 800DCB28 450202A5 */  bc1fl      .L800DD5C0_EC570
    /* EBADC 800DCB2C 8FBF0034 */   lw        $ra, 0x34($sp)
    /* EBAE0 800DCB30 44819000 */  mtc1       $at, $f18
    /* EBAE4 800DCB34 27A500E4 */  addiu      $a1, $sp, 0xE4
    /* EBAE8 800DCB38 27A600CC */  addiu      $a2, $sp, 0xCC
    /* EBAEC 800DCB3C 46049302 */  mul.s      $f12, $f18, $f4
    /* EBAF0 800DCB40 0C03044A */  jal        func_800C1128_D00D8
    /* EBAF4 800DCB44 E7AE00AC */   swc1      $f14, 0xAC($sp)
    /* EBAF8 800DCB48 02202025 */  or         $a0, $s1, $zero
    /* EBAFC 800DCB4C 27A500CC */  addiu      $a1, $sp, 0xCC
    /* EBB00 800DCB50 0C030430 */  jal        func_800C10C0_D0070
    /* EBB04 800DCB54 02203025 */   or        $a2, $s1, $zero
    /* EBB08 800DCB58 C7AC00A8 */  lwc1       $f12, 0xA8($sp)
    /* EBB0C 800DCB5C 02202825 */  or         $a1, $s1, $zero
    /* EBB10 800DCB60 0C03044A */  jal        func_800C1128_D00D8
    /* EBB14 800DCB64 27A600C0 */   addiu     $a2, $sp, 0xC0
    /* EBB18 800DCB68 C64A0000 */  lwc1       $f10, 0x0($s2)
    /* EBB1C 800DCB6C C7A600C0 */  lwc1       $f6, 0xC0($sp)
    /* EBB20 800DCB70 C6520004 */  lwc1       $f18, 0x4($s2)
    /* EBB24 800DCB74 46165402 */  mul.s      $f16, $f10, $f22
    /* EBB28 800DCB78 C7AA00C4 */  lwc1       $f10, 0xC4($sp)
    /* EBB2C 800DCB7C 3C058006 */  lui        $a1, %hi(D_8005BB2C)
    /* EBB30 800DCB80 46169102 */  mul.s      $f4, $f18, $f22
    /* EBB34 800DCB84 24A5BB2C */  addiu      $a1, $a1, %lo(D_8005BB2C)
    /* EBB38 800DCB88 8CA20000 */  lw         $v0, 0x0($a1)
    /* EBB3C 800DCB8C C7AE00AC */  lwc1       $f14, 0xAC($sp)
    /* EBB40 800DCB90 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
    /* EBB44 800DCB94 46068200 */  add.s      $f8, $f16, $f6
    /* EBB48 800DCB98 C6460008 */  lwc1       $f6, 0x8($s2)
    /* EBB4C 800DCB9C 24580008 */  addiu      $t8, $v0, 0x8
    /* EBB50 800DCBA0 460A2400 */  add.s      $f16, $f4, $f10
    /* EBB54 800DCBA4 46163482 */  mul.s      $f18, $f6, $f22
    /* EBB58 800DCBA8 C7A400C8 */  lwc1       $f4, 0xC8($sp)
    /* EBB5C 800DCBAC E7A800CC */  swc1       $f8, 0xCC($sp)
    /* EBB60 800DCBB0 E7B000D0 */  swc1       $f16, 0xD0($sp)
    /* EBB64 800DCBB4 3C0BFCFF */  lui        $t3, (0xFCFF99FF >> 16)
    /* EBB68 800DCBB8 3C0CFF32 */  lui        $t4, (0xFF327F3F >> 16)
    /* EBB6C 800DCBBC 358C7F3F */  ori        $t4, $t4, (0xFF327F3F & 0xFFFF)
    /* EBB70 800DCBC0 46049280 */  add.s      $f10, $f18, $f4
    /* EBB74 800DCBC4 356B99FF */  ori        $t3, $t3, (0xFCFF99FF & 0xFFFF)
    /* EBB78 800DCBC8 3C0EB900 */  lui        $t6, (0xB900031D >> 16)
    /* EBB7C 800DCBCC 3C0F0050 */  lui        $t7, (0x5049D8 >> 16)
    /* EBB80 800DCBD0 E7AA00D4 */  swc1       $f10, 0xD4($sp)
    /* EBB84 800DCBD4 C6660000 */  lwc1       $f6, 0x0($s3)
    /* EBB88 800DCBD8 35EF49D8 */  ori        $t7, $t7, (0x5049D8 & 0xFFFF)
    /* EBB8C 800DCBDC 35CE031D */  ori        $t6, $t6, (0xB900031D & 0xFFFF)
    /* EBB90 800DCBE0 46083481 */  sub.s      $f18, $f6, $f8
    /* EBB94 800DCBE4 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* EBB98 800DCBE8 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* EBB9C 800DCBEC 3C118015 */  lui        $s1, %hi(D_80153BB8)
    /* EBBA0 800DCBF0 E7B200C0 */  swc1       $f18, 0xC0($sp)
    /* EBBA4 800DCBF4 C6640004 */  lwc1       $f4, 0x4($s3)
    /* EBBA8 800DCBF8 26313BB8 */  addiu      $s1, $s1, %lo(D_80153BB8)
    /* EBBAC 800DCBFC 46102181 */  sub.s      $f6, $f4, $f16
    /* EBBB0 800DCC00 44802000 */  mtc1       $zero, $f4
    /* EBBB4 800DCC04 E7A600C4 */  swc1       $f6, 0xC4($sp)
    /* EBBB8 800DCC08 C6680008 */  lwc1       $f8, 0x8($s3)
    /* EBBBC 800DCC0C ACB80000 */  sw         $t8, 0x0($a1)
    /* EBBC0 800DCC10 460A4481 */  sub.s      $f18, $f8, $f10
    /* EBBC4 800DCC14 E7B200C8 */  swc1       $f18, 0xC8($sp)
    /* EBBC8 800DCC18 AC400004 */  sw         $zero, 0x4($v0)
    /* EBBCC 800DCC1C AC4A0000 */  sw         $t2, 0x0($v0)
    /* EBBD0 800DCC20 8CA20000 */  lw         $v0, 0x0($a1)
    /* EBBD4 800DCC24 24590008 */  addiu      $t9, $v0, 0x8
    /* EBBD8 800DCC28 ACB90000 */  sw         $t9, 0x0($a1)
    /* EBBDC 800DCC2C AC4C0004 */  sw         $t4, 0x4($v0)
    /* EBBE0 800DCC30 AC4B0000 */  sw         $t3, 0x0($v0)
    /* EBBE4 800DCC34 8CA20000 */  lw         $v0, 0x0($a1)
    /* EBBE8 800DCC38 3C0C0101 */  lui        $t4, %hi(D_100DA00)
    /* EBBEC 800DCC3C 258CDA00 */  addiu      $t4, $t4, %lo(D_100DA00)
    /* EBBF0 800DCC40 244D0008 */  addiu      $t5, $v0, 0x8
    /* EBBF4 800DCC44 ACAD0000 */  sw         $t5, 0x0($a1)
    /* EBBF8 800DCC48 AC4F0004 */  sw         $t7, 0x4($v0)
    /* EBBFC 800DCC4C AC4E0000 */  sw         $t6, 0x0($v0)
    /* EBC00 800DCC50 8CA20000 */  lw         $v0, 0x0($a1)
    /* EBC04 800DCC54 01816824 */  and        $t5, $t4, $at
    /* EBC08 800DCC58 3C0BFD90 */  lui        $t3, (0xFD900000 >> 16)
    /* EBC0C 800DCC5C 24580008 */  addiu      $t8, $v0, 0x8
    /* EBC10 800DCC60 ACB80000 */  sw         $t8, 0x0($a1)
    /* EBC14 800DCC64 AC400004 */  sw         $zero, 0x4($v0)
    /* EBC18 800DCC68 AC4A0000 */  sw         $t2, 0x0($v0)
    /* EBC1C 800DCC6C 8CA20000 */  lw         $v0, 0x0($a1)
    /* EBC20 800DCC70 3C180708 */  lui        $t8, (0x7080200 >> 16)
    /* EBC24 800DCC74 37180200 */  ori        $t8, $t8, (0x7080200 & 0xFFFF)
    /* EBC28 800DCC78 24590008 */  addiu      $t9, $v0, 0x8
    /* EBC2C 800DCC7C ACB90000 */  sw         $t9, 0x0($a1)
    /* EBC30 800DCC80 AC4D0004 */  sw         $t5, 0x4($v0)
    /* EBC34 800DCC84 AC4B0000 */  sw         $t3, 0x0($v0)
    /* EBC38 800DCC88 8CA20000 */  lw         $v0, 0x0($a1)
    /* EBC3C 800DCC8C 3C0FF590 */  lui        $t7, (0xF5900000 >> 16)
    /* EBC40 800DCC90 3C0BE600 */  lui        $t3, (0xE6000000 >> 16)
    /* EBC44 800DCC94 244E0008 */  addiu      $t6, $v0, 0x8
    /* EBC48 800DCC98 ACAE0000 */  sw         $t6, 0x0($a1)
    /* EBC4C 800DCC9C AC580004 */  sw         $t8, 0x4($v0)
    /* EBC50 800DCCA0 AC4F0000 */  sw         $t7, 0x0($v0)
    /* EBC54 800DCCA4 8CA20000 */  lw         $v0, 0x0($a1)
    /* EBC58 800DCCA8 3C0E070F */  lui        $t6, (0x70FF400 >> 16)
    /* EBC5C 800DCCAC 35CEF400 */  ori        $t6, $t6, (0x70FF400 & 0xFFFF)
    /* EBC60 800DCCB0 24590008 */  addiu      $t9, $v0, 0x8
    /* EBC64 800DCCB4 ACB90000 */  sw         $t9, 0x0($a1)
    /* EBC68 800DCCB8 AC400004 */  sw         $zero, 0x4($v0)
    /* EBC6C 800DCCBC AC4B0000 */  sw         $t3, 0x0($v0)
    /* EBC70 800DCCC0 8CA20000 */  lw         $v0, 0x0($a1)
    /* EBC74 800DCCC4 3C0DF300 */  lui        $t5, (0xF3000000 >> 16)
    /* EBC78 800DCCC8 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
    /* EBC7C 800DCCCC 244C0008 */  addiu      $t4, $v0, 0x8
    /* EBC80 800DCCD0 ACAC0000 */  sw         $t4, 0x0($a1)
    /* EBC84 800DCCD4 AC4E0004 */  sw         $t6, 0x4($v0)
    /* EBC88 800DCCD8 AC4D0000 */  sw         $t5, 0x0($v0)
    /* EBC8C 800DCCDC 8CA20000 */  lw         $v0, 0x0($a1)
    /* EBC90 800DCCE0 3C0C0008 */  lui        $t4, (0x80200 >> 16)
    /* EBC94 800DCCE4 3C0BF580 */  lui        $t3, (0xF5800400 >> 16)
    /* EBC98 800DCCE8 244F0008 */  addiu      $t7, $v0, 0x8
    /* EBC9C 800DCCEC ACAF0000 */  sw         $t7, 0x0($a1)
    /* EBCA0 800DCCF0 AC400004 */  sw         $zero, 0x4($v0)
    /* EBCA4 800DCCF4 AC580000 */  sw         $t8, 0x0($v0)
    /* EBCA8 800DCCF8 8CA20000 */  lw         $v0, 0x0($a1)
    /* EBCAC 800DCCFC 3C014014 */  lui        $at, (0x40140000 >> 16)
    /* EBCB0 800DCD00 44812800 */  mtc1       $at, $f5
    /* EBCB4 800DCD04 24590008 */  addiu      $t9, $v0, 0x8
    /* EBCB8 800DCD08 ACB90000 */  sw         $t9, 0x0($a1)
    /* EBCBC 800DCD0C 356B0400 */  ori        $t3, $t3, (0xF5800400 & 0xFFFF)
    /* EBCC0 800DCD10 358C0200 */  ori        $t4, $t4, (0x80200 & 0xFFFF)
    /* EBCC4 800DCD14 AC4C0004 */  sw         $t4, 0x4($v0)
    /* EBCC8 800DCD18 AC4B0000 */  sw         $t3, 0x0($v0)
    /* EBCCC 800DCD1C 8CA20000 */  lw         $v0, 0x0($a1)
    /* EBCD0 800DCD20 4624A03C */  c.lt.d     $f20, $f4
    /* EBCD4 800DCD24 3C0F0007 */  lui        $t7, (0x7C07C >> 16)
    /* EBCD8 800DCD28 244D0008 */  addiu      $t5, $v0, 0x8
    /* EBCDC 800DCD2C ACAD0000 */  sw         $t5, 0x0($a1)
    /* EBCE0 800DCD30 35EFC07C */  ori        $t7, $t7, (0x7C07C & 0xFFFF)
    /* EBCE4 800DCD34 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
    /* EBCE8 800DCD38 AC4E0000 */  sw         $t6, 0x0($v0)
    /* EBCEC 800DCD3C 45000066 */  bc1f       .L800DCED8_EBE88
    /* EBCF0 800DCD40 AC4F0004 */   sw        $t7, 0x4($v0)
    /* EBCF4 800DCD44 C7A600F4 */  lwc1       $f6, 0xF4($sp)
    /* EBCF8 800DCD48 3C018014 */  lui        $at, %hi(D_801440F0)
    /* EBCFC 800DCD4C D43040F0 */  ldc1       $f16, %lo(D_801440F0)($at)
    /* EBD00 800DCD50 46003221 */  cvt.d.s    $f8, $f6
    /* EBD04 800DCD54 3C014030 */  lui        $at, (0x40300000 >> 16)
    /* EBD08 800DCD58 46288281 */  sub.d      $f10, $f16, $f8
    /* EBD0C 800DCD5C 44819800 */  mtc1       $at, $f19
    /* EBD10 800DCD60 44809000 */  mtc1       $zero, $f18
    /* EBD14 800DCD64 24190001 */  addiu      $t9, $zero, 0x1
    /* EBD18 800DCD68 240C00FF */  addiu      $t4, $zero, 0xFF
    /* EBD1C 800DCD6C 46325103 */  div.d      $f4, $f10, $f18
    /* EBD20 800DCD70 01906823 */  subu       $t5, $t4, $s0
    /* EBD24 800DCD74 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* EBD28 800DCD78 4458F800 */  cfc1       $t8, $31
    /* EBD2C 800DCD7C 44D9F800 */  ctc1       $t9, $31
    /* EBD30 800DCD80 00000000 */  nop
    /* EBD34 800DCD84 462021A4 */  cvt.w.d    $f6, $f4
    /* EBD38 800DCD88 4459F800 */  cfc1       $t9, $31
    /* EBD3C 800DCD8C 00000000 */  nop
    /* EBD40 800DCD90 33390078 */  andi       $t9, $t9, 0x78
    /* EBD44 800DCD94 53200014 */  beql       $t9, $zero, .L800DCDE8_EBD98
    /* EBD48 800DCD98 44193000 */   mfc1      $t9, $f6
    /* EBD4C 800DCD9C 44813800 */  mtc1       $at, $f7
    /* EBD50 800DCDA0 44803000 */  mtc1       $zero, $f6
    /* EBD54 800DCDA4 24190001 */  addiu      $t9, $zero, 0x1
    /* EBD58 800DCDA8 46262181 */  sub.d      $f6, $f4, $f6
    /* EBD5C 800DCDAC 44D9F800 */  ctc1       $t9, $31
    /* EBD60 800DCDB0 00000000 */  nop
    /* EBD64 800DCDB4 462031A4 */  cvt.w.d    $f6, $f6
    /* EBD68 800DCDB8 4459F800 */  cfc1       $t9, $31
    /* EBD6C 800DCDBC 00000000 */  nop
    /* EBD70 800DCDC0 33390078 */  andi       $t9, $t9, 0x78
    /* EBD74 800DCDC4 17200005 */  bnez       $t9, .L800DCDDC_EBD8C
    /* EBD78 800DCDC8 00000000 */   nop
    /* EBD7C 800DCDCC 44193000 */  mfc1       $t9, $f6
    /* EBD80 800DCDD0 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* EBD84 800DCDD4 10000007 */  b          .L800DCDF4_EBDA4
    /* EBD88 800DCDD8 0321C825 */   or        $t9, $t9, $at
  .L800DCDDC_EBD8C:
    /* EBD8C 800DCDDC 10000005 */  b          .L800DCDF4_EBDA4
    /* EBD90 800DCDE0 2419FFFF */   addiu     $t9, $zero, -0x1
    /* EBD94 800DCDE4 44193000 */  mfc1       $t9, $f6
  .L800DCDE8_EBD98:
    /* EBD98 800DCDE8 00000000 */  nop
    /* EBD9C 800DCDEC 0720FFFB */  bltz       $t9, .L800DCDDC_EBD8C
    /* EBDA0 800DCDF0 00000000 */   nop
  .L800DCDF4_EBDA4:
    /* EBDA4 800DCDF4 332BFFFF */  andi       $t3, $t9, 0xFFFF
    /* EBDA8 800DCDF8 448B8000 */  mtc1       $t3, $f16
    /* EBDAC 800DCDFC 44D8F800 */  ctc1       $t8, $31
    /* EBDB0 800DCE00 448D2000 */  mtc1       $t5, $f4
    /* EBDB4 800DCE04 05610005 */  bgez       $t3, .L800DCE1C_EBDCC
    /* EBDB8 800DCE08 46808220 */   cvt.s.w   $f8, $f16
    /* EBDBC 800DCE0C 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* EBDC0 800DCE10 44815000 */  mtc1       $at, $f10
    /* EBDC4 800DCE14 00000000 */  nop
    /* EBDC8 800DCE18 460A4200 */  add.s      $f8, $f8, $f10
  .L800DCE1C_EBDCC:
    /* EBDCC 800DCE1C 468021A0 */  cvt.s.w    $f6, $f4
    /* EBDD0 800DCE20 3C018014 */  lui        $at, %hi(D_801440F8)
    /* EBDD4 800DCE24 C43240F8 */  lwc1       $f18, %lo(D_801440F8)($at)
    /* EBDD8 800DCE28 24120001 */  addiu      $s2, $zero, 0x1
    /* EBDDC 800DCE2C 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* EBDE0 800DCE30 46069402 */  mul.s      $f16, $f18, $f6
    /* EBDE4 800DCE34 00000000 */  nop
    /* EBDE8 800DCE38 46104282 */  mul.s      $f10, $f8, $f16
    /* EBDEC 800DCE3C 444EF800 */  cfc1       $t6, $31
    /* EBDF0 800DCE40 44D2F800 */  ctc1       $s2, $31
    /* EBDF4 800DCE44 00000000 */  nop
    /* EBDF8 800DCE48 46005124 */  cvt.w.s    $f4, $f10
    /* EBDFC 800DCE4C 4452F800 */  cfc1       $s2, $31
    /* EBE00 800DCE50 00000000 */  nop
    /* EBE04 800DCE54 32520078 */  andi       $s2, $s2, 0x78
    /* EBE08 800DCE58 12400018 */  beqz       $s2, .L800DCEBC_EBE6C
    /* EBE0C 800DCE5C 00000000 */   nop
    /* EBE10 800DCE60 44812000 */  mtc1       $at, $f4
    /* EBE14 800DCE64 24120001 */  addiu      $s2, $zero, 0x1
    /* EBE18 800DCE68 46045101 */  sub.s      $f4, $f10, $f4
    /* EBE1C 800DCE6C 44D2F800 */  ctc1       $s2, $31
    /* EBE20 800DCE70 00000000 */  nop
    /* EBE24 800DCE74 46002124 */  cvt.w.s    $f4, $f4
    /* EBE28 800DCE78 4452F800 */  cfc1       $s2, $31
    /* EBE2C 800DCE7C 00000000 */  nop
    /* EBE30 800DCE80 32520078 */  andi       $s2, $s2, 0x78
    /* EBE34 800DCE84 56400009 */  bnel       $s2, $zero, .L800DCEAC_EBE5C
    /* EBE38 800DCE88 2412FFFF */   addiu     $s2, $zero, -0x1
    /* EBE3C 800DCE8C 44122000 */  mfc1       $s2, $f4
    /* EBE40 800DCE90 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* EBE44 800DCE94 44CEF800 */  ctc1       $t6, $31
    /* EBE48 800DCE98 02419025 */  or         $s2, $s2, $at
    /* EBE4C 800DCE9C 324FFFFF */  andi       $t7, $s2, 0xFFFF
    /* EBE50 800DCEA0 10000065 */  b          .L800DD038_EBFE8
    /* EBE54 800DCEA4 01E09025 */   or        $s2, $t7, $zero
  .L800DCEA8_EBE58:
    /* EBE58 800DCEA8 2412FFFF */  addiu      $s2, $zero, -0x1
  .L800DCEAC_EBE5C:
    /* EBE5C 800DCEAC 324FFFFF */  andi       $t7, $s2, 0xFFFF
    /* EBE60 800DCEB0 44CEF800 */  ctc1       $t6, $31
    /* EBE64 800DCEB4 10000060 */  b          .L800DD038_EBFE8
    /* EBE68 800DCEB8 01E09025 */   or        $s2, $t7, $zero
  .L800DCEBC_EBE6C:
    /* EBE6C 800DCEBC 44122000 */  mfc1       $s2, $f4
    /* EBE70 800DCEC0 00000000 */  nop
    /* EBE74 800DCEC4 0640FFF8 */  bltz       $s2, .L800DCEA8_EBE58
    /* EBE78 800DCEC8 324FFFFF */   andi      $t7, $s2, 0xFFFF
    /* EBE7C 800DCECC 44CEF800 */  ctc1       $t6, $31
    /* EBE80 800DCED0 10000059 */  b          .L800DD038_EBFE8
    /* EBE84 800DCED4 01E09025 */   or        $s2, $t7, $zero
  .L800DCED8_EBE88:
    /* EBE88 800DCED8 C7A600F4 */  lwc1       $f6, 0xF4($sp)
    /* EBE8C 800DCEDC 3C018014 */  lui        $at, %hi(D_80144100)
    /* EBE90 800DCEE0 D4324100 */  ldc1       $f18, %lo(D_80144100)($at)
    /* EBE94 800DCEE4 46003221 */  cvt.d.s    $f8, $f6
    /* EBE98 800DCEE8 3C014030 */  lui        $at, (0x40300000 >> 16)
    /* EBE9C 800DCEEC 46289401 */  sub.d      $f16, $f18, $f8
    /* EBEA0 800DCEF0 44815800 */  mtc1       $at, $f11
    /* EBEA4 800DCEF4 44805000 */  mtc1       $zero, $f10
    /* EBEA8 800DCEF8 24190001 */  addiu      $t9, $zero, 0x1
    /* EBEAC 800DCEFC 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* EBEB0 800DCF00 462A8103 */  div.d      $f4, $f16, $f10
    /* EBEB4 800DCF04 4458F800 */  cfc1       $t8, $31
    /* EBEB8 800DCF08 44D9F800 */  ctc1       $t9, $31
    /* EBEBC 800DCF0C 00000000 */  nop
    /* EBEC0 800DCF10 462021A4 */  cvt.w.d    $f6, $f4
    /* EBEC4 800DCF14 4459F800 */  cfc1       $t9, $31
    /* EBEC8 800DCF18 00000000 */  nop
    /* EBECC 800DCF1C 33390078 */  andi       $t9, $t9, 0x78
    /* EBED0 800DCF20 53200014 */  beql       $t9, $zero, .L800DCF74_EBF24
    /* EBED4 800DCF24 44193000 */   mfc1      $t9, $f6
    /* EBED8 800DCF28 44813800 */  mtc1       $at, $f7
    /* EBEDC 800DCF2C 44803000 */  mtc1       $zero, $f6
    /* EBEE0 800DCF30 24190001 */  addiu      $t9, $zero, 0x1
    /* EBEE4 800DCF34 46262181 */  sub.d      $f6, $f4, $f6
    /* EBEE8 800DCF38 44D9F800 */  ctc1       $t9, $31
    /* EBEEC 800DCF3C 00000000 */  nop
    /* EBEF0 800DCF40 462031A4 */  cvt.w.d    $f6, $f6
    /* EBEF4 800DCF44 4459F800 */  cfc1       $t9, $31
    /* EBEF8 800DCF48 00000000 */  nop
    /* EBEFC 800DCF4C 33390078 */  andi       $t9, $t9, 0x78
    /* EBF00 800DCF50 17200005 */  bnez       $t9, .L800DCF68_EBF18
    /* EBF04 800DCF54 00000000 */   nop
    /* EBF08 800DCF58 44193000 */  mfc1       $t9, $f6
    /* EBF0C 800DCF5C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* EBF10 800DCF60 10000007 */  b          .L800DCF80_EBF30
    /* EBF14 800DCF64 0321C825 */   or        $t9, $t9, $at
  .L800DCF68_EBF18:
    /* EBF18 800DCF68 10000005 */  b          .L800DCF80_EBF30
    /* EBF1C 800DCF6C 2419FFFF */   addiu     $t9, $zero, -0x1
    /* EBF20 800DCF70 44193000 */  mfc1       $t9, $f6
  .L800DCF74_EBF24:
    /* EBF24 800DCF74 00000000 */  nop
    /* EBF28 800DCF78 0720FFFB */  bltz       $t9, .L800DCF68_EBF18
    /* EBF2C 800DCF7C 00000000 */   nop
  .L800DCF80_EBF30:
    /* EBF30 800DCF80 44D8F800 */  ctc1       $t8, $31
    /* EBF34 800DCF84 332BFFFF */  andi       $t3, $t9, 0xFFFF
    /* EBF38 800DCF88 448B9000 */  mtc1       $t3, $f18
    /* EBF3C 800DCF8C 46167283 */  div.s      $f10, $f14, $f22
    /* EBF40 800DCF90 05610005 */  bgez       $t3, .L800DCFA8_EBF58
    /* EBF44 800DCF94 46809220 */   cvt.s.w   $f8, $f18
    /* EBF48 800DCF98 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* EBF4C 800DCF9C 44818000 */  mtc1       $at, $f16
    /* EBF50 800DCFA0 00000000 */  nop
    /* EBF54 800DCFA4 46104200 */  add.s      $f8, $f8, $f16
  .L800DCFA8_EBF58:
    /* EBF58 800DCFA8 460A4103 */  div.s      $f4, $f8, $f10
    /* EBF5C 800DCFAC 24120001 */  addiu      $s2, $zero, 0x1
    /* EBF60 800DCFB0 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* EBF64 800DCFB4 444CF800 */  cfc1       $t4, $31
    /* EBF68 800DCFB8 44D2F800 */  ctc1       $s2, $31
    /* EBF6C 800DCFBC 00000000 */  nop
    /* EBF70 800DCFC0 460021A4 */  cvt.w.s    $f6, $f4
    /* EBF74 800DCFC4 4452F800 */  cfc1       $s2, $31
    /* EBF78 800DCFC8 00000000 */  nop
    /* EBF7C 800DCFCC 32520078 */  andi       $s2, $s2, 0x78
    /* EBF80 800DCFD0 52400013 */  beql       $s2, $zero, .L800DD020_EBFD0
    /* EBF84 800DCFD4 44123000 */   mfc1      $s2, $f6
    /* EBF88 800DCFD8 44813000 */  mtc1       $at, $f6
    /* EBF8C 800DCFDC 24120001 */  addiu      $s2, $zero, 0x1
    /* EBF90 800DCFE0 46062181 */  sub.s      $f6, $f4, $f6
    /* EBF94 800DCFE4 44D2F800 */  ctc1       $s2, $31
    /* EBF98 800DCFE8 00000000 */  nop
    /* EBF9C 800DCFEC 460031A4 */  cvt.w.s    $f6, $f6
    /* EBFA0 800DCFF0 4452F800 */  cfc1       $s2, $31
    /* EBFA4 800DCFF4 00000000 */  nop
    /* EBFA8 800DCFF8 32520078 */  andi       $s2, $s2, 0x78
    /* EBFAC 800DCFFC 16400005 */  bnez       $s2, .L800DD014_EBFC4
    /* EBFB0 800DD000 00000000 */   nop
    /* EBFB4 800DD004 44123000 */  mfc1       $s2, $f6
    /* EBFB8 800DD008 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* EBFBC 800DD00C 10000007 */  b          .L800DD02C_EBFDC
    /* EBFC0 800DD010 02419025 */   or        $s2, $s2, $at
  .L800DD014_EBFC4:
    /* EBFC4 800DD014 10000005 */  b          .L800DD02C_EBFDC
    /* EBFC8 800DD018 2412FFFF */   addiu     $s2, $zero, -0x1
    /* EBFCC 800DD01C 44123000 */  mfc1       $s2, $f6
  .L800DD020_EBFD0:
    /* EBFD0 800DD020 00000000 */  nop
    /* EBFD4 800DD024 0640FFFB */  bltz       $s2, .L800DD014_EBFC4
    /* EBFD8 800DD028 00000000 */   nop
  .L800DD02C_EBFDC:
    /* EBFDC 800DD02C 44CCF800 */  ctc1       $t4, $31
    /* EBFE0 800DD030 324DFFFF */  andi       $t5, $s2, 0xFFFF
    /* EBFE4 800DD034 01A09025 */  or         $s2, $t5, $zero
  .L800DD038_EBFE8:
    /* EBFE8 800DD038 2A410100 */  slti       $at, $s2, 0x100
    /* EBFEC 800DD03C 14200002 */  bnez       $at, .L800DD048_EBFF8
    /* EBFF0 800DD040 C7B200F4 */   lwc1      $f18, 0xF4($sp)
    /* EBFF4 800DD044 241200FF */  addiu      $s2, $zero, 0xFF
  .L800DD048_EBFF8:
    /* EBFF8 800DD048 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
    /* EBFFC 800DD04C 44818000 */  mtc1       $at, $f16
    /* EC000 800DD050 240F0001 */  addiu      $t7, $zero, 0x1
    /* EC004 800DD054 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* EC008 800DD058 46109203 */  div.s      $f8, $f18, $f16
    /* EC00C 800DD05C 00008025 */  or         $s0, $zero, $zero
    /* EC010 800DD060 444EF800 */  cfc1       $t6, $31
    /* EC014 800DD064 44CFF800 */  ctc1       $t7, $31
    /* EC018 800DD068 00000000 */  nop
    /* EC01C 800DD06C 460042A4 */  cvt.w.s    $f10, $f8
    /* EC020 800DD070 444FF800 */  cfc1       $t7, $31
    /* EC024 800DD074 00000000 */  nop
    /* EC028 800DD078 31EF0078 */  andi       $t7, $t7, 0x78
    /* EC02C 800DD07C 51E00013 */  beql       $t7, $zero, .L800DD0CC_EC07C
    /* EC030 800DD080 440F5000 */   mfc1      $t7, $f10
    /* EC034 800DD084 44815000 */  mtc1       $at, $f10
    /* EC038 800DD088 240F0001 */  addiu      $t7, $zero, 0x1
    /* EC03C 800DD08C 460A4281 */  sub.s      $f10, $f8, $f10
    /* EC040 800DD090 44CFF800 */  ctc1       $t7, $31
    /* EC044 800DD094 00000000 */  nop
    /* EC048 800DD098 460052A4 */  cvt.w.s    $f10, $f10
    /* EC04C 800DD09C 444FF800 */  cfc1       $t7, $31
    /* EC050 800DD0A0 00000000 */  nop
    /* EC054 800DD0A4 31EF0078 */  andi       $t7, $t7, 0x78
    /* EC058 800DD0A8 15E00005 */  bnez       $t7, .L800DD0C0_EC070
    /* EC05C 800DD0AC 00000000 */   nop
    /* EC060 800DD0B0 440F5000 */  mfc1       $t7, $f10
    /* EC064 800DD0B4 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* EC068 800DD0B8 10000007 */  b          .L800DD0D8_EC088
    /* EC06C 800DD0BC 01E17825 */   or        $t7, $t7, $at
  .L800DD0C0_EC070:
    /* EC070 800DD0C0 10000005 */  b          .L800DD0D8_EC088
    /* EC074 800DD0C4 240FFFFF */   addiu     $t7, $zero, -0x1
    /* EC078 800DD0C8 440F5000 */  mfc1       $t7, $f10
  .L800DD0CC_EC07C:
    /* EC07C 800DD0CC 00000000 */  nop
    /* EC080 800DD0D0 05E0FFFB */  bltz       $t7, .L800DD0C0_EC070
    /* EC084 800DD0D4 00000000 */   nop
  .L800DD0D8_EC088:
    /* EC088 800DD0D8 31F8FFFF */  andi       $t8, $t7, 0xFFFF
    /* EC08C 800DD0DC 44982000 */  mtc1       $t8, $f4
    /* EC090 800DD0E0 44CEF800 */  ctc1       $t6, $31
    /* EC094 800DD0E4 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* EC098 800DD0E8 07010004 */  bgez       $t8, .L800DD0FC_EC0AC
    /* EC09C 800DD0EC 46802520 */   cvt.s.w   $f20, $f4
    /* EC0A0 800DD0F0 44813000 */  mtc1       $at, $f6
    /* EC0A4 800DD0F4 00000000 */  nop
    /* EC0A8 800DD0F8 4606A500 */  add.s      $f20, $f20, $f6
  .L800DD0FC_EC0AC:
    /* EC0AC 800DD0FC 00101880 */  sll        $v1, $s0, 2
    /* EC0B0 800DD100 3C018014 */  lui        $at, %hi(D_8013DFB4)
    /* EC0B4 800DD104 00230821 */  addu       $at, $at, $v1
    /* EC0B8 800DD108 C432DFB4 */  lwc1       $f18, %lo(D_8013DFB4)($at)
    /* EC0BC 800DD10C 24040001 */  addiu      $a0, $zero, 0x1
    /* EC0C0 800DD110 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* EC0C4 800DD114 46149402 */  mul.s      $f16, $f18, $f20
    /* EC0C8 800DD118 4459F800 */  cfc1       $t9, $31
    /* EC0CC 800DD11C 44C4F800 */  ctc1       $a0, $31
    /* EC0D0 800DD120 00000000 */  nop
    /* EC0D4 800DD124 46008224 */  cvt.w.s    $f8, $f16
    /* EC0D8 800DD128 4444F800 */  cfc1       $a0, $31
    /* EC0DC 800DD12C 00000000 */  nop
    /* EC0E0 800DD130 30840078 */  andi       $a0, $a0, 0x78
    /* EC0E4 800DD134 50800013 */  beql       $a0, $zero, .L800DD184_EC134
    /* EC0E8 800DD138 44044000 */   mfc1      $a0, $f8
    /* EC0EC 800DD13C 44814000 */  mtc1       $at, $f8
    /* EC0F0 800DD140 24040001 */  addiu      $a0, $zero, 0x1
    /* EC0F4 800DD144 46088201 */  sub.s      $f8, $f16, $f8
    /* EC0F8 800DD148 44C4F800 */  ctc1       $a0, $31
    /* EC0FC 800DD14C 00000000 */  nop
    /* EC100 800DD150 46004224 */  cvt.w.s    $f8, $f8
    /* EC104 800DD154 4444F800 */  cfc1       $a0, $31
    /* EC108 800DD158 00000000 */  nop
    /* EC10C 800DD15C 30840078 */  andi       $a0, $a0, 0x78
    /* EC110 800DD160 14800005 */  bnez       $a0, .L800DD178_EC128
    /* EC114 800DD164 00000000 */   nop
    /* EC118 800DD168 44044000 */  mfc1       $a0, $f8
    /* EC11C 800DD16C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* EC120 800DD170 10000007 */  b          .L800DD190_EC140
    /* EC124 800DD174 00812025 */   or        $a0, $a0, $at
  .L800DD178_EC128:
    /* EC128 800DD178 10000005 */  b          .L800DD190_EC140
    /* EC12C 800DD17C 2404FFFF */   addiu     $a0, $zero, -0x1
    /* EC130 800DD180 44044000 */  mfc1       $a0, $f8
  .L800DD184_EC134:
    /* EC134 800DD184 00000000 */  nop
    /* EC138 800DD188 0480FFFB */  bltz       $a0, .L800DD178_EC128
    /* EC13C 800DD18C 00000000 */   nop
  .L800DD190_EC140:
    /* EC140 800DD190 44D9F800 */  ctc1       $t9, $31
    /* EC144 800DD194 C7A400C0 */  lwc1       $f4, 0xC0($sp)
    /* EC148 800DD198 3C018014 */  lui        $at, %hi(D_8013DFCC)
    /* EC14C 800DD19C 00230821 */  addu       $at, $at, $v1
    /* EC150 800DD1A0 46162183 */  div.s      $f6, $f4, $f22
    /* EC154 800DD1A4 C420DFCC */  lwc1       $f0, %lo(D_8013DFCC)($at)
    /* EC158 800DD1A8 C7A400C4 */  lwc1       $f4, 0xC4($sp)
    /* EC15C 800DD1AC 00106080 */  sll        $t4, $s0, 2
    /* EC160 800DD1B0 3C0D8014 */  lui        $t5, %hi(D_8013E330)
    /* EC164 800DD1B4 25ADE330 */  addiu      $t5, $t5, %lo(D_8013E330)
    /* EC168 800DD1B8 01906023 */  subu       $t4, $t4, $s0
    /* EC16C 800DD1BC 018D1021 */  addu       $v0, $t4, $t5
    /* EC170 800DD1C0 904E0000 */  lbu        $t6, 0x0($v0)
    /* EC174 800DD1C4 904F0001 */  lbu        $t7, 0x1($v0)
    /* EC178 800DD1C8 90580002 */  lbu        $t8, 0x2($v0)
    /* EC17C 800DD1CC A3AE009C */  sb         $t6, 0x9C($sp)
    /* EC180 800DD1D0 A3AF009D */  sb         $t7, 0x9D($sp)
    /* EC184 800DD1D4 A3B8009E */  sb         $t8, 0x9E($sp)
    /* EC188 800DD1D8 C66A0000 */  lwc1       $f10, 0x0($s3)
    /* EC18C 800DD1DC 308BFFFF */  andi       $t3, $a0, 0xFFFF
    /* EC190 800DD1E0 3C018015 */  lui        $at, %hi(D_80153BC4)
    /* EC194 800DD1E4 27B9009C */  addiu      $t9, $sp, 0x9C
    /* EC198 800DD1E8 46060482 */  mul.s      $f18, $f0, $f6
    /* EC19C 800DD1EC 46162183 */  div.s      $f6, $f4, $f22
    /* EC1A0 800DD1F0 C7A400C8 */  lwc1       $f4, 0xC8($sp)
    /* EC1A4 800DD1F4 46125401 */  sub.s      $f16, $f10, $f18
    /* EC1A8 800DD1F8 E6300000 */  swc1       $f16, 0x0($s1)
    /* EC1AC 800DD1FC C6680004 */  lwc1       $f8, 0x4($s3)
    /* EC1B0 800DD200 46060282 */  mul.s      $f10, $f0, $f6
    /* EC1B4 800DD204 46162183 */  div.s      $f6, $f4, $f22
    /* EC1B8 800DD208 460A4481 */  sub.s      $f18, $f8, $f10
    /* EC1BC 800DD20C E6320004 */  swc1       $f18, 0x4($s1)
    /* EC1C0 800DD210 C6700008 */  lwc1       $f16, 0x8($s3)
    /* EC1C4 800DD214 448B9000 */  mtc1       $t3, $f18
    /* EC1C8 800DD218 00000000 */  nop
    /* EC1CC 800DD21C 46809120 */  cvt.s.w    $f4, $f18
    /* EC1D0 800DD220 46060202 */  mul.s      $f8, $f0, $f6
    /* EC1D4 800DD224 46088281 */  sub.s      $f10, $f16, $f8
    /* EC1D8 800DD228 E62A0008 */  swc1       $f10, 0x8($s1)
    /* EC1DC 800DD22C 05610005 */  bgez       $t3, .L800DD244_EC1F4
    /* EC1E0 800DD230 AC393BC4 */   sw        $t9, %lo(D_80153BC4)($at)
    /* EC1E4 800DD234 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* EC1E8 800DD238 44813000 */  mtc1       $at, $f6
    /* EC1EC 800DD23C 00000000 */  nop
    /* EC1F0 800DD240 46062100 */  add.s      $f4, $f4, $f6
  .L800DD244_EC1F4:
    /* EC1F4 800DD244 3C018015 */  lui        $at, %hi(D_80153BC8)
    /* EC1F8 800DD248 E4243BC8 */  swc1       $f4, %lo(D_80153BC8)($at)
    /* EC1FC 800DD24C 3C018015 */  lui        $at, %hi(D_80153BCC)
    /* EC200 800DD250 0C036CD4 */  jal        func_800DB350_EA300
    /* EC204 800DD254 A0323BCC */   sb        $s2, %lo(D_80153BCC)($at)
    /* EC208 800DD258 26100001 */  addiu      $s0, $s0, 0x1
    /* EC20C 800DD25C 320B00FF */  andi       $t3, $s0, 0xFF
    /* EC210 800DD260 29610006 */  slti       $at, $t3, 0x6
    /* EC214 800DD264 3C058006 */  lui        $a1, %hi(D_8005BB2C)
    /* EC218 800DD268 01608025 */  or         $s0, $t3, $zero
    /* EC21C 800DD26C 1420FFA3 */  bnez       $at, .L800DD0FC_EC0AC
    /* EC220 800DD270 24A5BB2C */   addiu     $a1, $a1, %lo(D_8005BB2C)
    /* EC224 800DD274 3C018014 */  lui        $at, %hi(D_80144108)
    /* EC228 800DD278 D4204108 */  ldc1       $f0, %lo(D_80144108)($at)
    /* EC22C 800DD27C 8CA20000 */  lw         $v0, 0x0($a1)
    /* EC230 800DD280 3C014040 */  lui        $at, (0x40400000 >> 16)
    /* EC234 800DD284 4481B000 */  mtc1       $at, $f22
    /* EC238 800DD288 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* EC23C 800DD28C 3C0E0101 */  lui        $t6, %hi(D_100DC00)
    /* EC240 800DD290 244C0008 */  addiu      $t4, $v0, 0x8
    /* EC244 800DD294 ACAC0000 */  sw         $t4, 0x0($a1)
    /* EC248 800DD298 25CEDC00 */  addiu      $t6, $t6, %lo(D_100DC00)
    /* EC24C 800DD29C 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* EC250 800DD2A0 01C17824 */  and        $t7, $t6, $at
    /* EC254 800DD2A4 3C0DFD90 */  lui        $t5, (0xFD900000 >> 16)
    /* EC258 800DD2A8 AC4D0000 */  sw         $t5, 0x0($v0)
    /* EC25C 800DD2AC AC4F0004 */  sw         $t7, 0x4($v0)
    /* EC260 800DD2B0 8CA20000 */  lw         $v0, 0x0($a1)
    /* EC264 800DD2B4 3C0B0708 */  lui        $t3, (0x7080200 >> 16)
    /* EC268 800DD2B8 356B0200 */  ori        $t3, $t3, (0x7080200 & 0xFFFF)
    /* EC26C 800DD2BC 24580008 */  addiu      $t8, $v0, 0x8
    /* EC270 800DD2C0 ACB80000 */  sw         $t8, 0x0($a1)
    /* EC274 800DD2C4 3C19F590 */  lui        $t9, (0xF5900000 >> 16)
    /* EC278 800DD2C8 AC590000 */  sw         $t9, 0x0($v0)
    /* EC27C 800DD2CC AC4B0004 */  sw         $t3, 0x4($v0)
    /* EC280 800DD2D0 8CA20000 */  lw         $v0, 0x0($a1)
    /* EC284 800DD2D4 3C0DE600 */  lui        $t5, (0xE6000000 >> 16)
    /* EC288 800DD2D8 3C18070F */  lui        $t8, (0x70FF400 >> 16)
    /* EC28C 800DD2DC 244C0008 */  addiu      $t4, $v0, 0x8
    /* EC290 800DD2E0 ACAC0000 */  sw         $t4, 0x0($a1)
    /* EC294 800DD2E4 AC400004 */  sw         $zero, 0x4($v0)
    /* EC298 800DD2E8 AC4D0000 */  sw         $t5, 0x0($v0)
    /* EC29C 800DD2EC 8CA20000 */  lw         $v0, 0x0($a1)
    /* EC2A0 800DD2F0 3718F400 */  ori        $t8, $t8, (0x70FF400 & 0xFFFF)
    /* EC2A4 800DD2F4 3C0FF300 */  lui        $t7, (0xF3000000 >> 16)
    /* EC2A8 800DD2F8 244E0008 */  addiu      $t6, $v0, 0x8
    /* EC2AC 800DD2FC ACAE0000 */  sw         $t6, 0x0($a1)
    /* EC2B0 800DD300 AC580004 */  sw         $t8, 0x4($v0)
    /* EC2B4 800DD304 AC4F0000 */  sw         $t7, 0x0($v0)
    /* EC2B8 800DD308 8CA20000 */  lw         $v0, 0x0($a1)
    /* EC2BC 800DD30C 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
    /* EC2C0 800DD310 3C0E0008 */  lui        $t6, (0x80200 >> 16)
    /* EC2C4 800DD314 24590008 */  addiu      $t9, $v0, 0x8
    /* EC2C8 800DD318 ACB90000 */  sw         $t9, 0x0($a1)
    /* EC2CC 800DD31C AC400004 */  sw         $zero, 0x4($v0)
    /* EC2D0 800DD320 AC4B0000 */  sw         $t3, 0x0($v0)
    /* EC2D4 800DD324 8CA20000 */  lw         $v0, 0x0($a1)
    /* EC2D8 800DD328 3C0DF580 */  lui        $t5, (0xF5800400 >> 16)
    /* EC2DC 800DD32C 35AD0400 */  ori        $t5, $t5, (0xF5800400 & 0xFFFF)
    /* EC2E0 800DD330 244C0008 */  addiu      $t4, $v0, 0x8
    /* EC2E4 800DD334 ACAC0000 */  sw         $t4, 0x0($a1)
    /* EC2E8 800DD338 35CE0200 */  ori        $t6, $t6, (0x80200 & 0xFFFF)
    /* EC2EC 800DD33C AC4E0004 */  sw         $t6, 0x4($v0)
    /* EC2F0 800DD340 AC4D0000 */  sw         $t5, 0x0($v0)
    /* EC2F4 800DD344 8CA20000 */  lw         $v0, 0x0($a1)
    /* EC2F8 800DD348 3C190007 */  lui        $t9, (0x7C07C >> 16)
    /* EC2FC 800DD34C 3739C07C */  ori        $t9, $t9, (0x7C07C & 0xFFFF)
    /* EC300 800DD350 244F0008 */  addiu      $t7, $v0, 0x8
    /* EC304 800DD354 ACAF0000 */  sw         $t7, 0x0($a1)
    /* EC308 800DD358 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* EC30C 800DD35C AC580000 */  sw         $t8, 0x0($v0)
    /* EC310 800DD360 AC590004 */  sw         $t9, 0x4($v0)
    /* EC314 800DD364 C7AA00C0 */  lwc1       $f10, 0xC0($sp)
    /* EC318 800DD368 C6700000 */  lwc1       $f16, 0x0($s3)
    /* EC31C 800DD36C 3C0B8015 */  lui        $t3, %hi(D_80153B80)
    /* EC320 800DD370 46165483 */  div.s      $f18, $f10, $f22
    /* EC324 800DD374 256B3B80 */  addiu      $t3, $t3, %lo(D_80153B80)
    /* EC328 800DD378 3C018015 */  lui        $at, %hi(D_80153BC4)
    /* EC32C 800DD37C 240D0001 */  addiu      $t5, $zero, 0x1
    /* EC330 800DD380 46008221 */  cvt.d.s    $f8, $f16
    /* EC334 800DD384 460091A1 */  cvt.d.s    $f6, $f18
    /* EC338 800DD388 46203102 */  mul.d      $f4, $f6, $f0
    /* EC33C 800DD38C 46244400 */  add.d      $f16, $f8, $f4
    /* EC340 800DD390 C7A800C4 */  lwc1       $f8, 0xC4($sp)
    /* EC344 800DD394 46164103 */  div.s      $f4, $f8, $f22
    /* EC348 800DD398 462082A0 */  cvt.s.d    $f10, $f16
    /* EC34C 800DD39C E62A0000 */  swc1       $f10, 0x0($s1)
    /* EC350 800DD3A0 C6720004 */  lwc1       $f18, 0x4($s3)
    /* EC354 800DD3A4 460091A1 */  cvt.d.s    $f6, $f18
    /* EC358 800DD3A8 46002421 */  cvt.d.s    $f16, $f4
    /* EC35C 800DD3AC 46208282 */  mul.d      $f10, $f16, $f0
    /* EC360 800DD3B0 462A3480 */  add.d      $f18, $f6, $f10
    /* EC364 800DD3B4 C7A600C8 */  lwc1       $f6, 0xC8($sp)
    /* EC368 800DD3B8 46163283 */  div.s      $f10, $f6, $f22
    /* EC36C 800DD3BC 46209220 */  cvt.s.d    $f8, $f18
    /* EC370 800DD3C0 E6280004 */  swc1       $f8, 0x4($s1)
    /* EC374 800DD3C4 C6640008 */  lwc1       $f4, 0x8($s3)
    /* EC378 800DD3C8 46002421 */  cvt.d.s    $f16, $f4
    /* EC37C 800DD3CC 460054A1 */  cvt.d.s    $f18, $f10
    /* EC380 800DD3D0 46209202 */  mul.d      $f8, $f18, $f0
    /* EC384 800DD3D4 46288100 */  add.d      $f4, $f16, $f8
    /* EC388 800DD3D8 462021A0 */  cvt.s.d    $f6, $f4
    /* EC38C 800DD3DC E6260008 */  swc1       $f6, 0x8($s1)
    /* EC390 800DD3E0 AC2B3BC4 */  sw         $t3, %lo(D_80153BC4)($at)
    /* EC394 800DD3E4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* EC398 800DD3E8 44815000 */  mtc1       $at, $f10
    /* EC39C 800DD3EC 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* EC3A0 800DD3F0 460AA482 */  mul.s      $f18, $f20, $f10
    /* EC3A4 800DD3F4 444CF800 */  cfc1       $t4, $31
    /* EC3A8 800DD3F8 44CDF800 */  ctc1       $t5, $31
    /* EC3AC 800DD3FC 00000000 */  nop
    /* EC3B0 800DD400 46009424 */  cvt.w.s    $f16, $f18
    /* EC3B4 800DD404 444DF800 */  cfc1       $t5, $31
    /* EC3B8 800DD408 00000000 */  nop
    /* EC3BC 800DD40C 31AD0078 */  andi       $t5, $t5, 0x78
    /* EC3C0 800DD410 51A00013 */  beql       $t5, $zero, .L800DD460_EC410
    /* EC3C4 800DD414 440D8000 */   mfc1      $t5, $f16
    /* EC3C8 800DD418 44818000 */  mtc1       $at, $f16
    /* EC3CC 800DD41C 240D0001 */  addiu      $t5, $zero, 0x1
    /* EC3D0 800DD420 46109401 */  sub.s      $f16, $f18, $f16
    /* EC3D4 800DD424 44CDF800 */  ctc1       $t5, $31
    /* EC3D8 800DD428 00000000 */  nop
    /* EC3DC 800DD42C 46008424 */  cvt.w.s    $f16, $f16
    /* EC3E0 800DD430 444DF800 */  cfc1       $t5, $31
    /* EC3E4 800DD434 00000000 */  nop
    /* EC3E8 800DD438 31AD0078 */  andi       $t5, $t5, 0x78
    /* EC3EC 800DD43C 15A00005 */  bnez       $t5, .L800DD454_EC404
    /* EC3F0 800DD440 00000000 */   nop
    /* EC3F4 800DD444 440D8000 */  mfc1       $t5, $f16
    /* EC3F8 800DD448 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* EC3FC 800DD44C 10000007 */  b          .L800DD46C_EC41C
    /* EC400 800DD450 01A16825 */   or        $t5, $t5, $at
  .L800DD454_EC404:
    /* EC404 800DD454 10000005 */  b          .L800DD46C_EC41C
    /* EC408 800DD458 240DFFFF */   addiu     $t5, $zero, -0x1
    /* EC40C 800DD45C 440D8000 */  mfc1       $t5, $f16
  .L800DD460_EC410:
    /* EC410 800DD460 00000000 */  nop
    /* EC414 800DD464 05A0FFFB */  bltz       $t5, .L800DD454_EC404
    /* EC418 800DD468 00000000 */   nop
  .L800DD46C_EC41C:
    /* EC41C 800DD46C 31AEFFFF */  andi       $t6, $t5, 0xFFFF
    /* EC420 800DD470 448E4000 */  mtc1       $t6, $f8
    /* EC424 800DD474 44CCF800 */  ctc1       $t4, $31
    /* EC428 800DD478 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* EC42C 800DD47C 05C10004 */  bgez       $t6, .L800DD490_EC440
    /* EC430 800DD480 46804120 */   cvt.s.w   $f4, $f8
    /* EC434 800DD484 44813000 */  mtc1       $at, $f6
    /* EC438 800DD488 00000000 */  nop
    /* EC43C 800DD48C 46062100 */  add.s      $f4, $f4, $f6
  .L800DD490_EC440:
    /* EC440 800DD490 3C018015 */  lui        $at, %hi(D_80153BC8)
    /* EC444 800DD494 E4243BC8 */  swc1       $f4, %lo(D_80153BC8)($at)
    /* EC448 800DD498 3C018015 */  lui        $at, %hi(D_80153BCC)
    /* EC44C 800DD49C 0C036CD4 */  jal        func_800DB350_EA300
    /* EC450 800DD4A0 A0323BCC */   sb        $s2, %lo(D_80153BCC)($at)
    /* EC454 800DD4A4 C7B200C0 */  lwc1       $f18, 0xC0($sp)
    /* EC458 800DD4A8 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* EC45C 800DD4AC 44810000 */  mtc1       $at, $f0
    /* EC460 800DD4B0 46169403 */  div.s      $f16, $f18, $f22
    /* EC464 800DD4B4 C7B200C4 */  lwc1       $f18, 0xC4($sp)
    /* EC468 800DD4B8 C66A0000 */  lwc1       $f10, 0x0($s3)
    /* EC46C 800DD4BC 3C014008 */  lui        $at, (0x40080000 >> 16)
    /* EC470 800DD4C0 44819800 */  mtc1       $at, $f19
    /* EC474 800DD4C4 24180001 */  addiu      $t8, $zero, 0x1
    /* EC478 800DD4C8 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* EC47C 800DD4CC 46008202 */  mul.s      $f8, $f16, $f0
    /* EC480 800DD4D0 46169403 */  div.s      $f16, $f18, $f22
    /* EC484 800DD4D4 C7B200C8 */  lwc1       $f18, 0xC8($sp)
    /* EC488 800DD4D8 46085180 */  add.s      $f6, $f10, $f8
    /* EC48C 800DD4DC E6260000 */  swc1       $f6, 0x0($s1)
    /* EC490 800DD4E0 C6640004 */  lwc1       $f4, 0x4($s3)
    /* EC494 800DD4E4 46008282 */  mul.s      $f10, $f16, $f0
    /* EC498 800DD4E8 46169403 */  div.s      $f16, $f18, $f22
    /* EC49C 800DD4EC 44809000 */  mtc1       $zero, $f18
    /* EC4A0 800DD4F0 460A2200 */  add.s      $f8, $f4, $f10
    /* EC4A4 800DD4F4 E6280004 */  swc1       $f8, 0x4($s1)
    /* EC4A8 800DD4F8 C6660008 */  lwc1       $f6, 0x8($s3)
    /* EC4AC 800DD4FC 4600A221 */  cvt.d.s    $f8, $f20
    /* EC4B0 800DD500 46008102 */  mul.s      $f4, $f16, $f0
    /* EC4B4 800DD504 46043280 */  add.s      $f10, $f6, $f4
    /* EC4B8 800DD508 46324402 */  mul.d      $f16, $f8, $f18
    /* EC4BC 800DD50C E62A0008 */  swc1       $f10, 0x8($s1)
    /* EC4C0 800DD510 444FF800 */  cfc1       $t7, $31
    /* EC4C4 800DD514 44D8F800 */  ctc1       $t8, $31
    /* EC4C8 800DD518 00000000 */  nop
    /* EC4CC 800DD51C 462081A4 */  cvt.w.d    $f6, $f16
    /* EC4D0 800DD520 4458F800 */  cfc1       $t8, $31
    /* EC4D4 800DD524 00000000 */  nop
    /* EC4D8 800DD528 33180078 */  andi       $t8, $t8, 0x78
    /* EC4DC 800DD52C 53000014 */  beql       $t8, $zero, .L800DD580_EC530
    /* EC4E0 800DD530 44183000 */   mfc1      $t8, $f6
    /* EC4E4 800DD534 44813800 */  mtc1       $at, $f7
    /* EC4E8 800DD538 44803000 */  mtc1       $zero, $f6
    /* EC4EC 800DD53C 24180001 */  addiu      $t8, $zero, 0x1
    /* EC4F0 800DD540 46268181 */  sub.d      $f6, $f16, $f6
    /* EC4F4 800DD544 44D8F800 */  ctc1       $t8, $31
    /* EC4F8 800DD548 00000000 */  nop
    /* EC4FC 800DD54C 462031A4 */  cvt.w.d    $f6, $f6
    /* EC500 800DD550 4458F800 */  cfc1       $t8, $31
    /* EC504 800DD554 00000000 */  nop
    /* EC508 800DD558 33180078 */  andi       $t8, $t8, 0x78
    /* EC50C 800DD55C 17000005 */  bnez       $t8, .L800DD574_EC524
    /* EC510 800DD560 00000000 */   nop
    /* EC514 800DD564 44183000 */  mfc1       $t8, $f6
    /* EC518 800DD568 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* EC51C 800DD56C 10000007 */  b          .L800DD58C_EC53C
    /* EC520 800DD570 0301C025 */   or        $t8, $t8, $at
  .L800DD574_EC524:
    /* EC524 800DD574 10000005 */  b          .L800DD58C_EC53C
    /* EC528 800DD578 2418FFFF */   addiu     $t8, $zero, -0x1
    /* EC52C 800DD57C 44183000 */  mfc1       $t8, $f6
  .L800DD580_EC530:
    /* EC530 800DD580 00000000 */  nop
    /* EC534 800DD584 0700FFFB */  bltz       $t8, .L800DD574_EC524
    /* EC538 800DD588 00000000 */   nop
  .L800DD58C_EC53C:
    /* EC53C 800DD58C 3319FFFF */  andi       $t9, $t8, 0xFFFF
    /* EC540 800DD590 44992000 */  mtc1       $t9, $f4
    /* EC544 800DD594 44CFF800 */  ctc1       $t7, $31
    /* EC548 800DD598 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* EC54C 800DD59C 07210004 */  bgez       $t9, .L800DD5B0_EC560
    /* EC550 800DD5A0 468022A0 */   cvt.s.w   $f10, $f4
    /* EC554 800DD5A4 44814000 */  mtc1       $at, $f8
    /* EC558 800DD5A8 00000000 */  nop
    /* EC55C 800DD5AC 46085280 */  add.s      $f10, $f10, $f8
  .L800DD5B0_EC560:
    /* EC560 800DD5B0 3C018015 */  lui        $at, %hi(D_80153BC8)
    /* EC564 800DD5B4 0C036CD4 */  jal        func_800DB350_EA300
    /* EC568 800DD5B8 E42A3BC8 */   swc1      $f10, %lo(D_80153BC8)($at)
    /* EC56C 800DD5BC 8FBF0034 */  lw         $ra, 0x34($sp)
  .L800DD5C0_EC570:
    /* EC570 800DD5C0 D7B40010 */  ldc1       $f20, 0x10($sp)
    /* EC574 800DD5C4 D7B60018 */  ldc1       $f22, 0x18($sp)
    /* EC578 800DD5C8 8FB00024 */  lw         $s0, 0x24($sp)
    /* EC57C 800DD5CC 8FB10028 */  lw         $s1, 0x28($sp)
    /* EC580 800DD5D0 8FB2002C */  lw         $s2, 0x2C($sp)
    /* EC584 800DD5D4 8FB30030 */  lw         $s3, 0x30($sp)
    /* EC588 800DD5D8 03E00008 */  jr         $ra
    /* EC58C 800DD5DC 27BD00F0 */   addiu     $sp, $sp, 0xF0
endlabel func_800DC5B8_EB568
