nonmatching func_800CC7B0_DB760, 0x324

glabel func_800CC7B0_DB760
    /* DB760 800CC7B0 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* DB764 800CC7B4 AFB00040 */  sw         $s0, 0x40($sp)
    /* DB768 800CC7B8 00048400 */  sll        $s0, $a0, 16
    /* DB76C 800CC7BC 00107403 */  sra        $t6, $s0, 16
    /* DB770 800CC7C0 AFBF0044 */  sw         $ra, 0x44($sp)
    /* DB774 800CC7C4 AFA40068 */  sw         $a0, 0x68($sp)
    /* DB778 800CC7C8 AFA5006C */  sw         $a1, 0x6C($sp)
    /* DB77C 800CC7CC 01C08025 */  or         $s0, $t6, $zero
    /* DB780 800CC7D0 AFA60070 */  sw         $a2, 0x70($sp)
    /* DB784 800CC7D4 AFA70074 */  sw         $a3, 0x74($sp)
    /* DB788 800CC7D8 24050001 */  addiu      $a1, $zero, 0x1
    /* DB78C 800CC7DC 0C0305ED */  jal        func_800C17B4_D0764
    /* DB790 800CC7E0 24040006 */   addiu     $a0, $zero, 0x6
    /* DB794 800CC7E4 2401FFFD */  addiu      $at, $zero, -0x3
    /* DB798 800CC7E8 104100B5 */  beq        $v0, $at, .L800CCAC0_DBA70
    /* DB79C 800CC7EC A7A2005E */   sh        $v0, 0x5E($sp)
    /* DB7A0 800CC7F0 87AF005E */  lh         $t7, 0x5E($sp)
    /* DB7A4 800CC7F4 3C198015 */  lui        $t9, %hi(D_80154318)
    /* DB7A8 800CC7F8 27394318 */  addiu      $t9, $t9, %lo(D_80154318)
    /* DB7AC 800CC7FC 000FC0C0 */  sll        $t8, $t7, 3
    /* DB7B0 800CC800 030FC023 */  subu       $t8, $t8, $t7
    /* DB7B4 800CC804 0018C080 */  sll        $t8, $t8, 2
    /* DB7B8 800CC808 03191821 */  addu       $v1, $t8, $t9
    /* DB7BC 800CC80C A4700002 */  sh         $s0, 0x2($v1)
    /* DB7C0 800CC810 0C000E38 */  jal        func_800038E0_44E0
    /* DB7C4 800CC814 AFA30054 */   sw        $v1, 0x54($sp)
    /* DB7C8 800CC818 87A5006E */  lh         $a1, 0x6E($sp)
    /* DB7CC 800CC81C 87A90076 */  lh         $t1, 0x76($sp)
    /* DB7D0 800CC820 8FA30054 */  lw         $v1, 0x54($sp)
    /* DB7D4 800CC824 0045001A */  div        $zero, $v0, $a1
    /* DB7D8 800CC828 00004010 */  mfhi       $t0
    /* DB7DC 800CC82C 01095021 */  addu       $t2, $t0, $t1
    /* DB7E0 800CC830 24700008 */  addiu      $s0, $v1, 0x8
    /* DB7E4 800CC834 04A10003 */  bgez       $a1, .L800CC844_DB7F4
    /* DB7E8 800CC838 00052043 */   sra       $a0, $a1, 1
    /* DB7EC 800CC83C 24A10001 */  addiu      $at, $a1, 0x1
    /* DB7F0 800CC840 00012043 */  sra        $a0, $at, 1
  .L800CC844_DB7F4:
    /* DB7F4 800CC844 01445823 */  subu       $t3, $t2, $a0
    /* DB7F8 800CC848 A60B0000 */  sh         $t3, 0x0($s0)
    /* DB7FC 800CC84C 14A00002 */  bnez       $a1, .L800CC858_DB808
    /* DB800 800CC850 00000000 */   nop
    /* DB804 800CC854 0007000D */  break      7
  .L800CC858_DB808:
    /* DB808 800CC858 2401FFFF */  addiu      $at, $zero, -0x1
    /* DB80C 800CC85C 14A10004 */  bne        $a1, $at, .L800CC870_DB820
    /* DB810 800CC860 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DB814 800CC864 14410002 */  bne        $v0, $at, .L800CC870_DB820
    /* DB818 800CC868 00000000 */   nop
    /* DB81C 800CC86C 0006000D */  break      6
  .L800CC870_DB820:
    /* DB820 800CC870 AFA4004C */  sw         $a0, 0x4C($sp)
    /* DB824 800CC874 0C000E38 */  jal        func_800038E0_44E0
    /* DB828 800CC878 00000000 */   nop
    /* DB82C 800CC87C 87AC006E */  lh         $t4, 0x6E($sp)
    /* DB830 800CC880 87AE007A */  lh         $t6, 0x7A($sp)
    /* DB834 800CC884 8FB8004C */  lw         $t8, 0x4C($sp)
    /* DB838 800CC888 004C001A */  div        $zero, $v0, $t4
    /* DB83C 800CC88C 00006810 */  mfhi       $t5
    /* DB840 800CC890 01AE7821 */  addu       $t7, $t5, $t6
    /* DB844 800CC894 15800002 */  bnez       $t4, .L800CC8A0_DB850
    /* DB848 800CC898 00000000 */   nop
    /* DB84C 800CC89C 0007000D */  break      7
  .L800CC8A0_DB850:
    /* DB850 800CC8A0 2401FFFF */  addiu      $at, $zero, -0x1
    /* DB854 800CC8A4 15810004 */  bne        $t4, $at, .L800CC8B8_DB868
    /* DB858 800CC8A8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DB85C 800CC8AC 14410002 */  bne        $v0, $at, .L800CC8B8_DB868
    /* DB860 800CC8B0 00000000 */   nop
    /* DB864 800CC8B4 0006000D */  break      6
  .L800CC8B8_DB868:
    /* DB868 800CC8B8 01F8C823 */  subu       $t9, $t7, $t8
    /* DB86C 800CC8BC 0C000E38 */  jal        func_800038E0_44E0
    /* DB870 800CC8C0 A6190002 */   sh        $t9, 0x2($s0)
    /* DB874 800CC8C4 87A8006E */  lh         $t0, 0x6E($sp)
    /* DB878 800CC8C8 87AA007E */  lh         $t2, 0x7E($sp)
    /* DB87C 800CC8CC 8FAC004C */  lw         $t4, 0x4C($sp)
    /* DB880 800CC8D0 0048001A */  div        $zero, $v0, $t0
    /* DB884 800CC8D4 00004810 */  mfhi       $t1
    /* DB888 800CC8D8 240300FF */  addiu      $v1, $zero, 0xFF
    /* DB88C 800CC8DC 012A5821 */  addu       $t3, $t1, $t2
    /* DB890 800CC8E0 016C6823 */  subu       $t5, $t3, $t4
    /* DB894 800CC8E4 A60D0004 */  sh         $t5, 0x4($s0)
    /* DB898 800CC8E8 A2030006 */  sb         $v1, 0x6($s0)
    /* DB89C 800CC8EC A2030007 */  sb         $v1, 0x7($s0)
    /* DB8A0 800CC8F0 A2030008 */  sb         $v1, 0x8($s0)
    /* DB8A4 800CC8F4 87AE006E */  lh         $t6, 0x6E($sp)
    /* DB8A8 800CC8F8 15000002 */  bnez       $t0, .L800CC904_DB8B4
    /* DB8AC 800CC8FC 00000000 */   nop
    /* DB8B0 800CC900 0007000D */  break      7
  .L800CC904_DB8B4:
    /* DB8B4 800CC904 2401FFFF */  addiu      $at, $zero, -0x1
    /* DB8B8 800CC908 15010004 */  bne        $t0, $at, .L800CC91C_DB8CC
    /* DB8BC 800CC90C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DB8C0 800CC910 14410002 */  bne        $v0, $at, .L800CC91C_DB8CC
    /* DB8C4 800CC914 00000000 */   nop
    /* DB8C8 800CC918 0006000D */  break      6
  .L800CC91C_DB8CC:
    /* DB8CC 800CC91C A60E000A */  sh         $t6, 0xA($s0)
    /* DB8D0 800CC920 0C000E38 */  jal        func_800038E0_44E0
    /* DB8D4 800CC924 00000000 */   nop
    /* DB8D8 800CC928 04410004 */  bgez       $v0, .L800CC93C_DB8EC
    /* DB8DC 800CC92C 304F0007 */   andi      $t7, $v0, 0x7
    /* DB8E0 800CC930 11E00002 */  beqz       $t7, .L800CC93C_DB8EC
    /* DB8E4 800CC934 00000000 */   nop
    /* DB8E8 800CC938 25EFFFF8 */  addiu      $t7, $t7, -0x8
  .L800CC93C_DB8EC:
    /* DB8EC 800CC93C A20F000C */  sb         $t7, 0xC($s0)
    /* DB8F0 800CC940 93B80073 */  lbu        $t8, 0x73($sp)
    /* DB8F4 800CC944 0C000E38 */  jal        func_800038E0_44E0
    /* DB8F8 800CC948 A218000D */   sb        $t8, 0xD($s0)
    /* DB8FC 800CC94C 24010046 */  addiu      $at, $zero, 0x46
    /* DB900 800CC950 0041001A */  div        $zero, $v0, $at
    /* DB904 800CC954 00008010 */  mfhi       $s0
    /* DB908 800CC958 26100037 */  addiu      $s0, $s0, 0x37
    /* DB90C 800CC95C 0010CE00 */  sll        $t9, $s0, 24
    /* DB910 800CC960 0C000E38 */  jal        func_800038E0_44E0
    /* DB914 800CC964 00198603 */   sra       $s0, $t9, 24
    /* DB918 800CC968 24010046 */  addiu      $at, $zero, 0x46
    /* DB91C 800CC96C 0041001A */  div        $zero, $v0, $at
    /* DB920 800CC970 00004810 */  mfhi       $t1
    /* DB924 800CC974 252A0037 */  addiu      $t2, $t1, 0x37
    /* DB928 800CC978 0C000E38 */  jal        func_800038E0_44E0
    /* DB92C 800CC97C A3AA0066 */   sb        $t2, 0x66($sp)
    /* DB930 800CC980 24010014 */  addiu      $at, $zero, 0x14
    /* DB934 800CC984 0041001A */  div        $zero, $v0, $at
    /* DB938 800CC988 00005810 */  mfhi       $t3
    /* DB93C 800CC98C 2961000A */  slti       $at, $t3, 0xA
    /* DB940 800CC990 10200004 */  beqz       $at, .L800CC9A4_DB954
    /* DB944 800CC994 00000000 */   nop
    /* DB948 800CC998 00108023 */  negu       $s0, $s0
    /* DB94C 800CC99C 00106600 */  sll        $t4, $s0, 24
    /* DB950 800CC9A0 000C8603 */  sra        $s0, $t4, 24
  .L800CC9A4_DB954:
    /* DB954 800CC9A4 0C000E38 */  jal        func_800038E0_44E0
    /* DB958 800CC9A8 00000000 */   nop
    /* DB95C 800CC9AC 24010014 */  addiu      $at, $zero, 0x14
    /* DB960 800CC9B0 0041001A */  div        $zero, $v0, $at
    /* DB964 800CC9B4 00007010 */  mfhi       $t6
    /* DB968 800CC9B8 29C1000A */  slti       $at, $t6, 0xA
    /* DB96C 800CC9BC 10200003 */  beqz       $at, .L800CC9CC_DB97C
    /* DB970 800CC9C0 83AF0066 */   lb        $t7, 0x66($sp)
    /* DB974 800CC9C4 000FC023 */  negu       $t8, $t7
    /* DB978 800CC9C8 A3B80066 */  sb         $t8, 0x66($sp)
  .L800CC9CC_DB97C:
    /* DB97C 800CC9CC 0C000E38 */  jal        func_800038E0_44E0
    /* DB980 800CC9D0 00000000 */   nop
    /* DB984 800CC9D4 0C000E38 */  jal        func_800038E0_44E0
    /* DB988 800CC9D8 A7A20058 */   sh        $v0, 0x58($sp)
    /* DB98C 800CC9DC 0C000E38 */  jal        func_800038E0_44E0
    /* DB990 800CC9E0 A7A2005A */   sh        $v0, 0x5A($sp)
    /* DB994 800CC9E4 2403003C */  addiu      $v1, $zero, 0x3C
    /* DB998 800CC9E8 97A80058 */  lhu        $t0, 0x58($sp)
    /* DB99C 800CC9EC 97AD005A */  lhu        $t5, 0x5A($sp)
    /* DB9A0 800CC9F0 83AB0066 */  lb         $t3, 0x66($sp)
    /* DB9A4 800CC9F4 0103001A */  div        $zero, $t0, $v1
    /* DB9A8 800CC9F8 00004810 */  mfhi       $t1
    /* DB9AC 800CC9FC 252A0041 */  addiu      $t2, $t1, 0x41
    /* DB9B0 800CCA00 00103E00 */  sll        $a3, $s0, 24
    /* DB9B4 800CCA04 01A3001A */  div        $zero, $t5, $v1
    /* DB9B8 800CCA08 0007CE03 */  sra        $t9, $a3, 24
    /* DB9BC 800CCA0C 03203825 */  or         $a3, $t9, $zero
    /* DB9C0 800CCA10 00007010 */  mfhi       $t6
    /* DB9C4 800CCA14 AFAA0010 */  sw         $t2, 0x10($sp)
    /* DB9C8 800CCA18 AFAB0014 */  sw         $t3, 0x14($sp)
    /* DB9CC 800CCA1C 240B00FF */  addiu      $t3, $zero, 0xFF
    /* DB9D0 800CCA20 240A00C8 */  addiu      $t2, $zero, 0xC8
    /* DB9D4 800CCA24 25CF0046 */  addiu      $t7, $t6, 0x46
    /* DB9D8 800CCA28 240900C8 */  addiu      $t1, $zero, 0xC8
    /* DB9DC 800CCA2C 240C0014 */  addiu      $t4, $zero, 0x14
    /* DB9E0 800CCA30 AFAC0018 */  sw         $t4, 0x18($sp)
    /* DB9E4 800CCA34 AFA90028 */  sw         $t1, 0x28($sp)
    /* DB9E8 800CCA38 AFAF001C */  sw         $t7, 0x1C($sp)
    /* DB9EC 800CCA3C AFAA002C */  sw         $t2, 0x2C($sp)
    /* DB9F0 800CCA40 AFAB0030 */  sw         $t3, 0x30($sp)
    /* DB9F4 800CCA44 87A40076 */  lh         $a0, 0x76($sp)
    /* DB9F8 800CCA48 87A5007A */  lh         $a1, 0x7A($sp)
    /* DB9FC 800CCA4C 87A6007E */  lh         $a2, 0x7E($sp)
    /* DBA00 800CCA50 14600002 */  bnez       $v1, .L800CCA5C_DBA0C
    /* DBA04 800CCA54 00000000 */   nop
    /* DBA08 800CCA58 0007000D */  break      7
  .L800CCA5C_DBA0C:
    /* DBA0C 800CCA5C 2401FFFF */  addiu      $at, $zero, -0x1
    /* DBA10 800CCA60 14610004 */  bne        $v1, $at, .L800CCA74_DBA24
    /* DBA14 800CCA64 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DBA18 800CCA68 15010002 */  bne        $t0, $at, .L800CCA74_DBA24
    /* DBA1C 800CCA6C 00000000 */   nop
    /* DBA20 800CCA70 0006000D */  break      6
  .L800CCA74_DBA24:
    /* DBA24 800CCA74 24080004 */  addiu      $t0, $zero, 0x4
    /* DBA28 800CCA78 14600002 */  bnez       $v1, .L800CCA84_DBA34
    /* DBA2C 800CCA7C 00000000 */   nop
    /* DBA30 800CCA80 0007000D */  break      7
  .L800CCA84_DBA34:
    /* DBA34 800CCA84 2401FFFF */  addiu      $at, $zero, -0x1
    /* DBA38 800CCA88 14610004 */  bne        $v1, $at, .L800CCA9C_DBA4C
    /* DBA3C 800CCA8C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DBA40 800CCA90 15A10002 */  bne        $t5, $at, .L800CCA9C_DBA4C
    /* DBA44 800CCA94 00000000 */   nop
    /* DBA48 800CCA98 0006000D */  break      6
  .L800CCA9C_DBA4C:
    /* DBA4C 800CCA9C AFA80024 */  sw         $t0, 0x24($sp)
    /* DBA50 800CCAA0 04410004 */  bgez       $v0, .L800CCAB4_DBA64
    /* DBA54 800CCAA4 30580003 */   andi      $t8, $v0, 0x3
    /* DBA58 800CCAA8 13000002 */  beqz       $t8, .L800CCAB4_DBA64
    /* DBA5C 800CCAAC 00000000 */   nop
    /* DBA60 800CCAB0 2718FFFC */  addiu      $t8, $t8, -0x4
  .L800CCAB4_DBA64:
    /* DBA64 800CCAB4 27190004 */  addiu      $t9, $t8, 0x4
    /* DBA68 800CCAB8 0C031507 */  jal        func_800C541C_D43CC
    /* DBA6C 800CCABC AFB90020 */   sw        $t9, 0x20($sp)
  .L800CCAC0_DBA70:
    /* DBA70 800CCAC0 8FBF0044 */  lw         $ra, 0x44($sp)
    /* DBA74 800CCAC4 87A2005E */  lh         $v0, 0x5E($sp)
    /* DBA78 800CCAC8 8FB00040 */  lw         $s0, 0x40($sp)
    /* DBA7C 800CCACC 03E00008 */  jr         $ra
    /* DBA80 800CCAD0 27BD0068 */   addiu     $sp, $sp, 0x68
endlabel func_800CC7B0_DB760
