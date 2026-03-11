nonmatching func_802DF4C8_2C18F8, 0x4C4

glabel func_802DF4C8_2C18F8
    /* 2C18F8 802DF4C8 308600FF */  andi       $a2, $a0, 0xFF
    /* 2C18FC 802DF4CC 24030050 */  addiu      $v1, $zero, 0x50
    /* 2C1900 802DF4D0 00C30019 */  multu      $a2, $v1
    /* 2C1904 802DF4D4 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 2C1908 802DF4D8 3C028005 */  lui        $v0, %hi(alienInstances)
    /* 2C190C 802DF4DC 24428198 */  addiu      $v0, $v0, %lo(alienInstances)
    /* 2C1910 802DF4E0 AFB00014 */  sw         $s0, 0x14($sp)
    /* 2C1914 802DF4E4 AFB10018 */  sw         $s1, 0x18($sp)
    /* 2C1918 802DF4E8 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 2C191C 802DF4EC AFA40030 */  sw         $a0, 0x30($sp)
    /* 2C1920 802DF4F0 00007012 */  mflo       $t6
    /* 2C1924 802DF4F4 004E8021 */  addu       $s0, $v0, $t6
    /* 2C1928 802DF4F8 920F0025 */  lbu        $t7, 0x25($s0)
    /* 2C192C 802DF4FC 01E30019 */  multu      $t7, $v1
    /* 2C1930 802DF500 0000C012 */  mflo       $t8
    /* 2C1934 802DF504 00588821 */  addu       $s1, $v0, $t8
    /* 2C1938 802DF508 8E390020 */  lw         $t9, 0x20($s1)
    /* 2C193C 802DF50C 001953C0 */  sll        $t2, $t9, 15
    /* 2C1940 802DF510 0542011A */  bltzl      $t2, .L802DF97C_2C1DAC
    /* 2C1944 802DF514 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 2C1948 802DF518 860B0012 */  lh         $t3, 0x12($s0)
    /* 2C194C 802DF51C 00C02025 */  or         $a0, $a2, $zero
    /* 2C1950 802DF520 2405025D */  addiu      $a1, $zero, 0x25D
    /* 2C1954 802DF524 11600007 */  beqz       $t3, .L802DF544_2C1974
    /* 2C1958 802DF528 00000000 */   nop
    /* 2C195C 802DF52C 00C02025 */  or         $a0, $a2, $zero
    /* 2C1960 802DF530 2405025E */  addiu      $a1, $zero, 0x25E
    /* 2C1964 802DF534 0C04DD1A */  jal        func_80137468_146418
    /* 2C1968 802DF538 A3A60033 */   sb        $a2, 0x33($sp)
    /* 2C196C 802DF53C 10000004 */  b          .L802DF550_2C1980
    /* 2C1970 802DF540 93A40033 */   lbu       $a0, 0x33($sp)
  .L802DF544_2C1974:
    /* 2C1974 802DF544 0C04DD1A */  jal        func_80137468_146418
    /* 2C1978 802DF548 A3A60033 */   sb        $a2, 0x33($sp)
    /* 2C197C 802DF54C 93A40033 */  lbu        $a0, 0x33($sp)
  .L802DF550_2C1980:
    /* 2C1980 802DF550 0C02A4B8 */  jal        func_800A92E0_B8290
    /* 2C1984 802DF554 24057000 */   addiu     $a1, $zero, 0x7000
    /* 2C1988 802DF558 3C098014 */  lui        $t1, %hi(D_8013D8C0)
    /* 2C198C 802DF55C 2529D8C0 */  addiu      $t1, $t1, %lo(D_8013D8C0)
    /* 2C1990 802DF560 8D2C0000 */  lw         $t4, 0x0($t1)
    /* 2C1994 802DF564 24080005 */  addiu      $t0, $zero, 0x5
    /* 2C1998 802DF568 3C0D8014 */  lui        $t5, %hi(D_80140AC4)
    /* 2C199C 802DF56C 110C0011 */  beq        $t0, $t4, .L802DF5B4_2C19E4
    /* 2C19A0 802DF570 24062000 */   addiu     $a2, $zero, 0x2000
    /* 2C19A4 802DF574 8DAD0AC4 */  lw         $t5, %lo(D_80140AC4)($t5)
    /* 2C19A8 802DF578 3C01FFFB */  lui        $at, (0xFFFBFFFF >> 16)
    /* 2C19AC 802DF57C 3421FFFF */  ori        $at, $at, (0xFFFBFFFF & 0xFFFF)
    /* 2C19B0 802DF580 55A0000D */  bnel       $t5, $zero, .L802DF5B8_2C19E8
    /* 2C19B4 802DF584 860B000C */   lh        $t3, 0xC($s0)
    /* 2C19B8 802DF588 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 2C19BC 802DF58C 860A0006 */  lh         $t2, 0x6($s0)
    /* 2C19C0 802DF590 A6000012 */  sh         $zero, 0x12($s0)
    /* 2C19C4 802DF594 01C17824 */  and        $t7, $t6, $at
    /* 2C19C8 802DF598 3C010800 */  lui        $at, (0x8000140 >> 16)
    /* 2C19CC 802DF59C 34210140 */  ori        $at, $at, (0x8000140 & 0xFFFF)
    /* 2C19D0 802DF5A0 AE0F0020 */  sw         $t7, 0x20($s0)
    /* 2C19D4 802DF5A4 01E1C825 */  or         $t9, $t7, $at
    /* 2C19D8 802DF5A8 AE190020 */  sw         $t9, 0x20($s0)
    /* 2C19DC 802DF5AC AD280000 */  sw         $t0, 0x0($t1)
    /* 2C19E0 802DF5B0 A60A000E */  sh         $t2, 0xE($s0)
  .L802DF5B4_2C19E4:
    /* 2C19E4 802DF5B4 860B000C */  lh         $t3, 0xC($s0)
  .L802DF5B8_2C19E8:
    /* 2C19E8 802DF5B8 3C028015 */  lui        $v0, %hi(D_8014DD50)
    /* 2C19EC 802DF5BC 2442DD50 */  addiu      $v0, $v0, %lo(D_8014DD50)
    /* 2C19F0 802DF5C0 000B6100 */  sll        $t4, $t3, 4
    /* 2C19F4 802DF5C4 004C6821 */  addu       $t5, $v0, $t4
    /* 2C19F8 802DF5C8 81A7000C */  lb         $a3, 0xC($t5)
    /* 2C19FC 802DF5CC 00077100 */  sll        $t6, $a3, 4
    /* 2C1A00 802DF5D0 004E1821 */  addu       $v1, $v0, $t6
    /* 2C1A04 802DF5D4 8064000D */  lb         $a0, 0xD($v1)
    /* 2C1A08 802DF5D8 806F000C */  lb         $t7, 0xC($v1)
    /* 2C1A0C 802DF5DC 00046100 */  sll        $t4, $a0, 4
    /* 2C1A10 802DF5E0 004C6821 */  addu       $t5, $v0, $t4
    /* 2C1A14 802DF5E4 81A5000D */  lb         $a1, 0xD($t5)
    /* 2C1A18 802DF5E8 A7AF002A */  sh         $t7, 0x2A($sp)
    /* 2C1A1C 802DF5EC 87B8002A */  lh         $t8, 0x2A($sp)
    /* 2C1A20 802DF5F0 00057100 */  sll        $t6, $a1, 4
    /* 2C1A24 802DF5F4 004E7821 */  addu       $t7, $v0, $t6
    /* 2C1A28 802DF5F8 0018C900 */  sll        $t9, $t8, 4
    /* 2C1A2C 802DF5FC 81F8000D */  lb         $t8, 0xD($t7)
    /* 2C1A30 802DF600 00595021 */  addu       $t2, $v0, $t9
    /* 2C1A34 802DF604 814B000D */  lb         $t3, 0xD($t2)
    /* 2C1A38 802DF608 A7B80022 */  sh         $t8, 0x22($sp)
    /* 2C1A3C 802DF60C 87B90022 */  lh         $t9, 0x22($sp)
    /* 2C1A40 802DF610 A7AB0028 */  sh         $t3, 0x28($sp)
    /* 2C1A44 802DF614 00072C00 */  sll        $a1, $a3, 16
    /* 2C1A48 802DF618 00195100 */  sll        $t2, $t9, 4
    /* 2C1A4C 802DF61C 004A5821 */  addu       $t3, $v0, $t2
    /* 2C1A50 802DF620 816C000D */  lb         $t4, 0xD($t3)
    /* 2C1A54 802DF624 00057C03 */  sra        $t7, $a1, 16
    /* 2C1A58 802DF628 93A40033 */  lbu        $a0, 0x33($sp)
    /* 2C1A5C 802DF62C A7AC0020 */  sh         $t4, 0x20($sp)
    /* 2C1A60 802DF630 8E2D0020 */  lw         $t5, 0x20($s1)
    /* 2C1A64 802DF634 31AEA000 */  andi       $t6, $t5, 0xA000
    /* 2C1A68 802DF638 55C00007 */  bnel       $t6, $zero, .L802DF658_2C1A88
    /* 2C1A6C 802DF63C 8D380000 */   lw        $t8, 0x0($t1)
    /* 2C1A70 802DF640 0C02188C */  jal        func_80086230_951E0
    /* 2C1A74 802DF644 01E02825 */   or        $a1, $t7, $zero
    /* 2C1A78 802DF648 3C098014 */  lui        $t1, %hi(D_8013D8C0)
    /* 2C1A7C 802DF64C 2529D8C0 */  addiu      $t1, $t1, %lo(D_8013D8C0)
    /* 2C1A80 802DF650 24080005 */  addiu      $t0, $zero, 0x5
    /* 2C1A84 802DF654 8D380000 */  lw         $t8, 0x0($t1)
  .L802DF658_2C1A88:
    /* 2C1A88 802DF658 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 2C1A8C 802DF65C 15180005 */  bne        $t0, $t8, .L802DF674_2C1AA4
    /* 2C1A90 802DF660 00000000 */   nop
    /* 2C1A94 802DF664 0C0B7961 */  jal        func_802DE584_2C09B4
    /* 2C1A98 802DF668 93A40033 */   lbu       $a0, 0x33($sp)
    /* 2C1A9C 802DF66C 100000AA */  b          .L802DF918_2C1D48
    /* 2C1AA0 802DF670 93A40033 */   lbu       $a0, 0x33($sp)
  .L802DF674_2C1AA4:
    /* 2C1AA4 802DF674 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 2C1AA8 802DF678 0004C880 */  sll        $t9, $a0, 2
    /* 2C1AAC 802DF67C 0324C821 */  addu       $t9, $t9, $a0
    /* 2C1AB0 802DF680 0019C8C0 */  sll        $t9, $t9, 3
    /* 2C1AB4 802DF684 0324C823 */  subu       $t9, $t9, $a0
    /* 2C1AB8 802DF688 0019C900 */  sll        $t9, $t9, 4
    /* 2C1ABC 802DF68C 0324C821 */  addu       $t9, $t9, $a0
    /* 2C1AC0 802DF690 0019C900 */  sll        $t9, $t9, 4
    /* 2C1AC4 802DF694 0C007660 */  jal        sins
    /* 2C1AC8 802DF698 3324FFFF */   andi      $a0, $t9, 0xFFFF
    /* 2C1ACC 802DF69C 44822000 */  mtc1       $v0, $f4
    /* 2C1AD0 802DF6A0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2C1AD4 802DF6A4 44815800 */  mtc1       $at, $f11
    /* 2C1AD8 802DF6A8 468021A0 */  cvt.s.w    $f6, $f4
    /* 2C1ADC 802DF6AC 44805000 */  mtc1       $zero, $f10
    /* 2C1AE0 802DF6B0 3C014018 */  lui        $at, (0x40180000 >> 16)
    /* 2C1AE4 802DF6B4 44819800 */  mtc1       $at, $f19
    /* 2C1AE8 802DF6B8 44809000 */  mtc1       $zero, $f18
    /* 2C1AEC 802DF6BC 3C01802E */  lui        $at, %hi(D_802E3068)
    /* 2C1AF0 802DF6C0 46003221 */  cvt.d.s    $f8, $f6
    /* 2C1AF4 802DF6C4 D4263068 */  ldc1       $f6, %lo(D_802E3068)($at)
    /* 2C1AF8 802DF6C8 462A4403 */  div.d      $f16, $f8, $f10
    /* 2C1AFC 802DF6CC 3C018025 */  lui        $at, %hi(D_802571D0)
    /* 2C1B00 802DF6D0 46328102 */  mul.d      $f4, $f16, $f18
    /* 2C1B04 802DF6D4 46262200 */  add.d      $f8, $f4, $f6
    /* 2C1B08 802DF6D8 4620428D */  trunc.w.d  $f10, $f8
    /* 2C1B0C 802DF6DC 440C5000 */  mfc1       $t4, $f10
    /* 2C1B10 802DF6E0 0C000E38 */  jal        func_800038E0_44E0
    /* 2C1B14 802DF6E4 A42C71D0 */   sh        $t4, %lo(D_802571D0)($at)
    /* 2C1B18 802DF6E8 24010064 */  addiu      $at, $zero, 0x64
    /* 2C1B1C 802DF6EC 0041001A */  div        $zero, $v0, $at
    /* 2C1B20 802DF6F0 00006810 */  mfhi       $t5
    /* 2C1B24 802DF6F4 240C0A00 */  addiu      $t4, $zero, 0xA00
    /* 2C1B28 802DF6F8 55A0000E */  bnel       $t5, $zero, .L802DF734_2C1B64
    /* 2C1B2C 802DF6FC 8E2A0020 */   lw        $t2, 0x20($s1)
    /* 2C1B30 802DF700 8E220020 */  lw         $v0, 0x20($s1)
    /* 2C1B34 802DF704 304E8000 */  andi       $t6, $v0, 0x8000
    /* 2C1B38 802DF708 55C0000A */  bnel       $t6, $zero, .L802DF734_2C1B64
    /* 2C1B3C 802DF70C 8E2A0020 */   lw        $t2, 0x20($s1)
    /* 2C1B40 802DF710 820F003C */  lb         $t7, 0x3C($s0)
    /* 2C1B44 802DF714 34588000 */  ori        $t8, $v0, 0x8000
    /* 2C1B48 802DF718 241900C8 */  addiu      $t9, $zero, 0xC8
    /* 2C1B4C 802DF71C 29E1000C */  slti       $at, $t7, 0xC
    /* 2C1B50 802DF720 50200004 */  beql       $at, $zero, .L802DF734_2C1B64
    /* 2C1B54 802DF724 8E2A0020 */   lw        $t2, 0x20($s1)
    /* 2C1B58 802DF728 AE380020 */  sw         $t8, 0x20($s1)
    /* 2C1B5C 802DF72C A6190048 */  sh         $t9, 0x48($s0)
    /* 2C1B60 802DF730 8E2A0020 */  lw         $t2, 0x20($s1)
  .L802DF734_2C1B64:
    /* 2C1B64 802DF734 3C028025 */  lui        $v0, %hi(alienSpecs)
    /* 2C1B68 802DF738 24426680 */  addiu      $v0, $v0, %lo(alienSpecs)
    /* 2C1B6C 802DF73C 314B4000 */  andi       $t3, $t2, 0x4000
    /* 2C1B70 802DF740 11600026 */  beqz       $t3, .L802DF7DC_2C1C0C
    /* 2C1B74 802DF744 240D0400 */   addiu     $t5, $zero, 0x400
    /* 2C1B78 802DF748 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 2C1B7C 802DF74C A44C0B38 */  sh         $t4, 0xB38($v0)
    /* 2C1B80 802DF750 A44D0B36 */  sh         $t5, 0xB36($v0)
    /* 2C1B84 802DF754 35CF0010 */  ori        $t7, $t6, 0x10
    /* 2C1B88 802DF758 AE0F0020 */  sw         $t7, 0x20($s0)
    /* 2C1B8C 802DF75C 0C020193 */  jal        func_8008064C_8F5FC
    /* 2C1B90 802DF760 93A40033 */   lbu       $a0, 0x33($sp)
    /* 2C1B94 802DF764 8602002C */  lh         $v0, 0x2C($s0)
    /* 2C1B98 802DF768 93A40033 */  lbu        $a0, 0x33($sp)
    /* 2C1B9C 802DF76C 10400003 */  beqz       $v0, .L802DF77C_2C1BAC
    /* 2C1BA0 802DF770 2458FFFF */   addiu     $t8, $v0, -0x1
    /* 2C1BA4 802DF774 10000065 */  b          .L802DF90C_2C1D3C
    /* 2C1BA8 802DF778 A618002C */   sh        $t8, 0x2C($s0)
  .L802DF77C_2C1BAC:
    /* 2C1BAC 802DF77C 0C0213FA */  jal        func_80084FE8_93F98
    /* 2C1BB0 802DF780 24050800 */   addiu     $a1, $zero, 0x800
    /* 2C1BB4 802DF784 14400061 */  bnez       $v0, .L802DF90C_2C1D3C
    /* 2C1BB8 802DF788 2401BFFF */   addiu     $at, $zero, -0x4001
    /* 2C1BBC 802DF78C 8E390020 */  lw         $t9, 0x20($s1)
    /* 2C1BC0 802DF790 240B01C0 */  addiu      $t3, $zero, 0x1C0
    /* 2C1BC4 802DF794 240C0010 */  addiu      $t4, $zero, 0x10
    /* 2C1BC8 802DF798 03215024 */  and        $t2, $t9, $at
    /* 2C1BCC 802DF79C AE2A0020 */  sw         $t2, 0x20($s1)
    /* 2C1BD0 802DF7A0 3C018025 */  lui        $at, %hi(D_802571B8)
    /* 2C1BD4 802DF7A4 A42B71B8 */  sh         $t3, %lo(D_802571B8)($at)
    /* 2C1BD8 802DF7A8 3C018025 */  lui        $at, %hi(D_802571B6)
    /* 2C1BDC 802DF7AC A42C71B6 */  sh         $t4, %lo(D_802571B6)($at)
    /* 2C1BE0 802DF7B0 8E0D0020 */  lw         $t5, 0x20($s0)
    /* 2C1BE4 802DF7B4 2401FFEF */  addiu      $at, $zero, -0x11
    /* 2C1BE8 802DF7B8 01A17024 */  and        $t6, $t5, $at
    /* 2C1BEC 802DF7BC 0C000E38 */  jal        func_800038E0_44E0
    /* 2C1BF0 802DF7C0 AE0E0020 */   sw        $t6, 0x20($s0)
    /* 2C1BF4 802DF7C4 24010064 */  addiu      $at, $zero, 0x64
    /* 2C1BF8 802DF7C8 0041001A */  div        $zero, $v0, $at
    /* 2C1BFC 802DF7CC 00007810 */  mfhi       $t7
    /* 2C1C00 802DF7D0 25F80032 */  addiu      $t8, $t7, 0x32
    /* 2C1C04 802DF7D4 1000004D */  b          .L802DF90C_2C1D3C
    /* 2C1C08 802DF7D8 A618002C */   sh        $t8, 0x2C($s0)
  .L802DF7DC_2C1C0C:
    /* 2C1C0C 802DF7DC 8E190020 */  lw         $t9, 0x20($s0)
    /* 2C1C10 802DF7E0 24016000 */  addiu      $at, $zero, 0x6000
    /* 2C1C14 802DF7E4 2405012C */  addiu      $a1, $zero, 0x12C
    /* 2C1C18 802DF7E8 332A6000 */  andi       $t2, $t9, 0x6000
    /* 2C1C1C 802DF7EC 1141001B */  beq        $t2, $at, .L802DF85C_2C1C8C
    /* 2C1C20 802DF7F0 241900FA */   addiu     $t9, $zero, 0xFA
    /* 2C1C24 802DF7F4 93A40033 */  lbu        $a0, 0x33($sp)
    /* 2C1C28 802DF7F8 240504B0 */  addiu      $a1, $zero, 0x4B0
    /* 2C1C2C 802DF7FC 0C021D47 */  jal        func_8008751C_964CC
    /* 2C1C30 802DF800 240605DC */   addiu     $a2, $zero, 0x5DC
    /* 2C1C34 802DF804 93A40033 */  lbu        $a0, 0x33($sp)
    /* 2C1C38 802DF808 0C0213FA */  jal        func_80084FE8_93F98
    /* 2C1C3C 802DF80C 24050800 */   addiu     $a1, $zero, 0x800
    /* 2C1C40 802DF810 1040003E */  beqz       $v0, .L802DF90C_2C1D3C
    /* 2C1C44 802DF814 00000000 */   nop
    /* 2C1C48 802DF818 0C000E38 */  jal        func_800038E0_44E0
    /* 2C1C4C 802DF81C 00000000 */   nop
    /* 2C1C50 802DF820 2401012C */  addiu      $at, $zero, 0x12C
    /* 2C1C54 802DF824 0041001A */  div        $zero, $v0, $at
    /* 2C1C58 802DF828 00005810 */  mfhi       $t3
    /* 2C1C5C 802DF82C 15600037 */  bnez       $t3, .L802DF90C_2C1D3C
    /* 2C1C60 802DF830 00000000 */   nop
    /* 2C1C64 802DF834 8E0C0020 */  lw         $t4, 0x20($s0)
    /* 2C1C68 802DF838 318D8000 */  andi       $t5, $t4, 0x8000
    /* 2C1C6C 802DF83C 15A00033 */  bnez       $t5, .L802DF90C_2C1D3C
    /* 2C1C70 802DF840 00000000 */   nop
    /* 2C1C74 802DF844 8E2E0020 */  lw         $t6, 0x20($s1)
    /* 2C1C78 802DF848 24180028 */  addiu      $t8, $zero, 0x28
    /* 2C1C7C 802DF84C 35CF4000 */  ori        $t7, $t6, 0x4000
    /* 2C1C80 802DF850 AE2F0020 */  sw         $t7, 0x20($s1)
    /* 2C1C84 802DF854 1000002D */  b          .L802DF90C_2C1D3C
    /* 2C1C88 802DF858 A618002C */   sh        $t8, 0x2C($s0)
  .L802DF85C_2C1C8C:
    /* 2C1C8C 802DF85C 3C018025 */  lui        $at, %hi(D_802571BA)
    /* 2C1C90 802DF860 A43971BA */  sh         $t9, %lo(D_802571BA)($at)
    /* 2C1C94 802DF864 93A40033 */  lbu        $a0, 0x33($sp)
    /* 2C1C98 802DF868 0C021D47 */  jal        func_8008751C_964CC
    /* 2C1C9C 802DF86C 240601F4 */   addiu     $a2, $zero, 0x1F4
    /* 2C1CA0 802DF870 93A40033 */  lbu        $a0, 0x33($sp)
    /* 2C1CA4 802DF874 0C0213FA */  jal        func_80084FE8_93F98
    /* 2C1CA8 802DF878 24050800 */   addiu     $a1, $zero, 0x800
    /* 2C1CAC 802DF87C 5040000E */  beql       $v0, $zero, .L802DF8B8_2C1CE8
    /* 2C1CB0 802DF880 8602002C */   lh        $v0, 0x2C($s0)
    /* 2C1CB4 802DF884 0C000E38 */  jal        func_800038E0_44E0
    /* 2C1CB8 802DF888 00000000 */   nop
    /* 2C1CBC 802DF88C 240100C8 */  addiu      $at, $zero, 0xC8
    /* 2C1CC0 802DF890 0041001A */  div        $zero, $v0, $at
    /* 2C1CC4 802DF894 00005010 */  mfhi       $t2
    /* 2C1CC8 802DF898 55400007 */  bnel       $t2, $zero, .L802DF8B8_2C1CE8
    /* 2C1CCC 802DF89C 8602002C */   lh        $v0, 0x2C($s0)
    /* 2C1CD0 802DF8A0 8E2B0020 */  lw         $t3, 0x20($s1)
    /* 2C1CD4 802DF8A4 240D0028 */  addiu      $t5, $zero, 0x28
    /* 2C1CD8 802DF8A8 356C4000 */  ori        $t4, $t3, 0x4000
    /* 2C1CDC 802DF8AC AE2C0020 */  sw         $t4, 0x20($s1)
    /* 2C1CE0 802DF8B0 A60D002C */  sh         $t5, 0x2C($s0)
    /* 2C1CE4 802DF8B4 8602002C */  lh         $v0, 0x2C($s0)
  .L802DF8B8_2C1CE8:
    /* 2C1CE8 802DF8B8 93A40033 */  lbu        $a0, 0x33($sp)
    /* 2C1CEC 802DF8BC 10400003 */  beqz       $v0, .L802DF8CC_2C1CFC
    /* 2C1CF0 802DF8C0 244EFFFF */   addiu     $t6, $v0, -0x1
    /* 2C1CF4 802DF8C4 10000011 */  b          .L802DF90C_2C1D3C
    /* 2C1CF8 802DF8C8 A60E002C */   sh        $t6, 0x2C($s0)
  .L802DF8CC_2C1CFC:
    /* 2C1CFC 802DF8CC 0C0213FA */  jal        func_80084FE8_93F98
    /* 2C1D00 802DF8D0 24050800 */   addiu     $a1, $zero, 0x800
    /* 2C1D04 802DF8D4 1040000D */  beqz       $v0, .L802DF90C_2C1D3C
    /* 2C1D08 802DF8D8 00000000 */   nop
    /* 2C1D0C 802DF8DC 0C000E38 */  jal        func_800038E0_44E0
    /* 2C1D10 802DF8E0 00000000 */   nop
    /* 2C1D14 802DF8E4 24010032 */  addiu      $at, $zero, 0x32
    /* 2C1D18 802DF8E8 0041001A */  div        $zero, $v0, $at
    /* 2C1D1C 802DF8EC 00007810 */  mfhi       $t7
    /* 2C1D20 802DF8F0 15E00006 */  bnez       $t7, .L802DF90C_2C1D3C
    /* 2C1D24 802DF8F4 00000000 */   nop
    /* 2C1D28 802DF8F8 8E380020 */  lw         $t8, 0x20($s1)
    /* 2C1D2C 802DF8FC 240A0028 */  addiu      $t2, $zero, 0x28
    /* 2C1D30 802DF900 37194000 */  ori        $t9, $t8, 0x4000
    /* 2C1D34 802DF904 AE390020 */  sw         $t9, 0x20($s1)
    /* 2C1D38 802DF908 A60A002C */  sh         $t2, 0x2C($s0)
  .L802DF90C_2C1D3C:
    /* 2C1D3C 802DF90C 0C0B7BED */  jal        func_802DEFB4_2C13E4
    /* 2C1D40 802DF910 93A40033 */   lbu       $a0, 0x33($sp)
    /* 2C1D44 802DF914 93A40033 */  lbu        $a0, 0x33($sp)
  .L802DF918_2C1D48:
    /* 2C1D48 802DF918 87A50020 */  lh         $a1, 0x20($sp)
    /* 2C1D4C 802DF91C 0C023B97 */  jal        func_8008EE5C_9DE0C
    /* 2C1D50 802DF920 87A60022 */   lh        $a2, 0x22($sp)
    /* 2C1D54 802DF924 0C020797 */  jal        func_80081E5C_90E0C
    /* 2C1D58 802DF928 87A4002A */   lh        $a0, 0x2A($sp)
    /* 2C1D5C 802DF92C 0C020797 */  jal        func_80081E5C_90E0C
    /* 2C1D60 802DF930 87A40028 */   lh        $a0, 0x28($sp)
    /* 2C1D64 802DF934 0C02A7CD */  jal        func_800A9F34_B8EE4
    /* 2C1D68 802DF938 93A40033 */   lbu       $a0, 0x33($sp)
    /* 2C1D6C 802DF93C 1040000E */  beqz       $v0, .L802DF978_2C1DA8
    /* 2C1D70 802DF940 2401FFEF */   addiu     $at, $zero, -0x11
    /* 2C1D74 802DF944 8E0B0020 */  lw         $t3, 0x20($s0)
    /* 2C1D78 802DF948 3C028025 */  lui        $v0, %hi(alienSpecs)
    /* 2C1D7C 802DF94C 24426680 */  addiu      $v0, $v0, %lo(alienSpecs)
    /* 2C1D80 802DF950 01616024 */  and        $t4, $t3, $at
    /* 2C1D84 802DF954 AE0C0020 */  sw         $t4, 0x20($s0)
    /* 2C1D88 802DF958 8E2D0020 */  lw         $t5, 0x20($s1)
    /* 2C1D8C 802DF95C 2401BFFF */  addiu      $at, $zero, -0x4001
    /* 2C1D90 802DF960 240F01C0 */  addiu      $t7, $zero, 0x1C0
    /* 2C1D94 802DF964 01A17024 */  and        $t6, $t5, $at
    /* 2C1D98 802DF968 AE2E0020 */  sw         $t6, 0x20($s1)
    /* 2C1D9C 802DF96C 24180010 */  addiu      $t8, $zero, 0x10
    /* 2C1DA0 802DF970 A44F0B38 */  sh         $t7, 0xB38($v0)
    /* 2C1DA4 802DF974 A4580B36 */  sh         $t8, 0xB36($v0)
  .L802DF978_2C1DA8:
    /* 2C1DA8 802DF978 8FBF001C */  lw         $ra, 0x1C($sp)
  .L802DF97C_2C1DAC:
    /* 2C1DAC 802DF97C 8FB00014 */  lw         $s0, 0x14($sp)
    /* 2C1DB0 802DF980 8FB10018 */  lw         $s1, 0x18($sp)
    /* 2C1DB4 802DF984 03E00008 */  jr         $ra
    /* 2C1DB8 802DF988 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_802DF4C8_2C18F8
