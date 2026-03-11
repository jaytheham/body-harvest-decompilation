nonmatching func_8008E158_5E608, 0x884

glabel func_8008E158_5E608
    /* 5E608 8008E158 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* 5E60C 8008E15C AFB20020 */  sw         $s2, 0x20($sp)
    /* 5E610 8008E160 3C12800E */  lui        $s2, %hi(D_800E1D68)
    /* 5E614 8008E164 92521D68 */  lbu        $s2, %lo(D_800E1D68)($s2)
    /* 5E618 8008E168 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 5E61C 8008E16C AFBE0038 */  sw         $fp, 0x38($sp)
    /* 5E620 8008E170 AFB70034 */  sw         $s7, 0x34($sp)
    /* 5E624 8008E174 AFB60030 */  sw         $s6, 0x30($sp)
    /* 5E628 8008E178 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 5E62C 8008E17C AFB40028 */  sw         $s4, 0x28($sp)
    /* 5E630 8008E180 AFB30024 */  sw         $s3, 0x24($sp)
    /* 5E634 8008E184 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 5E638 8008E188 AFB00018 */  sw         $s0, 0x18($sp)
    /* 5E63C 8008E18C 00001825 */  or         $v1, $zero, $zero
    /* 5E640 8008E190 1A400206 */  blez       $s2, .L8008E9AC_5EE5C
    /* 5E644 8008E194 02401025 */   or        $v0, $s2, $zero
    /* 5E648 8008E198 3C150708 */  lui        $s5, (0x7080200 >> 16)
    /* 5E64C 8008E19C 3C141FFF */  lui        $s4, (0x1FFFFFFF >> 16)
    /* 5E650 8008E1A0 3C13800B */  lui        $s3, %hi(D_800AA76C)
    /* 5E654 8008E1A4 3C108006 */  lui        $s0, %hi(D_8005BB2C)
    /* 5E658 8008E1A8 2610BB2C */  addiu      $s0, $s0, %lo(D_8005BB2C)
    /* 5E65C 8008E1AC 2673A76C */  addiu      $s3, $s3, %lo(D_800AA76C)
    /* 5E660 8008E1B0 3694FFFF */  ori        $s4, $s4, (0x1FFFFFFF & 0xFFFF)
    /* 5E664 8008E1B4 36B50200 */  ori        $s5, $s5, (0x7080200 & 0xFFFF)
    /* 5E668 8008E1B8 3C1E0700 */  lui        $fp, (0x7000000 >> 16)
    /* 5E66C 8008E1BC 3C17F300 */  lui        $s7, (0xF3000000 >> 16)
    /* 5E670 8008E1C0 3C16E600 */  lui        $s6, (0xE6000000 >> 16)
    /* 5E674 8008E1C4 3C11E700 */  lui        $s1, (0xE7000000 >> 16)
  .L8008E1C8_5E678:
    /* 5E678 8008E1C8 00037080 */  sll        $t6, $v1, 2
    /* 5E67C 8008E1CC 01C37021 */  addu       $t6, $t6, $v1
    /* 5E680 8008E1D0 3C0F800E */  lui        $t7, %hi(D_800E1980)
    /* 5E684 8008E1D4 25EF1980 */  addiu      $t7, $t7, %lo(D_800E1980)
    /* 5E688 8008E1D8 000E7080 */  sll        $t6, $t6, 2
    /* 5E68C 8008E1DC 01CF5821 */  addu       $t3, $t6, $t7
    /* 5E690 8008E1E0 8565000A */  lh         $a1, 0xA($t3)
    /* 5E694 8008E1E4 50A001EE */  beql       $a1, $zero, .L8008E9A0_5EE50
    /* 5E698 8008E1E8 24630001 */   addiu     $v1, $v1, 0x1
    /* 5E69C 8008E1EC 9178000F */  lbu        $t8, 0xF($t3)
    /* 5E6A0 8008E1F0 570001E8 */  bnel       $t8, $zero, .L8008E994_5EE44
    /* 5E6A4 8008E1F4 2652FFFF */   addiu     $s2, $s2, -0x1
    /* 5E6A8 8008E1F8 9164000C */  lbu        $a0, 0xC($t3)
    /* 5E6AC 8008E1FC 240200FF */  addiu      $v0, $zero, 0xFF
    /* 5E6B0 8008E200 A3A30045 */  sb         $v1, 0x45($sp)
    /* 5E6B4 8008E204 0080F825 */  or         $ra, $a0, $zero
    /* 5E6B8 8008E208 145F0004 */  bne        $v0, $ra, .L8008E21C_5E6CC
    /* 5E6BC 8008E20C 001F78C0 */   sll       $t7, $ra, 3
    /* 5E6C0 8008E210 9179000E */  lbu        $t9, 0xE($t3)
    /* 5E6C4 8008E214 50590195 */  beql       $v0, $t9, .L8008E86C_5ED1C
    /* 5E6C8 8008E218 85790000 */   lh        $t9, 0x0($t3)
  .L8008E21C_5E6CC:
    /* 5E6CC 8008E21C 8E020000 */  lw         $v0, 0x0($s0)
    /* 5E6D0 8008E220 3C18800B */  lui        $t8, %hi(D_800AA694)
    /* 5E6D4 8008E224 2718A694 */  addiu      $t8, $t8, %lo(D_800AA694)
    /* 5E6D8 8008E228 244E0008 */  addiu      $t6, $v0, 0x8
    /* 5E6DC 8008E22C AE0E0000 */  sw         $t6, 0x0($s0)
    /* 5E6E0 8008E230 01F83821 */  addu       $a3, $t7, $t8
    /* 5E6E4 8008E234 AC400004 */  sw         $zero, 0x4($v0)
    /* 5E6E8 8008E238 AC510000 */  sw         $s1, 0x0($v0)
    /* 5E6EC 8008E23C 80E40005 */  lb         $a0, 0x5($a3)
    /* 5E6F0 8008E240 24010001 */  addiu      $at, $zero, 0x1
    /* 5E6F4 8008E244 14800085 */  bnez       $a0, .L8008E45C_5E90C
    /* 5E6F8 8008E248 00000000 */   nop
    /* 5E6FC 8008E24C 80F90007 */  lb         $t9, 0x7($a3)
    /* 5E700 8008E250 916E000E */  lbu        $t6, 0xE($t3)
    /* 5E704 8008E254 80F80006 */  lb         $t8, 0x6($a3)
    /* 5E708 8008E258 8E020000 */  lw         $v0, 0x0($s0)
    /* 5E70C 8008E25C 032E0019 */  multu      $t9, $t6
    /* 5E710 8008E260 240C07FF */  addiu      $t4, $zero, 0x7FF
    /* 5E714 8008E264 244E0008 */  addiu      $t6, $v0, 0x8
    /* 5E718 8008E268 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 5E71C 8008E26C 3C0EFD90 */  lui        $t6, (0xFD900000 >> 16)
    /* 5E720 8008E270 00007812 */  mflo       $t7
    /* 5E724 8008E274 00000000 */  nop
    /* 5E728 8008E278 00000000 */  nop
    /* 5E72C 8008E27C 01F80019 */  multu      $t7, $t8
    /* 5E730 8008E280 3C18FF33 */  lui        $t8, (0xFF33FFFF >> 16)
    /* 5E734 8008E284 3C0FFC62 */  lui        $t7, (0xFC6218C4 >> 16)
    /* 5E738 8008E288 35EF18C4 */  ori        $t7, $t7, (0xFC6218C4 & 0xFFFF)
    /* 5E73C 8008E28C 3718FFFF */  ori        $t8, $t8, (0xFF33FFFF & 0xFFFF)
    /* 5E740 8008E290 AC580004 */  sw         $t8, 0x4($v0)
    /* 5E744 8008E294 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 5E748 8008E298 8E040000 */  lw         $a0, 0x0($s0)
    /* 5E74C 8008E29C 001F7880 */  sll        $t7, $ra, 2
    /* 5E750 8008E2A0 026FC021 */  addu       $t8, $s3, $t7
    /* 5E754 8008E2A4 00004812 */  mflo       $t1
    /* 5E758 8008E2A8 05210003 */  bgez       $t1, .L8008E2B8_5E768
    /* 5E75C 8008E2AC 0009C843 */   sra       $t9, $t1, 1
    /* 5E760 8008E2B0 25210001 */  addiu      $at, $t1, 0x1
    /* 5E764 8008E2B4 0001C843 */  sra        $t9, $at, 1
  .L8008E2B8_5E768:
    /* 5E768 8008E2B8 03204825 */  or         $t1, $t9, $zero
    /* 5E76C 8008E2BC 24990008 */  addiu      $t9, $a0, 0x8
    /* 5E770 8008E2C0 AE190000 */  sw         $t9, 0x0($s0)
    /* 5E774 8008E2C4 AC8E0000 */  sw         $t6, 0x0($a0)
    /* 5E778 8008E2C8 8F190000 */  lw         $t9, 0x0($t8)
    /* 5E77C 8008E2CC 03297021 */  addu       $t6, $t9, $t1
    /* 5E780 8008E2D0 01D47824 */  and        $t7, $t6, $s4
    /* 5E784 8008E2D4 AC8F0004 */  sw         $t7, 0x4($a0)
    /* 5E788 8008E2D8 8E050000 */  lw         $a1, 0x0($s0)
    /* 5E78C 8008E2DC 3C19F590 */  lui        $t9, (0xF5900000 >> 16)
    /* 5E790 8008E2E0 24B80008 */  addiu      $t8, $a1, 0x8
    /* 5E794 8008E2E4 AE180000 */  sw         $t8, 0x0($s0)
    /* 5E798 8008E2E8 ACB50004 */  sw         $s5, 0x4($a1)
    /* 5E79C 8008E2EC ACB90000 */  sw         $t9, 0x0($a1)
    /* 5E7A0 8008E2F0 8E060000 */  lw         $a2, 0x0($s0)
    /* 5E7A4 8008E2F4 24CE0008 */  addiu      $t6, $a2, 0x8
    /* 5E7A8 8008E2F8 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 5E7AC 8008E2FC ACC00004 */  sw         $zero, 0x4($a2)
    /* 5E7B0 8008E300 ACD60000 */  sw         $s6, 0x0($a2)
    /* 5E7B4 8008E304 8E0D0000 */  lw         $t5, 0x0($s0)
    /* 5E7B8 8008E308 25AF0008 */  addiu      $t7, $t5, 0x8
    /* 5E7BC 8008E30C AE0F0000 */  sw         $t7, 0x0($s0)
    /* 5E7C0 8008E310 ADB70000 */  sw         $s7, 0x0($t5)
    /* 5E7C4 8008E314 80F80007 */  lb         $t8, 0x7($a3)
    /* 5E7C8 8008E318 80E80006 */  lb         $t0, 0x6($a3)
    /* 5E7CC 8008E31C 03080019 */  multu      $t8, $t0
    /* 5E7D0 8008E320 00005012 */  mflo       $t2
    /* 5E7D4 8008E324 254A0003 */  addiu      $t2, $t2, 0x3
    /* 5E7D8 8008E328 000AC883 */  sra        $t9, $t2, 2
    /* 5E7DC 8008E32C 272AFFFF */  addiu      $t2, $t9, -0x1
    /* 5E7E0 8008E330 294107FF */  slti       $at, $t2, 0x7FF
    /* 5E7E4 8008E334 10200003 */  beqz       $at, .L8008E344_5E7F4
    /* 5E7E8 8008E338 00000000 */   nop
    /* 5E7EC 8008E33C 10000001 */  b          .L8008E344_5E7F4
    /* 5E7F0 8008E340 01406025 */   or        $t4, $t2, $zero
  .L8008E344_5E7F4:
    /* 5E7F4 8008E344 05010003 */  bgez       $t0, .L8008E354_5E804
    /* 5E7F8 8008E348 00081103 */   sra       $v0, $t0, 4
    /* 5E7FC 8008E34C 2501000F */  addiu      $at, $t0, 0xF
    /* 5E800 8008E350 00011103 */  sra        $v0, $at, 4
  .L8008E354_5E804:
    /* 5E804 8008E354 1C400003 */  bgtz       $v0, .L8008E364_5E814
    /* 5E808 8008E358 00404025 */   or        $t0, $v0, $zero
    /* 5E80C 8008E35C 10000001 */  b          .L8008E364_5E814
    /* 5E810 8008E360 24080001 */   addiu     $t0, $zero, 0x1
  .L8008E364_5E814:
    /* 5E814 8008E364 1C400003 */  bgtz       $v0, .L8008E374_5E824
    /* 5E818 8008E368 250E07FF */   addiu     $t6, $t0, 0x7FF
    /* 5E81C 8008E36C 10000002 */  b          .L8008E378_5E828
    /* 5E820 8008E370 24030001 */   addiu     $v1, $zero, 0x1
  .L8008E374_5E824:
    /* 5E824 8008E374 00401825 */  or         $v1, $v0, $zero
  .L8008E378_5E828:
    /* 5E828 8008E378 01C3001A */  div        $zero, $t6, $v1
    /* 5E82C 8008E37C 00007812 */  mflo       $t7
    /* 5E830 8008E380 31F80FFF */  andi       $t8, $t7, 0xFFF
    /* 5E834 8008E384 14600002 */  bnez       $v1, .L8008E390_5E840
    /* 5E838 8008E388 00000000 */   nop
    /* 5E83C 8008E38C 0007000D */  break      7
  .L8008E390_5E840:
    /* 5E840 8008E390 2401FFFF */  addiu      $at, $zero, -0x1
    /* 5E844 8008E394 14610004 */  bne        $v1, $at, .L8008E3A8_5E858
    /* 5E848 8008E398 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 5E84C 8008E39C 15C10002 */  bne        $t6, $at, .L8008E3A8_5E858
    /* 5E850 8008E3A0 00000000 */   nop
    /* 5E854 8008E3A4 0006000D */  break      6
  .L8008E3A8_5E858:
    /* 5E858 8008E3A8 318E0FFF */  andi       $t6, $t4, 0xFFF
    /* 5E85C 8008E3AC 000E7B00 */  sll        $t7, $t6, 12
    /* 5E860 8008E3B0 031EC825 */  or         $t9, $t8, $fp
    /* 5E864 8008E3B4 032FC025 */  or         $t8, $t9, $t7
    /* 5E868 8008E3B8 ADB80004 */  sw         $t8, 0x4($t5)
    /* 5E86C 8008E3BC 8E020000 */  lw         $v0, 0x0($s0)
    /* 5E870 8008E3C0 3C01F580 */  lui        $at, (0xF5800000 >> 16)
    /* 5E874 8008E3C4 244E0008 */  addiu      $t6, $v0, 0x8
    /* 5E878 8008E3C8 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 5E87C 8008E3CC AC400004 */  sw         $zero, 0x4($v0)
    /* 5E880 8008E3D0 AC510000 */  sw         $s1, 0x0($v0)
    /* 5E884 8008E3D4 00402025 */  or         $a0, $v0, $zero
    /* 5E888 8008E3D8 8E020000 */  lw         $v0, 0x0($s0)
    /* 5E88C 8008E3DC 80EF0006 */  lb         $t7, 0x6($a3)
    /* 5E890 8008E3E0 24590008 */  addiu      $t9, $v0, 0x8
    /* 5E894 8008E3E4 000FC043 */  sra        $t8, $t7, 1
    /* 5E898 8008E3E8 270E0007 */  addiu      $t6, $t8, 0x7
    /* 5E89C 8008E3EC AE190000 */  sw         $t9, 0x0($s0)
    /* 5E8A0 8008E3F0 000EC8C3 */  sra        $t9, $t6, 3
    /* 5E8A4 8008E3F4 332F01FF */  andi       $t7, $t9, 0x1FF
    /* 5E8A8 8008E3F8 000FC240 */  sll        $t8, $t7, 9
    /* 5E8AC 8008E3FC 3C190008 */  lui        $t9, (0x80200 >> 16)
    /* 5E8B0 8008E400 37390200 */  ori        $t9, $t9, (0x80200 & 0xFFFF)
    /* 5E8B4 8008E404 03017025 */  or         $t6, $t8, $at
    /* 5E8B8 8008E408 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 5E8BC 8008E40C AC590004 */  sw         $t9, 0x4($v0)
    /* 5E8C0 8008E410 00402825 */  or         $a1, $v0, $zero
    /* 5E8C4 8008E414 8E020000 */  lw         $v0, 0x0($s0)
    /* 5E8C8 8008E418 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* 5E8CC 8008E41C 244F0008 */  addiu      $t7, $v0, 0x8
    /* 5E8D0 8008E420 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 5E8D4 8008E424 AC580000 */  sw         $t8, 0x0($v0)
    /* 5E8D8 8008E428 80EE0007 */  lb         $t6, 0x7($a3)
    /* 5E8DC 8008E42C 00403025 */  or         $a2, $v0, $zero
    /* 5E8E0 8008E430 25D9FFFF */  addiu      $t9, $t6, -0x1
    /* 5E8E4 8008E434 80EE0006 */  lb         $t6, 0x6($a3)
    /* 5E8E8 8008E438 00197880 */  sll        $t7, $t9, 2
    /* 5E8EC 8008E43C 31F80FFF */  andi       $t8, $t7, 0xFFF
    /* 5E8F0 8008E440 25D9FFFF */  addiu      $t9, $t6, -0x1
    /* 5E8F4 8008E444 00197880 */  sll        $t7, $t9, 2
    /* 5E8F8 8008E448 31EE0FFF */  andi       $t6, $t7, 0xFFF
    /* 5E8FC 8008E44C 000ECB00 */  sll        $t9, $t6, 12
    /* 5E900 8008E450 03197825 */  or         $t7, $t8, $t9
    /* 5E904 8008E454 100000F7 */  b          .L8008E834_5ECE4
    /* 5E908 8008E458 AC4F0004 */   sw        $t7, 0x4($v0)
  .L8008E45C_5E90C:
    /* 5E90C 8008E45C 54810080 */  bnel       $a0, $at, .L8008E660_5EB10
    /* 5E910 8008E460 24010002 */   addiu     $at, $zero, 0x2
    /* 5E914 8008E464 80EE0007 */  lb         $t6, 0x7($a3)
    /* 5E918 8008E468 9178000E */  lbu        $t8, 0xE($t3)
    /* 5E91C 8008E46C 80EF0006 */  lb         $t7, 0x6($a3)
    /* 5E920 8008E470 8E020000 */  lw         $v0, 0x0($s0)
    /* 5E924 8008E474 01D80019 */  multu      $t6, $t8
    /* 5E928 8008E478 3C18FC40 */  lui        $t8, (0xFC40C281 >> 16)
    /* 5E92C 8008E47C 244E0008 */  addiu      $t6, $v0, 0x8
    /* 5E930 8008E480 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 5E934 8008E484 3718C281 */  ori        $t8, $t8, (0xFC40C281 & 0xFFFF)
    /* 5E938 8008E488 AC580000 */  sw         $t8, 0x0($v0)
    /* 5E93C 8008E48C 001FC080 */  sll        $t8, $ra, 2
    /* 5E940 8008E490 3C0EFD70 */  lui        $t6, (0xFD700000 >> 16)
    /* 5E944 8008E494 240C07FF */  addiu      $t4, $zero, 0x7FF
    /* 5E948 8008E498 0000C812 */  mflo       $t9
    /* 5E94C 8008E49C 00000000 */  nop
    /* 5E950 8008E4A0 00000000 */  nop
    /* 5E954 8008E4A4 032F0019 */  multu      $t9, $t7
    /* 5E958 8008E4A8 3C19FF87 */  lui        $t9, (0xFF87FFFF >> 16)
    /* 5E95C 8008E4AC 3739FFFF */  ori        $t9, $t9, (0xFF87FFFF & 0xFFFF)
    /* 5E960 8008E4B0 AC590004 */  sw         $t9, 0x4($v0)
    /* 5E964 8008E4B4 8E040000 */  lw         $a0, 0x0($s0)
    /* 5E968 8008E4B8 0278C821 */  addu       $t9, $s3, $t8
    /* 5E96C 8008E4BC 248F0008 */  addiu      $t7, $a0, 0x8
    /* 5E970 8008E4C0 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 5E974 8008E4C4 AC8E0000 */  sw         $t6, 0x0($a0)
    /* 5E978 8008E4C8 8F2F0000 */  lw         $t7, 0x0($t9)
    /* 5E97C 8008E4CC 00004812 */  mflo       $t1
    /* 5E980 8008E4D0 01E97021 */  addu       $t6, $t7, $t1
    /* 5E984 8008E4D4 01D4C024 */  and        $t8, $t6, $s4
    /* 5E988 8008E4D8 AC980004 */  sw         $t8, 0x4($a0)
    /* 5E98C 8008E4DC 8E050000 */  lw         $a1, 0x0($s0)
    /* 5E990 8008E4E0 3C0FF570 */  lui        $t7, (0xF5700000 >> 16)
    /* 5E994 8008E4E4 24B90008 */  addiu      $t9, $a1, 0x8
    /* 5E998 8008E4E8 AE190000 */  sw         $t9, 0x0($s0)
    /* 5E99C 8008E4EC ACB50004 */  sw         $s5, 0x4($a1)
    /* 5E9A0 8008E4F0 ACAF0000 */  sw         $t7, 0x0($a1)
    /* 5E9A4 8008E4F4 8E060000 */  lw         $a2, 0x0($s0)
    /* 5E9A8 8008E4F8 24CE0008 */  addiu      $t6, $a2, 0x8
    /* 5E9AC 8008E4FC AE0E0000 */  sw         $t6, 0x0($s0)
    /* 5E9B0 8008E500 ACC00004 */  sw         $zero, 0x4($a2)
    /* 5E9B4 8008E504 ACD60000 */  sw         $s6, 0x0($a2)
    /* 5E9B8 8008E508 8E0D0000 */  lw         $t5, 0x0($s0)
    /* 5E9BC 8008E50C 25B80008 */  addiu      $t8, $t5, 0x8
    /* 5E9C0 8008E510 AE180000 */  sw         $t8, 0x0($s0)
    /* 5E9C4 8008E514 ADB70000 */  sw         $s7, 0x0($t5)
    /* 5E9C8 8008E518 80F90007 */  lb         $t9, 0x7($a3)
    /* 5E9CC 8008E51C 80E80006 */  lb         $t0, 0x6($a3)
    /* 5E9D0 8008E520 03280019 */  multu      $t9, $t0
    /* 5E9D4 8008E524 00005012 */  mflo       $t2
    /* 5E9D8 8008E528 254A0001 */  addiu      $t2, $t2, 0x1
    /* 5E9DC 8008E52C 000A7843 */  sra        $t7, $t2, 1
    /* 5E9E0 8008E530 25EAFFFF */  addiu      $t2, $t7, -0x1
    /* 5E9E4 8008E534 294107FF */  slti       $at, $t2, 0x7FF
    /* 5E9E8 8008E538 10200003 */  beqz       $at, .L8008E548_5E9F8
    /* 5E9EC 8008E53C 00000000 */   nop
    /* 5E9F0 8008E540 10000001 */  b          .L8008E548_5E9F8
    /* 5E9F4 8008E544 01406025 */   or        $t4, $t2, $zero
  .L8008E548_5E9F8:
    /* 5E9F8 8008E548 05010003 */  bgez       $t0, .L8008E558_5EA08
    /* 5E9FC 8008E54C 000810C3 */   sra       $v0, $t0, 3
    /* 5EA00 8008E550 25010007 */  addiu      $at, $t0, 0x7
    /* 5EA04 8008E554 000110C3 */  sra        $v0, $at, 3
  .L8008E558_5EA08:
    /* 5EA08 8008E558 1C400003 */  bgtz       $v0, .L8008E568_5EA18
    /* 5EA0C 8008E55C 00404025 */   or        $t0, $v0, $zero
    /* 5EA10 8008E560 10000001 */  b          .L8008E568_5EA18
    /* 5EA14 8008E564 24080001 */   addiu     $t0, $zero, 0x1
  .L8008E568_5EA18:
    /* 5EA18 8008E568 1C400003 */  bgtz       $v0, .L8008E578_5EA28
    /* 5EA1C 8008E56C 250E07FF */   addiu     $t6, $t0, 0x7FF
    /* 5EA20 8008E570 10000002 */  b          .L8008E57C_5EA2C
    /* 5EA24 8008E574 24030001 */   addiu     $v1, $zero, 0x1
  .L8008E578_5EA28:
    /* 5EA28 8008E578 00401825 */  or         $v1, $v0, $zero
  .L8008E57C_5EA2C:
    /* 5EA2C 8008E57C 01C3001A */  div        $zero, $t6, $v1
    /* 5EA30 8008E580 0000C012 */  mflo       $t8
    /* 5EA34 8008E584 33190FFF */  andi       $t9, $t8, 0xFFF
    /* 5EA38 8008E588 14600002 */  bnez       $v1, .L8008E594_5EA44
    /* 5EA3C 8008E58C 00000000 */   nop
    /* 5EA40 8008E590 0007000D */  break      7
  .L8008E594_5EA44:
    /* 5EA44 8008E594 2401FFFF */  addiu      $at, $zero, -0x1
    /* 5EA48 8008E598 14610004 */  bne        $v1, $at, .L8008E5AC_5EA5C
    /* 5EA4C 8008E59C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 5EA50 8008E5A0 15C10002 */  bne        $t6, $at, .L8008E5AC_5EA5C
    /* 5EA54 8008E5A4 00000000 */   nop
    /* 5EA58 8008E5A8 0006000D */  break      6
  .L8008E5AC_5EA5C:
    /* 5EA5C 8008E5AC 318E0FFF */  andi       $t6, $t4, 0xFFF
    /* 5EA60 8008E5B0 000EC300 */  sll        $t8, $t6, 12
    /* 5EA64 8008E5B4 033E7825 */  or         $t7, $t9, $fp
    /* 5EA68 8008E5B8 01F8C825 */  or         $t9, $t7, $t8
    /* 5EA6C 8008E5BC ADB90004 */  sw         $t9, 0x4($t5)
    /* 5EA70 8008E5C0 8E020000 */  lw         $v0, 0x0($s0)
    /* 5EA74 8008E5C4 3C01F568 */  lui        $at, (0xF5680000 >> 16)
    /* 5EA78 8008E5C8 244E0008 */  addiu      $t6, $v0, 0x8
    /* 5EA7C 8008E5CC AE0E0000 */  sw         $t6, 0x0($s0)
    /* 5EA80 8008E5D0 AC400004 */  sw         $zero, 0x4($v0)
    /* 5EA84 8008E5D4 AC510000 */  sw         $s1, 0x0($v0)
    /* 5EA88 8008E5D8 00402025 */  or         $a0, $v0, $zero
    /* 5EA8C 8008E5DC 8E020000 */  lw         $v0, 0x0($s0)
    /* 5EA90 8008E5E0 80F80006 */  lb         $t8, 0x6($a3)
    /* 5EA94 8008E5E4 244F0008 */  addiu      $t7, $v0, 0x8
    /* 5EA98 8008E5E8 27190007 */  addiu      $t9, $t8, 0x7
    /* 5EA9C 8008E5EC 001970C3 */  sra        $t6, $t9, 3
    /* 5EAA0 8008E5F0 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 5EAA4 8008E5F4 31CF01FF */  andi       $t7, $t6, 0x1FF
    /* 5EAA8 8008E5F8 000FC240 */  sll        $t8, $t7, 9
    /* 5EAAC 8008E5FC 3C0E0008 */  lui        $t6, (0x80200 >> 16)
    /* 5EAB0 8008E600 35CE0200 */  ori        $t6, $t6, (0x80200 & 0xFFFF)
    /* 5EAB4 8008E604 0301C825 */  or         $t9, $t8, $at
    /* 5EAB8 8008E608 AC590000 */  sw         $t9, 0x0($v0)
    /* 5EABC 8008E60C AC4E0004 */  sw         $t6, 0x4($v0)
    /* 5EAC0 8008E610 00402825 */  or         $a1, $v0, $zero
    /* 5EAC4 8008E614 8E020000 */  lw         $v0, 0x0($s0)
    /* 5EAC8 8008E618 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* 5EACC 8008E61C 244F0008 */  addiu      $t7, $v0, 0x8
    /* 5EAD0 8008E620 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 5EAD4 8008E624 AC580000 */  sw         $t8, 0x0($v0)
    /* 5EAD8 8008E628 80F90007 */  lb         $t9, 0x7($a3)
    /* 5EADC 8008E62C 00403025 */  or         $a2, $v0, $zero
    /* 5EAE0 8008E630 272EFFFF */  addiu      $t6, $t9, -0x1
    /* 5EAE4 8008E634 80F90006 */  lb         $t9, 0x6($a3)
    /* 5EAE8 8008E638 000E7880 */  sll        $t7, $t6, 2
    /* 5EAEC 8008E63C 31F80FFF */  andi       $t8, $t7, 0xFFF
    /* 5EAF0 8008E640 272EFFFF */  addiu      $t6, $t9, -0x1
    /* 5EAF4 8008E644 000E7880 */  sll        $t7, $t6, 2
    /* 5EAF8 8008E648 31F90FFF */  andi       $t9, $t7, 0xFFF
    /* 5EAFC 8008E64C 00197300 */  sll        $t6, $t9, 12
    /* 5EB00 8008E650 030E7825 */  or         $t7, $t8, $t6
    /* 5EB04 8008E654 10000077 */  b          .L8008E834_5ECE4
    /* 5EB08 8008E658 AC4F0004 */   sw        $t7, 0x4($v0)
    /* 5EB0C 8008E65C 24010002 */  addiu      $at, $zero, 0x2
  .L8008E660_5EB10:
    /* 5EB10 8008E660 14810074 */  bne        $a0, $at, .L8008E834_5ECE4
    /* 5EB14 8008E664 3C18FCFF */   lui       $t8, (0xFCFFFFFF >> 16)
    /* 5EB18 8008E668 8E020000 */  lw         $v0, 0x0($s0)
    /* 5EB1C 8008E66C 3C0EFFFC */  lui        $t6, (0xFFFCF279 >> 16)
    /* 5EB20 8008E670 35CEF279 */  ori        $t6, $t6, (0xFFFCF279 & 0xFFFF)
    /* 5EB24 8008E674 24590008 */  addiu      $t9, $v0, 0x8
    /* 5EB28 8008E678 AE190000 */  sw         $t9, 0x0($s0)
    /* 5EB2C 8008E67C 3718FFFF */  ori        $t8, $t8, (0xFCFFFFFF & 0xFFFF)
    /* 5EB30 8008E680 AC580000 */  sw         $t8, 0x0($v0)
    /* 5EB34 8008E684 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 5EB38 8008E688 8E040000 */  lw         $a0, 0x0($s0)
    /* 5EB3C 8008E68C 001FC080 */  sll        $t8, $ra, 2
    /* 5EB40 8008E690 3C19FD10 */  lui        $t9, (0xFD100000 >> 16)
    /* 5EB44 8008E694 248F0008 */  addiu      $t7, $a0, 0x8
    /* 5EB48 8008E698 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 5EB4C 8008E69C 02787021 */  addu       $t6, $s3, $t8
    /* 5EB50 8008E6A0 AC990000 */  sw         $t9, 0x0($a0)
    /* 5EB54 8008E6A4 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 5EB58 8008E6A8 3C0EF510 */  lui        $t6, (0xF5100000 >> 16)
    /* 5EB5C 8008E6AC 240C07FF */  addiu      $t4, $zero, 0x7FF
    /* 5EB60 8008E6B0 01F4C824 */  and        $t9, $t7, $s4
    /* 5EB64 8008E6B4 AC990004 */  sw         $t9, 0x4($a0)
    /* 5EB68 8008E6B8 8E050000 */  lw         $a1, 0x0($s0)
    /* 5EB6C 8008E6BC 24B80008 */  addiu      $t8, $a1, 0x8
    /* 5EB70 8008E6C0 AE180000 */  sw         $t8, 0x0($s0)
    /* 5EB74 8008E6C4 ACB50004 */  sw         $s5, 0x4($a1)
    /* 5EB78 8008E6C8 ACAE0000 */  sw         $t6, 0x0($a1)
    /* 5EB7C 8008E6CC 8E060000 */  lw         $a2, 0x0($s0)
    /* 5EB80 8008E6D0 24CF0008 */  addiu      $t7, $a2, 0x8
    /* 5EB84 8008E6D4 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 5EB88 8008E6D8 ACC00004 */  sw         $zero, 0x4($a2)
    /* 5EB8C 8008E6DC ACD60000 */  sw         $s6, 0x0($a2)
    /* 5EB90 8008E6E0 8E0A0000 */  lw         $t2, 0x0($s0)
    /* 5EB94 8008E6E4 25590008 */  addiu      $t9, $t2, 0x8
    /* 5EB98 8008E6E8 AE190000 */  sw         $t9, 0x0($s0)
    /* 5EB9C 8008E6EC AD570000 */  sw         $s7, 0x0($t2)
    /* 5EBA0 8008E6F0 80F80007 */  lb         $t8, 0x7($a3)
    /* 5EBA4 8008E6F4 80E80006 */  lb         $t0, 0x6($a3)
    /* 5EBA8 8008E6F8 03080019 */  multu      $t8, $t0
    /* 5EBAC 8008E6FC 00081040 */  sll        $v0, $t0, 1
    /* 5EBB0 8008E700 00004812 */  mflo       $t1
    /* 5EBB4 8008E704 2529FFFF */  addiu      $t1, $t1, -0x1
    /* 5EBB8 8008E708 292107FF */  slti       $at, $t1, 0x7FF
    /* 5EBBC 8008E70C 10200003 */  beqz       $at, .L8008E71C_5EBCC
    /* 5EBC0 8008E710 00000000 */   nop
    /* 5EBC4 8008E714 10000001 */  b          .L8008E71C_5EBCC
    /* 5EBC8 8008E718 01206025 */   or        $t4, $t1, $zero
  .L8008E71C_5EBCC:
    /* 5EBCC 8008E71C 04410003 */  bgez       $v0, .L8008E72C_5EBDC
    /* 5EBD0 8008E720 000270C3 */   sra       $t6, $v0, 3
    /* 5EBD4 8008E724 24410007 */  addiu      $at, $v0, 0x7
    /* 5EBD8 8008E728 000170C3 */  sra        $t6, $at, 3
  .L8008E72C_5EBDC:
    /* 5EBDC 8008E72C 1DC00003 */  bgtz       $t6, .L8008E73C_5EBEC
    /* 5EBE0 8008E730 01C01025 */   or        $v0, $t6, $zero
    /* 5EBE4 8008E734 10000002 */  b          .L8008E740_5EBF0
    /* 5EBE8 8008E738 24080001 */   addiu     $t0, $zero, 0x1
  .L8008E73C_5EBEC:
    /* 5EBEC 8008E73C 00404025 */  or         $t0, $v0, $zero
  .L8008E740_5EBF0:
    /* 5EBF0 8008E740 1C400003 */  bgtz       $v0, .L8008E750_5EC00
    /* 5EBF4 8008E744 250F07FF */   addiu     $t7, $t0, 0x7FF
    /* 5EBF8 8008E748 10000002 */  b          .L8008E754_5EC04
    /* 5EBFC 8008E74C 24030001 */   addiu     $v1, $zero, 0x1
  .L8008E750_5EC00:
    /* 5EC00 8008E750 00401825 */  or         $v1, $v0, $zero
  .L8008E754_5EC04:
    /* 5EC04 8008E754 01E3001A */  div        $zero, $t7, $v1
    /* 5EC08 8008E758 0000C812 */  mflo       $t9
    /* 5EC0C 8008E75C 33380FFF */  andi       $t8, $t9, 0xFFF
    /* 5EC10 8008E760 14600002 */  bnez       $v1, .L8008E76C_5EC1C
    /* 5EC14 8008E764 00000000 */   nop
    /* 5EC18 8008E768 0007000D */  break      7
  .L8008E76C_5EC1C:
    /* 5EC1C 8008E76C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 5EC20 8008E770 14610004 */  bne        $v1, $at, .L8008E784_5EC34
    /* 5EC24 8008E774 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 5EC28 8008E778 15E10002 */  bne        $t7, $at, .L8008E784_5EC34
    /* 5EC2C 8008E77C 00000000 */   nop
    /* 5EC30 8008E780 0006000D */  break      6
  .L8008E784_5EC34:
    /* 5EC34 8008E784 318F0FFF */  andi       $t7, $t4, 0xFFF
    /* 5EC38 8008E788 000FCB00 */  sll        $t9, $t7, 12
    /* 5EC3C 8008E78C 031E7025 */  or         $t6, $t8, $fp
    /* 5EC40 8008E790 01D9C025 */  or         $t8, $t6, $t9
    /* 5EC44 8008E794 AD580004 */  sw         $t8, 0x4($t2)
    /* 5EC48 8008E798 8E020000 */  lw         $v0, 0x0($s0)
    /* 5EC4C 8008E79C 3C01F510 */  lui        $at, (0xF5100000 >> 16)
    /* 5EC50 8008E7A0 244F0008 */  addiu      $t7, $v0, 0x8
    /* 5EC54 8008E7A4 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 5EC58 8008E7A8 AC400004 */  sw         $zero, 0x4($v0)
    /* 5EC5C 8008E7AC AC510000 */  sw         $s1, 0x0($v0)
    /* 5EC60 8008E7B0 00402025 */  or         $a0, $v0, $zero
    /* 5EC64 8008E7B4 8E020000 */  lw         $v0, 0x0($s0)
    /* 5EC68 8008E7B8 80F90006 */  lb         $t9, 0x6($a3)
    /* 5EC6C 8008E7BC 244E0008 */  addiu      $t6, $v0, 0x8
    /* 5EC70 8008E7C0 0019C040 */  sll        $t8, $t9, 1
    /* 5EC74 8008E7C4 270F0007 */  addiu      $t7, $t8, 0x7
    /* 5EC78 8008E7C8 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 5EC7C 8008E7CC 000F70C3 */  sra        $t6, $t7, 3
    /* 5EC80 8008E7D0 31D901FF */  andi       $t9, $t6, 0x1FF
    /* 5EC84 8008E7D4 0019C240 */  sll        $t8, $t9, 9
    /* 5EC88 8008E7D8 3C0E0008 */  lui        $t6, (0x80200 >> 16)
    /* 5EC8C 8008E7DC 35CE0200 */  ori        $t6, $t6, (0x80200 & 0xFFFF)
    /* 5EC90 8008E7E0 03017825 */  or         $t7, $t8, $at
    /* 5EC94 8008E7E4 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 5EC98 8008E7E8 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 5EC9C 8008E7EC 00402825 */  or         $a1, $v0, $zero
    /* 5ECA0 8008E7F0 8E020000 */  lw         $v0, 0x0($s0)
    /* 5ECA4 8008E7F4 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* 5ECA8 8008E7F8 24590008 */  addiu      $t9, $v0, 0x8
    /* 5ECAC 8008E7FC AE190000 */  sw         $t9, 0x0($s0)
    /* 5ECB0 8008E800 AC580000 */  sw         $t8, 0x0($v0)
    /* 5ECB4 8008E804 80EF0007 */  lb         $t7, 0x7($a3)
    /* 5ECB8 8008E808 00403025 */  or         $a2, $v0, $zero
    /* 5ECBC 8008E80C 25EEFFFF */  addiu      $t6, $t7, -0x1
    /* 5ECC0 8008E810 80EF0006 */  lb         $t7, 0x6($a3)
    /* 5ECC4 8008E814 000EC880 */  sll        $t9, $t6, 2
    /* 5ECC8 8008E818 33380FFF */  andi       $t8, $t9, 0xFFF
    /* 5ECCC 8008E81C 25EEFFFF */  addiu      $t6, $t7, -0x1
    /* 5ECD0 8008E820 000EC880 */  sll        $t9, $t6, 2
    /* 5ECD4 8008E824 332F0FFF */  andi       $t7, $t9, 0xFFF
    /* 5ECD8 8008E828 000F7300 */  sll        $t6, $t7, 12
    /* 5ECDC 8008E82C 030EC825 */  or         $t9, $t8, $t6
    /* 5ECE0 8008E830 AC590004 */  sw         $t9, 0x4($v0)
  .L8008E834_5ECE4:
    /* 5ECE4 8008E834 80EF0006 */  lb         $t7, 0x6($a3)
    /* 5ECE8 8008E838 3C01800E */  lui        $at, %hi(D_800DE12D)
    /* 5ECEC 8008E83C A02FE12D */  sb         $t7, %lo(D_800DE12D)($at)
    /* 5ECF0 8008E840 80F80007 */  lb         $t8, 0x7($a3)
    /* 5ECF4 8008E844 3C01800E */  lui        $at, %hi(D_800DE12E)
    /* 5ECF8 8008E848 A038E12E */  sb         $t8, %lo(D_800DE12E)($at)
    /* 5ECFC 8008E84C 8E020000 */  lw         $v0, 0x0($s0)
    /* 5ED00 8008E850 244E0008 */  addiu      $t6, $v0, 0x8
    /* 5ED04 8008E854 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 5ED08 8008E858 AC400004 */  sw         $zero, 0x4($v0)
    /* 5ED0C 8008E85C AC510000 */  sw         $s1, 0x0($v0)
    /* 5ED10 8008E860 9164000C */  lbu        $a0, 0xC($t3)
    /* 5ED14 8008E864 8565000A */  lh         $a1, 0xA($t3)
    /* 5ED18 8008E868 85790000 */  lh         $t9, 0x0($t3)
  .L8008E86C_5ED1C:
    /* 5ED1C 8008E86C 856F0002 */  lh         $t7, 0x2($t3)
    /* 5ED20 8008E870 85780004 */  lh         $t8, 0x4($t3)
    /* 5ED24 8008E874 44992000 */  mtc1       $t9, $f4
    /* 5ED28 8008E878 448F4000 */  mtc1       $t7, $f8
    /* 5ED2C 8008E87C 44988000 */  mtc1       $t8, $f16
    /* 5ED30 8008E880 468021A0 */  cvt.s.w    $f6, $f4
    /* 5ED34 8008E884 3C03800E */  lui        $v1, %hi(D_800DE118)
    /* 5ED38 8008E888 2463E118 */  addiu      $v1, $v1, %lo(D_800DE118)
    /* 5ED3C 8008E88C 256E0006 */  addiu      $t6, $t3, 0x6
    /* 5ED40 8008E890 3C01800E */  lui        $at, %hi(D_800DE124)
    /* 5ED44 8008E894 468042A0 */  cvt.s.w    $f10, $f8
    /* 5ED48 8008E898 E4660000 */  swc1       $f6, 0x0($v1)
    /* 5ED4C 8008E89C 3C0F800B */  lui        $t7, %hi(D_800AA694)
    /* 5ED50 8008E8A0 25EFA694 */  addiu      $t7, $t7, %lo(D_800AA694)
    /* 5ED54 8008E8A4 001FC8C0 */  sll        $t9, $ra, 3
    /* 5ED58 8008E8A8 468084A0 */  cvt.s.w    $f18, $f16
    /* 5ED5C 8008E8AC E46A0004 */  swc1       $f10, 0x4($v1)
    /* 5ED60 8008E8B0 032F3821 */  addu       $a3, $t9, $t7
    /* 5ED64 8008E8B4 00801025 */  or         $v0, $a0, $zero
    /* 5ED68 8008E8B8 E4720008 */  swc1       $f18, 0x8($v1)
    /* 5ED6C 8008E8BC AC2EE124 */  sw         $t6, %lo(D_800DE124)($at)
    /* 5ED70 8008E8C0 2401000A */  addiu      $at, $zero, 0xA
    /* 5ED74 8008E8C4 5481000B */  bnel       $a0, $at, .L8008E8F4_5EDA4
    /* 5ED78 8008E8C8 2401000B */   addiu     $at, $zero, 0xB
    /* 5ED7C 8008E8CC 9162000D */  lbu        $v0, 0xD($t3)
    /* 5ED80 8008E8D0 3C01800E */  lui        $at, %hi(D_800DE128)
    /* 5ED84 8008E8D4 00450019 */  multu      $v0, $a1
    /* 5ED88 8008E8D8 0000C012 */  mflo       $t8
    /* 5ED8C 8008E8DC 44982000 */  mtc1       $t8, $f4
    /* 5ED90 8008E8E0 00000000 */  nop
    /* 5ED94 8008E8E4 468021A0 */  cvt.s.w    $f6, $f4
    /* 5ED98 8008E8E8 10000012 */  b          .L8008E934_5EDE4
    /* 5ED9C 8008E8EC E426E128 */   swc1      $f6, %lo(D_800DE128)($at)
    /* 5EDA0 8008E8F0 2401000B */  addiu      $at, $zero, 0xB
  .L8008E8F4_5EDA4:
    /* 5EDA4 8008E8F4 5441000B */  bnel       $v0, $at, .L8008E924_5EDD4
    /* 5EDA8 8008E8F8 44858000 */   mtc1      $a1, $f16
    /* 5EDAC 8008E8FC 9162000D */  lbu        $v0, 0xD($t3)
    /* 5EDB0 8008E900 3C01800E */  lui        $at, %hi(D_800DE128)
    /* 5EDB4 8008E904 00450019 */  multu      $v0, $a1
    /* 5EDB8 8008E908 00007012 */  mflo       $t6
    /* 5EDBC 8008E90C 448E4000 */  mtc1       $t6, $f8
    /* 5EDC0 8008E910 00000000 */  nop
    /* 5EDC4 8008E914 468042A0 */  cvt.s.w    $f10, $f8
    /* 5EDC8 8008E918 10000006 */  b          .L8008E934_5EDE4
    /* 5EDCC 8008E91C E42AE128 */   swc1      $f10, %lo(D_800DE128)($at)
    /* 5EDD0 8008E920 44858000 */  mtc1       $a1, $f16
  .L8008E924_5EDD4:
    /* 5EDD4 8008E924 3C01800E */  lui        $at, %hi(D_800DE128)
    /* 5EDD8 8008E928 468084A0 */  cvt.s.w    $f18, $f16
    /* 5EDDC 8008E92C E432E128 */  swc1       $f18, %lo(D_800DE128)($at)
    /* 5EDE0 8008E930 9162000D */  lbu        $v0, 0xD($t3)
  .L8008E934_5EDE4:
    /* 5EDE4 8008E934 3C01800E */  lui        $at, %hi(D_800DE12C)
    /* 5EDE8 8008E938 A022E12C */  sb         $v0, %lo(D_800DE12C)($at)
    /* 5EDEC 8008E93C 80E30004 */  lb         $v1, 0x4($a3)
    /* 5EDF0 8008E940 24010002 */  addiu      $at, $zero, 0x2
    /* 5EDF4 8008E944 10600007 */  beqz       $v1, .L8008E964_5EE14
    /* 5EDF8 8008E948 00000000 */   nop
    /* 5EDFC 8008E94C 10610009 */  beq        $v1, $at, .L8008E974_5EE24
    /* 5EE00 8008E950 24010003 */   addiu     $at, $zero, 0x3
    /* 5EE04 8008E954 1061000B */  beq        $v1, $at, .L8008E984_5EE34
    /* 5EE08 8008E958 00000000 */   nop
    /* 5EE0C 8008E95C 1000000C */  b          .L8008E990_5EE40
    /* 5EE10 8008E960 93A30045 */   lbu       $v1, 0x45($sp)
  .L8008E964_5EE14:
    /* 5EE14 8008E964 0C023453 */  jal        func_8008D14C_5D5FC
    /* 5EE18 8008E968 00000000 */   nop
    /* 5EE1C 8008E96C 10000008 */  b          .L8008E990_5EE40
    /* 5EE20 8008E970 93A30045 */   lbu       $v1, 0x45($sp)
  .L8008E974_5EE24:
    /* 5EE24 8008E974 0C023372 */  jal        func_8008CDC8_5D278
    /* 5EE28 8008E978 00000000 */   nop
    /* 5EE2C 8008E97C 10000004 */  b          .L8008E990_5EE40
    /* 5EE30 8008E980 93A30045 */   lbu       $v1, 0x45($sp)
  .L8008E984_5EE34:
    /* 5EE34 8008E984 0C023544 */  jal        func_8008D510_5D9C0
    /* 5EE38 8008E988 00000000 */   nop
    /* 5EE3C 8008E98C 93A30045 */  lbu        $v1, 0x45($sp)
  .L8008E990_5EE40:
    /* 5EE40 8008E990 2652FFFF */  addiu      $s2, $s2, -0x1
  .L8008E994_5EE44:
    /* 5EE44 8008E994 324200FF */  andi       $v0, $s2, 0xFF
    /* 5EE48 8008E998 00409025 */  or         $s2, $v0, $zero
    /* 5EE4C 8008E99C 24630001 */  addiu      $v1, $v1, 0x1
  .L8008E9A0_5EE50:
    /* 5EE50 8008E9A0 306F00FF */  andi       $t7, $v1, 0xFF
    /* 5EE54 8008E9A4 1C40FE08 */  bgtz       $v0, .L8008E1C8_5E678
    /* 5EE58 8008E9A8 01E01825 */   or        $v1, $t7, $zero
  .L8008E9AC_5EE5C:
    /* 5EE5C 8008E9AC 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 5EE60 8008E9B0 8FB00018 */  lw         $s0, 0x18($sp)
    /* 5EE64 8008E9B4 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 5EE68 8008E9B8 8FB20020 */  lw         $s2, 0x20($sp)
    /* 5EE6C 8008E9BC 8FB30024 */  lw         $s3, 0x24($sp)
    /* 5EE70 8008E9C0 8FB40028 */  lw         $s4, 0x28($sp)
    /* 5EE74 8008E9C4 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 5EE78 8008E9C8 8FB60030 */  lw         $s6, 0x30($sp)
    /* 5EE7C 8008E9CC 8FB70034 */  lw         $s7, 0x34($sp)
    /* 5EE80 8008E9D0 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 5EE84 8008E9D4 03E00008 */  jr         $ra
    /* 5EE88 8008E9D8 27BD0058 */   addiu     $sp, $sp, 0x58
endlabel func_8008E158_5E608
