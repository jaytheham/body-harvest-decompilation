nonmatching func_800B49A4_C3954, 0x3A8

glabel func_800B49A4_C3954
    /* C3954 800B49A4 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* C3958 800B49A8 3C038015 */  lui        $v1, %hi(D_80151DD8)
    /* C395C 800B49AC 24631DD8 */  addiu      $v1, $v1, %lo(D_80151DD8)
    /* C3960 800B49B0 3C0E8015 */  lui        $t6, %hi(D_8014F8A0)
    /* C3964 800B49B4 8DCEF8A0 */  lw         $t6, %lo(D_8014F8A0)($t6)
    /* C3968 800B49B8 90620965 */  lbu        $v0, 0x965($v1)
    /* C396C 800B49BC 906F0964 */  lbu        $t7, 0x964($v1)
    /* C3970 800B49C0 80790961 */  lb         $t9, 0x961($v1)
    /* C3974 800B49C4 AFB5002C */  sw         $s5, 0x2C($sp)
    /* C3978 800B49C8 AFB40028 */  sw         $s4, 0x28($sp)
    /* C397C 800B49CC AFA40070 */  sw         $a0, 0x70($sp)
    /* C3980 800B49D0 80690960 */  lb         $t1, 0x960($v1)
    /* C3984 800B49D4 3C048015 */  lui        $a0, %hi(D_8014F899)
    /* C3988 800B49D8 3C148015 */  lui        $s4, %hi(D_8014F89D)
    /* C398C 800B49DC 3C158015 */  lui        $s5, %hi(D_8014F89C)
    /* C3990 800B49E0 26B5F89C */  addiu      $s5, $s5, %lo(D_8014F89C)
    /* C3994 800B49E4 2694F89D */  addiu      $s4, $s4, %lo(D_8014F89D)
    /* C3998 800B49E8 2484F899 */  addiu      $a0, $a0, %lo(D_8014F899)
    /* C399C 800B49EC 24580001 */  addiu      $t8, $v0, 0x1
    /* C39A0 800B49F0 A0780965 */  sb         $t8, 0x965($v1)
    /* C39A4 800B49F4 3C018015 */  lui        $at, %hi(D_8014F898)
    /* C39A8 800B49F8 A2820000 */  sb         $v0, 0x0($s4)
    /* C39AC 800B49FC A2AF0000 */  sb         $t7, 0x0($s5)
    /* C39B0 800B4A00 A0990000 */  sb         $t9, 0x0($a0)
    /* C39B4 800B4A04 A029F898 */  sb         $t1, %lo(D_8014F898)($at)
    /* C39B8 800B4A08 928B0000 */  lbu        $t3, 0x0($s4)
    /* C39BC 800B4A0C 808A0000 */  lb         $t2, 0x0($a0)
    /* C39C0 800B4A10 AFB20020 */  sw         $s2, 0x20($sp)
    /* C39C4 800B4A14 AFBE0038 */  sw         $fp, 0x38($sp)
    /* C39C8 800B4A18 AFB30024 */  sw         $s3, 0x24($sp)
    /* C39CC 800B4A1C AFB1001C */  sw         $s1, 0x1C($sp)
    /* C39D0 800B4A20 3C128015 */  lui        $s2, %hi(D_8014FD48)
    /* C39D4 800B4A24 256C0001 */  addiu      $t4, $t3, 0x1
    /* C39D8 800B4A28 AFBF003C */  sw         $ra, 0x3C($sp)
    /* C39DC 800B4A2C AFB70034 */  sw         $s7, 0x34($sp)
    /* C39E0 800B4A30 AFB60030 */  sw         $s6, 0x30($sp)
    /* C39E4 800B4A34 AFB00018 */  sw         $s0, 0x18($sp)
    /* C39E8 800B4A38 A28C0000 */  sb         $t4, 0x0($s4)
    /* C39EC 800B4A3C 2652FD48 */  addiu      $s2, $s2, %lo(D_8014FD48)
    /* C39F0 800B4A40 00008825 */  or         $s1, $zero, $zero
    /* C39F4 800B4A44 2413003C */  addiu      $s3, $zero, 0x3C
    /* C39F8 800B4A48 241E0003 */  addiu      $fp, $zero, 0x3
    /* C39FC 800B4A4C A3A0006F */  sb         $zero, 0x6F($sp)
    /* C3A00 800B4A50 AFAE005C */  sw         $t6, 0x5C($sp)
    /* C3A04 800B4A54 A3AA0059 */  sb         $t2, 0x59($sp)
  .L800B4A58_C3A08:
    /* C3A08 800B4A58 92870000 */  lbu        $a3, 0x0($s4)
    /* C3A0C 800B4A5C 92AD0000 */  lbu        $t5, 0x0($s5)
    /* C3A10 800B4A60 8FA8005C */  lw         $t0, 0x5C($sp)
    /* C3A14 800B4A64 24E70012 */  addiu      $a3, $a3, 0x12
    /* C3A18 800B4A68 00077200 */  sll        $t6, $a3, 8
    /* C3A1C 800B4A6C 01B11821 */  addu       $v1, $t5, $s1
    /* C3A20 800B4A70 006E1021 */  addu       $v0, $v1, $t6
    /* C3A24 800B4A74 304FFFFF */  andi       $t7, $v0, 0xFFFF
    /* C3A28 800B4A78 000FC040 */  sll        $t8, $t7, 1
    /* C3A2C 800B4A7C 0118B021 */  addu       $s6, $t0, $t8
    /* C3A30 800B4A80 96D9FE00 */  lhu        $t9, -0x200($s6)
    /* C3A34 800B4A84 000F6040 */  sll        $t4, $t7, 1
    /* C3A38 800B4A88 010CB821 */  addu       $s7, $t0, $t4
    /* C3A3C 800B4A8C 3329003F */  andi       $t1, $t9, 0x3F
    /* C3A40 800B4A90 A3A90060 */  sb         $t1, 0x60($sp)
    /* C3A44 800B4A94 96CAFFFE */  lhu        $t2, -0x2($s6)
    /* C3A48 800B4A98 306500FF */  andi       $a1, $v1, 0xFF
    /* C3A4C 800B4A9C 30E400FF */  andi       $a0, $a3, 0xFF
    /* C3A50 800B4AA0 314B003F */  andi       $t3, $t2, 0x3F
    /* C3A54 800B4AA4 A3AB0061 */  sb         $t3, 0x61($sp)
    /* C3A58 800B4AA8 96ED0000 */  lhu        $t5, 0x0($s7)
    /* C3A5C 800B4AAC 27A60054 */  addiu      $a2, $sp, 0x54
    /* C3A60 800B4AB0 31AE003F */  andi       $t6, $t5, 0x3F
    /* C3A64 800B4AB4 A3AE0062 */  sb         $t6, 0x62($sp)
    /* C3A68 800B4AB8 96CF0002 */  lhu        $t7, 0x2($s6)
    /* C3A6C 800B4ABC 31F8003F */  andi       $t8, $t7, 0x3F
    /* C3A70 800B4AC0 A3B80063 */  sb         $t8, 0x63($sp)
    /* C3A74 800B4AC4 96D90200 */  lhu        $t9, 0x200($s6)
    /* C3A78 800B4AC8 3329003F */  andi       $t1, $t9, 0x3F
    /* C3A7C 800B4ACC 0C02C605 */  jal        func_800B1814_C07C4
    /* C3A80 800B4AD0 A3A90064 */   sb        $t1, 0x64($sp)
    /* C3A84 800B4AD4 27A40060 */  addiu      $a0, $sp, 0x60
    /* C3A88 800B4AD8 27A50054 */  addiu      $a1, $sp, 0x54
    /* C3A8C 800B4ADC 0C02CB3C */  jal        func_800B2CF0_C1CA0
    /* C3A90 800B4AE0 27A60068 */   addiu     $a2, $sp, 0x68
    /* C3A94 800B4AE4 00008025 */  or         $s0, $zero, $zero
  .L800B4AE8_C3A98:
    /* C3A98 800B4AE8 00105040 */  sll        $t2, $s0, 1
    /* C3A9C 800B4AEC 92AB0000 */  lbu        $t3, 0x0($s5)
    /* C3AA0 800B4AF0 024A1021 */  addu       $v0, $s2, $t2
    /* C3AA4 800B4AF4 904D0000 */  lbu        $t5, 0x0($v0)
    /* C3AA8 800B4AF8 01716021 */  addu       $t4, $t3, $s1
    /* C3AAC 800B4AFC 558D0028 */  bnel       $t4, $t5, .L800B4BA0_C3B50
    /* C3AB0 800B4B00 26100001 */   addiu     $s0, $s0, 0x1
    /* C3AB4 800B4B04 928E0000 */  lbu        $t6, 0x0($s4)
    /* C3AB8 800B4B08 90580001 */  lbu        $t8, 0x1($v0)
    /* C3ABC 800B4B0C 25CF0012 */  addiu      $t7, $t6, 0x12
    /* C3AC0 800B4B10 55F80023 */  bnel       $t7, $t8, .L800B4BA0_C3B50
    /* C3AC4 800B4B14 26100001 */   addiu     $s0, $s0, 0x1
    /* C3AC8 800B4B18 0C000E38 */  jal        func_800038E0_44E0
    /* C3ACC 800B4B1C 00000000 */   nop
    /* C3AD0 800B4B20 0053001A */  div        $zero, $v0, $s3
    /* C3AD4 800B4B24 00002010 */  mfhi       $a0
    /* C3AD8 800B4B28 309900FF */  andi       $t9, $a0, 0xFF
    /* C3ADC 800B4B2C 27230014 */  addiu      $v1, $t9, 0x14
    /* C3AE0 800B4B30 16600002 */  bnez       $s3, .L800B4B3C_C3AEC
    /* C3AE4 800B4B34 00000000 */   nop
    /* C3AE8 800B4B38 0007000D */  break      7
  .L800B4B3C_C3AEC:
    /* C3AEC 800B4B3C 2401FFFF */  addiu      $at, $zero, -0x1
    /* C3AF0 800B4B40 16610004 */  bne        $s3, $at, .L800B4B54_C3B04
    /* C3AF4 800B4B44 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* C3AF8 800B4B48 14410002 */  bne        $v0, $at, .L800B4B54_C3B04
    /* C3AFC 800B4B4C 00000000 */   nop
    /* C3B00 800B4B50 0006000D */  break      6
  .L800B4B54_C3B04:
    /* C3B04 800B4B54 03202025 */  or         $a0, $t9, $zero
    /* C3B08 800B4B58 04630004 */  bgezl      $v1, .L800B4B6C_C3B1C
    /* C3B0C 800B4B5C A3A30068 */   sb        $v1, 0x68($sp)
    /* C3B10 800B4B60 10000002 */  b          .L800B4B6C_C3B1C
    /* C3B14 800B4B64 A3A00068 */   sb        $zero, 0x68($sp)
    /* C3B18 800B4B68 A3A30068 */  sb         $v1, 0x68($sp)
  .L800B4B6C_C3B1C:
    /* C3B1C 800B4B6C 2482FFFB */  addiu      $v0, $a0, -0x5
    /* C3B20 800B4B70 04430004 */  bgezl      $v0, .L800B4B84_C3B34
    /* C3B24 800B4B74 A3A20069 */   sb        $v0, 0x69($sp)
    /* C3B28 800B4B78 10000002 */  b          .L800B4B84_C3B34
    /* C3B2C 800B4B7C A3A00069 */   sb        $zero, 0x69($sp)
    /* C3B30 800B4B80 A3A20069 */  sb         $v0, 0x69($sp)
  .L800B4B84_C3B34:
    /* C3B34 800B4B84 2482FFE7 */  addiu      $v0, $a0, -0x19
    /* C3B38 800B4B88 04430004 */  bgezl      $v0, .L800B4B9C_C3B4C
    /* C3B3C 800B4B8C A3A2006A */   sb        $v0, 0x6A($sp)
    /* C3B40 800B4B90 10000002 */  b          .L800B4B9C_C3B4C
    /* C3B44 800B4B94 A3A0006A */   sb        $zero, 0x6A($sp)
    /* C3B48 800B4B98 A3A2006A */  sb         $v0, 0x6A($sp)
  .L800B4B9C_C3B4C:
    /* C3B4C 800B4B9C 26100001 */  addiu      $s0, $s0, 0x1
  .L800B4BA0_C3B50:
    /* C3B50 800B4BA0 320900FF */  andi       $t1, $s0, 0xFF
    /* C3B54 800B4BA4 29210040 */  slti       $at, $t1, 0x40
    /* C3B58 800B4BA8 1420FFCF */  bnez       $at, .L800B4AE8_C3A98
    /* C3B5C 800B4BAC 01208025 */   or        $s0, $t1, $zero
    /* C3B60 800B4BB0 3C058015 */  lui        $a1, %hi(D_8014F898)
    /* C3B64 800B4BB4 24A5F898 */  addiu      $a1, $a1, %lo(D_8014F898)
    /* C3B68 800B4BB8 80A30000 */  lb         $v1, 0x0($a1)
    /* C3B6C 800B4BBC 93A40059 */  lbu        $a0, 0x59($sp)
    /* C3B70 800B4BC0 3C078015 */  lui        $a3, %hi(D_80151DD8)
    /* C3B74 800B4BC4 00035100 */  sll        $t2, $v1, 4
    /* C3B78 800B4BC8 01435023 */  subu       $t2, $t2, $v1
    /* C3B7C 800B4BCC 00046080 */  sll        $t4, $a0, 2
    /* C3B80 800B4BD0 96ED0000 */  lhu        $t5, 0x0($s7)
    /* C3B84 800B4BD4 24E71DD8 */  addiu      $a3, $a3, %lo(D_80151DD8)
    /* C3B88 800B4BD8 000A50C0 */  sll        $t2, $t2, 3
    /* C3B8C 800B4BDC 01846023 */  subu       $t4, $t4, $a0
    /* C3B90 800B4BE0 000C6040 */  sll        $t4, $t4, 1
    /* C3B94 800B4BE4 00EA5821 */  addu       $t3, $a3, $t2
    /* C3B98 800B4BE8 016C1021 */  addu       $v0, $t3, $t4
    /* C3B9C 800B4BEC A44D0000 */  sh         $t5, 0x0($v0)
    /* C3BA0 800B4BF0 96CEFFFE */  lhu        $t6, -0x2($s6)
    /* C3BA4 800B4BF4 93B80068 */  lbu        $t8, 0x68($sp)
    /* C3BA8 800B4BF8 24060013 */  addiu      $a2, $zero, 0x13
    /* C3BAC 800B4BFC 31CF0800 */  andi       $t7, $t6, 0x800
    /* C3BB0 800B4C00 51E0001C */  beql       $t7, $zero, .L800B4C74_C3C24
    /* C3BB4 800B4C04 93B90069 */   lbu       $t9, 0x69($sp)
    /* C3BB8 800B4C08 93B80068 */  lbu        $t8, 0x68($sp)
    /* C3BBC 800B4C0C 93AA006A */  lbu        $t2, 0x6A($sp)
    /* C3BC0 800B4C10 93AD0069 */  lbu        $t5, 0x69($sp)
    /* C3BC4 800B4C14 07010003 */  bgez       $t8, .L800B4C24_C3BD4
    /* C3BC8 800B4C18 0018C883 */   sra       $t9, $t8, 2
    /* C3BCC 800B4C1C 27010003 */  addiu      $at, $t8, 0x3
    /* C3BD0 800B4C20 0001C883 */  sra        $t9, $at, 2
  .L800B4C24_C3BD4:
    /* C3BD4 800B4C24 033E0019 */  multu      $t9, $fp
    /* C3BD8 800B4C28 00004812 */  mflo       $t1
    /* C3BDC 800B4C2C A0490002 */  sb         $t1, 0x2($v0)
    /* C3BE0 800B4C30 05410003 */  bgez       $t2, .L800B4C40_C3BF0
    /* C3BE4 800B4C34 000A5883 */   sra       $t3, $t2, 2
    /* C3BE8 800B4C38 25410003 */  addiu      $at, $t2, 0x3
    /* C3BEC 800B4C3C 00015883 */  sra        $t3, $at, 2
  .L800B4C40_C3BF0:
    /* C3BF0 800B4C40 017E0019 */  multu      $t3, $fp
    /* C3BF4 800B4C44 00006012 */  mflo       $t4
    /* C3BF8 800B4C48 A04C0004 */  sb         $t4, 0x4($v0)
    /* C3BFC 800B4C4C 05A10003 */  bgez       $t5, .L800B4C5C_C3C0C
    /* C3C00 800B4C50 000D7083 */   sra       $t6, $t5, 2
    /* C3C04 800B4C54 25A10003 */  addiu      $at, $t5, 0x3
    /* C3C08 800B4C58 00017083 */  sra        $t6, $at, 2
  .L800B4C5C_C3C0C:
    /* C3C0C 800B4C5C 01DE0019 */  multu      $t6, $fp
    /* C3C10 800B4C60 00007812 */  mflo       $t7
    /* C3C14 800B4C64 A04F0003 */  sb         $t7, 0x3($v0)
    /* C3C18 800B4C68 10000007 */  b          .L800B4C88_C3C38
    /* C3C1C 800B4C6C 248A0001 */   addiu     $t2, $a0, 0x1
    /* C3C20 800B4C70 93B90069 */  lbu        $t9, 0x69($sp)
  .L800B4C74_C3C24:
    /* C3C24 800B4C74 93A9006A */  lbu        $t1, 0x6A($sp)
    /* C3C28 800B4C78 A0580002 */  sb         $t8, 0x2($v0)
    /* C3C2C 800B4C7C A0590003 */  sb         $t9, 0x3($v0)
    /* C3C30 800B4C80 A0490004 */  sb         $t1, 0x4($v0)
    /* C3C34 800B4C84 248A0001 */  addiu      $t2, $a0, 0x1
  .L800B4C88_C3C38:
    /* C3C38 800B4C88 0146001A */  div        $zero, $t2, $a2
    /* C3C3C 800B4C8C 93A2006F */  lbu        $v0, 0x6F($sp)
    /* C3C40 800B4C90 14C00002 */  bnez       $a2, .L800B4C9C_C3C4C
    /* C3C44 800B4C94 00000000 */   nop
    /* C3C48 800B4C98 0007000D */  break      7
  .L800B4C9C_C3C4C:
    /* C3C4C 800B4C9C 2401FFFF */  addiu      $at, $zero, -0x1
    /* C3C50 800B4CA0 14C10004 */  bne        $a2, $at, .L800B4CB4_C3C64
    /* C3C54 800B4CA4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* C3C58 800B4CA8 15410002 */  bne        $t2, $at, .L800B4CB4_C3C64
    /* C3C5C 800B4CAC 00000000 */   nop
    /* C3C60 800B4CB0 0006000D */  break      6
  .L800B4CB4_C3C64:
    /* C3C64 800B4CB4 24420001 */  addiu      $v0, $v0, 0x1
    /* C3C68 800B4CB8 304C00FF */  andi       $t4, $v0, 0xFF
    /* C3C6C 800B4CBC 00002010 */  mfhi       $a0
    /* C3C70 800B4CC0 29810013 */  slti       $at, $t4, 0x13
    /* C3C74 800B4CC4 308B00FF */  andi       $t3, $a0, 0xFF
    /* C3C78 800B4CC8 A3AB0059 */  sb         $t3, 0x59($sp)
    /* C3C7C 800B4CCC 01801025 */  or         $v0, $t4, $zero
    /* C3C80 800B4CD0 01808825 */  or         $s1, $t4, $zero
    /* C3C84 800B4CD4 A3AC006F */  sb         $t4, 0x6F($sp)
    /* C3C88 800B4CD8 1420FF5F */  bnez       $at, .L800B4A58_C3A08
    /* C3C8C 800B4CDC 01602025 */   or        $a0, $t3, $zero
    /* C3C90 800B4CE0 246D0001 */  addiu      $t5, $v1, 0x1
    /* C3C94 800B4CE4 01A6001A */  div        $zero, $t5, $a2
    /* C3C98 800B4CE8 00007010 */  mfhi       $t6
    /* C3C9C 800B4CEC 8FBF003C */  lw         $ra, 0x3C($sp)
    /* C3CA0 800B4CF0 A0AE0000 */  sb         $t6, 0x0($a1)
    /* C3CA4 800B4CF4 80AF0000 */  lb         $t7, 0x0($a1)
    /* C3CA8 800B4CF8 14C00002 */  bnez       $a2, .L800B4D04_C3CB4
    /* C3CAC 800B4CFC 00000000 */   nop
    /* C3CB0 800B4D00 0007000D */  break      7
  .L800B4D04_C3CB4:
    /* C3CB4 800B4D04 2401FFFF */  addiu      $at, $zero, -0x1
    /* C3CB8 800B4D08 14C10004 */  bne        $a2, $at, .L800B4D1C_C3CCC
    /* C3CBC 800B4D0C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* C3CC0 800B4D10 15A10002 */  bne        $t5, $at, .L800B4D1C_C3CCC
    /* C3CC4 800B4D14 00000000 */   nop
    /* C3CC8 800B4D18 0006000D */  break      6
  .L800B4D1C_C3CCC:
    /* C3CCC 800B4D1C 8FB00018 */  lw         $s0, 0x18($sp)
    /* C3CD0 800B4D20 8FB1001C */  lw         $s1, 0x1C($sp)
    /* C3CD4 800B4D24 8FB20020 */  lw         $s2, 0x20($sp)
    /* C3CD8 800B4D28 8FB30024 */  lw         $s3, 0x24($sp)
    /* C3CDC 800B4D2C 8FB40028 */  lw         $s4, 0x28($sp)
    /* C3CE0 800B4D30 8FB5002C */  lw         $s5, 0x2C($sp)
    /* C3CE4 800B4D34 8FB60030 */  lw         $s6, 0x30($sp)
    /* C3CE8 800B4D38 8FB70034 */  lw         $s7, 0x34($sp)
    /* C3CEC 800B4D3C 8FBE0038 */  lw         $fp, 0x38($sp)
    /* C3CF0 800B4D40 27BD0070 */  addiu      $sp, $sp, 0x70
    /* C3CF4 800B4D44 03E00008 */  jr         $ra
    /* C3CF8 800B4D48 A0EF0960 */   sb        $t7, 0x960($a3)
endlabel func_800B49A4_C3954
