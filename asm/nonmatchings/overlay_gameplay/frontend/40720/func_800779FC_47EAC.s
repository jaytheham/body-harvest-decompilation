nonmatching func_800779FC_47EAC, 0x2E4

glabel func_800779FC_47EAC
    /* 47EAC 800779FC 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 47EB0 80077A00 AFB60030 */  sw         $s6, 0x30($sp)
    /* 47EB4 80077A04 3C168004 */  lui        $s6, %hi(currentSaveFileIndex)
    /* 47EB8 80077A08 26D67F84 */  addiu      $s6, $s6, %lo(currentSaveFileIndex)
    /* 47EBC 80077A0C AFBE0038 */  sw         $fp, 0x38($sp)
    /* 47EC0 80077A10 8EDE0000 */  lw         $fp, 0x0($s6)
    /* 47EC4 80077A14 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 47EC8 80077A18 AFB20020 */  sw         $s2, 0x20($sp)
    /* 47ECC 80077A1C 27DE0001 */  addiu      $fp, $fp, 0x1
    /* 47ED0 80077A20 27C40001 */  addiu      $a0, $fp, 0x1
    /* 47ED4 80077A24 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 47ED8 80077A28 00047400 */  sll        $t6, $a0, 16
    /* 47EDC 80077A2C AFB70034 */  sw         $s7, 0x34($sp)
    /* 47EE0 80077A30 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 47EE4 80077A34 AFB40028 */  sw         $s4, 0x28($sp)
    /* 47EE8 80077A38 AFB30024 */  sw         $s3, 0x24($sp)
    /* 47EEC 80077A3C AFB00018 */  sw         $s0, 0x18($sp)
    /* 47EF0 80077A40 00008825 */  or         $s1, $zero, $zero
    /* 47EF4 80077A44 24120001 */  addiu      $s2, $zero, 0x1
    /* 47EF8 80077A48 0C01C241 */  jal        func_80070904_40DB4
    /* 47EFC 80077A4C 000E2403 */   sra       $a0, $t6, 16
    /* 47F00 80077A50 3C17800D */  lui        $s7, %hi(D_800D6D8C)
    /* 47F04 80077A54 26F76D8C */  addiu      $s7, $s7, %lo(D_800D6D8C)
    /* 47F08 80077A58 8EF80000 */  lw         $t8, 0x0($s7)
    /* 47F0C 80077A5C 3C02800D */  lui        $v0, %hi(D_800D74A6)
    /* 47F10 80077A60 244274A6 */  addiu      $v0, $v0, %lo(D_800D74A6)
    /* 47F14 80077A64 1300000D */  beqz       $t8, .L80077A9C_47F4C
    /* 47F18 80077A68 240A003D */   addiu     $t2, $zero, 0x3D
    /* 47F1C 80077A6C 001EC880 */  sll        $t9, $fp, 2
    /* 47F20 80077A70 033EC821 */  addu       $t9, $t9, $fp
    /* 47F24 80077A74 0019C880 */  sll        $t9, $t9, 2
    /* 47F28 80077A78 3C158009 */  lui        $s5, %hi(D_800909B0)
    /* 47F2C 80077A7C 033EC821 */  addu       $t9, $t9, $fp
    /* 47F30 80077A80 26B509B0 */  addiu      $s5, $s5, %lo(D_800909B0)
    /* 47F34 80077A84 0019C840 */  sll        $t9, $t9, 1
    /* 47F38 80077A88 02B98021 */  addu       $s0, $s5, $t9
    /* 47F3C 80077A8C 86080030 */  lh         $t0, 0x30($s0)
    /* 47F40 80077A90 A6A8095E */  sh         $t0, 0x95E($s5)
    /* 47F44 80077A94 86090032 */  lh         $t1, 0x32($s0)
    /* 47F48 80077A98 A6A90962 */  sh         $t1, 0x962($s5)
  .L80077A9C_47F4C:
    /* 47F4C 80077A9C A44A0000 */  sh         $t2, 0x0($v0)
    /* 47F50 80077AA0 844B0000 */  lh         $t3, 0x0($v0)
    /* 47F54 80077AA4 3C01800D */  lui        $at, %hi(D_800D74A4)
    /* 47F58 80077AA8 3C158009 */  lui        $s5, %hi(D_800909B0)
    /* 47F5C 80077AAC A42B74A4 */  sh         $t3, %lo(D_800D74A4)($at)
    /* 47F60 80077AB0 26B509B0 */  addiu      $s5, $s5, %lo(D_800909B0)
    /* 47F64 80077AB4 0C000AA2 */  jal        func_80002A88_3688
    /* 47F68 80077AB8 8EC40000 */   lw        $a0, 0x0($s6)
    /* 47F6C 80077ABC 8EC40000 */  lw         $a0, 0x0($s6)
    /* 47F70 80077AC0 3C01800D */  lui        $at, %hi(D_800D6D90)
    /* 47F74 80077AC4 00240821 */  addu       $at, $at, $a0
    /* 47F78 80077AC8 0C000AC8 */  jal        func_80002B20_3720
    /* 47F7C 80077ACC A0226D90 */   sb        $v0, %lo(D_800D6D90)($at)
    /* 47F80 80077AD0 8EC40000 */  lw         $a0, 0x0($s6)
    /* 47F84 80077AD4 3C01800D */  lui        $at, %hi(D_800D6D98)
    /* 47F88 80077AD8 3C0E800D */  lui        $t6, %hi(D_800D6DA8)
    /* 47F8C 80077ADC 00046080 */  sll        $t4, $a0, 2
    /* 47F90 80077AE0 000468C0 */  sll        $t5, $a0, 3
    /* 47F94 80077AE4 002C0821 */  addu       $at, $at, $t4
    /* 47F98 80077AE8 25CE6DA8 */  addiu      $t6, $t6, %lo(D_800D6DA8)
    /* 47F9C 80077AEC 01A46823 */  subu       $t5, $t5, $a0
    /* 47FA0 80077AF0 AC226D98 */  sw         $v0, %lo(D_800D6D98)($at)
    /* 47FA4 80077AF4 0C000AAD */  jal        getSaveFileName
    /* 47FA8 80077AF8 01AE2821 */   addu      $a1, $t5, $t6
    /* 47FAC 80077AFC 3C13800D */  lui        $s3, %hi(D_800D74AA)
    /* 47FB0 80077B00 267374AA */  addiu      $s3, $s3, %lo(D_800D74AA)
    /* 47FB4 80077B04 24140001 */  addiu      $s4, $zero, 0x1
    /* 47FB8 80077B08 2E2103E8 */  sltiu      $at, $s1, 0x3E8
  .L80077B0C_47FBC:
    /* 47FBC 80077B0C 10200006 */  beqz       $at, .L80077B28_47FD8
    /* 47FC0 80077B10 24040039 */   addiu     $a0, $zero, 0x39
    /* 47FC4 80077B14 00113400 */  sll        $a2, $s1, 16
    /* 47FC8 80077B18 00067C03 */  sra        $t7, $a2, 16
    /* 47FCC 80077B1C 01E03025 */  or         $a2, $t7, $zero
    /* 47FD0 80077B20 0C01C319 */  jal        func_80070C64_41114
    /* 47FD4 80077B24 24050006 */   addiu     $a1, $zero, 0x6
  .L80077B28_47FD8:
    /* 47FD8 80077B28 2E210041 */  sltiu      $at, $s1, 0x41
    /* 47FDC 80077B2C 14200043 */  bnez       $at, .L80077C3C_480EC
    /* 47FE0 80077B30 00000000 */   nop
    /* 47FE4 80077B34 0C01C331 */  jal        func_80070CC4_41174
    /* 47FE8 80077B38 00000000 */   nop
    /* 47FEC 80077B3C 0C01C59B */  jal        func_8007166C_41B1C
    /* 47FF0 80077B40 00000000 */   nop
    /* 47FF4 80077B44 00002025 */  or         $a0, $zero, $zero
    /* 47FF8 80077B48 0C000D61 */  jal        isButtonNewlyPressed
    /* 47FFC 80077B4C 34059000 */   ori       $a1, $zero, 0x9000
    /* 48000 80077B50 5040001C */  beql       $v0, $zero, .L80077BC4_48074
    /* 48004 80077B54 00002025 */   or        $a0, $zero, $zero
    /* 48008 80077B58 3C12800D */  lui        $s2, %hi(D_800D74A4)
    /* 4800C 80077B5C 865274A4 */  lh         $s2, %lo(D_800D74A4)($s2)
    /* 48010 80077B60 24040039 */  addiu      $a0, $zero, 0x39
    /* 48014 80077B64 0C01C125 */  jal        func_80070494_40944
    /* 48018 80077B68 2652FFC6 */   addiu     $s2, $s2, -0x3A
    /* 4801C 80077B6C 2418FFE0 */  addiu      $t8, $zero, -0x20
    /* 48020 80077B70 A6B8095E */  sh         $t8, 0x95E($s5)
    /* 48024 80077B74 86B9095E */  lh         $t9, 0x95E($s5)
    /* 48028 80077B78 24040039 */  addiu      $a0, $zero, 0x39
    /* 4802C 80077B7C 00194080 */  sll        $t0, $t9, 2
    /* 48030 80077B80 A4480004 */  sh         $t0, 0x4($v0)
    /* 48034 80077B84 0C01C22E */  jal        func_800708B8_40D68
    /* 48038 80077B88 A6600000 */   sh        $zero, 0x0($s3)
    /* 4803C 80077B8C 8EC40000 */  lw         $a0, 0x0($s6)
    /* 48040 80077B90 3C0A800D */  lui        $t2, %hi(D_800D6D98)
    /* 48044 80077B94 AEE00000 */  sw         $zero, 0x0($s7)
    /* 48048 80077B98 00044880 */  sll        $t1, $a0, 2
    /* 4804C 80077B9C 01495021 */  addu       $t2, $t2, $t1
    /* 48050 80077BA0 8D4A6D98 */  lw         $t2, %lo(D_800D6D98)($t2)
    /* 48054 80077BA4 3C0B800D */  lui        $t3, %hi(D_800D6D90)
    /* 48058 80077BA8 01645821 */  addu       $t3, $t3, $a0
    /* 4805C 80077BAC 916B6D90 */  lbu        $t3, %lo(D_800D6D90)($t3)
    /* 48060 80077BB0 3C018005 */  lui        $at, %hi(D_80052B18)
    /* 48064 80077BB4 AC2A2B18 */  sw         $t2, %lo(D_80052B18)($at)
    /* 48068 80077BB8 3C018004 */  lui        $at, %hi(currentLevel)
    /* 4806C 80077BBC AC2B7F90 */  sw         $t3, %lo(currentLevel)($at)
    /* 48070 80077BC0 00002025 */  or         $a0, $zero, $zero
  .L80077BC4_48074:
    /* 48074 80077BC4 0C000D61 */  jal        isButtonNewlyPressed
    /* 48078 80077BC8 24054000 */   addiu     $a1, $zero, 0x4000
    /* 4807C 80077BCC 1040001B */  beqz       $v0, .L80077C3C_480EC
    /* 48080 80077BD0 24040039 */   addiu     $a0, $zero, 0x39
    /* 48084 80077BD4 001E6080 */  sll        $t4, $fp, 2
    /* 48088 80077BD8 019E6021 */  addu       $t4, $t4, $fp
    /* 4808C 80077BDC 000C6080 */  sll        $t4, $t4, 2
    /* 48090 80077BE0 019E6021 */  addu       $t4, $t4, $fp
    /* 48094 80077BE4 000C6040 */  sll        $t4, $t4, 1
    /* 48098 80077BE8 00009025 */  or         $s2, $zero, $zero
    /* 4809C 80077BEC 0C01C125 */  jal        func_80070494_40944
    /* 480A0 80077BF0 02AC8021 */   addu      $s0, $s5, $t4
    /* 480A4 80077BF4 844D0006 */  lh         $t5, 0x6($v0)
    /* 480A8 80077BF8 24180004 */  addiu      $t8, $zero, 0x4
    /* 480AC 80077BFC 24190001 */  addiu      $t9, $zero, 0x1
    /* 480B0 80077C00 A44D0004 */  sh         $t5, 0x4($v0)
    /* 480B4 80077C04 860E0030 */  lh         $t6, 0x30($s0)
    /* 480B8 80077C08 2408FFFF */  addiu      $t0, $zero, -0x1
    /* 480BC 80077C0C 24090400 */  addiu      $t1, $zero, 0x400
    /* 480C0 80077C10 000E7880 */  sll        $t7, $t6, 2
    /* 480C4 80077C14 A44F0006 */  sh         $t7, 0x6($v0)
    /* 480C8 80077C18 A0580016 */  sb         $t8, 0x16($v0)
    /* 480CC 80077C1C A059001C */  sb         $t9, 0x1C($v0)
    /* 480D0 80077C20 A4480028 */  sh         $t0, 0x28($v0)
    /* 480D4 80077C24 A4400012 */  sh         $zero, 0x12($v0)
    /* 480D8 80077C28 A4490014 */  sh         $t1, 0x14($v0)
    /* 480DC 80077C2C 8ECA0000 */  lw         $t2, 0x0($s6)
    /* 480E0 80077C30 AEF40000 */  sw         $s4, 0x0($s7)
    /* 480E4 80077C34 254B0002 */  addiu      $t3, $t2, 0x2
    /* 480E8 80077C38 A66B0000 */  sh         $t3, 0x0($s3)
  .L80077C3C_480EC:
    /* 480EC 80077C3C 0C01D756 */  jal        func_80075D58_46208
    /* 480F0 80077C40 00002025 */   or        $a0, $zero, $zero
    /* 480F4 80077C44 0C01CC6A */  jal        func_800731A8_43658
    /* 480F8 80077C48 00000000 */   nop
    /* 480FC 80077C4C 0C002C11 */  jal        func_8000B044_BC44
    /* 48100 80077C50 00000000 */   nop
    /* 48104 80077C54 0C001417 */  jal        func_8000505C_5C5C
    /* 48108 80077C58 00000000 */   nop
    /* 4810C 80077C5C 2E2103E8 */  sltiu      $at, $s1, 0x3E8
    /* 48110 80077C60 10200002 */  beqz       $at, .L80077C6C_4811C
    /* 48114 80077C64 00000000 */   nop
    /* 48118 80077C68 26310001 */  addiu      $s1, $s1, 0x1
  .L80077C6C_4811C:
    /* 4811C 80077C6C 5254FFA7 */  beql       $s2, $s4, .L80077B0C_47FBC
    /* 48120 80077C70 2E2103E8 */   sltiu     $at, $s1, 0x3E8
    /* 48124 80077C74 0C0054F6 */  jal        func_800153D8_15FD8
    /* 48128 80077C78 240400C8 */   addiu     $a0, $zero, 0xC8
    /* 4812C 80077C7C 0C002BF7 */  jal        func_8000AFDC_BBDC
    /* 48130 80077C80 00000000 */   nop
    /* 48134 80077C84 0C01C22E */  jal        func_800708B8_40D68
    /* 48138 80077C88 2404003A */   addiu     $a0, $zero, 0x3A
    /* 4813C 80077C8C 0C01C22E */  jal        func_800708B8_40D68
    /* 48140 80077C90 2404003B */   addiu     $a0, $zero, 0x3B
    /* 48144 80077C94 0C01C22E */  jal        func_800708B8_40D68
    /* 48148 80077C98 2404003C */   addiu     $a0, $zero, 0x3C
    /* 4814C 80077C9C 0C01C22E */  jal        func_800708B8_40D68
    /* 48150 80077CA0 2404003D */   addiu     $a0, $zero, 0x3D
    /* 48154 80077CA4 0C01C22E */  jal        func_800708B8_40D68
    /* 48158 80077CA8 2404003E */   addiu     $a0, $zero, 0x3E
    /* 4815C 80077CAC 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 48160 80077CB0 02401025 */  or         $v0, $s2, $zero
    /* 48164 80077CB4 8FB20020 */  lw         $s2, 0x20($sp)
    /* 48168 80077CB8 8FB00018 */  lw         $s0, 0x18($sp)
    /* 4816C 80077CBC 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 48170 80077CC0 8FB30024 */  lw         $s3, 0x24($sp)
    /* 48174 80077CC4 8FB40028 */  lw         $s4, 0x28($sp)
    /* 48178 80077CC8 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 4817C 80077CCC 8FB60030 */  lw         $s6, 0x30($sp)
    /* 48180 80077CD0 8FB70034 */  lw         $s7, 0x34($sp)
    /* 48184 80077CD4 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 48188 80077CD8 03E00008 */  jr         $ra
    /* 4818C 80077CDC 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800779FC_47EAC
