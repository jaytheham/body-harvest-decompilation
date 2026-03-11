nonmatching func_800AE6CC_BD67C, 0x4F8

glabel func_800AE6CC_BD67C
    /* BD67C 800AE6CC 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* BD680 800AE6D0 AFB60030 */  sw         $s6, 0x30($sp)
    /* BD684 800AE6D4 3C168022 */  lui        $s6, %hi(D_80223778)
    /* BD688 800AE6D8 26D63778 */  addiu      $s6, $s6, %lo(D_80223778)
    /* BD68C 800AE6DC 8EC40000 */  lw         $a0, 0x0($s6)
    /* BD690 800AE6E0 AFB1001C */  sw         $s1, 0x1C($sp)
    /* BD694 800AE6E4 AFBF003C */  sw         $ra, 0x3C($sp)
    /* BD698 800AE6E8 AFBE0038 */  sw         $fp, 0x38($sp)
    /* BD69C 800AE6EC AFB70034 */  sw         $s7, 0x34($sp)
    /* BD6A0 800AE6F0 AFB5002C */  sw         $s5, 0x2C($sp)
    /* BD6A4 800AE6F4 AFB40028 */  sw         $s4, 0x28($sp)
    /* BD6A8 800AE6F8 AFB30024 */  sw         $s3, 0x24($sp)
    /* BD6AC 800AE6FC AFB20020 */  sw         $s2, 0x20($sp)
    /* BD6B0 800AE700 AFB00018 */  sw         $s0, 0x18($sp)
    /* BD6B4 800AE704 1880011E */  blez       $a0, .L800AEB80_BDB30
    /* BD6B8 800AE708 00008825 */   or        $s1, $zero, $zero
    /* BD6BC 800AE70C 3C178004 */  lui        $s7, %hi(D_80047F94)
    /* BD6C0 800AE710 3C148022 */  lui        $s4, %hi(D_80222A78)
    /* BD6C4 800AE714 3C128022 */  lui        $s2, %hi(D_80223780)
    /* BD6C8 800AE718 26523780 */  addiu      $s2, $s2, %lo(D_80223780)
    /* BD6CC 800AE71C 26942A78 */  addiu      $s4, $s4, %lo(D_80222A78)
    /* BD6D0 800AE720 26F77F94 */  addiu      $s7, $s7, %lo(D_80047F94)
    /* BD6D4 800AE724 27BE0064 */  addiu      $fp, $sp, 0x64
    /* BD6D8 800AE728 241500FF */  addiu      $s5, $zero, 0xFF
    /* BD6DC 800AE72C 24130014 */  addiu      $s3, $zero, 0x14
  .L800AE730_BD6E0:
    /* BD6E0 800AE730 00117100 */  sll        $t6, $s1, 4
    /* BD6E4 800AE734 028E1021 */  addu       $v0, $s4, $t6
    /* BD6E8 800AE738 904F0000 */  lbu        $t7, 0x0($v0)
    /* BD6EC 800AE73C 00008025 */  or         $s0, $zero, $zero
    /* BD6F0 800AE740 2DE1000B */  sltiu      $at, $t7, 0xB
    /* BD6F4 800AE744 102000E3 */  beqz       $at, .L800AEAD4_BDA84
    /* BD6F8 800AE748 000F7880 */   sll       $t7, $t7, 2
    /* BD6FC 800AE74C 3C018014 */  lui        $at, %hi(jtbl_80142C54_overlay_gameplay_outside)
    /* BD700 800AE750 002F0821 */  addu       $at, $at, $t7
    /* BD704 800AE754 8C2F2C54 */  lw         $t7, %lo(jtbl_80142C54_overlay_gameplay_outside)($at)
    /* BD708 800AE758 01E00008 */  jr         $t7
    /* BD70C 800AE75C 00000000 */   nop
    /* BD710 800AE760 90580009 */  lbu        $t8, 0x9($v0)
    /* BD714 800AE764 8EE80000 */  lw         $t0, 0x0($s7)
    /* BD718 800AE768 3C058005 */  lui        $a1, %hi(D_80052B34)
    /* BD71C 800AE76C 03130019 */  multu      $t8, $s3
    /* BD720 800AE770 0000C812 */  mflo       $t9
    /* BD724 800AE774 02592021 */  addu       $a0, $s2, $t9
    /* BD728 800AE778 90890012 */  lbu        $t1, 0x12($a0)
    /* BD72C 800AE77C 1509002D */  bne        $t0, $t1, .L800AE834_BD7E4
    /* BD730 800AE780 00000000 */   nop
    /* BD734 800AE784 8CA52B34 */  lw         $a1, %lo(D_80052B34)($a1)
    /* BD738 800AE788 804A0001 */  lb         $t2, 0x1($v0)
    /* BD73C 800AE78C 84AB0000 */  lh         $t3, 0x0($a1)
    /* BD740 800AE790 000B6203 */  sra        $t4, $t3, 8
    /* BD744 800AE794 014C1823 */  subu       $v1, $t2, $t4
    /* BD748 800AE798 00033023 */  negu       $a2, $v1
    /* BD74C 800AE79C 00C3082A */  slt        $at, $a2, $v1
    /* BD750 800AE7A0 10200003 */  beqz       $at, .L800AE7B0_BD760
    /* BD754 800AE7A4 00C03825 */   or        $a3, $a2, $zero
    /* BD758 800AE7A8 10000001 */  b          .L800AE7B0_BD760
    /* BD75C 800AE7AC 00603825 */   or        $a3, $v1, $zero
  .L800AE7B0_BD760:
    /* BD760 800AE7B0 90460003 */  lbu        $a2, 0x3($v0)
    /* BD764 800AE7B4 00E6082A */  slt        $at, $a3, $a2
    /* BD768 800AE7B8 1020001E */  beqz       $at, .L800AE834_BD7E4
    /* BD76C 800AE7BC 00000000 */   nop
    /* BD770 800AE7C0 84AE0004 */  lh         $t6, 0x4($a1)
    /* BD774 800AE7C4 804D0002 */  lb         $t5, 0x2($v0)
    /* BD778 800AE7C8 000E7A03 */  sra        $t7, $t6, 8
    /* BD77C 800AE7CC 01AF1823 */  subu       $v1, $t5, $t7
    /* BD780 800AE7D0 00033823 */  negu       $a3, $v1
    /* BD784 800AE7D4 00E3082A */  slt        $at, $a3, $v1
    /* BD788 800AE7D8 10200003 */  beqz       $at, .L800AE7E8_BD798
    /* BD78C 800AE7DC 00E01025 */   or        $v0, $a3, $zero
    /* BD790 800AE7E0 10000001 */  b          .L800AE7E8_BD798
    /* BD794 800AE7E4 00601025 */   or        $v0, $v1, $zero
  .L800AE7E8_BD798:
    /* BD798 800AE7E8 0046082A */  slt        $at, $v0, $a2
    /* BD79C 800AE7EC 10200011 */  beqz       $at, .L800AE834_BD7E4
    /* BD7A0 800AE7F0 00000000 */   nop
    /* BD7A4 800AE7F4 9083000D */  lbu        $v1, 0xD($a0)
    /* BD7A8 800AE7F8 9086000C */  lbu        $a2, 0xC($a0)
    /* BD7AC 800AE7FC 24040000 */  addiu      $a0, $zero, 0x0
    /* BD7B0 800AE800 12A30005 */  beq        $s5, $v1, .L800AE818_BD7C8
    /* BD7B4 800AE804 00602825 */   or        $a1, $v1, $zero
    /* BD7B8 800AE808 0C001C9B */  jal        func_8000726C_7E6C
    /* BD7BC 800AE80C A3A60062 */   sb        $a2, 0x62($sp)
    /* BD7C0 800AE810 10400008 */  beqz       $v0, .L800AE834_BD7E4
    /* BD7C4 800AE814 93A60062 */   lbu       $a2, 0x62($sp)
  .L800AE818_BD7C8:
    /* BD7C8 800AE818 12A60005 */  beq        $s5, $a2, .L800AE830_BD7E0
    /* BD7CC 800AE81C 00C02825 */   or        $a1, $a2, $zero
    /* BD7D0 800AE820 0C001C9B */  jal        func_8000726C_7E6C
    /* BD7D4 800AE824 24040000 */   addiu     $a0, $zero, 0x0
    /* BD7D8 800AE828 14400002 */  bnez       $v0, .L800AE834_BD7E4
    /* BD7DC 800AE82C 00000000 */   nop
  .L800AE830_BD7E0:
    /* BD7E0 800AE830 24100001 */  addiu      $s0, $zero, 0x1
  .L800AE834_BD7E4:
    /* BD7E4 800AE834 100000A7 */  b          .L800AEAD4_BDA84
    /* BD7E8 800AE838 8EC40000 */   lw        $a0, 0x0($s6)
    /* BD7EC 800AE83C 8C43000C */  lw         $v1, 0xC($v0)
    /* BD7F0 800AE840 3C18800B */  lui        $t8, %hi(func_800AFD48_BECF8)
    /* BD7F4 800AE844 2718FD48 */  addiu      $t8, $t8, %lo(func_800AFD48_BECF8)
    /* BD7F8 800AE848 3C058015 */  lui        $a1, %hi(D_8014F820)
    /* BD7FC 800AE84C 13030003 */  beq        $t8, $v1, .L800AE85C_BD80C
    /* BD800 800AE850 8CA5F820 */   lw        $a1, %lo(D_8014F820)($a1)
    /* BD804 800AE854 5460000D */  bnel       $v1, $zero, .L800AE88C_BD83C
    /* BD808 800AE858 8C4D0004 */   lw        $t5, 0x4($v0)
  .L800AE85C_BD80C:
    /* BD80C 800AE85C 90480009 */  lbu        $t0, 0x9($v0)
    /* BD810 800AE860 8EF90000 */  lw         $t9, 0x0($s7)
    /* BD814 800AE864 01130019 */  multu      $t0, $s3
    /* BD818 800AE868 00004812 */  mflo       $t1
    /* BD81C 800AE86C 02495821 */  addu       $t3, $s2, $t1
    /* BD820 800AE870 916A0012 */  lbu        $t2, 0x12($t3)
    /* BD824 800AE874 532A0005 */  beql       $t9, $t2, .L800AE88C_BD83C
    /* BD828 800AE878 8C4D0004 */   lw        $t5, 0x4($v0)
    /* BD82C 800AE87C 8C4C0004 */  lw         $t4, 0x4($v0)
    /* BD830 800AE880 258E0001 */  addiu      $t6, $t4, 0x1
    /* BD834 800AE884 AC4E0004 */  sw         $t6, 0x4($v0)
    /* BD838 800AE888 8C4D0004 */  lw         $t5, 0x4($v0)
  .L800AE88C_BD83C:
    /* BD83C 800AE88C 00AD082B */  sltu       $at, $a1, $t5
    /* BD840 800AE890 14200090 */  bnez       $at, .L800AEAD4_BDA84
    /* BD844 800AE894 00000000 */   nop
    /* BD848 800AE898 1000008E */  b          .L800AEAD4_BDA84
    /* BD84C 800AE89C 24100001 */   addiu     $s0, $zero, 0x1
    /* BD850 800AE8A0 8C43000C */  lw         $v1, 0xC($v0)
    /* BD854 800AE8A4 3C0F800B */  lui        $t7, %hi(func_800AFD48_BECF8)
    /* BD858 800AE8A8 25EFFD48 */  addiu      $t7, $t7, %lo(func_800AFD48_BECF8)
    /* BD85C 800AE8AC 3C058015 */  lui        $a1, %hi(D_8014F820)
    /* BD860 800AE8B0 11E30003 */  beq        $t7, $v1, .L800AE8C0_BD870
    /* BD864 800AE8B4 8CA5F820 */   lw        $a1, %lo(D_8014F820)($a1)
    /* BD868 800AE8B8 5460000D */  bnel       $v1, $zero, .L800AE8F0_BD8A0
    /* BD86C 800AE8BC 8C4E0004 */   lw        $t6, 0x4($v0)
  .L800AE8C0_BD870:
    /* BD870 800AE8C0 90480009 */  lbu        $t0, 0x9($v0)
    /* BD874 800AE8C4 8EF80000 */  lw         $t8, 0x0($s7)
    /* BD878 800AE8C8 01130019 */  multu      $t0, $s3
    /* BD87C 800AE8CC 00004812 */  mflo       $t1
    /* BD880 800AE8D0 02495821 */  addu       $t3, $s2, $t1
    /* BD884 800AE8D4 91790012 */  lbu        $t9, 0x12($t3)
    /* BD888 800AE8D8 53190005 */  beql       $t8, $t9, .L800AE8F0_BD8A0
    /* BD88C 800AE8DC 8C4E0004 */   lw        $t6, 0x4($v0)
    /* BD890 800AE8E0 8C4A0004 */  lw         $t2, 0x4($v0)
    /* BD894 800AE8E4 254C0001 */  addiu      $t4, $t2, 0x1
    /* BD898 800AE8E8 AC4C0004 */  sw         $t4, 0x4($v0)
    /* BD89C 800AE8EC 8C4E0004 */  lw         $t6, 0x4($v0)
  .L800AE8F0_BD8A0:
    /* BD8A0 800AE8F0 00AE082B */  sltu       $at, $a1, $t6
    /* BD8A4 800AE8F4 14200015 */  bnez       $at, .L800AE94C_BD8FC
    /* BD8A8 800AE8F8 00000000 */   nop
    /* BD8AC 800AE8FC 904D0009 */  lbu        $t5, 0x9($v0)
    /* BD8B0 800AE900 01B30019 */  multu      $t5, $s3
    /* BD8B4 800AE904 00007812 */  mflo       $t7
    /* BD8B8 800AE908 024F2021 */  addu       $a0, $s2, $t7
    /* BD8BC 800AE90C 9083000D */  lbu        $v1, 0xD($a0)
    /* BD8C0 800AE910 9086000C */  lbu        $a2, 0xC($a0)
    /* BD8C4 800AE914 24040000 */  addiu      $a0, $zero, 0x0
    /* BD8C8 800AE918 12A30005 */  beq        $s5, $v1, .L800AE930_BD8E0
    /* BD8CC 800AE91C 00602825 */   or        $a1, $v1, $zero
    /* BD8D0 800AE920 0C001C9B */  jal        func_8000726C_7E6C
    /* BD8D4 800AE924 A3A60062 */   sb        $a2, 0x62($sp)
    /* BD8D8 800AE928 10400008 */  beqz       $v0, .L800AE94C_BD8FC
    /* BD8DC 800AE92C 93A60062 */   lbu       $a2, 0x62($sp)
  .L800AE930_BD8E0:
    /* BD8E0 800AE930 12A60005 */  beq        $s5, $a2, .L800AE948_BD8F8
    /* BD8E4 800AE934 00C02825 */   or        $a1, $a2, $zero
    /* BD8E8 800AE938 0C001C9B */  jal        func_8000726C_7E6C
    /* BD8EC 800AE93C 24040000 */   addiu     $a0, $zero, 0x0
    /* BD8F0 800AE940 14400002 */  bnez       $v0, .L800AE94C_BD8FC
    /* BD8F4 800AE944 00000000 */   nop
  .L800AE948_BD8F8:
    /* BD8F8 800AE948 24100001 */  addiu      $s0, $zero, 0x1
  .L800AE94C_BD8FC:
    /* BD8FC 800AE94C 10000061 */  b          .L800AEAD4_BDA84
    /* BD900 800AE950 8EC40000 */   lw        $a0, 0x0($s6)
    /* BD904 800AE954 90480008 */  lbu        $t0, 0x8($v0)
    /* BD908 800AE958 3C0B8005 */  lui        $t3, %hi(D_800481B8)
    /* BD90C 800AE95C 3C010030 */  lui        $at, (0x300000 >> 16)
    /* BD910 800AE960 00084880 */  sll        $t1, $t0, 2
    /* BD914 800AE964 01284821 */  addu       $t1, $t1, $t0
    /* BD918 800AE968 00094900 */  sll        $t1, $t1, 4
    /* BD91C 800AE96C 01695821 */  addu       $t3, $t3, $t1
    /* BD920 800AE970 8D6B81B8 */  lw         $t3, %lo(D_800481B8)($t3)
    /* BD924 800AE974 0161C024 */  and        $t8, $t3, $at
    /* BD928 800AE978 13000056 */  beqz       $t8, .L800AEAD4_BDA84
    /* BD92C 800AE97C 00000000 */   nop
    /* BD930 800AE980 10000054 */  b          .L800AEAD4_BDA84
    /* BD934 800AE984 24100001 */   addiu     $s0, $zero, 0x1
    /* BD938 800AE988 90590008 */  lbu        $t9, 0x8($v0)
    /* BD93C 800AE98C 3C0C8005 */  lui        $t4, %hi(D_800481B8)
    /* BD940 800AE990 00195080 */  sll        $t2, $t9, 2
    /* BD944 800AE994 01595021 */  addu       $t2, $t2, $t9
    /* BD948 800AE998 000A5100 */  sll        $t2, $t2, 4
    /* BD94C 800AE99C 018A6021 */  addu       $t4, $t4, $t2
    /* BD950 800AE9A0 8D8C81B8 */  lw         $t4, %lo(D_800481B8)($t4)
    /* BD954 800AE9A4 000C7000 */  sll        $t6, $t4, 0
    /* BD958 800AE9A8 05C1004A */  bgez       $t6, .L800AEAD4_BDA84
    /* BD95C 800AE9AC 00000000 */   nop
    /* BD960 800AE9B0 10000048 */  b          .L800AEAD4_BDA84
    /* BD964 800AE9B4 24100001 */   addiu     $s0, $zero, 0x1
    /* BD968 800AE9B8 3C0D8015 */  lui        $t5, %hi(D_80149440)
    /* BD96C 800AE9BC 85AD9440 */  lh         $t5, %lo(D_80149440)($t5)
    /* BD970 800AE9C0 904F0008 */  lbu        $t7, 0x8($v0)
    /* BD974 800AE9C4 15AF0043 */  bne        $t5, $t7, .L800AEAD4_BDA84
    /* BD978 800AE9C8 00000000 */   nop
    /* BD97C 800AE9CC 10000041 */  b          .L800AEAD4_BDA84
    /* BD980 800AE9D0 24100001 */   addiu     $s0, $zero, 0x1
    /* BD984 800AE9D4 90480008 */  lbu        $t0, 0x8($v0)
    /* BD988 800AE9D8 3C0B8005 */  lui        $t3, %hi(D_8004DCEC)
    /* BD98C 800AE9DC 00084880 */  sll        $t1, $t0, 2
    /* BD990 800AE9E0 01284823 */  subu       $t1, $t1, $t0
    /* BD994 800AE9E4 000948C0 */  sll        $t1, $t1, 3
    /* BD998 800AE9E8 01284823 */  subu       $t1, $t1, $t0
    /* BD99C 800AE9EC 00094880 */  sll        $t1, $t1, 2
    /* BD9A0 800AE9F0 01695821 */  addu       $t3, $t3, $t1
    /* BD9A4 800AE9F4 856BDCEC */  lh         $t3, %lo(D_8004DCEC)($t3)
    /* BD9A8 800AE9F8 1D600036 */  bgtz       $t3, .L800AEAD4_BDA84
    /* BD9AC 800AE9FC 00000000 */   nop
    /* BD9B0 800AEA00 10000034 */  b          .L800AEAD4_BDA84
    /* BD9B4 800AEA04 24100001 */   addiu     $s0, $zero, 0x1
    /* BD9B8 800AEA08 90580008 */  lbu        $t8, 0x8($v0)
    /* BD9BC 800AEA0C 3C0A8005 */  lui        $t2, %hi(D_80050AE0)
    /* BD9C0 800AEA10 0018C880 */  sll        $t9, $t8, 2
    /* BD9C4 800AEA14 0338C823 */  subu       $t9, $t9, $t8
    /* BD9C8 800AEA18 0019C8C0 */  sll        $t9, $t9, 3
    /* BD9CC 800AEA1C 01595021 */  addu       $t2, $t2, $t9
    /* BD9D0 800AEA20 8D4A0AE0 */  lw         $t2, %lo(D_80050AE0)($t2)
    /* BD9D4 800AEA24 000A6302 */  srl        $t4, $t2, 12
    /* BD9D8 800AEA28 318E0001 */  andi       $t6, $t4, 0x1
    /* BD9DC 800AEA2C 15C00029 */  bnez       $t6, .L800AEAD4_BDA84
    /* BD9E0 800AEA30 00000000 */   nop
    /* BD9E4 800AEA34 10000027 */  b          .L800AEAD4_BDA84
    /* BD9E8 800AEA38 24100001 */   addiu     $s0, $zero, 0x1
    /* BD9EC 800AEA3C 3C0D8005 */  lui        $t5, %hi(D_80052540)
    /* BD9F0 800AEA40 8DAD2540 */  lw         $t5, %lo(D_80052540)($t5)
    /* BD9F4 800AEA44 904F0008 */  lbu        $t7, 0x8($v0)
    /* BD9F8 800AEA48 15AF0022 */  bne        $t5, $t7, .L800AEAD4_BDA84
    /* BD9FC 800AEA4C 00000000 */   nop
    /* BDA00 800AEA50 3C048014 */  lui        $a0, %hi(D_80142B50)
    /* BDA04 800AEA54 0C00731B */  jal        osSyncPrintf
    /* BDA08 800AEA58 24842B50 */   addiu     $a0, $a0, %lo(D_80142B50)
    /* BDA0C 800AEA5C 24100001 */  addiu      $s0, $zero, 0x1
    /* BDA10 800AEA60 1000001C */  b          .L800AEAD4_BDA84
    /* BDA14 800AEA64 8EC40000 */   lw        $a0, 0x0($s6)
    /* BDA18 800AEA68 90480009 */  lbu        $t0, 0x9($v0)
    /* BDA1C 800AEA6C 01130019 */  multu      $t0, $s3
    /* BDA20 800AEA70 00004812 */  mflo       $t1
    /* BDA24 800AEA74 02495821 */  addu       $t3, $s2, $t1
    /* BDA28 800AEA78 91780010 */  lbu        $t8, 0x10($t3)
    /* BDA2C 800AEA7C 17000015 */  bnez       $t8, .L800AEAD4_BDA84
    /* BDA30 800AEA80 00000000 */   nop
    /* BDA34 800AEA84 10000013 */  b          .L800AEAD4_BDA84
    /* BDA38 800AEA88 24100001 */   addiu     $s0, $zero, 0x1
    /* BDA3C 800AEA8C 2499FFFF */  addiu      $t9, $a0, -0x1
    /* BDA40 800AEA90 0239082A */  slt        $at, $s1, $t9
    /* BDA44 800AEA94 AED90000 */  sw         $t9, 0x0($s6)
    /* BDA48 800AEA98 1020000E */  beqz       $at, .L800AEAD4_BDA84
    /* BDA4C 800AEA9C 03202025 */   or        $a0, $t9, $zero
    /* BDA50 800AEAA0 00195100 */  sll        $t2, $t9, 4
    /* BDA54 800AEAA4 028A6021 */  addu       $t4, $s4, $t2
    /* BDA58 800AEAA8 8D810000 */  lw         $at, 0x0($t4)
    /* BDA5C 800AEAAC 2631FFFF */  addiu      $s1, $s1, -0x1
    /* BDA60 800AEAB0 322F00FF */  andi       $t7, $s1, 0xFF
    /* BDA64 800AEAB4 AC410000 */  sw         $at, 0x0($v0)
    /* BDA68 800AEAB8 8D8D0004 */  lw         $t5, 0x4($t4)
    /* BDA6C 800AEABC 01E08825 */  or         $s1, $t7, $zero
    /* BDA70 800AEAC0 AC4D0004 */  sw         $t5, 0x4($v0)
    /* BDA74 800AEAC4 8D810008 */  lw         $at, 0x8($t4)
    /* BDA78 800AEAC8 AC410008 */  sw         $at, 0x8($v0)
    /* BDA7C 800AEACC 8D8D000C */  lw         $t5, 0xC($t4)
    /* BDA80 800AEAD0 AC4D000C */  sw         $t5, 0xC($v0)
  .L800AEAD4_BDA84:
    /* BDA84 800AEAD4 12000025 */  beqz       $s0, .L800AEB6C_BDB1C
    /* BDA88 800AEAD8 00114100 */   sll       $t0, $s1, 4
    /* BDA8C 800AEADC 02881021 */  addu       $v0, $s4, $t0
    /* BDA90 800AEAE0 8C410000 */  lw         $at, 0x0($v0)
    /* BDA94 800AEAE4 8C4B0004 */  lw         $t3, 0x4($v0)
    /* BDA98 800AEAE8 2498FFFF */  addiu      $t8, $a0, -0x1
    /* BDA9C 800AEAEC AFC10000 */  sw         $at, 0x0($fp)
    /* BDAA0 800AEAF0 8C410008 */  lw         $at, 0x8($v0)
    /* BDAA4 800AEAF4 AFCB0004 */  sw         $t3, 0x4($fp)
    /* BDAA8 800AEAF8 8C4B000C */  lw         $t3, 0xC($v0)
    /* BDAAC 800AEAFC AFC10008 */  sw         $at, 0x8($fp)
    /* BDAB0 800AEB00 0238082A */  slt        $at, $s1, $t8
    /* BDAB4 800AEB04 AED80000 */  sw         $t8, 0x0($s6)
    /* BDAB8 800AEB08 1020000E */  beqz       $at, .L800AEB44_BDAF4
    /* BDABC 800AEB0C AFCB000C */   sw        $t3, 0xC($fp)
    /* BDAC0 800AEB10 0018C900 */  sll        $t9, $t8, 4
    /* BDAC4 800AEB14 02995021 */  addu       $t2, $s4, $t9
    /* BDAC8 800AEB18 8D410000 */  lw         $at, 0x0($t2)
    /* BDACC 800AEB1C 2631FFFF */  addiu      $s1, $s1, -0x1
    /* BDAD0 800AEB20 322D00FF */  andi       $t5, $s1, 0xFF
    /* BDAD4 800AEB24 AC410000 */  sw         $at, 0x0($v0)
    /* BDAD8 800AEB28 8D4C0004 */  lw         $t4, 0x4($t2)
    /* BDADC 800AEB2C 01A08825 */  or         $s1, $t5, $zero
    /* BDAE0 800AEB30 AC4C0004 */  sw         $t4, 0x4($v0)
    /* BDAE4 800AEB34 8D410008 */  lw         $at, 0x8($t2)
    /* BDAE8 800AEB38 AC410008 */  sw         $at, 0x8($v0)
    /* BDAEC 800AEB3C 8D4C000C */  lw         $t4, 0xC($t2)
    /* BDAF0 800AEB40 AC4C000C */  sw         $t4, 0xC($v0)
  .L800AEB44_BDAF4:
    /* BDAF4 800AEB44 8FA20070 */  lw         $v0, 0x70($sp)
    /* BDAF8 800AEB48 10400005 */  beqz       $v0, .L800AEB60_BDB10
    /* BDAFC 800AEB4C 00000000 */   nop
    /* BDB00 800AEB50 0040F809 */  jalr       $v0
    /* BDB04 800AEB54 03C02025 */   or        $a0, $fp, $zero
    /* BDB08 800AEB58 10000004 */  b          .L800AEB6C_BDB1C
    /* BDB0C 800AEB5C 8EC40000 */   lw        $a0, 0x0($s6)
  .L800AEB60_BDB10:
    /* BDB10 800AEB60 0C02BF52 */  jal        func_800AFD48_BECF8
    /* BDB14 800AEB64 03C02025 */   or        $a0, $fp, $zero
    /* BDB18 800AEB68 8EC40000 */  lw         $a0, 0x0($s6)
  .L800AEB6C_BDB1C:
    /* BDB1C 800AEB6C 26310001 */  addiu      $s1, $s1, 0x1
    /* BDB20 800AEB70 322F00FF */  andi       $t7, $s1, 0xFF
    /* BDB24 800AEB74 01E4082A */  slt        $at, $t7, $a0
    /* BDB28 800AEB78 1420FEED */  bnez       $at, .L800AE730_BD6E0
    /* BDB2C 800AEB7C 01E08825 */   or        $s1, $t7, $zero
  .L800AEB80_BDB30:
    /* BDB30 800AEB80 3C028015 */  lui        $v0, %hi(D_8014F820)
    /* BDB34 800AEB84 2442F820 */  addiu      $v0, $v0, %lo(D_8014F820)
    /* BDB38 800AEB88 8C480000 */  lw         $t0, 0x0($v0)
    /* BDB3C 800AEB8C 8FBF003C */  lw         $ra, 0x3C($sp)
    /* BDB40 800AEB90 8FB00018 */  lw         $s0, 0x18($sp)
    /* BDB44 800AEB94 8FB1001C */  lw         $s1, 0x1C($sp)
    /* BDB48 800AEB98 8FB20020 */  lw         $s2, 0x20($sp)
    /* BDB4C 800AEB9C 8FB30024 */  lw         $s3, 0x24($sp)
    /* BDB50 800AEBA0 8FB40028 */  lw         $s4, 0x28($sp)
    /* BDB54 800AEBA4 8FB5002C */  lw         $s5, 0x2C($sp)
    /* BDB58 800AEBA8 8FB60030 */  lw         $s6, 0x30($sp)
    /* BDB5C 800AEBAC 8FB70034 */  lw         $s7, 0x34($sp)
    /* BDB60 800AEBB0 8FBE0038 */  lw         $fp, 0x38($sp)
    /* BDB64 800AEBB4 25090001 */  addiu      $t1, $t0, 0x1
    /* BDB68 800AEBB8 AC490000 */  sw         $t1, 0x0($v0)
    /* BDB6C 800AEBBC 03E00008 */  jr         $ra
    /* BDB70 800AEBC0 27BD0078 */   addiu     $sp, $sp, 0x78
endlabel func_800AE6CC_BD67C
