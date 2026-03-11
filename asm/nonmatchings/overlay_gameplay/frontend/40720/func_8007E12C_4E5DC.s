nonmatching func_8007E12C_4E5DC, 0x8E0

glabel func_8007E12C_4E5DC
    /* 4E5DC 8007E12C 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* 4E5E0 8007E130 3C0F800D */  lui        $t7, %hi(D_800D7A5C)
    /* 4E5E4 8007E134 8DEF7A5C */  lw         $t7, %lo(D_800D7A5C)($t7)
    /* 4E5E8 8007E138 3C0E800D */  lui        $t6, %hi(D_800D7A54)
    /* 4E5EC 8007E13C 8DCE7A54 */  lw         $t6, %lo(D_800D7A54)($t6)
    /* 4E5F0 8007E140 000FC0C0 */  sll        $t8, $t7, 3
    /* 4E5F4 8007E144 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 4E5F8 8007E148 AFBE0040 */  sw         $fp, 0x40($sp)
    /* 4E5FC 8007E14C AFB7003C */  sw         $s7, 0x3C($sp)
    /* 4E600 8007E150 AFB60038 */  sw         $s6, 0x38($sp)
    /* 4E604 8007E154 AFB50034 */  sw         $s5, 0x34($sp)
    /* 4E608 8007E158 AFB40030 */  sw         $s4, 0x30($sp)
    /* 4E60C 8007E15C AFB3002C */  sw         $s3, 0x2C($sp)
    /* 4E610 8007E160 AFB20028 */  sw         $s2, 0x28($sp)
    /* 4E614 8007E164 AFB10024 */  sw         $s1, 0x24($sp)
    /* 4E618 8007E168 AFB00020 */  sw         $s0, 0x20($sp)
    /* 4E61C 8007E16C AFA00058 */  sw         $zero, 0x58($sp)
    /* 4E620 8007E170 3C198009 */  lui        $t9, %hi(D_80094900)
    /* 4E624 8007E174 01D81821 */  addu       $v1, $t6, $t8
    /* 4E628 8007E178 8C690000 */  lw         $t1, 0x0($v1)
    /* 4E62C 8007E17C 8F394900 */  lw         $t9, %lo(D_80094900)($t9)
    /* 4E630 8007E180 3C16800D */  lui        $s6, %hi(D_800D7A58)
    /* 4E634 8007E184 24170003 */  addiu      $s7, $zero, 0x3
    /* 4E638 8007E188 17290213 */  bne        $t9, $t1, .L8007E9D8_4EE88
    /* 4E63C 8007E18C 241E0001 */   addiu     $fp, $zero, 0x1
    /* 4E640 8007E190 3C15800D */  lui        $s5, %hi(D_800D7A1C)
    /* 4E644 8007E194 3C13800D */  lui        $s3, %hi(D_800D7A8D)
    /* 4E648 8007E198 3C11800D */  lui        $s1, %hi(D_800D7A34)
    /* 4E64C 8007E19C 26317A34 */  addiu      $s1, $s1, %lo(D_800D7A34)
    /* 4E650 8007E1A0 26737A8D */  addiu      $s3, $s3, %lo(D_800D7A8D)
    /* 4E654 8007E1A4 26B57A1C */  addiu      $s5, $s5, %lo(D_800D7A1C)
    /* 4E658 8007E1A8 26D67A58 */  addiu      $s6, $s6, %lo(D_800D7A58)
    /* 4E65C 8007E1AC 2414002C */  addiu      $s4, $zero, 0x2C
    /* 4E660 8007E1B0 2412001C */  addiu      $s2, $zero, 0x1C
    /* 4E664 8007E1B4 90620004 */  lbu        $v0, 0x4($v1)
  .L8007E1B8_4E668:
    /* 4E668 8007E1B8 2C410023 */  sltiu      $at, $v0, 0x23
    /* 4E66C 8007E1BC 102001EB */  beqz       $at, .L8007E96C_4EE1C
    /* 4E670 8007E1C0 AFA20048 */   sw        $v0, 0x48($sp)
    /* 4E674 8007E1C4 00025080 */  sll        $t2, $v0, 2
    /* 4E678 8007E1C8 3C01800B */  lui        $at, %hi(jtbl_800AE9AC_overlay_gameplay_frontend)
    /* 4E67C 8007E1CC 002A0821 */  addu       $at, $at, $t2
    /* 4E680 8007E1D0 8C2AE9AC */  lw         $t2, %lo(jtbl_800AE9AC_overlay_gameplay_frontend)($at)
    /* 4E684 8007E1D4 01400008 */  jr         $t2
    /* 4E688 8007E1D8 00000000 */   nop
    /* 4E68C 8007E1DC 906B0005 */  lbu        $t3, 0x5($v1)
    /* 4E690 8007E1E0 3C0D800D */  lui        $t5, %hi(D_800D7A20)
    /* 4E694 8007E1E4 8DAD7A20 */  lw         $t5, %lo(D_800D7A20)($t5)
    /* 4E698 8007E1E8 000B60C0 */  sll        $t4, $t3, 3
    /* 4E69C 8007E1EC 8EB80000 */  lw         $t8, 0x0($s5)
    /* 4E6A0 8007E1F0 018D4021 */  addu       $t0, $t4, $t5
    /* 4E6A4 8007E1F4 910F0004 */  lbu        $t7, 0x4($t0)
    /* 4E6A8 8007E1F8 8D190000 */  lw         $t9, 0x0($t0)
    /* 4E6AC 8007E1FC 01F40019 */  multu      $t7, $s4
    /* 4E6B0 8007E200 8F240000 */  lw         $a0, 0x0($t9)
    /* 4E6B4 8007E204 AFA80070 */  sw         $t0, 0x70($sp)
    /* 4E6B8 8007E208 00007012 */  mflo       $t6
    /* 4E6BC 8007E20C 01D88021 */  addu       $s0, $t6, $t8
    /* 4E6C0 8007E210 0C020277 */  jal        func_800809DC_50E8C
    /* 4E6C4 8007E214 00000000 */   nop
    /* 4E6C8 8007E218 8FA80070 */  lw         $t0, 0x70($sp)
    /* 4E6CC 8007E21C AE020008 */  sw         $v0, 0x8($s0)
    /* 4E6D0 8007E220 920A0018 */  lbu        $t2, 0x18($s0)
    /* 4E6D4 8007E224 91090005 */  lbu        $t1, 0x5($t0)
    /* 4E6D8 8007E228 920D0019 */  lbu        $t5, 0x19($s0)
    /* 4E6DC 8007E22C 3C0C800D */  lui        $t4, %hi(D_800D7B10)
    /* 4E6E0 8007E230 A2090029 */  sb         $t1, 0x29($s0)
    /* 4E6E4 8007E234 258C7B10 */  addiu      $t4, $t4, %lo(D_800D7B10)
    /* 4E6E8 8007E238 8D060000 */  lw         $a2, 0x0($t0)
    /* 4E6EC 8007E23C 000A5980 */  sll        $t3, $t2, 6
    /* 4E6F0 8007E240 016C2821 */  addu       $a1, $t3, $t4
    /* 4E6F4 8007E244 00402025 */  or         $a0, $v0, $zero
    /* 4E6F8 8007E248 03C03825 */  or         $a3, $fp, $zero
    /* 4E6FC 8007E24C 0C0200D7 */  jal        func_8008035C_5080C
    /* 4E700 8007E250 AFAD0010 */   sw        $t5, 0x10($sp)
    /* 4E704 8007E254 100001C9 */  b          .L8007E97C_4EE2C
    /* 4E708 8007E258 8FAA0058 */   lw        $t2, 0x58($sp)
    /* 4E70C 8007E25C 3C018009 */  lui        $at, %hi(D_80094930)
    /* 4E710 8007E260 AC3E4930 */  sw         $fp, %lo(D_80094930)($at)
    /* 4E714 8007E264 906E0005 */  lbu        $t6, 0x5($v1)
    /* 4E718 8007E268 3C0F800D */  lui        $t7, %hi(D_800D7A2C)
    /* 4E71C 8007E26C 8DEF7A2C */  lw         $t7, %lo(D_800D7A2C)($t7)
    /* 4E720 8007E270 000EC080 */  sll        $t8, $t6, 2
    /* 4E724 8007E274 01F8C821 */  addu       $t9, $t7, $t8
    /* 4E728 8007E278 0C01FBA3 */  jal        func_8007EE8C_4F33C
    /* 4E72C 8007E27C 8F240000 */   lw        $a0, 0x0($t9)
    /* 4E730 8007E280 100001BE */  b          .L8007E97C_4EE2C
    /* 4E734 8007E284 8FAA0058 */   lw        $t2, 0x58($sp)
    /* 4E738 8007E288 90670005 */  lbu        $a3, 0x5($v1)
    /* 4E73C 8007E28C 24010002 */  addiu      $at, $zero, 0x2
    /* 4E740 8007E290 10FE0003 */  beq        $a3, $fp, .L8007E2A0_4E750
    /* 4E744 8007E294 00E01025 */   or        $v0, $a3, $zero
    /* 4E748 8007E298 1441000A */  bne        $v0, $at, .L8007E2C4_4E774
    /* 4E74C 8007E29C 00000000 */   nop
  .L8007E2A0_4E750:
    /* 4E750 8007E2A0 0C01FEF2 */  jal        func_8007FBC8_50078
    /* 4E754 8007E2A4 30E400FF */   andi      $a0, $a3, 0xFF
    /* 4E758 8007E2A8 3C0A800D */  lui        $t2, %hi(D_800D7A5C)
    /* 4E75C 8007E2AC 8D4A7A5C */  lw         $t2, %lo(D_800D7A5C)($t2)
    /* 4E760 8007E2B0 3C09800D */  lui        $t1, %hi(D_800D7A54)
    /* 4E764 8007E2B4 8D297A54 */  lw         $t1, %lo(D_800D7A54)($t1)
    /* 4E768 8007E2B8 000A58C0 */  sll        $t3, $t2, 3
    /* 4E76C 8007E2BC 012B6021 */  addu       $t4, $t1, $t3
    /* 4E770 8007E2C0 91870005 */  lbu        $a3, 0x5($t4)
  .L8007E2C4_4E774:
    /* 4E774 8007E2C4 3C01800D */  lui        $at, %hi(D_800D7970)
    /* 4E778 8007E2C8 100001AB */  b          .L8007E978_4EE28
    /* 4E77C 8007E2CC A0277970 */   sb        $a3, %lo(D_800D7970)($at)
    /* 4E780 8007E2D0 906D0005 */  lbu        $t5, 0x5($v1)
    /* 4E784 8007E2D4 3C018009 */  lui        $at, %hi(D_80094904)
    /* 4E788 8007E2D8 100001A7 */  b          .L8007E978_4EE28
    /* 4E78C 8007E2DC A02D4904 */   sb        $t5, %lo(D_80094904)($at)
    /* 4E790 8007E2E0 3C0E8003 */  lui        $t6, %hi(D_800313D0)
    /* 4E794 8007E2E4 85CE13D0 */  lh         $t6, %lo(D_800313D0)($t6)
    /* 4E798 8007E2E8 24010002 */  addiu      $at, $zero, 0x2
    /* 4E79C 8007E2EC 90670005 */  lbu        $a3, 0x5($v1)
    /* 4E7A0 8007E2F0 15C10003 */  bne        $t6, $at, .L8007E300_4E7B0
    /* 4E7A4 8007E2F4 24010013 */   addiu     $at, $zero, 0x13
    /* 4E7A8 8007E2F8 50E101A0 */  beql       $a3, $at, .L8007E97C_4EE2C
    /* 4E7AC 8007E2FC 8FAA0058 */   lw        $t2, 0x58($sp)
  .L8007E300_4E7B0:
    /* 4E7B0 8007E300 00F40019 */  multu      $a3, $s4
    /* 4E7B4 8007E304 8EB80000 */  lw         $t8, 0x0($s5)
    /* 4E7B8 8007E308 240200FF */  addiu      $v0, $zero, 0xFF
    /* 4E7BC 8007E30C 3C19800D */  lui        $t9, %hi(D_800D7A84)
    /* 4E7C0 8007E310 3C09800D */  lui        $t1, %hi(D_800D7B10)
    /* 4E7C4 8007E314 25297B10 */  addiu      $t1, $t1, %lo(D_800D7B10)
    /* 4E7C8 8007E318 00007812 */  mflo       $t7
    /* 4E7CC 8007E31C 01F88021 */  addu       $s0, $t7, $t8
    /* 4E7D0 8007E320 A2020028 */  sb         $v0, 0x28($s0)
    /* 4E7D4 8007E324 A2020029 */  sb         $v0, 0x29($s0)
    /* 4E7D8 8007E328 A202002A */  sb         $v0, 0x2A($s0)
    /* 4E7DC 8007E32C AE1E001C */  sw         $fp, 0x1C($s0)
    /* 4E7E0 8007E330 93397A84 */  lbu        $t9, %lo(D_800D7A84)($t9)
    /* 4E7E4 8007E334 8E050004 */  lw         $a1, 0x4($s0)
    /* 4E7E8 8007E338 92060019 */  lbu        $a2, 0x19($s0)
    /* 4E7EC 8007E33C 00195180 */  sll        $t2, $t9, 6
    /* 4E7F0 8007E340 0C0203E3 */  jal        func_80080F8C_5143C
    /* 4E7F4 8007E344 01492021 */   addu      $a0, $t2, $t1
    /* 4E7F8 8007E348 0C0202A1 */  jal        func_80080A84_50F34
    /* 4E7FC 8007E34C 8E040008 */   lw        $a0, 0x8($s0)
    /* 4E800 8007E350 3C0B800D */  lui        $t3, %hi(D_800D7A84)
    /* 4E804 8007E354 916B7A84 */  lbu        $t3, %lo(D_800D7A84)($t3)
    /* 4E808 8007E358 3C0C800D */  lui        $t4, %hi(D_800D7A84)
    /* 4E80C 8007E35C 920D0019 */  lbu        $t5, 0x19($s0)
    /* 4E810 8007E360 A20B0018 */  sb         $t3, 0x18($s0)
    /* 4E814 8007E364 918C7A84 */  lbu        $t4, %lo(D_800D7A84)($t4)
    /* 4E818 8007E368 3C01800D */  lui        $at, %hi(D_800D7A84)
    /* 4E81C 8007E36C 018D7021 */  addu       $t6, $t4, $t5
    /* 4E820 8007E370 10000181 */  b          .L8007E978_4EE28
    /* 4E824 8007E374 A02E7A84 */   sb        $t6, %lo(D_800D7A84)($at)
    /* 4E828 8007E378 3C0F8003 */  lui        $t7, %hi(D_800313D0)
    /* 4E82C 8007E37C 85EF13D0 */  lh         $t7, %lo(D_800313D0)($t7)
    /* 4E830 8007E380 24010002 */  addiu      $at, $zero, 0x2
    /* 4E834 8007E384 90670005 */  lbu        $a3, 0x5($v1)
    /* 4E838 8007E388 15E10003 */  bne        $t7, $at, .L8007E398_4E848
    /* 4E83C 8007E38C 24010013 */   addiu     $at, $zero, 0x13
    /* 4E840 8007E390 50E1017A */  beql       $a3, $at, .L8007E97C_4EE2C
    /* 4E844 8007E394 8FAA0058 */   lw        $t2, 0x58($sp)
  .L8007E398_4E848:
    /* 4E848 8007E398 00F40019 */  multu      $a3, $s4
    /* 4E84C 8007E39C 8EB90000 */  lw         $t9, 0x0($s5)
    /* 4E850 8007E3A0 0000C012 */  mflo       $t8
    /* 4E854 8007E3A4 03198021 */  addu       $s0, $t8, $t9
    /* 4E858 8007E3A8 0C0202A1 */  jal        func_80080A84_50F34
    /* 4E85C 8007E3AC 8E040008 */   lw        $a0, 0x8($s0)
    /* 4E860 8007E3B0 10000171 */  b          .L8007E978_4EE28
    /* 4E864 8007E3B4 AE00001C */   sw        $zero, 0x1C($s0)
    /* 4E868 8007E3B8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 4E86C 8007E3BC 44812000 */  mtc1       $at, $f4
    /* 4E870 8007E3C0 3C01800E */  lui        $at, %hi(D_800D8510)
    /* 4E874 8007E3C4 00001025 */  or         $v0, $zero, $zero
    /* 4E878 8007E3C8 E4248510 */  swc1       $f4, %lo(D_800D8510)($at)
    /* 4E87C 8007E3CC 3C018009 */  lui        $at, %hi(D_80094900)
    /* 4E880 8007E3D0 AC204900 */  sw         $zero, %lo(D_80094900)($at)
    /* 4E884 8007E3D4 3C018009 */  lui        $at, %hi(D_80094930)
    /* 4E888 8007E3D8 AC204930 */  sw         $zero, %lo(D_80094930)($at)
    /* 4E88C 8007E3DC 0C020263 */  jal        func_8008098C_50E3C
    /* 4E890 8007E3E0 A3A0005F */   sb        $zero, 0x5F($sp)
    /* 4E894 8007E3E4 3C0A800E */  lui        $t2, %hi(D_800D88E8)
    /* 4E898 8007E3E8 254A88E8 */  addiu      $t2, $t2, %lo(D_800D88E8)
    /* 4E89C 8007E3EC 3C01800E */  lui        $at, %hi(D_800DE068)
    /* 4E8A0 8007E3F0 AC2AE068 */  sw         $t2, %lo(D_800DE068)($at)
    /* 4E8A4 8007E3F4 3C01800D */  lui        $at, %hi(D_800D7A84)
    /* 4E8A8 8007E3F8 A0207A84 */  sb         $zero, %lo(D_800D7A84)($at)
    /* 4E8AC 8007E3FC 92C90000 */  lbu        $t1, 0x0($s6)
    /* 4E8B0 8007E400 93A2005F */  lbu        $v0, 0x5F($sp)
    /* 4E8B4 8007E404 1920000E */  blez       $t1, .L8007E440_4E8F0
    /* 4E8B8 8007E408 00000000 */   nop
  .L8007E40C_4E8BC:
    /* 4E8BC 8007E40C 00540019 */  multu      $v0, $s4
    /* 4E8C0 8007E410 8EAB0000 */  lw         $t3, 0x0($s5)
    /* 4E8C4 8007E414 24420001 */  addiu      $v0, $v0, 0x1
    /* 4E8C8 8007E418 304E00FF */  andi       $t6, $v0, 0xFF
    /* 4E8CC 8007E41C 01C01025 */  or         $v0, $t6, $zero
    /* 4E8D0 8007E420 00006012 */  mflo       $t4
    /* 4E8D4 8007E424 016C6821 */  addu       $t5, $t3, $t4
    /* 4E8D8 8007E428 ADA0001C */  sw         $zero, 0x1C($t5)
    /* 4E8DC 8007E42C 92CF0000 */  lbu        $t7, 0x0($s6)
    /* 4E8E0 8007E430 01CF082A */  slt        $at, $t6, $t7
    /* 4E8E4 8007E434 1420FFF5 */  bnez       $at, .L8007E40C_4E8BC
    /* 4E8E8 8007E438 00000000 */   nop
    /* 4E8EC 8007E43C 00001025 */  or         $v0, $zero, $zero
  .L8007E440_4E8F0:
    /* 4E8F0 8007E440 3C01800D */  lui        $at, %hi(D_800D7970)
    /* 4E8F4 8007E444 A0207970 */  sb         $zero, %lo(D_800D7970)($at)
    /* 4E8F8 8007E448 92780000 */  lbu        $t8, 0x0($s3)
    /* 4E8FC 8007E44C 1B00000D */  blez       $t8, .L8007E484_4E934
    /* 4E900 8007E450 00000000 */   nop
  .L8007E454_4E904:
    /* 4E904 8007E454 00520019 */  multu      $v0, $s2
    /* 4E908 8007E458 8E390000 */  lw         $t9, 0x0($s1)
    /* 4E90C 8007E45C 24420001 */  addiu      $v0, $v0, 0x1
    /* 4E910 8007E460 304B00FF */  andi       $t3, $v0, 0xFF
    /* 4E914 8007E464 01601025 */  or         $v0, $t3, $zero
    /* 4E918 8007E468 00005012 */  mflo       $t2
    /* 4E91C 8007E46C 032A4821 */  addu       $t1, $t9, $t2
    /* 4E920 8007E470 AD200018 */  sw         $zero, 0x18($t1)
    /* 4E924 8007E474 926C0000 */  lbu        $t4, 0x0($s3)
    /* 4E928 8007E478 016C082A */  slt        $at, $t3, $t4
    /* 4E92C 8007E47C 1420FFF5 */  bnez       $at, .L8007E454_4E904
    /* 4E930 8007E480 00000000 */   nop
  .L8007E484_4E934:
    /* 4E934 8007E484 3C01800B */  lui        $at, %hi(D_800AEA38)
    /* 4E938 8007E488 C426EA38 */  lwc1       $f6, %lo(D_800AEA38)($at)
    /* 4E93C 8007E48C 3C01800D */  lui        $at, %hi(D_800D7974)
    /* 4E940 8007E490 44804000 */  mtc1       $zero, $f8
    /* 4E944 8007E494 E4267974 */  swc1       $f6, %lo(D_800D7974)($at)
    /* 4E948 8007E498 3C01800B */  lui        $at, %hi(D_800AC0E4)
    /* 4E94C 8007E49C 10000136 */  b          .L8007E978_4EE28
    /* 4E950 8007E4A0 E428C0E4 */   swc1      $f8, %lo(D_800AC0E4)($at)
    /* 4E954 8007E4A4 3C018009 */  lui        $at, %hi(D_80094998)
    /* 4E958 8007E4A8 AC3E4998 */  sw         $fp, %lo(D_80094998)($at)
    /* 4E95C 8007E4AC 10000132 */  b          .L8007E978_4EE28
    /* 4E960 8007E4B0 AFBE0058 */   sw        $fp, 0x58($sp)
    /* 4E964 8007E4B4 3C018009 */  lui        $at, %hi(D_80094930)
    /* 4E968 8007E4B8 AC204930 */  sw         $zero, %lo(D_80094930)($at)
    /* 4E96C 8007E4BC 906D0005 */  lbu        $t5, 0x5($v1)
    /* 4E970 8007E4C0 3C0F800D */  lui        $t7, %hi(D_800D7A30)
    /* 4E974 8007E4C4 8DEF7A30 */  lw         $t7, %lo(D_800D7A30)($t7)
    /* 4E978 8007E4C8 000D7140 */  sll        $t6, $t5, 5
    /* 4E97C 8007E4CC 0C01FB83 */  jal        func_8007EE0C_4F2BC
    /* 4E980 8007E4D0 01CF2021 */   addu      $a0, $t6, $t7
    /* 4E984 8007E4D4 10000129 */  b          .L8007E97C_4EE2C
    /* 4E988 8007E4D8 8FAA0058 */   lw        $t2, 0x58($sp)
    /* 4E98C 8007E4DC 90790005 */  lbu        $t9, 0x5($v1)
    /* 4E990 8007E4E0 3C02800D */  lui        $v0, %hi(D_800D7A38)
    /* 4E994 8007E4E4 8C427A38 */  lw         $v0, %lo(D_800D7A38)($v0)
    /* 4E998 8007E4E8 03370019 */  multu      $t9, $s7
    /* 4E99C 8007E4EC 3C18800D */  lui        $t8, %hi(D_800D7A86)
    /* 4E9A0 8007E4F0 27187A86 */  addiu      $t8, $t8, %lo(D_800D7A86)
    /* 4E9A4 8007E4F4 3C04800E */  lui        $a0, %hi(D_800D8530)
    /* 4E9A8 8007E4F8 24848530 */  addiu      $a0, $a0, %lo(D_800D8530)
    /* 4E9AC 8007E4FC 00005012 */  mflo       $t2
    /* 4E9B0 8007E500 004A4821 */  addu       $t1, $v0, $t2
    /* 4E9B4 8007E504 91210000 */  lbu        $at, 0x0($t1)
    /* 4E9B8 8007E508 A3010000 */  sb         $at, 0x0($t8)
    /* 4E9BC 8007E50C 912D0001 */  lbu        $t5, 0x1($t1)
    /* 4E9C0 8007E510 A30D0001 */  sb         $t5, 0x1($t8)
    /* 4E9C4 8007E514 91210002 */  lbu        $at, 0x2($t1)
    /* 4E9C8 8007E518 A3010002 */  sb         $at, 0x2($t8)
    /* 4E9CC 8007E51C 906E0005 */  lbu        $t6, 0x5($v1)
    /* 4E9D0 8007E520 01D70019 */  multu      $t6, $s7
    /* 4E9D4 8007E524 00007812 */  mflo       $t7
    /* 4E9D8 8007E528 004FC821 */  addu       $t9, $v0, $t7
    /* 4E9DC 8007E52C 932A0000 */  lbu        $t2, 0x0($t9)
    /* 4E9E0 8007E530 A08A0014 */  sb         $t2, 0x14($a0)
    /* 4E9E4 8007E534 906C0005 */  lbu        $t4, 0x5($v1)
    /* 4E9E8 8007E538 01970019 */  multu      $t4, $s7
    /* 4E9EC 8007E53C 00005812 */  mflo       $t3
    /* 4E9F0 8007E540 004BC021 */  addu       $t8, $v0, $t3
    /* 4E9F4 8007E544 93090001 */  lbu        $t1, 0x1($t8)
    /* 4E9F8 8007E548 A0890015 */  sb         $t1, 0x15($a0)
    /* 4E9FC 8007E54C 906D0005 */  lbu        $t5, 0x5($v1)
    /* 4EA00 8007E550 01B70019 */  multu      $t5, $s7
    /* 4EA04 8007E554 00007012 */  mflo       $t6
    /* 4EA08 8007E558 004E7821 */  addu       $t7, $v0, $t6
    /* 4EA0C 8007E55C 91F90002 */  lbu        $t9, 0x2($t7)
    /* 4EA10 8007E560 10000105 */  b          .L8007E978_4EE28
    /* 4EA14 8007E564 A0990016 */   sb        $t9, 0x16($a0)
    /* 4EA18 8007E568 906C0005 */  lbu        $t4, 0x5($v1)
    /* 4EA1C 8007E56C 8E2A0000 */  lw         $t2, 0x0($s1)
    /* 4EA20 8007E570 01920019 */  multu      $t4, $s2
    /* 4EA24 8007E574 00005812 */  mflo       $t3
    /* 4EA28 8007E578 014BC021 */  addu       $t8, $t2, $t3
    /* 4EA2C 8007E57C 100000FE */  b          .L8007E978_4EE28
    /* 4EA30 8007E580 AF1E0018 */   sw        $fp, 0x18($t8)
    /* 4EA34 8007E584 906D0005 */  lbu        $t5, 0x5($v1)
    /* 4EA38 8007E588 8E290000 */  lw         $t1, 0x0($s1)
    /* 4EA3C 8007E58C 01B20019 */  multu      $t5, $s2
    /* 4EA40 8007E590 00007012 */  mflo       $t6
    /* 4EA44 8007E594 012E7821 */  addu       $t7, $t1, $t6
    /* 4EA48 8007E598 100000F7 */  b          .L8007E978_4EE28
    /* 4EA4C 8007E59C ADE00018 */   sw        $zero, 0x18($t7)
    /* 4EA50 8007E5A0 906C0005 */  lbu        $t4, 0x5($v1)
    /* 4EA54 8007E5A4 3C19800D */  lui        $t9, %hi(D_800D7A3C)
    /* 4EA58 8007E5A8 8F397A3C */  lw         $t9, %lo(D_800D7A3C)($t9)
    /* 4EA5C 8007E5AC 000C5080 */  sll        $t2, $t4, 2
    /* 4EA60 8007E5B0 240100FF */  addiu      $at, $zero, 0xFF
    /* 4EA64 8007E5B4 032A5821 */  addu       $t3, $t9, $t2
    /* 4EA68 8007E5B8 8D650000 */  lw         $a1, 0x0($t3)
    /* 4EA6C 8007E5BC 3C04800E */  lui        $a0, %hi(D_800D8530)
    /* 4EA70 8007E5C0 90A20008 */  lbu        $v0, 0x8($a1)
    /* 4EA74 8007E5C4 14410005 */  bne        $v0, $at, .L8007E5DC_4EA8C
    /* 4EA78 8007E5C8 00000000 */   nop
    /* 4EA7C 8007E5CC 0C01FEE4 */  jal        func_8007FB90_50040
    /* 4EA80 8007E5D0 24848530 */   addiu     $a0, $a0, %lo(D_800D8530)
    /* 4EA84 8007E5D4 100000E9 */  b          .L8007E97C_4EE2C
    /* 4EA88 8007E5D8 8FAA0058 */   lw        $t2, 0x58($sp)
  .L8007E5DC_4EA8C:
    /* 4EA8C 8007E5DC 00520019 */  multu      $v0, $s2
    /* 4EA90 8007E5E0 8E2D0000 */  lw         $t5, 0x0($s1)
    /* 4EA94 8007E5E4 0000C012 */  mflo       $t8
    /* 4EA98 8007E5E8 030D2021 */  addu       $a0, $t8, $t5
    /* 4EA9C 8007E5EC 0C01FEE4 */  jal        func_8007FB90_50040
    /* 4EAA0 8007E5F0 00000000 */   nop
    /* 4EAA4 8007E5F4 100000E1 */  b          .L8007E97C_4EE2C
    /* 4EAA8 8007E5F8 8FAA0058 */   lw        $t2, 0x58($sp)
    /* 4EAAC 8007E5FC 0C023D5D */  jal        func_8008F574_5FA24
    /* 4EAB0 8007E600 00000000 */   nop
    /* 4EAB4 8007E604 3C02800D */  lui        $v0, %hi(D_800D7A60)
    /* 4EAB8 8007E608 24427A60 */  addiu      $v0, $v0, %lo(D_800D7A60)
    /* 4EABC 8007E60C 8C490000 */  lw         $t1, 0x0($v0)
    /* 4EAC0 8007E610 3C0F800D */  lui        $t7, %hi(D_800D7A50)
    /* 4EAC4 8007E614 3C01800D */  lui        $at, %hi(D_800D7A54)
    /* 4EAC8 8007E618 252E0001 */  addiu      $t6, $t1, 0x1
    /* 4EACC 8007E61C AC4E0000 */  sw         $t6, 0x0($v0)
    /* 4EAD0 8007E620 8DEF7A50 */  lw         $t7, %lo(D_800D7A50)($t7)
    /* 4EAD4 8007E624 000EC880 */  sll        $t9, $t6, 2
    /* 4EAD8 8007E628 01F95021 */  addu       $t2, $t7, $t9
    /* 4EADC 8007E62C 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 4EAE0 8007E630 AC2B7A54 */  sw         $t3, %lo(D_800D7A54)($at)
    /* 4EAE4 8007E634 3C01800D */  lui        $at, %hi(D_800D7A5C)
    /* 4EAE8 8007E638 AC207A5C */  sw         $zero, %lo(D_800D7A5C)($at)
    /* 4EAEC 8007E63C 3C018009 */  lui        $at, %hi(D_80094900)
    /* 4EAF0 8007E640 100000CD */  b          .L8007E978_4EE28
    /* 4EAF4 8007E644 AC204900 */   sw        $zero, %lo(D_80094900)($at)
    /* 4EAF8 8007E648 90780005 */  lbu        $t8, 0x5($v1)
    /* 4EAFC 8007E64C 3C09800D */  lui        $t1, %hi(D_800D7A24)
    /* 4EB00 8007E650 8D297A24 */  lw         $t1, %lo(D_800D7A24)($t1)
    /* 4EB04 8007E654 001868C0 */  sll        $t5, $t8, 3
    /* 4EB08 8007E658 01B86823 */  subu       $t5, $t5, $t8
    /* 4EB0C 8007E65C 000D6840 */  sll        $t5, $t5, 1
    /* 4EB10 8007E660 0C02014C */  jal        func_80080530_509E0
    /* 4EB14 8007E664 01A92021 */   addu      $a0, $t5, $t1
    /* 4EB18 8007E668 100000C4 */  b          .L8007E97C_4EE2C
    /* 4EB1C 8007E66C 8FAA0058 */   lw        $t2, 0x58($sp)
    /* 4EB20 8007E670 926E0000 */  lbu        $t6, 0x0($s3)
    /* 4EB24 8007E674 00001025 */  or         $v0, $zero, $zero
    /* 4EB28 8007E678 59C000C0 */  blezl      $t6, .L8007E97C_4EE2C
    /* 4EB2C 8007E67C 8FAA0058 */   lw        $t2, 0x58($sp)
  .L8007E680_4EB30:
    /* 4EB30 8007E680 00520019 */  multu      $v0, $s2
    /* 4EB34 8007E684 8E2C0000 */  lw         $t4, 0x0($s1)
    /* 4EB38 8007E688 24420001 */  addiu      $v0, $v0, 0x1
    /* 4EB3C 8007E68C 304A00FF */  andi       $t2, $v0, 0xFF
    /* 4EB40 8007E690 01401025 */  or         $v0, $t2, $zero
    /* 4EB44 8007E694 00007812 */  mflo       $t7
    /* 4EB48 8007E698 018FC821 */  addu       $t9, $t4, $t7
    /* 4EB4C 8007E69C AF200018 */  sw         $zero, 0x18($t9)
    /* 4EB50 8007E6A0 926B0000 */  lbu        $t3, 0x0($s3)
    /* 4EB54 8007E6A4 014B082A */  slt        $at, $t2, $t3
    /* 4EB58 8007E6A8 1420FFF5 */  bnez       $at, .L8007E680_4EB30
    /* 4EB5C 8007E6AC 00000000 */   nop
    /* 4EB60 8007E6B0 100000B2 */  b          .L8007E97C_4EE2C
    /* 4EB64 8007E6B4 8FAA0058 */   lw        $t2, 0x58($sp)
    /* 4EB68 8007E6B8 90780005 */  lbu        $t8, 0x5($v1)
    /* 4EB6C 8007E6BC 3C02800D */  lui        $v0, %hi(D_800D7A38)
    /* 4EB70 8007E6C0 8C427A38 */  lw         $v0, %lo(D_800D7A38)($v0)
    /* 4EB74 8007E6C4 03170019 */  multu      $t8, $s7
    /* 4EB78 8007E6C8 3C04800D */  lui        $a0, %hi(D_800D7B08)
    /* 4EB7C 8007E6CC 24847B08 */  addiu      $a0, $a0, %lo(D_800D7B08)
    /* 4EB80 8007E6D0 00006812 */  mflo       $t5
    /* 4EB84 8007E6D4 004D4821 */  addu       $t1, $v0, $t5
    /* 4EB88 8007E6D8 912E0000 */  lbu        $t6, 0x0($t1)
    /* 4EB8C 8007E6DC A08E0000 */  sb         $t6, 0x0($a0)
    /* 4EB90 8007E6E0 906C0005 */  lbu        $t4, 0x5($v1)
    /* 4EB94 8007E6E4 3C0E800D */  lui        $t6, %hi(D_800D7B0C)
    /* 4EB98 8007E6E8 25CE7B0C */  addiu      $t6, $t6, %lo(D_800D7B0C)
    /* 4EB9C 8007E6EC 01970019 */  multu      $t4, $s7
    /* 4EBA0 8007E6F0 00007812 */  mflo       $t7
    /* 4EBA4 8007E6F4 004FC821 */  addu       $t9, $v0, $t7
    /* 4EBA8 8007E6F8 932A0001 */  lbu        $t2, 0x1($t9)
    /* 4EBAC 8007E6FC A08A0001 */  sb         $t2, 0x1($a0)
    /* 4EBB0 8007E700 906B0005 */  lbu        $t3, 0x5($v1)
    /* 4EBB4 8007E704 01770019 */  multu      $t3, $s7
    /* 4EBB8 8007E708 0000C012 */  mflo       $t8
    /* 4EBBC 8007E70C 00586821 */  addu       $t5, $v0, $t8
    /* 4EBC0 8007E710 91A90002 */  lbu        $t1, 0x2($t5)
    /* 4EBC4 8007E714 A0890002 */  sb         $t1, 0x2($a0)
    /* 4EBC8 8007E718 98810002 */  lwr        $at, 0x2($a0)
    /* 4EBCC 8007E71C 10000096 */  b          .L8007E978_4EE28
    /* 4EBD0 8007E720 B9C10002 */   swr       $at, 0x2($t6)
    /* 4EBD4 8007E724 90790005 */  lbu        $t9, 0x5($v1)
    /* 4EBD8 8007E728 3C018009 */  lui        $at, %hi(D_80094908)
    /* 4EBDC 8007E72C 10000092 */  b          .L8007E978_4EE28
    /* 4EBE0 8007E730 A0394908 */   sb        $t9, %lo(D_80094908)($at)
    /* 4EBE4 8007E734 90670005 */  lbu        $a3, 0x5($v1)
    /* 4EBE8 8007E738 3C0B800D */  lui        $t3, %hi(D_800D7A40)
    /* 4EBEC 8007E73C 8D6B7A40 */  lw         $t3, %lo(D_800D7A40)($t3)
    /* 4EBF0 8007E740 000750C0 */  sll        $t2, $a3, 3
    /* 4EBF4 8007E744 8EA90000 */  lw         $t1, 0x0($s5)
    /* 4EBF8 8007E748 014B1021 */  addu       $v0, $t2, $t3
    /* 4EBFC 8007E74C 90580004 */  lbu        $t8, 0x4($v0)
    /* 4EC00 8007E750 03140019 */  multu      $t8, $s4
    /* 4EC04 8007E754 00006812 */  mflo       $t5
    /* 4EC08 8007E758 01A98021 */  addu       $s0, $t5, $t1
    /* 4EC0C 8007E75C 10000086 */  b          .L8007E978_4EE28
    /* 4EC10 8007E760 A2070028 */   sb        $a3, 0x28($s0)
    /* 4EC14 8007E764 906C0005 */  lbu        $t4, 0x5($v1)
    /* 4EC18 8007E768 8EAF0000 */  lw         $t7, 0x0($s5)
    /* 4EC1C 8007E76C 24190015 */  addiu      $t9, $zero, 0x15
    /* 4EC20 8007E770 01940019 */  multu      $t4, $s4
    /* 4EC24 8007E774 00007012 */  mflo       $t6
    /* 4EC28 8007E778 01CF8021 */  addu       $s0, $t6, $t7
    /* 4EC2C 8007E77C 1000007E */  b          .L8007E978_4EE28
    /* 4EC30 8007E780 A2190028 */   sb        $t9, 0x28($s0)
    /* 4EC34 8007E784 906A0005 */  lbu        $t2, 0x5($v1)
    /* 4EC38 8007E788 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* 4EC3C 8007E78C 448A5000 */  mtc1       $t2, $f10
    /* 4EC40 8007E790 05410004 */  bgez       $t2, .L8007E7A4_4EC54
    /* 4EC44 8007E794 46805420 */   cvt.s.w   $f16, $f10
    /* 4EC48 8007E798 44819000 */  mtc1       $at, $f18
    /* 4EC4C 8007E79C 00000000 */  nop
    /* 4EC50 8007E7A0 46128400 */  add.s      $f16, $f16, $f18
  .L8007E7A4_4EC54:
    /* 4EC54 8007E7A4 3C01800E */  lui        $at, %hi(D_800D8510)
    /* 4EC58 8007E7A8 10000073 */  b          .L8007E978_4EE28
    /* 4EC5C 8007E7AC E4308510 */   swc1      $f16, %lo(D_800D8510)($at)
    /* 4EC60 8007E7B0 90670005 */  lbu        $a3, 0x5($v1)
    /* 4EC64 8007E7B4 3C18800D */  lui        $t8, %hi(D_800D7A44)
    /* 4EC68 8007E7B8 8F187A44 */  lw         $t8, %lo(D_800D7A44)($t8)
    /* 4EC6C 8007E7BC 000758C0 */  sll        $t3, $a3, 3
    /* 4EC70 8007E7C0 8EAC0000 */  lw         $t4, 0x0($s5)
    /* 4EC74 8007E7C4 01781021 */  addu       $v0, $t3, $t8
    /* 4EC78 8007E7C8 904D0004 */  lbu        $t5, 0x4($v0)
    /* 4EC7C 8007E7CC 01B40019 */  multu      $t5, $s4
    /* 4EC80 8007E7D0 00004812 */  mflo       $t1
    /* 4EC84 8007E7D4 012C8021 */  addu       $s0, $t1, $t4
    /* 4EC88 8007E7D8 10000067 */  b          .L8007E978_4EE28
    /* 4EC8C 8007E7DC A207002A */   sb        $a3, 0x2A($s0)
    /* 4EC90 8007E7E0 906F0005 */  lbu        $t7, 0x5($v1)
    /* 4EC94 8007E7E4 3C0E800D */  lui        $t6, %hi(D_800D7A48)
    /* 4EC98 8007E7E8 8DCE7A48 */  lw         $t6, %lo(D_800D7A48)($t6)
    /* 4EC9C 8007E7EC 000FC880 */  sll        $t9, $t7, 2
    /* 4ECA0 8007E7F0 3C01800D */  lui        $at, %hi(D_800D7974)
    /* 4ECA4 8007E7F4 01D95021 */  addu       $t2, $t6, $t9
    /* 4ECA8 8007E7F8 C5440000 */  lwc1       $f4, 0x0($t2)
    /* 4ECAC 8007E7FC 1000005E */  b          .L8007E978_4EE28
    /* 4ECB0 8007E800 E4247974 */   swc1      $f4, %lo(D_800D7974)($at)
    /* 4ECB4 8007E804 0C023FA6 */  jal        func_8008FE98_60348
    /* 4ECB8 8007E808 90640005 */   lbu       $a0, 0x5($v1)
    /* 4ECBC 8007E80C 1000005B */  b          .L8007E97C_4EE2C
    /* 4ECC0 8007E810 8FAA0058 */   lw        $t2, 0x58($sp)
    /* 4ECC4 8007E814 906B0005 */  lbu        $t3, 0x5($v1)
    /* 4ECC8 8007E818 3C02800D */  lui        $v0, %hi(D_800D7A38)
    /* 4ECCC 8007E81C 8C427A38 */  lw         $v0, %lo(D_800D7A38)($v0)
    /* 4ECD0 8007E820 01770019 */  multu      $t3, $s7
    /* 4ECD4 8007E824 3C04800D */  lui        $a0, %hi(D_800D7B0C)
    /* 4ECD8 8007E828 24847B0C */  addiu      $a0, $a0, %lo(D_800D7B0C)
    /* 4ECDC 8007E82C 0000C012 */  mflo       $t8
    /* 4ECE0 8007E830 00586821 */  addu       $t5, $v0, $t8
    /* 4ECE4 8007E834 91A90000 */  lbu        $t1, 0x0($t5)
    /* 4ECE8 8007E838 A0890000 */  sb         $t1, 0x0($a0)
    /* 4ECEC 8007E83C 906C0005 */  lbu        $t4, 0x5($v1)
    /* 4ECF0 8007E840 01970019 */  multu      $t4, $s7
    /* 4ECF4 8007E844 00007812 */  mflo       $t7
    /* 4ECF8 8007E848 004F7021 */  addu       $t6, $v0, $t7
    /* 4ECFC 8007E84C 91D90001 */  lbu        $t9, 0x1($t6)
    /* 4ED00 8007E850 A0990001 */  sb         $t9, 0x1($a0)
    /* 4ED04 8007E854 906A0005 */  lbu        $t2, 0x5($v1)
    /* 4ED08 8007E858 01570019 */  multu      $t2, $s7
    /* 4ED0C 8007E85C 00005812 */  mflo       $t3
    /* 4ED10 8007E860 004BC021 */  addu       $t8, $v0, $t3
    /* 4ED14 8007E864 930D0002 */  lbu        $t5, 0x2($t8)
    /* 4ED18 8007E868 10000043 */  b          .L8007E978_4EE28
    /* 4ED1C 8007E86C A08D0002 */   sb        $t5, 0x2($a0)
    /* 4ED20 8007E870 90690005 */  lbu        $t1, 0x5($v1)
    /* 4ED24 8007E874 3C018009 */  lui        $at, %hi(D_8009490C)
    /* 4ED28 8007E878 1000003F */  b          .L8007E978_4EE28
    /* 4ED2C 8007E87C A029490C */   sb        $t1, %lo(D_8009490C)($at)
    /* 4ED30 8007E880 3C01800B */  lui        $at, %hi(D_800AEA3C)
    /* 4ED34 8007E884 C426EA3C */  lwc1       $f6, %lo(D_800AEA3C)($at)
    /* 4ED38 8007E888 3C01800B */  lui        $at, %hi(D_800AC0E4)
    /* 4ED3C 8007E88C 1000003A */  b          .L8007E978_4EE28
    /* 4ED40 8007E890 E426C0E4 */   swc1      $f6, %lo(D_800AC0E4)($at)
    /* 4ED44 8007E894 3C018009 */  lui        $at, %hi(D_800949BC)
    /* 4ED48 8007E898 10000037 */  b          .L8007E978_4EE28
    /* 4ED4C 8007E89C AC3E49BC */   sw        $fp, %lo(D_800949BC)($at)
    /* 4ED50 8007E8A0 906C0005 */  lbu        $t4, 0x5($v1)
    /* 4ED54 8007E8A4 3C02800D */  lui        $v0, %hi(D_800D7A4C)
    /* 4ED58 8007E8A8 8C427A4C */  lw         $v0, %lo(D_800D7A4C)($v0)
    /* 4ED5C 8007E8AC 000C78C0 */  sll        $t7, $t4, 3
    /* 4ED60 8007E8B0 24010006 */  addiu      $at, $zero, 0x6
    /* 4ED64 8007E8B4 004F2021 */  addu       $a0, $v0, $t7
    /* 4ED68 8007E8B8 90850004 */  lbu        $a1, 0x4($a0)
    /* 4ED6C 8007E8BC 10A10009 */  beq        $a1, $at, .L8007E8E4_4ED94
    /* 4ED70 8007E8C0 3C01800E */   lui       $at, %hi(D_800D8524)
    /* 4ED74 8007E8C4 A0258524 */  sb         $a1, %lo(D_800D8524)($at)
    /* 4ED78 8007E8C8 906E0005 */  lbu        $t6, 0x5($v1)
    /* 4ED7C 8007E8CC 3C01800E */  lui        $at, %hi(D_800D8520)
    /* 4ED80 8007E8D0 000EC8C0 */  sll        $t9, $t6, 3
    /* 4ED84 8007E8D4 00595021 */  addu       $t2, $v0, $t9
    /* 4ED88 8007E8D8 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 4ED8C 8007E8DC 10000026 */  b          .L8007E978_4EE28
    /* 4ED90 8007E8E0 AC2B8520 */   sw        $t3, %lo(D_800D8520)($at)
  .L8007E8E4_4ED94:
    /* 4ED94 8007E8E4 8C980000 */  lw         $t8, 0x0($a0)
    /* 4ED98 8007E8E8 3C01800E */  lui        $at, %hi(D_800D8518)
    /* 4ED9C 8007E8EC AC388518 */  sw         $t8, %lo(D_800D8518)($at)
    /* 4EDA0 8007E8F0 906D0005 */  lbu        $t5, 0x5($v1)
    /* 4EDA4 8007E8F4 3C01800E */  lui        $at, %hi(D_800D851C)
    /* 4EDA8 8007E8F8 000D48C0 */  sll        $t1, $t5, 3
    /* 4EDAC 8007E8FC 00496021 */  addu       $t4, $v0, $t1
    /* 4EDB0 8007E900 918F0004 */  lbu        $t7, 0x4($t4)
    /* 4EDB4 8007E904 1000001C */  b          .L8007E978_4EE28
    /* 4EDB8 8007E908 A02F851C */   sb        $t7, %lo(D_800D851C)($at)
    /* 4EDBC 8007E90C 3C018009 */  lui        $at, %hi(D_80094948)
    /* 4EDC0 8007E910 10000019 */  b          .L8007E978_4EE28
    /* 4EDC4 8007E914 AC3E4948 */   sw        $fp, %lo(D_80094948)($at)
    /* 4EDC8 8007E918 3C018009 */  lui        $at, %hi(D_80094948)
    /* 4EDCC 8007E91C 10000016 */  b          .L8007E978_4EE28
    /* 4EDD0 8007E920 AC204948 */   sw        $zero, %lo(D_80094948)($at)
    /* 4EDD4 8007E924 906E0005 */  lbu        $t6, 0x5($v1)
    /* 4EDD8 8007E928 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* 4EDDC 8007E92C 448E4000 */  mtc1       $t6, $f8
    /* 4EDE0 8007E930 05C10004 */  bgez       $t6, .L8007E944_4EDF4
    /* 4EDE4 8007E934 468042A0 */   cvt.s.w   $f10, $f8
    /* 4EDE8 8007E938 44819000 */  mtc1       $at, $f18
    /* 4EDEC 8007E93C 00000000 */  nop
    /* 4EDF0 8007E940 46125280 */  add.s      $f10, $f10, $f18
  .L8007E944_4EDF4:
    /* 4EDF4 8007E944 3C01800E */  lui        $at, %hi(D_800D8528)
    /* 4EDF8 8007E948 1000000B */  b          .L8007E978_4EE28
    /* 4EDFC 8007E94C E42A8528 */   swc1      $f10, %lo(D_800D8528)($at)
    /* 4EE00 8007E950 90790005 */  lbu        $t9, 0x5($v1)
    /* 4EE04 8007E954 3C018009 */  lui        $at, %hi(D_8009494C)
    /* 4EE08 8007E958 44808000 */  mtc1       $zero, $f16
    /* 4EE0C 8007E95C A039494C */  sb         $t9, %lo(D_8009494C)($at)
    /* 4EE10 8007E960 3C018009 */  lui        $at, %hi(D_80094950)
    /* 4EE14 8007E964 10000004 */  b          .L8007E978_4EE28
    /* 4EE18 8007E968 E4304950 */   swc1      $f16, %lo(D_80094950)($at)
  .L8007E96C_4EE1C:
    /* 4EE1C 8007E96C 3C04800B */  lui        $a0, %hi(D_800AE8E0)
    /* 4EE20 8007E970 0C00731B */  jal        osSyncPrintf
    /* 4EE24 8007E974 2484E8E0 */   addiu     $a0, $a0, %lo(D_800AE8E0)
  .L8007E978_4EE28:
    /* 4EE28 8007E978 8FAA0058 */  lw         $t2, 0x58($sp)
  .L8007E97C_4EE2C:
    /* 4EE2C 8007E97C 8FAB0048 */  lw         $t3, 0x48($sp)
    /* 4EE30 8007E980 2401000E */  addiu      $at, $zero, 0xE
    /* 4EE34 8007E984 15400007 */  bnez       $t2, .L8007E9A4_4EE54
    /* 4EE38 8007E988 3C0C800D */   lui       $t4, %hi(D_800D7A54)
    /* 4EE3C 8007E98C 11610005 */  beq        $t3, $at, .L8007E9A4_4EE54
    /* 4EE40 8007E990 3C02800D */   lui       $v0, %hi(D_800D7A5C)
    /* 4EE44 8007E994 24427A5C */  addiu      $v0, $v0, %lo(D_800D7A5C)
    /* 4EE48 8007E998 8C580000 */  lw         $t8, 0x0($v0)
    /* 4EE4C 8007E99C 270D0001 */  addiu      $t5, $t8, 0x1
    /* 4EE50 8007E9A0 AC4D0000 */  sw         $t5, 0x0($v0)
  .L8007E9A4_4EE54:
    /* 4EE54 8007E9A4 8FA90058 */  lw         $t1, 0x58($sp)
    /* 4EE58 8007E9A8 3C0F800D */  lui        $t7, %hi(D_800D7A5C)
    /* 4EE5C 8007E9AC 3C198009 */  lui        $t9, %hi(D_80094900)
    /* 4EE60 8007E9B0 5520000A */  bnel       $t1, $zero, .L8007E9DC_4EE8C
    /* 4EE64 8007E9B4 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 4EE68 8007E9B8 8DEF7A5C */  lw         $t7, %lo(D_800D7A5C)($t7)
    /* 4EE6C 8007E9BC 8D8C7A54 */  lw         $t4, %lo(D_800D7A54)($t4)
    /* 4EE70 8007E9C0 8F394900 */  lw         $t9, %lo(D_80094900)($t9)
    /* 4EE74 8007E9C4 000F70C0 */  sll        $t6, $t7, 3
    /* 4EE78 8007E9C8 018E1821 */  addu       $v1, $t4, $t6
    /* 4EE7C 8007E9CC 8C6A0000 */  lw         $t2, 0x0($v1)
    /* 4EE80 8007E9D0 532AFDF9 */  beql       $t9, $t2, .L8007E1B8_4E668
    /* 4EE84 8007E9D4 90620004 */   lbu       $v0, 0x4($v1)
  .L8007E9D8_4EE88:
    /* 4EE88 8007E9D8 8FBF0044 */  lw         $ra, 0x44($sp)
  .L8007E9DC_4EE8C:
    /* 4EE8C 8007E9DC 8FA20058 */  lw         $v0, 0x58($sp)
    /* 4EE90 8007E9E0 8FB00020 */  lw         $s0, 0x20($sp)
    /* 4EE94 8007E9E4 8FB10024 */  lw         $s1, 0x24($sp)
    /* 4EE98 8007E9E8 8FB20028 */  lw         $s2, 0x28($sp)
    /* 4EE9C 8007E9EC 8FB3002C */  lw         $s3, 0x2C($sp)
    /* 4EEA0 8007E9F0 8FB40030 */  lw         $s4, 0x30($sp)
    /* 4EEA4 8007E9F4 8FB50034 */  lw         $s5, 0x34($sp)
    /* 4EEA8 8007E9F8 8FB60038 */  lw         $s6, 0x38($sp)
    /* 4EEAC 8007E9FC 8FB7003C */  lw         $s7, 0x3C($sp)
    /* 4EEB0 8007EA00 8FBE0040 */  lw         $fp, 0x40($sp)
    /* 4EEB4 8007EA04 03E00008 */  jr         $ra
    /* 4EEB8 8007EA08 27BD0078 */   addiu     $sp, $sp, 0x78
endlabel func_8007E12C_4E5DC
