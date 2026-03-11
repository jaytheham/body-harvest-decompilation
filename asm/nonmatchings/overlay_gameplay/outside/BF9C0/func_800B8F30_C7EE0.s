nonmatching func_800B8F30_C7EE0, 0x298

glabel func_800B8F30_C7EE0
    /* C7EE0 800B8F30 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* C7EE4 800B8F34 3C188015 */  lui        $t8, %hi(D_8014F838)
    /* C7EE8 800B8F38 8F18F838 */  lw         $t8, %lo(D_8014F838)($t8)
    /* C7EEC 800B8F3C AFB00018 */  sw         $s0, 0x18($sp)
    /* C7EF0 800B8F40 00058400 */  sll        $s0, $a1, 16
    /* C7EF4 800B8F44 00107403 */  sra        $t6, $s0, 16
    /* C7EF8 800B8F48 01C08025 */  or         $s0, $t6, $zero
    /* C7EFC 800B8F4C AFBF001C */  sw         $ra, 0x1C($sp)
    /* C7F00 800B8F50 AFA40040 */  sw         $a0, 0x40($sp)
    /* C7F04 800B8F54 AFA50044 */  sw         $a1, 0x44($sp)
    /* C7F08 800B8F58 AFA60048 */  sw         $a2, 0x48($sp)
    /* C7F0C 800B8F5C 17000095 */  bnez       $t8, .L800B91B4_C8164
    /* C7F10 800B8F60 30CF00FF */   andi      $t7, $a2, 0xFF
    /* C7F14 800B8F64 3C048014 */  lui        $a0, %hi(D_80142D80)
    /* C7F18 800B8F68 24842D80 */  addiu      $a0, $a0, %lo(D_80142D80)
    /* C7F1C 800B8F6C 01E02825 */  or         $a1, $t7, $zero
    /* C7F20 800B8F70 0C00731B */  jal        osSyncPrintf
    /* C7F24 800B8F74 AFAF0020 */   sw        $t7, 0x20($sp)
    /* C7F28 800B8F78 8FA50020 */  lw         $a1, 0x20($sp)
    /* C7F2C 800B8F7C 24020001 */  addiu      $v0, $zero, 0x1
    /* C7F30 800B8F80 87A40042 */  lh         $a0, 0x42($sp)
    /* C7F34 800B8F84 10A00008 */  beqz       $a1, .L800B8FA8_C7F58
    /* C7F38 800B8F88 2406001F */   addiu     $a2, $zero, 0x1F
    /* C7F3C 800B8F8C 10A20015 */  beq        $a1, $v0, .L800B8FE4_C7F94
    /* C7F40 800B8F90 3C0B8004 */   lui       $t3, %hi(currentLevel)
    /* C7F44 800B8F94 24010002 */  addiu      $at, $zero, 0x2
    /* C7F48 800B8F98 10A10070 */  beq        $a1, $at, .L800B915C_C810C
    /* C7F4C 800B8F9C 3C028005 */   lui       $v0, %hi(D_80052B34)
    /* C7F50 800B8FA0 10000085 */  b          .L800B91B8_C8168
    /* C7F54 800B8FA4 8FBF001C */   lw        $ra, 0x1C($sp)
  .L800B8FA8_C7F58:
    /* C7F58 800B8FA8 00102C00 */  sll        $a1, $s0, 16
    /* C7F5C 800B8FAC 0005CC03 */  sra        $t9, $a1, 16
    /* C7F60 800B8FB0 0C02E30B */  jal        func_800B8C2C_C7BDC
    /* C7F64 800B8FB4 03202825 */   or        $a1, $t9, $zero
    /* C7F68 800B8FB8 24090012 */  addiu      $t1, $zero, 0x12
    /* C7F6C 800B8FBC 3C018015 */  lui        $at, %hi(D_8014F832)
    /* C7F70 800B8FC0 A429F832 */  sh         $t1, %lo(D_8014F832)($at)
    /* C7F74 800B8FC4 3C018014 */  lui        $at, %hi(D_80142E4C)
    /* C7F78 800B8FC8 C4242E4C */  lwc1       $f4, %lo(D_80142E4C)($at)
    /* C7F7C 800B8FCC 3C018015 */  lui        $at, %hi(D_8014F850)
    /* C7F80 800B8FD0 240A0003 */  addiu      $t2, $zero, 0x3
    /* C7F84 800B8FD4 E424F850 */  swc1       $f4, %lo(D_8014F850)($at)
    /* C7F88 800B8FD8 3C018015 */  lui        $at, %hi(D_8014F838)
    /* C7F8C 800B8FDC 10000075 */  b          .L800B91B4_C8164
    /* C7F90 800B8FE0 AC2AF838 */   sw        $t2, %lo(D_8014F838)($at)
  .L800B8FE4_C7F94:
    /* C7F94 800B8FE4 8D6B7F90 */  lw         $t3, %lo(currentLevel)($t3)
    /* C7F98 800B8FE8 87AC0042 */  lh         $t4, 0x42($sp)
    /* C7F9C 800B8FEC 02002825 */  or         $a1, $s0, $zero
    /* C7FA0 800B8FF0 144B0070 */  bne        $v0, $t3, .L800B91B4_C8164
    /* C7FA4 800B8FF4 000C6E00 */   sll       $t5, $t4, 24
    /* C7FA8 800B8FF8 00057E00 */  sll        $t7, $a1, 24
    /* C7FAC 800B8FFC 000F2C03 */  sra        $a1, $t7, 16
    /* C7FB0 800B9000 0C0015B4 */  jal        func_800056D0_62D0
    /* C7FB4 800B9004 000D2403 */   sra       $a0, $t5, 16
    /* C7FB8 800B9008 24010012 */  addiu      $at, $zero, 0x12
    /* C7FBC 800B900C 14410069 */  bne        $v0, $at, .L800B91B4_C8164
    /* C7FC0 800B9010 3C088005 */   lui       $t0, %hi(D_80052A94)
    /* C7FC4 800B9014 25082A94 */  addiu      $t0, $t0, %lo(D_80052A94)
    /* C7FC8 800B9018 8D090000 */  lw         $t1, 0x0($t0)
    /* C7FCC 800B901C 87A30042 */  lh         $v1, 0x42($sp)
    /* C7FD0 800B9020 00105240 */  sll        $t2, $s0, 9
    /* C7FD4 800B9024 012A5821 */  addu       $t3, $t1, $t2
    /* C7FD8 800B9028 0003C840 */  sll        $t9, $v1, 1
    /* C7FDC 800B902C 01791021 */  addu       $v0, $t3, $t9
    /* C7FE0 800B9030 944C0000 */  lhu        $t4, 0x0($v0)
    /* C7FE4 800B9034 03201825 */  or         $v1, $t9, $zero
    /* C7FE8 800B9038 0010C240 */  sll        $t8, $s0, 9
    /* C7FEC 800B903C 318DFC3F */  andi       $t5, $t4, 0xFC3F
    /* C7FF0 800B9040 35AE02C0 */  ori        $t6, $t5, 0x2C0
    /* C7FF4 800B9044 A44E0000 */  sh         $t6, 0x0($v0)
    /* C7FF8 800B9048 8D0F0000 */  lw         $t7, 0x0($t0)
    /* C7FFC 800B904C 00106240 */  sll        $t4, $s0, 9
    /* C8000 800B9050 3C048015 */  lui        $a0, %hi(D_8014F89C)
    /* C8004 800B9054 01F8C821 */  addu       $t9, $t7, $t8
    /* C8008 800B9058 03231021 */  addu       $v0, $t9, $v1
    /* C800C 800B905C 90490000 */  lbu        $t1, 0x0($v0)
    /* C8010 800B9060 0010CA40 */  sll        $t9, $s0, 9
    /* C8014 800B9064 3C058015 */  lui        $a1, %hi(D_8014F89D)
    /* C8018 800B9068 312AFFBF */  andi       $t2, $t1, 0xFFBF
    /* C801C 800B906C A04A0000 */  sb         $t2, 0x0($v0)
    /* C8020 800B9070 8D0B0000 */  lw         $t3, 0x0($t0)
    /* C8024 800B9074 00105240 */  sll        $t2, $s0, 9
    /* C8028 800B9078 3C068020 */  lui        $a2, %hi(D_801FEA30)
    /* C802C 800B907C 016C6821 */  addu       $t5, $t3, $t4
    /* C8030 800B9080 01A31021 */  addu       $v0, $t5, $v1
    /* C8034 800B9084 904E0000 */  lbu        $t6, 0x0($v0)
    /* C8038 800B9088 24C6EA30 */  addiu      $a2, $a2, %lo(D_801FEA30)
    /* C803C 800B908C 00003825 */  or         $a3, $zero, $zero
    /* C8040 800B9090 31CFFFDF */  andi       $t7, $t6, 0xFFDF
    /* C8044 800B9094 A04F0000 */  sb         $t7, 0x0($v0)
    /* C8048 800B9098 8D180000 */  lw         $t8, 0x0($t0)
    /* C804C 800B909C 00107240 */  sll        $t6, $s0, 9
    /* C8050 800B90A0 03194821 */  addu       $t1, $t8, $t9
    /* C8054 800B90A4 01231021 */  addu       $v0, $t1, $v1
    /* C8058 800B90A8 904B0000 */  lbu        $t3, 0x0($v0)
    /* C805C 800B90AC 356C0080 */  ori        $t4, $t3, 0x80
    /* C8060 800B90B0 A04C0000 */  sb         $t4, 0x0($v0)
    /* C8064 800B90B4 8D0D0000 */  lw         $t5, 0x0($t0)
    /* C8068 800B90B8 01AE7821 */  addu       $t7, $t5, $t6
    /* C806C 800B90BC 01E31021 */  addu       $v0, $t7, $v1
    /* C8070 800B90C0 90580000 */  lbu        $t8, 0x0($v0)
    /* C8074 800B90C4 3319FFFB */  andi       $t9, $t8, 0xFFFB
    /* C8078 800B90C8 A0590000 */  sb         $t9, 0x0($v0)
    /* C807C 800B90CC 8D090000 */  lw         $t1, 0x0($t0)
    /* C8080 800B90D0 0010C240 */  sll        $t8, $s0, 9
    /* C8084 800B90D4 012A5821 */  addu       $t3, $t1, $t2
    /* C8088 800B90D8 01631021 */  addu       $v0, $t3, $v1
    /* C808C 800B90DC 904C0001 */  lbu        $t4, 0x1($v0)
    /* C8090 800B90E0 318DFFC0 */  andi       $t5, $t4, 0xFFC0
    /* C8094 800B90E4 35AE001B */  ori        $t6, $t5, 0x1B
    /* C8098 800B90E8 A04E0001 */  sb         $t6, 0x1($v0)
    /* C809C 800B90EC 8D0F0000 */  lw         $t7, 0x0($t0)
    /* C80A0 800B90F0 00106A40 */  sll        $t5, $s0, 9
    /* C80A4 800B90F4 01F8C821 */  addu       $t9, $t7, $t8
    /* C80A8 800B90F8 03231021 */  addu       $v0, $t9, $v1
    /* C80AC 800B90FC 90490003 */  lbu        $t1, 0x3($v0)
    /* C80B0 800B9100 312AFFC0 */  andi       $t2, $t1, 0xFFC0
    /* C80B4 800B9104 354B001B */  ori        $t3, $t2, 0x1B
    /* C80B8 800B9108 A04B0003 */  sb         $t3, 0x3($v0)
    /* C80BC 800B910C 8D0C0000 */  lw         $t4, 0x0($t0)
    /* C80C0 800B9110 00105240 */  sll        $t2, $s0, 9
    /* C80C4 800B9114 018D7021 */  addu       $t6, $t4, $t5
    /* C80C8 800B9118 01C31021 */  addu       $v0, $t6, $v1
    /* C80CC 800B911C 904F0201 */  lbu        $t7, 0x201($v0)
    /* C80D0 800B9120 31F8FFC0 */  andi       $t8, $t7, 0xFFC0
    /* C80D4 800B9124 3719001B */  ori        $t9, $t8, 0x1B
    /* C80D8 800B9128 A0590201 */  sb         $t9, 0x201($v0)
    /* C80DC 800B912C 8D090000 */  lw         $t1, 0x0($t0)
    /* C80E0 800B9130 012A5821 */  addu       $t3, $t1, $t2
    /* C80E4 800B9134 01631021 */  addu       $v0, $t3, $v1
    /* C80E8 800B9138 904C0203 */  lbu        $t4, 0x203($v0)
    /* C80EC 800B913C 318DFFC0 */  andi       $t5, $t4, 0xFFC0
    /* C80F0 800B9140 35AE001B */  ori        $t6, $t5, 0x1B
    /* C80F4 800B9144 A04E0203 */  sb         $t6, 0x203($v0)
    /* C80F8 800B9148 90A5F89D */  lbu        $a1, %lo(D_8014F89D)($a1)
    /* C80FC 800B914C 0C02D014 */  jal        func_800B4050_C3000
    /* C8100 800B9150 9084F89C */   lbu       $a0, %lo(D_8014F89C)($a0)
    /* C8104 800B9154 10000018 */  b          .L800B91B8_C8168
    /* C8108 800B9158 8FBF001C */   lw        $ra, 0x1C($sp)
  .L800B915C_C810C:
    /* C810C 800B915C 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* C8110 800B9160 84440000 */  lh         $a0, 0x0($v0)
    /* C8114 800B9164 0C02E134 */  jal        func_800B84D0_C7480
    /* C8118 800B9168 84450004 */   lh        $a1, 0x4($v0)
    /* C811C 800B916C 00102C00 */  sll        $a1, $s0, 16
    /* C8120 800B9170 00023203 */  sra        $a2, $v0, 8
    /* C8124 800B9174 0006C400 */  sll        $t8, $a2, 16
    /* C8128 800B9178 00057C03 */  sra        $t7, $a1, 16
    /* C812C 800B917C 01E02825 */  or         $a1, $t7, $zero
    /* C8130 800B9180 00183403 */  sra        $a2, $t8, 16
    /* C8134 800B9184 0C02E30B */  jal        func_800B8C2C_C7BDC
    /* C8138 800B9188 87A40042 */   lh        $a0, 0x42($sp)
    /* C813C 800B918C 24090002 */  addiu      $t1, $zero, 0x2
    /* C8140 800B9190 3C018015 */  lui        $at, %hi(D_8014F832)
    /* C8144 800B9194 A429F832 */  sh         $t1, %lo(D_8014F832)($at)
    /* C8148 800B9198 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* C814C 800B919C 44813000 */  mtc1       $at, $f6
    /* C8150 800B91A0 3C018015 */  lui        $at, %hi(D_8014F850)
    /* C8154 800B91A4 240A0005 */  addiu      $t2, $zero, 0x5
    /* C8158 800B91A8 E426F850 */  swc1       $f6, %lo(D_8014F850)($at)
    /* C815C 800B91AC 3C018015 */  lui        $at, %hi(D_8014F838)
    /* C8160 800B91B0 AC2AF838 */  sw         $t2, %lo(D_8014F838)($at)
  .L800B91B4_C8164:
    /* C8164 800B91B4 8FBF001C */  lw         $ra, 0x1C($sp)
  .L800B91B8_C8168:
    /* C8168 800B91B8 8FB00018 */  lw         $s0, 0x18($sp)
    /* C816C 800B91BC 27BD0040 */  addiu      $sp, $sp, 0x40
    /* C8170 800B91C0 03E00008 */  jr         $ra
    /* C8174 800B91C4 00000000 */   nop
endlabel func_800B8F30_C7EE0
