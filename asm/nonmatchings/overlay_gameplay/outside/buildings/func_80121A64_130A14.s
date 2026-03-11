nonmatching func_80121A64_130A14, 0x450

glabel func_80121A64_130A14
    /* 130A14 80121A64 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 130A18 80121A68 AFB00040 */  sw         $s0, 0x40($sp)
    /* 130A1C 80121A6C 00808025 */  or         $s0, $a0, $zero
    /* 130A20 80121A70 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 130A24 80121A74 24040045 */  addiu      $a0, $zero, 0x45
    /* 130A28 80121A78 0C047498 */  jal        func_8011D260_12C210
    /* 130A2C 80121A7C 24050012 */   addiu     $a1, $zero, 0x12
    /* 130A30 80121A80 00027080 */  sll        $t6, $v0, 2
    /* 130A34 80121A84 01C27023 */  subu       $t6, $t6, $v0
    /* 130A38 80121A88 3C0F8005 */  lui        $t7, %hi(buildingInstances)
    /* 130A3C 80121A8C 25EF0AD8 */  addiu      $t7, $t7, %lo(buildingInstances)
    /* 130A40 80121A90 000E70C0 */  sll        $t6, $t6, 3
    /* 130A44 80121A94 01CF4021 */  addu       $t0, $t6, $t7
    /* 130A48 80121A98 2418011B */  addiu      $t8, $zero, 0x11B
    /* 130A4C 80121A9C 24190032 */  addiu      $t9, $zero, 0x32
    /* 130A50 80121AA0 240A000A */  addiu      $t2, $zero, 0xA
    /* 130A54 80121AA4 240B0036 */  addiu      $t3, $zero, 0x36
    /* 130A58 80121AA8 240C000F */  addiu      $t4, $zero, 0xF
    /* 130A5C 80121AAC AFAC0020 */  sw         $t4, 0x20($sp)
    /* 130A60 80121AB0 AFAB001C */  sw         $t3, 0x1C($sp)
    /* 130A64 80121AB4 AFAA0018 */  sw         $t2, 0x18($sp)
    /* 130A68 80121AB8 AFB90014 */  sw         $t9, 0x14($sp)
    /* 130A6C 80121ABC AFB80010 */  sw         $t8, 0x10($sp)
    /* 130A70 80121AC0 AFA8005C */  sw         $t0, 0x5C($sp)
    /* 130A74 80121AC4 02002025 */  or         $a0, $s0, $zero
    /* 130A78 80121AC8 24050006 */  addiu      $a1, $zero, 0x6
    /* 130A7C 80121ACC 00003025 */  or         $a2, $zero, $zero
    /* 130A80 80121AD0 0C047EA4 */  jal        func_8011FA90_12EA40
    /* 130A84 80121AD4 24070195 */   addiu     $a3, $zero, 0x195
    /* 130A88 80121AD8 8FA8005C */  lw         $t0, 0x5C($sp)
    /* 130A8C 80121ADC 24040000 */  addiu      $a0, $zero, 0x0
    /* 130A90 80121AE0 2405000F */  addiu      $a1, $zero, 0xF
    /* 130A94 80121AE4 560800EF */  bnel       $s0, $t0, .L80121EA4_130E54
    /* 130A98 80121AE8 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 130A9C 80121AEC 0C001C9B */  jal        func_8000726C_7E6C
    /* 130AA0 80121AF0 AFA8005C */   sw        $t0, 0x5C($sp)
    /* 130AA4 80121AF4 10400005 */  beqz       $v0, .L80121B0C_130ABC
    /* 130AA8 80121AF8 8FA8005C */   lw        $t0, 0x5C($sp)
    /* 130AAC 80121AFC 3C0D8005 */  lui        $t5, %hi(D_80052558)
    /* 130AB0 80121B00 8DAD2558 */  lw         $t5, %lo(D_80052558)($t5)
    /* 130AB4 80121B04 31AE0001 */  andi       $t6, $t5, 0x1
    /* 130AB8 80121B08 11C000E5 */  beqz       $t6, .L80121EA0_130E50
  .L80121B0C_130ABC:
    /* 130ABC 80121B0C 3C048005 */   lui       $a0, %hi(D_80048178)
    /* 130AC0 80121B10 3C028005 */  lui        $v0, %hi(D_80052558)
    /* 130AC4 80121B14 8C422558 */  lw         $v0, %lo(D_80052558)($v0)
    /* 130AC8 80121B18 24848178 */  addiu      $a0, $a0, %lo(D_80048178)
    /* 130ACC 80121B1C 8C830000 */  lw         $v1, 0x0($a0)
    /* 130AD0 80121B20 304F0001 */  andi       $t7, $v0, 0x1
    /* 130AD4 80121B24 01E01025 */  or         $v0, $t7, $zero
    /* 130AD8 80121B28 04600008 */  bltz       $v1, .L80121B4C_130AFC
    /* 130ADC 80121B2C 3C098016 */   lui       $t1, %hi(D_8015EA42)
    /* 130AE0 80121B30 3C018016 */  lui        $at, %hi(D_8015EA3E)
    /* 130AE4 80121B34 A420EA3E */  sh         $zero, %lo(D_8015EA3E)($at)
    /* 130AE8 80121B38 3C018016 */  lui        $at, %hi(D_8015EA40)
    /* 130AEC 80121B3C 2529EA42 */  addiu      $t1, $t1, %lo(D_8015EA42)
    /* 130AF0 80121B40 A420EA40 */  sh         $zero, %lo(D_8015EA40)($at)
    /* 130AF4 80121B44 24180144 */  addiu      $t8, $zero, 0x144
    /* 130AF8 80121B48 A5380000 */  sh         $t8, 0x0($t1)
  .L80121B4C_130AFC:
    /* 130AFC 80121B4C 3C098016 */  lui        $t1, %hi(D_8015EA42)
    /* 130B00 80121B50 10400049 */  beqz       $v0, .L80121C78_130C28
    /* 130B04 80121B54 2529EA42 */   addiu     $t1, $t1, %lo(D_8015EA42)
    /* 130B08 80121B58 2479FFFF */  addiu      $t9, $v1, -0x1
    /* 130B0C 80121B5C 2B21FFF6 */  slti       $at, $t9, -0xA
    /* 130B10 80121B60 AC990000 */  sw         $t9, 0x0($a0)
    /* 130B14 80121B64 1020000F */  beqz       $at, .L80121BA4_130B54
    /* 130B18 80121B68 03201825 */   or        $v1, $t9, $zero
    /* 130B1C 80121B6C 3C028014 */  lui        $v0, %hi(D_80140AA0)
    /* 130B20 80121B70 84420AA0 */  lh         $v0, %lo(D_80140AA0)($v0)
    /* 130B24 80121B74 28414001 */  slti       $at, $v0, 0x4001
    /* 130B28 80121B78 1420000A */  bnez       $at, .L80121BA4_130B54
    /* 130B2C 80121B7C 00000000 */   nop
    /* 130B30 80121B80 0C04B613 */  jal        func_8012D84C_13C7FC
    /* 130B34 80121B84 00000000 */   nop
    /* 130B38 80121B88 3C028005 */  lui        $v0, %hi(D_80052558)
    /* 130B3C 80121B8C 24422558 */  addiu      $v0, $v0, %lo(D_80052558)
    /* 130B40 80121B90 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 130B44 80121B94 2401FFFE */  addiu      $at, $zero, -0x2
    /* 130B48 80121B98 01415824 */  and        $t3, $t2, $at
    /* 130B4C 80121B9C 100000C0 */  b          .L80121EA0_130E50
    /* 130B50 80121BA0 AC4B0000 */   sw        $t3, 0x0($v0)
  .L80121BA4_130B54:
    /* 130B54 80121BA4 3C028014 */  lui        $v0, %hi(D_80140AA0)
    /* 130B58 80121BA8 14600010 */  bnez       $v1, .L80121BEC_130B9C
    /* 130B5C 80121BAC 84420AA0 */   lh        $v0, %lo(D_80140AA0)($v0)
    /* 130B60 80121BB0 85040000 */  lh         $a0, 0x0($t0)
    /* 130B64 80121BB4 85050002 */  lh         $a1, 0x2($t0)
    /* 130B68 80121BB8 85060004 */  lh         $a2, 0x4($t0)
    /* 130B6C 80121BBC AFA8005C */  sw         $t0, 0x5C($sp)
    /* 130B70 80121BC0 AFA00014 */  sw         $zero, 0x14($sp)
    /* 130B74 80121BC4 AFA00010 */  sw         $zero, 0x10($sp)
    /* 130B78 80121BC8 0C037C0E */  jal        func_800DF038_EDFE8
    /* 130B7C 80121BCC 240700DC */   addiu     $a3, $zero, 0xDC
    /* 130B80 80121BD0 3C038005 */  lui        $v1, %hi(D_80048178)
    /* 130B84 80121BD4 3C098016 */  lui        $t1, %hi(D_8015EA42)
    /* 130B88 80121BD8 3C028014 */  lui        $v0, %hi(D_80140AA0)
    /* 130B8C 80121BDC 84420AA0 */  lh         $v0, %lo(D_80140AA0)($v0)
    /* 130B90 80121BE0 2529EA42 */  addiu      $t1, $t1, %lo(D_8015EA42)
    /* 130B94 80121BE4 8C638178 */  lw         $v1, %lo(D_80048178)($v1)
    /* 130B98 80121BE8 8FA8005C */  lw         $t0, 0x5C($sp)
  .L80121BEC_130B9C:
    /* 130B9C 80121BEC 04610022 */  bgez       $v1, .L80121C78_130C28
    /* 130BA0 80121BF0 2861FFF7 */   slti      $at, $v1, -0x9
    /* 130BA4 80121BF4 14200007 */  bnez       $at, .L80121C14_130BC4
    /* 130BA8 80121BF8 28414001 */   slti      $at, $v0, 0x4001
    /* 130BAC 80121BFC 54200006 */  bnel       $at, $zero, .L80121C18_130BC8
    /* 130BB0 80121C00 00030823 */   negu      $at, $v1
    /* 130BB4 80121C04 852C0000 */  lh         $t4, 0x0($t1)
    /* 130BB8 80121C08 258D00D0 */  addiu      $t5, $t4, 0xD0
    /* 130BBC 80121C0C 1000001A */  b          .L80121C78_130C28
    /* 130BC0 80121C10 A52D0000 */   sh        $t5, 0x0($t1)
  .L80121C14_130BC4:
    /* 130BC4 80121C14 00030823 */  negu       $at, $v1
  .L80121C18_130BC8:
    /* 130BC8 80121C18 00017080 */  sll        $t6, $at, 2
    /* 130BCC 80121C1C 01C17021 */  addu       $t6, $t6, $at
    /* 130BD0 80121C20 000E7080 */  sll        $t6, $t6, 2
    /* 130BD4 80121C24 004E1021 */  addu       $v0, $v0, $t6
    /* 130BD8 80121C28 2442FF38 */  addiu      $v0, $v0, -0xC8
    /* 130BDC 80121C2C 00027C00 */  sll        $t7, $v0, 16
    /* 130BE0 80121C30 000FC403 */  sra        $t8, $t7, 16
    /* 130BE4 80121C34 3C018014 */  lui        $at, %hi(D_80140AA0)
    /* 130BE8 80121C38 A4380AA0 */  sh         $t8, %lo(D_80140AA0)($at)
    /* 130BEC 80121C3C 2B014001 */  slti       $at, $t8, 0x4001
    /* 130BF0 80121C40 1420000D */  bnez       $at, .L80121C78_130C28
    /* 130BF4 80121C44 240700B4 */   addiu     $a3, $zero, 0xB4
    /* 130BF8 80121C48 85190000 */  lh         $t9, 0x0($t0)
    /* 130BFC 80121C4C 852A0000 */  lh         $t2, 0x0($t1)
    /* 130C00 80121C50 85050002 */  lh         $a1, 0x2($t0)
    /* 130C04 80121C54 85060004 */  lh         $a2, 0x4($t0)
    /* 130C08 80121C58 032A2023 */  subu       $a0, $t9, $t2
    /* 130C0C 80121C5C 00045C00 */  sll        $t3, $a0, 16
    /* 130C10 80121C60 000B2403 */  sra        $a0, $t3, 16
    /* 130C14 80121C64 AFA00014 */  sw         $zero, 0x14($sp)
    /* 130C18 80121C68 0C037C0E */  jal        func_800DF038_EDFE8
    /* 130C1C 80121C6C AFA00010 */   sw        $zero, 0x10($sp)
    /* 130C20 80121C70 3C098016 */  lui        $t1, %hi(D_8015EA42)
    /* 130C24 80121C74 2529EA42 */  addiu      $t1, $t1, %lo(D_8015EA42)
  .L80121C78_130C28:
    /* 130C28 80121C78 3C028014 */  lui        $v0, %hi(D_80140AA0)
    /* 130C2C 80121C7C 84420AA0 */  lh         $v0, %lo(D_80140AA0)($v0)
    /* 130C30 80121C80 3C048005 */  lui        $a0, %hi(D_80052B40)
    /* 130C34 80121C84 24842B40 */  addiu      $a0, $a0, %lo(D_80052B40)
    /* 130C38 80121C88 28414001 */  slti       $at, $v0, 0x4001
    /* 130C3C 80121C8C 10200035 */  beqz       $at, .L80121D64_130D14
    /* 130C40 80121C90 3C058005 */   lui       $a1, %hi(D_80052B48)
    /* 130C44 80121C94 3C0D8016 */  lui        $t5, %hi(D_8015EA3E)
    /* 130C48 80121C98 85ADEA3E */  lh         $t5, %lo(D_8015EA3E)($t5)
    /* 130C4C 80121C9C 3C0E8016 */  lui        $t6, %hi(D_8015EA40)
    /* 130C50 80121CA0 3C068005 */  lui        $a2, %hi(D_80052B50)
    /* 130C54 80121CA4 A48D0000 */  sh         $t5, 0x0($a0)
    /* 130C58 80121CA8 85CEEA40 */  lh         $t6, %lo(D_8015EA40)($t6)
    /* 130C5C 80121CAC 852F0000 */  lh         $t7, 0x0($t1)
    /* 130C60 80121CB0 24C62B50 */  addiu      $a2, $a2, %lo(D_80052B50)
    /* 130C64 80121CB4 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 130C68 80121CB8 3C088006 */  lui        $t0, %hi(D_8005BB38)
    /* 130C6C 80121CBC 2508BB38 */  addiu      $t0, $t0, %lo(D_8005BB38)
    /* 130C70 80121CC0 24180088 */  addiu      $t8, $zero, 0x88
    /* 130C74 80121CC4 24190123 */  addiu      $t9, $zero, 0x123
    /* 130C78 80121CC8 240A003E */  addiu      $t2, $zero, 0x3E
    /* 130C7C 80121CCC A4A00000 */  sh         $zero, 0x0($a1)
    /* 130C80 80121CD0 A4A00002 */  sh         $zero, 0x2($a1)
    /* 130C84 80121CD4 A4A20004 */  sh         $v0, 0x4($a1)
    /* 130C88 80121CD8 A4D80000 */  sh         $t8, 0x0($a2)
    /* 130C8C 80121CDC A4D90002 */  sh         $t9, 0x2($a2)
    /* 130C90 80121CE0 A4CA0004 */  sh         $t2, 0x4($a2)
    /* 130C94 80121CE4 8D070000 */  lw         $a3, 0x0($t0)
    /* 130C98 80121CE8 3C018014 */  lui        $at, %hi(D_80140AA0)
    /* 130C9C 80121CEC A48E0002 */  sh         $t6, 0x2($a0)
    /* 130CA0 80121CF0 A48F0004 */  sh         $t7, 0x4($a0)
    /* 130CA4 80121CF4 0C000E74 */  jal        func_800039D0_45D0
    /* 130CA8 80121CF8 A4220AA0 */   sh        $v0, %lo(D_80140AA0)($at)
    /* 130CAC 80121CFC 3C058006 */  lui        $a1, %hi(D_8005BB2C)
    /* 130CB0 80121D00 24A5BB2C */  addiu      $a1, $a1, %lo(D_8005BB2C)
    /* 130CB4 80121D04 8CA20000 */  lw         $v0, 0x0($a1)
    /* 130CB8 80121D08 3C0C0100 */  lui        $t4, (0x1000040 >> 16)
    /* 130CBC 80121D0C 3C088006 */  lui        $t0, %hi(D_8005BB38)
    /* 130CC0 80121D10 244B0008 */  addiu      $t3, $v0, 0x8
    /* 130CC4 80121D14 ACAB0000 */  sw         $t3, 0x0($a1)
    /* 130CC8 80121D18 358C0040 */  ori        $t4, $t4, (0x1000040 & 0xFFFF)
    /* 130CCC 80121D1C 2508BB38 */  addiu      $t0, $t0, %lo(D_8005BB38)
    /* 130CD0 80121D20 AC4C0000 */  sw         $t4, 0x0($v0)
    /* 130CD4 80121D24 8D0D0000 */  lw         $t5, 0x0($t0)
    /* 130CD8 80121D28 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 130CDC 80121D2C 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 130CE0 80121D30 01A17024 */  and        $t6, $t5, $at
    /* 130CE4 80121D34 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 130CE8 80121D38 8D0F0000 */  lw         $t7, 0x0($t0)
    /* 130CEC 80121D3C 8CA20000 */  lw         $v0, 0x0($a1)
    /* 130CF0 80121D40 3C0B0A00 */  lui        $t3, %hi(D_A002120)
    /* 130CF4 80121D44 25F80040 */  addiu      $t8, $t7, 0x40
    /* 130CF8 80121D48 24590008 */  addiu      $t9, $v0, 0x8
    /* 130CFC 80121D4C AD180000 */  sw         $t8, 0x0($t0)
    /* 130D00 80121D50 ACB90000 */  sw         $t9, 0x0($a1)
    /* 130D04 80121D54 256B2120 */  addiu      $t3, $t3, %lo(D_A002120)
    /* 130D08 80121D58 3C0A0600 */  lui        $t2, (0x6000000 >> 16)
    /* 130D0C 80121D5C AC4A0000 */  sw         $t2, 0x0($v0)
    /* 130D10 80121D60 AC4B0004 */  sw         $t3, 0x4($v0)
  .L80121D64_130D14:
    /* 130D14 80121D64 3C0C8005 */  lui        $t4, %hi(buildingInstances)
    /* 130D18 80121D68 258C0AD8 */  addiu      $t4, $t4, %lo(buildingInstances)
    /* 130D1C 80121D6C 020C1823 */  subu       $v1, $s0, $t4
    /* 130D20 80121D70 24010018 */  addiu      $at, $zero, 0x18
    /* 130D24 80121D74 0061001A */  div        $zero, $v1, $at
    /* 130D28 80121D78 3C198016 */  lui        $t9, %hi(D_80159DC8)
    /* 130D2C 80121D7C 87399DC8 */  lh         $t9, %lo(D_80159DC8)($t9)
    /* 130D30 80121D80 86180000 */  lh         $t8, 0x0($s0)
    /* 130D34 80121D84 860C0002 */  lh         $t4, 0x2($s0)
    /* 130D38 80121D88 00006812 */  mflo       $t5
    /* 130D3C 80121D8C 03193021 */  addu       $a2, $t8, $t9
    /* 130D40 80121D90 86180004 */  lh         $t8, 0x4($s0)
    /* 130D44 80121D94 000D1900 */  sll        $v1, $t5, 4
    /* 130D48 80121D98 3C0D8016 */  lui        $t5, %hi(D_80159DCA)
    /* 130D4C 80121D9C 85AD9DCA */  lh         $t5, %lo(D_80159DCA)($t5)
    /* 130D50 80121DA0 3C198016 */  lui        $t9, %hi(D_80159DCC)
    /* 130D54 80121DA4 87399DCC */  lh         $t9, %lo(D_80159DCC)($t9)
    /* 130D58 80121DA8 018D3821 */  addu       $a3, $t4, $t5
    /* 130D5C 80121DAC 00065400 */  sll        $t2, $a2, 16
    /* 130D60 80121DB0 000A3403 */  sra        $a2, $t2, 16
    /* 130D64 80121DB4 24650001 */  addiu      $a1, $v1, 0x1
    /* 130D68 80121DB8 3C088012 */  lui        $t0, %hi(func_801219F4_1309A4)
    /* 130D6C 80121DBC 250819F4 */  addiu      $t0, $t0, %lo(func_801219F4_1309A4)
    /* 130D70 80121DC0 30AFFFFF */  andi       $t7, $a1, 0xFFFF
    /* 130D74 80121DC4 00077400 */  sll        $t6, $a3, 16
    /* 130D78 80121DC8 240D0020 */  addiu      $t5, $zero, 0x20
    /* 130D7C 80121DCC 240C0032 */  addiu      $t4, $zero, 0x32
    /* 130D80 80121DD0 240B003C */  addiu      $t3, $zero, 0x3C
    /* 130D84 80121DD4 03195021 */  addu       $t2, $t8, $t9
    /* 130D88 80121DD8 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 130D8C 80121DDC AFAB0020 */  sw         $t3, 0x20($sp)
    /* 130D90 80121DE0 AFAC0024 */  sw         $t4, 0x24($sp)
    /* 130D94 80121DE4 AFAD0028 */  sw         $t5, 0x28($sp)
    /* 130D98 80121DE8 000E3C03 */  sra        $a3, $t6, 16
    /* 130D9C 80121DEC 01E02825 */  or         $a1, $t7, $zero
    /* 130DA0 80121DF0 AFA80030 */  sw         $t0, 0x30($sp)
    /* 130DA4 80121DF4 AFA80048 */  sw         $t0, 0x48($sp)
    /* 130DA8 80121DF8 AFA3004C */  sw         $v1, 0x4C($sp)
    /* 130DAC 80121DFC AFA0002C */  sw         $zero, 0x2C($sp)
    /* 130DB0 80121E00 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 130DB4 80121E04 AFA00018 */  sw         $zero, 0x18($sp)
    /* 130DB8 80121E08 AFA00014 */  sw         $zero, 0x14($sp)
    /* 130DBC 80121E0C 0C04B5C0 */  jal        func_8012D700_13C6B0
    /* 130DC0 80121E10 2404000D */   addiu     $a0, $zero, 0xD
    /* 130DC4 80121E14 3C188016 */  lui        $t8, %hi(D_80159DC8)
    /* 130DC8 80121E18 87189DC8 */  lh         $t8, %lo(D_80159DC8)($t8)
    /* 130DCC 80121E1C 860F0000 */  lh         $t7, 0x0($s0)
    /* 130DD0 80121E20 860B0002 */  lh         $t3, 0x2($s0)
    /* 130DD4 80121E24 3C0C8016 */  lui        $t4, %hi(D_80159DCA)
    /* 130DD8 80121E28 01F83021 */  addu       $a2, $t7, $t8
    /* 130DDC 80121E2C 860F0004 */  lh         $t7, 0x4($s0)
    /* 130DE0 80121E30 858C9DCA */  lh         $t4, %lo(D_80159DCA)($t4)
    /* 130DE4 80121E34 8FA3004C */  lw         $v1, 0x4C($sp)
    /* 130DE8 80121E38 3C188016 */  lui        $t8, %hi(D_80159DCC)
    /* 130DEC 80121E3C 87189DCC */  lh         $t8, %lo(D_80159DCC)($t8)
    /* 130DF0 80121E40 016C3821 */  addu       $a3, $t3, $t4
    /* 130DF4 80121E44 0006CC00 */  sll        $t9, $a2, 16
    /* 130DF8 80121E48 8FA80048 */  lw         $t0, 0x48($sp)
    /* 130DFC 80121E4C 00193403 */  sra        $a2, $t9, 16
    /* 130E00 80121E50 24650002 */  addiu      $a1, $v1, 0x2
    /* 130E04 80121E54 30AEFFFF */  andi       $t6, $a1, 0xFFFF
    /* 130E08 80121E58 00076C00 */  sll        $t5, $a3, 16
    /* 130E0C 80121E5C 240C0020 */  addiu      $t4, $zero, 0x20
    /* 130E10 80121E60 240B0032 */  addiu      $t3, $zero, 0x32
    /* 130E14 80121E64 240A003C */  addiu      $t2, $zero, 0x3C
    /* 130E18 80121E68 01F8C823 */  subu       $t9, $t7, $t8
    /* 130E1C 80121E6C AFB90010 */  sw         $t9, 0x10($sp)
    /* 130E20 80121E70 AFAA0020 */  sw         $t2, 0x20($sp)
    /* 130E24 80121E74 AFAB0024 */  sw         $t3, 0x24($sp)
    /* 130E28 80121E78 AFAC0028 */  sw         $t4, 0x28($sp)
    /* 130E2C 80121E7C 000D3C03 */  sra        $a3, $t5, 16
    /* 130E30 80121E80 01C02825 */  or         $a1, $t6, $zero
    /* 130E34 80121E84 AFA0002C */  sw         $zero, 0x2C($sp)
    /* 130E38 80121E88 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 130E3C 80121E8C AFA00018 */  sw         $zero, 0x18($sp)
    /* 130E40 80121E90 AFA00014 */  sw         $zero, 0x14($sp)
    /* 130E44 80121E94 2404000D */  addiu      $a0, $zero, 0xD
    /* 130E48 80121E98 0C04B5C0 */  jal        func_8012D700_13C6B0
    /* 130E4C 80121E9C AFA80030 */   sw        $t0, 0x30($sp)
  .L80121EA0_130E50:
    /* 130E50 80121EA0 8FBF0044 */  lw         $ra, 0x44($sp)
  .L80121EA4_130E54:
    /* 130E54 80121EA4 8FB00040 */  lw         $s0, 0x40($sp)
    /* 130E58 80121EA8 27BD0060 */  addiu      $sp, $sp, 0x60
    /* 130E5C 80121EAC 03E00008 */  jr         $ra
    /* 130E60 80121EB0 00000000 */   nop
endlabel func_80121A64_130A14
