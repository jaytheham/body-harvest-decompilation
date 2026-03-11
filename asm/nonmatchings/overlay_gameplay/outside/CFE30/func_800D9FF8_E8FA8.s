nonmatching func_800D9FF8_E8FA8, 0x268

glabel func_800D9FF8_E8FA8
    /* E8FA8 800D9FF8 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* E8FAC 800D9FFC 00057400 */  sll        $t6, $a1, 16
    /* E8FB0 800DA000 000E7C03 */  sra        $t7, $t6, 16
    /* E8FB4 800DA004 2408001C */  addiu      $t0, $zero, 0x1C
    /* E8FB8 800DA008 01E80019 */  multu      $t7, $t0
    /* E8FBC 800DA00C 3C198014 */  lui        $t9, %hi(D_8013E324)
    /* E8FC0 800DA010 AFBF0024 */  sw         $ra, 0x24($sp)
    /* E8FC4 800DA014 AFB10020 */  sw         $s1, 0x20($sp)
    /* E8FC8 800DA018 AFB0001C */  sw         $s0, 0x1C($sp)
    /* E8FCC 800DA01C AFA40058 */  sw         $a0, 0x58($sp)
    /* E8FD0 800DA020 AFA5005C */  sw         $a1, 0x5C($sp)
    /* E8FD4 800DA024 2739E324 */  addiu      $t9, $t9, %lo(D_8013E324)
    /* E8FD8 800DA028 8F210000 */  lw         $at, 0x0($t9)
    /* E8FDC 800DA02C 27B8004C */  addiu      $t8, $sp, 0x4C
    /* E8FE0 800DA030 8F2B0004 */  lw         $t3, 0x4($t9)
    /* E8FE4 800DA034 AF010000 */  sw         $at, 0x0($t8)
    /* E8FE8 800DA038 8F210008 */  lw         $at, 0x8($t9)
    /* E8FEC 800DA03C 3C038015 */  lui        $v1, %hi(D_80154318)
    /* E8FF0 800DA040 24634318 */  addiu      $v1, $v1, %lo(D_80154318)
    /* E8FF4 800DA044 00006012 */  mflo       $t4
    /* E8FF8 800DA048 006C1021 */  addu       $v0, $v1, $t4
    /* E8FFC 800DA04C AF0B0004 */  sw         $t3, 0x4($t8)
    /* E9000 800DA050 AF010008 */  sw         $at, 0x8($t8)
    /* E9004 800DA054 844D0008 */  lh         $t5, 0x8($v0)
    /* E9008 800DA058 2401FFFD */  addiu      $at, $zero, -0x3
    /* E900C 800DA05C 87AE005A */  lh         $t6, 0x5A($sp)
    /* E9010 800DA060 51A10015 */  beql       $t5, $at, .L800DA0B8_E9068
    /* E9014 800DA064 87B9005A */   lh        $t9, 0x5A($sp)
    /* E9018 800DA068 01C80019 */  multu      $t6, $t0
    /* E901C 800DA06C 24510008 */  addiu      $s1, $v0, 0x8
    /* E9020 800DA070 86240000 */  lh         $a0, 0x0($s1)
    /* E9024 800DA074 00003025 */  or         $a2, $zero, $zero
    /* E9028 800DA078 00003825 */  or         $a3, $zero, $zero
    /* E902C 800DA07C 00007812 */  mflo       $t7
    /* E9030 800DA080 006F8021 */  addu       $s0, $v1, $t7
    /* E9034 800DA084 860A000C */  lh         $t2, 0xC($s0)
    /* E9038 800DA088 AFA20034 */  sw         $v0, 0x34($sp)
    /* E903C 800DA08C 26100008 */  addiu      $s0, $s0, 0x8
    /* E9040 800DA090 000A4EC0 */  sll        $t1, $t2, 27
    /* E9044 800DA094 0C0365C1 */  jal        func_800D9704_E86B4
    /* E9048 800DA098 00092C03 */   sra       $a1, $t1, 16
    /* E904C 800DA09C 86240000 */  lh         $a0, 0x0($s1)
    /* E9050 800DA0A0 86050006 */  lh         $a1, 0x6($s0)
    /* E9054 800DA0A4 86060008 */  lh         $a2, 0x8($s0)
    /* E9058 800DA0A8 0C0365AD */  jal        func_800D96B4_E8664
    /* E905C 800DA0AC 8607000A */   lh        $a3, 0xA($s0)
    /* E9060 800DA0B0 8FA20034 */  lw         $v0, 0x34($sp)
    /* E9064 800DA0B4 87B9005A */  lh         $t9, 0x5A($sp)
  .L800DA0B8_E9068:
    /* E9068 800DA0B8 24510008 */  addiu      $s1, $v0, 0x8
    /* E906C 800DA0BC 86240002 */  lh         $a0, 0x2($s1)
    /* E9070 800DA0C0 001958C0 */  sll        $t3, $t9, 3
    /* E9074 800DA0C4 01795823 */  subu       $t3, $t3, $t9
    /* E9078 800DA0C8 000B5880 */  sll        $t3, $t3, 2
    /* E907C 800DA0CC 3C0D8015 */  lui        $t5, %hi(D_80154318)
    /* E9080 800DA0D0 25AD4318 */  addiu      $t5, $t5, %lo(D_80154318)
    /* E9084 800DA0D4 256C0008 */  addiu      $t4, $t3, 0x8
    /* E9088 800DA0D8 2401FFFD */  addiu      $at, $zero, -0x3
    /* E908C 800DA0DC 10810041 */  beq        $a0, $at, .L800DA1E4_E9194
    /* E9090 800DA0E0 018D8021 */   addu      $s0, $t4, $t5
    /* E9094 800DA0E4 86060008 */  lh         $a2, 0x8($s0)
    /* E9098 800DA0E8 86050006 */  lh         $a1, 0x6($s0)
    /* E909C 800DA0EC 8607000A */  lh         $a3, 0xA($s0)
    /* E90A0 800DA0F0 24C6001E */  addiu      $a2, $a2, 0x1E
    /* E90A4 800DA0F4 00067400 */  sll        $t6, $a2, 16
    /* E90A8 800DA0F8 0C0343D7 */  jal        func_800D0F5C_DFF0C
    /* E90AC 800DA0FC 000E3403 */   sra       $a2, $t6, 16
    /* E90B0 800DA100 86040004 */  lh         $a0, 0x4($s0)
    /* E90B4 800DA104 00045300 */  sll        $t2, $a0, 12
    /* E90B8 800DA108 0C007660 */  jal        sins
    /* E90BC 800DA10C 3144FFFF */   andi      $a0, $t2, 0xFFFF
    /* E90C0 800DA110 44822000 */  mtc1       $v0, $f4
    /* E90C4 800DA114 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* E90C8 800DA118 44815800 */  mtc1       $at, $f11
    /* E90CC 800DA11C 468021A0 */  cvt.s.w    $f6, $f4
    /* E90D0 800DA120 44805000 */  mtc1       $zero, $f10
    /* E90D4 800DA124 3C014044 */  lui        $at, (0x40440000 >> 16)
    /* E90D8 800DA128 44819800 */  mtc1       $at, $f19
    /* E90DC 800DA12C 44809000 */  mtc1       $zero, $f18
    /* E90E0 800DA130 3C014059 */  lui        $at, (0x40590000 >> 16)
    /* E90E4 800DA134 46003221 */  cvt.d.s    $f8, $f6
    /* E90E8 800DA138 44803000 */  mtc1       $zero, $f6
    /* E90EC 800DA13C 462A4403 */  div.d      $f16, $f8, $f10
    /* E90F0 800DA140 44813800 */  mtc1       $at, $f7
    /* E90F4 800DA144 24050001 */  addiu      $a1, $zero, 0x1
    /* E90F8 800DA148 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* E90FC 800DA14C 86240002 */  lh         $a0, 0x2($s1)
    /* E9100 800DA150 46328102 */  mul.d      $f4, $f16, $f18
    /* E9104 800DA154 46262200 */  add.d      $f8, $f4, $f6
    /* E9108 800DA158 4458F800 */  cfc1       $t8, $31
    /* E910C 800DA15C 44C5F800 */  ctc1       $a1, $31
    /* E9110 800DA160 00000000 */  nop
    /* E9114 800DA164 462042A4 */  cvt.w.d    $f10, $f8
    /* E9118 800DA168 4445F800 */  cfc1       $a1, $31
    /* E911C 800DA16C 00000000 */  nop
    /* E9120 800DA170 30A50078 */  andi       $a1, $a1, 0x78
    /* E9124 800DA174 50A00014 */  beql       $a1, $zero, .L800DA1C8_E9178
    /* E9128 800DA178 44055000 */   mfc1      $a1, $f10
    /* E912C 800DA17C 44815800 */  mtc1       $at, $f11
    /* E9130 800DA180 44805000 */  mtc1       $zero, $f10
    /* E9134 800DA184 24050001 */  addiu      $a1, $zero, 0x1
    /* E9138 800DA188 462A4281 */  sub.d      $f10, $f8, $f10
    /* E913C 800DA18C 44C5F800 */  ctc1       $a1, $31
    /* E9140 800DA190 00000000 */  nop
    /* E9144 800DA194 462052A4 */  cvt.w.d    $f10, $f10
    /* E9148 800DA198 4445F800 */  cfc1       $a1, $31
    /* E914C 800DA19C 00000000 */  nop
    /* E9150 800DA1A0 30A50078 */  andi       $a1, $a1, 0x78
    /* E9154 800DA1A4 14A00005 */  bnez       $a1, .L800DA1BC_E916C
    /* E9158 800DA1A8 00000000 */   nop
    /* E915C 800DA1AC 44055000 */  mfc1       $a1, $f10
    /* E9160 800DA1B0 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* E9164 800DA1B4 10000007 */  b          .L800DA1D4_E9184
    /* E9168 800DA1B8 00A12825 */   or        $a1, $a1, $at
  .L800DA1BC_E916C:
    /* E916C 800DA1BC 10000005 */  b          .L800DA1D4_E9184
    /* E9170 800DA1C0 2405FFFF */   addiu     $a1, $zero, -0x1
    /* E9174 800DA1C4 44055000 */  mfc1       $a1, $f10
  .L800DA1C8_E9178:
    /* E9178 800DA1C8 00000000 */  nop
    /* E917C 800DA1CC 04A0FFFB */  bltz       $a1, .L800DA1BC_E916C
    /* E9180 800DA1D0 00000000 */   nop
  .L800DA1D4_E9184:
    /* E9184 800DA1D4 44D8F800 */  ctc1       $t8, $31
    /* E9188 800DA1D8 30B9FFFF */  andi       $t9, $a1, 0xFFFF
    /* E918C 800DA1DC 0C0343F8 */  jal        func_800D0FE0_DFF90
    /* E9190 800DA1E0 03202825 */   or        $a1, $t9, $zero
  .L800DA1E4_E9194:
    /* E9194 800DA1E4 86020004 */  lh         $v0, 0x4($s0)
    /* E9198 800DA1E8 24010008 */  addiu      $at, $zero, 0x8
    /* E919C 800DA1EC 54410007 */  bnel       $v0, $at, .L800DA20C_E91BC
    /* E91A0 800DA1F0 24010001 */   addiu     $at, $zero, 0x1
    /* E91A4 800DA1F4 0C034415 */  jal        func_800D1054_E0004
    /* E91A8 800DA1F8 86240002 */   lh        $a0, 0x2($s1)
    /* E91AC 800DA1FC 240BFFFD */  addiu      $t3, $zero, -0x3
    /* E91B0 800DA200 A62B0002 */  sh         $t3, 0x2($s1)
    /* E91B4 800DA204 86020004 */  lh         $v0, 0x4($s0)
    /* E91B8 800DA208 24010001 */  addiu      $at, $zero, 0x1
  .L800DA20C_E91BC:
    /* E91BC 800DA20C 1441000F */  bne        $v0, $at, .L800DA24C_E91FC
    /* E91C0 800DA210 240701F4 */   addiu     $a3, $zero, 0x1F4
    /* E91C4 800DA214 86040006 */  lh         $a0, 0x6($s0)
    /* E91C8 800DA218 86050008 */  lh         $a1, 0x8($s0)
    /* E91CC 800DA21C 8606000A */  lh         $a2, 0xA($s0)
    /* E91D0 800DA220 240C0008 */  addiu      $t4, $zero, 0x8
    /* E91D4 800DA224 0C037EEA */  jal        func_800DFBA8_EEB58
    /* E91D8 800DA228 AFAC0010 */   sw        $t4, 0x10($sp)
    /* E91DC 800DA22C 86040006 */  lh         $a0, 0x6($s0)
    /* E91E0 800DA230 86050008 */  lh         $a1, 0x8($s0)
    /* E91E4 800DA234 8606000A */  lh         $a2, 0xA($s0)
    /* E91E8 800DA238 240D03E8 */  addiu      $t5, $zero, 0x3E8
    /* E91EC 800DA23C AFAD0010 */  sw         $t5, 0x10($sp)
    /* E91F0 800DA240 AFA00014 */  sw         $zero, 0x14($sp)
    /* E91F4 800DA244 0C04905C */  jal        func_80124170_133120
    /* E91F8 800DA248 34079C40 */   ori       $a3, $zero, 0x9C40
  .L800DA24C_E91FC:
    /* E91FC 800DA24C 8FBF0024 */  lw         $ra, 0x24($sp)
    /* E9200 800DA250 8FB0001C */  lw         $s0, 0x1C($sp)
    /* E9204 800DA254 8FB10020 */  lw         $s1, 0x20($sp)
    /* E9208 800DA258 03E00008 */  jr         $ra
    /* E920C 800DA25C 27BD0058 */   addiu     $sp, $sp, 0x58
endlabel func_800D9FF8_E8FA8
