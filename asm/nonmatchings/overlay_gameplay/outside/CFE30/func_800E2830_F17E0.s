nonmatching func_800E2830_F17E0, 0x584

glabel func_800E2830_F17E0
    /* F17E0 800E2830 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* F17E4 800E2834 3C028014 */  lui        $v0, %hi(D_8013E408)
    /* F17E8 800E2838 9042E408 */  lbu        $v0, %lo(D_8013E408)($v0)
    /* F17EC 800E283C 24010005 */  addiu      $at, $zero, 0x5
    /* F17F0 800E2840 AFBF0044 */  sw         $ra, 0x44($sp)
    /* F17F4 800E2844 AFBE0040 */  sw         $fp, 0x40($sp)
    /* F17F8 800E2848 AFB7003C */  sw         $s7, 0x3C($sp)
    /* F17FC 800E284C AFB60038 */  sw         $s6, 0x38($sp)
    /* F1800 800E2850 AFB50034 */  sw         $s5, 0x34($sp)
    /* F1804 800E2854 AFB40030 */  sw         $s4, 0x30($sp)
    /* F1808 800E2858 AFB3002C */  sw         $s3, 0x2C($sp)
    /* F180C 800E285C AFB20028 */  sw         $s2, 0x28($sp)
    /* F1810 800E2860 AFB10024 */  sw         $s1, 0x24($sp)
    /* F1814 800E2864 AFB00020 */  sw         $s0, 0x20($sp)
    /* F1818 800E2868 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* F181C 800E286C 14410012 */  bne        $v0, $at, .L800E28B8_F1868
    /* F1820 800E2870 A7A0004E */   sh        $zero, 0x4E($sp)
    /* F1824 800E2874 3C058015 */  lui        $a1, %hi(D_80154300)
    /* F1828 800E2878 3C0E8015 */  lui        $t6, %hi(D_80154308)
    /* F182C 800E287C 8DCE4308 */  lw         $t6, %lo(D_80154308)($t6)
    /* F1830 800E2880 8CA54300 */  lw         $a1, %lo(D_80154300)($a1)
    /* F1834 800E2884 00AE082A */  slt        $at, $a1, $t6
    /* F1838 800E2888 10200008 */  beqz       $at, .L800E28AC_F185C
    /* F183C 800E288C 00000000 */   nop
    /* F1840 800E2890 0C0389D4 */  jal        func_800E2750_F1700
    /* F1844 800E2894 30A400FF */   andi      $a0, $a1, 0xFF
    /* F1848 800E2898 3C028015 */  lui        $v0, %hi(D_80154300)
    /* F184C 800E289C 24424300 */  addiu      $v0, $v0, %lo(D_80154300)
    /* F1850 800E28A0 8C4F0000 */  lw         $t7, 0x0($v0)
    /* F1854 800E28A4 25F80001 */  addiu      $t8, $t7, 0x1
    /* F1858 800E28A8 AC580000 */  sw         $t8, 0x0($v0)
  .L800E28AC_F185C:
    /* F185C 800E28AC 3C018014 */  lui        $at, %hi(D_8013E408)
    /* F1860 800E28B0 10000004 */  b          .L800E28C4_F1874
    /* F1864 800E28B4 A020E408 */   sb        $zero, %lo(D_8013E408)($at)
  .L800E28B8_F1868:
    /* F1868 800E28B8 24590001 */  addiu      $t9, $v0, 0x1
    /* F186C 800E28BC 3C018014 */  lui        $at, %hi(D_8013E408)
    /* F1870 800E28C0 A039E408 */  sb         $t9, %lo(D_8013E408)($at)
  .L800E28C4_F1874:
    /* F1874 800E28C4 3C028015 */  lui        $v0, %hi(D_80153B90)
    /* F1878 800E28C8 24423B90 */  addiu      $v0, $v0, %lo(D_80153B90)
    /* F187C 800E28CC C44C0008 */  lwc1       $f12, 0x8($v0)
    /* F1880 800E28D0 0C000E09 */  jal        func_80003824_4424
    /* F1884 800E28D4 C44E0000 */   lwc1      $f14, 0x0($v0)
    /* F1888 800E28D8 3C068015 */  lui        $a2, %hi(D_80154080)
    /* F188C 800E28DC 24C64080 */  addiu      $a2, $a2, %lo(D_80154080)
    /* F1890 800E28E0 04410003 */  bgez       $v0, .L800E28F0_F18A0
    /* F1894 800E28E4 000242C3 */   sra       $t0, $v0, 11
    /* F1898 800E28E8 244107FF */  addiu      $at, $v0, 0x7FF
    /* F189C 800E28EC 000142C3 */  sra        $t0, $at, 11
  .L800E28F0_F18A0:
    /* F18A0 800E28F0 A0C80000 */  sb         $t0, 0x0($a2)
    /* F18A4 800E28F4 80C30000 */  lb         $v1, 0x0($a2)
    /* F18A8 800E28F8 3C048015 */  lui        $a0, %hi(D_801541F0)
    /* F18AC 800E28FC 248441F0 */  addiu      $a0, $a0, %lo(D_801541F0)
    /* F18B0 800E2900 28610008 */  slti       $at, $v1, 0x8
    /* F18B4 800E2904 14200007 */  bnez       $at, .L800E2924_F18D4
    /* F18B8 800E2908 3C058015 */   lui       $a1, %hi(D_80154082)
    /* F18BC 800E290C 28610010 */  slti       $at, $v1, 0x10
    /* F18C0 800E2910 10200004 */  beqz       $at, .L800E2924_F18D4
    /* F18C4 800E2914 2409000F */   addiu     $t1, $zero, 0xF
    /* F18C8 800E2918 01235023 */  subu       $t2, $t1, $v1
    /* F18CC 800E291C 1000000F */  b          .L800E295C_F190C
    /* F18D0 800E2920 A0CA0000 */   sb        $t2, 0x0($a2)
  .L800E2924_F18D4:
    /* F18D4 800E2924 2861FFF9 */  slti       $at, $v1, -0x7
    /* F18D8 800E2928 10200006 */  beqz       $at, .L800E2944_F18F4
    /* F18DC 800E292C 2861FFF1 */   slti      $at, $v1, -0xF
    /* F18E0 800E2930 14200004 */  bnez       $at, .L800E2944_F18F4
    /* F18E4 800E2934 240BFFF1 */   addiu     $t3, $zero, -0xF
    /* F18E8 800E2938 01636023 */  subu       $t4, $t3, $v1
    /* F18EC 800E293C 10000007 */  b          .L800E295C_F190C
    /* F18F0 800E2940 A0CC0000 */   sb        $t4, 0x0($a2)
  .L800E2944_F18F4:
    /* F18F4 800E2944 24010010 */  addiu      $at, $zero, 0x10
    /* F18F8 800E2948 10610003 */  beq        $v1, $at, .L800E2958_F1908
    /* F18FC 800E294C 2401FFF0 */   addiu     $at, $zero, -0x10
    /* F1900 800E2950 14610002 */  bne        $v1, $at, .L800E295C_F190C
    /* F1904 800E2954 00000000 */   nop
  .L800E2958_F1908:
    /* F1908 800E2958 A0C00000 */  sb         $zero, 0x0($a2)
  .L800E295C_F190C:
    /* F190C 800E295C 24A54082 */  addiu      $a1, $a1, %lo(D_80154082)
    /* F1910 800E2960 90A30000 */  lbu        $v1, 0x0($a1)
    /* F1914 800E2964 90820000 */  lbu        $v0, 0x0($a0)
    /* F1918 800E2968 241E004B */  addiu      $fp, $zero, 0x4B
    /* F191C 800E296C 24170064 */  addiu      $s7, $zero, 0x64
    /* F1920 800E2970 0062082A */  slt        $at, $v1, $v0
    /* F1924 800E2974 10200006 */  beqz       $at, .L800E2990_F1940
    /* F1928 800E2978 24160002 */   addiu     $s6, $zero, 0x2
    /* F192C 800E297C 28410003 */  slti       $at, $v0, 0x3
    /* F1930 800E2980 14200003 */  bnez       $at, .L800E2990_F1940
    /* F1934 800E2984 244DFFFD */   addiu     $t5, $v0, -0x3
    /* F1938 800E2988 10000007 */  b          .L800E29A8_F1958
    /* F193C 800E298C A08D0000 */   sb        $t5, 0x0($a0)
  .L800E2990_F1940:
    /* F1940 800E2990 0043082A */  slt        $at, $v0, $v1
    /* F1944 800E2994 10200004 */  beqz       $at, .L800E29A8_F1958
    /* F1948 800E2998 284100FD */   slti      $at, $v0, 0xFD
    /* F194C 800E299C 10200002 */  beqz       $at, .L800E29A8_F1958
    /* F1950 800E29A0 244E0003 */   addiu     $t6, $v0, 0x3
    /* F1954 800E29A4 A08E0000 */  sb         $t6, 0x0($a0)
  .L800E29A8_F1958:
    /* F1958 800E29A8 90A30001 */  lbu        $v1, 0x1($a1)
    /* F195C 800E29AC 90820001 */  lbu        $v0, 0x1($a0)
    /* F1960 800E29B0 3C148015 */  lui        $s4, %hi(D_80153BD0)
    /* F1964 800E29B4 26943BD0 */  addiu      $s4, $s4, %lo(D_80153BD0)
    /* F1968 800E29B8 0062082A */  slt        $at, $v1, $v0
    /* F196C 800E29BC 10200006 */  beqz       $at, .L800E29D8_F1988
    /* F1970 800E29C0 24150006 */   addiu     $s5, $zero, 0x6
    /* F1974 800E29C4 28410003 */  slti       $at, $v0, 0x3
    /* F1978 800E29C8 14200003 */  bnez       $at, .L800E29D8_F1988
    /* F197C 800E29CC 244FFFFD */   addiu     $t7, $v0, -0x3
    /* F1980 800E29D0 10000007 */  b          .L800E29F0_F19A0
    /* F1984 800E29D4 A08F0001 */   sb        $t7, 0x1($a0)
  .L800E29D8_F1988:
    /* F1988 800E29D8 0043082A */  slt        $at, $v0, $v1
    /* F198C 800E29DC 10200004 */  beqz       $at, .L800E29F0_F19A0
    /* F1990 800E29E0 284100FD */   slti      $at, $v0, 0xFD
    /* F1994 800E29E4 10200002 */  beqz       $at, .L800E29F0_F19A0
    /* F1998 800E29E8 24580003 */   addiu     $t8, $v0, 0x3
    /* F199C 800E29EC A0980001 */  sb         $t8, 0x1($a0)
  .L800E29F0_F19A0:
    /* F19A0 800E29F0 90A30002 */  lbu        $v1, 0x2($a1)
    /* F19A4 800E29F4 90820002 */  lbu        $v0, 0x2($a0)
    /* F19A8 800E29F8 3C138004 */  lui        $s3, %hi(currentLevel)
    /* F19AC 800E29FC 26737F90 */  addiu      $s3, $s3, %lo(currentLevel)
    /* F19B0 800E2A00 0062082A */  slt        $at, $v1, $v0
    /* F19B4 800E2A04 10200006 */  beqz       $at, .L800E2A20_F19D0
    /* F19B8 800E2A08 3C058015 */   lui       $a1, %hi(D_80154300)
    /* F19BC 800E2A0C 28410003 */  slti       $at, $v0, 0x3
    /* F19C0 800E2A10 14200003 */  bnez       $at, .L800E2A20_F19D0
    /* F19C4 800E2A14 2459FFFD */   addiu     $t9, $v0, -0x3
    /* F19C8 800E2A18 10000007 */  b          .L800E2A38_F19E8
    /* F19CC 800E2A1C A0990002 */   sb        $t9, 0x2($a0)
  .L800E2A20_F19D0:
    /* F19D0 800E2A20 0043082A */  slt        $at, $v0, $v1
    /* F19D4 800E2A24 10200004 */  beqz       $at, .L800E2A38_F19E8
    /* F19D8 800E2A28 284100FD */   slti      $at, $v0, 0xFD
    /* F19DC 800E2A2C 10200002 */  beqz       $at, .L800E2A38_F19E8
    /* F19E0 800E2A30 24480003 */   addiu     $t0, $v0, 0x3
    /* F19E4 800E2A34 A0880002 */  sb         $t0, 0x2($a0)
  .L800E2A38_F19E8:
    /* F19E8 800E2A38 8CA54300 */  lw         $a1, %lo(D_80154300)($a1)
    /* F19EC 800E2A3C 00008825 */  or         $s1, $zero, $zero
    /* F19F0 800E2A40 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* F19F4 800E2A44 58A000CF */  blezl      $a1, .L800E2D84_F1D34
    /* F19F8 800E2A48 8FBF0044 */   lw        $ra, 0x44($sp)
    /* F19FC 800E2A4C 4481A800 */  mtc1       $at, $f21
    /* F1A00 800E2A50 4480A000 */  mtc1       $zero, $f20
    /* F1A04 800E2A54 24120004 */  addiu      $s2, $zero, 0x4
  .L800E2A58_F1A08:
    /* F1A08 800E2A58 8E690000 */  lw         $t1, 0x0($s3)
    /* F1A0C 800E2A5C 3C0A8005 */  lui        $t2, %hi(D_80052A8C)
    /* F1A10 800E2A60 1649002B */  bne        $s2, $t1, .L800E2B10_F1AC0
    /* F1A14 800E2A64 00000000 */   nop
    /* F1A18 800E2A68 8D4A2A8C */  lw         $t2, %lo(D_80052A8C)($t2)
    /* F1A1C 800E2A6C 022A5821 */  addu       $t3, $s1, $t2
    /* F1A20 800E2A70 000B62C0 */  sll        $t4, $t3, 11
    /* F1A24 800E2A74 0C007660 */  jal        sins
    /* F1A28 800E2A78 3184FFFF */   andi      $a0, $t4, 0xFFFF
    /* F1A2C 800E2A7C 02350019 */  multu      $s1, $s5
    /* F1A30 800E2A80 3C058015 */  lui        $a1, %hi(D_80154300)
    /* F1A34 800E2A84 8CA54300 */  lw         $a1, %lo(D_80154300)($a1)
    /* F1A38 800E2A88 24010005 */  addiu      $at, $zero, 0x5
    /* F1A3C 800E2A8C 44822000 */  mtc1       $v0, $f4
    /* F1A40 800E2A90 3C198015 */  lui        $t9, %hi(D_80154080)
    /* F1A44 800E2A94 83394080 */  lb         $t9, %lo(D_80154080)($t9)
    /* F1A48 800E2A98 468021A0 */  cvt.s.w    $f6, $f4
    /* F1A4C 800E2A9C 3C068007 */  lui        $a2, %hi(D_80068088)
    /* F1A50 800E2AA0 8CC68088 */  lw         $a2, %lo(D_80068088)($a2)
    /* F1A54 800E2AA4 00007012 */  mflo       $t6
    /* F1A58 800E2AA8 028E8021 */  addu       $s0, $s4, $t6
    /* F1A5C 800E2AAC 96030004 */  lhu        $v1, 0x4($s0)
    /* F1A60 800E2AB0 00A1001A */  div        $zero, $a1, $at
    /* F1A64 800E2AB4 46003221 */  cvt.d.s    $f8, $f6
    /* F1A68 800E2AB8 00007812 */  mflo       $t7
    /* F1A6C 800E2ABC 46344283 */  div.d      $f10, $f8, $f20
    /* F1A70 800E2AC0 25F80010 */  addiu      $t8, $t7, 0x10
    /* F1A74 800E2AC4 03230019 */  multu      $t9, $v1
    /* F1A78 800E2AC8 44988000 */  mtc1       $t8, $f16
    /* F1A7C 800E2ACC 00067100 */  sll        $t6, $a2, 4
    /* F1A80 800E2AD0 01C03025 */  or         $a2, $t6, $zero
    /* F1A84 800E2AD4 468084A1 */  cvt.d.w    $f18, $f16
    /* F1A88 800E2AD8 00004012 */  mflo       $t0
    /* F1A8C 800E2ADC 00084840 */  sll        $t1, $t0, 1
    /* F1A90 800E2AE0 00095103 */  sra        $t2, $t1, 4
    /* F1A94 800E2AE4 448A3000 */  mtc1       $t2, $f6
    /* F1A98 800E2AE8 00000000 */  nop
    /* F1A9C 800E2AEC 46803221 */  cvt.d.w    $f8, $f6
    /* F1AA0 800E2AF0 46325102 */  mul.d      $f4, $f10, $f18
    /* F1AA4 800E2AF4 46282400 */  add.d      $f16, $f4, $f8
    /* F1AA8 800E2AF8 4620828D */  trunc.w.d  $f10, $f16
    /* F1AAC 800E2AFC 44045000 */  mfc1       $a0, $f10
    /* F1AB0 800E2B00 00000000 */  nop
    /* F1AB4 800E2B04 00046400 */  sll        $t4, $a0, 16
    /* F1AB8 800E2B08 10000011 */  b          .L800E2B50_F1B00
    /* F1ABC 800E2B0C 000C2403 */   sra       $a0, $t4, 16
  .L800E2B10_F1AC0:
    /* F1AC0 800E2B10 02350019 */  multu      $s1, $s5
    /* F1AC4 800E2B14 3C188015 */  lui        $t8, %hi(D_80154080)
    /* F1AC8 800E2B18 83184080 */  lb         $t8, %lo(D_80154080)($t8)
    /* F1ACC 800E2B1C 3C068007 */  lui        $a2, %hi(D_80068088)
    /* F1AD0 800E2B20 8CC68088 */  lw         $a2, %lo(D_80068088)($a2)
    /* F1AD4 800E2B24 00065900 */  sll        $t3, $a2, 4
    /* F1AD8 800E2B28 01603025 */  or         $a2, $t3, $zero
    /* F1ADC 800E2B2C 00007812 */  mflo       $t7
    /* F1AE0 800E2B30 028F8021 */  addu       $s0, $s4, $t7
    /* F1AE4 800E2B34 96030004 */  lhu        $v1, 0x4($s0)
    /* F1AE8 800E2B38 00780019 */  multu      $v1, $t8
    /* F1AEC 800E2B3C 00002012 */  mflo       $a0
    /* F1AF0 800E2B40 0004C840 */  sll        $t9, $a0, 1
    /* F1AF4 800E2B44 00194103 */  sra        $t0, $t9, 4
    /* F1AF8 800E2B48 00084C00 */  sll        $t1, $t0, 16
    /* F1AFC 800E2B4C 00092403 */  sra        $a0, $t1, 16
  .L800E2B50_F1B00:
    /* F1B00 800E2B50 860F0002 */  lh         $t7, 0x2($s0)
    /* F1B04 800E2B54 860D0000 */  lh         $t5, 0x0($s0)
    /* F1B08 800E2B58 3C088015 */  lui        $t0, %hi(D_80154308)
    /* F1B0C 800E2B5C 01E3C021 */  addu       $t8, $t7, $v1
    /* F1B10 800E2B60 A6180002 */  sh         $t8, 0x2($s0)
    /* F1B14 800E2B64 86190002 */  lh         $t9, 0x2($s0)
    /* F1B18 800E2B68 01A47021 */  addu       $t6, $t5, $a0
    /* F1B1C 800E2B6C A60E0000 */  sh         $t6, 0x0($s0)
    /* F1B20 800E2B70 00D9082A */  slt        $at, $a2, $t9
    /* F1B24 800E2B74 10200022 */  beqz       $at, .L800E2C00_F1BB0
    /* F1B28 800E2B78 3C038007 */   lui       $v1, %hi(D_80068084)
    /* F1B2C 800E2B7C 8D084308 */  lw         $t0, %lo(D_80154308)($t0)
    /* F1B30 800E2B80 87A9004E */  lh         $t1, 0x4E($sp)
    /* F1B34 800E2B84 0105082A */  slt        $at, $t0, $a1
    /* F1B38 800E2B88 10200018 */  beqz       $at, .L800E2BEC_F1B9C
    /* F1B3C 800E2B8C 00000000 */   nop
    /* F1B40 800E2B90 15200016 */  bnez       $t1, .L800E2BEC_F1B9C
    /* F1B44 800E2B94 24ABFFFF */   addiu     $t3, $a1, -0x1
    /* F1B48 800E2B98 3C018015 */  lui        $at, %hi(D_80154300)
    /* F1B4C 800E2B9C AC2B4300 */  sw         $t3, %lo(D_80154300)($at)
    /* F1B50 800E2BA0 3C058015 */  lui        $a1, %hi(D_80154300)
    /* F1B54 800E2BA4 8CA54300 */  lw         $a1, %lo(D_80154300)($a1)
    /* F1B58 800E2BA8 240A0001 */  addiu      $t2, $zero, 0x1
    /* F1B5C 800E2BAC A7AA004E */  sh         $t2, 0x4E($sp)
    /* F1B60 800E2BB0 10B1006E */  beq        $a1, $s1, .L800E2D6C_F1D1C
    /* F1B64 800E2BB4 00056080 */   sll       $t4, $a1, 2
    /* F1B68 800E2BB8 01856023 */  subu       $t4, $t4, $a1
    /* F1B6C 800E2BBC 000C6040 */  sll        $t4, $t4, 1
    /* F1B70 800E2BC0 028C6821 */  addu       $t5, $s4, $t4
    /* F1B74 800E2BC4 89A10000 */  lwl        $at, 0x0($t5)
    /* F1B78 800E2BC8 99A10003 */  lwr        $at, 0x3($t5)
    /* F1B7C 800E2BCC 2631FFFF */  addiu      $s1, $s1, -0x1
    /* F1B80 800E2BD0 323800FF */  andi       $t8, $s1, 0xFF
    /* F1B84 800E2BD4 AA010000 */  swl        $at, 0x0($s0)
    /* F1B88 800E2BD8 BA010003 */  swr        $at, 0x3($s0)
    /* F1B8C 800E2BDC 95A10004 */  lhu        $at, 0x4($t5)
    /* F1B90 800E2BE0 03008825 */  or         $s1, $t8, $zero
    /* F1B94 800E2BE4 10000061 */  b          .L800E2D6C_F1D1C
    /* F1B98 800E2BE8 A6010004 */   sh        $at, 0x4($s0)
  .L800E2BEC_F1B9C:
    /* F1B9C 800E2BEC 0C0389D4 */  jal        func_800E2750_F1700
    /* F1BA0 800E2BF0 322400FF */   andi      $a0, $s1, 0xFF
    /* F1BA4 800E2BF4 3C058015 */  lui        $a1, %hi(D_80154300)
    /* F1BA8 800E2BF8 1000005C */  b          .L800E2D6C_F1D1C
    /* F1BAC 800E2BFC 8CA54300 */   lw        $a1, %lo(D_80154300)($a1)
  .L800E2C00_F1BB0:
    /* F1BB0 800E2C00 8C638084 */  lw         $v1, %lo(D_80068084)($v1)
    /* F1BB4 800E2C04 86020000 */  lh         $v0, 0x0($s0)
    /* F1BB8 800E2C08 0003C900 */  sll        $t9, $v1, 4
    /* F1BBC 800E2C0C 0322082A */  slt        $at, $t9, $v0
    /* F1BC0 800E2C10 1020002B */  beqz       $at, .L800E2CC0_F1C70
    /* F1BC4 800E2C14 03201825 */   or        $v1, $t9, $zero
    /* F1BC8 800E2C18 8E620000 */  lw         $v0, 0x0($s3)
    /* F1BCC 800E2C1C A6000000 */  sh         $zero, 0x0($s0)
    /* F1BD0 800E2C20 16C20013 */  bne        $s6, $v0, .L800E2C70_F1C20
    /* F1BD4 800E2C24 00000000 */   nop
    /* F1BD8 800E2C28 0C000E38 */  jal        func_800038E0_44E0
    /* F1BDC 800E2C2C 00000000 */   nop
    /* F1BE0 800E2C30 0057001A */  div        $zero, $v0, $s7
    /* F1BE4 800E2C34 00004010 */  mfhi       $t0
    /* F1BE8 800E2C38 2509004B */  addiu      $t1, $t0, 0x4B
    /* F1BEC 800E2C3C A6090004 */  sh         $t1, 0x4($s0)
    /* F1BF0 800E2C40 16E00002 */  bnez       $s7, .L800E2C4C_F1BFC
    /* F1BF4 800E2C44 00000000 */   nop
    /* F1BF8 800E2C48 0007000D */  break      7
  .L800E2C4C_F1BFC:
    /* F1BFC 800E2C4C 2401FFFF */  addiu      $at, $zero, -0x1
    /* F1C00 800E2C50 16E10004 */  bne        $s7, $at, .L800E2C64_F1C14
    /* F1C04 800E2C54 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* F1C08 800E2C58 14410002 */  bne        $v0, $at, .L800E2C64_F1C14
    /* F1C0C 800E2C5C 00000000 */   nop
    /* F1C10 800E2C60 0006000D */  break      6
  .L800E2C64_F1C14:
    /* F1C14 800E2C64 3C058015 */  lui        $a1, %hi(D_80154300)
    /* F1C18 800E2C68 10000040 */  b          .L800E2D6C_F1D1C
    /* F1C1C 800E2C6C 8CA54300 */   lw        $a1, %lo(D_80154300)($a1)
  .L800E2C70_F1C20:
    /* F1C20 800E2C70 5642003F */  bnel       $s2, $v0, .L800E2D70_F1D20
    /* F1C24 800E2C74 26310001 */   addiu     $s1, $s1, 0x1
    /* F1C28 800E2C78 0C000E38 */  jal        func_800038E0_44E0
    /* F1C2C 800E2C7C 00000000 */   nop
    /* F1C30 800E2C80 005E001A */  div        $zero, $v0, $fp
    /* F1C34 800E2C84 00005010 */  mfhi       $t2
    /* F1C38 800E2C88 254B0019 */  addiu      $t3, $t2, 0x19
    /* F1C3C 800E2C8C A60B0004 */  sh         $t3, 0x4($s0)
    /* F1C40 800E2C90 17C00002 */  bnez       $fp, .L800E2C9C_F1C4C
    /* F1C44 800E2C94 00000000 */   nop
    /* F1C48 800E2C98 0007000D */  break      7
  .L800E2C9C_F1C4C:
    /* F1C4C 800E2C9C 2401FFFF */  addiu      $at, $zero, -0x1
    /* F1C50 800E2CA0 17C10004 */  bne        $fp, $at, .L800E2CB4_F1C64
    /* F1C54 800E2CA4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* F1C58 800E2CA8 14410002 */  bne        $v0, $at, .L800E2CB4_F1C64
    /* F1C5C 800E2CAC 00000000 */   nop
    /* F1C60 800E2CB0 0006000D */  break      6
  .L800E2CB4_F1C64:
    /* F1C64 800E2CB4 3C058015 */  lui        $a1, %hi(D_80154300)
    /* F1C68 800E2CB8 1000002C */  b          .L800E2D6C_F1D1C
    /* F1C6C 800E2CBC 8CA54300 */   lw        $a1, %lo(D_80154300)($a1)
  .L800E2CC0_F1C70:
    /* F1C70 800E2CC0 0443002B */  bgezl      $v0, .L800E2D70_F1D20
    /* F1C74 800E2CC4 26310001 */   addiu     $s1, $s1, 0x1
    /* F1C78 800E2CC8 8E620000 */  lw         $v0, 0x0($s3)
    /* F1C7C 800E2CCC A6030000 */  sh         $v1, 0x0($s0)
    /* F1C80 800E2CD0 16C20013 */  bne        $s6, $v0, .L800E2D20_F1CD0
    /* F1C84 800E2CD4 00000000 */   nop
    /* F1C88 800E2CD8 0C000E38 */  jal        func_800038E0_44E0
    /* F1C8C 800E2CDC 00000000 */   nop
    /* F1C90 800E2CE0 0057001A */  div        $zero, $v0, $s7
    /* F1C94 800E2CE4 00006010 */  mfhi       $t4
    /* F1C98 800E2CE8 258E004B */  addiu      $t6, $t4, 0x4B
    /* F1C9C 800E2CEC A60E0004 */  sh         $t6, 0x4($s0)
    /* F1CA0 800E2CF0 16E00002 */  bnez       $s7, .L800E2CFC_F1CAC
    /* F1CA4 800E2CF4 00000000 */   nop
    /* F1CA8 800E2CF8 0007000D */  break      7
  .L800E2CFC_F1CAC:
    /* F1CAC 800E2CFC 2401FFFF */  addiu      $at, $zero, -0x1
    /* F1CB0 800E2D00 16E10004 */  bne        $s7, $at, .L800E2D14_F1CC4
    /* F1CB4 800E2D04 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* F1CB8 800E2D08 14410002 */  bne        $v0, $at, .L800E2D14_F1CC4
    /* F1CBC 800E2D0C 00000000 */   nop
    /* F1CC0 800E2D10 0006000D */  break      6
  .L800E2D14_F1CC4:
    /* F1CC4 800E2D14 3C058015 */  lui        $a1, %hi(D_80154300)
    /* F1CC8 800E2D18 10000014 */  b          .L800E2D6C_F1D1C
    /* F1CCC 800E2D1C 8CA54300 */   lw        $a1, %lo(D_80154300)($a1)
  .L800E2D20_F1CD0:
    /* F1CD0 800E2D20 56420013 */  bnel       $s2, $v0, .L800E2D70_F1D20
    /* F1CD4 800E2D24 26310001 */   addiu     $s1, $s1, 0x1
    /* F1CD8 800E2D28 0C000E38 */  jal        func_800038E0_44E0
    /* F1CDC 800E2D2C 00000000 */   nop
    /* F1CE0 800E2D30 005E001A */  div        $zero, $v0, $fp
    /* F1CE4 800E2D34 00006810 */  mfhi       $t5
    /* F1CE8 800E2D38 25AF0019 */  addiu      $t7, $t5, 0x19
    /* F1CEC 800E2D3C A60F0004 */  sh         $t7, 0x4($s0)
    /* F1CF0 800E2D40 3C058015 */  lui        $a1, %hi(D_80154300)
    /* F1CF4 800E2D44 8CA54300 */  lw         $a1, %lo(D_80154300)($a1)
    /* F1CF8 800E2D48 17C00002 */  bnez       $fp, .L800E2D54_F1D04
    /* F1CFC 800E2D4C 00000000 */   nop
    /* F1D00 800E2D50 0007000D */  break      7
  .L800E2D54_F1D04:
    /* F1D04 800E2D54 2401FFFF */  addiu      $at, $zero, -0x1
    /* F1D08 800E2D58 17C10004 */  bne        $fp, $at, .L800E2D6C_F1D1C
    /* F1D0C 800E2D5C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* F1D10 800E2D60 14410002 */  bne        $v0, $at, .L800E2D6C_F1D1C
    /* F1D14 800E2D64 00000000 */   nop
    /* F1D18 800E2D68 0006000D */  break      6
  .L800E2D6C_F1D1C:
    /* F1D1C 800E2D6C 26310001 */  addiu      $s1, $s1, 0x1
  .L800E2D70_F1D20:
    /* F1D20 800E2D70 323800FF */  andi       $t8, $s1, 0xFF
    /* F1D24 800E2D74 0305082A */  slt        $at, $t8, $a1
    /* F1D28 800E2D78 1420FF37 */  bnez       $at, .L800E2A58_F1A08
    /* F1D2C 800E2D7C 03008825 */   or        $s1, $t8, $zero
    /* F1D30 800E2D80 8FBF0044 */  lw         $ra, 0x44($sp)
  .L800E2D84_F1D34:
    /* F1D34 800E2D84 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* F1D38 800E2D88 8FB00020 */  lw         $s0, 0x20($sp)
    /* F1D3C 800E2D8C 8FB10024 */  lw         $s1, 0x24($sp)
    /* F1D40 800E2D90 8FB20028 */  lw         $s2, 0x28($sp)
    /* F1D44 800E2D94 8FB3002C */  lw         $s3, 0x2C($sp)
    /* F1D48 800E2D98 8FB40030 */  lw         $s4, 0x30($sp)
    /* F1D4C 800E2D9C 8FB50034 */  lw         $s5, 0x34($sp)
    /* F1D50 800E2DA0 8FB60038 */  lw         $s6, 0x38($sp)
    /* F1D54 800E2DA4 8FB7003C */  lw         $s7, 0x3C($sp)
    /* F1D58 800E2DA8 8FBE0040 */  lw         $fp, 0x40($sp)
    /* F1D5C 800E2DAC 03E00008 */  jr         $ra
    /* F1D60 800E2DB0 27BD0058 */   addiu     $sp, $sp, 0x58
endlabel func_800E2830_F17E0
