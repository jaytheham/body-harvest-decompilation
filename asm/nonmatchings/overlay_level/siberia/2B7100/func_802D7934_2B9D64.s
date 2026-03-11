nonmatching func_802D7934_2B9D64, 0x298

glabel func_802D7934_2B9D64
    /* 2B9D64 802D7934 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2B9D68 802D7938 000E5880 */  sll        $t3, $t6, 2
    /* 2B9D6C 802D793C 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* 2B9D70 802D7940 016E5821 */  addu       $t3, $t3, $t6
    /* 2B9D74 802D7944 3C0C8005 */  lui        $t4, %hi(alienInstances)
    /* 2B9D78 802D7948 AFB10040 */  sw         $s1, 0x40($sp)
    /* 2B9D7C 802D794C 258C8198 */  addiu      $t4, $t4, %lo(alienInstances)
    /* 2B9D80 802D7950 000B5900 */  sll        $t3, $t3, 4
    /* 2B9D84 802D7954 016C8821 */  addu       $s1, $t3, $t4
    /* 2B9D88 802D7958 8E220020 */  lw         $v0, 0x20($s1)
    /* 2B9D8C 802D795C AFA40068 */  sw         $a0, 0x68($sp)
    /* 2B9D90 802D7960 00057C00 */  sll        $t7, $a1, 16
    /* 2B9D94 802D7964 0006CC00 */  sll        $t9, $a2, 16
    /* 2B9D98 802D7968 00074C00 */  sll        $t1, $a3, 16
    /* 2B9D9C 802D796C 304DC000 */  andi       $t5, $v0, 0xC000
    /* 2B9DA0 802D7970 00095403 */  sra        $t2, $t1, 16
    /* 2B9DA4 802D7974 00194403 */  sra        $t0, $t9, 16
    /* 2B9DA8 802D7978 000FC403 */  sra        $t8, $t7, 16
    /* 2B9DAC 802D797C 01C02025 */  or         $a0, $t6, $zero
    /* 2B9DB0 802D7980 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 2B9DB4 802D7984 AFB0003C */  sw         $s0, 0x3C($sp)
    /* 2B9DB8 802D7988 AFA5006C */  sw         $a1, 0x6C($sp)
    /* 2B9DBC 802D798C AFA60070 */  sw         $a2, 0x70($sp)
    /* 2B9DC0 802D7990 11A00089 */  beqz       $t5, .L802D7BB8_2B9FE8
    /* 2B9DC4 802D7994 AFA70074 */   sw        $a3, 0x74($sp)
    /* 2B9DC8 802D7998 87AE007A */  lh         $t6, 0x7A($sp)
    /* 2B9DCC 802D799C 304F8000 */  andi       $t7, $v0, 0x8000
    /* 2B9DD0 802D79A0 A7B80060 */  sh         $t8, 0x60($sp)
    /* 2B9DD4 802D79A4 A7A80062 */  sh         $t0, 0x62($sp)
    /* 2B9DD8 802D79A8 A7AA0064 */  sh         $t2, 0x64($sp)
    /* 2B9DDC 802D79AC 11E0000C */  beqz       $t7, .L802D79E0_2B9E10
    /* 2B9DE0 802D79B0 A7AE0066 */   sh        $t6, 0x66($sp)
    /* 2B9DE4 802D79B4 3C18802E */  lui        $t8, %hi(D_802E10A4)
    /* 2B9DE8 802D79B8 271810A4 */  addiu      $t8, $t8, %lo(D_802E10A4)
    /* 2B9DEC 802D79BC AFB80010 */  sw         $t8, 0x10($sp)
    /* 2B9DF0 802D79C0 24050004 */  addiu      $a1, $zero, 0x4
    /* 2B9DF4 802D79C4 24060004 */  addiu      $a2, $zero, 0x4
    /* 2B9DF8 802D79C8 27A70060 */  addiu      $a3, $sp, 0x60
    /* 2B9DFC 802D79CC 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2B9E00 802D79D0 A3A4006B */   sb        $a0, 0x6B($sp)
    /* 2B9E04 802D79D4 00401825 */  or         $v1, $v0, $zero
    /* 2B9E08 802D79D8 1000000B */  b          .L802D7A08_2B9E38
    /* 2B9E0C 802D79DC A3A2005F */   sb        $v0, 0x5F($sp)
  .L802D79E0_2B9E10:
    /* 2B9E10 802D79E0 3C19802E */  lui        $t9, %hi(D_802E0FD4)
    /* 2B9E14 802D79E4 27390FD4 */  addiu      $t9, $t9, %lo(D_802E0FD4)
    /* 2B9E18 802D79E8 AFB90010 */  sw         $t9, 0x10($sp)
    /* 2B9E1C 802D79EC 24050004 */  addiu      $a1, $zero, 0x4
    /* 2B9E20 802D79F0 24060004 */  addiu      $a2, $zero, 0x4
    /* 2B9E24 802D79F4 27A70060 */  addiu      $a3, $sp, 0x60
    /* 2B9E28 802D79F8 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2B9E2C 802D79FC A3A4006B */   sb        $a0, 0x6B($sp)
    /* 2B9E30 802D7A00 00401825 */  or         $v1, $v0, $zero
    /* 2B9E34 802D7A04 A3A2005F */  sb         $v0, 0x5F($sp)
  .L802D7A08_2B9E38:
    /* 2B9E38 802D7A08 306800FF */  andi       $t0, $v1, 0xFF
    /* 2B9E3C 802D7A0C 24010002 */  addiu      $at, $zero, 0x2
    /* 2B9E40 802D7A10 15010060 */  bne        $t0, $at, .L802D7B94_2B9FC4
    /* 2B9E44 802D7A14 93A4006B */   lbu       $a0, 0x6B($sp)
    /* 2B9E48 802D7A18 2405003C */  addiu      $a1, $zero, 0x3C
    /* 2B9E4C 802D7A1C 0C021E69 */  jal        func_800879A4_96954
    /* 2B9E50 802D7A20 00003025 */   or        $a2, $zero, $zero
    /* 2B9E54 802D7A24 10400054 */  beqz       $v0, .L802D7B78_2B9FA8
    /* 2B9E58 802D7A28 3C108005 */   lui       $s0, %hi(D_80052B34)
    /* 2B9E5C 802D7A2C 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* 2B9E60 802D7A30 93A4006B */  lbu        $a0, 0x6B($sp)
    /* 2B9E64 802D7A34 9209001A */  lbu        $t1, 0x1A($s0)
    /* 2B9E68 802D7A38 11200043 */  beqz       $t1, .L802D7B48_2B9F78
    /* 2B9E6C 802D7A3C 00000000 */   nop
    /* 2B9E70 802D7A40 0C04DD1A */  jal        func_80137468_146418
    /* 2B9E74 802D7A44 24050258 */   addiu     $a1, $zero, 0x258
    /* 2B9E78 802D7A48 86240006 */  lh         $a0, 0x6($s1)
    /* 2B9E7C 802D7A4C 24844000 */  addiu      $a0, $a0, 0x4000
    /* 2B9E80 802D7A50 308AFFFF */  andi       $t2, $a0, 0xFFFF
    /* 2B9E84 802D7A54 0C007660 */  jal        sins
    /* 2B9E88 802D7A58 01402025 */   or        $a0, $t2, $zero
    /* 2B9E8C 802D7A5C 44822000 */  mtc1       $v0, $f4
    /* 2B9E90 802D7A60 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2B9E94 802D7A64 44815800 */  mtc1       $at, $f11
    /* 2B9E98 802D7A68 468021A0 */  cvt.s.w    $f6, $f4
    /* 2B9E9C 802D7A6C 44805000 */  mtc1       $zero, $f10
    /* 2B9EA0 802D7A70 86240006 */  lh         $a0, 0x6($s1)
    /* 2B9EA4 802D7A74 24844000 */  addiu      $a0, $a0, 0x4000
    /* 2B9EA8 802D7A78 46003221 */  cvt.d.s    $f8, $f6
    /* 2B9EAC 802D7A7C 308BFFFF */  andi       $t3, $a0, 0xFFFF
    /* 2B9EB0 802D7A80 462A4403 */  div.d      $f16, $f8, $f10
    /* 2B9EB4 802D7A84 01602025 */  or         $a0, $t3, $zero
    /* 2B9EB8 802D7A88 462084A0 */  cvt.s.d    $f18, $f16
    /* 2B9EBC 802D7A8C 0C007654 */  jal        coss
    /* 2B9EC0 802D7A90 E7B20058 */   swc1      $f18, 0x58($sp)
    /* 2B9EC4 802D7A94 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
    /* 2B9EC8 802D7A98 44810000 */  mtc1       $at, $f0
    /* 2B9ECC 802D7A9C C7A40058 */  lwc1       $f4, 0x58($sp)
    /* 2B9ED0 802D7AA0 44825000 */  mtc1       $v0, $f10
    /* 2B9ED4 802D7AA4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2B9ED8 802D7AA8 46002182 */  mul.s      $f6, $f4, $f0
    /* 2B9EDC 802D7AAC 44802000 */  mtc1       $zero, $f4
    /* 2B9EE0 802D7AB0 44812800 */  mtc1       $at, $f5
    /* 2B9EE4 802D7AB4 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 2B9EE8 802D7AB8 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* 2B9EEC 802D7ABC 240FFFB0 */  addiu      $t7, $zero, -0x50
    /* 2B9EF0 802D7AC0 46805420 */  cvt.s.w    $f16, $f10
    /* 2B9EF4 802D7AC4 86040000 */  lh         $a0, 0x0($s0)
    /* 2B9EF8 802D7AC8 86050002 */  lh         $a1, 0x2($s0)
    /* 2B9EFC 802D7ACC 86060004 */  lh         $a2, 0x4($s0)
    /* 2B9F00 802D7AD0 240800B4 */  addiu      $t0, $zero, 0xB4
    /* 2B9F04 802D7AD4 4600320D */  trunc.w.s  $f8, $f6
    /* 2B9F08 802D7AD8 240900FF */  addiu      $t1, $zero, 0xFF
    /* 2B9F0C 802D7ADC 240A0028 */  addiu      $t2, $zero, 0x28
    /* 2B9F10 802D7AE0 460084A1 */  cvt.d.s    $f18, $f16
    /* 2B9F14 802D7AE4 44074000 */  mfc1       $a3, $f8
    /* 2B9F18 802D7AE8 46249183 */  div.d      $f6, $f18, $f4
    /* 2B9F1C 802D7AEC 240B0014 */  addiu      $t3, $zero, 0x14
    /* 2B9F20 802D7AF0 00076E00 */  sll        $t5, $a3, 24
    /* 2B9F24 802D7AF4 000D3E03 */  sra        $a3, $t5, 24
    /* 2B9F28 802D7AF8 240D00FF */  addiu      $t5, $zero, 0xFF
    /* 2B9F2C 802D7AFC 240C00FF */  addiu      $t4, $zero, 0xFF
    /* 2B9F30 802D7B00 240E00C8 */  addiu      $t6, $zero, 0xC8
    /* 2B9F34 802D7B04 AFAE0030 */  sw         $t6, 0x30($sp)
    /* 2B9F38 802D7B08 AFAC0028 */  sw         $t4, 0x28($sp)
    /* 2B9F3C 802D7B0C AFAD002C */  sw         $t5, 0x2C($sp)
    /* 2B9F40 802D7B10 AFAB0024 */  sw         $t3, 0x24($sp)
    /* 2B9F44 802D7B14 AFAA0020 */  sw         $t2, 0x20($sp)
    /* 2B9F48 802D7B18 AFA9001C */  sw         $t1, 0x1C($sp)
    /* 2B9F4C 802D7B1C AFA80018 */  sw         $t0, 0x18($sp)
    /* 2B9F50 802D7B20 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 2B9F54 802D7B24 46203207 */  neg.d      $f8, $f6
    /* 2B9F58 802D7B28 462042A0 */  cvt.s.d    $f10, $f8
    /* 2B9F5C 802D7B2C 46005402 */  mul.s      $f16, $f10, $f0
    /* 2B9F60 802D7B30 4600848D */  trunc.w.s  $f18, $f16
    /* 2B9F64 802D7B34 44199000 */  mfc1       $t9, $f18
    /* 2B9F68 802D7B38 0C031507 */  jal        func_800C541C_D43CC
    /* 2B9F6C 802D7B3C AFB90014 */   sw        $t9, 0x14($sp)
    /* 2B9F70 802D7B40 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 2B9F74 802D7B44 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
  .L802D7B48_2B9F78:
    /* 2B9F78 802D7B48 3C058014 */  lui        $a1, %hi(D_8014619A)
    /* 2B9F7C 802D7B4C 84A5619A */  lh         $a1, %lo(D_8014619A)($a1)
    /* 2B9F80 802D7B50 02002025 */  or         $a0, $s0, $zero
    /* 2B9F84 802D7B54 86260000 */  lh         $a2, 0x0($s1)
    /* 2B9F88 802D7B58 0C048949 */  jal        func_80122524_1314D4
    /* 2B9F8C 802D7B5C 86270004 */   lh        $a3, 0x4($s1)
    /* 2B9F90 802D7B60 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 2B9F94 802D7B64 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 2B9F98 802D7B68 86250006 */  lh         $a1, 0x6($s1)
    /* 2B9F9C 802D7B6C 00003025 */  or         $a2, $zero, $zero
    /* 2B9FA0 802D7B70 0C040B77 */  jal        func_80102DDC_111D8C
    /* 2B9FA4 802D7B74 3C074348 */   lui       $a3, (0x43480000 >> 16)
  .L802D7B78_2B9FA8:
    /* 2B9FA8 802D7B78 93B0006B */  lbu        $s0, 0x6B($sp)
    /* 2B9FAC 802D7B7C 24050134 */  addiu      $a1, $zero, 0x134
    /* 2B9FB0 802D7B80 0C04DD1A */  jal        func_80137468_146418
    /* 2B9FB4 802D7B84 02002025 */   or        $a0, $s0, $zero
    /* 2B9FB8 802D7B88 02002025 */  or         $a0, $s0, $zero
    /* 2B9FBC 802D7B8C 0C04DD1A */  jal        func_80137468_146418
    /* 2B9FC0 802D7B90 24050131 */   addiu     $a1, $zero, 0x131
  .L802D7B94_2B9FC4:
    /* 2B9FC4 802D7B94 93AF005F */  lbu        $t7, 0x5F($sp)
    /* 2B9FC8 802D7B98 24010004 */  addiu      $at, $zero, 0x4
    /* 2B9FCC 802D7B9C 55E10007 */  bnel       $t7, $at, .L802D7BBC_2B9FEC
    /* 2B9FD0 802D7BA0 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 2B9FD4 802D7BA4 8E380020 */  lw         $t8, 0x20($s1)
    /* 2B9FD8 802D7BA8 3C01FFFF */  lui        $at, (0xFFFF3FFF >> 16)
    /* 2B9FDC 802D7BAC 34213FFF */  ori        $at, $at, (0xFFFF3FFF & 0xFFFF)
    /* 2B9FE0 802D7BB0 0301C824 */  and        $t9, $t8, $at
    /* 2B9FE4 802D7BB4 AE390020 */  sw         $t9, 0x20($s1)
  .L802D7BB8_2B9FE8:
    /* 2B9FE8 802D7BB8 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802D7BBC_2B9FEC:
    /* 2B9FEC 802D7BBC 8FB0003C */  lw         $s0, 0x3C($sp)
    /* 2B9FF0 802D7BC0 8FB10040 */  lw         $s1, 0x40($sp)
    /* 2B9FF4 802D7BC4 03E00008 */  jr         $ra
    /* 2B9FF8 802D7BC8 27BD0068 */   addiu     $sp, $sp, 0x68
endlabel func_802D7934_2B9D64
