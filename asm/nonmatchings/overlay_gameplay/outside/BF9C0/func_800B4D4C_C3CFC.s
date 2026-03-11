nonmatching func_800B4D4C_C3CFC, 0x344

glabel func_800B4D4C_C3CFC
    /* C3CFC 800B4D4C 3C038015 */  lui        $v1, %hi(D_80151DD8)
    /* C3D00 800B4D50 24631DD8 */  addiu      $v1, $v1, %lo(D_80151DD8)
    /* C3D04 800B4D54 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* C3D08 800B4D58 80680960 */  lb         $t0, 0x960($v1)
    /* C3D0C 800B4D5C AFA40070 */  sw         $a0, 0x70($sp)
    /* C3D10 800B4D60 3C048015 */  lui        $a0, %hi(D_8014F898)
    /* C3D14 800B4D64 3C0E8015 */  lui        $t6, %hi(D_8014F8A0)
    /* C3D18 800B4D68 8DCEF8A0 */  lw         $t6, %lo(D_8014F8A0)($t6)
    /* C3D1C 800B4D6C 2484F898 */  addiu      $a0, $a0, %lo(D_8014F898)
    /* C3D20 800B4D70 A0880000 */  sb         $t0, 0x0($a0)
    /* C3D24 800B4D74 80890000 */  lb         $t1, 0x0($a0)
    /* C3D28 800B4D78 24010013 */  addiu      $at, $zero, 0x13
    /* C3D2C 800B4D7C 80790961 */  lb         $t9, 0x961($v1)
    /* C3D30 800B4D80 252A0012 */  addiu      $t2, $t1, 0x12
    /* C3D34 800B4D84 0141001A */  div        $zero, $t2, $at
    /* C3D38 800B4D88 906D0965 */  lbu        $t5, 0x965($v1)
    /* C3D3C 800B4D8C 3C058015 */  lui        $a1, %hi(D_8014F899)
    /* C3D40 800B4D90 24A5F899 */  addiu      $a1, $a1, %lo(D_8014F899)
    /* C3D44 800B4D94 AFB40028 */  sw         $s4, 0x28($sp)
    /* C3D48 800B4D98 A0B90000 */  sb         $t9, 0x0($a1)
    /* C3D4C 800B4D9C 906F0964 */  lbu        $t7, 0x964($v1)
    /* C3D50 800B4DA0 80AC0000 */  lb         $t4, 0x0($a1)
    /* C3D54 800B4DA4 3C148015 */  lui        $s4, %hi(D_8014F89D)
    /* C3D58 800B4DA8 AFB5002C */  sw         $s5, 0x2C($sp)
    /* C3D5C 800B4DAC 3C158015 */  lui        $s5, %hi(D_8014F89C)
    /* C3D60 800B4DB0 2694F89D */  addiu      $s4, $s4, %lo(D_8014F89D)
    /* C3D64 800B4DB4 AFB20020 */  sw         $s2, 0x20($sp)
    /* C3D68 800B4DB8 00005810 */  mfhi       $t3
    /* C3D6C 800B4DBC AFAE005C */  sw         $t6, 0x5C($sp)
    /* C3D70 800B4DC0 26B5F89C */  addiu      $s5, $s5, %lo(D_8014F89C)
    /* C3D74 800B4DC4 AFBE0038 */  sw         $fp, 0x38($sp)
    /* C3D78 800B4DC8 AFB30024 */  sw         $s3, 0x24($sp)
    /* C3D7C 800B4DCC AFB1001C */  sw         $s1, 0x1C($sp)
    /* C3D80 800B4DD0 3C128015 */  lui        $s2, %hi(D_8014FD48)
    /* C3D84 800B4DD4 A28D0000 */  sb         $t5, 0x0($s4)
    /* C3D88 800B4DD8 25B8FFFF */  addiu      $t8, $t5, -0x1
    /* C3D8C 800B4DDC 25AEFFFF */  addiu      $t6, $t5, -0x1
    /* C3D90 800B4DE0 AFBF003C */  sw         $ra, 0x3C($sp)
    /* C3D94 800B4DE4 AFB70034 */  sw         $s7, 0x34($sp)
    /* C3D98 800B4DE8 AFB60030 */  sw         $s6, 0x30($sp)
    /* C3D9C 800B4DEC AFB00018 */  sw         $s0, 0x18($sp)
    /* C3DA0 800B4DF0 A0780965 */  sb         $t8, 0x965($v1)
    /* C3DA4 800B4DF4 A08B0000 */  sb         $t3, 0x0($a0)
    /* C3DA8 800B4DF8 A28E0000 */  sb         $t6, 0x0($s4)
    /* C3DAC 800B4DFC 2652FD48 */  addiu      $s2, $s2, %lo(D_8014FD48)
    /* C3DB0 800B4E00 00008825 */  or         $s1, $zero, $zero
    /* C3DB4 800B4E04 2413003C */  addiu      $s3, $zero, 0x3C
    /* C3DB8 800B4E08 241E0003 */  addiu      $fp, $zero, 0x3
    /* C3DBC 800B4E0C A3A0006F */  sb         $zero, 0x6F($sp)
    /* C3DC0 800B4E10 A2AF0000 */  sb         $t7, 0x0($s5)
    /* C3DC4 800B4E14 A3AC0059 */  sb         $t4, 0x59($sp)
  .L800B4E18_C3DC8:
    /* C3DC8 800B4E18 92AF0000 */  lbu        $t7, 0x0($s5)
    /* C3DCC 800B4E1C 92840000 */  lbu        $a0, 0x0($s4)
    /* C3DD0 800B4E20 8FA7005C */  lw         $a3, 0x5C($sp)
    /* C3DD4 800B4E24 01F11821 */  addu       $v1, $t7, $s1
    /* C3DD8 800B4E28 0004C200 */  sll        $t8, $a0, 8
    /* C3DDC 800B4E2C 00781021 */  addu       $v0, $v1, $t8
    /* C3DE0 800B4E30 3059FFFF */  andi       $t9, $v0, 0xFFFF
    /* C3DE4 800B4E34 00194040 */  sll        $t0, $t9, 1
    /* C3DE8 800B4E38 00E8B021 */  addu       $s6, $a3, $t0
    /* C3DEC 800B4E3C 96C9FE00 */  lhu        $t1, -0x200($s6)
    /* C3DF0 800B4E40 00196840 */  sll        $t5, $t9, 1
    /* C3DF4 800B4E44 00EDB821 */  addu       $s7, $a3, $t5
    /* C3DF8 800B4E48 312A003F */  andi       $t2, $t1, 0x3F
    /* C3DFC 800B4E4C A3AA0060 */  sb         $t2, 0x60($sp)
    /* C3E00 800B4E50 96CBFFFE */  lhu        $t3, -0x2($s6)
    /* C3E04 800B4E54 306500FF */  andi       $a1, $v1, 0xFF
    /* C3E08 800B4E58 27A60054 */  addiu      $a2, $sp, 0x54
    /* C3E0C 800B4E5C 316C003F */  andi       $t4, $t3, 0x3F
    /* C3E10 800B4E60 A3AC0061 */  sb         $t4, 0x61($sp)
    /* C3E14 800B4E64 96EE0000 */  lhu        $t6, 0x0($s7)
    /* C3E18 800B4E68 31CF003F */  andi       $t7, $t6, 0x3F
    /* C3E1C 800B4E6C A3AF0062 */  sb         $t7, 0x62($sp)
    /* C3E20 800B4E70 96D80002 */  lhu        $t8, 0x2($s6)
    /* C3E24 800B4E74 3319003F */  andi       $t9, $t8, 0x3F
    /* C3E28 800B4E78 A3B90063 */  sb         $t9, 0x63($sp)
    /* C3E2C 800B4E7C 96C80200 */  lhu        $t0, 0x200($s6)
    /* C3E30 800B4E80 3109003F */  andi       $t1, $t0, 0x3F
    /* C3E34 800B4E84 0C02C605 */  jal        func_800B1814_C07C4
    /* C3E38 800B4E88 A3A90064 */   sb        $t1, 0x64($sp)
    /* C3E3C 800B4E8C 27A40060 */  addiu      $a0, $sp, 0x60
    /* C3E40 800B4E90 27A50054 */  addiu      $a1, $sp, 0x54
    /* C3E44 800B4E94 0C02CB3C */  jal        func_800B2CF0_C1CA0
    /* C3E48 800B4E98 27A60068 */   addiu     $a2, $sp, 0x68
    /* C3E4C 800B4E9C 00008025 */  or         $s0, $zero, $zero
  .L800B4EA0_C3E50:
    /* C3E50 800B4EA0 00105040 */  sll        $t2, $s0, 1
    /* C3E54 800B4EA4 92AB0000 */  lbu        $t3, 0x0($s5)
    /* C3E58 800B4EA8 024A1021 */  addu       $v0, $s2, $t2
    /* C3E5C 800B4EAC 904D0000 */  lbu        $t5, 0x0($v0)
    /* C3E60 800B4EB0 01716021 */  addu       $t4, $t3, $s1
    /* C3E64 800B4EB4 558D0027 */  bnel       $t4, $t5, .L800B4F54_C3F04
    /* C3E68 800B4EB8 26100001 */   addiu     $s0, $s0, 0x1
    /* C3E6C 800B4EBC 928E0000 */  lbu        $t6, 0x0($s4)
    /* C3E70 800B4EC0 904F0001 */  lbu        $t7, 0x1($v0)
    /* C3E74 800B4EC4 55CF0023 */  bnel       $t6, $t7, .L800B4F54_C3F04
    /* C3E78 800B4EC8 26100001 */   addiu     $s0, $s0, 0x1
    /* C3E7C 800B4ECC 0C000E38 */  jal        func_800038E0_44E0
    /* C3E80 800B4ED0 00000000 */   nop
    /* C3E84 800B4ED4 0053001A */  div        $zero, $v0, $s3
    /* C3E88 800B4ED8 00002010 */  mfhi       $a0
    /* C3E8C 800B4EDC 309800FF */  andi       $t8, $a0, 0xFF
    /* C3E90 800B4EE0 27030014 */  addiu      $v1, $t8, 0x14
    /* C3E94 800B4EE4 16600002 */  bnez       $s3, .L800B4EF0_C3EA0
    /* C3E98 800B4EE8 00000000 */   nop
    /* C3E9C 800B4EEC 0007000D */  break      7
  .L800B4EF0_C3EA0:
    /* C3EA0 800B4EF0 2401FFFF */  addiu      $at, $zero, -0x1
    /* C3EA4 800B4EF4 16610004 */  bne        $s3, $at, .L800B4F08_C3EB8
    /* C3EA8 800B4EF8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* C3EAC 800B4EFC 14410002 */  bne        $v0, $at, .L800B4F08_C3EB8
    /* C3EB0 800B4F00 00000000 */   nop
    /* C3EB4 800B4F04 0006000D */  break      6
  .L800B4F08_C3EB8:
    /* C3EB8 800B4F08 03002025 */  or         $a0, $t8, $zero
    /* C3EBC 800B4F0C 04630004 */  bgezl      $v1, .L800B4F20_C3ED0
    /* C3EC0 800B4F10 A3A30068 */   sb        $v1, 0x68($sp)
    /* C3EC4 800B4F14 10000002 */  b          .L800B4F20_C3ED0
    /* C3EC8 800B4F18 A3A00068 */   sb        $zero, 0x68($sp)
    /* C3ECC 800B4F1C A3A30068 */  sb         $v1, 0x68($sp)
  .L800B4F20_C3ED0:
    /* C3ED0 800B4F20 2482FFFB */  addiu      $v0, $a0, -0x5
    /* C3ED4 800B4F24 04430004 */  bgezl      $v0, .L800B4F38_C3EE8
    /* C3ED8 800B4F28 A3A20069 */   sb        $v0, 0x69($sp)
    /* C3EDC 800B4F2C 10000002 */  b          .L800B4F38_C3EE8
    /* C3EE0 800B4F30 A3A00069 */   sb        $zero, 0x69($sp)
    /* C3EE4 800B4F34 A3A20069 */  sb         $v0, 0x69($sp)
  .L800B4F38_C3EE8:
    /* C3EE8 800B4F38 2482FFE7 */  addiu      $v0, $a0, -0x19
    /* C3EEC 800B4F3C 04430004 */  bgezl      $v0, .L800B4F50_C3F00
    /* C3EF0 800B4F40 A3A2006A */   sb        $v0, 0x6A($sp)
    /* C3EF4 800B4F44 10000002 */  b          .L800B4F50_C3F00
    /* C3EF8 800B4F48 A3A0006A */   sb        $zero, 0x6A($sp)
    /* C3EFC 800B4F4C A3A2006A */  sb         $v0, 0x6A($sp)
  .L800B4F50_C3F00:
    /* C3F00 800B4F50 26100001 */  addiu      $s0, $s0, 0x1
  .L800B4F54_C3F04:
    /* C3F04 800B4F54 321900FF */  andi       $t9, $s0, 0xFF
    /* C3F08 800B4F58 2B210040 */  slti       $at, $t9, 0x40
    /* C3F0C 800B4F5C 1420FFD0 */  bnez       $at, .L800B4EA0_C3E50
    /* C3F10 800B4F60 03208025 */   or        $s0, $t9, $zero
    /* C3F14 800B4F64 3C038015 */  lui        $v1, %hi(D_8014F898)
    /* C3F18 800B4F68 8063F898 */  lb         $v1, %lo(D_8014F898)($v1)
    /* C3F1C 800B4F6C 93A40059 */  lbu        $a0, 0x59($sp)
    /* C3F20 800B4F70 3C058015 */  lui        $a1, %hi(D_80151DD8)
    /* C3F24 800B4F74 00034100 */  sll        $t0, $v1, 4
    /* C3F28 800B4F78 01034023 */  subu       $t0, $t0, $v1
    /* C3F2C 800B4F7C 00045080 */  sll        $t2, $a0, 2
    /* C3F30 800B4F80 96EB0000 */  lhu        $t3, 0x0($s7)
    /* C3F34 800B4F84 24A51DD8 */  addiu      $a1, $a1, %lo(D_80151DD8)
    /* C3F38 800B4F88 000840C0 */  sll        $t0, $t0, 3
    /* C3F3C 800B4F8C 01445023 */  subu       $t2, $t2, $a0
    /* C3F40 800B4F90 000A5040 */  sll        $t2, $t2, 1
    /* C3F44 800B4F94 00A84821 */  addu       $t1, $a1, $t0
    /* C3F48 800B4F98 012A1021 */  addu       $v0, $t1, $t2
    /* C3F4C 800B4F9C A44B0000 */  sh         $t3, 0x0($v0)
    /* C3F50 800B4FA0 96CCFFFE */  lhu        $t4, -0x2($s6)
    /* C3F54 800B4FA4 93AE0068 */  lbu        $t6, 0x68($sp)
    /* C3F58 800B4FA8 24840001 */  addiu      $a0, $a0, 0x1
    /* C3F5C 800B4FAC 318D0800 */  andi       $t5, $t4, 0x800
    /* C3F60 800B4FB0 51A0001B */  beql       $t5, $zero, .L800B5020_C3FD0
    /* C3F64 800B4FB4 93AD0068 */   lbu       $t5, 0x68($sp)
    /* C3F68 800B4FB8 05C10003 */  bgez       $t6, .L800B4FC8_C3F78
    /* C3F6C 800B4FBC 000E7883 */   sra       $t7, $t6, 2
    /* C3F70 800B4FC0 25C10003 */  addiu      $at, $t6, 0x3
    /* C3F74 800B4FC4 00017883 */  sra        $t7, $at, 2
  .L800B4FC8_C3F78:
    /* C3F78 800B4FC8 01FE0019 */  multu      $t7, $fp
    /* C3F7C 800B4FCC 93B9006A */  lbu        $t9, 0x6A($sp)
    /* C3F80 800B4FD0 93AA0069 */  lbu        $t2, 0x69($sp)
    /* C3F84 800B4FD4 0000C012 */  mflo       $t8
    /* C3F88 800B4FD8 A0580002 */  sb         $t8, 0x2($v0)
    /* C3F8C 800B4FDC 07210003 */  bgez       $t9, .L800B4FEC_C3F9C
    /* C3F90 800B4FE0 00194083 */   sra       $t0, $t9, 2
    /* C3F94 800B4FE4 27210003 */  addiu      $at, $t9, 0x3
    /* C3F98 800B4FE8 00014083 */  sra        $t0, $at, 2
  .L800B4FEC_C3F9C:
    /* C3F9C 800B4FEC 011E0019 */  multu      $t0, $fp
    /* C3FA0 800B4FF0 00004812 */  mflo       $t1
    /* C3FA4 800B4FF4 A0490004 */  sb         $t1, 0x4($v0)
    /* C3FA8 800B4FF8 05410003 */  bgez       $t2, .L800B5008_C3FB8
    /* C3FAC 800B4FFC 000A5883 */   sra       $t3, $t2, 2
    /* C3FB0 800B5000 25410003 */  addiu      $at, $t2, 0x3
    /* C3FB4 800B5004 00015883 */  sra        $t3, $at, 2
  .L800B5008_C3FB8:
    /* C3FB8 800B5008 017E0019 */  multu      $t3, $fp
    /* C3FBC 800B500C 00006012 */  mflo       $t4
    /* C3FC0 800B5010 A04C0003 */  sb         $t4, 0x3($v0)
    /* C3FC4 800B5014 10000008 */  b          .L800B5038_C3FE8
    /* C3FC8 800B5018 24010013 */   addiu     $at, $zero, 0x13
    /* C3FCC 800B501C 93AD0068 */  lbu        $t5, 0x68($sp)
  .L800B5020_C3FD0:
    /* C3FD0 800B5020 93AE0069 */  lbu        $t6, 0x69($sp)
    /* C3FD4 800B5024 93AF006A */  lbu        $t7, 0x6A($sp)
    /* C3FD8 800B5028 A04D0002 */  sb         $t5, 0x2($v0)
    /* C3FDC 800B502C A04E0003 */  sb         $t6, 0x3($v0)
    /* C3FE0 800B5030 A04F0004 */  sb         $t7, 0x4($v0)
    /* C3FE4 800B5034 24010013 */  addiu      $at, $zero, 0x13
  .L800B5038_C3FE8:
    /* C3FE8 800B5038 0081001A */  div        $zero, $a0, $at
    /* C3FEC 800B503C 93A2006F */  lbu        $v0, 0x6F($sp)
    /* C3FF0 800B5040 0000C810 */  mfhi       $t9
    /* C3FF4 800B5044 A3B90059 */  sb         $t9, 0x59($sp)
    /* C3FF8 800B5048 24420001 */  addiu      $v0, $v0, 0x1
    /* C3FFC 800B504C 305100FF */  andi       $s1, $v0, 0xFF
    /* C4000 800B5050 2A210013 */  slti       $at, $s1, 0x13
    /* C4004 800B5054 1420FF70 */  bnez       $at, .L800B4E18_C3DC8
    /* C4008 800B5058 A3B1006F */   sb        $s1, 0x6F($sp)
    /* C400C 800B505C 8FBF003C */  lw         $ra, 0x3C($sp)
    /* C4010 800B5060 8FB00018 */  lw         $s0, 0x18($sp)
    /* C4014 800B5064 8FB1001C */  lw         $s1, 0x1C($sp)
    /* C4018 800B5068 8FB20020 */  lw         $s2, 0x20($sp)
    /* C401C 800B506C 8FB30024 */  lw         $s3, 0x24($sp)
    /* C4020 800B5070 8FB40028 */  lw         $s4, 0x28($sp)
    /* C4024 800B5074 8FB5002C */  lw         $s5, 0x2C($sp)
    /* C4028 800B5078 8FB60030 */  lw         $s6, 0x30($sp)
    /* C402C 800B507C 8FB70034 */  lw         $s7, 0x34($sp)
    /* C4030 800B5080 8FBE0038 */  lw         $fp, 0x38($sp)
    /* C4034 800B5084 A0A30960 */  sb         $v1, 0x960($a1)
    /* C4038 800B5088 03E00008 */  jr         $ra
    /* C403C 800B508C 27BD0070 */   addiu     $sp, $sp, 0x70
endlabel func_800B4D4C_C3CFC
