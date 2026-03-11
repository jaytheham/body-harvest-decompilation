nonmatching func_800DABBC_E9B6C, 0x368

glabel func_800DABBC_E9B6C
    /* E9B6C 800DABBC 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* E9B70 800DABC0 AFB00018 */  sw         $s0, 0x18($sp)
    /* E9B74 800DABC4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* E9B78 800DABC8 00008025 */  or         $s0, $zero, $zero
  .L800DABCC_E9B7C:
    /* E9B7C 800DABCC 00107080 */  sll        $t6, $s0, 2
    /* E9B80 800DABD0 01D07023 */  subu       $t6, $t6, $s0
    /* E9B84 800DABD4 000E7080 */  sll        $t6, $t6, 2
    /* E9B88 800DABD8 3C058015 */  lui        $a1, %hi(D_80154088)
    /* E9B8C 800DABDC 00AE2821 */  addu       $a1, $a1, $t6
    /* E9B90 800DABE0 90A54088 */  lbu        $a1, %lo(D_80154088)($a1)
    /* E9B94 800DABE4 28A1000A */  slti       $at, $a1, 0xA
    /* E9B98 800DABE8 14200006 */  bnez       $at, .L800DAC04_E9BB4
    /* E9B9C 800DABEC 00A01025 */   or        $v0, $a1, $zero
    /* E9BA0 800DABF0 240100FA */  addiu      $at, $zero, 0xFA
    /* E9BA4 800DABF4 50410042 */  beql       $v0, $at, .L800DAD00_E9CB0
    /* E9BA8 800DABF8 26100001 */   addiu     $s0, $s0, 0x1
    /* E9BAC 800DABFC 10000032 */  b          .L800DACC8_E9C78
    /* E9BB0 800DAC00 28A1000A */   slti      $at, $a1, 0xA
  .L800DAC04_E9BB4:
    /* E9BB4 800DAC04 2C41000A */  sltiu      $at, $v0, 0xA
    /* E9BB8 800DAC08 1020002E */  beqz       $at, .L800DACC4_E9C74
    /* E9BBC 800DAC0C 00027880 */   sll       $t7, $v0, 2
    /* E9BC0 800DAC10 3C018014 */  lui        $at, %hi(jtbl_80144030_overlay_gameplay_outside)
    /* E9BC4 800DAC14 002F0821 */  addu       $at, $at, $t7
    /* E9BC8 800DAC18 8C2F4030 */  lw         $t7, %lo(jtbl_80144030_overlay_gameplay_outside)($at)
    /* E9BCC 800DAC1C 01E00008 */  jr         $t7
    /* E9BD0 800DAC20 00000000 */   nop
    /* E9BD4 800DAC24 0C031625 */  jal        func_800C5894_D4844
    /* E9BD8 800DAC28 320400FF */   andi      $a0, $s0, 0xFF
    /* E9BDC 800DAC2C 10000034 */  b          .L800DAD00_E9CB0
    /* E9BE0 800DAC30 26100001 */   addiu     $s0, $s0, 0x1
    /* E9BE4 800DAC34 0C0308BB */  jal        func_800C22EC_D129C
    /* E9BE8 800DAC38 320400FF */   andi      $a0, $s0, 0xFF
    /* E9BEC 800DAC3C 10000030 */  b          .L800DAD00_E9CB0
    /* E9BF0 800DAC40 26100001 */   addiu     $s0, $s0, 0x1
    /* E9BF4 800DAC44 0C030BB9 */  jal        func_800C2EE4_D1E94
    /* E9BF8 800DAC48 320400FF */   andi      $a0, $s0, 0xFF
    /* E9BFC 800DAC4C 1000002C */  b          .L800DAD00_E9CB0
    /* E9C00 800DAC50 26100001 */   addiu     $s0, $s0, 0x1
    /* E9C04 800DAC54 0C0323D7 */  jal        func_800C8F5C_D7F0C
    /* E9C08 800DAC58 320400FF */   andi      $a0, $s0, 0xFF
    /* E9C0C 800DAC5C 10000028 */  b          .L800DAD00_E9CB0
    /* E9C10 800DAC60 26100001 */   addiu     $s0, $s0, 0x1
    /* E9C14 800DAC64 0C032A12 */  jal        func_800CA848_D97F8
    /* E9C18 800DAC68 320400FF */   andi      $a0, $s0, 0xFF
    /* E9C1C 800DAC6C 10000024 */  b          .L800DAD00_E9CB0
    /* E9C20 800DAC70 26100001 */   addiu     $s0, $s0, 0x1
    /* E9C24 800DAC74 0C03350B */  jal        func_800CD42C_DC3DC
    /* E9C28 800DAC78 320400FF */   andi      $a0, $s0, 0xFF
    /* E9C2C 800DAC7C 10000020 */  b          .L800DAD00_E9CB0
    /* E9C30 800DAC80 26100001 */   addiu     $s0, $s0, 0x1
    /* E9C34 800DAC84 0C033870 */  jal        func_800CE1C0_DD170
    /* E9C38 800DAC88 320400FF */   andi      $a0, $s0, 0xFF
    /* E9C3C 800DAC8C 1000001C */  b          .L800DAD00_E9CB0
    /* E9C40 800DAC90 26100001 */   addiu     $s0, $s0, 0x1
    /* E9C44 800DAC94 0C0346A5 */  jal        func_800D1A94_E0A44
    /* E9C48 800DAC98 320400FF */   andi      $a0, $s0, 0xFF
    /* E9C4C 800DAC9C 10000018 */  b          .L800DAD00_E9CB0
    /* E9C50 800DACA0 26100001 */   addiu     $s0, $s0, 0x1
    /* E9C54 800DACA4 0C035850 */  jal        func_800D6140_E50F0
    /* E9C58 800DACA8 320400FF */   andi      $a0, $s0, 0xFF
    /* E9C5C 800DACAC 10000014 */  b          .L800DAD00_E9CB0
    /* E9C60 800DACB0 26100001 */   addiu     $s0, $s0, 0x1
    /* E9C64 800DACB4 0C035BAB */  jal        func_800D6EAC_E5E5C
    /* E9C68 800DACB8 320400FF */   andi      $a0, $s0, 0xFF
    /* E9C6C 800DACBC 10000010 */  b          .L800DAD00_E9CB0
    /* E9C70 800DACC0 26100001 */   addiu     $s0, $s0, 0x1
  .L800DACC4_E9C74:
    /* E9C74 800DACC4 28A1000A */  slti       $at, $a1, 0xA
  .L800DACC8_E9C78:
    /* E9C78 800DACC8 14200003 */  bnez       $at, .L800DACD8_E9C88
    /* E9C7C 800DACCC 00001025 */   or        $v0, $zero, $zero
    /* E9C80 800DACD0 10000001 */  b          .L800DACD8_E9C88
    /* E9C84 800DACD4 24020001 */   addiu     $v0, $zero, 0x1
  .L800DACD8_E9C88:
    /* E9C88 800DACD8 10400006 */  beqz       $v0, .L800DACF4_E9CA4
    /* E9C8C 800DACDC 3C048014 */   lui       $a0, %hi(D_80143A94)
    /* E9C90 800DACE0 3C048014 */  lui        $a0, %hi(D_80143A50)
    /* E9C94 800DACE4 0C00731B */  jal        osSyncPrintf
    /* E9C98 800DACE8 24843A50 */   addiu     $a0, $a0, %lo(D_80143A50)
    /* E9C9C 800DACEC 10000004 */  b          .L800DAD00_E9CB0
    /* E9CA0 800DACF0 26100001 */   addiu     $s0, $s0, 0x1
  .L800DACF4_E9CA4:
    /* E9CA4 800DACF4 0C00731B */  jal        osSyncPrintf
    /* E9CA8 800DACF8 24843A94 */   addiu     $a0, $a0, %lo(D_80143A94)
    /* E9CAC 800DACFC 26100001 */  addiu      $s0, $s0, 0x1
  .L800DAD00_E9CB0:
    /* E9CB0 800DAD00 321800FF */  andi       $t8, $s0, 0xFF
    /* E9CB4 800DAD04 2B01001E */  slti       $at, $t8, 0x1E
    /* E9CB8 800DAD08 1420FFB0 */  bnez       $at, .L800DABCC_E9B7C
    /* E9CBC 800DAD0C 03008025 */   or        $s0, $t8, $zero
    /* E9CC0 800DAD10 00008025 */  or         $s0, $zero, $zero
  .L800DAD14_E9CC4:
    /* E9CC4 800DAD14 0010C880 */  sll        $t9, $s0, 2
    /* E9CC8 800DAD18 0330C823 */  subu       $t9, $t9, $s0
    /* E9CCC 800DAD1C 0019C880 */  sll        $t9, $t9, 2
    /* E9CD0 800DAD20 3C028015 */  lui        $v0, %hi(D_801541F8)
    /* E9CD4 800DAD24 00591021 */  addu       $v0, $v0, $t9
    /* E9CD8 800DAD28 904241F8 */  lbu        $v0, %lo(D_801541F8)($v0)
    /* E9CDC 800DAD2C 28410020 */  slti       $at, $v0, 0x20
    /* E9CE0 800DAD30 14200006 */  bnez       $at, .L800DAD4C_E9CFC
    /* E9CE4 800DAD34 2448FFF6 */   addiu     $t0, $v0, -0xA
    /* E9CE8 800DAD38 240100FA */  addiu      $at, $zero, 0xFA
    /* E9CEC 800DAD3C 50410070 */  beql       $v0, $at, .L800DAF00_E9EB0
    /* E9CF0 800DAD40 26100001 */   addiu     $s0, $s0, 0x1
    /* E9CF4 800DAD44 10000062 */  b          .L800DAED0_E9E80
    /* E9CF8 800DAD48 2A01000A */   slti      $at, $s0, 0xA
  .L800DAD4C_E9CFC:
    /* E9CFC 800DAD4C 2D010016 */  sltiu      $at, $t0, 0x16
    /* E9D00 800DAD50 1020005E */  beqz       $at, .L800DAECC_E9E7C
    /* E9D04 800DAD54 00084080 */   sll       $t0, $t0, 2
    /* E9D08 800DAD58 3C018014 */  lui        $at, %hi(jtbl_80144058_overlay_gameplay_outside)
    /* E9D0C 800DAD5C 00280821 */  addu       $at, $at, $t0
    /* E9D10 800DAD60 8C284058 */  lw         $t0, %lo(jtbl_80144058_overlay_gameplay_outside)($at)
    /* E9D14 800DAD64 01000008 */  jr         $t0
    /* E9D18 800DAD68 00000000 */   nop
    /* E9D1C 800DAD6C 0C030F8B */  jal        func_800C3E2C_D2DDC
    /* E9D20 800DAD70 00000000 */   nop
    /* E9D24 800DAD74 10000062 */  b          .L800DAF00_E9EB0
    /* E9D28 800DAD78 26100001 */   addiu     $s0, $s0, 0x1
    /* E9D2C 800DAD7C 0C0312A8 */  jal        func_800C4AA0_D3A50
    /* E9D30 800DAD80 00000000 */   nop
    /* E9D34 800DAD84 1000005E */  b          .L800DAF00_E9EB0
    /* E9D38 800DAD88 26100001 */   addiu     $s0, $s0, 0x1
    /* E9D3C 800DAD8C 0C031956 */  jal        func_800C6558_D5508
    /* E9D40 800DAD90 00000000 */   nop
    /* E9D44 800DAD94 1000005A */  b          .L800DAF00_E9EB0
    /* E9D48 800DAD98 26100001 */   addiu     $s0, $s0, 0x1
    /* E9D4C 800DAD9C 0C0320A5 */  jal        func_800C8294_D7244
    /* E9D50 800DADA0 00000000 */   nop
    /* E9D54 800DADA4 10000056 */  b          .L800DAF00_E9EB0
    /* E9D58 800DADA8 26100001 */   addiu     $s0, $s0, 0x1
    /* E9D5C 800DADAC 0C03259A */  jal        func_800C9668_D8618
    /* E9D60 800DADB0 00000000 */   nop
    /* E9D64 800DADB4 10000052 */  b          .L800DAF00_E9EB0
    /* E9D68 800DADB8 26100001 */   addiu     $s0, $s0, 0x1
    /* E9D6C 800DADBC 0C032CE5 */  jal        func_800CB394_DA344
    /* E9D70 800DADC0 00000000 */   nop
    /* E9D74 800DADC4 1000004E */  b          .L800DAF00_E9EB0
    /* E9D78 800DADC8 26100001 */   addiu     $s0, $s0, 0x1
    /* E9D7C 800DADCC 0C032FA6 */  jal        func_800CBE98_DAE48
    /* E9D80 800DADD0 00000000 */   nop
    /* E9D84 800DADD4 1000004A */  b          .L800DAF00_E9EB0
    /* E9D88 800DADD8 26100001 */   addiu     $s0, $s0, 0x1
    /* E9D8C 800DADDC 0C0332D8 */  jal        func_800CCB60_DBB10
    /* E9D90 800DADE0 00000000 */   nop
    /* E9D94 800DADE4 10000046 */  b          .L800DAF00_E9EB0
    /* E9D98 800DADE8 26100001 */   addiu     $s0, $s0, 0x1
    /* E9D9C 800DADEC 0C0336FD */  jal        func_800CDBF4_DCBA4
    /* E9DA0 800DADF0 00000000 */   nop
    /* E9DA4 800DADF4 10000042 */  b          .L800DAF00_E9EB0
    /* E9DA8 800DADF8 26100001 */   addiu     $s0, $s0, 0x1
    /* E9DAC 800DADFC 0C033C1C */  jal        func_800CF070_DE020
    /* E9DB0 800DAE00 00000000 */   nop
    /* E9DB4 800DAE04 1000003E */  b          .L800DAF00_E9EB0
    /* E9DB8 800DAE08 26100001 */   addiu     $s0, $s0, 0x1
    /* E9DBC 800DAE0C 0C033E52 */  jal        func_800CF948_DE8F8
    /* E9DC0 800DAE10 00000000 */   nop
    /* E9DC4 800DAE14 1000003A */  b          .L800DAF00_E9EB0
    /* E9DC8 800DAE18 26100001 */   addiu     $s0, $s0, 0x1
    /* E9DCC 800DAE1C 0C034300 */  jal        func_800D0C00_DFBB0
    /* E9DD0 800DAE20 00000000 */   nop
    /* E9DD4 800DAE24 10000036 */  b          .L800DAF00_E9EB0
    /* E9DD8 800DAE28 26100001 */   addiu     $s0, $s0, 0x1
    /* E9DDC 800DAE2C 0C034974 */  jal        func_800D25D0_E1580
    /* E9DE0 800DAE30 00000000 */   nop
    /* E9DE4 800DAE34 10000032 */  b          .L800DAF00_E9EB0
    /* E9DE8 800DAE38 26100001 */   addiu     $s0, $s0, 0x1
    /* E9DEC 800DAE3C 0C034DBB */  jal        func_800D36EC_E269C
    /* E9DF0 800DAE40 00000000 */   nop
    /* E9DF4 800DAE44 1000002E */  b          .L800DAF00_E9EB0
    /* E9DF8 800DAE48 26100001 */   addiu     $s0, $s0, 0x1
    /* E9DFC 800DAE4C 0C034F50 */  jal        func_800D3D40_E2CF0
    /* E9E00 800DAE50 00000000 */   nop
    /* E9E04 800DAE54 1000002A */  b          .L800DAF00_E9EB0
    /* E9E08 800DAE58 26100001 */   addiu     $s0, $s0, 0x1
    /* E9E0C 800DAE5C 0C0352D1 */  jal        func_800D4B44_E3AF4
    /* E9E10 800DAE60 00000000 */   nop
    /* E9E14 800DAE64 10000026 */  b          .L800DAF00_E9EB0
    /* E9E18 800DAE68 26100001 */   addiu     $s0, $s0, 0x1
    /* E9E1C 800DAE6C 0C0355A1 */  jal        func_800D5684_E4634
    /* E9E20 800DAE70 00000000 */   nop
    /* E9E24 800DAE74 10000022 */  b          .L800DAF00_E9EB0
    /* E9E28 800DAE78 26100001 */   addiu     $s0, $s0, 0x1
    /* E9E2C 800DAE7C 0C035DE4 */  jal        func_800D7790_E6740
    /* E9E30 800DAE80 00000000 */   nop
    /* E9E34 800DAE84 1000001E */  b          .L800DAF00_E9EB0
    /* E9E38 800DAE88 26100001 */   addiu     $s0, $s0, 0x1
    /* E9E3C 800DAE8C 0C03602D */  jal        func_800D80B4_E7064
    /* E9E40 800DAE90 00000000 */   nop
    /* E9E44 800DAE94 1000001A */  b          .L800DAF00_E9EB0
    /* E9E48 800DAE98 26100001 */   addiu     $s0, $s0, 0x1
    /* E9E4C 800DAE9C 0C036429 */  jal        func_800D90A4_E8054
    /* E9E50 800DAEA0 00000000 */   nop
    /* E9E54 800DAEA4 10000016 */  b          .L800DAF00_E9EB0
    /* E9E58 800DAEA8 26100001 */   addiu     $s0, $s0, 0x1
    /* E9E5C 800DAEAC 0C036574 */  jal        func_800D95D0_E8580
    /* E9E60 800DAEB0 00000000 */   nop
    /* E9E64 800DAEB4 10000012 */  b          .L800DAF00_E9EB0
    /* E9E68 800DAEB8 26100001 */   addiu     $s0, $s0, 0x1
    /* E9E6C 800DAEBC 0C0366D5 */  jal        func_800D9B54_E8B04
    /* E9E70 800DAEC0 00000000 */   nop
    /* E9E74 800DAEC4 1000000E */  b          .L800DAF00_E9EB0
    /* E9E78 800DAEC8 26100001 */   addiu     $s0, $s0, 0x1
  .L800DAECC_E9E7C:
    /* E9E7C 800DAECC 2A01000A */  slti       $at, $s0, 0xA
  .L800DAED0_E9E80:
    /* E9E80 800DAED0 10200007 */  beqz       $at, .L800DAEF0_E9EA0
    /* E9E84 800DAED4 02002825 */   or        $a1, $s0, $zero
    /* E9E88 800DAED8 04A00005 */  bltz       $a1, .L800DAEF0_E9EA0
    /* E9E8C 800DAEDC 3C048014 */   lui       $a0, %hi(D_80143AD4)
    /* E9E90 800DAEE0 0C00731B */  jal        osSyncPrintf
    /* E9E94 800DAEE4 24843AD4 */   addiu     $a0, $a0, %lo(D_80143AD4)
    /* E9E98 800DAEE8 10000005 */  b          .L800DAF00_E9EB0
    /* E9E9C 800DAEEC 26100001 */   addiu     $s0, $s0, 0x1
  .L800DAEF0_E9EA0:
    /* E9EA0 800DAEF0 3C048014 */  lui        $a0, %hi(D_80143B18)
    /* E9EA4 800DAEF4 0C00731B */  jal        osSyncPrintf
    /* E9EA8 800DAEF8 24843B18 */   addiu     $a0, $a0, %lo(D_80143B18)
    /* E9EAC 800DAEFC 26100001 */  addiu      $s0, $s0, 0x1
  .L800DAF00_E9EB0:
    /* E9EB0 800DAF00 320900FF */  andi       $t1, $s0, 0xFF
    /* E9EB4 800DAF04 29210016 */  slti       $at, $t1, 0x16
    /* E9EB8 800DAF08 1420FF82 */  bnez       $at, .L800DAD14_E9CC4
    /* E9EBC 800DAF0C 01208025 */   or        $s0, $t1, $zero
    /* E9EC0 800DAF10 8FBF001C */  lw         $ra, 0x1C($sp)
    /* E9EC4 800DAF14 8FB00018 */  lw         $s0, 0x18($sp)
    /* E9EC8 800DAF18 27BD0020 */  addiu      $sp, $sp, 0x20
    /* E9ECC 800DAF1C 03E00008 */  jr         $ra
    /* E9ED0 800DAF20 00000000 */   nop
endlabel func_800DABBC_E9B6C
