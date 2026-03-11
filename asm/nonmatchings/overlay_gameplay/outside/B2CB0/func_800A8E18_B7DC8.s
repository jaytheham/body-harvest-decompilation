nonmatching func_800A8E18_B7DC8, 0x420

glabel func_800A8E18_B7DC8
    /* B7DC8 800A8E18 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* B7DCC 800A8E1C 2C81001C */  sltiu      $at, $a0, 0x1C
    /* B7DD0 800A8E20 AFBF0014 */  sw         $ra, 0x14($sp)
    /* B7DD4 800A8E24 AFA40020 */  sw         $a0, 0x20($sp)
    /* B7DD8 800A8E28 102000F8 */  beqz       $at, .L800A920C_B81BC
    /* B7DDC 800A8E2C 00002825 */   or        $a1, $zero, $zero
    /* B7DE0 800A8E30 00047080 */  sll        $t6, $a0, 2
    /* B7DE4 800A8E34 3C018014 */  lui        $at, %hi(jtbl_8014288C_overlay_gameplay_outside)
    /* B7DE8 800A8E38 002E0821 */  addu       $at, $at, $t6
    /* B7DEC 800A8E3C 8C2E288C */  lw         $t6, %lo(jtbl_8014288C_overlay_gameplay_outside)($at)
    /* B7DF0 800A8E40 01C00008 */  jr         $t6
    /* B7DF4 800A8E44 00000000 */   nop
    /* B7DF8 800A8E48 24040009 */  addiu      $a0, $zero, 0x9
    /* B7DFC 800A8E4C 0C04E477 */  jal        func_801391DC_14818C
    /* B7E00 800A8E50 24058000 */   addiu     $a1, $zero, -0x8000
    /* B7E04 800A8E54 100000ED */  b          .L800A920C_B81BC
    /* B7E08 800A8E58 00402825 */   or        $a1, $v0, $zero
    /* B7E0C 800A8E5C 3C068005 */  lui        $a2, %hi(vehicleInstances)
    /* B7E10 800A8E60 24C6DCD0 */  addiu      $a2, $a2, %lo(vehicleInstances)
    /* B7E14 800A8E64 84C4001C */  lh         $a0, 0x1C($a2)
    /* B7E18 800A8E68 3C0A8005 */  lui        $t2, %hi(D_80052B34)
    /* B7E1C 800A8E6C 254A2B34 */  addiu      $t2, $t2, %lo(D_80052B34)
    /* B7E20 800A8E70 108000E6 */  beqz       $a0, .L800A920C_B81BC
    /* B7E24 800A8E74 00000000 */   nop
    /* B7E28 800A8E78 8D420000 */  lw         $v0, 0x0($t2)
    /* B7E2C 800A8E7C 24090070 */  addiu      $t1, $zero, 0x70
    /* B7E30 800A8E80 3C088025 */  lui        $t0, %hi(vehicleSpecs)
    /* B7E34 800A8E84 904F001A */  lbu        $t7, 0x1A($v0)
    /* B7E38 800A8E88 25087A00 */  addiu      $t0, $t0, %lo(vehicleSpecs)
    /* B7E3C 800A8E8C 8447001C */  lh         $a3, 0x1C($v0)
    /* B7E40 800A8E90 01E90019 */  multu      $t7, $t1
    /* B7E44 800A8E94 8FAB0020 */  lw         $t3, 0x20($sp)
    /* B7E48 800A8E98 0000C012 */  mflo       $t8
    /* B7E4C 800A8E9C 0118C821 */  addu       $t9, $t0, $t8
    /* B7E50 800A8EA0 9723003A */  lhu        $v1, 0x3A($t9)
    /* B7E54 800A8EA4 00E3082A */  slt        $at, $a3, $v1
    /* B7E58 800A8EA8 10200019 */  beqz       $at, .L800A8F10_B7EC0
    /* B7E5C 800A8EAC 24010001 */   addiu     $at, $zero, 0x1
    /* B7E60 800A8EB0 55610015 */  bnel       $t3, $at, .L800A8F08_B7EB8
    /* B7E64 800A8EB4 A443001C */   sh        $v1, 0x1C($v0)
    /* B7E68 800A8EB8 04610003 */  bgez       $v1, .L800A8EC8_B7E78
    /* B7E6C 800A8EBC 00036083 */   sra       $t4, $v1, 2
    /* B7E70 800A8EC0 24610003 */  addiu      $at, $v1, 0x3
    /* B7E74 800A8EC4 00016083 */  sra        $t4, $at, 2
  .L800A8EC8_B7E78:
    /* B7E78 800A8EC8 00EC6821 */  addu       $t5, $a3, $t4
    /* B7E7C 800A8ECC A44D001C */  sh         $t5, 0x1C($v0)
    /* B7E80 800A8ED0 8D420000 */  lw         $v0, 0x0($t2)
    /* B7E84 800A8ED4 24050001 */  addiu      $a1, $zero, 0x1
    /* B7E88 800A8ED8 904E001A */  lbu        $t6, 0x1A($v0)
    /* B7E8C 800A8EDC 8459001C */  lh         $t9, 0x1C($v0)
    /* B7E90 800A8EE0 01C90019 */  multu      $t6, $t1
    /* B7E94 800A8EE4 00007812 */  mflo       $t7
    /* B7E98 800A8EE8 010FC021 */  addu       $t8, $t0, $t7
    /* B7E9C 800A8EEC 9703003A */  lhu        $v1, 0x3A($t8)
    /* B7EA0 800A8EF0 0079082A */  slt        $at, $v1, $t9
    /* B7EA4 800A8EF4 10200004 */  beqz       $at, .L800A8F08_B7EB8
    /* B7EA8 800A8EF8 00000000 */   nop
    /* B7EAC 800A8EFC 100000C3 */  b          .L800A920C_B81BC
    /* B7EB0 800A8F00 A443001C */   sh        $v1, 0x1C($v0)
    /* B7EB4 800A8F04 A443001C */  sh         $v1, 0x1C($v0)
  .L800A8F08_B7EB8:
    /* B7EB8 800A8F08 100000C0 */  b          .L800A920C_B81BC
    /* B7EBC 800A8F0C 24050001 */   addiu     $a1, $zero, 0x1
  .L800A8F10_B7EC0:
    /* B7EC0 800A8F10 90CB001A */  lbu        $t3, 0x1A($a2)
    /* B7EC4 800A8F14 8FAE0020 */  lw         $t6, 0x20($sp)
    /* B7EC8 800A8F18 01690019 */  multu      $t3, $t1
    /* B7ECC 800A8F1C 00006012 */  mflo       $t4
    /* B7ED0 800A8F20 010C6821 */  addu       $t5, $t0, $t4
    /* B7ED4 800A8F24 95A2003A */  lhu        $v0, 0x3A($t5)
    /* B7ED8 800A8F28 0082082A */  slt        $at, $a0, $v0
    /* B7EDC 800A8F2C 102000B7 */  beqz       $at, .L800A920C_B81BC
    /* B7EE0 800A8F30 24010001 */   addiu     $at, $zero, 0x1
    /* B7EE4 800A8F34 55C1000F */  bnel       $t6, $at, .L800A8F74_B7F24
    /* B7EE8 800A8F38 A4C2001C */   sh        $v0, 0x1C($a2)
    /* B7EEC 800A8F3C 04410003 */  bgez       $v0, .L800A8F4C_B7EFC
    /* B7EF0 800A8F40 00027883 */   sra       $t7, $v0, 2
    /* B7EF4 800A8F44 24410003 */  addiu      $at, $v0, 0x3
    /* B7EF8 800A8F48 00017883 */  sra        $t7, $at, 2
  .L800A8F4C_B7EFC:
    /* B7EFC 800A8F4C 008FC021 */  addu       $t8, $a0, $t7
    /* B7F00 800A8F50 A4D8001C */  sh         $t8, 0x1C($a2)
    /* B7F04 800A8F54 84D9001C */  lh         $t9, 0x1C($a2)
    /* B7F08 800A8F58 24050001 */  addiu      $a1, $zero, 0x1
    /* B7F0C 800A8F5C 0059082A */  slt        $at, $v0, $t9
    /* B7F10 800A8F60 10200004 */  beqz       $at, .L800A8F74_B7F24
    /* B7F14 800A8F64 00000000 */   nop
    /* B7F18 800A8F68 100000A8 */  b          .L800A920C_B81BC
    /* B7F1C 800A8F6C A4C2001C */   sh        $v0, 0x1C($a2)
    /* B7F20 800A8F70 A4C2001C */  sh         $v0, 0x1C($a2)
  .L800A8F74_B7F24:
    /* B7F24 800A8F74 100000A5 */  b          .L800A920C_B81BC
    /* B7F28 800A8F78 24050001 */   addiu     $a1, $zero, 0x1
    /* B7F2C 800A8F7C 24040001 */  addiu      $a0, $zero, 0x1
    /* B7F30 800A8F80 0C04E477 */  jal        func_801391DC_14818C
    /* B7F34 800A8F84 24058000 */   addiu     $a1, $zero, -0x8000
    /* B7F38 800A8F88 100000A0 */  b          .L800A920C_B81BC
    /* B7F3C 800A8F8C 00402825 */   or        $a1, $v0, $zero
    /* B7F40 800A8F90 24040002 */  addiu      $a0, $zero, 0x2
    /* B7F44 800A8F94 0C04E477 */  jal        func_801391DC_14818C
    /* B7F48 800A8F98 24058000 */   addiu     $a1, $zero, -0x8000
    /* B7F4C 800A8F9C 1000009B */  b          .L800A920C_B81BC
    /* B7F50 800A8FA0 00402825 */   or        $a1, $v0, $zero
    /* B7F54 800A8FA4 3C0B8004 */  lui        $t3, %hi(currentLevel)
    /* B7F58 800A8FA8 8D6B7F90 */  lw         $t3, %lo(currentLevel)($t3)
    /* B7F5C 800A8FAC 24010004 */  addiu      $at, $zero, 0x4
    /* B7F60 800A8FB0 3C0C8004 */  lui        $t4, %hi(D_80047F94)
    /* B7F64 800A8FB4 15610009 */  bne        $t3, $at, .L800A8FDC_B7F8C
    /* B7F68 800A8FB8 24040003 */   addiu     $a0, $zero, 0x3
    /* B7F6C 800A8FBC 8D8C7F94 */  lw         $t4, %lo(D_80047F94)($t4)
    /* B7F70 800A8FC0 00002825 */  or         $a1, $zero, $zero
    /* B7F74 800A8FC4 15800005 */  bnez       $t4, .L800A8FDC_B7F8C
    /* B7F78 800A8FC8 00000000 */   nop
    /* B7F7C 800A8FCC 0C04E477 */  jal        func_801391DC_14818C
    /* B7F80 800A8FD0 24040003 */   addiu     $a0, $zero, 0x3
    /* B7F84 800A8FD4 1000008D */  b          .L800A920C_B81BC
    /* B7F88 800A8FD8 00402825 */   or        $a1, $v0, $zero
  .L800A8FDC_B7F8C:
    /* B7F8C 800A8FDC 0C04E477 */  jal        func_801391DC_14818C
    /* B7F90 800A8FE0 2405000A */   addiu     $a1, $zero, 0xA
    /* B7F94 800A8FE4 10000089 */  b          .L800A920C_B81BC
    /* B7F98 800A8FE8 00402825 */   or        $a1, $v0, $zero
    /* B7F9C 800A8FEC 24040004 */  addiu      $a0, $zero, 0x4
    /* B7FA0 800A8FF0 0C04E477 */  jal        func_801391DC_14818C
    /* B7FA4 800A8FF4 2405000A */   addiu     $a1, $zero, 0xA
    /* B7FA8 800A8FF8 10000084 */  b          .L800A920C_B81BC
    /* B7FAC 800A8FFC 00402825 */   or        $a1, $v0, $zero
    /* B7FB0 800A9000 24040005 */  addiu      $a0, $zero, 0x5
    /* B7FB4 800A9004 0C04E477 */  jal        func_801391DC_14818C
    /* B7FB8 800A9008 24050064 */   addiu     $a1, $zero, 0x64
    /* B7FBC 800A900C 1000007F */  b          .L800A920C_B81BC
    /* B7FC0 800A9010 00402825 */   or        $a1, $v0, $zero
    /* B7FC4 800A9014 24040006 */  addiu      $a0, $zero, 0x6
    /* B7FC8 800A9018 0C04E477 */  jal        func_801391DC_14818C
    /* B7FCC 800A901C 24050005 */   addiu     $a1, $zero, 0x5
    /* B7FD0 800A9020 1000007A */  b          .L800A920C_B81BC
    /* B7FD4 800A9024 00402825 */   or        $a1, $v0, $zero
    /* B7FD8 800A9028 24040007 */  addiu      $a0, $zero, 0x7
    /* B7FDC 800A902C 0C04E477 */  jal        func_801391DC_14818C
    /* B7FE0 800A9030 24050003 */   addiu     $a1, $zero, 0x3
    /* B7FE4 800A9034 10000075 */  b          .L800A920C_B81BC
    /* B7FE8 800A9038 00402825 */   or        $a1, $v0, $zero
    /* B7FEC 800A903C 3C0D8005 */  lui        $t5, %hi(D_80052B2C)
    /* B7FF0 800A9040 8DAD2B2C */  lw         $t5, %lo(D_80052B2C)($t5)
    /* B7FF4 800A9044 24040002 */  addiu      $a0, $zero, 0x2
    /* B7FF8 800A9048 0C039833 */  jal        func_800E60CC_F507C
    /* B7FFC 800A904C 91A50035 */   lbu       $a1, 0x35($t5)
    /* B8000 800A9050 10400008 */  beqz       $v0, .L800A9074_B8024
    /* B8004 800A9054 24180258 */   addiu     $t8, $zero, 0x258
    /* B8008 800A9058 3C028015 */  lui        $v0, %hi(D_8014F7F4)
    /* B800C 800A905C 2442F7F4 */  addiu      $v0, $v0, %lo(D_8014F7F4)
    /* B8010 800A9060 8C4E0000 */  lw         $t6, 0x0($v0)
    /* B8014 800A9064 24050001 */  addiu      $a1, $zero, 0x1
    /* B8018 800A9068 25CF0258 */  addiu      $t7, $t6, 0x258
    /* B801C 800A906C 10000067 */  b          .L800A920C_B81BC
    /* B8020 800A9070 AC4F0000 */   sw        $t7, 0x0($v0)
  .L800A9074_B8024:
    /* B8024 800A9074 3C028015 */  lui        $v0, %hi(D_8014F7F4)
    /* B8028 800A9078 2442F7F4 */  addiu      $v0, $v0, %lo(D_8014F7F4)
    /* B802C 800A907C AC580000 */  sw         $t8, 0x0($v0)
    /* B8030 800A9080 3C198005 */  lui        $t9, %hi(D_80052B2C)
    /* B8034 800A9084 8F392B2C */  lw         $t9, %lo(D_80052B2C)($t9)
    /* B8038 800A9088 24040002 */  addiu      $a0, $zero, 0x2
    /* B803C 800A908C 0C03973D */  jal        func_800E5CF4_F4CA4
    /* B8040 800A9090 93250035 */   lbu       $a1, 0x35($t9)
    /* B8044 800A9094 1000005D */  b          .L800A920C_B81BC
    /* B8048 800A9098 24050001 */   addiu     $a1, $zero, 0x1
    /* B804C 800A909C 24040003 */  addiu      $a0, $zero, 0x3
    /* B8050 800A90A0 0C04E454 */  jal        func_80139150_148100
    /* B8054 800A90A4 24050005 */   addiu     $a1, $zero, 0x5
    /* B8058 800A90A8 10000058 */  b          .L800A920C_B81BC
    /* B805C 800A90AC 00402825 */   or        $a1, $v0, $zero
    /* B8060 800A90B0 24040003 */  addiu      $a0, $zero, 0x3
    /* B8064 800A90B4 0C04E454 */  jal        func_80139150_148100
    /* B8068 800A90B8 24050014 */   addiu     $a1, $zero, 0x14
    /* B806C 800A90BC 10000053 */  b          .L800A920C_B81BC
    /* B8070 800A90C0 00402825 */   or        $a1, $v0, $zero
    /* B8074 800A90C4 24040006 */  addiu      $a0, $zero, 0x6
    /* B8078 800A90C8 0C04E454 */  jal        func_80139150_148100
    /* B807C 800A90CC 24050003 */   addiu     $a1, $zero, 0x3
    /* B8080 800A90D0 1000004E */  b          .L800A920C_B81BC
    /* B8084 800A90D4 00402825 */   or        $a1, $v0, $zero
    /* B8088 800A90D8 24040006 */  addiu      $a0, $zero, 0x6
    /* B808C 800A90DC 0C04E454 */  jal        func_80139150_148100
    /* B8090 800A90E0 2405000A */   addiu     $a1, $zero, 0xA
    /* B8094 800A90E4 10000049 */  b          .L800A920C_B81BC
    /* B8098 800A90E8 00402825 */   or        $a1, $v0, $zero
    /* B809C 800A90EC 2404000A */  addiu      $a0, $zero, 0xA
    /* B80A0 800A90F0 0C04E454 */  jal        func_80139150_148100
    /* B80A4 800A90F4 24050019 */   addiu     $a1, $zero, 0x19
    /* B80A8 800A90F8 10000044 */  b          .L800A920C_B81BC
    /* B80AC 800A90FC 00402825 */   or        $a1, $v0, $zero
    /* B80B0 800A9100 24040005 */  addiu      $a0, $zero, 0x5
    /* B80B4 800A9104 0C04E454 */  jal        func_80139150_148100
    /* B80B8 800A9108 24050032 */   addiu     $a1, $zero, 0x32
    /* B80BC 800A910C 1000003F */  b          .L800A920C_B81BC
    /* B80C0 800A9110 00402825 */   or        $a1, $v0, $zero
    /* B80C4 800A9114 24040004 */  addiu      $a0, $zero, 0x4
    /* B80C8 800A9118 0C04E454 */  jal        func_80139150_148100
    /* B80CC 800A911C 24050014 */   addiu     $a1, $zero, 0x14
    /* B80D0 800A9120 1000003A */  b          .L800A920C_B81BC
    /* B80D4 800A9124 00402825 */   or        $a1, $v0, $zero
    /* B80D8 800A9128 3C028005 */  lui        $v0, %hi(D_8004DC5C)
    /* B80DC 800A912C 2442DC5C */  addiu      $v0, $v0, %lo(D_8004DC5C)
    /* B80E0 800A9130 904B0000 */  lbu        $t3, 0x0($v0)
    /* B80E4 800A9134 24010003 */  addiu      $at, $zero, 0x3
    /* B80E8 800A9138 2404000A */  addiu      $a0, $zero, 0xA
    /* B80EC 800A913C 256C0001 */  addiu      $t4, $t3, 0x1
    /* B80F0 800A9140 318D00FF */  andi       $t5, $t4, 0xFF
    /* B80F4 800A9144 15A10031 */  bne        $t5, $at, .L800A920C_B81BC
    /* B80F8 800A9148 A04C0000 */   sb        $t4, 0x0($v0)
    /* B80FC 800A914C 0C04E477 */  jal        func_801391DC_14818C
    /* B8100 800A9150 24050032 */   addiu     $a1, $zero, 0x32
    /* B8104 800A9154 0C036A65 */  jal        func_800DA994_E9944
    /* B8108 800A9158 AFA2001C */   sw        $v0, 0x1C($sp)
    /* B810C 800A915C 0C006994 */  jal        func_8001A650_1B250
    /* B8110 800A9160 24040015 */   addiu     $a0, $zero, 0x15
    /* B8114 800A9164 10000029 */  b          .L800A920C_B81BC
    /* B8118 800A9168 8FA5001C */   lw        $a1, 0x1C($sp)
    /* B811C 800A916C 3C028005 */  lui        $v0, %hi(D_8004DC5E)
    /* B8120 800A9170 2442DC5E */  addiu      $v0, $v0, %lo(D_8004DC5E)
    /* B8124 800A9174 944E0000 */  lhu        $t6, 0x0($v0)
    /* B8128 800A9178 25CF0001 */  addiu      $t7, $t6, 0x1
    /* B812C 800A917C 10000023 */  b          .L800A920C_B81BC
    /* B8130 800A9180 A44F0000 */   sh        $t7, 0x0($v0)
    /* B8134 800A9184 2404000E */  addiu      $a0, $zero, 0xE
    /* B8138 800A9188 0C04E454 */  jal        func_80139150_148100
    /* B813C 800A918C 24050014 */   addiu     $a1, $zero, 0x14
    /* B8140 800A9190 1000001E */  b          .L800A920C_B81BC
    /* B8144 800A9194 00402825 */   or        $a1, $v0, $zero
    /* B8148 800A9198 2404000E */  addiu      $a0, $zero, 0xE
    /* B814C 800A919C 0C04E454 */  jal        func_80139150_148100
    /* B8150 800A91A0 2405000A */   addiu     $a1, $zero, 0xA
    /* B8154 800A91A4 10000019 */  b          .L800A920C_B81BC
    /* B8158 800A91A8 00402825 */   or        $a1, $v0, $zero
    /* B815C 800A91AC 24040010 */  addiu      $a0, $zero, 0x10
    /* B8160 800A91B0 0C04E454 */  jal        func_80139150_148100
    /* B8164 800A91B4 24050003 */   addiu     $a1, $zero, 0x3
    /* B8168 800A91B8 10000014 */  b          .L800A920C_B81BC
    /* B816C 800A91BC 00402825 */   or        $a1, $v0, $zero
    /* B8170 800A91C0 24040011 */  addiu      $a0, $zero, 0x11
    /* B8174 800A91C4 0C04E454 */  jal        func_80139150_148100
    /* B8178 800A91C8 24050005 */   addiu     $a1, $zero, 0x5
    /* B817C 800A91CC 1000000F */  b          .L800A920C_B81BC
    /* B8180 800A91D0 00402825 */   or        $a1, $v0, $zero
    /* B8184 800A91D4 2404000F */  addiu      $a0, $zero, 0xF
    /* B8188 800A91D8 0C04E454 */  jal        func_80139150_148100
    /* B818C 800A91DC 2405001E */   addiu     $a1, $zero, 0x1E
    /* B8190 800A91E0 1000000A */  b          .L800A920C_B81BC
    /* B8194 800A91E4 00402825 */   or        $a1, $v0, $zero
    /* B8198 800A91E8 2404000F */  addiu      $a0, $zero, 0xF
    /* B819C 800A91EC 0C04E454 */  jal        func_80139150_148100
    /* B81A0 800A91F0 2405000F */   addiu     $a1, $zero, 0xF
    /* B81A4 800A91F4 10000005 */  b          .L800A920C_B81BC
    /* B81A8 800A91F8 00402825 */   or        $a1, $v0, $zero
    /* B81AC 800A91FC 24040003 */  addiu      $a0, $zero, 0x3
    /* B81B0 800A9200 0C04E454 */  jal        func_80139150_148100
    /* B81B4 800A9204 24050002 */   addiu     $a1, $zero, 0x2
    /* B81B8 800A9208 00402825 */  or         $a1, $v0, $zero
  .L800A920C_B81BC:
    /* B81BC 800A920C 50A00006 */  beql       $a1, $zero, .L800A9228_B81D8
    /* B81C0 800A9210 8FBF0014 */   lw        $ra, 0x14($sp)
    /* B81C4 800A9214 87A40022 */  lh         $a0, 0x22($sp)
    /* B81C8 800A9218 0C04E408 */  jal        func_80139020_147FD0
    /* B81CC 800A921C AFA5001C */   sw        $a1, 0x1C($sp)
    /* B81D0 800A9220 8FA5001C */  lw         $a1, 0x1C($sp)
    /* B81D4 800A9224 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800A9228_B81D8:
    /* B81D8 800A9228 27BD0020 */  addiu      $sp, $sp, 0x20
    /* B81DC 800A922C 00A01025 */  or         $v0, $a1, $zero
    /* B81E0 800A9230 03E00008 */  jr         $ra
    /* B81E4 800A9234 00000000 */   nop
endlabel func_800A8E18_B7DC8
