nonmatching func_800B2854_C1804, 0x49C

glabel func_800B2854_C1804
    /* C1804 800B2854 27BDFF70 */  addiu      $sp, $sp, -0x90
    /* C1808 800B2858 AFB40030 */  sw         $s4, 0x30($sp)
    /* C180C 800B285C 3C148015 */  lui        $s4, %hi(D_8014F89D)
    /* C1810 800B2860 9294F89D */  lbu        $s4, %lo(D_8014F89D)($s4)
    /* C1814 800B2864 AFBF0044 */  sw         $ra, 0x44($sp)
    /* C1818 800B2868 AFBE0040 */  sw         $fp, 0x40($sp)
    /* C181C 800B286C AFB7003C */  sw         $s7, 0x3C($sp)
    /* C1820 800B2870 AFB60038 */  sw         $s6, 0x38($sp)
    /* C1824 800B2874 AFB50034 */  sw         $s5, 0x34($sp)
    /* C1828 800B2878 AFB3002C */  sw         $s3, 0x2C($sp)
    /* C182C 800B287C AFB20028 */  sw         $s2, 0x28($sp)
    /* C1830 800B2880 AFB10024 */  sw         $s1, 0x24($sp)
    /* C1834 800B2884 AFB00020 */  sw         $s0, 0x20($sp)
    /* C1838 800B2888 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* C183C 800B288C AFA60098 */  sw         $a2, 0x98($sp)
    /* C1840 800B2890 AFA7009C */  sw         $a3, 0x9C($sp)
    /* C1844 800B2894 84820000 */  lh         $v0, 0x0($a0)
    /* C1848 800B2898 3C188015 */  lui        $t8, %hi(D_8014F899)
    /* C184C 800B289C 8318F899 */  lb         $t8, %lo(D_8014F899)($t8)
    /* C1850 800B28A0 3C138015 */  lui        $s3, %hi(D_8014F89C)
    /* C1854 800B28A4 2694FF81 */  addiu      $s4, $s4, -0x7F
    /* C1858 800B28A8 9273F89C */  lbu        $s3, %lo(D_8014F89C)($s3)
    /* C185C 800B28AC 0014CC00 */  sll        $t9, $s4, 16
    /* C1860 800B28B0 00024203 */  sra        $t0, $v0, 8
    /* C1864 800B28B4 0019A403 */  sra        $s4, $t9, 16
    /* C1868 800B28B8 25080001 */  addiu      $t0, $t0, 0x1
    /* C186C 800B28BC 84830002 */  lh         $v1, 0x2($a0)
    /* C1870 800B28C0 0308C821 */  addu       $t9, $t8, $t0
    /* C1874 800B28C4 3C188015 */  lui        $t8, %hi(D_8014F898)
    /* C1878 800B28C8 2673FF81 */  addiu      $s3, $s3, -0x7F
    /* C187C 800B28CC 8318F898 */  lb         $t8, %lo(D_8014F898)($t8)
    /* C1880 800B28D0 00137C00 */  sll        $t7, $s3, 16
    /* C1884 800B28D4 000F9C03 */  sra        $s3, $t7, 16
    /* C1888 800B28D8 00034A03 */  sra        $t1, $v1, 8
    /* C188C 800B28DC 25290001 */  addiu      $t1, $t1, 0x1
    /* C1890 800B28E0 03335023 */  subu       $t2, $t9, $s3
    /* C1894 800B28E4 0309C821 */  addu       $t9, $t8, $t1
    /* C1898 800B28E8 87B8009A */  lh         $t8, 0x9A($sp)
    /* C189C 800B28EC 0007B400 */  sll        $s6, $a3, 16
    /* C18A0 800B28F0 00167403 */  sra        $t6, $s6, 16
    /* C18A4 800B28F4 01C0B025 */  or         $s6, $t6, $zero
    /* C18A8 800B28F8 03345823 */  subu       $t3, $t9, $s4
    /* C18AC 800B28FC 0316C821 */  addu       $t9, $t8, $s6
    /* C18B0 800B2900 44992000 */  mtc1       $t9, $f4
    /* C18B4 800B2904 3C014380 */  lui        $at, (0x43800000 >> 16)
    /* C18B8 800B2908 44814000 */  mtc1       $at, $f8
    /* C18BC 800B290C 468021A0 */  cvt.s.w    $f6, $f4
    /* C18C0 800B2910 000A7400 */  sll        $t6, $t2, 16
    /* C18C4 800B2914 000E5403 */  sra        $t2, $t6, 16
    /* C18C8 800B2918 000B7400 */  sll        $t6, $t3, 16
    /* C18CC 800B291C 000E5C03 */  sra        $t3, $t6, 16
    /* C18D0 800B2920 240C0001 */  addiu      $t4, $zero, 0x1
    /* C18D4 800B2924 46083283 */  div.s      $f10, $f6, $f8
    /* C18D8 800B2928 304F00FF */  andi       $t7, $v0, 0xFF
    /* C18DC 800B292C 00A08825 */  or         $s1, $a1, $zero
    /* C18E0 800B2930 AFAF0068 */  sw         $t7, 0x68($sp)
    /* C18E4 800B2934 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* C18E8 800B2938 24180001 */  addiu      $t8, $zero, 0x1
    /* C18EC 800B293C 24060100 */  addiu      $a2, $zero, 0x100
    /* C18F0 800B2940 307500FF */  andi       $s5, $v1, 0xFF
    /* C18F4 800B2944 444EF800 */  cfc1       $t6, $31
    /* C18F8 800B2948 44CCF800 */  ctc1       $t4, $31
    /* C18FC 800B294C 00000000 */  nop
    /* C1900 800B2950 46005424 */  cvt.w.s    $f16, $f10
    /* C1904 800B2954 444CF800 */  cfc1       $t4, $31
    /* C1908 800B2958 00000000 */  nop
    /* C190C 800B295C 318C0078 */  andi       $t4, $t4, 0x78
    /* C1910 800B2960 51800013 */  beql       $t4, $zero, .L800B29B0_C1960
    /* C1914 800B2964 440C8000 */   mfc1      $t4, $f16
    /* C1918 800B2968 44818000 */  mtc1       $at, $f16
    /* C191C 800B296C 240C0001 */  addiu      $t4, $zero, 0x1
    /* C1920 800B2970 46105401 */  sub.s      $f16, $f10, $f16
    /* C1924 800B2974 44CCF800 */  ctc1       $t4, $31
    /* C1928 800B2978 00000000 */  nop
    /* C192C 800B297C 46008424 */  cvt.w.s    $f16, $f16
    /* C1930 800B2980 444CF800 */  cfc1       $t4, $31
    /* C1934 800B2984 00000000 */  nop
    /* C1938 800B2988 318C0078 */  andi       $t4, $t4, 0x78
    /* C193C 800B298C 15800005 */  bnez       $t4, .L800B29A4_C1954
    /* C1940 800B2990 00000000 */   nop
    /* C1944 800B2994 440C8000 */  mfc1       $t4, $f16
    /* C1948 800B2998 3C018000 */  lui        $at, %hi(D_80000000 + 0x1)
    /* C194C 800B299C 10000007 */  b          .L800B29BC_C196C
    /* C1950 800B29A0 01816025 */   or        $t4, $t4, $at
  .L800B29A4_C1954:
    /* C1954 800B29A4 10000005 */  b          .L800B29BC_C196C
    /* C1958 800B29A8 240CFFFF */   addiu     $t4, $zero, -0x1
    /* C195C 800B29AC 440C8000 */  mfc1       $t4, $f16
  .L800B29B0_C1960:
    /* C1960 800B29B0 00000000 */  nop
    /* C1964 800B29B4 0580FFFB */  bltz       $t4, .L800B29A4_C1954
    /* C1968 800B29B8 00000000 */   nop
  .L800B29BC_C196C:
    /* C196C 800B29BC 01807825 */  or         $t7, $t4, $zero
    /* C1970 800B29C0 25EC0001 */  addiu      $t4, $t7, %lo(D_80000000 + 0x1)
    /* C1974 800B29C4 318D00FF */  andi       $t5, $t4, 0xFF
    /* C1978 800B29C8 030DF823 */  subu       $ra, $t8, $t5
    /* C197C 800B29CC 44CEF800 */  ctc1       $t6, $31
    /* C1980 800B29D0 001FBC00 */  sll        $s7, $ra, 16
    /* C1984 800B29D4 00177403 */  sra        $t6, $s7, 16
    /* C1988 800B29D8 001F9400 */  sll        $s2, $ra, 16
    /* C198C 800B29DC 25BE0001 */  addiu      $fp, $t5, 0x1
    /* C1990 800B29E0 01DE082A */  slt        $at, $t6, $fp
    /* C1994 800B29E4 0012CC03 */  sra        $t9, $s2, 16
    /* C1998 800B29E8 319000FF */  andi       $s0, $t4, 0xFF
    /* C199C 800B29EC 03209025 */  or         $s2, $t9, $zero
    /* C19A0 800B29F0 AFBE0050 */  sw         $fp, 0x50($sp)
    /* C19A4 800B29F4 AFAE0054 */  sw         $t6, 0x54($sp)
    /* C19A8 800B29F8 102000B0 */  beqz       $at, .L800B2CBC_C1C6C
    /* C19AC 800B29FC AFBF0058 */   sw        $ra, 0x58($sp)
    /* C19B0 800B2A00 3C01437F */  lui        $at, (0x437F0000 >> 16)
    /* C19B4 800B2A04 4481A000 */  mtc1       $at, $f20
    /* C19B8 800B2A08 26070001 */  addiu      $a3, $s0, 0x1
    /* C19BC 800B2A0C 241EFF00 */  addiu      $fp, $zero, -0x100
  .L800B2A10_C19C0:
    /* C19C0 800B2A10 1E400008 */  bgtz       $s2, .L800B2A34_C19E4
    /* C19C4 800B2A14 87B0005A */   lh        $s0, 0x5A($sp)
    /* C19C8 800B2A18 025E0019 */  multu      $s2, $fp
    /* C19CC 800B2A1C 87AF006A */  lh         $t7, 0x6A($sp)
    /* C19D0 800B2A20 0000C012 */  mflo       $t8
    /* C19D4 800B2A24 01F81021 */  addu       $v0, $t7, $t8
    /* C19D8 800B2A28 0002CC00 */  sll        $t9, $v0, 16
    /* C19DC 800B2A2C 10000008 */  b          .L800B2A50_C1A00
    /* C19E0 800B2A30 00191403 */   sra       $v0, $t9, 16
  .L800B2A34_C19E4:
    /* C19E4 800B2A34 8FAF0068 */  lw         $t7, 0x68($sp)
    /* C19E8 800B2A38 00CF7023 */  subu       $t6, $a2, $t7
    /* C19EC 800B2A3C 00127A00 */  sll        $t7, $s2, 8
    /* C19F0 800B2A40 01CF1021 */  addu       $v0, $t6, $t7
    /* C19F4 800B2A44 2442FF00 */  addiu      $v0, $v0, -0x100
    /* C19F8 800B2A48 0002C400 */  sll        $t8, $v0, 16
    /* C19FC 800B2A4C 00181403 */  sra        $v0, $t8, 16
  .L800B2A50_C1A00:
    /* C1A00 800B2A50 8FAE0054 */  lw         $t6, 0x54($sp)
    /* C1A04 800B2A54 8FAF0050 */  lw         $t7, 0x50($sp)
    /* C1A08 800B2A58 01CF082A */  slt        $at, $t6, $t7
    /* C1A0C 800B2A5C 50200092 */  beql       $at, $zero, .L800B2CA8_C1C58
    /* C1A10 800B2A60 26520001 */   addiu     $s2, $s2, 0x1
    /* C1A14 800B2A64 00420019 */  multu      $v0, $v0
    /* C1A18 800B2A68 0000B812 */  mflo       $s7
    /* C1A1C 800B2A6C 00000000 */  nop
    /* C1A20 800B2A70 00000000 */  nop
  .L800B2A74_C1A24:
    /* C1A24 800B2A74 1E000007 */  bgtz       $s0, .L800B2A94_C1A44
    /* C1A28 800B2A78 00D57823 */   subu      $t7, $a2, $s5
    /* C1A2C 800B2A7C 021E0019 */  multu      $s0, $fp
    /* C1A30 800B2A80 00007012 */  mflo       $t6
    /* C1A34 800B2A84 02AE1021 */  addu       $v0, $s5, $t6
    /* C1A38 800B2A88 00027C00 */  sll        $t7, $v0, 16
    /* C1A3C 800B2A8C 10000006 */  b          .L800B2AA8_C1A58
    /* C1A40 800B2A90 000F1403 */   sra       $v0, $t7, 16
  .L800B2A94_C1A44:
    /* C1A44 800B2A94 0010C200 */  sll        $t8, $s0, 8
    /* C1A48 800B2A98 01F81021 */  addu       $v0, $t7, $t8
    /* C1A4C 800B2A9C 2442FF00 */  addiu      $v0, $v0, -0x100
    /* C1A50 800B2AA0 0002CC00 */  sll        $t9, $v0, 16
    /* C1A54 800B2AA4 00191403 */  sra        $v0, $t9, 16
  .L800B2AA8_C1A58:
    /* C1A58 800B2AA8 00420019 */  multu      $v0, $v0
    /* C1A5C 800B2AAC AFA7004C */  sw         $a3, 0x4C($sp)
    /* C1A60 800B2AB0 AFA80070 */  sw         $t0, 0x70($sp)
    /* C1A64 800B2AB4 AFA9006C */  sw         $t1, 0x6C($sp)
    /* C1A68 800B2AB8 A7AA0062 */  sh         $t2, 0x62($sp)
    /* C1A6C 800B2ABC A7AB0060 */  sh         $t3, 0x60($sp)
    /* C1A70 800B2AC0 00007812 */  mflo       $t7
    /* C1A74 800B2AC4 01F7C021 */  addu       $t8, $t7, $s7
    /* C1A78 800B2AC8 44989000 */  mtc1       $t8, $f18
    /* C1A7C 800B2ACC 0C007650 */  jal        sqrtf
    /* C1A80 800B2AD0 46809320 */   cvt.s.w   $f12, $f18
    /* C1A84 800B2AD4 4600010D */  trunc.w.s  $f4, $f0
    /* C1A88 800B2AD8 87B9009A */  lh         $t9, 0x9A($sp)
    /* C1A8C 800B2ADC 24060100 */  addiu      $a2, $zero, 0x100
    /* C1A90 800B2AE0 8FA7004C */  lw         $a3, 0x4C($sp)
    /* C1A94 800B2AE4 44182000 */  mfc1       $t8, $f4
    /* C1A98 800B2AE8 8FA80070 */  lw         $t0, 0x70($sp)
    /* C1A9C 800B2AEC 8FA9006C */  lw         $t1, 0x6C($sp)
    /* C1AA0 800B2AF0 03191023 */  subu       $v0, $t8, $t9
    /* C1AA4 800B2AF4 00021C00 */  sll        $v1, $v0, 16
    /* C1AA8 800B2AF8 00022400 */  sll        $a0, $v0, 16
    /* C1AAC 800B2AFC 00037403 */  sra        $t6, $v1, 16
    /* C1AB0 800B2B00 00047C03 */  sra        $t7, $a0, 16
    /* C1AB4 800B2B04 01C01825 */  or         $v1, $t6, $zero
    /* C1AB8 800B2B08 87AA0062 */  lh         $t2, 0x62($sp)
    /* C1ABC 800B2B0C 05E10004 */  bgez       $t7, .L800B2B20_C1AD0
    /* C1AC0 800B2B10 87AB0060 */   lh        $t3, 0x60($sp)
    /* C1AC4 800B2B14 000F1823 */  negu       $v1, $t7
    /* C1AC8 800B2B18 0003C400 */  sll        $t8, $v1, 16
    /* C1ACC 800B2B1C 00181C03 */  sra        $v1, $t8, 16
  .L800B2B20_C1AD0:
    /* C1AD0 800B2B20 02C31823 */  subu       $v1, $s6, $v1
    /* C1AD4 800B2B24 00037400 */  sll        $t6, $v1, 16
    /* C1AD8 800B2B28 000E1C03 */  sra        $v1, $t6, 16
    /* C1ADC 800B2B2C 58600058 */  blezl      $v1, .L800B2C90_C1C40
    /* C1AE0 800B2B30 26100001 */   addiu     $s0, $s0, 0x1
    /* C1AE4 800B2B34 44833000 */  mtc1       $v1, $f6
    /* C1AE8 800B2B38 44965000 */  mtc1       $s6, $f10
    /* C1AEC 800B2B3C 02481021 */  addu       $v0, $s2, $t0
    /* C1AF0 800B2B40 46803220 */  cvt.s.w    $f8, $f6
    /* C1AF4 800B2B44 00027C00 */  sll        $t7, $v0, 16
    /* C1AF8 800B2B48 000F1403 */  sra        $v0, $t7, 16
    /* C1AFC 800B2B4C 46805420 */  cvt.s.w    $f16, $f10
    /* C1B00 800B2B50 46104483 */  div.s      $f18, $f8, $f16
    /* C1B04 800B2B54 46149102 */  mul.s      $f4, $f18, $f20
    /* C1B08 800B2B58 4600218D */  trunc.w.s  $f6, $f4
    /* C1B0C 800B2B5C 44033000 */  mfc1       $v1, $f6
    /* C1B10 800B2B60 00000000 */  nop
    /* C1B14 800B2B64 0003CC00 */  sll        $t9, $v1, 16
    /* C1B18 800B2B68 00191C03 */  sra        $v1, $t9, 16
    /* C1B1C 800B2B6C 28610100 */  slti       $at, $v1, 0x100
    /* C1B20 800B2B70 14200002 */  bnez       $at, .L800B2B7C_C1B2C
    /* C1B24 800B2B74 26790013 */   addiu     $t9, $s3, 0x13
    /* C1B28 800B2B78 240300FF */  addiu      $v1, $zero, 0xFF
  .L800B2B7C_C1B2C:
    /* C1B2C 800B2B7C 0053082A */  slt        $at, $v0, $s3
    /* C1B30 800B2B80 14200042 */  bnez       $at, .L800B2C8C_C1C3C
    /* C1B34 800B2B84 00197400 */   sll       $t6, $t9, 16
    /* C1B38 800B2B88 000E7C03 */  sra        $t7, $t6, 16
    /* C1B3C 800B2B8C 01E2082A */  slt        $at, $t7, $v0
    /* C1B40 800B2B90 1420003E */  bnez       $at, .L800B2C8C_C1C3C
    /* C1B44 800B2B94 02091021 */   addu      $v0, $s0, $t1
    /* C1B48 800B2B98 0002C400 */  sll        $t8, $v0, 16
    /* C1B4C 800B2B9C 0018CC03 */  sra        $t9, $t8, 16
    /* C1B50 800B2BA0 0334082A */  slt        $at, $t9, $s4
    /* C1B54 800B2BA4 14200039 */  bnez       $at, .L800B2C8C_C1C3C
    /* C1B58 800B2BA8 268E0013 */   addiu     $t6, $s4, 0x13
    /* C1B5C 800B2BAC 000E7C00 */  sll        $t7, $t6, 16
    /* C1B60 800B2BB0 000FC403 */  sra        $t8, $t7, 16
    /* C1B64 800B2BB4 0319082A */  slt        $at, $t8, $t9
    /* C1B68 800B2BB8 14200034 */  bnez       $at, .L800B2C8C_C1C3C
    /* C1B6C 800B2BBC 020BC021 */   addu      $t8, $s0, $t3
    /* C1B70 800B2BC0 92390000 */  lbu        $t9, 0x0($s1)
    /* C1B74 800B2BC4 024A2821 */  addu       $a1, $s2, $t2
    /* C1B78 800B2BC8 24010013 */  addiu      $at, $zero, 0x13
    /* C1B7C 800B2BCC 03230019 */  multu      $t9, $v1
    /* C1B80 800B2BD0 00001012 */  mflo       $v0
    /* C1B84 800B2BD4 00027203 */  sra        $t6, $v0, 8
    /* C1B88 800B2BD8 000E7C00 */  sll        $t7, $t6, 16
    /* C1B8C 800B2BDC 00A1001A */  div        $zero, $a1, $at
    /* C1B90 800B2BE0 000F1403 */  sra        $v0, $t7, 16
    /* C1B94 800B2BE4 0000C810 */  mfhi       $t9
    /* C1B98 800B2BE8 332EFFFF */  andi       $t6, $t9, 0xFFFF
    /* C1B9C 800B2BEC 000E7880 */  sll        $t7, $t6, 2
    /* C1BA0 800B2BF0 28410100 */  slti       $at, $v0, 0x100
    /* C1BA4 800B2BF4 14200002 */  bnez       $at, .L800B2C00_C1BB0
    /* C1BA8 800B2BF8 01EE2823 */   subu      $a1, $t7, $t6
    /* C1BAC 800B2BFC 240200FF */  addiu      $v0, $zero, 0xFF
  .L800B2C00_C1BB0:
    /* C1BB0 800B2C00 24010013 */  addiu      $at, $zero, 0x13
    /* C1BB4 800B2C04 0301001A */  div        $zero, $t8, $at
    /* C1BB8 800B2C08 0000C810 */  mfhi       $t9
    /* C1BBC 800B2C0C 332EFFFF */  andi       $t6, $t9, 0xFFFF
    /* C1BC0 800B2C10 000E78C0 */  sll        $t7, $t6, 3
    /* C1BC4 800B2C14 01EE7823 */  subu       $t7, $t7, $t6
    /* C1BC8 800B2C18 000F78C0 */  sll        $t7, $t7, 3
    /* C1BCC 800B2C1C 01EE7821 */  addu       $t7, $t7, $t6
    /* C1BD0 800B2C20 3C198015 */  lui        $t9, %hi(D_80152740)
    /* C1BD4 800B2C24 27392740 */  addiu      $t9, $t9, %lo(D_80152740)
    /* C1BD8 800B2C28 01E5C021 */  addu       $t8, $t7, $a1
    /* C1BDC 800B2C2C 03192021 */  addu       $a0, $t8, $t9
    /* C1BE0 800B2C30 A0820000 */  sb         $v0, 0x0($a0)
    /* C1BE4 800B2C34 922E0001 */  lbu        $t6, 0x1($s1)
    /* C1BE8 800B2C38 01C30019 */  multu      $t6, $v1
    /* C1BEC 800B2C3C 00001012 */  mflo       $v0
    /* C1BF0 800B2C40 00027A03 */  sra        $t7, $v0, 8
    /* C1BF4 800B2C44 000FC400 */  sll        $t8, $t7, 16
    /* C1BF8 800B2C48 00181403 */  sra        $v0, $t8, 16
    /* C1BFC 800B2C4C 28410100 */  slti       $at, $v0, 0x100
    /* C1C00 800B2C50 54200003 */  bnel       $at, $zero, .L800B2C60_C1C10
    /* C1C04 800B2C54 A0820001 */   sb        $v0, 0x1($a0)
    /* C1C08 800B2C58 240200FF */  addiu      $v0, $zero, 0xFF
    /* C1C0C 800B2C5C A0820001 */  sb         $v0, 0x1($a0)
  .L800B2C60_C1C10:
    /* C1C10 800B2C60 922E0002 */  lbu        $t6, 0x2($s1)
    /* C1C14 800B2C64 01C30019 */  multu      $t6, $v1
    /* C1C18 800B2C68 00001012 */  mflo       $v0
    /* C1C1C 800B2C6C 00027A03 */  sra        $t7, $v0, 8
    /* C1C20 800B2C70 000FC400 */  sll        $t8, $t7, 16
    /* C1C24 800B2C74 00181403 */  sra        $v0, $t8, 16
    /* C1C28 800B2C78 28410100 */  slti       $at, $v0, 0x100
    /* C1C2C 800B2C7C 54200003 */  bnel       $at, $zero, .L800B2C8C_C1C3C
    /* C1C30 800B2C80 A0820002 */   sb        $v0, 0x2($a0)
    /* C1C34 800B2C84 240200FF */  addiu      $v0, $zero, 0xFF
    /* C1C38 800B2C88 A0820002 */  sb         $v0, 0x2($a0)
  .L800B2C8C_C1C3C:
    /* C1C3C 800B2C8C 26100001 */  addiu      $s0, $s0, 0x1
  .L800B2C90_C1C40:
    /* C1C40 800B2C90 00107400 */  sll        $t6, $s0, 16
    /* C1C44 800B2C94 000E8403 */  sra        $s0, $t6, 16
    /* C1C48 800B2C98 0207082A */  slt        $at, $s0, $a3
    /* C1C4C 800B2C9C 1420FF75 */  bnez       $at, .L800B2A74_C1A24
    /* C1C50 800B2CA0 00000000 */   nop
    /* C1C54 800B2CA4 26520001 */  addiu      $s2, $s2, 0x1
  .L800B2CA8_C1C58:
    /* C1C58 800B2CA8 0012C400 */  sll        $t8, $s2, 16
    /* C1C5C 800B2CAC 00189403 */  sra        $s2, $t8, 16
    /* C1C60 800B2CB0 0247082A */  slt        $at, $s2, $a3
    /* C1C64 800B2CB4 1420FF56 */  bnez       $at, .L800B2A10_C19C0
    /* C1C68 800B2CB8 00000000 */   nop
  .L800B2CBC_C1C6C:
    /* C1C6C 800B2CBC 8FBF0044 */  lw         $ra, 0x44($sp)
    /* C1C70 800B2CC0 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* C1C74 800B2CC4 8FB00020 */  lw         $s0, 0x20($sp)
    /* C1C78 800B2CC8 8FB10024 */  lw         $s1, 0x24($sp)
    /* C1C7C 800B2CCC 8FB20028 */  lw         $s2, 0x28($sp)
    /* C1C80 800B2CD0 8FB3002C */  lw         $s3, 0x2C($sp)
    /* C1C84 800B2CD4 8FB40030 */  lw         $s4, 0x30($sp)
    /* C1C88 800B2CD8 8FB50034 */  lw         $s5, 0x34($sp)
    /* C1C8C 800B2CDC 8FB60038 */  lw         $s6, 0x38($sp)
    /* C1C90 800B2CE0 8FB7003C */  lw         $s7, 0x3C($sp)
    /* C1C94 800B2CE4 8FBE0040 */  lw         $fp, 0x40($sp)
    /* C1C98 800B2CE8 03E00008 */  jr         $ra
    /* C1C9C 800B2CEC 27BD0090 */   addiu     $sp, $sp, 0x90
endlabel func_800B2854_C1804
