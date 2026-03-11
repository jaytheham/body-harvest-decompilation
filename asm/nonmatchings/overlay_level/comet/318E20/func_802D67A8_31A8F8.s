nonmatching func_802D67A8_31A8F8, 0xDA0

glabel func_802D67A8_31A8F8
    /* 31A8F8 802D67A8 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* 31A8FC 802D67AC 3C0F802E */  lui        $t7, %hi(D_802E4F88)
    /* 31A900 802D67B0 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 31A904 802D67B4 AFB20038 */  sw         $s2, 0x38($sp)
    /* 31A908 802D67B8 AFB10034 */  sw         $s1, 0x34($sp)
    /* 31A90C 802D67BC AFB00030 */  sw         $s0, 0x30($sp)
    /* 31A910 802D67C0 F7B40028 */  sdc1       $f20, 0x28($sp)
    /* 31A914 802D67C4 25EF4F88 */  addiu      $t7, $t7, %lo(D_802E4F88)
    /* 31A918 802D67C8 8DE10000 */  lw         $at, 0x0($t7)
    /* 31A91C 802D67CC 27AE004C */  addiu      $t6, $sp, 0x4C
    /* 31A920 802D67D0 8DE90004 */  lw         $t1, 0x4($t7)
    /* 31A924 802D67D4 ADC10000 */  sw         $at, 0x0($t6)
    /* 31A928 802D67D8 8DE10008 */  lw         $at, 0x8($t7)
    /* 31A92C 802D67DC 3C0A8004 */  lui        $t2, %hi(currentControllerStates)
    /* 31A930 802D67E0 ADC90004 */  sw         $t1, 0x4($t6)
    /* 31A934 802D67E4 ADC10008 */  sw         $at, 0x8($t6)
    /* 31A938 802D67E8 954A7588 */  lhu        $t2, %lo(currentControllerStates)($t2)
    /* 31A93C 802D67EC 24020001 */  addiu      $v0, $zero, 0x1
    /* 31A940 802D67F0 3C018015 */  lui        $at, %hi(D_80157F96)
    /* 31A944 802D67F4 4480A000 */  mtc1       $zero, $f20
    /* 31A948 802D67F8 A4227F96 */  sh         $v0, %lo(D_80157F96)($at)
    /* 31A94C 802D67FC 3C018016 */  lui        $at, %hi(D_8015EA2C)
    /* 31A950 802D6800 314B9000 */  andi       $t3, $t2, 0x9000
    /* 31A954 802D6804 11600079 */  beqz       $t3, .L802D69EC_31AB3C
    /* 31A958 802D6808 E434EA2C */   swc1      $f20, %lo(D_8015EA2C)($at)
    /* 31A95C 802D680C 3C0C8015 */  lui        $t4, %hi(D_80157F8C)
    /* 31A960 802D6810 858C7F8C */  lh         $t4, %lo(D_80157F8C)($t4)
    /* 31A964 802D6814 3C0D8003 */  lui        $t5, %hi(D_80031B50)
    /* 31A968 802D6818 19800074 */  blez       $t4, .L802D69EC_31AB3C
    /* 31A96C 802D681C 00000000 */   nop
    /* 31A970 802D6820 85AD1B50 */  lh         $t5, %lo(D_80031B50)($t5)
    /* 31A974 802D6824 144D0071 */  bne        $v0, $t5, .L802D69EC_31AB3C
    /* 31A978 802D6828 00000000 */   nop
    /* 31A97C 802D682C 3C118016 */  lui        $s1, %hi(D_80159DDF)
    /* 31A980 802D6830 26319DDF */  addiu      $s1, $s1, %lo(D_80159DDF)
    /* 31A984 802D6834 92390000 */  lbu        $t9, 0x0($s1)
    /* 31A988 802D6838 3C0E8005 */  lui        $t6, %hi(buildingInstances)
    /* 31A98C 802D683C 25CE0AD8 */  addiu      $t6, $t6, %lo(buildingInstances)
    /* 31A990 802D6840 0019C080 */  sll        $t8, $t9, 2
    /* 31A994 802D6844 0319C023 */  subu       $t8, $t8, $t9
    /* 31A998 802D6848 0018C0C0 */  sll        $t8, $t8, 3
    /* 31A99C 802D684C 030E8021 */  addu       $s0, $t8, $t6
    /* 31A9A0 802D6850 86040000 */  lh         $a0, 0x0($s0)
    /* 31A9A4 802D6854 0C02E134 */  jal        func_800B84D0_C7480
    /* 31A9A8 802D6858 86050004 */   lh        $a1, 0x4($s0)
    /* 31A9AC 802D685C 92290000 */  lbu        $t1, 0x0($s1)
    /* 31A9B0 802D6860 3C018005 */  lui        $at, %hi(D_80050ADA)
    /* 31A9B4 802D6864 00027A03 */  sra        $t7, $v0, 8
    /* 31A9B8 802D6868 00095080 */  sll        $t2, $t1, 2
    /* 31A9BC 802D686C 01495023 */  subu       $t2, $t2, $t1
    /* 31A9C0 802D6870 000A50C0 */  sll        $t2, $t2, 3
    /* 31A9C4 802D6874 002A0821 */  addu       $at, $at, $t2
    /* 31A9C8 802D6878 A42F0ADA */  sh         $t7, %lo(D_80050ADA)($at)
    /* 31A9CC 802D687C 3C018016 */  lui        $at, %hi(D_80159DE2)
    /* 31A9D0 802D6880 3C048015 */  lui        $a0, %hi(D_80157F9E)
    /* 31A9D4 802D6884 A4209DE2 */  sh         $zero, %lo(D_80159DE2)($at)
    /* 31A9D8 802D6888 0C0334E4 */  jal        func_800CD390_DC340
    /* 31A9DC 802D688C 90847F9E */   lbu       $a0, %lo(D_80157F9E)($a0)
    /* 31A9E0 802D6890 3C048015 */  lui        $a0, %hi(D_80157F9E + 0x1)
    /* 31A9E4 802D6894 0C0334E4 */  jal        func_800CD390_DC340
    /* 31A9E8 802D6898 90847F9F */   lbu       $a0, %lo(D_80157F9E + 0x1)($a0)
    /* 31A9EC 802D689C 3C048015 */  lui        $a0, %hi(D_80157FA0)
    /* 31A9F0 802D68A0 0C0334E4 */  jal        func_800CD390_DC340
    /* 31A9F4 802D68A4 90847FA0 */   lbu       $a0, %lo(D_80157FA0)($a0)
    /* 31A9F8 802D68A8 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 31A9FC 802D68AC 26102B34 */  addiu      $s0, $s0, %lo(D_80052B34)
    /* 31AA00 802D68B0 8E040000 */  lw         $a0, 0x0($s0)
    /* 31AA04 802D68B4 0C03ED13 */  jal        func_800FB44C_10A3FC
    /* 31AA08 802D68B8 3C0546C5 */   lui       $a1, (0x46C50000 >> 16)
    /* 31AA0C 802D68BC 8E040000 */  lw         $a0, 0x0($s0)
    /* 31AA10 802D68C0 0C03ED1A */  jal        func_800FB468_10A418
    /* 31AA14 802D68C4 3C054418 */   lui       $a1, (0x44180000 >> 16)
    /* 31AA18 802D68C8 3C0546D1 */  lui        $a1, (0x46D13C00 >> 16)
    /* 31AA1C 802D68CC 34A53C00 */  ori        $a1, $a1, (0x46D13C00 & 0xFFFF)
    /* 31AA20 802D68D0 0C03ED21 */  jal        func_800FB484_10A434
    /* 31AA24 802D68D4 8E040000 */   lw        $a0, 0x0($s0)
    /* 31AA28 802D68D8 0C04818D */  jal        func_80120634_12F5E4
    /* 31AA2C 802D68DC 00000000 */   nop
    /* 31AA30 802D68E0 00025880 */  sll        $t3, $v0, 2
    /* 31AA34 802D68E4 01625823 */  subu       $t3, $t3, $v0
    /* 31AA38 802D68E8 3C0C8005 */  lui        $t4, %hi(buildingInstances)
    /* 31AA3C 802D68EC 258C0AD8 */  addiu      $t4, $t4, %lo(buildingInstances)
    /* 31AA40 802D68F0 000B58C0 */  sll        $t3, $t3, 3
    /* 31AA44 802D68F4 016C6821 */  addu       $t5, $t3, $t4
    /* 31AA48 802D68F8 3C018015 */  lui        $at, %hi(D_80157FA4)
    /* 31AA4C 802D68FC 0C04818D */  jal        func_80120634_12F5E4
    /* 31AA50 802D6900 AC2D7FA4 */   sw        $t5, %lo(D_80157FA4)($at)
    /* 31AA54 802D6904 3C088015 */  lui        $t0, %hi(D_80157FA4)
    /* 31AA58 802D6908 25087FA4 */  addiu      $t0, $t0, %lo(D_80157FA4)
    /* 31AA5C 802D690C 8D180000 */  lw         $t8, 0x0($t0)
    /* 31AA60 802D6910 A2220000 */  sb         $v0, 0x0($s1)
    /* 31AA64 802D6914 24197D00 */  addiu      $t9, $zero, 0x7D00
    /* 31AA68 802D6918 A7190002 */  sh         $t9, 0x2($t8)
    /* 31AA6C 802D691C 8E090000 */  lw         $t1, 0x0($s0)
    /* 31AA70 802D6920 240E8000 */  addiu      $t6, $zero, -0x8000
    /* 31AA74 802D6924 3C0B8005 */  lui        $t3, %hi(buildingInstances)
    /* 31AA78 802D6928 A52E000E */  sh         $t6, 0xE($t1)
    /* 31AA7C 802D692C 922F0000 */  lbu        $t7, 0x0($s1)
    /* 31AA80 802D6930 8E040000 */  lw         $a0, 0x0($s0)
    /* 31AA84 802D6934 000F5080 */  sll        $t2, $t7, 2
    /* 31AA88 802D6938 014F5023 */  subu       $t2, $t2, $t7
    /* 31AA8C 802D693C 000A50C0 */  sll        $t2, $t2, 3
    /* 31AA90 802D6940 016A5821 */  addu       $t3, $t3, $t2
    /* 31AA94 802D6944 856B0AD8 */  lh         $t3, %lo(buildingInstances)($t3)
    /* 31AA98 802D6948 448B2000 */  mtc1       $t3, $f4
    /* 31AA9C 802D694C 00000000 */  nop
    /* 31AAA0 802D6950 46802120 */  cvt.s.w    $f4, $f4
    /* 31AAA4 802D6954 44052000 */  mfc1       $a1, $f4
    /* 31AAA8 802D6958 0C03ED13 */  jal        func_800FB44C_10A3FC
    /* 31AAAC 802D695C 00000000 */   nop
    /* 31AAB0 802D6960 4405A000 */  mfc1       $a1, $f20
    /* 31AAB4 802D6964 0C03ED1A */  jal        func_800FB468_10A418
    /* 31AAB8 802D6968 8E040000 */   lw        $a0, 0x0($s0)
    /* 31AABC 802D696C 922C0000 */  lbu        $t4, 0x0($s1)
    /* 31AAC0 802D6970 3C198005 */  lui        $t9, %hi(D_80050ADC)
    /* 31AAC4 802D6974 8E040000 */  lw         $a0, 0x0($s0)
    /* 31AAC8 802D6978 000C6880 */  sll        $t5, $t4, 2
    /* 31AACC 802D697C 01AC6823 */  subu       $t5, $t5, $t4
    /* 31AAD0 802D6980 000D68C0 */  sll        $t5, $t5, 3
    /* 31AAD4 802D6984 032DC821 */  addu       $t9, $t9, $t5
    /* 31AAD8 802D6988 87390ADC */  lh         $t9, %lo(D_80050ADC)($t9)
    /* 31AADC 802D698C 44993000 */  mtc1       $t9, $f6
    /* 31AAE0 802D6990 00000000 */  nop
    /* 31AAE4 802D6994 468031A0 */  cvt.s.w    $f6, $f6
    /* 31AAE8 802D6998 44053000 */  mfc1       $a1, $f6
    /* 31AAEC 802D699C 0C03ED21 */  jal        func_800FB484_10A434
    /* 31AAF0 802D69A0 00000000 */   nop
    /* 31AAF4 802D69A4 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 31AAF8 802D69A8 2418BE1D */  addiu      $t8, $zero, -0x41E3
    /* 31AAFC 802D69AC 3C01802E */  lui        $at, %hi(D_802E7C40)
    /* 31AB00 802D69B0 3C04802D */  lui        $a0, %hi(func_802D6670_31A7C0)
    /* 31AB04 802D69B4 A5D80006 */  sh         $t8, 0x6($t6)
    /* 31AB08 802D69B8 A4207C40 */  sh         $zero, %lo(D_802E7C40)($at)
    /* 31AB0C 802D69BC 0C001D04 */  jal        func_80007410_8010
    /* 31AB10 802D69C0 24846670 */   addiu     $a0, $a0, %lo(func_802D6670_31A7C0)
    /* 31AB14 802D69C4 3C028016 */  lui        $v0, %hi(D_80159320)
    /* 31AB18 802D69C8 24429320 */  addiu      $v0, $v0, %lo(D_80159320)
    /* 31AB1C 802D69CC 8C490000 */  lw         $t1, 0x0($v0)
    /* 31AB20 802D69D0 3C01FFEF */  lui        $at, (0xFFEFFFFF >> 16)
    /* 31AB24 802D69D4 3421FFFF */  ori        $at, $at, (0xFFEFFFFF & 0xFFFF)
    /* 31AB28 802D69D8 01217824 */  and        $t7, $t1, $at
    /* 31AB2C 802D69DC 0C03C08D */  jal        func_800F0234_FF1E4
    /* 31AB30 802D69E0 AC4F0000 */   sw        $t7, 0x0($v0)
    /* 31AB34 802D69E4 100002D1 */  b          .L802D752C_31B67C
    /* 31AB38 802D69E8 24020001 */   addiu     $v0, $zero, 0x1
  .L802D69EC_31AB3C:
    /* 31AB3C 802D69EC 3C0A8015 */  lui        $t2, %hi(D_80157F8C)
    /* 31AB40 802D69F0 954A7F8C */  lhu        $t2, %lo(D_80157F8C)($t2)
    /* 31AB44 802D69F4 2D410007 */  sltiu      $at, $t2, 0x7
    /* 31AB48 802D69F8 102002CB */  beqz       $at, .L802D7528_31B678
    /* 31AB4C 802D69FC 000A5080 */   sll       $t2, $t2, 2
    /* 31AB50 802D6A00 3C01802E */  lui        $at, %hi(jtbl_802E7B08_overlay_level_comet)
    /* 31AB54 802D6A04 002A0821 */  addu       $at, $at, $t2
    /* 31AB58 802D6A08 8C2A7B08 */  lw         $t2, %lo(jtbl_802E7B08_overlay_level_comet)($at)
    /* 31AB5C 802D6A0C 01400008 */  jr         $t2
    /* 31AB60 802D6A10 00000000 */   nop
    /* 31AB64 802D6A14 3C128015 */  lui        $s2, %hi(D_80157F8E)
    /* 31AB68 802D6A18 26527F8E */  addiu      $s2, $s2, %lo(D_80157F8E)
    /* 31AB6C 802D6A1C 864B0000 */  lh         $t3, 0x0($s2)
    /* 31AB70 802D6A20 15600003 */  bnez       $t3, .L802D6A30_31AB80
    /* 31AB74 802D6A24 00000000 */   nop
    /* 31AB78 802D6A28 0C004D1A */  jal        func_80013468_14068
    /* 31AB7C 802D6A2C 00002025 */   or        $a0, $zero, $zero
  .L802D6A30_31AB80:
    /* 31AB80 802D6A30 0C04818D */  jal        func_80120634_12F5E4
    /* 31AB84 802D6A34 00000000 */   nop
    /* 31AB88 802D6A38 00026080 */  sll        $t4, $v0, 2
    /* 31AB8C 802D6A3C 01826023 */  subu       $t4, $t4, $v0
    /* 31AB90 802D6A40 3C0D8005 */  lui        $t5, %hi(buildingInstances)
    /* 31AB94 802D6A44 25AD0AD8 */  addiu      $t5, $t5, %lo(buildingInstances)
    /* 31AB98 802D6A48 000C60C0 */  sll        $t4, $t4, 3
    /* 31AB9C 802D6A4C 3C088015 */  lui        $t0, %hi(D_80157FA4)
    /* 31ABA0 802D6A50 25087FA4 */  addiu      $t0, $t0, %lo(D_80157FA4)
    /* 31ABA4 802D6A54 018DC821 */  addu       $t9, $t4, $t5
    /* 31ABA8 802D6A58 0C04818D */  jal        func_80120634_12F5E4
    /* 31ABAC 802D6A5C AD190000 */   sw        $t9, 0x0($t0)
    /* 31ABB0 802D6A60 3C118016 */  lui        $s1, %hi(D_80159DDF)
    /* 31ABB4 802D6A64 26319DDF */  addiu      $s1, $s1, %lo(D_80159DDF)
    /* 31ABB8 802D6A68 3C04802E */  lui        $a0, %hi(D_802E7AA4)
    /* 31ABBC 802D6A6C A2220000 */  sb         $v0, 0x0($s1)
    /* 31ABC0 802D6A70 24847AA4 */  addiu      $a0, $a0, %lo(D_802E7AA4)
    /* 31ABC4 802D6A74 0C00731B */  jal        osSyncPrintf
    /* 31ABC8 802D6A78 304500FF */   andi      $a1, $v0, 0xFF
    /* 31ABCC 802D6A7C 3C018016 */  lui        $at, %hi(D_80159DE0)
    /* 31ABD0 802D6A80 A4209DE0 */  sh         $zero, %lo(D_80159DE0)($at)
    /* 31ABD4 802D6A84 3C018016 */  lui        $at, %hi(D_80159DE2)
    /* 31ABD8 802D6A88 A4209DE2 */  sh         $zero, %lo(D_80159DE2)($at)
    /* 31ABDC 802D6A8C 3C018016 */  lui        $at, %hi(D_80159DE4)
    /* 31ABE0 802D6A90 A4209DE4 */  sh         $zero, %lo(D_80159DE4)($at)
    /* 31ABE4 802D6A94 92380000 */  lbu        $t8, 0x0($s1)
    /* 31ABE8 802D6A98 3C018005 */  lui        $at, %hi(D_8005254C)
    /* 31ABEC 802D6A9C 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 31ABF0 802D6AA0 00187100 */  sll        $t6, $t8, 4
    /* 31ABF4 802D6AA4 AC2E254C */  sw         $t6, %lo(D_8005254C)($at)
    /* 31ABF8 802D6AA8 3C018015 */  lui        $at, %hi(D_80157F92)
    /* 31ABFC 802D6AAC A4207F92 */  sh         $zero, %lo(D_80157F92)($at)
    /* 31AC00 802D6AB0 3C018016 */  lui        $at, %hi(D_8015EA2C)
    /* 31AC04 802D6AB4 26102B34 */  addiu      $s0, $s0, %lo(D_80052B34)
    /* 31AC08 802D6AB8 E434EA2C */  swc1       $f20, %lo(D_8015EA2C)($at)
    /* 31AC0C 802D6ABC 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 31AC10 802D6AC0 24098000 */  addiu      $t1, $zero, -0x8000
    /* 31AC14 802D6AC4 3C0C8005 */  lui        $t4, %hi(buildingInstances)
    /* 31AC18 802D6AC8 A5E9000E */  sh         $t1, 0xE($t7)
    /* 31AC1C 802D6ACC 922A0000 */  lbu        $t2, 0x0($s1)
    /* 31AC20 802D6AD0 8E040000 */  lw         $a0, 0x0($s0)
    /* 31AC24 802D6AD4 000A5880 */  sll        $t3, $t2, 2
    /* 31AC28 802D6AD8 016A5823 */  subu       $t3, $t3, $t2
    /* 31AC2C 802D6ADC 000B58C0 */  sll        $t3, $t3, 3
    /* 31AC30 802D6AE0 018B6021 */  addu       $t4, $t4, $t3
    /* 31AC34 802D6AE4 858C0AD8 */  lh         $t4, %lo(buildingInstances)($t4)
    /* 31AC38 802D6AE8 448C4000 */  mtc1       $t4, $f8
    /* 31AC3C 802D6AEC 00000000 */  nop
    /* 31AC40 802D6AF0 46804220 */  cvt.s.w    $f8, $f8
    /* 31AC44 802D6AF4 44054000 */  mfc1       $a1, $f8
    /* 31AC48 802D6AF8 0C03ED13 */  jal        func_800FB44C_10A3FC
    /* 31AC4C 802D6AFC 00000000 */   nop
    /* 31AC50 802D6B00 4405A000 */  mfc1       $a1, $f20
    /* 31AC54 802D6B04 0C03ED1A */  jal        func_800FB468_10A418
    /* 31AC58 802D6B08 8E040000 */   lw        $a0, 0x0($s0)
    /* 31AC5C 802D6B0C 922D0000 */  lbu        $t5, 0x0($s1)
    /* 31AC60 802D6B10 3C188005 */  lui        $t8, %hi(D_80050ADC)
    /* 31AC64 802D6B14 8E040000 */  lw         $a0, 0x0($s0)
    /* 31AC68 802D6B18 000DC880 */  sll        $t9, $t5, 2
    /* 31AC6C 802D6B1C 032DC823 */  subu       $t9, $t9, $t5
    /* 31AC70 802D6B20 0019C8C0 */  sll        $t9, $t9, 3
    /* 31AC74 802D6B24 0319C021 */  addu       $t8, $t8, $t9
    /* 31AC78 802D6B28 87180ADC */  lh         $t8, %lo(D_80050ADC)($t8)
    /* 31AC7C 802D6B2C 44985000 */  mtc1       $t8, $f10
    /* 31AC80 802D6B30 00000000 */  nop
    /* 31AC84 802D6B34 468052A0 */  cvt.s.w    $f10, $f10
    /* 31AC88 802D6B38 44055000 */  mfc1       $a1, $f10
    /* 31AC8C 802D6B3C 0C03ED21 */  jal        func_800FB484_10A434
    /* 31AC90 802D6B40 00000000 */   nop
    /* 31AC94 802D6B44 3C028015 */  lui        $v0, %hi(D_80157F9E + 0x1)
    /* 31AC98 802D6B48 3C038015 */  lui        $v1, %hi(D_80157FA0)
    /* 31AC9C 802D6B4C 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 31ACA0 802D6B50 24637FA0 */  addiu      $v1, $v1, %lo(D_80157FA0)
    /* 31ACA4 802D6B54 24427F9F */  addiu      $v0, $v0, %lo(D_80157F9E + 0x1)
    /* 31ACA8 802D6B58 A6400000 */  sh         $zero, 0x0($s2)
    /* 31ACAC 802D6B5C A04F0000 */  sb         $t7, 0x0($v0)
    /* 31ACB0 802D6B60 A06F0000 */  sb         $t7, 0x0($v1)
    /* 31ACB4 802D6B64 3C0A8015 */  lui        $t2, %hi(D_80157F8C)
    /* 31ACB8 802D6B68 854A7F8C */  lh         $t2, %lo(D_80157F8C)($t2)
    /* 31ACBC 802D6B6C 3C018015 */  lui        $at, %hi(D_80157F9E)
    /* 31ACC0 802D6B70 A02F7F9E */  sb         $t7, %lo(D_80157F9E)($at)
    /* 31ACC4 802D6B74 3C018015 */  lui        $at, %hi(D_80157F8C)
    /* 31ACC8 802D6B78 254B0001 */  addiu      $t3, $t2, 0x1
    /* 31ACCC 802D6B7C A42B7F8C */  sh         $t3, %lo(D_80157F8C)($at)
    /* 31ACD0 802D6B80 3C01802E */  lui        $at, %hi(D_802E7B24)
    /* 31ACD4 802D6B84 C4207B24 */  lwc1       $f0, %lo(D_802E7B24)($at)
    /* 31ACD8 802D6B88 3C018016 */  lui        $at, %hi(D_80159DE2)
    /* 31ACDC 802D6B8C 240C01F4 */  addiu      $t4, $zero, 0x1F4
    /* 31ACE0 802D6B90 A42C9DE2 */  sh         $t4, %lo(D_80159DE2)($at)
    /* 31ACE4 802D6B94 922D0000 */  lbu        $t5, 0x0($s1)
    /* 31ACE8 802D6B98 3C188005 */  lui        $t8, %hi(buildingInstances)
    /* 31ACEC 802D6B9C 27180AD8 */  addiu      $t8, $t8, %lo(buildingInstances)
    /* 31ACF0 802D6BA0 000DC880 */  sll        $t9, $t5, 2
    /* 31ACF4 802D6BA4 032DC823 */  subu       $t9, $t9, $t5
    /* 31ACF8 802D6BA8 0019C8C0 */  sll        $t9, $t9, 3
    /* 31ACFC 802D6BAC 03388021 */  addu       $s0, $t9, $t8
    /* 31AD00 802D6BB0 86060004 */  lh         $a2, 0x4($s0)
    /* 31AD04 802D6BB4 86040000 */  lh         $a0, 0x0($s0)
    /* 31AD08 802D6BB8 86050002 */  lh         $a1, 0x2($s0)
    /* 31AD0C 802D6BBC 24C6FF9C */  addiu      $a2, $a2, -0x64
    /* 31AD10 802D6BC0 00067400 */  sll        $t6, $a2, 16
    /* 31AD14 802D6BC4 3C01802E */  lui        $at, %hi(D_802E7C44)
    /* 31AD18 802D6BC8 240FFFDD */  addiu      $t7, $zero, -0x23
    /* 31AD1C 802D6BCC AFAF0010 */  sw         $t7, 0x10($sp)
    /* 31AD20 802D6BD0 000E3403 */  sra        $a2, $t6, 16
    /* 31AD24 802D6BD4 00003825 */  or         $a3, $zero, $zero
    /* 31AD28 802D6BD8 AFA00014 */  sw         $zero, 0x14($sp)
    /* 31AD2C 802D6BDC 0C03347E */  jal        func_800CD1F8_DC1A8
    /* 31AD30 802D6BE0 E4207C44 */   swc1      $f0, %lo(D_802E7C44)($at)
    /* 31AD34 802D6BE4 3C018015 */  lui        $at, %hi(D_80157F9E)
    /* 31AD38 802D6BE8 A0227F9E */  sb         $v0, %lo(D_80157F9E)($at)
    /* 31AD3C 802D6BEC 922A0000 */  lbu        $t2, 0x0($s1)
    /* 31AD40 802D6BF0 3C0C8005 */  lui        $t4, %hi(buildingInstances)
    /* 31AD44 802D6BF4 258C0AD8 */  addiu      $t4, $t4, %lo(buildingInstances)
    /* 31AD48 802D6BF8 000A5880 */  sll        $t3, $t2, 2
    /* 31AD4C 802D6BFC 016A5823 */  subu       $t3, $t3, $t2
    /* 31AD50 802D6C00 000B58C0 */  sll        $t3, $t3, 3
    /* 31AD54 802D6C04 016C8021 */  addu       $s0, $t3, $t4
    /* 31AD58 802D6C08 86040000 */  lh         $a0, 0x0($s0)
    /* 31AD5C 802D6C0C 86060004 */  lh         $a2, 0x4($s0)
    /* 31AD60 802D6C10 2409FFDD */  addiu      $t1, $zero, -0x23
    /* 31AD64 802D6C14 24840078 */  addiu      $a0, $a0, 0x78
    /* 31AD68 802D6C18 24C60050 */  addiu      $a2, $a2, 0x50
    /* 31AD6C 802D6C1C 0006C400 */  sll        $t8, $a2, 16
    /* 31AD70 802D6C20 00046C00 */  sll        $t5, $a0, 16
    /* 31AD74 802D6C24 000D2403 */  sra        $a0, $t5, 16
    /* 31AD78 802D6C28 00183403 */  sra        $a2, $t8, 16
    /* 31AD7C 802D6C2C AFA90010 */  sw         $t1, 0x10($sp)
    /* 31AD80 802D6C30 86050002 */  lh         $a1, 0x2($s0)
    /* 31AD84 802D6C34 00003825 */  or         $a3, $zero, $zero
    /* 31AD88 802D6C38 0C03347E */  jal        func_800CD1F8_DC1A8
    /* 31AD8C 802D6C3C AFA00014 */   sw        $zero, 0x14($sp)
    /* 31AD90 802D6C40 3C018015 */  lui        $at, %hi(D_80157F9E + 0x1)
    /* 31AD94 802D6C44 A0227F9F */  sb         $v0, %lo(D_80157F9E + 0x1)($at)
    /* 31AD98 802D6C48 922F0000 */  lbu        $t7, 0x0($s1)
    /* 31AD9C 802D6C4C 3C0B8005 */  lui        $t3, %hi(buildingInstances)
    /* 31ADA0 802D6C50 256B0AD8 */  addiu      $t3, $t3, %lo(buildingInstances)
    /* 31ADA4 802D6C54 000F5080 */  sll        $t2, $t7, 2
    /* 31ADA8 802D6C58 014F5023 */  subu       $t2, $t2, $t7
    /* 31ADAC 802D6C5C 000A50C0 */  sll        $t2, $t2, 3
    /* 31ADB0 802D6C60 014B8021 */  addu       $s0, $t2, $t3
    /* 31ADB4 802D6C64 86040000 */  lh         $a0, 0x0($s0)
    /* 31ADB8 802D6C68 86060004 */  lh         $a2, 0x4($s0)
    /* 31ADBC 802D6C6C 240EFFDD */  addiu      $t6, $zero, -0x23
    /* 31ADC0 802D6C70 2484FF88 */  addiu      $a0, $a0, -0x78
    /* 31ADC4 802D6C74 24C60050 */  addiu      $a2, $a2, 0x50
    /* 31ADC8 802D6C78 0006CC00 */  sll        $t9, $a2, 16
    /* 31ADCC 802D6C7C 00046400 */  sll        $t4, $a0, 16
    /* 31ADD0 802D6C80 000C2403 */  sra        $a0, $t4, 16
    /* 31ADD4 802D6C84 00193403 */  sra        $a2, $t9, 16
    /* 31ADD8 802D6C88 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 31ADDC 802D6C8C 86050002 */  lh         $a1, 0x2($s0)
    /* 31ADE0 802D6C90 00003825 */  or         $a3, $zero, $zero
    /* 31ADE4 802D6C94 0C03347E */  jal        func_800CD1F8_DC1A8
    /* 31ADE8 802D6C98 AFA00014 */   sw        $zero, 0x14($sp)
    /* 31ADEC 802D6C9C 3C018015 */  lui        $at, %hi(D_80157FA0)
    /* 31ADF0 802D6CA0 A0227FA0 */  sb         $v0, %lo(D_80157FA0)($at)
    /* 31ADF4 802D6CA4 86430000 */  lh         $v1, 0x0($s2)
    /* 31ADF8 802D6CA8 3C0F8015 */  lui        $t7, %hi(D_80157F8C)
    /* 31ADFC 802D6CAC 28640002 */  slti       $a0, $v1, 0x2
    /* 31AE00 802D6CB0 24690001 */  addiu      $t1, $v1, 0x1
    /* 31AE04 802D6CB4 1480021C */  bnez       $a0, .L802D7528_31B678
    /* 31AE08 802D6CB8 A6490000 */   sh        $t1, 0x0($s2)
    /* 31AE0C 802D6CBC A6400000 */  sh         $zero, 0x0($s2)
    /* 31AE10 802D6CC0 85EF7F8C */  lh         $t7, %lo(D_80157F8C)($t7)
    /* 31AE14 802D6CC4 3C018015 */  lui        $at, %hi(D_80157F8C)
    /* 31AE18 802D6CC8 25EA0001 */  addiu      $t2, $t7, 0x1
    /* 31AE1C 802D6CCC 10000216 */  b          .L802D7528_31B678
    /* 31AE20 802D6CD0 A42A7F8C */   sh        $t2, %lo(D_80157F8C)($at)
    /* 31AE24 802D6CD4 3C038016 */  lui        $v1, %hi(D_80159DE2)
    /* 31AE28 802D6CD8 24639DE2 */  addiu      $v1, $v1, %lo(D_80159DE2)
    /* 31AE2C 802D6CDC 946B0000 */  lhu        $t3, 0x0($v1)
    /* 31AE30 802D6CE0 3C01802E */  lui        $at, %hi(D_802E7C44)
    /* 31AE34 802D6CE4 C4207C44 */  lwc1       $f0, %lo(D_802E7C44)($at)
    /* 31AE38 802D6CE8 448B8000 */  mtc1       $t3, $f16
    /* 31AE3C 802D6CEC 3C128015 */  lui        $s2, %hi(D_80157F8E)
    /* 31AE40 802D6CF0 05610005 */  bgez       $t3, .L802D6D08_31AE58
    /* 31AE44 802D6CF4 468084A0 */   cvt.s.w   $f18, $f16
    /* 31AE48 802D6CF8 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* 31AE4C 802D6CFC 44812000 */  mtc1       $at, $f4
    /* 31AE50 802D6D00 00000000 */  nop
    /* 31AE54 802D6D04 46049480 */  add.s      $f18, $f18, $f4
  .L802D6D08_31AE58:
    /* 31AE58 802D6D08 46009181 */  sub.s      $f6, $f18, $f0
    /* 31AE5C 802D6D0C 240D0001 */  addiu      $t5, $zero, 0x1
    /* 31AE60 802D6D10 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* 31AE64 802D6D14 26527F8E */  addiu      $s2, $s2, %lo(D_80157F8E)
    /* 31AE68 802D6D18 444CF800 */  cfc1       $t4, $31
    /* 31AE6C 802D6D1C 44CDF800 */  ctc1       $t5, $31
    /* 31AE70 802D6D20 00000000 */  nop
    /* 31AE74 802D6D24 46003224 */  cvt.w.s    $f8, $f6
    /* 31AE78 802D6D28 444DF800 */  cfc1       $t5, $31
    /* 31AE7C 802D6D2C 00000000 */  nop
    /* 31AE80 802D6D30 31AD0078 */  andi       $t5, $t5, 0x78
    /* 31AE84 802D6D34 51A00013 */  beql       $t5, $zero, .L802D6D84_31AED4
    /* 31AE88 802D6D38 440D4000 */   mfc1      $t5, $f8
    /* 31AE8C 802D6D3C 44814000 */  mtc1       $at, $f8
    /* 31AE90 802D6D40 240D0001 */  addiu      $t5, $zero, 0x1
    /* 31AE94 802D6D44 46083201 */  sub.s      $f8, $f6, $f8
    /* 31AE98 802D6D48 44CDF800 */  ctc1       $t5, $31
    /* 31AE9C 802D6D4C 00000000 */  nop
    /* 31AEA0 802D6D50 46004224 */  cvt.w.s    $f8, $f8
    /* 31AEA4 802D6D54 444DF800 */  cfc1       $t5, $31
    /* 31AEA8 802D6D58 00000000 */  nop
    /* 31AEAC 802D6D5C 31AD0078 */  andi       $t5, $t5, 0x78
    /* 31AEB0 802D6D60 15A00005 */  bnez       $t5, .L802D6D78_31AEC8
    /* 31AEB4 802D6D64 00000000 */   nop
    /* 31AEB8 802D6D68 440D4000 */  mfc1       $t5, $f8
    /* 31AEBC 802D6D6C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 31AEC0 802D6D70 10000007 */  b          .L802D6D90_31AEE0
    /* 31AEC4 802D6D74 01A16825 */   or        $t5, $t5, $at
  .L802D6D78_31AEC8:
    /* 31AEC8 802D6D78 10000005 */  b          .L802D6D90_31AEE0
    /* 31AECC 802D6D7C 240DFFFF */   addiu     $t5, $zero, -0x1
    /* 31AED0 802D6D80 440D4000 */  mfc1       $t5, $f8
  .L802D6D84_31AED4:
    /* 31AED4 802D6D84 00000000 */  nop
    /* 31AED8 802D6D88 05A0FFFB */  bltz       $t5, .L802D6D78_31AEC8
    /* 31AEDC 802D6D8C 00000000 */   nop
  .L802D6D90_31AEE0:
    /* 31AEE0 802D6D90 31A2FFFF */  andi       $v0, $t5, 0xFFFF
    /* 31AEE4 802D6D94 34018001 */  ori        $at, $zero, 0x8001
    /* 31AEE8 802D6D98 44CCF800 */  ctc1       $t4, $31
    /* 31AEEC 802D6D9C 0041082A */  slt        $at, $v0, $at
    /* 31AEF0 802D6DA0 10200003 */  beqz       $at, .L802D6DB0_31AF00
    /* 31AEF4 802D6DA4 A46D0000 */   sh        $t5, 0x0($v1)
    /* 31AEF8 802D6DA8 14400005 */  bnez       $v0, .L802D6DC0_31AF10
    /* 31AEFC 802D6DAC 3C01802E */   lui       $at, %hi(D_802E7B28)
  .L802D6DB0_31AF00:
    /* 31AF00 802D6DB0 A4600000 */  sh         $zero, 0x0($v1)
    /* 31AF04 802D6DB4 3C01802E */  lui        $at, %hi(D_802E7C44)
    /* 31AF08 802D6DB8 10000007 */  b          .L802D6DD8_31AF28
    /* 31AF0C 802D6DBC E4347C44 */   swc1      $f20, %lo(D_802E7C44)($at)
  .L802D6DC0_31AF10:
    /* 31AF10 802D6DC0 D4307B28 */  ldc1       $f16, %lo(D_802E7B28)($at)
    /* 31AF14 802D6DC4 460002A1 */  cvt.d.s    $f10, $f0
    /* 31AF18 802D6DC8 3C01802E */  lui        $at, %hi(D_802E7C44)
    /* 31AF1C 802D6DCC 46305101 */  sub.d      $f4, $f10, $f16
    /* 31AF20 802D6DD0 46202020 */  cvt.s.d    $f0, $f4
    /* 31AF24 802D6DD4 E4207C44 */  swc1       $f0, %lo(D_802E7C44)($at)
  .L802D6DD8_31AF28:
    /* 31AF28 802D6DD8 86590000 */  lh         $t9, 0x0($s2)
    /* 31AF2C 802D6DDC 2401003D */  addiu      $at, $zero, 0x3D
    /* 31AF30 802D6DE0 3C118016 */  lui        $s1, %hi(D_80159DDF)
    /* 31AF34 802D6DE4 1721000F */  bne        $t9, $at, .L802D6E24_31AF74
    /* 31AF38 802D6DE8 26319DDF */   addiu     $s1, $s1, %lo(D_80159DDF)
    /* 31AF3C 802D6DEC 92380000 */  lbu        $t8, 0x0($s1)
    /* 31AF40 802D6DF0 3C098005 */  lui        $t1, %hi(buildingInstances)
    /* 31AF44 802D6DF4 25290AD8 */  addiu      $t1, $t1, %lo(buildingInstances)
    /* 31AF48 802D6DF8 00187080 */  sll        $t6, $t8, 2
    /* 31AF4C 802D6DFC 01D87023 */  subu       $t6, $t6, $t8
    /* 31AF50 802D6E00 000E70C0 */  sll        $t6, $t6, 3
    /* 31AF54 802D6E04 01C98021 */  addu       $s0, $t6, $t1
    /* 31AF58 802D6E08 86040000 */  lh         $a0, 0x0($s0)
    /* 31AF5C 802D6E0C 86050002 */  lh         $a1, 0x2($s0)
    /* 31AF60 802D6E10 86060004 */  lh         $a2, 0x4($s0)
    /* 31AF64 802D6E14 0C04D751 */  jal        func_80135D44_144CF4
    /* 31AF68 802D6E18 3C074040 */   lui       $a3, (0x40400000 >> 16)
    /* 31AF6C 802D6E1C 3C038016 */  lui        $v1, %hi(D_80159DE2)
    /* 31AF70 802D6E20 24639DE2 */  addiu      $v1, $v1, %lo(D_80159DE2)
  .L802D6E24_31AF74:
    /* 31AF74 802D6E24 3C118016 */  lui        $s1, %hi(D_80159DDF)
    /* 31AF78 802D6E28 26319DDF */  addiu      $s1, $s1, %lo(D_80159DDF)
    /* 31AF7C 802D6E2C 922F0000 */  lbu        $t7, 0x0($s1)
    /* 31AF80 802D6E30 3C0B8005 */  lui        $t3, %hi(buildingInstances)
    /* 31AF84 802D6E34 256B0AD8 */  addiu      $t3, $t3, %lo(buildingInstances)
    /* 31AF88 802D6E38 000F5080 */  sll        $t2, $t7, 2
    /* 31AF8C 802D6E3C 014F5023 */  subu       $t2, $t2, $t7
    /* 31AF90 802D6E40 000A50C0 */  sll        $t2, $t2, 3
    /* 31AF94 802D6E44 014B8021 */  addu       $s0, $t2, $t3
    /* 31AF98 802D6E48 946D0000 */  lhu        $t5, 0x0($v1)
    /* 31AF9C 802D6E4C 860C0002 */  lh         $t4, 0x2($s0)
    /* 31AFA0 802D6E50 86060004 */  lh         $a2, 0x4($s0)
    /* 31AFA4 802D6E54 000DC880 */  sll        $t9, $t5, 2
    /* 31AFA8 802D6E58 01992821 */  addu       $a1, $t4, $t9
    /* 31AFAC 802D6E5C 24C6FF9C */  addiu      $a2, $a2, -0x64
    /* 31AFB0 802D6E60 00064C00 */  sll        $t1, $a2, 16
    /* 31AFB4 802D6E64 0005C400 */  sll        $t8, $a1, 16
    /* 31AFB8 802D6E68 3C078015 */  lui        $a3, %hi(D_80157F9E)
    /* 31AFBC 802D6E6C 90E77F9E */  lbu        $a3, %lo(D_80157F9E)($a3)
    /* 31AFC0 802D6E70 00182C03 */  sra        $a1, $t8, 16
    /* 31AFC4 802D6E74 00093403 */  sra        $a2, $t1, 16
    /* 31AFC8 802D6E78 0C0334BA */  jal        func_800CD2E8_DC298
    /* 31AFCC 802D6E7C 86040000 */   lh        $a0, 0x0($s0)
    /* 31AFD0 802D6E80 922A0000 */  lbu        $t2, 0x0($s1)
    /* 31AFD4 802D6E84 3C0D8005 */  lui        $t5, %hi(buildingInstances)
    /* 31AFD8 802D6E88 25AD0AD8 */  addiu      $t5, $t5, %lo(buildingInstances)
    /* 31AFDC 802D6E8C 000A5880 */  sll        $t3, $t2, 2
    /* 31AFE0 802D6E90 016A5823 */  subu       $t3, $t3, $t2
    /* 31AFE4 802D6E94 000B58C0 */  sll        $t3, $t3, 3
    /* 31AFE8 802D6E98 016D8021 */  addu       $s0, $t3, $t5
    /* 31AFEC 802D6E9C 3C0E8016 */  lui        $t6, %hi(D_80159DE2)
    /* 31AFF0 802D6EA0 95CE9DE2 */  lhu        $t6, %lo(D_80159DE2)($t6)
    /* 31AFF4 802D6EA4 86040000 */  lh         $a0, 0x0($s0)
    /* 31AFF8 802D6EA8 86180002 */  lh         $t8, 0x2($s0)
    /* 31AFFC 802D6EAC 86060004 */  lh         $a2, 0x4($s0)
    /* 31B000 802D6EB0 000E4880 */  sll        $t1, $t6, 2
    /* 31B004 802D6EB4 24840078 */  addiu      $a0, $a0, 0x78
    /* 31B008 802D6EB8 03092821 */  addu       $a1, $t8, $t1
    /* 31B00C 802D6EBC 24C60050 */  addiu      $a2, $a2, 0x50
    /* 31B010 802D6EC0 00065C00 */  sll        $t3, $a2, 16
    /* 31B014 802D6EC4 00057C00 */  sll        $t7, $a1, 16
    /* 31B018 802D6EC8 00046400 */  sll        $t4, $a0, 16
    /* 31B01C 802D6ECC 3C078015 */  lui        $a3, %hi(D_80157F9E + 0x1)
    /* 31B020 802D6ED0 90E77F9F */  lbu        $a3, %lo(D_80157F9E + 0x1)($a3)
    /* 31B024 802D6ED4 000C2403 */  sra        $a0, $t4, 16
    /* 31B028 802D6ED8 000F2C03 */  sra        $a1, $t7, 16
    /* 31B02C 802D6EDC 0C0334BA */  jal        func_800CD2E8_DC298
    /* 31B030 802D6EE0 000B3403 */   sra       $a2, $t3, 16
    /* 31B034 802D6EE4 922C0000 */  lbu        $t4, 0x0($s1)
    /* 31B038 802D6EE8 3C0E8005 */  lui        $t6, %hi(buildingInstances)
    /* 31B03C 802D6EEC 25CE0AD8 */  addiu      $t6, $t6, %lo(buildingInstances)
    /* 31B040 802D6EF0 000CC880 */  sll        $t9, $t4, 2
    /* 31B044 802D6EF4 032CC823 */  subu       $t9, $t9, $t4
    /* 31B048 802D6EF8 0019C8C0 */  sll        $t9, $t9, 3
    /* 31B04C 802D6EFC 032E8021 */  addu       $s0, $t9, $t6
    /* 31B050 802D6F00 3C0A8016 */  lui        $t2, %hi(D_80159DE2)
    /* 31B054 802D6F04 954A9DE2 */  lhu        $t2, %lo(D_80159DE2)($t2)
    /* 31B058 802D6F08 86040000 */  lh         $a0, 0x0($s0)
    /* 31B05C 802D6F0C 860F0002 */  lh         $t7, 0x2($s0)
    /* 31B060 802D6F10 86060004 */  lh         $a2, 0x4($s0)
    /* 31B064 802D6F14 000A5880 */  sll        $t3, $t2, 2
    /* 31B068 802D6F18 2484FF88 */  addiu      $a0, $a0, -0x78
    /* 31B06C 802D6F1C 01EB2821 */  addu       $a1, $t7, $t3
    /* 31B070 802D6F20 24C60050 */  addiu      $a2, $a2, 0x50
    /* 31B074 802D6F24 0006CC00 */  sll        $t9, $a2, 16
    /* 31B078 802D6F28 00056C00 */  sll        $t5, $a1, 16
    /* 31B07C 802D6F2C 0004C400 */  sll        $t8, $a0, 16
    /* 31B080 802D6F30 3C078015 */  lui        $a3, %hi(D_80157FA0)
    /* 31B084 802D6F34 90E77FA0 */  lbu        $a3, %lo(D_80157FA0)($a3)
    /* 31B088 802D6F38 00182403 */  sra        $a0, $t8, 16
    /* 31B08C 802D6F3C 000D2C03 */  sra        $a1, $t5, 16
    /* 31B090 802D6F40 0C0334BA */  jal        func_800CD2E8_DC298
    /* 31B094 802D6F44 00193403 */   sra       $a2, $t9, 16
    /* 31B098 802D6F48 3C048005 */  lui        $a0, %hi(vehicleInstances)
    /* 31B09C 802D6F4C 2484DCD0 */  addiu      $a0, $a0, %lo(vehicleInstances)
    /* 31B0A0 802D6F50 0C03ED1A */  jal        func_800FB468_10A418
    /* 31B0A4 802D6F54 3C0546FA */   lui       $a1, (0x46FA0000 >> 16)
    /* 31B0A8 802D6F58 86430000 */  lh         $v1, 0x0($s2)
    /* 31B0AC 802D6F5C 3C098015 */  lui        $t1, %hi(D_80157F8C)
    /* 31B0B0 802D6F60 28640079 */  slti       $a0, $v1, 0x79
    /* 31B0B4 802D6F64 24780001 */  addiu      $t8, $v1, 0x1
    /* 31B0B8 802D6F68 1480016F */  bnez       $a0, .L802D7528_31B678
    /* 31B0BC 802D6F6C A6580000 */   sh        $t8, 0x0($s2)
    /* 31B0C0 802D6F70 A6400000 */  sh         $zero, 0x0($s2)
    /* 31B0C4 802D6F74 85297F8C */  lh         $t1, %lo(D_80157F8C)($t1)
    /* 31B0C8 802D6F78 3C018015 */  lui        $at, %hi(D_80157F8C)
    /* 31B0CC 802D6F7C 252A0001 */  addiu      $t2, $t1, 0x1
    /* 31B0D0 802D6F80 10000169 */  b          .L802D7528_31B678
    /* 31B0D4 802D6F84 A42A7F8C */   sh        $t2, %lo(D_80157F8C)($at)
    /* 31B0D8 802D6F88 3C128015 */  lui        $s2, %hi(D_80157F8E)
    /* 31B0DC 802D6F8C 26527F8E */  addiu      $s2, $s2, %lo(D_80157F8E)
    /* 31B0E0 802D6F90 864F0000 */  lh         $t7, 0x0($s2)
    /* 31B0E4 802D6F94 55E00012 */  bnel       $t7, $zero, .L802D6FE0_31B130
    /* 31B0E8 802D6F98 240D0014 */   addiu     $t5, $zero, 0x14
    /* 31B0EC 802D6F9C 0C03F70C */  jal        func_800FDC30_10CBE0
    /* 31B0F0 802D6FA0 00002025 */   or        $a0, $zero, $zero
    /* 31B0F4 802D6FA4 3C048015 */  lui        $a0, %hi(D_80157F9E)
    /* 31B0F8 802D6FA8 0C0334E4 */  jal        func_800CD390_DC340
    /* 31B0FC 802D6FAC 90847F9E */   lbu       $a0, %lo(D_80157F9E)($a0)
    /* 31B100 802D6FB0 3C048015 */  lui        $a0, %hi(D_80157F9E + 0x1)
    /* 31B104 802D6FB4 0C0334E4 */  jal        func_800CD390_DC340
    /* 31B108 802D6FB8 90847F9F */   lbu       $a0, %lo(D_80157F9E + 0x1)($a0)
    /* 31B10C 802D6FBC 3C048015 */  lui        $a0, %hi(D_80157FA0)
    /* 31B110 802D6FC0 0C0334E4 */  jal        func_800CD390_DC340
    /* 31B114 802D6FC4 90847FA0 */   lbu       $a0, %lo(D_80157FA0)($a0)
    /* 31B118 802D6FC8 3C018016 */  lui        $at, %hi(D_8015EA2C)
    /* 31B11C 802D6FCC E434EA2C */  swc1       $f20, %lo(D_8015EA2C)($at)
    /* 31B120 802D6FD0 3C018005 */  lui        $at, %hi(D_8005254C)
    /* 31B124 802D6FD4 240BFFFF */  addiu      $t3, $zero, -0x1
    /* 31B128 802D6FD8 AC2B254C */  sw         $t3, %lo(D_8005254C)($at)
    /* 31B12C 802D6FDC 240D0014 */  addiu      $t5, $zero, 0x14
  .L802D6FE0_31B130:
    /* 31B130 802D6FE0 240C0005 */  addiu      $t4, $zero, 0x5
    /* 31B134 802D6FE4 24190002 */  addiu      $t9, $zero, 0x2
    /* 31B138 802D6FE8 AFB90018 */  sw         $t9, 0x18($sp)
    /* 31B13C 802D6FEC AFAC0014 */  sw         $t4, 0x14($sp)
    /* 31B140 802D6FF0 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 31B144 802D6FF4 24046280 */  addiu      $a0, $zero, 0x6280
    /* 31B148 802D6FF8 24050292 */  addiu      $a1, $zero, 0x292
    /* 31B14C 802D6FFC 24066966 */  addiu      $a2, $zero, 0x6966
    /* 31B150 802D7000 0C0315A9 */  jal        func_800C56A4_D4654
    /* 31B154 802D7004 24070190 */   addiu     $a3, $zero, 0x190
    /* 31B158 802D7008 86430000 */  lh         $v1, 0x0($s2)
    /* 31B15C 802D700C 3C188015 */  lui        $t8, %hi(D_80157F8C)
    /* 31B160 802D7010 28640033 */  slti       $a0, $v1, 0x33
    /* 31B164 802D7014 246E0001 */  addiu      $t6, $v1, 0x1
    /* 31B168 802D7018 14800143 */  bnez       $a0, .L802D7528_31B678
    /* 31B16C 802D701C A64E0000 */   sh        $t6, 0x0($s2)
    /* 31B170 802D7020 A6400000 */  sh         $zero, 0x0($s2)
    /* 31B174 802D7024 87187F8C */  lh         $t8, %lo(D_80157F8C)($t8)
    /* 31B178 802D7028 3C018015 */  lui        $at, %hi(D_80157F8C)
    /* 31B17C 802D702C 27090001 */  addiu      $t1, $t8, 0x1
    /* 31B180 802D7030 1000013D */  b          .L802D7528_31B678
    /* 31B184 802D7034 A4297F8C */   sh        $t1, %lo(D_80157F8C)($at)
    /* 31B188 802D7038 3C088015 */  lui        $t0, %hi(D_80157FA4)
    /* 31B18C 802D703C 25087FA4 */  addiu      $t0, $t0, %lo(D_80157FA4)
    /* 31B190 802D7040 8D020000 */  lw         $v0, 0x0($t0)
    /* 31B194 802D7044 3C0F8016 */  lui        $t7, %hi(D_80159DE2)
    /* 31B198 802D7048 95EF9DE2 */  lhu        $t7, %lo(D_80159DE2)($t7)
    /* 31B19C 802D704C 844A0002 */  lh         $t2, 0x2($v0)
    /* 31B1A0 802D7050 84510000 */  lh         $s1, 0x0($v0)
    /* 31B1A4 802D7054 000F5880 */  sll        $t3, $t7, 2
    /* 31B1A8 802D7058 014B6821 */  addu       $t5, $t2, $t3
    /* 31B1AC 802D705C A7AD006C */  sh         $t5, 0x6C($sp)
    /* 31B1B0 802D7060 844C0004 */  lh         $t4, 0x4($v0)
    /* 31B1B4 802D7064 24190014 */  addiu      $t9, $zero, 0x14
    /* 31B1B8 802D7068 240E0005 */  addiu      $t6, $zero, 0x5
    /* 31B1BC 802D706C 24180002 */  addiu      $t8, $zero, 0x2
    /* 31B1C0 802D7070 AFB80018 */  sw         $t8, 0x18($sp)
    /* 31B1C4 802D7074 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 31B1C8 802D7078 AFB90010 */  sw         $t9, 0x10($sp)
    /* 31B1CC 802D707C 24046280 */  addiu      $a0, $zero, 0x6280
    /* 31B1D0 802D7080 24050292 */  addiu      $a1, $zero, 0x292
    /* 31B1D4 802D7084 24066966 */  addiu      $a2, $zero, 0x6966
    /* 31B1D8 802D7088 24070190 */  addiu      $a3, $zero, 0x190
    /* 31B1DC 802D708C 0C0315A9 */  jal        func_800C56A4_D4654
    /* 31B1E0 802D7090 A7AC006A */   sh        $t4, 0x6A($sp)
    /* 31B1E4 802D7094 3C128015 */  lui        $s2, %hi(D_80157F8E)
    /* 31B1E8 802D7098 26527F8E */  addiu      $s2, $s2, %lo(D_80157F8E)
    /* 31B1EC 802D709C 86430000 */  lh         $v1, 0x0($s2)
    /* 31B1F0 802D70A0 24010012 */  addiu      $at, $zero, 0x12
    /* 31B1F4 802D70A4 00112400 */  sll        $a0, $s1, 16
    /* 31B1F8 802D70A8 0061001A */  div        $zero, $v1, $at
    /* 31B1FC 802D70AC 00004810 */  mfhi       $t1
    /* 31B200 802D70B0 00047C03 */  sra        $t7, $a0, 16
    /* 31B204 802D70B4 1520003D */  bnez       $t1, .L802D71AC_31B2FC
    /* 31B208 802D70B8 01E02025 */   or        $a0, $t7, $zero
    /* 31B20C 802D70BC 240A00FA */  addiu      $t2, $zero, 0xFA
    /* 31B210 802D70C0 240B0064 */  addiu      $t3, $zero, 0x64
    /* 31B214 802D70C4 240D0014 */  addiu      $t5, $zero, 0x14
    /* 31B218 802D70C8 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 31B21C 802D70CC AFAB0014 */  sw         $t3, 0x14($sp)
    /* 31B220 802D70D0 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 31B224 802D70D4 87A5006C */  lh         $a1, 0x6C($sp)
    /* 31B228 802D70D8 87A6006A */  lh         $a2, 0x6A($sp)
    /* 31B22C 802D70DC 0C03416A */  jal        func_800D05A8_DF558
    /* 31B230 802D70E0 240703E8 */   addiu     $a3, $zero, 0x3E8
    /* 31B234 802D70E4 87B0006C */  lh         $s0, 0x6C($sp)
    /* 31B238 802D70E8 00112400 */  sll        $a0, $s1, 16
    /* 31B23C 802D70EC 00046403 */  sra        $t4, $a0, 16
    /* 31B240 802D70F0 2610001E */  addiu      $s0, $s0, 0x1E
    /* 31B244 802D70F4 0010CC00 */  sll        $t9, $s0, 16
    /* 31B248 802D70F8 00198403 */  sra        $s0, $t9, 16
    /* 31B24C 802D70FC 00102C00 */  sll        $a1, $s0, 16
    /* 31B250 802D7100 0005C403 */  sra        $t8, $a1, 16
    /* 31B254 802D7104 24090002 */  addiu      $t1, $zero, 0x2
    /* 31B258 802D7108 AFA90010 */  sw         $t1, 0x10($sp)
    /* 31B25C 802D710C 03002825 */  or         $a1, $t8, $zero
    /* 31B260 802D7110 01802025 */  or         $a0, $t4, $zero
    /* 31B264 802D7114 87A6006A */  lh         $a2, 0x6A($sp)
    /* 31B268 802D7118 0C037B97 */  jal        func_800DEE5C_EDE0C
    /* 31B26C 802D711C 2407000A */   addiu     $a3, $zero, 0xA
    /* 31B270 802D7120 00112400 */  sll        $a0, $s1, 16
    /* 31B274 802D7124 00102C00 */  sll        $a1, $s0, 16
    /* 31B278 802D7128 00055403 */  sra        $t2, $a1, 16
    /* 31B27C 802D712C 00047C03 */  sra        $t7, $a0, 16
    /* 31B280 802D7130 240B0001 */  addiu      $t3, $zero, 0x1
    /* 31B284 802D7134 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 31B288 802D7138 01E02025 */  or         $a0, $t7, $zero
    /* 31B28C 802D713C 01402825 */  or         $a1, $t2, $zero
    /* 31B290 802D7140 87A6006A */  lh         $a2, 0x6A($sp)
    /* 31B294 802D7144 0C037B97 */  jal        func_800DEE5C_EDE0C
    /* 31B298 802D7148 2407000D */   addiu     $a3, $zero, 0xD
    /* 31B29C 802D714C 87AD006C */  lh         $t5, 0x6C($sp)
    /* 31B2A0 802D7150 87AC006A */  lh         $t4, 0x6A($sp)
    /* 31B2A4 802D7154 241900FA */  addiu      $t9, $zero, 0xFA
    /* 31B2A8 802D7158 240E0064 */  addiu      $t6, $zero, 0x64
    /* 31B2AC 802D715C 24180014 */  addiu      $t8, $zero, 0x14
    /* 31B2B0 802D7160 27A90058 */  addiu      $t1, $sp, 0x58
    /* 31B2B4 802D7164 240F0050 */  addiu      $t7, $zero, 0x50
    /* 31B2B8 802D7168 240A000A */  addiu      $t2, $zero, 0xA
    /* 31B2BC 802D716C A7B1005C */  sh         $s1, 0x5C($sp)
    /* 31B2C0 802D7170 A3B90058 */  sb         $t9, 0x58($sp)
    /* 31B2C4 802D7174 A3AE0059 */  sb         $t6, 0x59($sp)
    /* 31B2C8 802D7178 A3B8005A */  sb         $t8, 0x5A($sp)
    /* 31B2CC 802D717C AFAA0018 */  sw         $t2, 0x18($sp)
    /* 31B2D0 802D7180 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 31B2D4 802D7184 AFA90010 */  sw         $t1, 0x10($sp)
    /* 31B2D8 802D7188 27A4005C */  addiu      $a0, $sp, 0x5C
    /* 31B2DC 802D718C 2405001E */  addiu      $a1, $zero, 0x1E
    /* 31B2E0 802D7190 240601F4 */  addiu      $a2, $zero, 0x1F4
    /* 31B2E4 802D7194 240700FF */  addiu      $a3, $zero, 0xFF
    /* 31B2E8 802D7198 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 31B2EC 802D719C A7AD005E */  sh         $t5, 0x5E($sp)
    /* 31B2F0 802D71A0 0C02E66A */  jal        func_800B99A8_C8958
    /* 31B2F4 802D71A4 A7AC0060 */   sh        $t4, 0x60($sp)
    /* 31B2F8 802D71A8 86430000 */  lh         $v1, 0x0($s2)
  .L802D71AC_31B2FC:
    /* 31B2FC 802D71AC 24010030 */  addiu      $at, $zero, 0x30
    /* 31B300 802D71B0 1461000B */  bne        $v1, $at, .L802D71E0_31B330
    /* 31B304 802D71B4 00112400 */   sll       $a0, $s1, 16
    /* 31B308 802D71B8 00045C03 */  sra        $t3, $a0, 16
    /* 31B30C 802D71BC 27AD004C */  addiu      $t5, $sp, 0x4C
    /* 31B310 802D71C0 AFAD0014 */  sw         $t5, 0x14($sp)
    /* 31B314 802D71C4 01602025 */  or         $a0, $t3, $zero
    /* 31B318 802D71C8 87A5006C */  lh         $a1, 0x6C($sp)
    /* 31B31C 802D71CC 87A6006A */  lh         $a2, 0x6A($sp)
    /* 31B320 802D71D0 24070190 */  addiu      $a3, $zero, 0x190
    /* 31B324 802D71D4 0C037E72 */  jal        func_800DF9C8_EE978
    /* 31B328 802D71D8 AFA00010 */   sw        $zero, 0x10($sp)
    /* 31B32C 802D71DC 86430000 */  lh         $v1, 0x0($s2)
  .L802D71E0_31B330:
    /* 31B330 802D71E0 28640033 */  slti       $a0, $v1, 0x33
    /* 31B334 802D71E4 246C0001 */  addiu      $t4, $v1, 0x1
    /* 31B338 802D71E8 148000CF */  bnez       $a0, .L802D7528_31B678
    /* 31B33C 802D71EC A64C0000 */   sh        $t4, 0x0($s2)
    /* 31B340 802D71F0 A6400000 */  sh         $zero, 0x0($s2)
    /* 31B344 802D71F4 3C198015 */  lui        $t9, %hi(D_80157F8C)
    /* 31B348 802D71F8 87397F8C */  lh         $t9, %lo(D_80157F8C)($t9)
    /* 31B34C 802D71FC 3C018015 */  lui        $at, %hi(D_80157F8C)
    /* 31B350 802D7200 272E0001 */  addiu      $t6, $t9, 0x1
    /* 31B354 802D7204 100000C8 */  b          .L802D7528_31B678
    /* 31B358 802D7208 A42E7F8C */   sh        $t6, %lo(D_80157F8C)($at)
    /* 31B35C 802D720C 3C088015 */  lui        $t0, %hi(D_80157FA4)
    /* 31B360 802D7210 25087FA4 */  addiu      $t0, $t0, %lo(D_80157FA4)
    /* 31B364 802D7214 8D020000 */  lw         $v0, 0x0($t0)
    /* 31B368 802D7218 24187D00 */  addiu      $t8, $zero, 0x7D00
    /* 31B36C 802D721C 3C128015 */  lui        $s2, %hi(D_80157F8E)
    /* 31B370 802D7220 84510000 */  lh         $s1, 0x0($v0)
    /* 31B374 802D7224 84450004 */  lh         $a1, 0x4($v0)
    /* 31B378 802D7228 A4580002 */  sh         $t8, 0x2($v0)
    /* 31B37C 802D722C 8D020000 */  lw         $v0, 0x0($t0)
    /* 31B380 802D7230 26527F8E */  addiu      $s2, $s2, %lo(D_80157F8E)
    /* 31B384 802D7234 00112400 */  sll        $a0, $s1, 16
    /* 31B388 802D7238 84490000 */  lh         $t1, 0x0($v0)
    /* 31B38C 802D723C 00045403 */  sra        $t2, $a0, 16
    /* 31B390 802D7240 01402025 */  or         $a0, $t2, $zero
    /* 31B394 802D7244 252F2710 */  addiu      $t7, $t1, 0x2710
    /* 31B398 802D7248 A44F0000 */  sh         $t7, 0x0($v0)
    /* 31B39C 802D724C 86430000 */  lh         $v1, 0x0($s2)
    /* 31B3A0 802D7250 54600037 */  bnel       $v1, $zero, .L802D7330_31B480
    /* 31B3A4 802D7254 0003202A */   slt       $a0, $zero, $v1
    /* 31B3A8 802D7258 0C04564B */  jal        func_8011592C_1248DC
    /* 31B3AC 802D725C A7A5006A */   sh        $a1, 0x6A($sp)
    /* 31B3B0 802D7260 00002025 */  or         $a0, $zero, $zero
    /* 31B3B4 802D7264 0C03F544 */  jal        func_800FD510_10C4C0
    /* 31B3B8 802D7268 24050072 */   addiu     $a1, $zero, 0x72
    /* 31B3BC 802D726C 3C0B8014 */  lui        $t3, %hi(D_8013FD78)
    /* 31B3C0 802D7270 8D6BFD78 */  lw         $t3, %lo(D_8013FD78)($t3)
    /* 31B3C4 802D7274 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 31B3C8 802D7278 26102B34 */  addiu      $s0, $s0, %lo(D_80052B34)
    /* 31B3CC 802D727C A560000A */  sh         $zero, 0xA($t3)
    /* 31B3D0 802D7280 8E0C0000 */  lw         $t4, 0x0($s0)
    /* 31B3D4 802D7284 240DBE1D */  addiu      $t5, $zero, -0x41E3
    /* 31B3D8 802D7288 24190002 */  addiu      $t9, $zero, 0x2
    /* 31B3DC 802D728C A58D0006 */  sh         $t5, 0x6($t4)
    /* 31B3E0 802D7290 AFB90010 */  sw         $t9, 0x10($sp)
    /* 31B3E4 802D7294 24046280 */  addiu      $a0, $zero, 0x6280
    /* 31B3E8 802D7298 2405027E */  addiu      $a1, $zero, 0x27E
    /* 31B3EC 802D729C 24066966 */  addiu      $a2, $zero, 0x6966
    /* 31B3F0 802D72A0 0C037B97 */  jal        func_800DEE5C_EDE0C
    /* 31B3F4 802D72A4 2407000D */   addiu     $a3, $zero, 0xD
    /* 31B3F8 802D72A8 240E0001 */  addiu      $t6, $zero, 0x1
    /* 31B3FC 802D72AC AFAE0010 */  sw         $t6, 0x10($sp)
    /* 31B400 802D72B0 24046280 */  addiu      $a0, $zero, 0x6280
    /* 31B404 802D72B4 2405027E */  addiu      $a1, $zero, 0x27E
    /* 31B408 802D72B8 24066966 */  addiu      $a2, $zero, 0x6966
    /* 31B40C 802D72BC 0C037B97 */  jal        func_800DEE5C_EDE0C
    /* 31B410 802D72C0 2407000F */   addiu     $a3, $zero, 0xF
    /* 31B414 802D72C4 87B8006C */  lh         $t8, 0x6C($sp)
    /* 31B418 802D72C8 87A9006A */  lh         $t1, 0x6A($sp)
    /* 31B41C 802D72CC 240F00FA */  addiu      $t7, $zero, 0xFA
    /* 31B420 802D72D0 240A0064 */  addiu      $t2, $zero, 0x64
    /* 31B424 802D72D4 240B0014 */  addiu      $t3, $zero, 0x14
    /* 31B428 802D72D8 27AD0058 */  addiu      $t5, $sp, 0x58
    /* 31B42C 802D72DC 240C0050 */  addiu      $t4, $zero, 0x50
    /* 31B430 802D72E0 2419000A */  addiu      $t9, $zero, 0xA
    /* 31B434 802D72E4 A7B1005C */  sh         $s1, 0x5C($sp)
    /* 31B438 802D72E8 A3AF0058 */  sb         $t7, 0x58($sp)
    /* 31B43C 802D72EC A3AA0059 */  sb         $t2, 0x59($sp)
    /* 31B440 802D72F0 A3AB005A */  sb         $t3, 0x5A($sp)
    /* 31B444 802D72F4 AFB90018 */  sw         $t9, 0x18($sp)
    /* 31B448 802D72F8 AFAC0014 */  sw         $t4, 0x14($sp)
    /* 31B44C 802D72FC AFAD0010 */  sw         $t5, 0x10($sp)
    /* 31B450 802D7300 27A4005C */  addiu      $a0, $sp, 0x5C
    /* 31B454 802D7304 2405001E */  addiu      $a1, $zero, 0x1E
    /* 31B458 802D7308 240601F4 */  addiu      $a2, $zero, 0x1F4
    /* 31B45C 802D730C 240700FF */  addiu      $a3, $zero, 0xFF
    /* 31B460 802D7310 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 31B464 802D7314 A7B8005E */  sh         $t8, 0x5E($sp)
    /* 31B468 802D7318 0C02E66A */  jal        func_800B99A8_C8958
    /* 31B46C 802D731C A7A90060 */   sh        $t1, 0x60($sp)
    /* 31B470 802D7320 0C038D78 */  jal        func_800E35E0_F2590
    /* 31B474 802D7324 240400FF */   addiu     $a0, $zero, 0xFF
    /* 31B478 802D7328 86430000 */  lh         $v1, 0x0($s2)
    /* 31B47C 802D732C 0003202A */  slt        $a0, $zero, $v1
  .L802D7330_31B480:
    /* 31B480 802D7330 246E0001 */  addiu      $t6, $v1, 0x1
    /* 31B484 802D7334 1080007C */  beqz       $a0, .L802D7528_31B678
    /* 31B488 802D7338 A64E0000 */   sh        $t6, 0x0($s2)
    /* 31B48C 802D733C A6400000 */  sh         $zero, 0x0($s2)
    /* 31B490 802D7340 3C188015 */  lui        $t8, %hi(D_80157F8C)
    /* 31B494 802D7344 87187F8C */  lh         $t8, %lo(D_80157F8C)($t8)
    /* 31B498 802D7348 3C018015 */  lui        $at, %hi(D_80157F8C)
    /* 31B49C 802D734C 27090001 */  addiu      $t1, $t8, 0x1
    /* 31B4A0 802D7350 10000075 */  b          .L802D7528_31B678
    /* 31B4A4 802D7354 A4297F8C */   sh        $t1, %lo(D_80157F8C)($at)
    /* 31B4A8 802D7358 3C128015 */  lui        $s2, %hi(D_80157F8E)
    /* 31B4AC 802D735C 26527F8E */  addiu      $s2, $s2, %lo(D_80157F8E)
    /* 31B4B0 802D7360 86430000 */  lh         $v1, 0x0($s2)
    /* 31B4B4 802D7364 240A00FF */  addiu      $t2, $zero, 0xFF
    /* 31B4B8 802D7368 28610005 */  slti       $at, $v1, 0x5
    /* 31B4BC 802D736C 1020000A */  beqz       $at, .L802D7398_31B4E8
    /* 31B4C0 802D7370 00037880 */   sll       $t7, $v1, 2
    /* 31B4C4 802D7374 01E37823 */  subu       $t7, $t7, $v1
    /* 31B4C8 802D7378 000F7880 */  sll        $t7, $t7, 2
    /* 31B4CC 802D737C 01E37821 */  addu       $t7, $t7, $v1
    /* 31B4D0 802D7380 000F7880 */  sll        $t7, $t7, 2
    /* 31B4D4 802D7384 01E37823 */  subu       $t7, $t7, $v1
    /* 31B4D8 802D7388 014F2023 */  subu       $a0, $t2, $t7
    /* 31B4DC 802D738C 308B00FF */  andi       $t3, $a0, 0xFF
    /* 31B4E0 802D7390 0C038D78 */  jal        func_800E35E0_F2590
    /* 31B4E4 802D7394 01602025 */   or        $a0, $t3, $zero
  .L802D7398_31B4E8:
    /* 31B4E8 802D7398 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 31B4EC 802D739C 3C11802E */  lui        $s1, %hi(D_802E7C48)
    /* 31B4F0 802D73A0 4481A800 */  mtc1       $at, $f21
    /* 31B4F4 802D73A4 4480A000 */  mtc1       $zero, $f20
    /* 31B4F8 802D73A8 26317C48 */  addiu      $s1, $s1, %lo(D_802E7C48)
    /* 31B4FC 802D73AC 00008025 */  or         $s0, $zero, $zero
    /* 31B500 802D73B0 864D0000 */  lh         $t5, 0x0($s2)
  .L802D73B4_31B504:
    /* 31B504 802D73B4 24046280 */  addiu      $a0, $zero, 0x6280
    /* 31B508 802D73B8 2405027E */  addiu      $a1, $zero, 0x27E
    /* 31B50C 802D73BC 15A00007 */  bnez       $t5, .L802D73DC_31B52C
    /* 31B510 802D73C0 24012AAA */   addiu     $at, $zero, 0x2AAA
    /* 31B514 802D73C4 24066966 */  addiu      $a2, $zero, 0x6966
    /* 31B518 802D73C8 0C0369BC */  jal        func_800DA6F0_E96A0
    /* 31B51C 802D73CC 24070001 */   addiu     $a3, $zero, 0x1
    /* 31B520 802D73D0 02306021 */  addu       $t4, $s1, $s0
    /* 31B524 802D73D4 10000030 */  b          .L802D7498_31B5E8
    /* 31B528 802D73D8 A1820000 */   sb        $v0, 0x0($t4)
  .L802D73DC_31B52C:
    /* 31B52C 802D73DC 02010019 */  multu      $s0, $at
    /* 31B530 802D73E0 00002012 */  mflo       $a0
    /* 31B534 802D73E4 3099FFFF */  andi       $t9, $a0, 0xFFFF
    /* 31B538 802D73E8 03202025 */  or         $a0, $t9, $zero
    /* 31B53C 802D73EC 0C007654 */  jal        coss
    /* 31B540 802D73F0 AFB90044 */   sw        $t9, 0x44($sp)
    /* 31B544 802D73F4 44829000 */  mtc1       $v0, $f18
    /* 31B548 802D73F8 864E0000 */  lh         $t6, 0x0($s2)
    /* 31B54C 802D73FC 8FA40044 */  lw         $a0, 0x44($sp)
    /* 31B550 802D7400 468091A0 */  cvt.s.w    $f6, $f18
    /* 31B554 802D7404 000EC080 */  sll        $t8, $t6, 2
    /* 31B558 802D7408 030EC021 */  addu       $t8, $t8, $t6
    /* 31B55C 802D740C 0018C080 */  sll        $t8, $t8, 2
    /* 31B560 802D7410 44988000 */  mtc1       $t8, $f16
    /* 31B564 802D7414 46003221 */  cvt.d.s    $f8, $f6
    /* 31B568 802D7418 46808121 */  cvt.d.w    $f4, $f16
    /* 31B56C 802D741C 46344283 */  div.d      $f10, $f8, $f20
    /* 31B570 802D7420 46245482 */  mul.d      $f18, $f10, $f4
    /* 31B574 802D7424 4620918D */  trunc.w.d  $f6, $f18
    /* 31B578 802D7428 440A3000 */  mfc1       $t2, $f6
    /* 31B57C 802D742C 0C007660 */  jal        sins
    /* 31B580 802D7430 A7AA0068 */   sh        $t2, 0x68($sp)
    /* 31B584 802D7434 44824000 */  mtc1       $v0, $f8
    /* 31B588 802D7438 864F0000 */  lh         $t7, 0x0($s2)
    /* 31B58C 802D743C 87A40068 */  lh         $a0, 0x68($sp)
    /* 31B590 802D7440 46804420 */  cvt.s.w    $f16, $f8
    /* 31B594 802D7444 000F5880 */  sll        $t3, $t7, 2
    /* 31B598 802D7448 016F5821 */  addu       $t3, $t3, $t7
    /* 31B59C 802D744C 000B5880 */  sll        $t3, $t3, 2
    /* 31B5A0 802D7450 448B9000 */  mtc1       $t3, $f18
    /* 31B5A4 802D7454 24846280 */  addiu      $a0, $a0, 0x6280
    /* 31B5A8 802D7458 460082A1 */  cvt.d.s    $f10, $f16
    /* 31B5AC 802D745C 468091A1 */  cvt.d.w    $f6, $f18
    /* 31B5B0 802D7460 00047400 */  sll        $t6, $a0, 16
    /* 31B5B4 802D7464 02307821 */  addu       $t7, $s1, $s0
    /* 31B5B8 802D7468 91E70000 */  lbu        $a3, 0x0($t7)
    /* 31B5BC 802D746C 46345103 */  div.d      $f4, $f10, $f20
    /* 31B5C0 802D7470 000E2403 */  sra        $a0, $t6, 16
    /* 31B5C4 802D7474 2405027E */  addiu      $a1, $zero, 0x27E
    /* 31B5C8 802D7478 46262202 */  mul.d      $f8, $f4, $f6
    /* 31B5CC 802D747C 4620440D */  trunc.w.d  $f16, $f8
    /* 31B5D0 802D7480 44198000 */  mfc1       $t9, $f16
    /* 31B5D4 802D7484 00000000 */  nop
    /* 31B5D8 802D7488 27266966 */  addiu      $a2, $t9, 0x6966
    /* 31B5DC 802D748C 00064C00 */  sll        $t1, $a2, 16
    /* 31B5E0 802D7490 0C0366C5 */  jal        func_800D9B14_E8AC4
    /* 31B5E4 802D7494 00093403 */   sra       $a2, $t1, 16
  .L802D7498_31B5E8:
    /* 31B5E8 802D7498 26100001 */  addiu      $s0, $s0, 0x1
    /* 31B5EC 802D749C 00105C00 */  sll        $t3, $s0, 16
    /* 31B5F0 802D74A0 000B8403 */  sra        $s0, $t3, 16
    /* 31B5F4 802D74A4 2A010006 */  slti       $at, $s0, 0x6
    /* 31B5F8 802D74A8 5420FFC2 */  bnel       $at, $zero, .L802D73B4_31B504
    /* 31B5FC 802D74AC 864D0000 */   lh        $t5, 0x0($s2)
    /* 31B600 802D74B0 86430000 */  lh         $v1, 0x0($s2)
    /* 31B604 802D74B4 3C198015 */  lui        $t9, %hi(D_80157F8C)
    /* 31B608 802D74B8 28640029 */  slti       $a0, $v1, 0x29
    /* 31B60C 802D74BC 246C0001 */  addiu      $t4, $v1, 0x1
    /* 31B610 802D74C0 14800019 */  bnez       $a0, .L802D7528_31B678
    /* 31B614 802D74C4 A64C0000 */   sh        $t4, 0x0($s2)
    /* 31B618 802D74C8 A6400000 */  sh         $zero, 0x0($s2)
    /* 31B61C 802D74CC 87397F8C */  lh         $t9, %lo(D_80157F8C)($t9)
    /* 31B620 802D74D0 3C018015 */  lui        $at, %hi(D_80157F8C)
    /* 31B624 802D74D4 272E0001 */  addiu      $t6, $t9, 0x1
    /* 31B628 802D74D8 10000013 */  b          .L802D7528_31B678
    /* 31B62C 802D74DC A42E7F8C */   sh        $t6, %lo(D_80157F8C)($at)
    /* 31B630 802D74E0 3C11802E */  lui        $s1, %hi(D_802E7C48)
    /* 31B634 802D74E4 26317C48 */  addiu      $s1, $s1, %lo(D_802E7C48)
    /* 31B638 802D74E8 00008025 */  or         $s0, $zero, $zero
    /* 31B63C 802D74EC 0230C021 */  addu       $t8, $s1, $s0
  .L802D74F0_31B640:
    /* 31B640 802D74F0 0C036718 */  jal        func_800D9C60_E8C10
    /* 31B644 802D74F4 93040000 */   lbu       $a0, 0x0($t8)
    /* 31B648 802D74F8 26100001 */  addiu      $s0, $s0, 0x1
    /* 31B64C 802D74FC 00104C00 */  sll        $t1, $s0, 16
    /* 31B650 802D7500 00098403 */  sra        $s0, $t1, 16
    /* 31B654 802D7504 2A010006 */  slti       $at, $s0, 0x6
    /* 31B658 802D7508 5420FFF9 */  bnel       $at, $zero, .L802D74F0_31B640
    /* 31B65C 802D750C 0230C021 */   addu      $t8, $s1, $s0
    /* 31B660 802D7510 3C118016 */  lui        $s1, %hi(D_80159DDF)
    /* 31B664 802D7514 26319DDF */  addiu      $s1, $s1, %lo(D_80159DDF)
    /* 31B668 802D7518 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 31B66C 802D751C A22F0000 */  sb         $t7, 0x0($s1)
    /* 31B670 802D7520 10000002 */  b          .L802D752C_31B67C
    /* 31B674 802D7524 24020001 */   addiu     $v0, $zero, 0x1
  .L802D7528_31B678:
    /* 31B678 802D7528 00001025 */  or         $v0, $zero, $zero
  .L802D752C_31B67C:
    /* 31B67C 802D752C 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 31B680 802D7530 D7B40028 */  ldc1       $f20, 0x28($sp)
    /* 31B684 802D7534 8FB00030 */  lw         $s0, 0x30($sp)
    /* 31B688 802D7538 8FB10034 */  lw         $s1, 0x34($sp)
    /* 31B68C 802D753C 8FB20038 */  lw         $s2, 0x38($sp)
    /* 31B690 802D7540 03E00008 */  jr         $ra
    /* 31B694 802D7544 27BD0078 */   addiu     $sp, $sp, 0x78
endlabel func_802D67A8_31A8F8
