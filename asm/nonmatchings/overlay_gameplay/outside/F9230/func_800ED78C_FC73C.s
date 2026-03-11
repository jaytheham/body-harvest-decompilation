nonmatching func_800ED78C_FC73C, 0x1924

glabel func_800ED78C_FC73C
    /* FC73C 800ED78C 27BDFF50 */  addiu      $sp, $sp, -0xB0
    /* FC740 800ED790 AFB00028 */  sw         $s0, 0x28($sp)
    /* FC744 800ED794 3C108015 */  lui        $s0, %hi(D_80157600)
    /* FC748 800ED798 26107600 */  addiu      $s0, $s0, %lo(D_80157600)
    /* FC74C 800ED79C 8E0E040C */  lw         $t6, 0x40C($s0)
    /* FC750 800ED7A0 3C188014 */  lui        $t8, %hi(D_8013E5B0)
    /* FC754 800ED7A4 AFBF002C */  sw         $ra, 0x2C($sp)
    /* FC758 800ED7A8 000E7880 */  sll        $t7, $t6, 2
    /* FC75C 800ED7AC 01EE7823 */  subu       $t7, $t7, $t6
    /* FC760 800ED7B0 000F7880 */  sll        $t7, $t7, 2
    /* FC764 800ED7B4 01EE7821 */  addu       $t7, $t7, $t6
    /* FC768 800ED7B8 000F7880 */  sll        $t7, $t7, 2
    /* FC76C 800ED7BC 030FC021 */  addu       $t8, $t8, $t7
    /* FC770 800ED7C0 8F18E5B0 */  lw         $t8, %lo(D_8013E5B0)($t8)
    /* FC774 800ED7C4 AFA400B0 */  sw         $a0, 0xB0($sp)
    /* FC778 800ED7C8 AFA500B4 */  sw         $a1, 0xB4($sp)
    /* FC77C 800ED7CC 33194000 */  andi       $t9, $t8, 0x4000
    /* FC780 800ED7D0 13200009 */  beqz       $t9, .L800ED7F8_FC7A8
    /* FC784 800ED7D4 3C014080 */   lui       $at, (0x40800000 >> 16)
    /* FC788 800ED7D8 C604000C */  lwc1       $f4, 0xC($s0)
    /* FC78C 800ED7DC 44813000 */  mtc1       $at, $f6
    /* FC790 800ED7E0 00000000 */  nop
    /* FC794 800ED7E4 46062203 */  div.s      $f8, $f4, $f6
    /* FC798 800ED7E8 4600428D */  trunc.w.s  $f10, $f8
    /* FC79C 800ED7EC 44045000 */  mfc1       $a0, $f10
    /* FC7A0 800ED7F0 0C04CFA5 */  jal        func_80133E94_142E44
    /* FC7A4 800ED7F4 00000000 */   nop
  .L800ED7F8_FC7A8:
    /* FC7A8 800ED7F8 3C028005 */  lui        $v0, %hi(D_80048188)
    /* FC7AC 800ED7FC 8C428188 */  lw         $v0, %lo(D_80048188)($v0)
    /* FC7B0 800ED800 3C088015 */  lui        $t0, %hi(D_801575E0)
    /* FC7B4 800ED804 250875E0 */  addiu      $t0, $t0, %lo(D_801575E0)
    /* FC7B8 800ED808 104002FA */  beqz       $v0, .L800EE3F4_FD3A4
    /* FC7BC 800ED80C 00000000 */   nop
    /* FC7C0 800ED810 950A0000 */  lhu        $t2, 0x0($t0)
    /* FC7C4 800ED814 2D410006 */  sltiu      $at, $t2, 0x6
    /* FC7C8 800ED818 102002F6 */  beqz       $at, .L800EE3F4_FD3A4
    /* FC7CC 800ED81C 000A5080 */   sll       $t2, $t2, 2
    /* FC7D0 800ED820 3C018014 */  lui        $at, %hi(jtbl_801444A0_overlay_gameplay_outside)
    /* FC7D4 800ED824 002A0821 */  addu       $at, $at, $t2
    /* FC7D8 800ED828 8C2A44A0 */  lw         $t2, %lo(jtbl_801444A0_overlay_gameplay_outside)($at)
    /* FC7DC 800ED82C 01400008 */  jr         $t2
    /* FC7E0 800ED830 00000000 */   nop
    /* FC7E4 800ED834 8E0B040C */  lw         $t3, 0x40C($s0)
    /* FC7E8 800ED838 11600005 */  beqz       $t3, .L800ED850_FC800
    /* FC7EC 800ED83C 02002025 */   or        $a0, $s0, $zero
    /* FC7F0 800ED840 00002825 */  or         $a1, $zero, $zero
    /* FC7F4 800ED844 00003025 */  or         $a2, $zero, $zero
    /* FC7F8 800ED848 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FC7FC 800ED84C 24070000 */   addiu     $a3, $zero, 0x0
  .L800ED850_FC800:
    /* FC800 800ED850 920C0424 */  lbu        $t4, 0x424($s0)
    /* FC804 800ED854 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* FC808 800ED858 44812000 */  mtc1       $at, $f4
    /* FC80C 800ED85C 1580000A */  bnez       $t4, .L800ED888_FC838
    /* FC810 800ED860 E7A400AC */   swc1      $f4, 0xAC($sp)
    /* FC814 800ED864 8E0D0420 */  lw         $t5, 0x420($s0)
    /* FC818 800ED868 8E0E040C */  lw         $t6, 0x40C($s0)
    /* FC81C 800ED86C 02002025 */  or         $a0, $s0, $zero
    /* FC820 800ED870 8DA50000 */  lw         $a1, 0x0($t5)
    /* FC824 800ED874 00003025 */  or         $a2, $zero, $zero
    /* FC828 800ED878 51C50004 */  beql       $t6, $a1, .L800ED88C_FC83C
    /* FC82C 800ED87C 8E0F0404 */   lw        $t7, 0x404($s0)
    /* FC830 800ED880 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FC834 800ED884 24070000 */   addiu     $a3, $zero, 0x0
  .L800ED888_FC838:
    /* FC838 800ED888 8E0F0404 */  lw         $t7, 0x404($s0)
  .L800ED88C_FC83C:
    /* FC83C 800ED88C 8DF80E50 */  lw         $t8, 0xE50($t7)
    /* FC840 800ED890 1700001A */  bnez       $t8, .L800ED8FC_FC8AC
    /* FC844 800ED894 00000000 */   nop
    /* FC848 800ED898 92190424 */  lbu        $t9, 0x424($s0)
    /* FC84C 800ED89C 8E0A0420 */  lw         $t2, 0x420($s0)
    /* FC850 800ED8A0 240100FF */  addiu      $at, $zero, 0xFF
    /* FC854 800ED8A4 27290001 */  addiu      $t1, $t9, 0x1
    /* FC858 800ED8A8 254B0004 */  addiu      $t3, $t2, 0x4
    /* FC85C 800ED8AC A2090424 */  sb         $t1, 0x424($s0)
    /* FC860 800ED8B0 AE0B0420 */  sw         $t3, 0x420($s0)
    /* FC864 800ED8B4 8D650000 */  lw         $a1, 0x0($t3)
    /* FC868 800ED8B8 02002025 */  or         $a0, $s0, $zero
    /* FC86C 800ED8BC 00003025 */  or         $a2, $zero, $zero
    /* FC870 800ED8C0 14A10007 */  bne        $a1, $at, .L800ED8E0_FC890
    /* FC874 800ED8C4 24070000 */   addiu     $a3, $zero, 0x0
    /* FC878 800ED8C8 3C018005 */  lui        $at, %hi(D_80048188)
    /* FC87C 800ED8CC AC208188 */  sw         $zero, %lo(D_80048188)($at)
    /* FC880 800ED8D0 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FC884 800ED8D4 24050023 */   addiu     $a1, $zero, 0x23
    /* FC888 800ED8D8 10000008 */  b          .L800ED8FC_FC8AC
    /* FC88C 800ED8DC 00000000 */   nop
  .L800ED8E0_FC890:
    /* FC890 800ED8E0 8E0D040C */  lw         $t5, 0x40C($s0)
    /* FC894 800ED8E4 02002025 */  or         $a0, $s0, $zero
    /* FC898 800ED8E8 00003025 */  or         $a2, $zero, $zero
    /* FC89C 800ED8EC 11A50003 */  beq        $t5, $a1, .L800ED8FC_FC8AC
    /* FC8A0 800ED8F0 00000000 */   nop
    /* FC8A4 800ED8F4 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FC8A8 800ED8F8 24070000 */   addiu     $a3, $zero, 0x0
  .L800ED8FC_FC8AC:
    /* FC8AC 800ED8FC 3C028005 */  lui        $v0, %hi(D_80048188)
    /* FC8B0 800ED900 100002BC */  b          .L800EE3F4_FD3A4
    /* FC8B4 800ED904 8C428188 */   lw        $v0, %lo(D_80048188)($v0)
    /* FC8B8 800ED908 0C04D866 */  jal        func_80136198_145148
    /* FC8BC 800ED90C 24040001 */   addiu     $a0, $zero, 0x1
    /* FC8C0 800ED910 3C018005 */  lui        $at, %hi(D_80048188)
    /* FC8C4 800ED914 AC208188 */  sw         $zero, %lo(D_80048188)($at)
    /* FC8C8 800ED918 02002025 */  or         $a0, $s0, $zero
    /* FC8CC 800ED91C 24050023 */  addiu      $a1, $zero, 0x23
    /* FC8D0 800ED920 00003025 */  or         $a2, $zero, $zero
    /* FC8D4 800ED924 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FC8D8 800ED928 24070000 */   addiu     $a3, $zero, 0x0
    /* FC8DC 800ED92C 3C028005 */  lui        $v0, %hi(D_80048188)
    /* FC8E0 800ED930 100002B0 */  b          .L800EE3F4_FD3A4
    /* FC8E4 800ED934 8C428188 */   lw        $v0, %lo(D_80048188)($v0)
    /* FC8E8 800ED938 8FAE00B0 */  lw         $t6, 0xB0($sp)
    /* FC8EC 800ED93C 85190012 */  lh         $t9, 0x12($t0)
    /* FC8F0 800ED940 85CF000E */  lh         $t7, 0xE($t6)
    /* FC8F4 800ED944 3329FFFF */  andi       $t1, $t9, 0xFFFF
    /* FC8F8 800ED948 31F8FFFF */  andi       $t8, $t7, 0xFFFF
    /* FC8FC 800ED94C 5309000A */  beql       $t8, $t1, .L800ED978_FC928
    /* FC900 800ED950 85050016 */   lh        $a1, 0x16($t0)
    /* FC904 800ED954 850A0004 */  lh         $t2, 0x4($t0)
    /* FC908 800ED958 01C02025 */  or         $a0, $t6, $zero
    /* FC90C 800ED95C 000A5840 */  sll        $t3, $t2, 1
    /* FC910 800ED960 010B6021 */  addu       $t4, $t0, $t3
    /* FC914 800ED964 0C03AB7E */  jal        func_800EADF8_F9DA8
    /* FC918 800ED968 85850012 */   lh        $a1, 0x12($t4)
    /* FC91C 800ED96C 10000058 */  b          .L800EDAD0_FCA80
    /* FC920 800ED970 8FAF00B0 */   lw        $t7, 0xB0($sp)
    /* FC924 800ED974 85050016 */  lh         $a1, 0x16($t0)
  .L800ED978_FC928:
    /* FC928 800ED978 8E0D040C */  lw         $t5, 0x40C($s0)
    /* FC92C 800ED97C 00003025 */  or         $a2, $zero, $zero
    /* FC930 800ED980 24070000 */  addiu      $a3, $zero, 0x0
    /* FC934 800ED984 11A50005 */  beq        $t5, $a1, .L800ED99C_FC94C
    /* FC938 800ED988 3C048005 */   lui       $a0, %hi(D_80052542)
    /* FC93C 800ED98C 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FC940 800ED990 02002025 */   or        $a0, $s0, $zero
    /* FC944 800ED994 1000004E */  b          .L800EDAD0_FCA80
    /* FC948 800ED998 8FAF00B0 */   lw        $t7, 0xB0($sp)
  .L800ED99C_FC94C:
    /* FC94C 800ED99C 0C046045 */  jal        func_80118114_1270C4
    /* FC950 800ED9A0 84842542 */   lh        $a0, %lo(D_80052542)($a0)
    /* FC954 800ED9A4 10400037 */  beqz       $v0, .L800EDA84_FCA34
    /* FC958 800ED9A8 3C0F8005 */   lui       $t7, %hi(D_80052544)
    /* FC95C 800ED9AC 8DEF2544 */  lw         $t7, %lo(D_80052544)($t7)
    /* FC960 800ED9B0 3C018016 */  lui        $at, %hi(D_8015EA30)
    /* FC964 800ED9B4 55E00034 */  bnel       $t7, $zero, .L800EDA88_FCA38
    /* FC968 800ED9B8 8E0A0404 */   lw        $t2, 0x404($s0)
    /* FC96C 800ED9BC C428EA30 */  lwc1       $f8, %lo(D_8015EA30)($at)
    /* FC970 800ED9C0 44803800 */  mtc1       $zero, $f7
    /* FC974 800ED9C4 44803000 */  mtc1       $zero, $f6
    /* FC978 800ED9C8 460042A1 */  cvt.d.s    $f10, $f8
    /* FC97C 800ED9CC 462A3032 */  c.eq.d     $f6, $f10
    /* FC980 800ED9D0 00000000 */  nop
    /* FC984 800ED9D4 45020012 */  bc1fl      .L800EDA20_FC9D0
    /* FC988 800ED9D8 8E090404 */   lw        $t1, 0x404($s0)
    /* FC98C 800ED9DC 8E190404 */  lw         $t9, 0x404($s0)
    /* FC990 800ED9E0 8F380E50 */  lw         $t8, 0xE50($t9)
    /* FC994 800ED9E4 13000006 */  beqz       $t8, .L800EDA00_FC9B0
    /* FC998 800ED9E8 00000000 */   nop
    /* FC99C 800ED9EC 0C03AE6D */  jal        func_800EB9B4_FA964
    /* FC9A0 800ED9F0 02002025 */   or        $a0, $s0, $zero
    /* FC9A4 800ED9F4 24010003 */  addiu      $at, $zero, 0x3
    /* FC9A8 800ED9F8 54410035 */  bnel       $v0, $at, .L800EDAD0_FCA80
    /* FC9AC 800ED9FC 8FAF00B0 */   lw        $t7, 0xB0($sp)
  .L800EDA00_FC9B0:
    /* FC9B0 800EDA00 0C0054F6 */  jal        func_800153D8_15FD8
    /* FC9B4 800EDA04 24040033 */   addiu     $a0, $zero, 0x33
    /* FC9B8 800EDA08 3C018014 */  lui        $at, %hi(D_801444B8)
    /* FC9BC 800EDA0C C42444B8 */  lwc1       $f4, %lo(D_801444B8)($at)
    /* FC9C0 800EDA10 3C018016 */  lui        $at, %hi(D_8015EA30)
    /* FC9C4 800EDA14 1000002D */  b          .L800EDACC_FCA7C
    /* FC9C8 800EDA18 E424EA30 */   swc1      $f4, %lo(D_8015EA30)($at)
    /* FC9CC 800EDA1C 8E090404 */  lw         $t1, 0x404($s0)
  .L800EDA20_FC9D0:
    /* FC9D0 800EDA20 02002025 */  or         $a0, $s0, $zero
    /* FC9D4 800EDA24 24050023 */  addiu      $a1, $zero, 0x23
    /* FC9D8 800EDA28 8D2E0E50 */  lw         $t6, 0xE50($t1)
    /* FC9DC 800EDA2C 00003025 */  or         $a2, $zero, $zero
    /* FC9E0 800EDA30 15C00003 */  bnez       $t6, .L800EDA40_FC9F0
    /* FC9E4 800EDA34 00000000 */   nop
    /* FC9E8 800EDA38 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FC9EC 800EDA3C 24070000 */   addiu     $a3, $zero, 0x0
  .L800EDA40_FC9F0:
    /* FC9F0 800EDA40 3C018016 */  lui        $at, %hi(D_8015EA2C)
    /* FC9F4 800EDA44 C428EA2C */  lwc1       $f8, %lo(D_8015EA2C)($at)
    /* FC9F8 800EDA48 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* FC9FC 800EDA4C 44815800 */  mtc1       $at, $f11
    /* FCA00 800EDA50 44805000 */  mtc1       $zero, $f10
    /* FCA04 800EDA54 460041A1 */  cvt.d.s    $f6, $f8
    /* FCA08 800EDA58 3C018005 */  lui        $at, %hi(D_80048188)
    /* FCA0C 800EDA5C 4626503E */  c.le.d     $f10, $f6
    /* FCA10 800EDA60 02002025 */  or         $a0, $s0, $zero
    /* FCA14 800EDA64 24050023 */  addiu      $a1, $zero, 0x23
    /* FCA18 800EDA68 00003025 */  or         $a2, $zero, $zero
    /* FCA1C 800EDA6C 45000017 */  bc1f       .L800EDACC_FCA7C
    /* FCA20 800EDA70 24070000 */   addiu     $a3, $zero, 0x0
    /* FCA24 800EDA74 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FCA28 800EDA78 AC208188 */   sw        $zero, %lo(D_80048188)($at)
    /* FCA2C 800EDA7C 10000014 */  b          .L800EDAD0_FCA80
    /* FCA30 800EDA80 8FAF00B0 */   lw        $t7, 0xB0($sp)
  .L800EDA84_FCA34:
    /* FCA34 800EDA84 8E0A0404 */  lw         $t2, 0x404($s0)
  .L800EDA88_FCA38:
    /* FCA38 800EDA88 3C0C8015 */  lui        $t4, %hi(D_80157F68)
    /* FCA3C 800EDA8C 8D4B0E50 */  lw         $t3, 0xE50($t2)
    /* FCA40 800EDA90 5560000F */  bnel       $t3, $zero, .L800EDAD0_FCA80
    /* FCA44 800EDA94 8FAF00B0 */   lw        $t7, 0xB0($sp)
    /* FCA48 800EDA98 858C7F68 */  lh         $t4, %lo(D_80157F68)($t4)
    /* FCA4C 800EDA9C 02002025 */  or         $a0, $s0, $zero
    /* FCA50 800EDAA0 24050023 */  addiu      $a1, $zero, 0x23
    /* FCA54 800EDAA4 1D800007 */  bgtz       $t4, .L800EDAC4_FCA74
    /* FCA58 800EDAA8 00003025 */   or        $a2, $zero, $zero
    /* FCA5C 800EDAAC 240D0006 */  addiu      $t5, $zero, 0x6
    /* FCA60 800EDAB0 3C018005 */  lui        $at, %hi(gameplayMode)
    /* FCA64 800EDAB4 AC2D2ADC */  sw         $t5, %lo(gameplayMode)($at)
    /* FCA68 800EDAB8 3C018005 */  lui        $at, %hi(D_80048188)
    /* FCA6C 800EDABC 10000003 */  b          .L800EDACC_FCA7C
    /* FCA70 800EDAC0 AC208188 */   sw        $zero, %lo(D_80048188)($at)
  .L800EDAC4_FCA74:
    /* FCA74 800EDAC4 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FCA78 800EDAC8 24070000 */   addiu     $a3, $zero, 0x0
  .L800EDACC_FCA7C:
    /* FCA7C 800EDACC 8FAF00B0 */  lw         $t7, 0xB0($sp)
  .L800EDAD0_FCA80:
    /* FCA80 800EDAD0 3C018005 */  lui        $at, %hi(D_80048188)
    /* FCA84 800EDAD4 3C098005 */  lui        $t1, %hi(D_80052540)
    /* FCA88 800EDAD8 95F90020 */  lhu        $t9, 0x20($t7)
    /* FCA8C 800EDADC 3C0D8005 */  lui        $t5, %hi(D_80048188)
    /* FCA90 800EDAE0 33381000 */  andi       $t8, $t9, 0x1000
    /* FCA94 800EDAE4 13000002 */  beqz       $t8, .L800EDAF0_FCAA0
    /* FCA98 800EDAE8 00000000 */   nop
    /* FCA9C 800EDAEC AC208188 */  sw         $zero, %lo(D_80048188)($at)
  .L800EDAF0_FCAA0:
    /* FCAA0 800EDAF0 8D292540 */  lw         $t1, %lo(D_80052540)($t1)
    /* FCAA4 800EDAF4 3C0A8005 */  lui        $t2, %hi(D_80050AE0)
    /* FCAA8 800EDAF8 3C018005 */  lui        $at, %hi(D_80048188)
    /* FCAAC 800EDAFC 00097080 */  sll        $t6, $t1, 2
    /* FCAB0 800EDB00 01C97023 */  subu       $t6, $t6, $t1
    /* FCAB4 800EDB04 000E70C0 */  sll        $t6, $t6, 3
    /* FCAB8 800EDB08 014E5021 */  addu       $t2, $t2, $t6
    /* FCABC 800EDB0C 8D4A0AE0 */  lw         $t2, %lo(D_80050AE0)($t2)
    /* FCAC0 800EDB10 000A5B02 */  srl        $t3, $t2, 12
    /* FCAC4 800EDB14 316C0004 */  andi       $t4, $t3, 0x4
    /* FCAC8 800EDB18 11800002 */  beqz       $t4, .L800EDB24_FCAD4
    /* FCACC 800EDB1C 00000000 */   nop
    /* FCAD0 800EDB20 AC208188 */  sw         $zero, %lo(D_80048188)($at)
  .L800EDB24_FCAD4:
    /* FCAD4 800EDB24 8DAD8188 */  lw         $t5, %lo(D_80048188)($t5)
    /* FCAD8 800EDB28 8FAF00B0 */  lw         $t7, 0xB0($sp)
    /* FCADC 800EDB2C 15A00231 */  bnez       $t5, .L800EE3F4_FD3A4
    /* FCAE0 800EDB30 01A01025 */   or        $v0, $t5, $zero
    /* FCAE4 800EDB34 85F9001C */  lh         $t9, 0x1C($t7)
    /* FCAE8 800EDB38 24180001 */  addiu      $t8, $zero, 0x1
    /* FCAEC 800EDB3C 1F20022D */  bgtz       $t9, .L800EE3F4_FD3A4
    /* FCAF0 800EDB40 00000000 */   nop
    /* FCAF4 800EDB44 A5F8001C */  sh         $t8, 0x1C($t7)
    /* FCAF8 800EDB48 1000022A */  b          .L800EE3F4_FD3A4
    /* FCAFC 800EDB4C 01A01025 */   or        $v0, $t5, $zero
    /* FCB00 800EDB50 3C098015 */  lui        $t1, %hi(D_80157E82)
    /* FCB04 800EDB54 85297E82 */  lh         $t1, %lo(D_80157E82)($t1)
    /* FCB08 800EDB58 3C0A8005 */  lui        $t2, %hi(D_8004DCEC)
    /* FCB0C 800EDB5C 3C018005 */  lui        $at, %hi(D_80048188)
    /* FCB10 800EDB60 00097080 */  sll        $t6, $t1, 2
    /* FCB14 800EDB64 01C97023 */  subu       $t6, $t6, $t1
    /* FCB18 800EDB68 000E70C0 */  sll        $t6, $t6, 3
    /* FCB1C 800EDB6C 01C97023 */  subu       $t6, $t6, $t1
    /* FCB20 800EDB70 000E7080 */  sll        $t6, $t6, 2
    /* FCB24 800EDB74 014E5021 */  addu       $t2, $t2, $t6
    /* FCB28 800EDB78 854ADCEC */  lh         $t2, %lo(D_8004DCEC)($t2)
    /* FCB2C 800EDB7C 5D400003 */  bgtzl      $t2, .L800EDB8C_FCB3C
    /* FCB30 800EDB80 850B0004 */   lh        $t3, 0x4($t0)
    /* FCB34 800EDB84 AC208188 */  sw         $zero, %lo(D_80048188)($at)
    /* FCB38 800EDB88 850B0004 */  lh         $t3, 0x4($t0)
  .L800EDB8C_FCB3C:
    /* FCB3C 800EDB8C 8FB800B0 */  lw         $t8, 0xB0($sp)
    /* FCB40 800EDB90 000B6040 */  sll        $t4, $t3, 1
    /* FCB44 800EDB94 010CC821 */  addu       $t9, $t0, $t4
    /* FCB48 800EDB98 87250012 */  lh         $a1, 0x12($t9)
    /* FCB4C 800EDB9C 870F000E */  lh         $t7, 0xE($t8)
    /* FCB50 800EDBA0 30A9FFFF */  andi       $t1, $a1, 0xFFFF
    /* FCB54 800EDBA4 31EDFFFF */  andi       $t5, $t7, 0xFFFF
    /* FCB58 800EDBA8 51A9000A */  beql       $t5, $t1, .L800EDBD4_FCB84
    /* FCB5C 800EDBAC 8E0E040C */   lw        $t6, 0x40C($s0)
    /* FCB60 800EDBB0 0C03AB7E */  jal        func_800EADF8_F9DA8
    /* FCB64 800EDBB4 03002025 */   or        $a0, $t8, $zero
    /* FCB68 800EDBB8 3C018015 */  lui        $at, %hi(D_801575C8)
    /* FCB6C 800EDBBC 44809000 */  mtc1       $zero, $f18
    /* FCB70 800EDBC0 AC2075C8 */  sw         $zero, %lo(D_801575C8)($at)
    /* FCB74 800EDBC4 3C018015 */  lui        $at, %hi(D_801575C4)
    /* FCB78 800EDBC8 100000DA */  b          .L800EDF34_FCEE4
    /* FCB7C 800EDBCC E43275C4 */   swc1      $f18, %lo(D_801575C4)($at)
    /* FCB80 800EDBD0 8E0E040C */  lw         $t6, 0x40C($s0)
  .L800EDBD4_FCB84:
    /* FCB84 800EDBD4 2401005B */  addiu      $at, $zero, 0x5B
    /* FCB88 800EDBD8 02002025 */  or         $a0, $s0, $zero
    /* FCB8C 800EDBDC 11C10004 */  beq        $t6, $at, .L800EDBF0_FCBA0
    /* FCB90 800EDBE0 2405005B */   addiu     $a1, $zero, 0x5B
    /* FCB94 800EDBE4 00003025 */  or         $a2, $zero, $zero
    /* FCB98 800EDBE8 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FCB9C 800EDBEC 24070000 */   addiu     $a3, $zero, 0x0
  .L800EDBF0_FCBA0:
    /* FCBA0 800EDBF0 3C0A8015 */  lui        $t2, %hi(D_801575C8)
    /* FCBA4 800EDBF4 8D4A75C8 */  lw         $t2, %lo(D_801575C8)($t2)
    /* FCBA8 800EDBF8 1540000B */  bnez       $t2, .L800EDC28_FCBD8
    /* FCBAC 800EDBFC 00000000 */   nop
    /* FCBB0 800EDC00 0C03AE6D */  jal        func_800EB9B4_FA964
    /* FCBB4 800EDC04 02002025 */   or        $a0, $s0, $zero
    /* FCBB8 800EDC08 24010005 */  addiu      $at, $zero, 0x5
    /* FCBBC 800EDC0C 14410006 */  bne        $v0, $at, .L800EDC28_FCBD8
    /* FCBC0 800EDC10 00000000 */   nop
    /* FCBC4 800EDC14 0C0054F6 */  jal        func_800153D8_15FD8
    /* FCBC8 800EDC18 240400F6 */   addiu     $a0, $zero, 0xF6
    /* FCBCC 800EDC1C 240B0001 */  addiu      $t3, $zero, 0x1
    /* FCBD0 800EDC20 3C018015 */  lui        $at, %hi(D_801575C8)
    /* FCBD4 800EDC24 AC2B75C8 */  sw         $t3, %lo(D_801575C8)($at)
  .L800EDC28_FCBD8:
    /* FCBD8 800EDC28 0C03AE6D */  jal        func_800EB9B4_FA964
    /* FCBDC 800EDC2C 02002025 */   or        $a0, $s0, $zero
    /* FCBE0 800EDC30 28410005 */  slti       $at, $v0, 0x5
    /* FCBE4 800EDC34 1420006C */  bnez       $at, .L800EDDE8_FCD98
    /* FCBE8 800EDC38 3C0C8015 */   lui       $t4, %hi(D_801575E4)
    /* FCBEC 800EDC3C 858C75E4 */  lh         $t4, %lo(D_801575E4)($t4)
    /* FCBF0 800EDC40 8FA400B0 */  lw         $a0, 0xB0($sp)
    /* FCBF4 800EDC44 3C0F8015 */  lui        $t7, %hi(D_801575E0)
    /* FCBF8 800EDC48 25EF75E0 */  addiu      $t7, $t7, %lo(D_801575E0)
    /* FCBFC 800EDC4C 000CC840 */  sll        $t9, $t4, 1
    /* FCC00 800EDC50 032F1021 */  addu       $v0, $t9, $t7
    /* FCC04 800EDC54 84490006 */  lh         $t1, 0x6($v0)
    /* FCC08 800EDC58 84830000 */  lh         $v1, 0x0($a0)
    /* FCC0C 800EDC5C 3C014018 */  lui        $at, (0x40180000 >> 16)
    /* FCC10 800EDC60 44818800 */  mtc1       $at, $f17
    /* FCC14 800EDC64 3C018015 */  lui        $at, %hi(D_801575C4)
    /* FCC18 800EDC68 0123C023 */  subu       $t8, $t1, $v1
    /* FCC1C 800EDC6C C43275C4 */  lwc1       $f18, %lo(D_801575C4)($at)
    /* FCC20 800EDC70 44984000 */  mtc1       $t8, $f8
    /* FCC24 800EDC74 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* FCC28 800EDC78 44812000 */  mtc1       $at, $f4
    /* FCC2C 800EDC7C 468041A0 */  cvt.s.w    $f6, $f8
    /* FCC30 800EDC80 44808000 */  mtc1       $zero, $f16
    /* FCC34 800EDC84 844E000A */  lh         $t6, 0xA($v0)
    /* FCC38 800EDC88 84860002 */  lh         $a2, 0x2($a0)
    /* FCC3C 800EDC8C 844B000E */  lh         $t3, 0xE($v0)
    /* FCC40 800EDC90 46049480 */  add.s      $f18, $f18, $f4
    /* FCC44 800EDC94 01C65023 */  subu       $t2, $t6, $a2
    /* FCC48 800EDC98 84870004 */  lh         $a3, 0x4($a0)
    /* FCC4C 800EDC9C 3C018015 */  lui        $at, %hi(D_801575C4)
    /* FCC50 800EDCA0 46123282 */  mul.s      $f10, $f6, $f18
    /* FCC54 800EDCA4 448A3000 */  mtc1       $t2, $f6
    /* FCC58 800EDCA8 01676023 */  subu       $t4, $t3, $a3
    /* FCC5C 800EDCAC E43275C4 */  swc1       $f18, %lo(D_801575C4)($at)
    /* FCC60 800EDCB0 46005121 */  cvt.d.s    $f4, $f10
    /* FCC64 800EDCB4 468032A0 */  cvt.s.w    $f10, $f6
    /* FCC68 800EDCB8 46302203 */  div.d      $f8, $f4, $f16
    /* FCC6C 800EDCBC 46125102 */  mul.s      $f4, $f10, $f18
    /* FCC70 800EDCC0 448C5000 */  mtc1       $t4, $f10
    /* FCC74 800EDCC4 46204020 */  cvt.s.d    $f0, $f8
    /* FCC78 800EDCC8 46002221 */  cvt.d.s    $f8, $f4
    /* FCC7C 800EDCCC 46805120 */  cvt.s.w    $f4, $f10
    /* FCC80 800EDCD0 46304183 */  div.d      $f6, $f8, $f16
    /* FCC84 800EDCD4 46122202 */  mul.s      $f8, $f4, $f18
    /* FCC88 800EDCD8 44832000 */  mtc1       $v1, $f4
    /* FCC8C 800EDCDC 462030A0 */  cvt.s.d    $f2, $f6
    /* FCC90 800EDCE0 460041A1 */  cvt.d.s    $f6, $f8
    /* FCC94 800EDCE4 46802220 */  cvt.s.w    $f8, $f4
    /* FCC98 800EDCE8 46303283 */  div.d      $f10, $f6, $f16
    /* FCC9C 800EDCEC 44863000 */  mtc1       $a2, $f6
    /* FCCA0 800EDCF0 46004380 */  add.s      $f14, $f8, $f0
    /* FCCA4 800EDCF4 44874000 */  mtc1       $a3, $f8
    /* FCCA8 800EDCF8 44057000 */  mfc1       $a1, $f14
    /* FCCAC 800EDCFC 46205320 */  cvt.s.d    $f12, $f10
    /* FCCB0 800EDD00 468032A0 */  cvt.s.w    $f10, $f6
    /* FCCB4 800EDD04 468041A0 */  cvt.s.w    $f6, $f8
    /* FCCB8 800EDD08 46025100 */  add.s      $f4, $f10, $f2
    /* FCCBC 800EDD0C 460C3280 */  add.s      $f10, $f6, $f12
    /* FCCC0 800EDD10 E7A40060 */  swc1       $f4, 0x60($sp)
    /* FCCC4 800EDD14 0C03ED13 */  jal        func_800FB44C_10A3FC
    /* FCCC8 800EDD18 E7AA005C */   swc1      $f10, 0x5C($sp)
    /* FCCCC 800EDD1C 8FA400B0 */  lw         $a0, 0xB0($sp)
    /* FCCD0 800EDD20 0C03ED1A */  jal        func_800FB468_10A418
    /* FCCD4 800EDD24 8FA50060 */   lw        $a1, 0x60($sp)
    /* FCCD8 800EDD28 8FA400B0 */  lw         $a0, 0xB0($sp)
    /* FCCDC 800EDD2C 0C03ED21 */  jal        func_800FB484_10A434
    /* FCCE0 800EDD30 8FA5005C */   lw        $a1, 0x5C($sp)
    /* FCCE4 800EDD34 3C198015 */  lui        $t9, %hi(D_80157E82)
    /* FCCE8 800EDD38 87397E82 */  lh         $t9, %lo(D_80157E82)($t9)
    /* FCCEC 800EDD3C 3C098005 */  lui        $t1, %hi(vehicleInstances)
    /* FCCF0 800EDD40 2529DCD0 */  addiu      $t1, $t1, %lo(vehicleInstances)
    /* FCCF4 800EDD44 00197880 */  sll        $t7, $t9, 2
    /* FCCF8 800EDD48 01F97823 */  subu       $t7, $t7, $t9
    /* FCCFC 800EDD4C 000F78C0 */  sll        $t7, $t7, 3
    /* FCD00 800EDD50 01F97823 */  subu       $t7, $t7, $t9
    /* FCD04 800EDD54 000F7880 */  sll        $t7, $t7, 2
    /* FCD08 800EDD58 01E91021 */  addu       $v0, $t7, $t1
    /* FCD0C 800EDD5C 9058001A */  lbu        $t8, 0x1A($v0)
    /* FCD10 800EDD60 3C0A8025 */  lui        $t2, %hi(D_80257A38)
    /* FCD14 800EDD64 C604000C */  lwc1       $f4, 0xC($s0)
    /* FCD18 800EDD68 001870C0 */  sll        $t6, $t8, 3
    /* FCD1C 800EDD6C 01D87023 */  subu       $t6, $t6, $t8
    /* FCD20 800EDD70 000E7100 */  sll        $t6, $t6, 4
    /* FCD24 800EDD74 014E5021 */  addu       $t2, $t2, $t6
    /* FCD28 800EDD78 854A7A38 */  lh         $t2, %lo(D_80257A38)($t2)
    /* FCD2C 800EDD7C 4600220D */  trunc.w.s  $f8, $f4
    /* FCD30 800EDD80 844C0002 */  lh         $t4, 0x2($v0)
    /* FCD34 800EDD84 000A5880 */  sll        $t3, $t2, 2
    /* FCD38 800EDD88 016A5823 */  subu       $t3, $t3, $t2
    /* FCD3C 800EDD8C 8FAA00B0 */  lw         $t2, 0xB0($sp)
    /* FCD40 800EDD90 000B5840 */  sll        $t3, $t3, 1
    /* FCD44 800EDD94 016C1821 */  addu       $v1, $t3, $t4
    /* FCD48 800EDD98 440E4000 */  mfc1       $t6, $f8
    /* FCD4C 800EDD9C 854B0002 */  lh         $t3, 0x2($t2)
    /* FCD50 800EDDA0 00036C00 */  sll        $t5, $v1, 16
    /* FCD54 800EDDA4 000D1C03 */  sra        $v1, $t5, 16
    /* FCD58 800EDDA8 01CB3021 */  addu       $a2, $t6, $t3
    /* FCD5C 800EDDAC 00066400 */  sll        $t4, $a2, 16
    /* FCD60 800EDDB0 000C6C03 */  sra        $t5, $t4, 16
    /* FCD64 800EDDB4 2479FF38 */  addiu      $t9, $v1, -0xC8
    /* FCD68 800EDDB8 032D082A */  slt        $at, $t9, $t5
    /* FCD6C 800EDDBC 1020000A */  beqz       $at, .L800EDDE8_FCD98
    /* FCD70 800EDDC0 246F0032 */   addiu     $t7, $v1, 0x32
    /* FCD74 800EDDC4 01AF082A */  slt        $at, $t5, $t7
    /* FCD78 800EDDC8 10200007 */  beqz       $at, .L800EDDE8_FCD98
    /* FCD7C 800EDDCC 00000000 */   nop
    /* FCD80 800EDDD0 0C038D78 */  jal        func_800E35E0_F2590
    /* FCD84 800EDDD4 240400AA */   addiu     $a0, $zero, 0xAA
    /* FCD88 800EDDD8 24040032 */  addiu      $a0, $zero, 0x32
    /* FCD8C 800EDDDC 2405000F */  addiu      $a1, $zero, 0xF
    /* FCD90 800EDDE0 0C000451 */  jal        func_80001144_1D44
    /* FCD94 800EDDE4 24060005 */   addiu     $a2, $zero, 0x5
  .L800EDDE8_FCD98:
    /* FCD98 800EDDE8 3C018015 */  lui        $at, %hi(D_801575C4)
    /* FCD9C 800EDDEC C43275C4 */  lwc1       $f18, %lo(D_801575C4)($at)
    /* FCDA0 800EDDF0 3C014018 */  lui        $at, (0x40180000 >> 16)
    /* FCDA4 800EDDF4 44813800 */  mtc1       $at, $f7
    /* FCDA8 800EDDF8 44803000 */  mtc1       $zero, $f6
    /* FCDAC 800EDDFC 460092A1 */  cvt.d.s    $f10, $f18
    /* FCDB0 800EDE00 3C098015 */  lui        $t1, %hi(D_801575E4)
    /* FCDB4 800EDE04 462A3032 */  c.eq.d     $f6, $f10
    /* FCDB8 800EDE08 00000000 */  nop
    /* FCDBC 800EDE0C 45020043 */  bc1fl      .L800EDF1C_FCECC
    /* FCDC0 800EDE10 8FB900B0 */   lw        $t9, 0xB0($sp)
    /* FCDC4 800EDE14 852975E4 */  lh         $t1, %lo(D_801575E4)($t1)
    /* FCDC8 800EDE18 3C0A8015 */  lui        $t2, %hi(D_801575E6)
    /* FCDCC 800EDE1C 8FA400B0 */  lw         $a0, 0xB0($sp)
    /* FCDD0 800EDE20 0009C040 */  sll        $t8, $t1, 1
    /* FCDD4 800EDE24 01585021 */  addu       $t2, $t2, $t8
    /* FCDD8 800EDE28 854A75E6 */  lh         $t2, %lo(D_801575E6)($t2)
    /* FCDDC 800EDE2C 448A2000 */  mtc1       $t2, $f4
    /* FCDE0 800EDE30 00000000 */  nop
    /* FCDE4 800EDE34 46802120 */  cvt.s.w    $f4, $f4
    /* FCDE8 800EDE38 44052000 */  mfc1       $a1, $f4
    /* FCDEC 800EDE3C 0C03ED13 */  jal        func_800FB44C_10A3FC
    /* FCDF0 800EDE40 00000000 */   nop
    /* FCDF4 800EDE44 3C0E8015 */  lui        $t6, %hi(D_801575E4)
    /* FCDF8 800EDE48 85CE75E4 */  lh         $t6, %lo(D_801575E4)($t6)
    /* FCDFC 800EDE4C 3C0C8015 */  lui        $t4, %hi(D_801575EE)
    /* FCE00 800EDE50 8FA400B0 */  lw         $a0, 0xB0($sp)
    /* FCE04 800EDE54 000E5840 */  sll        $t3, $t6, 1
    /* FCE08 800EDE58 018B6021 */  addu       $t4, $t4, $t3
    /* FCE0C 800EDE5C 858C75EE */  lh         $t4, %lo(D_801575EE)($t4)
    /* FCE10 800EDE60 448C4000 */  mtc1       $t4, $f8
    /* FCE14 800EDE64 00000000 */  nop
    /* FCE18 800EDE68 46804220 */  cvt.s.w    $f8, $f8
    /* FCE1C 800EDE6C 44054000 */  mfc1       $a1, $f8
    /* FCE20 800EDE70 0C03ED21 */  jal        func_800FB484_10A434
    /* FCE24 800EDE74 00000000 */   nop
    /* FCE28 800EDE78 3C018005 */  lui        $at, %hi(D_80048188)
    /* FCE2C 800EDE7C AC208188 */  sw         $zero, %lo(D_80048188)($at)
    /* FCE30 800EDE80 3C018005 */  lui        $at, %hi(D_8004818C)
    /* FCE34 800EDE84 AC20818C */  sw         $zero, %lo(D_8004818C)($at)
    /* FCE38 800EDE88 02002025 */  or         $a0, $s0, $zero
    /* FCE3C 800EDE8C 24050023 */  addiu      $a1, $zero, 0x23
    /* FCE40 800EDE90 00003025 */  or         $a2, $zero, $zero
    /* FCE44 800EDE94 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FCE48 800EDE98 24070000 */   addiu     $a3, $zero, 0x0
    /* FCE4C 800EDE9C 3C048015 */  lui        $a0, %hi(D_80157E80)
    /* FCE50 800EDEA0 3C058015 */  lui        $a1, %hi(D_80157E82)
    /* FCE54 800EDEA4 84A57E82 */  lh         $a1, %lo(D_80157E82)($a1)
    /* FCE58 800EDEA8 0C03F544 */  jal        func_800FD510_10C4C0
    /* FCE5C 800EDEAC 84847E80 */   lh        $a0, %lo(D_80157E80)($a0)
    /* FCE60 800EDEB0 3C048015 */  lui        $a0, %hi(D_80157E84)
    /* FCE64 800EDEB4 0C03F70C */  jal        func_800FDC30_10CBE0
    /* FCE68 800EDEB8 84847E84 */   lh        $a0, %lo(D_80157E84)($a0)
    /* FCE6C 800EDEBC 8FAD00B0 */  lw         $t5, 0xB0($sp)
    /* FCE70 800EDEC0 240900C8 */  addiu      $t1, $zero, 0xC8
    /* FCE74 800EDEC4 241800C8 */  addiu      $t8, $zero, 0xC8
    /* FCE78 800EDEC8 85B90000 */  lh         $t9, 0x0($t5)
    /* FCE7C 800EDECC 240A00C8 */  addiu      $t2, $zero, 0xC8
    /* FCE80 800EDED0 27AE0078 */  addiu      $t6, $sp, 0x78
    /* FCE84 800EDED4 A7B9007C */  sh         $t9, 0x7C($sp)
    /* FCE88 800EDED8 85AF0004 */  lh         $t7, 0x4($t5)
    /* FCE8C 800EDEDC 240B0034 */  addiu      $t3, $zero, 0x34
    /* FCE90 800EDEE0 240C0007 */  addiu      $t4, $zero, 0x7
    /* FCE94 800EDEE4 A3A90078 */  sb         $t1, 0x78($sp)
    /* FCE98 800EDEE8 A3B80079 */  sb         $t8, 0x79($sp)
    /* FCE9C 800EDEEC A3AA007A */  sb         $t2, 0x7A($sp)
    /* FCEA0 800EDEF0 AFAC0018 */  sw         $t4, 0x18($sp)
    /* FCEA4 800EDEF4 AFAB0014 */  sw         $t3, 0x14($sp)
    /* FCEA8 800EDEF8 AFA0001C */  sw         $zero, 0x1C($sp)
    /* FCEAC 800EDEFC AFAE0010 */  sw         $t6, 0x10($sp)
    /* FCEB0 800EDF00 27A4007C */  addiu      $a0, $sp, 0x7C
    /* FCEB4 800EDF04 24050025 */  addiu      $a1, $zero, 0x25
    /* FCEB8 800EDF08 240600D3 */  addiu      $a2, $zero, 0xD3
    /* FCEBC 800EDF0C 24070084 */  addiu      $a3, $zero, 0x84
    /* FCEC0 800EDF10 0C02E66A */  jal        func_800B99A8_C8958
    /* FCEC4 800EDF14 A7AF007E */   sh        $t7, 0x7E($sp)
    /* FCEC8 800EDF18 8FB900B0 */  lw         $t9, 0xB0($sp)
  .L800EDF1C_FCECC:
    /* FCECC 800EDF1C 44803000 */  mtc1       $zero, $f6
    /* FCED0 800EDF20 44805000 */  mtc1       $zero, $f10
    /* FCED4 800EDF24 44802000 */  mtc1       $zero, $f4
    /* FCED8 800EDF28 E7260030 */  swc1       $f6, 0x30($t9)
    /* FCEDC 800EDF2C E72A0034 */  swc1       $f10, 0x34($t9)
    /* FCEE0 800EDF30 E7240038 */  swc1       $f4, 0x38($t9)
  .L800EDF34_FCEE4:
    /* FCEE4 800EDF34 3C028005 */  lui        $v0, %hi(D_80048188)
    /* FCEE8 800EDF38 1000012E */  b          .L800EE3F4_FD3A4
    /* FCEEC 800EDF3C 8C428188 */   lw        $v0, %lo(D_80048188)($v0)
    /* FCEF0 800EDF40 8E03040C */  lw         $v1, 0x40C($s0)
    /* FCEF4 800EDF44 2401005B */  addiu      $at, $zero, 0x5B
    /* FCEF8 800EDF48 10610017 */  beq        $v1, $at, .L800EDFA8_FCF58
    /* FCEFC 800EDF4C 2401005C */   addiu     $at, $zero, 0x5C
    /* FCF00 800EDF50 10610015 */  beq        $v1, $at, .L800EDFA8_FCF58
    /* FCF04 800EDF54 3C0D8015 */   lui       $t5, %hi(D_80157A28)
    /* FCF08 800EDF58 8DAD7A28 */  lw         $t5, %lo(D_80157A28)($t5)
    /* FCF0C 800EDF5C 3C018015 */  lui        $at, %hi(D_801575C8)
    /* FCF10 800EDF60 44809000 */  mtc1       $zero, $f18
    /* FCF14 800EDF64 AC2075C8 */  sw         $zero, %lo(D_801575C8)($at)
    /* FCF18 800EDF68 3C018015 */  lui        $at, %hi(D_801575C4)
    /* FCF1C 800EDF6C 31AF0004 */  andi       $t7, $t5, 0x4
    /* FCF20 800EDF70 11E00008 */  beqz       $t7, .L800EDF94_FCF44
    /* FCF24 800EDF74 E43275C4 */   swc1      $f18, %lo(D_801575C4)($at)
    /* FCF28 800EDF78 02002025 */  or         $a0, $s0, $zero
    /* FCF2C 800EDF7C 2405005C */  addiu      $a1, $zero, 0x5C
    /* FCF30 800EDF80 24060008 */  addiu      $a2, $zero, 0x8
    /* FCF34 800EDF84 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FCF38 800EDF88 24070000 */   addiu     $a3, $zero, 0x0
    /* FCF3C 800EDF8C 10000006 */  b          .L800EDFA8_FCF58
    /* FCF40 800EDF90 00000000 */   nop
  .L800EDF94_FCF44:
    /* FCF44 800EDF94 02002025 */  or         $a0, $s0, $zero
    /* FCF48 800EDF98 2405005B */  addiu      $a1, $zero, 0x5B
    /* FCF4C 800EDF9C 24060008 */  addiu      $a2, $zero, 0x8
    /* FCF50 800EDFA0 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FCF54 800EDFA4 24070000 */   addiu     $a3, $zero, 0x0
  .L800EDFA8_FCF58:
    /* FCF58 800EDFA8 3C098015 */  lui        $t1, %hi(D_801575C8)
    /* FCF5C 800EDFAC 8D2975C8 */  lw         $t1, %lo(D_801575C8)($t1)
    /* FCF60 800EDFB0 1520000B */  bnez       $t1, .L800EDFE0_FCF90
    /* FCF64 800EDFB4 00000000 */   nop
    /* FCF68 800EDFB8 0C03AE6D */  jal        func_800EB9B4_FA964
    /* FCF6C 800EDFBC 02002025 */   or        $a0, $s0, $zero
    /* FCF70 800EDFC0 24010005 */  addiu      $at, $zero, 0x5
    /* FCF74 800EDFC4 14410006 */  bne        $v0, $at, .L800EDFE0_FCF90
    /* FCF78 800EDFC8 00000000 */   nop
    /* FCF7C 800EDFCC 0C0054F6 */  jal        func_800153D8_15FD8
    /* FCF80 800EDFD0 240400F6 */   addiu     $a0, $zero, 0xF6
    /* FCF84 800EDFD4 24180001 */  addiu      $t8, $zero, 0x1
    /* FCF88 800EDFD8 3C018015 */  lui        $at, %hi(D_801575C8)
    /* FCF8C 800EDFDC AC3875C8 */  sw         $t8, %lo(D_801575C8)($at)
  .L800EDFE0_FCF90:
    /* FCF90 800EDFE0 0C03AE6D */  jal        func_800EB9B4_FA964
    /* FCF94 800EDFE4 02002025 */   or        $a0, $s0, $zero
    /* FCF98 800EDFE8 28410005 */  slti       $at, $v0, 0x5
    /* FCF9C 800EDFEC 1420003C */  bnez       $at, .L800EE0E0_FD090
    /* FCFA0 800EDFF0 3C0A8005 */   lui       $t2, %hi(D_80052B1C)
    /* FCFA4 800EDFF4 3C088015 */  lui        $t0, %hi(D_801575E0)
    /* FCFA8 800EDFF8 250875E0 */  addiu      $t0, $t0, %lo(D_801575E0)
    /* FCFAC 800EDFFC 850A0004 */  lh         $t2, 0x4($t0)
    /* FCFB0 800EE000 8FA400B0 */  lw         $a0, 0xB0($sp)
    /* FCFB4 800EE004 3C014038 */  lui        $at, (0x40380000 >> 16)
    /* FCFB8 800EE008 000A7040 */  sll        $t6, $t2, 1
    /* FCFBC 800EE00C 010E1021 */  addu       $v0, $t0, $t6
    /* FCFC0 800EE010 844C0006 */  lh         $t4, 0x6($v0)
    /* FCFC4 800EE014 84830000 */  lh         $v1, 0x0($a0)
    /* FCFC8 800EE018 44818800 */  mtc1       $at, $f17
    /* FCFCC 800EE01C 3C018015 */  lui        $at, %hi(D_801575C4)
    /* FCFD0 800EE020 0183C823 */  subu       $t9, $t4, $v1
    /* FCFD4 800EE024 44994000 */  mtc1       $t9, $f8
    /* FCFD8 800EE028 C43275C4 */  lwc1       $f18, %lo(D_801575C4)($at)
    /* FCFDC 800EE02C 44808000 */  mtc1       $zero, $f16
    /* FCFE0 800EE030 468041A0 */  cvt.s.w    $f6, $f8
    /* FCFE4 800EE034 844D000A */  lh         $t5, 0xA($v0)
    /* FCFE8 800EE038 84860002 */  lh         $a2, 0x2($a0)
    /* FCFEC 800EE03C 8449000E */  lh         $t1, 0xE($v0)
    /* FCFF0 800EE040 84870004 */  lh         $a3, 0x4($a0)
    /* FCFF4 800EE044 01A67823 */  subu       $t7, $t5, $a2
    /* FCFF8 800EE048 46123282 */  mul.s      $f10, $f6, $f18
    /* FCFFC 800EE04C 448F3000 */  mtc1       $t7, $f6
    /* FD000 800EE050 0127C023 */  subu       $t8, $t1, $a3
    /* FD004 800EE054 46005121 */  cvt.d.s    $f4, $f10
    /* FD008 800EE058 468032A0 */  cvt.s.w    $f10, $f6
    /* FD00C 800EE05C 46302203 */  div.d      $f8, $f4, $f16
    /* FD010 800EE060 46125102 */  mul.s      $f4, $f10, $f18
    /* FD014 800EE064 44985000 */  mtc1       $t8, $f10
    /* FD018 800EE068 46204020 */  cvt.s.d    $f0, $f8
    /* FD01C 800EE06C 46002221 */  cvt.d.s    $f8, $f4
    /* FD020 800EE070 46805120 */  cvt.s.w    $f4, $f10
    /* FD024 800EE074 46304183 */  div.d      $f6, $f8, $f16
    /* FD028 800EE078 46122202 */  mul.s      $f8, $f4, $f18
    /* FD02C 800EE07C 44832000 */  mtc1       $v1, $f4
    /* FD030 800EE080 462030A0 */  cvt.s.d    $f2, $f6
    /* FD034 800EE084 460041A1 */  cvt.d.s    $f6, $f8
    /* FD038 800EE088 46802220 */  cvt.s.w    $f8, $f4
    /* FD03C 800EE08C 46303283 */  div.d      $f10, $f6, $f16
    /* FD040 800EE090 44863000 */  mtc1       $a2, $f6
    /* FD044 800EE094 46004380 */  add.s      $f14, $f8, $f0
    /* FD048 800EE098 44874000 */  mtc1       $a3, $f8
    /* FD04C 800EE09C 44057000 */  mfc1       $a1, $f14
    /* FD050 800EE0A0 46205320 */  cvt.s.d    $f12, $f10
    /* FD054 800EE0A4 468032A0 */  cvt.s.w    $f10, $f6
    /* FD058 800EE0A8 468041A0 */  cvt.s.w    $f6, $f8
    /* FD05C 800EE0AC 46025100 */  add.s      $f4, $f10, $f2
    /* FD060 800EE0B0 460C3280 */  add.s      $f10, $f6, $f12
    /* FD064 800EE0B4 E7A40060 */  swc1       $f4, 0x60($sp)
    /* FD068 800EE0B8 0C03ED13 */  jal        func_800FB44C_10A3FC
    /* FD06C 800EE0BC E7AA005C */   swc1      $f10, 0x5C($sp)
    /* FD070 800EE0C0 8FA400B0 */  lw         $a0, 0xB0($sp)
    /* FD074 800EE0C4 0C03ED1A */  jal        func_800FB468_10A418
    /* FD078 800EE0C8 8FA50060 */   lw        $a1, 0x60($sp)
    /* FD07C 800EE0CC 8FA400B0 */  lw         $a0, 0xB0($sp)
    /* FD080 800EE0D0 0C03ED21 */  jal        func_800FB484_10A434
    /* FD084 800EE0D4 8FA5005C */   lw        $a1, 0x5C($sp)
    /* FD088 800EE0D8 10000043 */  b          .L800EE1E8_FD198
    /* FD08C 800EE0DC 00000000 */   nop
  .L800EE0E0_FD090:
    /* FD090 800EE0E0 854A2B1C */  lh         $t2, %lo(D_80052B1C)($t2)
    /* FD094 800EE0E4 3C0C8005 */  lui        $t4, %hi(vehicleInstances)
    /* FD098 800EE0E8 258CDCD0 */  addiu      $t4, $t4, %lo(vehicleInstances)
    /* FD09C 800EE0EC 000A7080 */  sll        $t6, $t2, 2
    /* FD0A0 800EE0F0 01CA7023 */  subu       $t6, $t6, $t2
    /* FD0A4 800EE0F4 000E70C0 */  sll        $t6, $t6, 3
    /* FD0A8 800EE0F8 01CA7023 */  subu       $t6, $t6, $t2
    /* FD0AC 800EE0FC 000E7080 */  sll        $t6, $t6, 2
    /* FD0B0 800EE100 01CC1021 */  addu       $v0, $t6, $t4
    /* FD0B4 800EE104 9059001A */  lbu        $t9, 0x1A($v0)
    /* FD0B8 800EE108 844A0000 */  lh         $t2, 0x0($v0)
    /* FD0BC 800EE10C 3C0F8025 */  lui        $t7, %hi(D_80257A38)
    /* FD0C0 800EE110 001968C0 */  sll        $t5, $t9, 3
    /* FD0C4 800EE114 01B96823 */  subu       $t5, $t5, $t9
    /* FD0C8 800EE118 000D6900 */  sll        $t5, $t5, 4
    /* FD0CC 800EE11C 01ED7821 */  addu       $t7, $t7, $t5
    /* FD0D0 800EE120 85EF7A38 */  lh         $t7, %lo(D_80257A38)($t7)
    /* FD0D4 800EE124 C604000C */  lwc1       $f4, 0xC($s0)
    /* FD0D8 800EE128 448A3000 */  mtc1       $t2, $f6
    /* FD0DC 800EE12C 84580002 */  lh         $t8, 0x2($v0)
    /* FD0E0 800EE130 4600220D */  trunc.w.s  $f8, $f4
    /* FD0E4 800EE134 000F4880 */  sll        $t1, $t7, 2
    /* FD0E8 800EE138 8FA400B0 */  lw         $a0, 0xB0($sp)
    /* FD0EC 800EE13C 468031A0 */  cvt.s.w    $f6, $f6
    /* FD0F0 800EE140 012F4823 */  subu       $t1, $t1, $t7
    /* FD0F4 800EE144 00094840 */  sll        $t1, $t1, 1
    /* FD0F8 800EE148 01381821 */  addu       $v1, $t1, $t8
    /* FD0FC 800EE14C 440D4000 */  mfc1       $t5, $f8
    /* FD100 800EE150 84890002 */  lh         $t1, 0x2($a0)
    /* FD104 800EE154 44053000 */  mfc1       $a1, $f6
    /* FD108 800EE158 A7A30092 */  sh         $v1, 0x92($sp)
    /* FD10C 800EE15C 01A95821 */  addu       $t3, $t5, $t1
    /* FD110 800EE160 0C03ED13 */  jal        func_800FB44C_10A3FC
    /* FD114 800EE164 A7AB0090 */   sh        $t3, 0x90($sp)
    /* FD118 800EE168 3C0E8005 */  lui        $t6, %hi(D_80052B1C)
    /* FD11C 800EE16C 85CE2B1C */  lh         $t6, %lo(D_80052B1C)($t6)
    /* FD120 800EE170 3C198005 */  lui        $t9, %hi(D_8004DCD4)
    /* FD124 800EE174 8FA400B0 */  lw         $a0, 0xB0($sp)
    /* FD128 800EE178 000E6080 */  sll        $t4, $t6, 2
    /* FD12C 800EE17C 018E6023 */  subu       $t4, $t4, $t6
    /* FD130 800EE180 000C60C0 */  sll        $t4, $t4, 3
    /* FD134 800EE184 018E6023 */  subu       $t4, $t4, $t6
    /* FD138 800EE188 000C6080 */  sll        $t4, $t4, 2
    /* FD13C 800EE18C 032CC821 */  addu       $t9, $t9, $t4
    /* FD140 800EE190 8739DCD4 */  lh         $t9, %lo(D_8004DCD4)($t9)
    /* FD144 800EE194 44995000 */  mtc1       $t9, $f10
    /* FD148 800EE198 00000000 */  nop
    /* FD14C 800EE19C 468052A0 */  cvt.s.w    $f10, $f10
    /* FD150 800EE1A0 44055000 */  mfc1       $a1, $f10
    /* FD154 800EE1A4 0C03ED21 */  jal        func_800FB484_10A434
    /* FD158 800EE1A8 00000000 */   nop
    /* FD15C 800EE1AC 87A30092 */  lh         $v1, 0x92($sp)
    /* FD160 800EE1B0 87A60090 */  lh         $a2, 0x90($sp)
    /* FD164 800EE1B4 246DFF9C */  addiu      $t5, $v1, -0x64
    /* FD168 800EE1B8 01A6082A */  slt        $at, $t5, $a2
    /* FD16C 800EE1BC 1020000A */  beqz       $at, .L800EE1E8_FD198
    /* FD170 800EE1C0 2469005A */   addiu     $t1, $v1, 0x5A
    /* FD174 800EE1C4 00C9082A */  slt        $at, $a2, $t1
    /* FD178 800EE1C8 10200007 */  beqz       $at, .L800EE1E8_FD198
    /* FD17C 800EE1CC 00000000 */   nop
    /* FD180 800EE1D0 0C038D78 */  jal        func_800E35E0_F2590
    /* FD184 800EE1D4 240400AA */   addiu     $a0, $zero, 0xAA
    /* FD188 800EE1D8 24040032 */  addiu      $a0, $zero, 0x32
    /* FD18C 800EE1DC 2405000F */  addiu      $a1, $zero, 0xF
    /* FD190 800EE1E0 0C000451 */  jal        func_80001144_1D44
    /* FD194 800EE1E4 24060005 */   addiu     $a2, $zero, 0x5
  .L800EE1E8_FD198:
    /* FD198 800EE1E8 3C018015 */  lui        $at, %hi(D_801575C4)
    /* FD19C 800EE1EC C43275C4 */  lwc1       $f18, %lo(D_801575C4)($at)
    /* FD1A0 800EE1F0 3C014038 */  lui        $at, (0x40380000 >> 16)
    /* FD1A4 800EE1F4 44812800 */  mtc1       $at, $f5
    /* FD1A8 800EE1F8 44802000 */  mtc1       $zero, $f4
    /* FD1AC 800EE1FC 46009021 */  cvt.d.s    $f0, $f18
    /* FD1B0 800EE200 3C028015 */  lui        $v0, %hi(D_801575E0)
    /* FD1B4 800EE204 46202032 */  c.eq.d     $f4, $f0
    /* FD1B8 800EE208 244275E0 */  addiu      $v0, $v0, %lo(D_801575E0)
    /* FD1BC 800EE20C 8FAB00B0 */  lw         $t3, 0xB0($sp)
    /* FD1C0 800EE210 4501000E */  bc1t       .L800EE24C_FD1FC
    /* FD1C4 800EE214 3C188022 */   lui       $t8, %hi(D_80222A70)
    /* FD1C8 800EE218 8F182A70 */  lw         $t8, %lo(D_80222A70)($t8)
    /* FD1CC 800EE21C 856F0002 */  lh         $t7, 0x2($t3)
    /* FD1D0 800EE220 030F082A */  slt        $at, $t8, $t7
    /* FD1D4 800EE224 14200065 */  bnez       $at, .L800EE3BC_FD36C
    /* FD1D8 800EE228 3C014033 */   lui       $at, (0x40330000 >> 16)
    /* FD1DC 800EE22C 44814800 */  mtc1       $at, $f9
    /* FD1E0 800EE230 44804000 */  mtc1       $zero, $f8
    /* FD1E4 800EE234 3C018015 */  lui        $at, %hi(D_801575C4)
    /* FD1E8 800EE238 4620403C */  c.lt.d     $f8, $f0
    /* FD1EC 800EE23C 00000000 */  nop
    /* FD1F0 800EE240 4502005F */  bc1fl      .L800EE3C0_FD370
    /* FD1F4 800EE244 3C013F80 */   lui       $at, (0x3F800000 >> 16)
    /* FD1F8 800EE248 E43275C4 */  swc1       $f18, %lo(D_801575C4)($at)
  .L800EE24C_FD1FC:
    /* FD1FC 800EE24C 844A0004 */  lh         $t2, 0x4($v0)
    /* FD200 800EE250 8FA400B0 */  lw         $a0, 0xB0($sp)
    /* FD204 800EE254 000A7040 */  sll        $t6, $t2, 1
    /* FD208 800EE258 004E6021 */  addu       $t4, $v0, $t6
    /* FD20C 800EE25C 85990006 */  lh         $t9, 0x6($t4)
    /* FD210 800EE260 44993000 */  mtc1       $t9, $f6
    /* FD214 800EE264 00000000 */  nop
    /* FD218 800EE268 468031A0 */  cvt.s.w    $f6, $f6
    /* FD21C 800EE26C 44053000 */  mfc1       $a1, $f6
    /* FD220 800EE270 0C03ED13 */  jal        func_800FB44C_10A3FC
    /* FD224 800EE274 00000000 */   nop
    /* FD228 800EE278 3C028015 */  lui        $v0, %hi(D_801575E0)
    /* FD22C 800EE27C 244275E0 */  addiu      $v0, $v0, %lo(D_801575E0)
    /* FD230 800EE280 844D0004 */  lh         $t5, 0x4($v0)
    /* FD234 800EE284 8FA400B0 */  lw         $a0, 0xB0($sp)
    /* FD238 800EE288 000D4840 */  sll        $t1, $t5, 1
    /* FD23C 800EE28C 00495821 */  addu       $t3, $v0, $t1
    /* FD240 800EE290 8578000A */  lh         $t8, 0xA($t3)
    /* FD244 800EE294 44985000 */  mtc1       $t8, $f10
    /* FD248 800EE298 00000000 */  nop
    /* FD24C 800EE29C 468052A0 */  cvt.s.w    $f10, $f10
    /* FD250 800EE2A0 44055000 */  mfc1       $a1, $f10
    /* FD254 800EE2A4 0C03ED1A */  jal        func_800FB468_10A418
    /* FD258 800EE2A8 00000000 */   nop
    /* FD25C 800EE2AC 3C0F8015 */  lui        $t7, %hi(D_801575E4)
    /* FD260 800EE2B0 85EF75E4 */  lh         $t7, %lo(D_801575E4)($t7)
    /* FD264 800EE2B4 3C0E8015 */  lui        $t6, %hi(D_801575EE)
    /* FD268 800EE2B8 8FA400B0 */  lw         $a0, 0xB0($sp)
    /* FD26C 800EE2BC 000F5040 */  sll        $t2, $t7, 1
    /* FD270 800EE2C0 01CA7021 */  addu       $t6, $t6, $t2
    /* FD274 800EE2C4 85CE75EE */  lh         $t6, %lo(D_801575EE)($t6)
    /* FD278 800EE2C8 448E2000 */  mtc1       $t6, $f4
    /* FD27C 800EE2CC 00000000 */  nop
    /* FD280 800EE2D0 46802120 */  cvt.s.w    $f4, $f4
    /* FD284 800EE2D4 44052000 */  mfc1       $a1, $f4
    /* FD288 800EE2D8 0C03ED21 */  jal        func_800FB484_10A434
    /* FD28C 800EE2DC 00000000 */   nop
    /* FD290 800EE2E0 8FAC00B0 */  lw         $t4, 0xB0($sp)
    /* FD294 800EE2E4 3C0D8022 */  lui        $t5, %hi(D_80222A70)
    /* FD298 800EE2E8 8DAD2A70 */  lw         $t5, %lo(D_80222A70)($t5)
    /* FD29C 800EE2EC 85990002 */  lh         $t9, 0x2($t4)
    /* FD2A0 800EE2F0 25A9FFDC */  addiu      $t1, $t5, -0x24
    /* FD2A4 800EE2F4 0139082A */  slt        $at, $t1, $t9
    /* FD2A8 800EE2F8 1420000E */  bnez       $at, .L800EE334_FD2E4
    /* FD2AC 800EE2FC 00000000 */   nop
    /* FD2B0 800EE300 0C03AC17 */  jal        func_800EB05C_FA00C
    /* FD2B4 800EE304 00000000 */   nop
    /* FD2B8 800EE308 3C0141C0 */  lui        $at, (0x41C00000 >> 16)
    /* FD2BC 800EE30C 44819000 */  mtc1       $at, $f18
    /* FD2C0 800EE310 3C018015 */  lui        $at, %hi(D_801575C4)
    /* FD2C4 800EE314 02002025 */  or         $a0, $s0, $zero
    /* FD2C8 800EE318 24050022 */  addiu      $a1, $zero, 0x22
    /* FD2CC 800EE31C 24060004 */  addiu      $a2, $zero, 0x4
    /* FD2D0 800EE320 24070000 */  addiu      $a3, $zero, 0x0
    /* FD2D4 800EE324 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FD2D8 800EE328 E43275C4 */   swc1      $f18, %lo(D_801575C4)($at)
    /* FD2DC 800EE32C 10000009 */  b          .L800EE354_FD304
    /* FD2E0 800EE330 8FAB00B0 */   lw        $t3, 0xB0($sp)
  .L800EE334_FD2E4:
    /* FD2E4 800EE334 0C03AC24 */  jal        func_800EB090_FA040
    /* FD2E8 800EE338 00000000 */   nop
    /* FD2EC 800EE33C 02002025 */  or         $a0, $s0, $zero
    /* FD2F0 800EE340 24050023 */  addiu      $a1, $zero, 0x23
    /* FD2F4 800EE344 00003025 */  or         $a2, $zero, $zero
    /* FD2F8 800EE348 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FD2FC 800EE34C 24070000 */   addiu     $a3, $zero, 0x0
    /* FD300 800EE350 8FAB00B0 */  lw         $t3, 0xB0($sp)
  .L800EE354_FD304:
    /* FD304 800EE354 3C018005 */  lui        $at, %hi(D_80048188)
    /* FD308 800EE358 AC208188 */  sw         $zero, %lo(D_80048188)($at)
    /* FD30C 800EE35C 85780000 */  lh         $t8, 0x0($t3)
    /* FD310 800EE360 240A00C8 */  addiu      $t2, $zero, 0xC8
    /* FD314 800EE364 240E00C8 */  addiu      $t6, $zero, 0xC8
    /* FD318 800EE368 A7B8007C */  sh         $t8, 0x7C($sp)
    /* FD31C 800EE36C 856F0004 */  lh         $t7, 0x4($t3)
    /* FD320 800EE370 240C00C8 */  addiu      $t4, $zero, 0xC8
    /* FD324 800EE374 27AD0078 */  addiu      $t5, $sp, 0x78
    /* FD328 800EE378 24190034 */  addiu      $t9, $zero, 0x34
    /* FD32C 800EE37C 24090007 */  addiu      $t1, $zero, 0x7
    /* FD330 800EE380 A3AA0078 */  sb         $t2, 0x78($sp)
    /* FD334 800EE384 A3AE0079 */  sb         $t6, 0x79($sp)
    /* FD338 800EE388 A3AC007A */  sb         $t4, 0x7A($sp)
    /* FD33C 800EE38C AFA90018 */  sw         $t1, 0x18($sp)
    /* FD340 800EE390 AFB90014 */  sw         $t9, 0x14($sp)
    /* FD344 800EE394 AFAD0010 */  sw         $t5, 0x10($sp)
    /* FD348 800EE398 AFA0001C */  sw         $zero, 0x1C($sp)
    /* FD34C 800EE39C 27A4007C */  addiu      $a0, $sp, 0x7C
    /* FD350 800EE3A0 24050025 */  addiu      $a1, $zero, 0x25
    /* FD354 800EE3A4 240600D3 */  addiu      $a2, $zero, 0xD3
    /* FD358 800EE3A8 24070084 */  addiu      $a3, $zero, 0x84
    /* FD35C 800EE3AC 0C02E66A */  jal        func_800B99A8_C8958
    /* FD360 800EE3B0 A7AF007E */   sh        $t7, 0x7E($sp)
    /* FD364 800EE3B4 3C018015 */  lui        $at, %hi(D_801575C4)
    /* FD368 800EE3B8 C43275C4 */  lwc1       $f18, %lo(D_801575C4)($at)
  .L800EE3BC_FD36C:
    /* FD36C 800EE3BC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
  .L800EE3C0_FD370:
    /* FD370 800EE3C0 8FB800B0 */  lw         $t8, 0xB0($sp)
    /* FD374 800EE3C4 44812000 */  mtc1       $at, $f4
    /* FD378 800EE3C8 44804000 */  mtc1       $zero, $f8
    /* FD37C 800EE3CC 44803000 */  mtc1       $zero, $f6
    /* FD380 800EE3D0 44805000 */  mtc1       $zero, $f10
    /* FD384 800EE3D4 46049480 */  add.s      $f18, $f18, $f4
    /* FD388 800EE3D8 E7080030 */  swc1       $f8, 0x30($t8)
    /* FD38C 800EE3DC E7060034 */  swc1       $f6, 0x34($t8)
    /* FD390 800EE3E0 E70A0038 */  swc1       $f10, 0x38($t8)
    /* FD394 800EE3E4 3C018015 */  lui        $at, %hi(D_801575C4)
    /* FD398 800EE3E8 3C028005 */  lui        $v0, %hi(D_80048188)
    /* FD39C 800EE3EC 8C428188 */  lw         $v0, %lo(D_80048188)($v0)
    /* FD3A0 800EE3F0 E43275C4 */  swc1       $f18, %lo(D_801575C4)($at)
  .L800EE3F4_FD3A4:
    /* FD3A4 800EE3F4 544002EC */  bnel       $v0, $zero, .L800EEFA8_FDF58
    /* FD3A8 800EE3F8 02002025 */   or        $a0, $s0, $zero
    /* FD3AC 800EE3FC 0C04D866 */  jal        func_80136198_145148
    /* FD3B0 800EE400 00002025 */   or        $a0, $zero, $zero
    /* FD3B4 800EE404 3C048015 */  lui        $a0, %hi(D_80157A28)
    /* FD3B8 800EE408 8C847A28 */  lw         $a0, %lo(D_80157A28)($a0)
    /* FD3BC 800EE40C 24010010 */  addiu      $at, $zero, 0x10
    /* FD3C0 800EE410 3C0B8005 */  lui        $t3, %hi(D_80052B34)
    /* FD3C4 800EE414 30820010 */  andi       $v0, $a0, 0x10
    /* FD3C8 800EE418 50410020 */  beql       $v0, $at, .L800EE49C_FD44C
    /* FD3CC 800EE41C 24010010 */   addiu     $at, $zero, 0x10
    /* FD3D0 800EE420 8D6B2B34 */  lw         $t3, %lo(D_80052B34)($t3)
    /* FD3D4 800EE424 308A0004 */  andi       $t2, $a0, 0x4
    /* FD3D8 800EE428 3C0C8015 */  lui        $t4, %hi(D_80157A38)
    /* FD3DC 800EE42C 856F001C */  lh         $t7, 0x1C($t3)
    /* FD3E0 800EE430 3C058014 */  lui        $a1, %hi(D_8013E59C)
    /* FD3E4 800EE434 00003025 */  or         $a2, $zero, $zero
    /* FD3E8 800EE438 5DE00018 */  bgtzl      $t7, .L800EE49C_FD44C
    /* FD3EC 800EE43C 24010010 */   addiu     $at, $zero, 0x10
    /* FD3F0 800EE440 11400003 */  beqz       $t2, .L800EE450_FD400
    /* FD3F4 800EE444 240E0003 */   addiu     $t6, $zero, 0x3
    /* FD3F8 800EE448 3C018015 */  lui        $at, %hi(D_80157A38)
    /* FD3FC 800EE44C AC2E7A38 */  sw         $t6, %lo(D_80157A38)($at)
  .L800EE450_FD400:
    /* FD400 800EE450 8D8C7A38 */  lw         $t4, %lo(D_80157A38)($t4)
    /* FD404 800EE454 02002025 */  or         $a0, $s0, $zero
    /* FD408 800EE458 24070000 */  addiu      $a3, $zero, 0x0
    /* FD40C 800EE45C 000C6880 */  sll        $t5, $t4, 2
    /* FD410 800EE460 00AD2821 */  addu       $a1, $a1, $t5
    /* FD414 800EE464 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FD418 800EE468 8CA5E59C */   lw        $a1, %lo(D_8013E59C)($a1)
    /* FD41C 800EE46C 3C028015 */  lui        $v0, %hi(D_80157A28)
    /* FD420 800EE470 24427A28 */  addiu      $v0, $v0, %lo(D_80157A28)
    /* FD424 800EE474 8C590000 */  lw         $t9, 0x0($v0)
    /* FD428 800EE478 3C048014 */  lui        $a0, %hi(D_80144390)
    /* FD42C 800EE47C 24844390 */  addiu      $a0, $a0, %lo(D_80144390)
    /* FD430 800EE480 37290010 */  ori        $t1, $t9, 0x10
    /* FD434 800EE484 0C00731B */  jal        osSyncPrintf
    /* FD438 800EE488 AC490000 */   sw        $t1, 0x0($v0)
    /* FD43C 800EE48C 3C048015 */  lui        $a0, %hi(D_80157A28)
    /* FD440 800EE490 8C847A28 */  lw         $a0, %lo(D_80157A28)($a0)
    /* FD444 800EE494 30820010 */  andi       $v0, $a0, 0x10
    /* FD448 800EE498 24010010 */  addiu      $at, $zero, 0x10
  .L800EE49C_FD44C:
    /* FD44C 800EE49C 14410008 */  bne        $v0, $at, .L800EE4C0_FD470
    /* FD450 800EE4A0 8FA800B0 */   lw        $t0, 0xB0($sp)
    /* FD454 800EE4A4 8E040404 */  lw         $a0, 0x404($s0)
    /* FD458 800EE4A8 02002825 */  or         $a1, $s0, $zero
    /* FD45C 800EE4AC 24060010 */  addiu      $a2, $zero, 0x10
    /* FD460 800EE4B0 0C0033D3 */  jal        func_8000CF4C_DB4C
    /* FD464 800EE4B4 8E070410 */   lw        $a3, 0x410($s0)
    /* FD468 800EE4B8 100002F9 */  b          .L800EF0A0_FE050
    /* FD46C 800EE4BC 8FBF002C */   lw        $ra, 0x2C($sp)
  .L800EE4C0_FD470:
    /* FD470 800EE4C0 910B001A */  lbu        $t3, 0x1A($t0)
    /* FD474 800EE4C4 3C0A8025 */  lui        $t2, %hi(D_80257A3A)
    /* FD478 800EE4C8 8518001C */  lh         $t8, 0x1C($t0)
    /* FD47C 800EE4CC 000B78C0 */  sll        $t7, $t3, 3
    /* FD480 800EE4D0 01EB7823 */  subu       $t7, $t7, $t3
    /* FD484 800EE4D4 000F7900 */  sll        $t7, $t7, 4
    /* FD488 800EE4D8 014F5021 */  addu       $t2, $t2, $t7
    /* FD48C 800EE4DC 954A7A3A */  lhu        $t2, %lo(D_80257A3A)($t2)
    /* FD490 800EE4E0 44984000 */  mtc1       $t8, $f8
    /* FD494 800EE4E4 448A5000 */  mtc1       $t2, $f10
    /* FD498 800EE4E8 468041A0 */  cvt.s.w    $f6, $f8
    /* FD49C 800EE4EC 05410005 */  bgez       $t2, .L800EE504_FD4B4
    /* FD4A0 800EE4F0 46805120 */   cvt.s.w   $f4, $f10
    /* FD4A4 800EE4F4 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* FD4A8 800EE4F8 44814000 */  mtc1       $at, $f8
    /* FD4AC 800EE4FC 00000000 */  nop
    /* FD4B0 800EE500 46082100 */  add.s      $f4, $f4, $f8
  .L800EE504_FD4B4:
    /* FD4B4 800EE504 46043003 */  div.s      $f0, $f6, $f4
    /* FD4B8 800EE508 3C013FD0 */  lui        $at, (0x3FD00000 >> 16)
    /* FD4BC 800EE50C 44814800 */  mtc1       $at, $f9
    /* FD4C0 800EE510 44804000 */  mtc1       $zero, $f8
    /* FD4C4 800EE514 460002A1 */  cvt.d.s    $f10, $f0
    /* FD4C8 800EE518 4628503C */  c.lt.d     $f10, $f8
    /* FD4CC 800EE51C 00000000 */  nop
    /* FD4D0 800EE520 4500000B */  bc1f       .L800EE550_FD500
    /* FD4D4 800EE524 348E0400 */   ori       $t6, $a0, 0x400
    /* FD4D8 800EE528 3C018015 */  lui        $at, %hi(D_80157A28)
    /* FD4DC 800EE52C AC2E7A28 */  sw         $t6, %lo(D_80157A28)($at)
    /* FD4E0 800EE530 8E0C040C */  lw         $t4, 0x40C($s0)
    /* FD4E4 800EE534 24010024 */  addiu      $at, $zero, 0x24
    /* FD4E8 800EE538 15810015 */  bne        $t4, $at, .L800EE590_FD540
    /* FD4EC 800EE53C 00000000 */   nop
    /* FD4F0 800EE540 850D001C */  lh         $t5, 0x1C($t0)
    /* FD4F4 800EE544 25B90001 */  addiu      $t9, $t5, 0x1
    /* FD4F8 800EE548 10000011 */  b          .L800EE590_FD540
    /* FD4FC 800EE54C A519001C */   sh        $t9, 0x1C($t0)
  .L800EE550_FD500:
    /* FD500 800EE550 30890400 */  andi       $t1, $a0, 0x400
    /* FD504 800EE554 24010400 */  addiu      $at, $zero, 0x400
    /* FD508 800EE558 1521000D */  bne        $t1, $at, .L800EE590_FD540
    /* FD50C 800EE55C 2401FBFF */   addiu     $at, $zero, -0x401
    /* FD510 800EE560 0081C024 */  and        $t8, $a0, $at
    /* FD514 800EE564 3C018015 */  lui        $at, %hi(D_80157A28)
    /* FD518 800EE568 AC387A28 */  sw         $t8, %lo(D_80157A28)($at)
    /* FD51C 800EE56C 8E0B040C */  lw         $t3, 0x40C($s0)
    /* FD520 800EE570 24010024 */  addiu      $at, $zero, 0x24
    /* FD524 800EE574 02002025 */  or         $a0, $s0, $zero
    /* FD528 800EE578 15610005 */  bne        $t3, $at, .L800EE590_FD540
    /* FD52C 800EE57C 24050023 */   addiu     $a1, $zero, 0x23
    /* FD530 800EE580 00003025 */  or         $a2, $zero, $zero
    /* FD534 800EE584 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FD538 800EE588 24070000 */   addiu     $a3, $zero, 0x0
    /* FD53C 800EE58C 8FA800B0 */  lw         $t0, 0xB0($sp)
  .L800EE590_FD540:
    /* FD540 800EE590 3C048015 */  lui        $a0, %hi(D_80157A28)
    /* FD544 800EE594 8C847A28 */  lw         $a0, %lo(D_80157A28)($a0)
    /* FD548 800EE598 24010004 */  addiu      $at, $zero, 0x4
    /* FD54C 800EE59C 308F0004 */  andi       $t7, $a0, 0x4
    /* FD550 800EE5A0 15E1000B */  bne        $t7, $at, .L800EE5D0_FD580
    /* FD554 800EE5A4 00000000 */   nop
    /* FD558 800EE5A8 8E0C040C */  lw         $t4, 0x40C($s0)
    /* FD55C 800EE5AC 240A0002 */  addiu      $t2, $zero, 0x2
    /* FD560 800EE5B0 240E0022 */  addiu      $t6, $zero, 0x22
    /* FD564 800EE5B4 AFAA00A4 */  sw         $t2, 0xA4($sp)
    /* FD568 800EE5B8 11800019 */  beqz       $t4, .L800EE620_FD5D0
    /* FD56C 800EE5BC AFAE00A0 */   sw        $t6, 0xA0($sp)
    /* FD570 800EE5C0 850D0002 */  lh         $t5, 0x2($t0)
    /* FD574 800EE5C4 25B9FFFB */  addiu      $t9, $t5, -0x5
    /* FD578 800EE5C8 10000015 */  b          .L800EE620_FD5D0
    /* FD57C 800EE5CC A5190002 */   sh        $t9, 0x2($t0)
  .L800EE5D0_FD580:
    /* FD580 800EE5D0 3C188022 */  lui        $t8, %hi(D_80222A70)
    /* FD584 800EE5D4 8F182A70 */  lw         $t8, %lo(D_80222A70)($t8)
    /* FD588 800EE5D8 AFA000A4 */  sw         $zero, 0xA4($sp)
    /* FD58C 800EE5DC 85090002 */  lh         $t1, 0x2($t0)
    /* FD590 800EE5E0 270BFFDC */  addiu      $t3, $t8, -0x24
    /* FD594 800EE5E4 0169082A */  slt        $at, $t3, $t1
    /* FD598 800EE5E8 54200006 */  bnel       $at, $zero, .L800EE604_FD5B4
    /* FD59C 800EE5EC 308F0400 */   andi      $t7, $a0, 0x400
    /* FD5A0 800EE5F0 0C03AC17 */  jal        func_800EB05C_FA00C
    /* FD5A4 800EE5F4 00000000 */   nop
    /* FD5A8 800EE5F8 3C048015 */  lui        $a0, %hi(D_80157A28)
    /* FD5AC 800EE5FC 8C847A28 */  lw         $a0, %lo(D_80157A28)($a0)
    /* FD5B0 800EE600 308F0400 */  andi       $t7, $a0, 0x400
  .L800EE604_FD5B4:
    /* FD5B4 800EE604 24010400 */  addiu      $at, $zero, 0x400
    /* FD5B8 800EE608 15E10004 */  bne        $t7, $at, .L800EE61C_FD5CC
    /* FD5BC 800EE60C 240E0023 */   addiu     $t6, $zero, 0x23
    /* FD5C0 800EE610 240A0024 */  addiu      $t2, $zero, 0x24
    /* FD5C4 800EE614 10000002 */  b          .L800EE620_FD5D0
    /* FD5C8 800EE618 AFAA00A0 */   sw        $t2, 0xA0($sp)
  .L800EE61C_FD5CC:
    /* FD5CC 800EE61C AFAE00A0 */  sw         $t6, 0xA0($sp)
  .L800EE620_FD5D0:
    /* FD5D0 800EE620 8FAC00B4 */  lw         $t4, 0xB4($sp)
    /* FD5D4 800EE624 81820002 */  lb         $v0, 0x2($t4)
    /* FD5D8 800EE628 81830003 */  lb         $v1, 0x3($t4)
    /* FD5DC 800EE62C 00420019 */  multu      $v0, $v0
    /* FD5E0 800EE630 00006812 */  mflo       $t5
    /* FD5E4 800EE634 00000000 */  nop
    /* FD5E8 800EE638 00000000 */  nop
    /* FD5EC 800EE63C 00630019 */  multu      $v1, $v1
    /* FD5F0 800EE640 0000C812 */  mflo       $t9
    /* FD5F4 800EE644 01B9C021 */  addu       $t8, $t5, $t9
    /* FD5F8 800EE648 44983000 */  mtc1       $t8, $f6
    /* FD5FC 800EE64C 0C007650 */  jal        sqrtf
    /* FD600 800EE650 46803320 */   cvt.s.w   $f12, $f6
    /* FD604 800EE654 3C018014 */  lui        $at, %hi(D_801444C0)
    /* FD608 800EE658 D42244C0 */  ldc1       $f2, %lo(D_801444C0)($at)
    /* FD60C 800EE65C 46000121 */  cvt.d.s    $f4, $f0
    /* FD610 800EE660 E7A00074 */  swc1       $f0, 0x74($sp)
    /* FD614 800EE664 4624103C */  c.lt.d     $f2, $f4
    /* FD618 800EE668 3C048015 */  lui        $a0, %hi(D_80157A28)
    /* FD61C 800EE66C 45000004 */  bc1f       .L800EE680_FD630
    /* FD620 800EE670 3C01428C */   lui       $at, (0x428C0000 >> 16)
    /* FD624 800EE674 44815000 */  mtc1       $at, $f10
    /* FD628 800EE678 00000000 */  nop
    /* FD62C 800EE67C E7AA0074 */  swc1       $f10, 0x74($sp)
  .L800EE680_FD630:
    /* FD630 800EE680 8C847A28 */  lw         $a0, %lo(D_80157A28)($a0)
    /* FD634 800EE684 24010004 */  addiu      $at, $zero, 0x4
    /* FD638 800EE688 30830004 */  andi       $v1, $a0, 0x4
    /* FD63C 800EE68C 5061006C */  beql       $v1, $at, .L800EE840_FD7F0
    /* FD640 800EE690 C7A60074 */   lwc1      $f6, 0x74($sp)
    /* FD644 800EE694 C7A80074 */  lwc1       $f8, 0x74($sp)
    /* FD648 800EE698 3C014024 */  lui        $at, (0x40240000 >> 16)
    /* FD64C 800EE69C 44813800 */  mtc1       $at, $f7
    /* FD650 800EE6A0 44803000 */  mtc1       $zero, $f6
    /* FD654 800EE6A4 46004021 */  cvt.d.s    $f0, $f8
    /* FD658 800EE6A8 3C01403E */  lui        $at, (0x403E0000 >> 16)
    /* FD65C 800EE6AC 4626003E */  c.le.d     $f0, $f6
    /* FD660 800EE6B0 00000000 */  nop
    /* FD664 800EE6B4 45020013 */  bc1fl      .L800EE704_FD6B4
    /* FD668 800EE6B8 44817800 */   mtc1      $at, $f15
    /* FD66C 800EE6BC 3C018014 */  lui        $at, %hi(D_801444C8)
    /* FD670 800EE6C0 D42E44C8 */  ldc1       $f14, %lo(D_801444C8)($at)
    /* FD674 800EE6C4 3C018014 */  lui        $at, %hi(D_8013FC04)
    /* FD678 800EE6C8 C424FC04 */  lwc1       $f4, %lo(D_8013FC04)($at)
    /* FD67C 800EE6CC 460022A1 */  cvt.d.s    $f10, $f4
    /* FD680 800EE6D0 44802000 */  mtc1       $zero, $f4
    /* FD684 800EE6D4 462E5201 */  sub.d      $f8, $f10, $f14
    /* FD688 800EE6D8 462040A0 */  cvt.s.d    $f2, $f8
    /* FD68C 800EE6DC 4604103C */  c.lt.s     $f2, $f4
    /* FD690 800EE6E0 E422FC04 */  swc1       $f2, %lo(D_8013FC04)($at)
    /* FD694 800EE6E4 45000004 */  bc1f       .L800EE6F8_FD6A8
    /* FD698 800EE6E8 00000000 */   nop
    /* FD69C 800EE6EC 44801000 */  mtc1       $zero, $f2
    /* FD6A0 800EE6F0 3C018014 */  lui        $at, %hi(D_8013FC04)
    /* FD6A4 800EE6F4 E422FC04 */  swc1       $f2, %lo(D_8013FC04)($at)
  .L800EE6F8_FD6A8:
    /* FD6A8 800EE6F8 10000055 */  b          .L800EE850_FD800
    /* FD6AC 800EE6FC E7A200AC */   swc1      $f2, 0xAC($sp)
    /* FD6B0 800EE700 44817800 */  mtc1       $at, $f15
  .L800EE704_FD6B4:
    /* FD6B4 800EE704 44807000 */  mtc1       $zero, $f14
    /* FD6B8 800EE708 3C018014 */  lui        $at, %hi(D_8013FC04)
    /* FD6BC 800EE70C 462E003E */  c.le.d     $f0, $f14
    /* FD6C0 800EE710 00000000 */  nop
    /* FD6C4 800EE714 4500001A */  bc1f       .L800EE780_FD730
    /* FD6C8 800EE718 00000000 */   nop
    /* FD6CC 800EE71C 3C018014 */  lui        $at, %hi(D_801444D0)
    /* FD6D0 800EE720 D42C44D0 */  ldc1       $f12, %lo(D_801444D0)($at)
    /* FD6D4 800EE724 3C018014 */  lui        $at, %hi(D_8013FC04)
    /* FD6D8 800EE728 C422FC04 */  lwc1       $f2, %lo(D_8013FC04)($at)
    /* FD6DC 800EE72C 3C018014 */  lui        $at, %hi(D_801444D8)
    /* FD6E0 800EE730 46001021 */  cvt.d.s    $f0, $f2
    /* FD6E4 800EE734 4620603C */  c.lt.d     $f12, $f0
    /* FD6E8 800EE738 00000000 */  nop
    /* FD6EC 800EE73C 45020008 */  bc1fl      .L800EE760_FD710
    /* FD6F0 800EE740 462C003C */   c.lt.d    $f0, $f12
    /* FD6F4 800EE744 D42E44D8 */  ldc1       $f14, %lo(D_801444D8)($at)
    /* FD6F8 800EE748 3C018014 */  lui        $at, %hi(D_8013FC04)
    /* FD6FC 800EE74C 462E0201 */  sub.d      $f8, $f0, $f14
    /* FD700 800EE750 462040A0 */  cvt.s.d    $f2, $f8
    /* FD704 800EE754 E422FC04 */  swc1       $f2, %lo(D_8013FC04)($at)
    /* FD708 800EE758 46001021 */  cvt.d.s    $f0, $f2
    /* FD70C 800EE75C 462C003C */  c.lt.d     $f0, $f12
  .L800EE760_FD710:
    /* FD710 800EE760 3C018014 */  lui        $at, %hi(D_801444E0)
    /* FD714 800EE764 45000004 */  bc1f       .L800EE778_FD728
    /* FD718 800EE768 00000000 */   nop
    /* FD71C 800EE76C C42244E0 */  lwc1       $f2, %lo(D_801444E0)($at)
    /* FD720 800EE770 3C018014 */  lui        $at, %hi(D_8013FC04)
    /* FD724 800EE774 E422FC04 */  swc1       $f2, %lo(D_8013FC04)($at)
  .L800EE778_FD728:
    /* FD728 800EE778 10000035 */  b          .L800EE850_FD800
    /* FD72C 800EE77C E7A200AC */   swc1      $f2, 0xAC($sp)
  .L800EE780_FD730:
    /* FD730 800EE780 C422FC04 */  lwc1       $f2, %lo(D_8013FC04)($at)
    /* FD734 800EE784 462E0281 */  sub.d      $f10, $f0, $f14
    /* FD738 800EE788 3C014044 */  lui        $at, (0x40440000 >> 16)
    /* FD73C 800EE78C 44814800 */  mtc1       $at, $f9
    /* FD740 800EE790 44804000 */  mtc1       $zero, $f8
    /* FD744 800EE794 3C018014 */  lui        $at, %hi(D_801444E8)
    /* FD748 800EE798 46285183 */  div.d      $f6, $f10, $f8
    /* FD74C 800EE79C 46203320 */  cvt.s.d    $f12, $f6
    /* FD750 800EE7A0 4602603E */  c.le.s     $f12, $f2
    /* FD754 800EE7A4 00000000 */  nop
    /* FD758 800EE7A8 45020004 */  bc1fl      .L800EE7BC_FD76C
    /* FD75C 800EE7AC 460C1001 */   sub.s     $f0, $f2, $f12
    /* FD760 800EE7B0 10000003 */  b          .L800EE7C0_FD770
    /* FD764 800EE7B4 460C1001 */   sub.s     $f0, $f2, $f12
    /* FD768 800EE7B8 460C1001 */  sub.s      $f0, $f2, $f12
  .L800EE7BC_FD76C:
    /* FD76C 800EE7BC 46000007 */  neg.s      $f0, $f0
  .L800EE7C0_FD770:
    /* FD770 800EE7C0 D42E44E8 */  ldc1       $f14, %lo(D_801444E8)($at)
    /* FD774 800EE7C4 46000121 */  cvt.d.s    $f4, $f0
    /* FD778 800EE7C8 3C018014 */  lui        $at, %hi(D_8013FC04)
    /* FD77C 800EE7CC 462E203C */  c.lt.d     $f4, $f14
    /* FD780 800EE7D0 00000000 */  nop
    /* FD784 800EE7D4 45020005 */  bc1fl      .L800EE7EC_FD79C
    /* FD788 800EE7D8 4602603C */   c.lt.s    $f12, $f2
    /* FD78C 800EE7DC E42CFC04 */  swc1       $f12, %lo(D_8013FC04)($at)
    /* FD790 800EE7E0 10000014 */  b          .L800EE834_FD7E4
    /* FD794 800EE7E4 C422FC04 */   lwc1      $f2, %lo(D_8013FC04)($at)
    /* FD798 800EE7E8 4602603C */  c.lt.s     $f12, $f2
  .L800EE7EC_FD79C:
    /* FD79C 800EE7EC 00000000 */  nop
    /* FD7A0 800EE7F0 45020008 */  bc1fl      .L800EE814_FD7C4
    /* FD7A4 800EE7F4 460C103C */   c.lt.s    $f2, $f12
    /* FD7A8 800EE7F8 460012A1 */  cvt.d.s    $f10, $f2
    /* FD7AC 800EE7FC 3C018014 */  lui        $at, %hi(D_8013FC04)
    /* FD7B0 800EE800 462E5201 */  sub.d      $f8, $f10, $f14
    /* FD7B4 800EE804 462040A0 */  cvt.s.d    $f2, $f8
    /* FD7B8 800EE808 1000000A */  b          .L800EE834_FD7E4
    /* FD7BC 800EE80C E422FC04 */   swc1      $f2, %lo(D_8013FC04)($at)
    /* FD7C0 800EE810 460C103C */  c.lt.s     $f2, $f12
  .L800EE814_FD7C4:
    /* FD7C4 800EE814 00000000 */  nop
    /* FD7C8 800EE818 45000006 */  bc1f       .L800EE834_FD7E4
    /* FD7CC 800EE81C 00000000 */   nop
    /* FD7D0 800EE820 46001121 */  cvt.d.s    $f4, $f2
    /* FD7D4 800EE824 3C018014 */  lui        $at, %hi(D_8013FC04)
    /* FD7D8 800EE828 462E2280 */  add.d      $f10, $f4, $f14
    /* FD7DC 800EE82C 462050A0 */  cvt.s.d    $f2, $f10
    /* FD7E0 800EE830 E422FC04 */  swc1       $f2, %lo(D_8013FC04)($at)
  .L800EE834_FD7E4:
    /* FD7E4 800EE834 10000006 */  b          .L800EE850_FD800
    /* FD7E8 800EE838 E7A200AC */   swc1      $f2, 0xAC($sp)
    /* FD7EC 800EE83C C7A60074 */  lwc1       $f6, 0x74($sp)
  .L800EE840_FD7F0:
    /* FD7F0 800EE840 46003121 */  cvt.d.s    $f4, $f6
    /* FD7F4 800EE844 46222283 */  div.d      $f10, $f4, $f2
    /* FD7F8 800EE848 46205220 */  cvt.s.d    $f8, $f10
    /* FD7FC 800EE84C E7A800AC */  swc1       $f8, 0xAC($sp)
  .L800EE850_FD800:
    /* FD800 800EE850 8FA900B0 */  lw         $t1, 0xB0($sp)
    /* FD804 800EE854 95220020 */  lhu        $v0, 0x20($t1)
    /* FD808 800EE858 304B0002 */  andi       $t3, $v0, 0x2
    /* FD80C 800EE85C 11600035 */  beqz       $t3, .L800EE934_FD8E4
    /* FD810 800EE860 304F0800 */   andi      $t7, $v0, 0x800
    /* FD814 800EE864 55E00034 */  bnel       $t7, $zero, .L800EE938_FD8E8
    /* FD818 800EE868 304E1000 */   andi      $t6, $v0, 0x1000
    /* FD81C 800EE86C 14600031 */  bnez       $v1, .L800EE934_FD8E4
    /* FD820 800EE870 3C0A8015 */   lui       $t2, %hi(D_801575F8)
    /* FD824 800EE874 8D4A75F8 */  lw         $t2, %lo(D_801575F8)($t2)
    /* FD828 800EE878 3C028015 */  lui        $v0, %hi(D_801575D8)
    /* FD82C 800EE87C 3C018015 */  lui        $at, %hi(D_801575F8)
    /* FD830 800EE880 254E0001 */  addiu      $t6, $t2, 0x1
    /* FD834 800EE884 244275D8 */  addiu      $v0, $v0, %lo(D_801575D8)
    /* FD838 800EE888 AC2E75F8 */  sw         $t6, %lo(D_801575F8)($at)
    /* FD83C 800EE88C 8C4C0000 */  lw         $t4, 0x0($v0)
    /* FD840 800EE890 24010004 */  addiu      $at, $zero, 0x4
    /* FD844 800EE894 258D0001 */  addiu      $t5, $t4, 0x1
    /* FD848 800EE898 15A1004C */  bne        $t5, $at, .L800EE9CC_FD97C
    /* FD84C 800EE89C AC4D0000 */   sw        $t5, 0x0($v0)
    /* FD850 800EE8A0 8FB800B0 */  lw         $t8, 0xB0($sp)
    /* FD854 800EE8A4 44803000 */  mtc1       $zero, $f6
    /* FD858 800EE8A8 3C0B8015 */  lui        $t3, %hi(D_80157A2C)
    /* FD85C 800EE8AC C7040034 */  lwc1       $f4, 0x34($t8)
    /* FD860 800EE8B0 4604303C */  c.lt.s     $f6, $f4
    /* FD864 800EE8B4 00000000 */  nop
    /* FD868 800EE8B8 45020045 */  bc1fl      .L800EE9D0_FD980
    /* FD86C 800EE8BC 308D0002 */   andi      $t5, $a0, 0x2
    /* FD870 800EE8C0 8709000E */  lh         $t1, 0xE($t8)
    /* FD874 800EE8C4 856B7A2C */  lh         $t3, %lo(D_80157A2C)($t3)
    /* FD878 800EE8C8 02002025 */  or         $a0, $s0, $zero
    /* FD87C 800EE8CC 24050009 */  addiu      $a1, $zero, 0x9
    /* FD880 800EE8D0 012B1023 */  subu       $v0, $t1, $t3
    /* FD884 800EE8D4 00027C00 */  sll        $t7, $v0, 16
    /* FD888 800EE8D8 000F5403 */  sra        $t2, $t7, 16
    /* FD88C 800EE8DC 000A1823 */  negu       $v1, $t2
    /* FD890 800EE8E0 006A082A */  slt        $at, $v1, $t2
    /* FD894 800EE8E4 10200003 */  beqz       $at, .L800EE8F4_FD8A4
    /* FD898 800EE8E8 00603825 */   or        $a3, $v1, $zero
    /* FD89C 800EE8EC 10000001 */  b          .L800EE8F4_FD8A4
    /* FD8A0 800EE8F0 01403825 */   or        $a3, $t2, $zero
  .L800EE8F4_FD8A4:
    /* FD8A4 800EE8F4 28E14000 */  slti       $at, $a3, 0x4000
    /* FD8A8 800EE8F8 10200009 */  beqz       $at, .L800EE920_FD8D0
    /* FD8AC 800EE8FC 00003025 */   or        $a2, $zero, $zero
    /* FD8B0 800EE900 02002025 */  or         $a0, $s0, $zero
    /* FD8B4 800EE904 24050008 */  addiu      $a1, $zero, 0x8
    /* FD8B8 800EE908 00003025 */  or         $a2, $zero, $zero
    /* FD8BC 800EE90C 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FD8C0 800EE910 24070000 */   addiu     $a3, $zero, 0x0
    /* FD8C4 800EE914 3C048015 */  lui        $a0, %hi(D_80157A28)
    /* FD8C8 800EE918 1000002C */  b          .L800EE9CC_FD97C
    /* FD8CC 800EE91C 8C847A28 */   lw        $a0, %lo(D_80157A28)($a0)
  .L800EE920_FD8D0:
    /* FD8D0 800EE920 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FD8D4 800EE924 24070000 */   addiu     $a3, $zero, 0x0
    /* FD8D8 800EE928 3C048015 */  lui        $a0, %hi(D_80157A28)
    /* FD8DC 800EE92C 10000027 */  b          .L800EE9CC_FD97C
    /* FD8E0 800EE930 8C847A28 */   lw        $a0, %lo(D_80157A28)($a0)
  .L800EE934_FD8E4:
    /* FD8E4 800EE934 304E1000 */  andi       $t6, $v0, 0x1000
  .L800EE938_FD8E8:
    /* FD8E8 800EE938 51C0000D */  beql       $t6, $zero, .L800EE970_FD920
    /* FD8EC 800EE93C 8E03040C */   lw        $v1, 0x40C($s0)
    /* FD8F0 800EE940 8E0C040C */  lw         $t4, 0x40C($s0)
    /* FD8F4 800EE944 24010009 */  addiu      $at, $zero, 0x9
    /* FD8F8 800EE948 24050009 */  addiu      $a1, $zero, 0x9
    /* FD8FC 800EE94C 1181001F */  beq        $t4, $at, .L800EE9CC_FD97C
    /* FD900 800EE950 00003025 */   or        $a2, $zero, $zero
    /* FD904 800EE954 02002025 */  or         $a0, $s0, $zero
    /* FD908 800EE958 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FD90C 800EE95C 24070000 */   addiu     $a3, $zero, 0x0
    /* FD910 800EE960 3C048015 */  lui        $a0, %hi(D_80157A28)
    /* FD914 800EE964 10000019 */  b          .L800EE9CC_FD97C
    /* FD918 800EE968 8C847A28 */   lw        $a0, %lo(D_80157A28)($a0)
    /* FD91C 800EE96C 8E03040C */  lw         $v1, 0x40C($s0)
  .L800EE970_FD920:
    /* FD920 800EE970 24010008 */  addiu      $at, $zero, 0x8
    /* FD924 800EE974 2405000C */  addiu      $a1, $zero, 0xC
    /* FD928 800EE978 14610007 */  bne        $v1, $at, .L800EE998_FD948
    /* FD92C 800EE97C 00003025 */   or        $a2, $zero, $zero
    /* FD930 800EE980 02002025 */  or         $a0, $s0, $zero
    /* FD934 800EE984 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FD938 800EE988 24070000 */   addiu     $a3, $zero, 0x0
    /* FD93C 800EE98C 3C048015 */  lui        $a0, %hi(D_80157A28)
    /* FD940 800EE990 1000000E */  b          .L800EE9CC_FD97C
    /* FD944 800EE994 8C847A28 */   lw        $a0, %lo(D_80157A28)($a0)
  .L800EE998_FD948:
    /* FD948 800EE998 24010009 */  addiu      $at, $zero, 0x9
    /* FD94C 800EE99C 14610009 */  bne        $v1, $at, .L800EE9C4_FD974
    /* FD950 800EE9A0 3C028015 */   lui       $v0, %hi(D_801575D8)
    /* FD954 800EE9A4 02002025 */  or         $a0, $s0, $zero
    /* FD958 800EE9A8 2405000D */  addiu      $a1, $zero, 0xD
    /* FD95C 800EE9AC 00003025 */  or         $a2, $zero, $zero
    /* FD960 800EE9B0 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FD964 800EE9B4 24070000 */   addiu     $a3, $zero, 0x0
    /* FD968 800EE9B8 3C048015 */  lui        $a0, %hi(D_80157A28)
    /* FD96C 800EE9BC 10000003 */  b          .L800EE9CC_FD97C
    /* FD970 800EE9C0 8C847A28 */   lw        $a0, %lo(D_80157A28)($a0)
  .L800EE9C4_FD974:
    /* FD974 800EE9C4 244275D8 */  addiu      $v0, $v0, %lo(D_801575D8)
    /* FD978 800EE9C8 AC400000 */  sw         $zero, 0x0($v0)
  .L800EE9CC_FD97C:
    /* FD97C 800EE9CC 308D0002 */  andi       $t5, $a0, 0x2
  .L800EE9D0_FD980:
    /* FD980 800EE9D0 24010002 */  addiu      $at, $zero, 0x2
    /* FD984 800EE9D4 15A1002A */  bne        $t5, $at, .L800EEA80_FDA30
    /* FD988 800EE9D8 3C078015 */   lui       $a3, %hi(D_80157A34)
    /* FD98C 800EE9DC 24E77A34 */  addiu      $a3, $a3, %lo(D_80157A34)
    /* FD990 800EE9E0 8CF90000 */  lw         $t9, 0x0($a3)
    /* FD994 800EE9E4 2405000A */  addiu      $a1, $zero, 0xA
    /* FD998 800EE9E8 2406000A */  addiu      $a2, $zero, 0xA
    /* FD99C 800EE9EC 17200024 */  bnez       $t9, .L800EEA80_FDA30
    /* FD9A0 800EE9F0 00000000 */   nop
    /* FD9A4 800EE9F4 0C000451 */  jal        func_80001144_1D44
    /* FD9A8 800EE9F8 24040046 */   addiu     $a0, $zero, 0x46
    /* FD9AC 800EE9FC 8FB800B0 */  lw         $t8, 0xB0($sp)
    /* FD9B0 800EEA00 3C0F8015 */  lui        $t7, %hi(D_80157A28)
    /* FD9B4 800EEA04 97090020 */  lhu        $t1, 0x20($t8)
    /* FD9B8 800EEA08 312B0002 */  andi       $t3, $t1, 0x2
    /* FD9BC 800EEA0C 1560000E */  bnez       $t3, .L800EEA48_FD9F8
    /* FD9C0 800EEA10 00000000 */   nop
    /* FD9C4 800EEA14 8DEF7A28 */  lw         $t7, %lo(D_80157A28)($t7)
    /* FD9C8 800EEA18 24010004 */  addiu      $at, $zero, 0x4
    /* FD9CC 800EEA1C 03002025 */  or         $a0, $t8, $zero
    /* FD9D0 800EEA20 31EA0004 */  andi       $t2, $t7, 0x4
    /* FD9D4 800EEA24 11410008 */  beq        $t2, $at, .L800EEA48_FD9F8
    /* FD9D8 800EEA28 3C058015 */   lui       $a1, %hi(D_80157A2C)
    /* FD9DC 800EEA2C 0C03B557 */  jal        func_800ED55C_FC50C
    /* FD9E0 800EEA30 84A57A2C */   lh        $a1, %lo(D_80157A2C)($a1)
    /* FD9E4 800EEA34 02002025 */  or         $a0, $s0, $zero
    /* FD9E8 800EEA38 00402825 */  or         $a1, $v0, $zero
    /* FD9EC 800EEA3C 00003025 */  or         $a2, $zero, $zero
    /* FD9F0 800EEA40 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FD9F4 800EEA44 24070000 */   addiu     $a3, $zero, 0x0
  .L800EEA48_FD9F8:
    /* FD9F8 800EEA48 3C0E8015 */  lui        $t6, %hi(D_80157A28)
    /* FD9FC 800EEA4C 8DCE7A28 */  lw         $t6, %lo(D_80157A28)($t6)
    /* FDA00 800EEA50 2401FFFD */  addiu      $at, $zero, -0x3
    /* FDA04 800EEA54 240D0005 */  addiu      $t5, $zero, 0x5
    /* FDA08 800EEA58 01C16024 */  and        $t4, $t6, $at
    /* FDA0C 800EEA5C 3C018015 */  lui        $at, %hi(D_80157A28)
    /* FDA10 800EEA60 AC2C7A28 */  sw         $t4, %lo(D_80157A28)($at)
    /* FDA14 800EEA64 3C018015 */  lui        $at, %hi(D_80157A34)
    /* FDA18 800EEA68 AC2D7A34 */  sw         $t5, %lo(D_80157A34)($at)
    /* FDA1C 800EEA6C 24040001 */  addiu      $a0, $zero, 0x1
    /* FDA20 800EEA70 0C01C452 */  jal        func_80071148_800F8
    /* FDA24 800EEA74 24050002 */   addiu     $a1, $zero, 0x2
    /* FDA28 800EEA78 3C048015 */  lui        $a0, %hi(D_80157A28)
    /* FDA2C 800EEA7C 8C847A28 */  lw         $a0, %lo(D_80157A28)($a0)
  .L800EEA80_FDA30:
    /* FDA30 800EEA80 3C058015 */  lui        $a1, %hi(D_80157E78)
    /* FDA34 800EEA84 24A57E78 */  addiu      $a1, $a1, %lo(D_80157E78)
    /* FDA38 800EEA88 8CA30000 */  lw         $v1, 0x0($a1)
    /* FDA3C 800EEA8C 3C078015 */  lui        $a3, %hi(D_80157A34)
    /* FDA40 800EEA90 24E77A34 */  addiu      $a3, $a3, %lo(D_80157A34)
    /* FDA44 800EEA94 10600003 */  beqz       $v1, .L800EEAA4_FDA54
    /* FDA48 800EEA98 8CE20000 */   lw        $v0, 0x0($a3)
    /* FDA4C 800EEA9C 2479FFFF */  addiu      $t9, $v1, -0x1
    /* FDA50 800EEAA0 ACB90000 */  sw         $t9, 0x0($a1)
  .L800EEAA4_FDA54:
    /* FDA54 800EEAA4 1040000B */  beqz       $v0, .L800EEAD4_FDA84
    /* FDA58 800EEAA8 308B1000 */   andi      $t3, $a0, 0x1000
    /* FDA5C 800EEAAC C7AA0074 */  lwc1       $f10, 0x74($sp)
    /* FDA60 800EEAB0 44804000 */  mtc1       $zero, $f8
    /* FDA64 800EEAB4 2449FFFF */  addiu      $t1, $v0, -0x1
    /* FDA68 800EEAB8 46085032 */  c.eq.s     $f10, $f8
    /* FDA6C 800EEABC 00000000 */  nop
    /* FDA70 800EEAC0 45020004 */  bc1fl      .L800EEAD4_FDA84
    /* FDA74 800EEAC4 ACE90000 */   sw        $t1, 0x0($a3)
    /* FDA78 800EEAC8 10000002 */  b          .L800EEAD4_FDA84
    /* FDA7C 800EEACC ACE00000 */   sw        $zero, 0x0($a3)
    /* FDA80 800EEAD0 ACE90000 */  sw         $t1, 0x0($a3)
  .L800EEAD4_FDA84:
    /* FDA84 800EEAD4 24011000 */  addiu      $at, $zero, 0x1000
    /* FDA88 800EEAD8 15610006 */  bne        $t3, $at, .L800EEAF4_FDAA4
    /* FDA8C 800EEADC 2401EFFF */   addiu     $at, $zero, -0x1001
    /* FDA90 800EEAE0 00817824 */  and        $t7, $a0, $at
    /* FDA94 800EEAE4 3C018015 */  lui        $at, %hi(D_80157A28)
    /* FDA98 800EEAE8 AC2F7A28 */  sw         $t7, %lo(D_80157A28)($at)
    /* FDA9C 800EEAEC 3C048015 */  lui        $a0, %hi(D_80157A28)
    /* FDAA0 800EEAF0 8C847A28 */  lw         $a0, %lo(D_80157A28)($a0)
  .L800EEAF4_FDAA4:
    /* FDAA4 800EEAF4 308A4000 */  andi       $t2, $a0, 0x4000
    /* FDAA8 800EEAF8 24014000 */  addiu      $at, $zero, 0x4000
    /* FDAAC 800EEAFC 1541001C */  bne        $t2, $at, .L800EEB70_FDB20
    /* FDAB0 800EEB00 2401BFFF */   addiu     $at, $zero, -0x4001
    /* FDAB4 800EEB04 8FAE00B0 */  lw         $t6, 0xB0($sp)
    /* FDAB8 800EEB08 0081C024 */  and        $t8, $a0, $at
    /* FDABC 800EEB0C 3C018015 */  lui        $at, %hi(D_80157A28)
    /* FDAC0 800EEB10 AC387A28 */  sw         $t8, %lo(D_80157A28)($at)
    /* FDAC4 800EEB14 95CC0020 */  lhu        $t4, 0x20($t6)
    /* FDAC8 800EEB18 3C198015 */  lui        $t9, %hi(D_80157A28)
    /* FDACC 800EEB1C 318D0002 */  andi       $t5, $t4, 0x2
    /* FDAD0 800EEB20 15A0000F */  bnez       $t5, .L800EEB60_FDB10
    /* FDAD4 800EEB24 00000000 */   nop
    /* FDAD8 800EEB28 8F397A28 */  lw         $t9, %lo(D_80157A28)($t9)
    /* FDADC 800EEB2C 24010004 */  addiu      $at, $zero, 0x4
    /* FDAE0 800EEB30 3C0B8015 */  lui        $t3, %hi(D_801575F8)
    /* FDAE4 800EEB34 33290004 */  andi       $t1, $t9, 0x4
    /* FDAE8 800EEB38 11210009 */  beq        $t1, $at, .L800EEB60_FDB10
    /* FDAEC 800EEB3C 00000000 */   nop
    /* FDAF0 800EEB40 8D6B75F8 */  lw         $t3, %lo(D_801575F8)($t3)
    /* FDAF4 800EEB44 02002025 */  or         $a0, $s0, $zero
    /* FDAF8 800EEB48 2405003B */  addiu      $a1, $zero, 0x3B
    /* FDAFC 800EEB4C 2961000B */  slti       $at, $t3, 0xB
    /* FDB00 800EEB50 14200003 */  bnez       $at, .L800EEB60_FDB10
    /* FDB04 800EEB54 24060007 */   addiu     $a2, $zero, 0x7
    /* FDB08 800EEB58 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FDB0C 800EEB5C 24070000 */   addiu     $a3, $zero, 0x0
  .L800EEB60_FDB10:
    /* FDB10 800EEB60 3C018015 */  lui        $at, %hi(D_801575F8)
    /* FDB14 800EEB64 3C048015 */  lui        $a0, %hi(D_80157A28)
    /* FDB18 800EEB68 8C847A28 */  lw         $a0, %lo(D_80157A28)($a0)
    /* FDB1C 800EEB6C AC2075F8 */  sw         $zero, %lo(D_801575F8)($at)
  .L800EEB70_FDB20:
    /* FDB20 800EEB70 308F2000 */  andi       $t7, $a0, 0x2000
    /* FDB24 800EEB74 24012000 */  addiu      $at, $zero, 0x2000
    /* FDB28 800EEB78 15E1001B */  bne        $t7, $at, .L800EEBE8_FDB98
    /* FDB2C 800EEB7C 3C198015 */   lui       $t9, %hi(D_801575DC)
    /* FDB30 800EEB80 8E0A040C */  lw         $t2, 0x40C($s0)
    /* FDB34 800EEB84 24010030 */  addiu      $at, $zero, 0x30
    /* FDB38 800EEB88 02002025 */  or         $a0, $s0, $zero
    /* FDB3C 800EEB8C 11410004 */  beq        $t2, $at, .L800EEBA0_FDB50
    /* FDB40 800EEB90 24050030 */   addiu     $a1, $zero, 0x30
    /* FDB44 800EEB94 00003025 */  or         $a2, $zero, $zero
    /* FDB48 800EEB98 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FDB4C 800EEB9C 24070000 */   addiu     $a3, $zero, 0x0
  .L800EEBA0_FDB50:
    /* FDB50 800EEBA0 8E180404 */  lw         $t8, 0x404($s0)
    /* FDB54 800EEBA4 02002025 */  or         $a0, $s0, $zero
    /* FDB58 800EEBA8 24050023 */  addiu      $a1, $zero, 0x23
    /* FDB5C 800EEBAC 8F0E0E50 */  lw         $t6, 0xE50($t8)
    /* FDB60 800EEBB0 00003025 */  or         $a2, $zero, $zero
    /* FDB64 800EEBB4 55C00044 */  bnel       $t6, $zero, .L800EECC8_FDC78
    /* FDB68 800EEBB8 8E0C040C */   lw        $t4, 0x40C($s0)
    /* FDB6C 800EEBBC 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FDB70 800EEBC0 24070000 */   addiu     $a3, $zero, 0x0
    /* FDB74 800EEBC4 0C00681A */  jal        func_8001A068_1AC68
    /* FDB78 800EEBC8 00000000 */   nop
    /* FDB7C 800EEBCC 3C0C8015 */  lui        $t4, %hi(D_80157A28)
    /* FDB80 800EEBD0 8D8C7A28 */  lw         $t4, %lo(D_80157A28)($t4)
    /* FDB84 800EEBD4 2401DFFF */  addiu      $at, $zero, -0x2001
    /* FDB88 800EEBD8 01816824 */  and        $t5, $t4, $at
    /* FDB8C 800EEBDC 3C018015 */  lui        $at, %hi(D_80157A28)
    /* FDB90 800EEBE0 10000038 */  b          .L800EECC4_FDC74
    /* FDB94 800EEBE4 AC2D7A28 */   sw        $t5, %lo(D_80157A28)($at)
  .L800EEBE8_FDB98:
    /* FDB98 800EEBE8 3C098004 */  lui        $t1, %hi(D_80047948)
    /* FDB9C 800EEBEC 85297948 */  lh         $t1, %lo(D_80047948)($t1)
    /* FDBA0 800EEBF0 8F3975DC */  lw         $t9, %lo(D_801575DC)($t9)
    /* FDBA4 800EEBF4 308B0004 */  andi       $t3, $a0, 0x4
    /* FDBA8 800EEBF8 24010004 */  addiu      $at, $zero, 0x4
    /* FDBAC 800EEBFC 53290032 */  beql       $t9, $t1, .L800EECC8_FDC78
    /* FDBB0 800EEC00 8E0C040C */   lw        $t4, 0x40C($s0)
    /* FDBB4 800EEC04 11610005 */  beq        $t3, $at, .L800EEC1C_FDBCC
    /* FDBB8 800EEC08 02002025 */   or        $a0, $s0, $zero
    /* FDBBC 800EEC0C 24050038 */  addiu      $a1, $zero, 0x38
    /* FDBC0 800EEC10 00003025 */  or         $a2, $zero, $zero
    /* FDBC4 800EEC14 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FDBC8 800EEC18 24070000 */   addiu     $a3, $zero, 0x0
  .L800EEC1C_FDBCC:
    /* FDBCC 800EEC1C 0C03AE6D */  jal        func_800EB9B4_FA964
    /* FDBD0 800EEC20 02002025 */   or        $a0, $s0, $zero
    /* FDBD4 800EEC24 28410002 */  slti       $at, $v0, 0x2
    /* FDBD8 800EEC28 54200027 */  bnel       $at, $zero, .L800EECC8_FDC78
    /* FDBDC 800EEC2C 8E0C040C */   lw        $t4, 0x40C($s0)
    /* FDBE0 800EEC30 0C03AE6F */  jal        func_800EB9BC_FA96C
    /* FDBE4 800EEC34 02002025 */   or        $a0, $s0, $zero
    /* FDBE8 800EEC38 4600018D */  trunc.w.s  $f6, $f0
    /* FDBEC 800EEC3C 24010006 */  addiu      $at, $zero, 0x6
    /* FDBF0 800EEC40 3C048014 */  lui        $a0, %hi(D_801443A4)
    /* FDBF4 800EEC44 248443A4 */  addiu      $a0, $a0, %lo(D_801443A4)
    /* FDBF8 800EEC48 440A3000 */  mfc1       $t2, $f6
    /* FDBFC 800EEC4C 3C058004 */  lui        $a1, %hi(D_80047948)
    /* FDC00 800EEC50 5541001D */  bnel       $t2, $at, .L800EECC8_FDC78
    /* FDC04 800EEC54 8E0C040C */   lw        $t4, 0x40C($s0)
    /* FDC08 800EEC58 0C00731B */  jal        osSyncPrintf
    /* FDC0C 800EEC5C 84A57948 */   lh        $a1, %lo(D_80047948)($a1)
    /* FDC10 800EEC60 3C038004 */  lui        $v1, %hi(D_80047948)
    /* FDC14 800EEC64 24637948 */  addiu      $v1, $v1, %lo(D_80047948)
    /* FDC18 800EEC68 84620000 */  lh         $v0, 0x0($v1)
    /* FDC1C 800EEC6C 24180001 */  addiu      $t8, $zero, 0x1
    /* FDC20 800EEC70 3C048014 */  lui        $a0, %hi(D_8013E490)
    /* FDC24 800EEC74 2841000A */  slti       $at, $v0, 0xA
    /* FDC28 800EEC78 50200004 */  beql       $at, $zero, .L800EEC8C_FDC3C
    /* FDC2C 800EEC7C A4780000 */   sh        $t8, 0x0($v1)
    /* FDC30 800EEC80 04430004 */  bgezl      $v0, .L800EEC94_FDC44
    /* FDC34 800EEC84 24010001 */   addiu     $at, $zero, 0x1
    /* FDC38 800EEC88 A4780000 */  sh         $t8, 0x0($v1)
  .L800EEC8C_FDC3C:
    /* FDC3C 800EEC8C 84620000 */  lh         $v0, 0x0($v1)
    /* FDC40 800EEC90 24010001 */  addiu      $at, $zero, 0x1
  .L800EEC94_FDC44:
    /* FDC44 800EEC94 14410006 */  bne        $v0, $at, .L800EECB0_FDC60
    /* FDC48 800EEC98 00000000 */   nop
    /* FDC4C 800EEC9C 0C03BC2C */  jal        func_800EF0B0_FE060
    /* FDC50 800EECA0 8C84E490 */   lw        $a0, %lo(D_8013E490)($a0)
    /* FDC54 800EECA4 14400002 */  bnez       $v0, .L800EECB0_FDC60
    /* FDC58 800EECA8 3C018004 */   lui       $at, %hi(D_80047948)
    /* FDC5C 800EECAC A4207948 */  sh         $zero, %lo(D_80047948)($at)
  .L800EECB0_FDC60:
    /* FDC60 800EECB0 3C038004 */  lui        $v1, %hi(D_80047948)
    /* FDC64 800EECB4 24637948 */  addiu      $v1, $v1, %lo(D_80047948)
    /* FDC68 800EECB8 846E0000 */  lh         $t6, 0x0($v1)
    /* FDC6C 800EECBC 3C018015 */  lui        $at, %hi(D_801575DC)
    /* FDC70 800EECC0 AC2E75DC */  sw         $t6, %lo(D_801575DC)($at)
  .L800EECC4_FDC74:
    /* FDC74 800EECC4 8E0C040C */  lw         $t4, 0x40C($s0)
  .L800EECC8_FDC78:
    /* FDC78 800EECC8 3C198014 */  lui        $t9, %hi(D_8013E5B0)
    /* FDC7C 800EECCC 3C018015 */  lui        $at, %hi(D_801575D0)
    /* FDC80 800EECD0 000C6880 */  sll        $t5, $t4, 2
    /* FDC84 800EECD4 01AC6823 */  subu       $t5, $t5, $t4
    /* FDC88 800EECD8 000D6880 */  sll        $t5, $t5, 2
    /* FDC8C 800EECDC 01AC6821 */  addu       $t5, $t5, $t4
    /* FDC90 800EECE0 000D6880 */  sll        $t5, $t5, 2
    /* FDC94 800EECE4 032DC821 */  addu       $t9, $t9, $t5
    /* FDC98 800EECE8 8F39E5B0 */  lw         $t9, %lo(D_8013E5B0)($t9)
    /* FDC9C 800EECEC 3C048015 */  lui        $a0, %hi(D_801575DC)
    /* FDCA0 800EECF0 02002825 */  or         $a1, $s0, $zero
    /* FDCA4 800EECF4 33290080 */  andi       $t1, $t9, 0x80
    /* FDCA8 800EECF8 11200036 */  beqz       $t1, .L800EEDD4_FDD84
    /* FDCAC 800EECFC 00000000 */   nop
    /* FDCB0 800EED00 AC2075D0 */  sw         $zero, %lo(D_801575D0)($at)
    /* FDCB4 800EED04 0C03AE71 */  jal        func_800EB9C4_FA974
    /* FDCB8 800EED08 8C8475DC */   lw        $a0, %lo(D_801575DC)($a0)
    /* FDCBC 800EED0C 10400018 */  beqz       $v0, .L800EED70_FDD20
    /* FDCC0 800EED10 8FA400B0 */   lw        $a0, 0xB0($sp)
    /* FDCC4 800EED14 908B001A */  lbu        $t3, 0x1A($a0)
    /* FDCC8 800EED18 3C0A8025 */  lui        $t2, %hi(D_80257A1C)
    /* FDCCC 800EED1C 3C018016 */  lui        $at, %hi(D_80159236)
    /* FDCD0 800EED20 000B78C0 */  sll        $t7, $t3, 3
    /* FDCD4 800EED24 01EB7823 */  subu       $t7, $t7, $t3
    /* FDCD8 800EED28 000F7900 */  sll        $t7, $t7, 4
    /* FDCDC 800EED2C 014F5021 */  addu       $t2, $t2, $t7
    /* FDCE0 800EED30 8D4A7A1C */  lw         $t2, %lo(D_80257A1C)($t2)
    /* FDCE4 800EED34 0C03AAF8 */  jal        func_800EABE0_F9B90
    /* FDCE8 800EED38 A42A9236 */   sh        $t2, %lo(D_80159236)($at)
    /* FDCEC 800EED3C 3C028016 */  lui        $v0, %hi(D_80158FEC)
    /* FDCF0 800EED40 8C428FEC */  lw         $v0, %lo(D_80158FEC)($v0)
    /* FDCF4 800EED44 8FA400B0 */  lw         $a0, 0xB0($sp)
    /* FDCF8 800EED48 3C068016 */  lui        $a2, %hi(D_80158FF4)
    /* FDCFC 800EED4C 10400004 */  beqz       $v0, .L800EED60_FDD10
    /* FDD00 800EED50 00403825 */   or        $a3, $v0, $zero
    /* FDD04 800EED54 3C068016 */  lui        $a2, %hi(D_80158FF4)
    /* FDD08 800EED58 10000003 */  b          .L800EED68_FDD18
    /* FDD0C 800EED5C 8CC68FF4 */   lw        $a2, %lo(D_80158FF4)($a2)
  .L800EED60_FDD10:
    /* FDD10 800EED60 8CC68FF4 */  lw         $a2, %lo(D_80158FF4)($a2)
    /* FDD14 800EED64 00C03825 */  or         $a3, $a2, $zero
  .L800EED68_FDD18:
    /* FDD18 800EED68 0C04AC54 */  jal        func_8012B150_13A100
    /* FDD1C 800EED6C 00002825 */   or        $a1, $zero, $zero
  .L800EED70_FDD20:
    /* FDD20 800EED70 8E180404 */  lw         $t8, 0x404($s0)
    /* FDD24 800EED74 3C048015 */  lui        $a0, %hi(D_80157A28)
    /* FDD28 800EED78 8F0E0E50 */  lw         $t6, 0xE50($t8)
    /* FDD2C 800EED7C 15C00015 */  bnez       $t6, .L800EEDD4_FDD84
    /* FDD30 800EED80 00000000 */   nop
    /* FDD34 800EED84 8C847A28 */  lw         $a0, %lo(D_80157A28)($a0)
    /* FDD38 800EED88 24010001 */  addiu      $at, $zero, 0x1
    /* FDD3C 800EED8C 308C0001 */  andi       $t4, $a0, 0x1
    /* FDD40 800EED90 15810010 */  bne        $t4, $at, .L800EEDD4_FDD84
    /* FDD44 800EED94 308D0008 */   andi      $t5, $a0, 0x8
    /* FDD48 800EED98 24010008 */  addiu      $at, $zero, 0x8
    /* FDD4C 800EED9C 15A10009 */  bne        $t5, $at, .L800EEDC4_FDD74
    /* FDD50 800EEDA0 02002025 */   or        $a0, $s0, $zero
    /* FDD54 800EEDA4 3C198015 */  lui        $t9, %hi(D_801575DC)
    /* FDD58 800EEDA8 8F3975DC */  lw         $t9, %lo(D_801575DC)($t9)
    /* FDD5C 800EEDAC 3C0B8014 */  lui        $t3, %hi(D_8013E45C)
    /* FDD60 800EEDB0 00194940 */  sll        $t1, $t9, 5
    /* FDD64 800EEDB4 01695821 */  addu       $t3, $t3, $t1
    /* FDD68 800EEDB8 8D6BE45C */  lw         $t3, %lo(D_8013E45C)($t3)
    /* FDD6C 800EEDBC 10000005 */  b          .L800EEDD4_FDD84
    /* FDD70 800EEDC0 AE0B040C */   sw        $t3, 0x40C($s0)
  .L800EEDC4_FDD74:
    /* FDD74 800EEDC4 24050023 */  addiu      $a1, $zero, 0x23
    /* FDD78 800EEDC8 00003025 */  or         $a2, $zero, $zero
    /* FDD7C 800EEDCC 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FDD80 800EEDD0 24070000 */   addiu     $a3, $zero, 0x0
  .L800EEDD4_FDD84:
    /* FDD84 800EEDD4 3C0F8015 */  lui        $t7, %hi(D_80157A28)
    /* FDD88 800EEDD8 8DEF7A28 */  lw         $t7, %lo(D_80157A28)($t7)
    /* FDD8C 800EEDDC 24010008 */  addiu      $at, $zero, 0x8
    /* FDD90 800EEDE0 8E03040C */  lw         $v1, 0x40C($s0)
    /* FDD94 800EEDE4 31EA0008 */  andi       $t2, $t7, 0x8
    /* FDD98 800EEDE8 1141000E */  beq        $t2, $at, .L800EEE24_FDDD4
    /* FDD9C 800EEDEC 3C188015 */   lui       $t8, %hi(D_801575DC)
    /* FDDA0 800EEDF0 8F1875DC */  lw         $t8, %lo(D_801575DC)($t8)
    /* FDDA4 800EEDF4 3C0C8014 */  lui        $t4, %hi(D_8013E45C)
    /* FDDA8 800EEDF8 02002025 */  or         $a0, $s0, $zero
    /* FDDAC 800EEDFC 00187140 */  sll        $t6, $t8, 5
    /* FDDB0 800EEE00 018E6021 */  addu       $t4, $t4, $t6
    /* FDDB4 800EEE04 8D8CE45C */  lw         $t4, %lo(D_8013E45C)($t4)
    /* FDDB8 800EEE08 24050023 */  addiu      $a1, $zero, 0x23
    /* FDDBC 800EEE0C 00003025 */  or         $a2, $zero, $zero
    /* FDDC0 800EEE10 546C0005 */  bnel       $v1, $t4, .L800EEE28_FDDD8
    /* FDDC4 800EEE14 00036880 */   sll       $t5, $v1, 2
    /* FDDC8 800EEE18 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FDDCC 800EEE1C 24070000 */   addiu     $a3, $zero, 0x0
    /* FDDD0 800EEE20 8E03040C */  lw         $v1, 0x40C($s0)
  .L800EEE24_FDDD4:
    /* FDDD4 800EEE24 00036880 */  sll        $t5, $v1, 2
  .L800EEE28_FDDD8:
    /* FDDD8 800EEE28 01A36823 */  subu       $t5, $t5, $v1
    /* FDDDC 800EEE2C 000D6880 */  sll        $t5, $t5, 2
    /* FDDE0 800EEE30 01A36821 */  addu       $t5, $t5, $v1
    /* FDDE4 800EEE34 000D6880 */  sll        $t5, $t5, 2
    /* FDDE8 800EEE38 3C198014 */  lui        $t9, %hi(D_8013E5B0)
    /* FDDEC 800EEE3C 032DC821 */  addu       $t9, $t9, $t5
    /* FDDF0 800EEE40 8F39E5B0 */  lw         $t9, %lo(D_8013E5B0)($t9)
    /* FDDF4 800EEE44 3C028016 */  lui        $v0, %hi(D_80159020)
    /* FDDF8 800EEE48 33290480 */  andi       $t1, $t9, 0x480
    /* FDDFC 800EEE4C 11200022 */  beqz       $t1, .L800EEED8_FDE88
    /* FDE00 800EEE50 00000000 */   nop
    /* FDE04 800EEE54 8C429020 */  lw         $v0, %lo(D_80159020)($v0)
    /* FDE08 800EEE58 8FA400B0 */  lw         $a0, 0xB0($sp)
    /* FDE0C 800EEE5C 27A50094 */  addiu      $a1, $sp, 0x94
    /* FDE10 800EEE60 844B0000 */  lh         $t3, 0x0($v0)
    /* FDE14 800EEE64 05610003 */  bgez       $t3, .L800EEE74_FDE24
    /* FDE18 800EEE68 000B7883 */   sra       $t7, $t3, 2
    /* FDE1C 800EEE6C 25610003 */  addiu      $at, $t3, 0x3
    /* FDE20 800EEE70 00017883 */  sra        $t7, $at, 2
  .L800EEE74_FDE24:
    /* FDE24 800EEE74 448F2000 */  mtc1       $t7, $f4
    /* FDE28 800EEE78 00000000 */  nop
    /* FDE2C 800EEE7C 468022A0 */  cvt.s.w    $f10, $f4
    /* FDE30 800EEE80 E7AA0094 */  swc1       $f10, 0x94($sp)
    /* FDE34 800EEE84 844A0002 */  lh         $t2, 0x2($v0)
    /* FDE38 800EEE88 05410003 */  bgez       $t2, .L800EEE98_FDE48
    /* FDE3C 800EEE8C 000AC083 */   sra       $t8, $t2, 2
    /* FDE40 800EEE90 25410003 */  addiu      $at, $t2, 0x3
    /* FDE44 800EEE94 0001C083 */  sra        $t8, $at, 2
  .L800EEE98_FDE48:
    /* FDE48 800EEE98 44984000 */  mtc1       $t8, $f8
    /* FDE4C 800EEE9C 00000000 */  nop
    /* FDE50 800EEEA0 468041A0 */  cvt.s.w    $f6, $f8
    /* FDE54 800EEEA4 E7A60098 */  swc1       $f6, 0x98($sp)
    /* FDE58 800EEEA8 844E0004 */  lh         $t6, 0x4($v0)
    /* FDE5C 800EEEAC 05C10003 */  bgez       $t6, .L800EEEBC_FDE6C
    /* FDE60 800EEEB0 000E6083 */   sra       $t4, $t6, 2
    /* FDE64 800EEEB4 25C10003 */  addiu      $at, $t6, 0x3
    /* FDE68 800EEEB8 00016083 */  sra        $t4, $at, 2
  .L800EEEBC_FDE6C:
    /* FDE6C 800EEEBC 448C2000 */  mtc1       $t4, $f4
    /* FDE70 800EEEC0 00000000 */  nop
    /* FDE74 800EEEC4 468022A0 */  cvt.s.w    $f10, $f4
    /* FDE78 800EEEC8 0C03A981 */  jal        func_800EA604_F95B4
    /* FDE7C 800EEECC E7AA009C */   swc1      $f10, 0x9C($sp)
    /* FDE80 800EEED0 E7A000AC */  swc1       $f0, 0xAC($sp)
    /* FDE84 800EEED4 8E03040C */  lw         $v1, 0x40C($s0)
  .L800EEED8_FDE88:
    /* FDE88 800EEED8 3C028015 */  lui        $v0, %hi(D_80157A28)
    /* FDE8C 800EEEDC 8C427A28 */  lw         $v0, %lo(D_80157A28)($v0)
    /* FDE90 800EEEE0 24010023 */  addiu      $at, $zero, 0x23
    /* FDE94 800EEEE4 304D0008 */  andi       $t5, $v0, 0x8
    /* FDE98 800EEEE8 10610003 */  beq        $v1, $at, .L800EEEF8_FDEA8
    /* FDE9C 800EEEEC 01A01025 */   or        $v0, $t5, $zero
    /* FDEA0 800EEEF0 24010024 */  addiu      $at, $zero, 0x24
    /* FDEA4 800EEEF4 14610006 */  bne        $v1, $at, .L800EEF10_FDEC0
  .L800EEEF8_FDEA8:
    /* FDEA8 800EEEF8 3C038015 */   lui       $v1, %hi(D_801575D0)
    /* FDEAC 800EEEFC 246375D0 */  addiu      $v1, $v1, %lo(D_801575D0)
    /* FDEB0 800EEF00 8C790000 */  lw         $t9, 0x0($v1)
    /* FDEB4 800EEF04 27290001 */  addiu      $t1, $t9, 0x1
    /* FDEB8 800EEF08 10000008 */  b          .L800EEF2C_FDEDC
    /* FDEBC 800EEF0C AC690000 */   sw        $t1, 0x0($v1)
  .L800EEF10_FDEC0:
    /* FDEC0 800EEF10 3C0B8015 */  lui        $t3, %hi(D_801575D0)
    /* FDEC4 800EEF14 8D6B75D0 */  lw         $t3, %lo(D_801575D0)($t3)
    /* FDEC8 800EEF18 29610065 */  slti       $at, $t3, 0x65
    /* FDECC 800EEF1C 14200003 */  bnez       $at, .L800EEF2C_FDEDC
    /* FDED0 800EEF20 240F0064 */   addiu     $t7, $zero, 0x64
    /* FDED4 800EEF24 3C018015 */  lui        $at, %hi(D_801575D0)
    /* FDED8 800EEF28 AC2F75D0 */  sw         $t7, %lo(D_801575D0)($at)
  .L800EEF2C_FDEDC:
    /* FDEDC 800EEF2C 3C038015 */  lui        $v1, %hi(D_801575D0)
    /* FDEE0 800EEF30 24010008 */  addiu      $at, $zero, 0x8
    /* FDEE4 800EEF34 14410002 */  bne        $v0, $at, .L800EEF40_FDEF0
    /* FDEE8 800EEF38 246375D0 */   addiu     $v1, $v1, %lo(D_801575D0)
    /* FDEEC 800EEF3C AC600000 */  sw         $zero, 0x0($v1)
  .L800EEF40_FDEF0:
    /* FDEF0 800EEF40 8C6A0000 */  lw         $t2, 0x0($v1)
    /* FDEF4 800EEF44 24010063 */  addiu      $at, $zero, 0x63
    /* FDEF8 800EEF48 1541000F */  bne        $t2, $at, .L800EEF88_FDF38
    /* FDEFC 800EEF4C 3C188015 */   lui       $t8, %hi(D_801575DC)
    /* FDF00 800EEF50 8F1875DC */  lw         $t8, %lo(D_801575DC)($t8)
    /* FDF04 800EEF54 02002025 */  or         $a0, $s0, $zero
    /* FDF08 800EEF58 2405002A */  addiu      $a1, $zero, 0x2A
    /* FDF0C 800EEF5C 1700000A */  bnez       $t8, .L800EEF88_FDF38
    /* FDF10 800EEF60 00003025 */   or        $a2, $zero, $zero
    /* FDF14 800EEF64 0C03AD4D */  jal        func_800EB534_FA4E4
    /* FDF18 800EEF68 24070000 */   addiu     $a3, $zero, 0x0
    /* FDF1C 800EEF6C 3C028015 */  lui        $v0, %hi(D_80157A28)
    /* FDF20 800EEF70 8C427A28 */  lw         $v0, %lo(D_80157A28)($v0)
    /* FDF24 800EEF74 240E0064 */  addiu      $t6, $zero, 0x64
    /* FDF28 800EEF78 3C018015 */  lui        $at, %hi(D_801575D0)
    /* FDF2C 800EEF7C 304C0008 */  andi       $t4, $v0, 0x8
    /* FDF30 800EEF80 01801025 */  or         $v0, $t4, $zero
    /* FDF34 800EEF84 AC2E75D0 */  sw         $t6, %lo(D_801575D0)($at)
  .L800EEF88_FDF38:
    /* FDF38 800EEF88 24010008 */  addiu      $at, $zero, 0x8
    /* FDF3C 800EEF8C 10410005 */  beq        $v0, $at, .L800EEFA4_FDF54
    /* FDF40 800EEF90 02002025 */   or        $a0, $s0, $zero
    /* FDF44 800EEF94 8FA500A0 */  lw         $a1, 0xA0($sp)
    /* FDF48 800EEF98 8FA600A4 */  lw         $a2, 0xA4($sp)
    /* FDF4C 800EEF9C 0C03ADF3 */  jal        func_800EB7CC_FA77C
    /* FDF50 800EEFA0 8FA700AC */   lw        $a3, 0xAC($sp)
  .L800EEFA4_FDF54:
    /* FDF54 800EEFA4 02002025 */  or         $a0, $s0, $zero
  .L800EEFA8_FDF58:
    /* FDF58 800EEFA8 0C03AE29 */  jal        func_800EB8A4_FA854
    /* FDF5C 800EEFAC 8FA500AC */   lw        $a1, 0xAC($sp)
    /* FDF60 800EEFB0 8E03040C */  lw         $v1, 0x40C($s0)
    /* FDF64 800EEFB4 3C198014 */  lui        $t9, %hi(D_8013E5B0)
    /* FDF68 800EEFB8 00036880 */  sll        $t5, $v1, 2
    /* FDF6C 800EEFBC 01A36823 */  subu       $t5, $t5, $v1
    /* FDF70 800EEFC0 000D6880 */  sll        $t5, $t5, 2
    /* FDF74 800EEFC4 01A36821 */  addu       $t5, $t5, $v1
    /* FDF78 800EEFC8 000D6880 */  sll        $t5, $t5, 2
    /* FDF7C 800EEFCC 032DC821 */  addu       $t9, $t9, $t5
    /* FDF80 800EEFD0 8F39E5B0 */  lw         $t9, %lo(D_8013E5B0)($t9)
    /* FDF84 800EEFD4 33290004 */  andi       $t1, $t9, 0x4
    /* FDF88 800EEFD8 5120000D */  beql       $t1, $zero, .L800EF010_FDFC0
    /* FDF8C 800EEFDC 24010038 */   addiu     $at, $zero, 0x38
    /* FDF90 800EEFE0 C7A800AC */  lwc1       $f8, 0xAC($sp)
    /* FDF94 800EEFE4 C6060410 */  lwc1       $f6, 0x410($s0)
    /* FDF98 800EEFE8 8E040404 */  lw         $a0, 0x404($s0)
    /* FDF9C 800EEFEC 8E050408 */  lw         $a1, 0x408($s0)
    /* FDFA0 800EEFF0 02003025 */  or         $a2, $s0, $zero
    /* FDFA4 800EEFF4 24070010 */  addiu      $a3, $zero, 0x10
    /* FDFA8 800EEFF8 E7A80010 */  swc1       $f8, 0x10($sp)
    /* FDFAC 800EEFFC 0C003637 */  jal        func_8000D8DC_E4DC
    /* FDFB0 800EF000 E7A60014 */   swc1      $f6, 0x14($sp)
    /* FDFB4 800EF004 1000000E */  b          .L800EF040_FDFF0
    /* FDFB8 800EF008 8FAB00B0 */   lw        $t3, 0xB0($sp)
    /* FDFBC 800EF00C 24010038 */  addiu      $at, $zero, 0x38
  .L800EF010_FDFC0:
    /* FDFC0 800EF010 14610005 */  bne        $v1, $at, .L800EF028_FDFD8
    /* FDFC4 800EF014 02002825 */   or        $a1, $s0, $zero
    /* FDFC8 800EF018 8E040404 */  lw         $a0, 0x404($s0)
    /* FDFCC 800EF01C 24060010 */  addiu      $a2, $zero, 0x10
    /* FDFD0 800EF020 0C0033D3 */  jal        func_8000CF4C_DB4C
    /* FDFD4 800EF024 8E070410 */   lw        $a3, 0x410($s0)
  .L800EF028_FDFD8:
    /* FDFD8 800EF028 8E040404 */  lw         $a0, 0x404($s0)
    /* FDFDC 800EF02C 02002825 */  or         $a1, $s0, $zero
    /* FDFE0 800EF030 24060010 */  addiu      $a2, $zero, 0x10
    /* FDFE4 800EF034 0C0033D3 */  jal        func_8000CF4C_DB4C
    /* FDFE8 800EF038 8E070410 */   lw        $a3, 0x410($s0)
    /* FDFEC 800EF03C 8FAB00B0 */  lw         $t3, 0xB0($sp)
  .L800EF040_FDFF0:
    /* FDFF0 800EF040 956F0020 */  lhu        $t7, 0x20($t3)
    /* FDFF4 800EF044 31EA1000 */  andi       $t2, $t7, 0x1000
    /* FDFF8 800EF048 1140000A */  beqz       $t2, .L800EF074_FE024
    /* FDFFC 800EF04C 3C188015 */   lui       $t8, %hi(D_80157A28)
    /* FE000 800EF050 8F187A28 */  lw         $t8, %lo(D_80157A28)($t8)
    /* FE004 800EF054 02002825 */  or         $a1, $s0, $zero
    /* FE008 800EF058 24060010 */  addiu      $a2, $zero, 0x10
    /* FE00C 800EF05C 330E0020 */  andi       $t6, $t8, 0x20
    /* FE010 800EF060 51C00005 */  beql       $t6, $zero, .L800EF078_FE028
    /* FE014 800EF064 8FA400B0 */   lw        $a0, 0xB0($sp)
    /* FE018 800EF068 8E040404 */  lw         $a0, 0x404($s0)
    /* FE01C 800EF06C 0C0033D3 */  jal        func_8000CF4C_DB4C
    /* FE020 800EF070 8E070410 */   lw        $a3, 0x410($s0)
  .L800EF074_FE024:
    /* FE024 800EF074 8FA400B0 */  lw         $a0, 0xB0($sp)
  .L800EF078_FE028:
    /* FE028 800EF078 8E05040C */  lw         $a1, 0x40C($s0)
    /* FE02C 800EF07C 0C03AE95 */  jal        func_800EBA54_FAA04
    /* FE030 800EF080 02003025 */   or        $a2, $s0, $zero
    /* FE034 800EF084 8E0C040C */  lw         $t4, 0x40C($s0)
    /* FE038 800EF088 51800005 */  beql       $t4, $zero, .L800EF0A0_FE050
    /* FE03C 800EF08C 8FBF002C */   lw        $ra, 0x2C($sp)
    /* FE040 800EF090 44802000 */  mtc1       $zero, $f4
    /* FE044 800EF094 3C018014 */  lui        $at, %hi(D_8013FC04)
    /* FE048 800EF098 E424FC04 */  swc1       $f4, %lo(D_8013FC04)($at)
    /* FE04C 800EF09C 8FBF002C */  lw         $ra, 0x2C($sp)
  .L800EF0A0_FE050:
    /* FE050 800EF0A0 8FB00028 */  lw         $s0, 0x28($sp)
    /* FE054 800EF0A4 27BD00B0 */  addiu      $sp, $sp, 0xB0
    /* FE058 800EF0A8 03E00008 */  jr         $ra
    /* FE05C 800EF0AC 00000000 */   nop
endlabel func_800ED78C_FC73C
