nonmatching func_800C8F5C_D7F0C, 0x320

glabel func_800C8F5C_D7F0C
    /* D7F0C 800C8F5C 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* D7F10 800C8F60 AFB5002C */  sw         $s5, 0x2C($sp)
    /* D7F14 800C8F64 309500FF */  andi       $s5, $a0, 0xFF
    /* D7F18 800C8F68 00157080 */  sll        $t6, $s5, 2
    /* D7F1C 800C8F6C 01D57023 */  subu       $t6, $t6, $s5
    /* D7F20 800C8F70 3C0F8015 */  lui        $t7, %hi(D_80154088)
    /* D7F24 800C8F74 AFB40028 */  sw         $s4, 0x28($sp)
    /* D7F28 800C8F78 25EF4088 */  addiu      $t7, $t7, %lo(D_80154088)
    /* D7F2C 800C8F7C 000E7080 */  sll        $t6, $t6, 2
    /* D7F30 800C8F80 01CFA021 */  addu       $s4, $t6, $t7
    /* D7F34 800C8F84 86980002 */  lh         $t8, 0x2($s4)
    /* D7F38 800C8F88 2408001C */  addiu      $t0, $zero, 0x1C
    /* D7F3C 800C8F8C 86870006 */  lh         $a3, 0x6($s4)
    /* D7F40 800C8F90 03080019 */  multu      $t8, $t0
    /* D7F44 800C8F94 3C038015 */  lui        $v1, %hi(D_80154318)
    /* D7F48 800C8F98 24634318 */  addiu      $v1, $v1, %lo(D_80154318)
    /* D7F4C 800C8F9C AFBF003C */  sw         $ra, 0x3C($sp)
    /* D7F50 800C8FA0 AFBE0038 */  sw         $fp, 0x38($sp)
    /* D7F54 800C8FA4 AFB70034 */  sw         $s7, 0x34($sp)
    /* D7F58 800C8FA8 AFB60030 */  sw         $s6, 0x30($sp)
    /* D7F5C 800C8FAC AFB30024 */  sw         $s3, 0x24($sp)
    /* D7F60 800C8FB0 AFB20020 */  sw         $s2, 0x20($sp)
    /* D7F64 800C8FB4 AFB1001C */  sw         $s1, 0x1C($sp)
    /* D7F68 800C8FB8 0000C812 */  mflo       $t9
    /* D7F6C 800C8FBC AFB00018 */  sw         $s0, 0x18($sp)
    /* D7F70 800C8FC0 AFA40040 */  sw         $a0, 0x40($sp)
    /* D7F74 800C8FC4 00E80019 */  multu      $a3, $t0
    /* D7F78 800C8FC8 00791021 */  addu       $v0, $v1, $t9
    /* D7F7C 800C8FCC 844A0008 */  lh         $t2, 0x8($v0)
    /* D7F80 800C8FD0 2401FFFB */  addiu      $at, $zero, -0x5
    /* D7F84 800C8FD4 24420008 */  addiu      $v0, $v0, 0x8
    /* D7F88 800C8FD8 00002825 */  or         $a1, $zero, $zero
    /* D7F8C 800C8FDC 00004812 */  mflo       $t1
    /* D7F90 800C8FE0 00698821 */  addu       $s1, $v1, $t1
    /* D7F94 800C8FE4 A62A0008 */  sh         $t2, 0x8($s1)
    /* D7F98 800C8FE8 844B0002 */  lh         $t3, 0x2($v0)
    /* D7F9C 800C8FEC 86270004 */  lh         $a3, 0x4($s1)
    /* D7FA0 800C8FF0 26330011 */  addiu      $s3, $s1, 0x11
    /* D7FA4 800C8FF4 A62B000A */  sh         $t3, 0xA($s1)
    /* D7FA8 800C8FF8 844C0004 */  lh         $t4, 0x4($v0)
    /* D7FAC 800C8FFC 10E10004 */  beq        $a3, $at, .L800C9010_D7FC0
    /* D7FB0 800C9000 A62C000C */   sh        $t4, 0xC($s1)
    /* D7FB4 800C9004 2401FFFA */  addiu      $at, $zero, -0x6
    /* D7FB8 800C9008 54E10008 */  bnel       $a3, $at, .L800C902C_D7FDC
    /* D7FBC 800C900C 2401FFFB */   addiu     $at, $zero, -0x5
  .L800C9010_D7FC0:
    /* D7FC0 800C9010 0C030506 */  jal        func_800C1418_D03C8
    /* D7FC4 800C9014 32A400FF */   andi      $a0, $s5, 0xFF
    /* D7FC8 800C9018 0C0304E1 */  jal        func_800C1384_D0334
    /* D7FCC 800C901C 32A400FF */   andi      $a0, $s5, 0xFF
    /* D7FD0 800C9020 1000008B */  b          .L800C9250_D8200
    /* D7FD4 800C9024 8FBF003C */   lw        $ra, 0x3C($sp)
    /* D7FD8 800C9028 2401FFFB */  addiu      $at, $zero, -0x5
  .L800C902C_D7FDC:
    /* D7FDC 800C902C 10E10087 */  beq        $a3, $at, .L800C924C_D81FC
    /* D7FE0 800C9030 2401FFFA */   addiu     $at, $zero, -0x6
    /* D7FE4 800C9034 10E10085 */  beq        $a3, $at, .L800C924C_D81FC
    /* D7FE8 800C9038 241E0003 */   addiu     $fp, $zero, 0x3
    /* D7FEC 800C903C 24170023 */  addiu      $s7, $zero, 0x23
    /* D7FF0 800C9040 24160001 */  addiu      $s6, $zero, 0x1
    /* D7FF4 800C9044 2408001C */  addiu      $t0, $zero, 0x1C
  .L800C9048_D7FF8:
    /* D7FF8 800C9048 00E80019 */  multu      $a3, $t0
    /* D7FFC 800C904C 3C038015 */  lui        $v1, %hi(D_80154318)
    /* D8000 800C9050 24634318 */  addiu      $v1, $v1, %lo(D_80154318)
    /* D8004 800C9054 32A500FF */  andi       $a1, $s5, 0xFF
    /* D8008 800C9058 00006812 */  mflo       $t5
    /* D800C 800C905C 006D8821 */  addu       $s1, $v1, $t5
    /* D8010 800C9060 922E0011 */  lbu        $t6, 0x11($s1)
    /* D8014 800C9064 26300008 */  addiu      $s0, $s1, 0x8
    /* D8018 800C9068 02009025 */  or         $s2, $s0, $zero
    /* D801C 800C906C 29C1000A */  slti       $at, $t6, 0xA
    /* D8020 800C9070 50200017 */  beql       $at, $zero, .L800C90D0_D8080
    /* D8024 800C9074 9209000A */   lbu       $t1, 0xA($s0)
    /* D8028 800C9078 00072400 */  sll        $a0, $a3, 16
    /* D802C 800C907C 00047C03 */  sra        $t7, $a0, 16
    /* D8030 800C9080 86300004 */  lh         $s0, 0x4($s1)
    /* D8034 800C9084 01E02025 */  or         $a0, $t7, $zero
    /* D8038 800C9088 0C030693 */  jal        func_800C1A4C_D09FC
    /* D803C 800C908C 00003025 */   or        $a2, $zero, $zero
    /* D8040 800C9090 92980004 */  lbu        $t8, 0x4($s4)
    /* D8044 800C9094 00103C00 */  sll        $a3, $s0, 16
    /* D8048 800C9098 0007CC03 */  sra        $t9, $a3, 16
    /* D804C 800C909C 16D80009 */  bne        $s6, $t8, .L800C90C4_D8074
    /* D8050 800C90A0 00000000 */   nop
    /* D8054 800C90A4 86840006 */  lh         $a0, 0x6($s4)
    /* D8058 800C90A8 32A500FF */  andi       $a1, $s5, 0xFF
    /* D805C 800C90AC 0C030693 */  jal        func_800C1A4C_D09FC
    /* D8060 800C90B0 00003025 */   or        $a2, $zero, $zero
    /* D8064 800C90B4 0C0304E1 */  jal        func_800C1384_D0334
    /* D8068 800C90B8 32A400FF */   andi      $a0, $s5, 0xFF
    /* D806C 800C90BC 10000064 */  b          .L800C9250_D8200
    /* D8070 800C90C0 8FBF003C */   lw        $ra, 0x3C($sp)
  .L800C90C4_D8074:
    /* D8074 800C90C4 1000005C */  b          .L800C9238_D81E8
    /* D8078 800C90C8 03203825 */   or        $a3, $t9, $zero
    /* D807C 800C90CC 9209000A */  lbu        $t1, 0xA($s0)
  .L800C90D0_D8080:
    /* D8080 800C90D0 2408001C */  addiu      $t0, $zero, 0x1C
    /* D8084 800C90D4 02E92823 */  subu       $a1, $s7, $t1
    /* D8088 800C90D8 00055600 */  sll        $t2, $a1, 24
    /* D808C 800C90DC 000A5E03 */  sra        $t3, $t2, 24
    /* D8090 800C90E0 19600033 */  blez       $t3, .L800C91B0_D8160
    /* D8094 800C90E4 01602825 */   or        $a1, $t3, $zero
    /* D8098 800C90E8 92020006 */  lbu        $v0, 0x6($s0)
    /* D809C 800C90EC 926C0000 */  lbu        $t4, 0x0($s3)
    /* D80A0 800C90F0 92030007 */  lbu        $v1, 0x7($s0)
    /* D80A4 800C90F4 92040008 */  lbu        $a0, 0x8($s0)
    /* D80A8 800C90F8 004C6823 */  subu       $t5, $v0, $t4
    /* D80AC 800C90FC 01AB001A */  div        $zero, $t5, $t3
    /* D80B0 800C9100 00007012 */  mflo       $t6
    /* D80B4 800C9104 004E7823 */  subu       $t7, $v0, $t6
    /* D80B8 800C9108 A20F0006 */  sb         $t7, 0x6($s0)
    /* D80BC 800C910C 92780001 */  lbu        $t8, 0x1($s3)
    /* D80C0 800C9110 14A00002 */  bnez       $a1, .L800C911C_D80CC
    /* D80C4 800C9114 00000000 */   nop
    /* D80C8 800C9118 0007000D */  break      7
  .L800C911C_D80CC:
    /* D80CC 800C911C 2401FFFF */  addiu      $at, $zero, -0x1
    /* D80D0 800C9120 14A10004 */  bne        $a1, $at, .L800C9134_D80E4
    /* D80D4 800C9124 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D80D8 800C9128 15A10002 */  bne        $t5, $at, .L800C9134_D80E4
    /* D80DC 800C912C 00000000 */   nop
    /* D80E0 800C9130 0006000D */  break      6
  .L800C9134_D80E4:
    /* D80E4 800C9134 0078C823 */  subu       $t9, $v1, $t8
    /* D80E8 800C9138 0325001A */  div        $zero, $t9, $a1
    /* D80EC 800C913C 00004812 */  mflo       $t1
    /* D80F0 800C9140 00695023 */  subu       $t2, $v1, $t1
    /* D80F4 800C9144 A20A0007 */  sb         $t2, 0x7($s0)
    /* D80F8 800C9148 926B0002 */  lbu        $t3, 0x2($s3)
    /* D80FC 800C914C 14A00002 */  bnez       $a1, .L800C9158_D8108
    /* D8100 800C9150 00000000 */   nop
    /* D8104 800C9154 0007000D */  break      7
  .L800C9158_D8108:
    /* D8108 800C9158 2401FFFF */  addiu      $at, $zero, -0x1
    /* D810C 800C915C 14A10004 */  bne        $a1, $at, .L800C9170_D8120
    /* D8110 800C9160 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D8114 800C9164 17210002 */  bne        $t9, $at, .L800C9170_D8120
    /* D8118 800C9168 00000000 */   nop
    /* D811C 800C916C 0006000D */  break      6
  .L800C9170_D8120:
    /* D8120 800C9170 008B6023 */  subu       $t4, $a0, $t3
    /* D8124 800C9174 0185001A */  div        $zero, $t4, $a1
    /* D8128 800C9178 00006812 */  mflo       $t5
    /* D812C 800C917C 3C038015 */  lui        $v1, %hi(D_80154318)
    /* D8130 800C9180 008D7023 */  subu       $t6, $a0, $t5
    /* D8134 800C9184 A20E0008 */  sb         $t6, 0x8($s0)
    /* D8138 800C9188 24634318 */  addiu      $v1, $v1, %lo(D_80154318)
    /* D813C 800C918C 14A00002 */  bnez       $a1, .L800C9198_D8148
    /* D8140 800C9190 00000000 */   nop
    /* D8144 800C9194 0007000D */  break      7
  .L800C9198_D8148:
    /* D8148 800C9198 2401FFFF */  addiu      $at, $zero, -0x1
    /* D814C 800C919C 14A10004 */  bne        $a1, $at, .L800C91B0_D8160
    /* D8150 800C91A0 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D8154 800C91A4 15810002 */  bne        $t4, $at, .L800C91B0_D8160
    /* D8158 800C91A8 00000000 */   nop
    /* D815C 800C91AC 0006000D */  break      6
  .L800C91B0_D8160:
    /* D8160 800C91B0 0C000E38 */  jal        func_800038E0_44E0
    /* D8164 800C91B4 00000000 */   nop
    /* D8168 800C91B8 860F0002 */  lh         $t7, 0x2($s0)
    /* D816C 800C91BC 04410004 */  bgez       $v0, .L800C91D0_D8180
    /* D8170 800C91C0 30580001 */   andi      $t8, $v0, 0x1
    /* D8174 800C91C4 13000002 */  beqz       $t8, .L800C91D0_D8180
    /* D8178 800C91C8 00000000 */   nop
    /* D817C 800C91CC 2718FFFE */  addiu      $t8, $t8, -0x2
  .L800C91D0_D8180:
    /* D8180 800C91D0 01F8C821 */  addu       $t9, $t7, $t8
    /* D8184 800C91D4 27290001 */  addiu      $t1, $t9, 0x1
    /* D8188 800C91D8 0C000E38 */  jal        func_800038E0_44E0
    /* D818C 800C91DC A6090002 */   sh        $t1, 0x2($s0)
    /* D8190 800C91E0 005E001A */  div        $zero, $v0, $fp
    /* D8194 800C91E4 862A0002 */  lh         $t2, 0x2($s1)
    /* D8198 800C91E8 00005810 */  mfhi       $t3
    /* D819C 800C91EC 014B6021 */  addu       $t4, $t2, $t3
    /* D81A0 800C91F0 258D0002 */  addiu      $t5, $t4, 0x2
    /* D81A4 800C91F4 A62D0002 */  sh         $t5, 0x2($s1)
    /* D81A8 800C91F8 924E000A */  lbu        $t6, 0xA($s2)
    /* D81AC 800C91FC 92580009 */  lbu        $t8, 0x9($s2)
    /* D81B0 800C9200 17C00002 */  bnez       $fp, .L800C920C_D81BC
    /* D81B4 800C9204 00000000 */   nop
    /* D81B8 800C9208 0007000D */  break      7
  .L800C920C_D81BC:
    /* D81BC 800C920C 2401FFFF */  addiu      $at, $zero, -0x1
    /* D81C0 800C9210 17C10004 */  bne        $fp, $at, .L800C9224_D81D4
    /* D81C4 800C9214 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D81C8 800C9218 14410002 */  bne        $v0, $at, .L800C9224_D81D4
    /* D81CC 800C921C 00000000 */   nop
    /* D81D0 800C9220 0006000D */  break      6
  .L800C9224_D81D4:
    /* D81D4 800C9224 25CF0001 */  addiu      $t7, $t6, 0x1
    /* D81D8 800C9228 2719FFF7 */  addiu      $t9, $t8, -0x9
    /* D81DC 800C922C A24F000A */  sb         $t7, 0xA($s2)
    /* D81E0 800C9230 A2590009 */  sb         $t9, 0x9($s2)
    /* D81E4 800C9234 86270004 */  lh         $a3, 0x4($s1)
  .L800C9238_D81E8:
    /* D81E8 800C9238 2401FFFB */  addiu      $at, $zero, -0x5
    /* D81EC 800C923C 10E10003 */  beq        $a3, $at, .L800C924C_D81FC
    /* D81F0 800C9240 2401FFFA */   addiu     $at, $zero, -0x6
    /* D81F4 800C9244 54E1FF80 */  bnel       $a3, $at, .L800C9048_D7FF8
    /* D81F8 800C9248 2408001C */   addiu     $t0, $zero, 0x1C
  .L800C924C_D81FC:
    /* D81FC 800C924C 8FBF003C */  lw         $ra, 0x3C($sp)
  .L800C9250_D8200:
    /* D8200 800C9250 8FB00018 */  lw         $s0, 0x18($sp)
    /* D8204 800C9254 8FB1001C */  lw         $s1, 0x1C($sp)
    /* D8208 800C9258 8FB20020 */  lw         $s2, 0x20($sp)
    /* D820C 800C925C 8FB30024 */  lw         $s3, 0x24($sp)
    /* D8210 800C9260 8FB40028 */  lw         $s4, 0x28($sp)
    /* D8214 800C9264 8FB5002C */  lw         $s5, 0x2C($sp)
    /* D8218 800C9268 8FB60030 */  lw         $s6, 0x30($sp)
    /* D821C 800C926C 8FB70034 */  lw         $s7, 0x34($sp)
    /* D8220 800C9270 8FBE0038 */  lw         $fp, 0x38($sp)
    /* D8224 800C9274 03E00008 */  jr         $ra
    /* D8228 800C9278 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800C8F5C_D7F0C
