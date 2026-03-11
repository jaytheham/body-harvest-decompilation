nonmatching func_802D8D84_191894, 0x344

glabel func_802D8D84_191894
    /* 191894 802D8D84 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* 191898 802D8D88 AFB10040 */  sw         $s1, 0x40($sp)
    /* 19189C 802D8D8C 309100FF */  andi       $s1, $a0, 0xFF
    /* 1918A0 802D8D90 00117080 */  sll        $t6, $s1, 2
    /* 1918A4 802D8D94 01D17021 */  addu       $t6, $t6, $s1
    /* 1918A8 802D8D98 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 1918AC 802D8D9C AFB0003C */  sw         $s0, 0x3C($sp)
    /* 1918B0 802D8DA0 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 1918B4 802D8DA4 000E7100 */  sll        $t6, $t6, 4
    /* 1918B8 802D8DA8 01CF8021 */  addu       $s0, $t6, $t7
    /* 1918BC 802D8DAC 8618000C */  lh         $t8, 0xC($s0)
    /* 1918C0 802D8DB0 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* 1918C4 802D8DB4 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* 1918C8 802D8DB8 0018C900 */  sll        $t9, $t8, 4
    /* 1918CC 802D8DBC 00794021 */  addu       $t0, $v1, $t9
    /* 1918D0 802D8DC0 8106000C */  lb         $a2, 0xC($t0)
    /* 1918D4 802D8DC4 8E0B0020 */  lw         $t3, 0x20($s0)
    /* 1918D8 802D8DC8 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 1918DC 802D8DCC 00064900 */  sll        $t1, $a2, 4
    /* 1918E0 802D8DD0 00691021 */  addu       $v0, $v1, $t1
    /* 1918E4 802D8DD4 804A000D */  lb         $t2, 0xD($v0)
    /* 1918E8 802D8DD8 000B62C0 */  sll        $t4, $t3, 11
    /* 1918EC 802D8DDC AFA40068 */  sw         $a0, 0x68($sp)
    /* 1918F0 802D8DE0 0580001B */  bltz       $t4, .L802D8E50_191960
    /* 1918F4 802D8DE4 A7AA0064 */   sh        $t2, 0x64($sp)
    /* 1918F8 802D8DE8 02202025 */  or         $a0, $s1, $zero
    /* 1918FC 802D8DEC 2405000F */  addiu      $a1, $zero, 0xF
    /* 191900 802D8DF0 AFA2004C */  sw         $v0, 0x4C($sp)
    /* 191904 802D8DF4 0C04DD1A */  jal        func_80137468_146418
    /* 191908 802D8DF8 A7A60066 */   sh        $a2, 0x66($sp)
    /* 19190C 802D8DFC 8E0D0020 */  lw         $t5, 0x20($s0)
    /* 191910 802D8E00 8FA2004C */  lw         $v0, 0x4C($sp)
    /* 191914 802D8E04 240F0032 */  addiu      $t7, $zero, 0x32
    /* 191918 802D8E08 31AE0600 */  andi       $t6, $t5, 0x600
    /* 19191C 802D8E0C 11C000A5 */  beqz       $t6, .L802D90A4_191BB4
    /* 191920 802D8E10 322400FF */   andi      $a0, $s1, 0xFF
    /* 191924 802D8E14 84580004 */  lh         $t8, 0x4($v0)
    /* 191928 802D8E18 2419000A */  addiu      $t9, $zero, 0xA
    /* 19192C 802D8E1C A60F002C */  sh         $t7, 0x2C($s0)
    /* 191930 802D8E20 AFB90018 */  sw         $t9, 0x18($sp)
    /* 191934 802D8E24 87A50066 */  lh         $a1, 0x66($sp)
    /* 191938 802D8E28 84460000 */  lh         $a2, 0x0($v0)
    /* 19193C 802D8E2C 84470002 */  lh         $a3, 0x2($v0)
    /* 191940 802D8E30 AFA00014 */  sw         $zero, 0x14($sp)
    /* 191944 802D8E34 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 191948 802D8E38 0C022390 */  jal        func_80088E40_97DF0
    /* 19194C 802D8E3C AFB80010 */   sw        $t8, 0x10($sp)
    /* 191950 802D8E40 0C021F14 */  jal        func_80087C50_96C00
    /* 191954 802D8E44 322400FF */   andi      $a0, $s1, 0xFF
    /* 191958 802D8E48 10000097 */  b          .L802D90A8_191BB8
    /* 19195C 802D8E4C 8602001E */   lh        $v0, 0x1E($s0)
  .L802D8E50_191960:
    /* 191960 802D8E50 322400FF */  andi       $a0, $s1, 0xFF
    /* 191964 802D8E54 0C021F1D */  jal        func_80087C74_96C24
    /* 191968 802D8E58 AFA2004C */   sw        $v0, 0x4C($sp)
    /* 19196C 802D8E5C 8608002C */  lh         $t0, 0x2C($s0)
    /* 191970 802D8E60 24010006 */  addiu      $at, $zero, 0x6
    /* 191974 802D8E64 8FA2004C */  lw         $v0, 0x4C($sp)
    /* 191978 802D8E68 0101001A */  div        $zero, $t0, $at
    /* 19197C 802D8E6C 00004810 */  mfhi       $t1
    /* 191980 802D8E70 24018000 */  addiu      $at, $zero, -0x8000
    /* 191984 802D8E74 1520002F */  bnez       $t1, .L802D8F34_191A44
    /* 191988 802D8E78 02002025 */   or        $a0, $s0, $zero
    /* 19198C 802D8E7C 84460002 */  lh         $a2, 0x2($v0)
    /* 191990 802D8E80 27AC0060 */  addiu      $t4, $sp, 0x60
    /* 191994 802D8E84 27AD005C */  addiu      $t5, $sp, 0x5C
    /* 191998 802D8E88 00C13021 */  addu       $a2, $a2, $at
    /* 19199C 802D8E8C 00065400 */  sll        $t2, $a2, 16
    /* 1919A0 802D8E90 27AE0058 */  addiu      $t6, $sp, 0x58
    /* 1919A4 802D8E94 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 1919A8 802D8E98 000A3403 */  sra        $a2, $t2, 16
    /* 1919AC 802D8E9C AFAD0014 */  sw         $t5, 0x14($sp)
    /* 1919B0 802D8EA0 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 1919B4 802D8EA4 84450000 */  lh         $a1, 0x0($v0)
    /* 1919B8 802D8EA8 0C04A10A */  jal        func_80128428_1373D8
    /* 1919BC 802D8EAC 84470004 */   lh        $a3, 0x4($v0)
    /* 1919C0 802D8EB0 3C0F8003 */  lui        $t7, %hi(D_80031420)
    /* 1919C4 802D8EB4 8DEF1420 */  lw         $t7, %lo(D_80031420)($t7)
    /* 1919C8 802D8EB8 31F80003 */  andi       $t8, $t7, 0x3
    /* 1919CC 802D8EBC 5300001E */  beql       $t8, $zero, .L802D8F38_191A48
    /* 1919D0 802D8EC0 322400FF */   andi      $a0, $s1, 0xFF
    /* 1919D4 802D8EC4 0C000E38 */  jal        func_800038E0_44E0
    /* 1919D8 802D8EC8 00000000 */   nop
    /* 1919DC 802D8ECC 24010050 */  addiu      $at, $zero, 0x50
    /* 1919E0 802D8ED0 0041001A */  div        $zero, $v0, $at
    /* 1919E4 802D8ED4 00006010 */  mfhi       $t4
    /* 1919E8 802D8ED8 240D00B4 */  addiu      $t5, $zero, 0xB4
    /* 1919EC 802D8EDC 01AC7023 */  subu       $t6, $t5, $t4
    /* 1919F0 802D8EE0 24190001 */  addiu      $t9, $zero, 0x1
    /* 1919F4 802D8EE4 24080032 */  addiu      $t0, $zero, 0x32
    /* 1919F8 802D8EE8 24090005 */  addiu      $t1, $zero, 0x5
    /* 1919FC 802D8EEC 240A0006 */  addiu      $t2, $zero, 0x6
    /* 191A00 802D8EF0 240B0080 */  addiu      $t3, $zero, 0x80
    /* 191A04 802D8EF4 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 191A08 802D8EF8 AFAF0034 */  sw         $t7, 0x34($sp)
    /* 191A0C 802D8EFC AFAB0024 */  sw         $t3, 0x24($sp)
    /* 191A10 802D8F00 AFAA0020 */  sw         $t2, 0x20($sp)
    /* 191A14 802D8F04 AFA9001C */  sw         $t1, 0x1C($sp)
    /* 191A18 802D8F08 AFA80018 */  sw         $t0, 0x18($sp)
    /* 191A1C 802D8F0C AFB90010 */  sw         $t9, 0x10($sp)
    /* 191A20 802D8F10 AFAE002C */  sw         $t6, 0x2C($sp)
    /* 191A24 802D8F14 87A40062 */  lh         $a0, 0x62($sp)
    /* 191A28 802D8F18 87A5005E */  lh         $a1, 0x5E($sp)
    /* 191A2C 802D8F1C 87A6005A */  lh         $a2, 0x5A($sp)
    /* 191A30 802D8F20 00003825 */  or         $a3, $zero, $zero
    /* 191A34 802D8F24 AFA00014 */  sw         $zero, 0x14($sp)
    /* 191A38 802D8F28 AFA00028 */  sw         $zero, 0x28($sp)
    /* 191A3C 802D8F2C 0C03297B */  jal        func_800CA5EC_D959C
    /* 191A40 802D8F30 AFA00030 */   sw        $zero, 0x30($sp)
  .L802D8F34_191A44:
    /* 191A44 802D8F34 322400FF */  andi       $a0, $s1, 0xFF
  .L802D8F38_191A48:
    /* 191A48 802D8F38 0C0213FA */  jal        func_80084FE8_93F98
    /* 191A4C 802D8F3C 24050800 */   addiu     $a1, $zero, 0x800
    /* 191A50 802D8F40 14400015 */  bnez       $v0, .L802D8F98_191AA8
    /* 191A54 802D8F44 00000000 */   nop
    /* 191A58 802D8F48 8E180020 */  lw         $t8, 0x20($s0)
    /* 191A5C 802D8F4C 322400FF */  andi       $a0, $s1, 0xFF
    /* 191A60 802D8F50 00002825 */  or         $a1, $zero, $zero
    /* 191A64 802D8F54 33198000 */  andi       $t9, $t8, 0x8000
    /* 191A68 802D8F58 1720000F */  bnez       $t9, .L802D8F98_191AA8
    /* 191A6C 802D8F5C 00000000 */   nop
    /* 191A70 802D8F60 0C021C62 */  jal        func_80087188_96138
    /* 191A74 802D8F64 24060028 */   addiu     $a2, $zero, 0x28
    /* 191A78 802D8F68 1040000B */  beqz       $v0, .L802D8F98_191AA8
    /* 191A7C 802D8F6C 00000000 */   nop
    /* 191A80 802D8F70 8E080020 */  lw         $t0, 0x20($s0)
    /* 191A84 802D8F74 A200004B */  sb         $zero, 0x4B($s0)
    /* 191A88 802D8F78 35098000 */  ori        $t1, $t0, 0x8000
    /* 191A8C 802D8F7C 0C000E38 */  jal        func_800038E0_44E0
    /* 191A90 802D8F80 AE090020 */   sw        $t1, 0x20($s0)
    /* 191A94 802D8F84 2401000A */  addiu      $at, $zero, 0xA
    /* 191A98 802D8F88 0041001A */  div        $zero, $v0, $at
    /* 191A9C 802D8F8C 00005010 */  mfhi       $t2
    /* 191AA0 802D8F90 254B0008 */  addiu      $t3, $t2, 0x8
    /* 191AA4 802D8F94 A60B001E */  sh         $t3, 0x1E($s0)
  .L802D8F98_191AA8:
    /* 191AA8 802D8F98 3C07802E */  lui        $a3, %hi(D_802DDCD8)
    /* 191AAC 802D8F9C 24E7DCD8 */  addiu      $a3, $a3, %lo(D_802DDCD8)
    /* 191AB0 802D8FA0 322400FF */  andi       $a0, $s1, 0xFF
    /* 191AB4 802D8FA4 87A50064 */  lh         $a1, 0x64($sp)
    /* 191AB8 802D8FA8 0C028F40 */  jal        func_800A3D00_B2CB0
    /* 191ABC 802D8FAC 24060002 */   addiu     $a2, $zero, 0x2
    /* 191AC0 802D8FB0 860D002C */  lh         $t5, 0x2C($s0)
    /* 191AC4 802D8FB4 24010001 */  addiu      $at, $zero, 0x1
    /* 191AC8 802D8FB8 24080004 */  addiu      $t0, $zero, 0x4
    /* 191ACC 802D8FBC 55A1003A */  bnel       $t5, $at, .L802D90A8_191BB8
    /* 191AD0 802D8FC0 8602001E */   lh        $v0, 0x1E($s0)
    /* 191AD4 802D8FC4 920C001A */  lbu        $t4, 0x1A($s0)
    /* 191AD8 802D8FC8 3C0F8025 */  lui        $t7, %hi(D_8025668C)
    /* 191ADC 802D8FCC 3C013FF8 */  lui        $at, (0x3FF80000 >> 16)
    /* 191AE0 802D8FD0 000C7080 */  sll        $t6, $t4, 2
    /* 191AE4 802D8FD4 01CC7023 */  subu       $t6, $t6, $t4
    /* 191AE8 802D8FD8 000E7080 */  sll        $t6, $t6, 2
    /* 191AEC 802D8FDC 01CC7021 */  addu       $t6, $t6, $t4
    /* 191AF0 802D8FE0 000E70C0 */  sll        $t6, $t6, 3
    /* 191AF4 802D8FE4 01EE7821 */  addu       $t7, $t7, $t6
    /* 191AF8 802D8FE8 85EF668C */  lh         $t7, %lo(D_8025668C)($t7)
    /* 191AFC 802D8FEC 44814800 */  mtc1       $at, $f9
    /* 191B00 802D8FF0 44804000 */  mtc1       $zero, $f8
    /* 191B04 802D8FF4 448F2000 */  mtc1       $t7, $f4
    /* 191B08 802D8FF8 24070001 */  addiu      $a3, $zero, 0x1
    /* 191B0C 802D8FFC 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* 191B10 802D9000 468021A1 */  cvt.d.w    $f6, $f4
    /* 191B14 802D9004 86040000 */  lh         $a0, 0x0($s0)
    /* 191B18 802D9008 86050002 */  lh         $a1, 0x2($s0)
    /* 191B1C 802D900C 86060004 */  lh         $a2, 0x4($s0)
    /* 191B20 802D9010 46283282 */  mul.d      $f10, $f6, $f8
    /* 191B24 802D9014 4458F800 */  cfc1       $t8, $31
    /* 191B28 802D9018 44C7F800 */  ctc1       $a3, $31
    /* 191B2C 802D901C 00000000 */  nop
    /* 191B30 802D9020 46205424 */  cvt.w.d    $f16, $f10
    /* 191B34 802D9024 4447F800 */  cfc1       $a3, $31
    /* 191B38 802D9028 00000000 */  nop
    /* 191B3C 802D902C 30E70078 */  andi       $a3, $a3, 0x78
    /* 191B40 802D9030 50E00014 */  beql       $a3, $zero, .L802D9084_191B94
    /* 191B44 802D9034 44078000 */   mfc1      $a3, $f16
    /* 191B48 802D9038 44818800 */  mtc1       $at, $f17
    /* 191B4C 802D903C 44808000 */  mtc1       $zero, $f16
    /* 191B50 802D9040 24070001 */  addiu      $a3, $zero, 0x1
    /* 191B54 802D9044 46305401 */  sub.d      $f16, $f10, $f16
    /* 191B58 802D9048 44C7F800 */  ctc1       $a3, $31
    /* 191B5C 802D904C 00000000 */  nop
    /* 191B60 802D9050 46208424 */  cvt.w.d    $f16, $f16
    /* 191B64 802D9054 4447F800 */  cfc1       $a3, $31
    /* 191B68 802D9058 00000000 */  nop
    /* 191B6C 802D905C 30E70078 */  andi       $a3, $a3, 0x78
    /* 191B70 802D9060 14E00005 */  bnez       $a3, .L802D9078_191B88
    /* 191B74 802D9064 00000000 */   nop
    /* 191B78 802D9068 44078000 */  mfc1       $a3, $f16
    /* 191B7C 802D906C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 191B80 802D9070 10000007 */  b          .L802D9090_191BA0
    /* 191B84 802D9074 00E13825 */   or        $a3, $a3, $at
  .L802D9078_191B88:
    /* 191B88 802D9078 10000005 */  b          .L802D9090_191BA0
    /* 191B8C 802D907C 2407FFFF */   addiu     $a3, $zero, -0x1
    /* 191B90 802D9080 44078000 */  mfc1       $a3, $f16
  .L802D9084_191B94:
    /* 191B94 802D9084 00000000 */  nop
    /* 191B98 802D9088 04E0FFFB */  bltz       $a3, .L802D9078_191B88
    /* 191B9C 802D908C 00000000 */   nop
  .L802D9090_191BA0:
    /* 191BA0 802D9090 44D8F800 */  ctc1       $t8, $31
    /* 191BA4 802D9094 30F9FFFF */  andi       $t9, $a3, 0xFFFF
    /* 191BA8 802D9098 03203825 */  or         $a3, $t9, $zero
    /* 191BAC 802D909C 0C037E12 */  jal        func_800DF848_EE7F8
    /* 191BB0 802D90A0 AFA80010 */   sw        $t0, 0x10($sp)
  .L802D90A4_191BB4:
    /* 191BB4 802D90A4 8602001E */  lh         $v0, 0x1E($s0)
  .L802D90A8_191BB8:
    /* 191BB8 802D90A8 10400002 */  beqz       $v0, .L802D90B4_191BC4
    /* 191BBC 802D90AC 2449FFFF */   addiu     $t1, $v0, -0x1
    /* 191BC0 802D90B0 A609001E */  sh         $t1, 0x1E($s0)
  .L802D90B4_191BC4:
    /* 191BC4 802D90B4 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 191BC8 802D90B8 8FB0003C */  lw         $s0, 0x3C($sp)
    /* 191BCC 802D90BC 8FB10040 */  lw         $s1, 0x40($sp)
    /* 191BD0 802D90C0 03E00008 */  jr         $ra
    /* 191BD4 802D90C4 27BD0068 */   addiu     $sp, $sp, 0x68
endlabel func_802D8D84_191894
