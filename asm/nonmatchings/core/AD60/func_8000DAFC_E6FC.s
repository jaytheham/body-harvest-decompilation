nonmatching func_8000DAFC_E6FC, 0x12C

glabel func_8000DAFC_E6FC
    /* E6FC 8000DAFC 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* E700 8000DB00 AFB70040 */  sw         $s7, 0x40($sp)
    /* E704 8000DB04 AFB6003C */  sw         $s6, 0x3C($sp)
    /* E708 8000DB08 AFB40034 */  sw         $s4, 0x34($sp)
    /* E70C 8000DB0C AFB30030 */  sw         $s3, 0x30($sp)
    /* E710 8000DB10 AFB2002C */  sw         $s2, 0x2C($sp)
    /* E714 8000DB14 00809025 */  or         $s2, $a0, $zero
    /* E718 8000DB18 00A09825 */  or         $s3, $a1, $zero
    /* E71C 8000DB1C 00E0B025 */  or         $s6, $a3, $zero
    /* E720 8000DB20 00C0B825 */  or         $s7, $a2, $zero
    /* E724 8000DB24 AFBF0044 */  sw         $ra, 0x44($sp)
    /* E728 8000DB28 AFB50038 */  sw         $s5, 0x38($sp)
    /* E72C 8000DB2C AFB10028 */  sw         $s1, 0x28($sp)
    /* E730 8000DB30 AFB00024 */  sw         $s0, 0x24($sp)
    /* E734 8000DB34 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* E738 8000DB38 10E0002F */  beqz       $a3, .L8000DBF8_E7F8
    /* E73C 8000DB3C 0000A025 */   or        $s4, $zero, $zero
    /* E740 8000DB40 C7B4005C */  lwc1       $f20, 0x5C($sp)
    /* E744 8000DB44 8FB50058 */  lw         $s5, 0x58($sp)
  .L8000DB48_E748:
    /* E748 8000DB48 12A00027 */  beqz       $s5, .L8000DBE8_E7E8
    /* E74C 8000DB4C 02A08825 */   or        $s1, $s5, $zero
    /* E750 8000DB50 8E4E0E50 */  lw         $t6, 0xE50($s2)
    /* E754 8000DB54 00147980 */  sll        $t7, $s4, 6
    /* E758 8000DB58 01F78021 */  addu       $s0, $t7, $s7
    /* E75C 8000DB5C 51C00023 */  beql       $t6, $zero, .L8000DBEC_E7EC
    /* E760 8000DB60 26940001 */   addiu     $s4, $s4, 0x1
    /* E764 8000DB64 44912000 */  mtc1       $s1, $f4
  .L8000DB68_E768:
    /* E768 8000DB68 C6020020 */  lwc1       $f2, 0x20($s0)
    /* E76C 8000DB6C 46802020 */  cvt.s.w    $f0, $f4
    /* E770 8000DB70 4602003C */  c.lt.s     $f0, $f2
    /* E774 8000DB74 00000000 */  nop
    /* E778 8000DB78 45020006 */  bc1fl      .L8000DB94_E794
    /* E77C 8000DB7C 46020201 */   sub.s     $f8, $f0, $f2
    /* E780 8000DB80 46001181 */  sub.s      $f6, $f2, $f0
    /* E784 8000DB84 00008825 */  or         $s1, $zero, $zero
    /* E788 8000DB88 10000012 */  b          .L8000DBD4_E7D4
    /* E78C 8000DB8C E6060020 */   swc1      $f6, 0x20($s0)
    /* E790 8000DB90 46020201 */  sub.s      $f8, $f0, $f2
  .L8000DB94_E794:
    /* E794 8000DB94 8E190018 */  lw         $t9, 0x18($s0)
    /* E798 8000DB98 8E0A0014 */  lw         $t2, 0x14($s0)
    /* E79C 8000DB9C 02402025 */  or         $a0, $s2, $zero
    /* E7A0 8000DBA0 4600428D */  trunc.w.s  $f10, $f8
    /* E7A4 8000DBA4 27280001 */  addiu      $t0, $t9, 0x1
    /* E7A8 8000DBA8 AE080018 */  sw         $t0, 0x18($s0)
    /* E7AC 8000DBAC 02602825 */  or         $a1, $s3, $zero
    /* E7B0 8000DBB0 44115000 */  mfc1       $s1, $f10
    /* E7B4 8000DBB4 150A0004 */  bne        $t0, $t2, .L8000DBC8_E7C8
    /* E7B8 8000DBB8 02003025 */   or        $a2, $s0, $zero
    /* E7BC 8000DBBC AE600E50 */  sw         $zero, 0xE50($s3)
    /* E7C0 8000DBC0 10000004 */  b          .L8000DBD4_E7D4
    /* E7C4 8000DBC4 AE400E50 */   sw        $zero, 0xE50($s2)
  .L8000DBC8_E7C8:
    /* E7C8 8000DBC8 328700FF */  andi       $a3, $s4, 0xFF
    /* E7CC 8000DBCC 0C003562 */  jal        func_8000D588_E188
    /* E7D0 8000DBD0 E7B40010 */   swc1      $f20, 0x10($sp)
  .L8000DBD4_E7D4:
    /* E7D4 8000DBD4 52200005 */  beql       $s1, $zero, .L8000DBEC_E7EC
    /* E7D8 8000DBD8 26940001 */   addiu     $s4, $s4, 0x1
    /* E7DC 8000DBDC 8E4B0E50 */  lw         $t3, 0xE50($s2)
    /* E7E0 8000DBE0 5560FFE1 */  bnel       $t3, $zero, .L8000DB68_E768
    /* E7E4 8000DBE4 44912000 */   mtc1      $s1, $f4
  .L8000DBE8_E7E8:
    /* E7E8 8000DBE8 26940001 */  addiu      $s4, $s4, 0x1
  .L8000DBEC_E7EC:
    /* E7EC 8000DBEC 328C00FF */  andi       $t4, $s4, 0xFF
    /* E7F0 8000DBF0 16CCFFD5 */  bne        $s6, $t4, .L8000DB48_E748
    /* E7F4 8000DBF4 0180A025 */   or        $s4, $t4, $zero
  .L8000DBF8_E7F8:
    /* E7F8 8000DBF8 8FBF0044 */  lw         $ra, 0x44($sp)
    /* E7FC 8000DBFC D7B40018 */  ldc1       $f20, 0x18($sp)
    /* E800 8000DC00 8FB00024 */  lw         $s0, 0x24($sp)
    /* E804 8000DC04 8FB10028 */  lw         $s1, 0x28($sp)
    /* E808 8000DC08 8FB2002C */  lw         $s2, 0x2C($sp)
    /* E80C 8000DC0C 8FB30030 */  lw         $s3, 0x30($sp)
    /* E810 8000DC10 8FB40034 */  lw         $s4, 0x34($sp)
    /* E814 8000DC14 8FB50038 */  lw         $s5, 0x38($sp)
    /* E818 8000DC18 8FB6003C */  lw         $s6, 0x3C($sp)
    /* E81C 8000DC1C 8FB70040 */  lw         $s7, 0x40($sp)
    /* E820 8000DC20 03E00008 */  jr         $ra
    /* E824 8000DC24 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_8000DAFC_E6FC
    /* E828 8000DC28 00000000 */  nop
    /* E82C 8000DC2C 00000000 */  nop
