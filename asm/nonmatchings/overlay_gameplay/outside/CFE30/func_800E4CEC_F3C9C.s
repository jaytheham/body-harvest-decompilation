nonmatching func_800E4CEC_F3C9C, 0x358

glabel func_800E4CEC_F3C9C
    /* F3C9C 800E4CEC 27BDFF78 */  addiu      $sp, $sp, -0x88
    /* F3CA0 800E4CF0 AFBF003C */  sw         $ra, 0x3C($sp)
    /* F3CA4 800E4CF4 AFA5008C */  sw         $a1, 0x8C($sp)
    /* F3CA8 800E4CF8 27AE0068 */  addiu      $t6, $sp, 0x68
    /* F3CAC 800E4CFC AFAE0010 */  sw         $t6, 0x10($sp)
    /* F3CB0 800E4D00 00002825 */  or         $a1, $zero, $zero
    /* F3CB4 800E4D04 27A60070 */  addiu      $a2, $sp, 0x70
    /* F3CB8 800E4D08 0C04A141 */  jal        func_80128504_1374B4
    /* F3CBC 800E4D0C 27A7006C */   addiu     $a3, $sp, 0x6C
    /* F3CC0 800E4D10 8FA20070 */  lw         $v0, 0x70($sp)
    /* F3CC4 800E4D14 8FA30068 */  lw         $v1, 0x68($sp)
    /* F3CC8 800E4D18 27B90060 */  addiu      $t9, $sp, 0x60
    /* F3CCC 800E4D1C 00022400 */  sll        $a0, $v0, 16
    /* F3CD0 800E4D20 00033400 */  sll        $a2, $v1, 16
    /* F3CD4 800E4D24 0006C403 */  sra        $t8, $a2, 16
    /* F3CD8 800E4D28 00047C03 */  sra        $t7, $a0, 16
    /* F3CDC 800E4D2C 27AB005C */  addiu      $t3, $sp, 0x5C
    /* F3CE0 800E4D30 240C0001 */  addiu      $t4, $zero, 0x1
    /* F3CE4 800E4D34 240D0005 */  addiu      $t5, $zero, 0x5
    /* F3CE8 800E4D38 AFA00060 */  sw         $zero, 0x60($sp)
    /* F3CEC 800E4D3C AFAD001C */  sw         $t5, 0x1C($sp)
    /* F3CF0 800E4D40 AFAC0018 */  sw         $t4, 0x18($sp)
    /* F3CF4 800E4D44 AFAB0014 */  sw         $t3, 0x14($sp)
    /* F3CF8 800E4D48 01E02025 */  or         $a0, $t7, $zero
    /* F3CFC 800E4D4C 03003025 */  or         $a2, $t8, $zero
    /* F3D00 800E4D50 AFB90010 */  sw         $t9, 0x10($sp)
    /* F3D04 800E4D54 87A5006E */  lh         $a1, 0x6E($sp)
    /* F3D08 800E4D58 27A70064 */  addiu      $a3, $sp, 0x64
    /* F3D0C 800E4D5C AFA20064 */  sw         $v0, 0x64($sp)
    /* F3D10 800E4D60 0C04989A */  jal        func_80126268_135218
    /* F3D14 800E4D64 AFA3005C */   sw        $v1, 0x5C($sp)
    /* F3D18 800E4D68 8FA40064 */  lw         $a0, 0x64($sp)
    /* F3D1C 800E4D6C 8FA5005C */  lw         $a1, 0x5C($sp)
    /* F3D20 800E4D70 24061000 */  addiu      $a2, $zero, 0x1000
    /* F3D24 800E4D74 00047203 */  sra        $t6, $a0, 8
    /* F3D28 800E4D78 0005CA03 */  sra        $t9, $a1, 8
    /* F3D2C 800E4D7C 00195E00 */  sll        $t3, $t9, 24
    /* F3D30 800E4D80 000E7E00 */  sll        $t7, $t6, 24
    /* F3D34 800E4D84 000F2603 */  sra        $a0, $t7, 24
    /* F3D38 800E4D88 0C02CC97 */  jal        func_800B325C_C220C
    /* F3D3C 800E4D8C 000B2E03 */   sra       $a1, $t3, 24
    /* F3D40 800E4D90 1040001E */  beqz       $v0, .L800E4E0C_F3DBC
    /* F3D44 800E4D94 3C0D8005 */   lui       $t5, %hi(D_80052A8C)
    /* F3D48 800E4D98 8DAD2A8C */  lw         $t5, %lo(D_80052A8C)($t5)
    /* F3D4C 800E4D9C 87A40066 */  lh         $a0, 0x66($sp)
    /* F3D50 800E4DA0 87A5005E */  lh         $a1, 0x5E($sp)
    /* F3D54 800E4DA4 31AE0007 */  andi       $t6, $t5, 0x7
    /* F3D58 800E4DA8 55C00048 */  bnel       $t6, $zero, .L800E4ECC_F3E7C
    /* F3D5C 800E4DAC 8FA20070 */   lw        $v0, 0x70($sp)
    /* F3D60 800E4DB0 0C0383A7 */  jal        func_800E0E9C_EFE4C
    /* F3D64 800E4DB4 240600C8 */   addiu     $a2, $zero, 0xC8
    /* F3D68 800E4DB8 240F000A */  addiu      $t7, $zero, 0xA
    /* F3D6C 800E4DBC 24180008 */  addiu      $t8, $zero, 0x8
    /* F3D70 800E4DC0 2419001E */  addiu      $t9, $zero, 0x1E
    /* F3D74 800E4DC4 240B00C8 */  addiu      $t3, $zero, 0xC8
    /* F3D78 800E4DC8 240C00C8 */  addiu      $t4, $zero, 0xC8
    /* F3D7C 800E4DCC 240D00C8 */  addiu      $t5, $zero, 0xC8
    /* F3D80 800E4DD0 240E00FF */  addiu      $t6, $zero, 0xFF
    /* F3D84 800E4DD4 AFAE0028 */  sw         $t6, 0x28($sp)
    /* F3D88 800E4DD8 AFAD0024 */  sw         $t5, 0x24($sp)
    /* F3D8C 800E4DDC AFAC0020 */  sw         $t4, 0x20($sp)
    /* F3D90 800E4DE0 AFAB001C */  sw         $t3, 0x1C($sp)
    /* F3D94 800E4DE4 AFB90018 */  sw         $t9, 0x18($sp)
    /* F3D98 800E4DE8 AFB80014 */  sw         $t8, 0x14($sp)
    /* F3D9C 800E4DEC AFAF0010 */  sw         $t7, 0x10($sp)
    /* F3DA0 800E4DF0 87A40066 */  lh         $a0, 0x66($sp)
    /* F3DA4 800E4DF4 87A50062 */  lh         $a1, 0x62($sp)
    /* F3DA8 800E4DF8 87A6005E */  lh         $a2, 0x5E($sp)
    /* F3DAC 800E4DFC 0C037A82 */  jal        func_800DEA08_ED9B8
    /* F3DB0 800E4E00 24070032 */   addiu     $a3, $zero, 0x32
    /* F3DB4 800E4E04 10000031 */  b          .L800E4ECC_F3E7C
    /* F3DB8 800E4E08 8FA20070 */   lw        $v0, 0x70($sp)
  .L800E4E0C_F3DBC:
    /* F3DBC 800E4E0C 3C028005 */  lui        $v0, %hi(D_80052A8C)
    /* F3DC0 800E4E10 8C422A8C */  lw         $v0, %lo(D_80052A8C)($v0)
    /* F3DC4 800E4E14 87A40066 */  lh         $a0, 0x66($sp)
    /* F3DC8 800E4E18 87A50062 */  lh         $a1, 0x62($sp)
    /* F3DCC 800E4E1C 304F0007 */  andi       $t7, $v0, 0x7
    /* F3DD0 800E4E20 15E00012 */  bnez       $t7, .L800E4E6C_F3E1C
    /* F3DD4 800E4E24 87A6005E */   lh        $a2, 0x5E($sp)
    /* F3DD8 800E4E28 2418000A */  addiu      $t8, $zero, 0xA
    /* F3DDC 800E4E2C 2419001E */  addiu      $t9, $zero, 0x1E
    /* F3DE0 800E4E30 240B00C8 */  addiu      $t3, $zero, 0xC8
    /* F3DE4 800E4E34 240C0088 */  addiu      $t4, $zero, 0x88
    /* F3DE8 800E4E38 240D0067 */  addiu      $t5, $zero, 0x67
    /* F3DEC 800E4E3C 240E0011 */  addiu      $t6, $zero, 0x11
    /* F3DF0 800E4E40 AFAE0028 */  sw         $t6, 0x28($sp)
    /* F3DF4 800E4E44 AFAD0024 */  sw         $t5, 0x24($sp)
    /* F3DF8 800E4E48 AFAC0020 */  sw         $t4, 0x20($sp)
    /* F3DFC 800E4E4C AFAB001C */  sw         $t3, 0x1C($sp)
    /* F3E00 800E4E50 AFB90018 */  sw         $t9, 0x18($sp)
    /* F3E04 800E4E54 AFB80010 */  sw         $t8, 0x10($sp)
    /* F3E08 800E4E58 24070032 */  addiu      $a3, $zero, 0x32
    /* F3E0C 800E4E5C 0C037A82 */  jal        func_800DEA08_ED9B8
    /* F3E10 800E4E60 AFA00014 */   sw        $zero, 0x14($sp)
    /* F3E14 800E4E64 3C028005 */  lui        $v0, %hi(D_80052A8C)
    /* F3E18 800E4E68 8C422A8C */  lw         $v0, %lo(D_80052A8C)($v0)
  .L800E4E6C_F3E1C:
    /* F3E1C 800E4E6C 304F0001 */  andi       $t7, $v0, 0x1
    /* F3E20 800E4E70 15E00015 */  bnez       $t7, .L800E4EC8_F3E78
    /* F3E24 800E4E74 87A40066 */   lh        $a0, 0x66($sp)
    /* F3E28 800E4E78 2418007F */  addiu      $t8, $zero, 0x7F
    /* F3E2C 800E4E7C 24190032 */  addiu      $t9, $zero, 0x32
    /* F3E30 800E4E80 240B00FF */  addiu      $t3, $zero, 0xFF
    /* F3E34 800E4E84 240C0028 */  addiu      $t4, $zero, 0x28
    /* F3E38 800E4E88 240D000A */  addiu      $t5, $zero, 0xA
    /* F3E3C 800E4E8C 240E006A */  addiu      $t6, $zero, 0x6A
    /* F3E40 800E4E90 240F0053 */  addiu      $t7, $zero, 0x53
    /* F3E44 800E4E94 AFAF002C */  sw         $t7, 0x2C($sp)
    /* F3E48 800E4E98 AFAE0028 */  sw         $t6, 0x28($sp)
    /* F3E4C 800E4E9C AFAD0024 */  sw         $t5, 0x24($sp)
    /* F3E50 800E4EA0 AFAC0020 */  sw         $t4, 0x20($sp)
    /* F3E54 800E4EA4 AFAB001C */  sw         $t3, 0x1C($sp)
    /* F3E58 800E4EA8 AFB90018 */  sw         $t9, 0x18($sp)
    /* F3E5C 800E4EAC AFB80010 */  sw         $t8, 0x10($sp)
    /* F3E60 800E4EB0 87A50062 */  lh         $a1, 0x62($sp)
    /* F3E64 800E4EB4 87A6005E */  lh         $a2, 0x5E($sp)
    /* F3E68 800E4EB8 00003825 */  or         $a3, $zero, $zero
    /* F3E6C 800E4EBC AFA00014 */  sw         $zero, 0x14($sp)
    /* F3E70 800E4EC0 0C031507 */  jal        func_800C541C_D43CC
    /* F3E74 800E4EC4 AFA00030 */   sw        $zero, 0x30($sp)
  .L800E4EC8_F3E78:
    /* F3E78 800E4EC8 8FA20070 */  lw         $v0, 0x70($sp)
  .L800E4ECC_F3E7C:
    /* F3E7C 800E4ECC 8FA30068 */  lw         $v1, 0x68($sp)
    /* F3E80 800E4ED0 8FAB0060 */  lw         $t3, 0x60($sp)
    /* F3E84 800E4ED4 8FAC005C */  lw         $t4, 0x5C($sp)
    /* F3E88 800E4ED8 93AD008F */  lbu        $t5, 0x8F($sp)
    /* F3E8C 800E4EDC 00022400 */  sll        $a0, $v0, 16
    /* F3E90 800E4EE0 00033400 */  sll        $a2, $v1, 16
    /* F3E94 800E4EE4 0006CC03 */  sra        $t9, $a2, 16
    /* F3E98 800E4EE8 0004C403 */  sra        $t8, $a0, 16
    /* F3E9C 800E4EEC 240E0003 */  addiu      $t6, $zero, 0x3
    /* F3EA0 800E4EF0 AFAE0020 */  sw         $t6, 0x20($sp)
    /* F3EA4 800E4EF4 03002025 */  or         $a0, $t8, $zero
    /* F3EA8 800E4EF8 03203025 */  or         $a2, $t9, $zero
    /* F3EAC 800E4EFC 87A5006E */  lh         $a1, 0x6E($sp)
    /* F3EB0 800E4F00 87A70066 */  lh         $a3, 0x66($sp)
    /* F3EB4 800E4F04 AFA00018 */  sw         $zero, 0x18($sp)
    /* F3EB8 800E4F08 AFAB0010 */  sw         $t3, 0x10($sp)
    /* F3EBC 800E4F0C AFAC0014 */  sw         $t4, 0x14($sp)
    /* F3EC0 800E4F10 0C038E4A */  jal        func_800E3928_F28D8
    /* F3EC4 800E4F14 AFAD001C */   sw        $t5, 0x1C($sp)
    /* F3EC8 800E4F18 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* F3ECC 800E4F1C 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* F3ED0 800E4F20 8C620000 */  lw         $v0, 0x0($v1)
    /* F3ED4 800E4F24 3C18FCFF */  lui        $t8, (0xFCFFFFFF >> 16)
    /* F3ED8 800E4F28 3C19FFFD */  lui        $t9, (0xFFFDF6FB >> 16)
    /* F3EDC 800E4F2C 244F0008 */  addiu      $t7, $v0, 0x8
    /* F3EE0 800E4F30 AC6F0000 */  sw         $t7, 0x0($v1)
    /* F3EE4 800E4F34 3739F6FB */  ori        $t9, $t9, (0xFFFDF6FB & 0xFFFF)
    /* F3EE8 800E4F38 3718FFFF */  ori        $t8, $t8, (0xFCFFFFFF & 0xFFFF)
    /* F3EEC 800E4F3C AC580000 */  sw         $t8, 0x0($v0)
    /* F3EF0 800E4F40 AC590004 */  sw         $t9, 0x4($v0)
    /* F3EF4 800E4F44 8C620000 */  lw         $v0, 0x0($v1)
    /* F3EF8 800E4F48 3C0CFA00 */  lui        $t4, (0xFA000000 >> 16)
    /* F3EFC 800E4F4C 3C0A8006 */  lui        $t2, %hi(D_8005BB38)
    /* F3F00 800E4F50 244B0008 */  addiu      $t3, $v0, 0x8
    /* F3F04 800E4F54 AC6B0000 */  sw         $t3, 0x0($v1)
    /* F3F08 800E4F58 AC4C0000 */  sw         $t4, 0x0($v0)
    /* F3F0C 800E4F5C 93AE007B */  lbu        $t6, 0x7B($sp)
    /* F3F10 800E4F60 93B9007A */  lbu        $t9, 0x7A($sp)
    /* F3F14 800E4F64 254ABB38 */  addiu      $t2, $t2, %lo(D_8005BB38)
    /* F3F18 800E4F68 000E7E00 */  sll        $t7, $t6, 24
    /* F3F1C 800E4F6C 93AE0079 */  lbu        $t6, 0x79($sp)
    /* F3F20 800E4F70 00195C00 */  sll        $t3, $t9, 16
    /* F3F24 800E4F74 01EB6025 */  or         $t4, $t7, $t3
    /* F3F28 800E4F78 000EC200 */  sll        $t8, $t6, 8
    /* F3F2C 800E4F7C 0198C825 */  or         $t9, $t4, $t8
    /* F3F30 800E4F80 372F00FF */  ori        $t7, $t9, 0xFF
    /* F3F34 800E4F84 AC4F0004 */  sw         $t7, 0x4($v0)
    /* F3F38 800E4F88 8FAB0070 */  lw         $t3, 0x70($sp)
    /* F3F3C 800E4F8C 8FAD006C */  lw         $t5, 0x6C($sp)
    /* F3F40 800E4F90 8FAE0068 */  lw         $t6, 0x68($sp)
    /* F3F44 800E4F94 8D470000 */  lw         $a3, 0x0($t2)
    /* F3F48 800E4F98 27A40080 */  addiu      $a0, $sp, 0x80
    /* F3F4C 800E4F9C 00002825 */  or         $a1, $zero, $zero
    /* F3F50 800E4FA0 00003025 */  or         $a2, $zero, $zero
    /* F3F54 800E4FA4 A7AB0080 */  sh         $t3, 0x80($sp)
    /* F3F58 800E4FA8 A7AD0082 */  sh         $t5, 0x82($sp)
    /* F3F5C 800E4FAC 0C000E74 */  jal        func_800039D0_45D0
    /* F3F60 800E4FB0 A7AE0084 */   sh        $t6, 0x84($sp)
    /* F3F64 800E4FB4 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* F3F68 800E4FB8 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* F3F6C 800E4FBC 8C620000 */  lw         $v0, 0x0($v1)
    /* F3F70 800E4FC0 3C180104 */  lui        $t8, (0x1040040 >> 16)
    /* F3F74 800E4FC4 3C0A8006 */  lui        $t2, %hi(D_8005BB38)
    /* F3F78 800E4FC8 244C0008 */  addiu      $t4, $v0, 0x8
    /* F3F7C 800E4FCC AC6C0000 */  sw         $t4, 0x0($v1)
    /* F3F80 800E4FD0 37180040 */  ori        $t8, $t8, (0x1040040 & 0xFFFF)
    /* F3F84 800E4FD4 254ABB38 */  addiu      $t2, $t2, %lo(D_8005BB38)
    /* F3F88 800E4FD8 AC580000 */  sw         $t8, 0x0($v0)
    /* F3F8C 800E4FDC 8D590000 */  lw         $t9, 0x0($t2)
    /* F3F90 800E4FE0 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* F3F94 800E4FE4 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* F3F98 800E4FE8 03217824 */  and        $t7, $t9, $at
    /* F3F9C 800E4FEC AC4F0004 */  sw         $t7, 0x4($v0)
    /* F3FA0 800E4FF0 8D4B0000 */  lw         $t3, 0x0($t2)
    /* F3FA4 800E4FF4 8C620000 */  lw         $v0, 0x0($v1)
    /* F3FA8 800E4FF8 3C180503 */  lui        $t8, %hi(D_50332A0)
    /* F3FAC 800E4FFC 256D0040 */  addiu      $t5, $t3, 0x40
    /* F3FB0 800E5000 244E0008 */  addiu      $t6, $v0, 0x8
    /* F3FB4 800E5004 AD4D0000 */  sw         $t5, 0x0($t2)
    /* F3FB8 800E5008 AC6E0000 */  sw         $t6, 0x0($v1)
    /* F3FBC 800E500C 271832A0 */  addiu      $t8, $t8, %lo(D_50332A0)
    /* F3FC0 800E5010 3C0C0600 */  lui        $t4, (0x6000000 >> 16)
    /* F3FC4 800E5014 AC4C0000 */  sw         $t4, 0x0($v0)
    /* F3FC8 800E5018 AC580004 */  sw         $t8, 0x4($v0)
    /* F3FCC 800E501C 8C620000 */  lw         $v0, 0x0($v1)
    /* F3FD0 800E5020 3C0FBD00 */  lui        $t7, (0xBD000000 >> 16)
    /* F3FD4 800E5024 24590008 */  addiu      $t9, $v0, 0x8
    /* F3FD8 800E5028 AC790000 */  sw         $t9, 0x0($v1)
    /* F3FDC 800E502C AC400004 */  sw         $zero, 0x4($v0)
    /* F3FE0 800E5030 AC4F0000 */  sw         $t7, 0x0($v0)
    /* F3FE4 800E5034 8FBF003C */  lw         $ra, 0x3C($sp)
    /* F3FE8 800E5038 27BD0088 */  addiu      $sp, $sp, 0x88
    /* F3FEC 800E503C 03E00008 */  jr         $ra
    /* F3FF0 800E5040 00000000 */   nop
endlabel func_800E4CEC_F3C9C
