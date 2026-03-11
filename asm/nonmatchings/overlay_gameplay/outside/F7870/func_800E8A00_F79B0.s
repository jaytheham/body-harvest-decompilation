nonmatching func_800E8A00_F79B0, 0xAB8

glabel func_800E8A00_F79B0
    /* F79B0 800E8A00 27BDFED0 */  addiu      $sp, $sp, -0x130
    /* F79B4 800E8A04 AFB1002C */  sw         $s1, 0x2C($sp)
    /* F79B8 800E8A08 3C118005 */  lui        $s1, %hi(D_80052B34)
    /* F79BC 800E8A0C AFB00028 */  sw         $s0, 0x28($sp)
    /* F79C0 800E8A10 26312B34 */  addiu      $s1, $s1, %lo(D_80052B34)
    /* F79C4 800E8A14 3C108005 */  lui        $s0, %hi(D_80052AD8)
    /* F79C8 800E8A18 8E290000 */  lw         $t1, 0x0($s1)
    /* F79CC 800E8A1C 8E102AD8 */  lw         $s0, %lo(D_80052AD8)($s0)
    /* F79D0 800E8A20 AFBF004C */  sw         $ra, 0x4C($sp)
    /* F79D4 800E8A24 AFBE0048 */  sw         $fp, 0x48($sp)
    /* F79D8 800E8A28 AFB70044 */  sw         $s7, 0x44($sp)
    /* F79DC 800E8A2C AFB60040 */  sw         $s6, 0x40($sp)
    /* F79E0 800E8A30 AFB5003C */  sw         $s5, 0x3C($sp)
    /* F79E4 800E8A34 AFB40038 */  sw         $s4, 0x38($sp)
    /* F79E8 800E8A38 AFB30034 */  sw         $s3, 0x34($sp)
    /* F79EC 800E8A3C AFB20030 */  sw         $s2, 0x30($sp)
    /* F79F0 800E8A40 912E001A */  lbu        $t6, 0x1A($t1)
    /* F79F4 800E8A44 2610FFFB */  addiu      $s0, $s0, -0x5
    /* F79F8 800E8A48 2A010014 */  slti       $at, $s0, 0x14
    /* F79FC 800E8A4C 0000B825 */  or         $s7, $zero, $zero
    /* F7A00 800E8A50 10200027 */  beqz       $at, .L800E8AF0_F7AA0
    /* F7A04 800E8A54 AFAE0120 */   sw        $t6, 0x120($sp)
    /* F7A08 800E8A58 1A000025 */  blez       $s0, .L800E8AF0_F7AA0
    /* F7A0C 800E8A5C 001078C0 */   sll       $t7, $s0, 3
    /* F7A10 800E8A60 01F07823 */  subu       $t7, $t7, $s0
    /* F7A14 800E8A64 3C188025 */  lui        $t8, %hi(vehicleSpecs)
    /* F7A18 800E8A68 27187A00 */  addiu      $t8, $t8, %lo(vehicleSpecs)
    /* F7A1C 800E8A6C 000F7900 */  sll        $t7, $t7, 4
    /* F7A20 800E8A70 01F81021 */  addu       $v0, $t7, $t8
    /* F7A24 800E8A74 8C590000 */  lw         $t9, 0x0($v0)
    /* F7A28 800E8A78 24010013 */  addiu      $at, $zero, 0x13
    /* F7A2C 800E8A7C 1320001C */  beqz       $t9, .L800E8AF0_F7AA0
    /* F7A30 800E8A80 00000000 */   nop
    /* F7A34 800E8A84 1201001A */  beq        $s0, $at, .L800E8AF0_F7AA0
    /* F7A38 800E8A88 3C148015 */   lui       $s4, %hi(D_801575A4)
    /* F7A3C 800E8A8C 3C0F802C */  lui        $t7, %hi(D_802C4080)
    /* F7A40 800E8A90 25EF4080 */  addiu      $t7, $t7, %lo(D_802C4080)
    /* F7A44 800E8A94 00107280 */  sll        $t6, $s0, 10
    /* F7A48 800E8A98 269475A4 */  addiu      $s4, $s4, %lo(D_801575A4)
    /* F7A4C 800E8A9C 01CFC021 */  addu       $t8, $t6, $t7
    /* F7A50 800E8AA0 AE980000 */  sw         $t8, 0x0($s4)
    /* F7A54 800E8AA4 A5200008 */  sh         $zero, 0x8($t1)
    /* F7A58 800E8AA8 8E390000 */  lw         $t9, 0x0($s1)
    /* F7A5C 800E8AAC 3C068003 */  lui        $a2, %hi(D_800344B4)
    /* F7A60 800E8AB0 3C048014 */  lui        $a0, %hi(D_8014429C)
    /* F7A64 800E8AB4 A720000A */  sh         $zero, 0xA($t9)
    /* F7A68 800E8AB8 8E2E0000 */  lw         $t6, 0x0($s1)
    /* F7A6C 800E8ABC 2484429C */  addiu      $a0, $a0, %lo(D_8014429C)
    /* F7A70 800E8AC0 A5C00006 */  sh         $zero, 0x6($t6)
    /* F7A74 800E8AC4 8E2F0000 */  lw         $t7, 0x0($s1)
    /* F7A78 800E8AC8 A1F0001A */  sb         $s0, 0x1A($t7)
    /* F7A7C 800E8ACC 8C450018 */  lw         $a1, 0x18($v0)
    /* F7A80 800E8AD0 0005C0C0 */  sll        $t8, $a1, 3
    /* F7A84 800E8AD4 00D83021 */  addu       $a2, $a2, $t8
    /* F7A88 800E8AD8 0C00731B */  jal        osSyncPrintf
    /* F7A8C 800E8ADC 8CC644B4 */   lw        $a2, %lo(D_800344B4)($a2)
    /* F7A90 800E8AE0 8E390000 */  lw         $t9, 0x0($s1)
    /* F7A94 800E8AE4 932C001A */  lbu        $t4, 0x1A($t9)
    /* F7A98 800E8AE8 1000000C */  b          .L800E8B1C_F7ACC
    /* F7A9C 800E8AEC AFB0010C */   sw        $s0, 0x10C($sp)
  .L800E8AF0_F7AA0:
    /* F7AA0 800E8AF0 3C148015 */  lui        $s4, %hi(D_801575A4)
    /* F7AA4 800E8AF4 3C0E802C */  lui        $t6, %hi(D_802C4080)
    /* F7AA8 800E8AF8 269475A4 */  addiu      $s4, $s4, %lo(D_801575A4)
    /* F7AAC 800E8AFC 25CE4080 */  addiu      $t6, $t6, %lo(D_802C4080)
    /* F7AB0 800E8B00 AE8E0000 */  sw         $t6, 0x0($s4)
    /* F7AB4 800E8B04 912C001A */  lbu        $t4, 0x1A($t1)
    /* F7AB8 800E8B08 24010013 */  addiu      $at, $zero, 0x13
    /* F7ABC 800E8B0C 5180025F */  beql       $t4, $zero, .L800E948C_F843C
    /* F7AC0 800E8B10 8FBF004C */   lw        $ra, 0x4C($sp)
    /* F7AC4 800E8B14 1181025C */  beq        $t4, $at, .L800E9488_F8438
    /* F7AC8 800E8B18 AFB0010C */   sw        $s0, 0x10C($sp)
  .L800E8B1C_F7ACC:
    /* F7ACC 800E8B1C 3C128006 */  lui        $s2, %hi(D_8005BB2C)
    /* F7AD0 800E8B20 000C78C0 */  sll        $t7, $t4, 3
    /* F7AD4 800E8B24 2652BB2C */  addiu      $s2, $s2, %lo(D_8005BB2C)
    /* F7AD8 800E8B28 01EC7823 */  subu       $t7, $t7, $t4
    /* F7ADC 800E8B2C 3C188025 */  lui        $t8, %hi(vehicleSpecs)
    /* F7AE0 800E8B30 8E500000 */  lw         $s0, 0x0($s2)
    /* F7AE4 800E8B34 27187A00 */  addiu      $t8, $t8, %lo(vehicleSpecs)
    /* F7AE8 800E8B38 000F7900 */  sll        $t7, $t7, 4
    /* F7AEC 800E8B3C 01F8C821 */  addu       $t9, $t7, $t8
    /* F7AF0 800E8B40 260E0008 */  addiu      $t6, $s0, 0x8
    /* F7AF4 800E8B44 AFB9012C */  sw         $t9, 0x12C($sp)
    /* F7AF8 800E8B48 AE4E0000 */  sw         $t6, 0x0($s2)
    /* F7AFC 800E8B4C 3C180014 */  lui        $t8, %hi(D_13E440)
    /* F7B00 800E8B50 3C0F0380 */  lui        $t7, (0x3800010 >> 16)
    /* F7B04 800E8B54 35EF0010 */  ori        $t7, $t7, (0x3800010 & 0xFFFF)
    /* F7B08 800E8B58 2718E440 */  addiu      $t8, $t8, %lo(D_13E440)
    /* F7B0C 800E8B5C AE180004 */  sw         $t8, 0x4($s0)
    /* F7B10 800E8B60 AE0F0000 */  sw         $t7, 0x0($s0)
    /* F7B14 800E8B64 8E500000 */  lw         $s0, 0x0($s2)
    /* F7B18 800E8B68 240FFFFF */  addiu      $t7, $zero, -0x1
    /* F7B1C 800E8B6C 3C0EB600 */  lui        $t6, (0xB6000000 >> 16)
    /* F7B20 800E8B70 26190008 */  addiu      $t9, $s0, 0x8
    /* F7B24 800E8B74 AE590000 */  sw         $t9, 0x0($s2)
    /* F7B28 800E8B78 AE0F0004 */  sw         $t7, 0x4($s0)
    /* F7B2C 800E8B7C AE0E0000 */  sw         $t6, 0x0($s0)
    /* F7B30 800E8B80 8E500000 */  lw         $s0, 0x0($s2)
    /* F7B34 800E8B84 240E0204 */  addiu      $t6, $zero, 0x204
    /* F7B38 800E8B88 3C19B700 */  lui        $t9, (0xB7000000 >> 16)
    /* F7B3C 800E8B8C 26180008 */  addiu      $t8, $s0, 0x8
    /* F7B40 800E8B90 AE580000 */  sw         $t8, 0x0($s2)
    /* F7B44 800E8B94 AE0E0004 */  sw         $t6, 0x4($s0)
    /* F7B48 800E8B98 AE190000 */  sw         $t9, 0x0($s0)
    /* F7B4C 800E8B9C 8E500000 */  lw         $s0, 0x0($s2)
    /* F7B50 800E8BA0 3C0D1FFF */  lui        $t5, (0x1FFFFFFF >> 16)
    /* F7B54 800E8BA4 3C188003 */  lui        $t8, %hi(D_80031260)
    /* F7B58 800E8BA8 260F0008 */  addiu      $t7, $s0, 0x8
    /* F7B5C 800E8BAC 35ADFFFF */  ori        $t5, $t5, (0x1FFFFFFF & 0xFFFF)
    /* F7B60 800E8BB0 AE4F0000 */  sw         $t7, 0x0($s2)
    /* F7B64 800E8BB4 27181260 */  addiu      $t8, $t8, %lo(D_80031260)
    /* F7B68 800E8BB8 3C110600 */  lui        $s1, (0x6000000 >> 16)
    /* F7B6C 800E8BBC 030DC824 */  and        $t9, $t8, $t5
    /* F7B70 800E8BC0 AE190004 */  sw         $t9, 0x4($s0)
    /* F7B74 800E8BC4 AE110000 */  sw         $s1, 0x0($s0)
    /* F7B78 800E8BC8 8E500000 */  lw         $s0, 0x0($s2)
    /* F7B7C 800E8BCC 3C180008 */  lui        $t8, (0x80080 >> 16)
    /* F7B80 800E8BD0 37180080 */  ori        $t8, $t8, (0x80080 & 0xFFFF)
    /* F7B84 800E8BD4 260E0008 */  addiu      $t6, $s0, 0x8
    /* F7B88 800E8BD8 AE4E0000 */  sw         $t6, 0x0($s2)
    /* F7B8C 800E8BDC 3C0FED00 */  lui        $t7, (0xED000000 >> 16)
    /* F7B90 800E8BE0 AE0F0000 */  sw         $t7, 0x0($s0)
    /* F7B94 800E8BE4 AE180004 */  sw         $t8, 0x4($s0)
    /* F7B98 800E8BE8 8E500000 */  lw         $s0, 0x0($s2)
    /* F7B9C 800E8BEC 3C0EBC00 */  lui        $t6, (0xBC000404 >> 16)
    /* F7BA0 800E8BF0 241F0001 */  addiu      $ra, $zero, 0x1
    /* F7BA4 800E8BF4 26190008 */  addiu      $t9, $s0, 0x8
    /* F7BA8 800E8BF8 AE590000 */  sw         $t9, 0x0($s2)
    /* F7BAC 800E8BFC 35CE0404 */  ori        $t6, $t6, (0xBC000404 & 0xFFFF)
    /* F7BB0 800E8C00 AE0E0000 */  sw         $t6, 0x0($s0)
    /* F7BB4 800E8C04 AE1F0004 */  sw         $ra, 0x4($s0)
    /* F7BB8 800E8C08 8E500000 */  lw         $s0, 0x0($s2)
    /* F7BBC 800E8C0C 3C18BC00 */  lui        $t8, (0xBC000C04 >> 16)
    /* F7BC0 800E8C10 37180C04 */  ori        $t8, $t8, (0xBC000C04 & 0xFFFF)
    /* F7BC4 800E8C14 260F0008 */  addiu      $t7, $s0, 0x8
    /* F7BC8 800E8C18 AE4F0000 */  sw         $t7, 0x0($s2)
    /* F7BCC 800E8C1C AE1F0004 */  sw         $ra, 0x4($s0)
    /* F7BD0 800E8C20 AE180000 */  sw         $t8, 0x0($s0)
    /* F7BD4 800E8C24 8E500000 */  lw         $s0, 0x0($s2)
    /* F7BD8 800E8C28 3C0EBC00 */  lui        $t6, (0xBC001404 >> 16)
    /* F7BDC 800E8C2C 3413FFFF */  ori        $s3, $zero, 0xFFFF
    /* F7BE0 800E8C30 26190008 */  addiu      $t9, $s0, 0x8
    /* F7BE4 800E8C34 AE590000 */  sw         $t9, 0x0($s2)
    /* F7BE8 800E8C38 35CE1404 */  ori        $t6, $t6, (0xBC001404 & 0xFFFF)
    /* F7BEC 800E8C3C AE0E0000 */  sw         $t6, 0x0($s0)
    /* F7BF0 800E8C40 AE130004 */  sw         $s3, 0x4($s0)
    /* F7BF4 800E8C44 8E500000 */  lw         $s0, 0x0($s2)
    /* F7BF8 800E8C48 3C18BC00 */  lui        $t8, (0xBC001C04 >> 16)
    /* F7BFC 800E8C4C 37181C04 */  ori        $t8, $t8, (0xBC001C04 & 0xFFFF)
    /* F7C00 800E8C50 260F0008 */  addiu      $t7, $s0, 0x8
    /* F7C04 800E8C54 AE4F0000 */  sw         $t7, 0x0($s2)
    /* F7C08 800E8C58 AE130004 */  sw         $s3, 0x4($s0)
    /* F7C0C 800E8C5C AE180000 */  sw         $t8, 0x0($s0)
    /* F7C10 800E8C60 8E500000 */  lw         $s0, 0x0($s2)
    /* F7C14 800E8C64 3C0E8003 */  lui        $t6, %hi(D_800311A8)
    /* F7C18 800E8C68 25CE11A8 */  addiu      $t6, $t6, %lo(D_800311A8)
    /* F7C1C 800E8C6C 26190008 */  addiu      $t9, $s0, 0x8
    /* F7C20 800E8C70 AE590000 */  sw         $t9, 0x0($s2)
    /* F7C24 800E8C74 01CD7824 */  and        $t7, $t6, $t5
    /* F7C28 800E8C78 AE0F0004 */  sw         $t7, 0x4($s0)
    /* F7C2C 800E8C7C AE110000 */  sw         $s1, 0x0($s0)
    /* F7C30 800E8C80 8E500000 */  lw         $s0, 0x0($s2)
    /* F7C34 800E8C84 3C0CE700 */  lui        $t4, (0xE7000000 >> 16)
    /* F7C38 800E8C88 3C0DBA00 */  lui        $t5, (0xBA001402 >> 16)
    /* F7C3C 800E8C8C 26180008 */  addiu      $t8, $s0, 0x8
    /* F7C40 800E8C90 AE580000 */  sw         $t8, 0x0($s2)
    /* F7C44 800E8C94 AE000004 */  sw         $zero, 0x4($s0)
    /* F7C48 800E8C98 AE0C0000 */  sw         $t4, 0x0($s0)
    /* F7C4C 800E8C9C 8E500000 */  lw         $s0, 0x0($s2)
    /* F7C50 800E8CA0 35AD1402 */  ori        $t5, $t5, (0xBA001402 & 0xFFFF)
    /* F7C54 800E8CA4 3C0E0030 */  lui        $t6, (0x300000 >> 16)
    /* F7C58 800E8CA8 26190008 */  addiu      $t9, $s0, 0x8
    /* F7C5C 800E8CAC AE590000 */  sw         $t9, 0x0($s2)
    /* F7C60 800E8CB0 AE0E0004 */  sw         $t6, 0x4($s0)
    /* F7C64 800E8CB4 AE0D0000 */  sw         $t5, 0x0($s0)
    /* F7C68 800E8CB8 8E500000 */  lw         $s0, 0x0($s2)
    /* F7C6C 800E8CBC 3C18FF68 */  lui        $t8, (0xFF68001F >> 16)
    /* F7C70 800E8CC0 3718001F */  ori        $t8, $t8, (0xFF68001F & 0xFFFF)
    /* F7C74 800E8CC4 260F0008 */  addiu      $t7, $s0, 0x8
    /* F7C78 800E8CC8 AE4F0000 */  sw         $t7, 0x0($s2)
    /* F7C7C 800E8CCC AE180000 */  sw         $t8, 0x0($s0)
    /* F7C80 800E8CD0 8E990000 */  lw         $t9, 0x0($s4)
    /* F7C84 800E8CD4 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* F7C88 800E8CD8 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* F7C8C 800E8CDC 03217024 */  and        $t6, $t9, $at
    /* F7C90 800E8CE0 AE0E0004 */  sw         $t6, 0x4($s0)
    /* F7C94 800E8CE4 8E500000 */  lw         $s0, 0x0($s2)
    /* F7C98 800E8CE8 3C18F700 */  lui        $t8, (0xF7000000 >> 16)
    /* F7C9C 800E8CEC 3C048005 */  lui        $a0, %hi(D_80052B40)
    /* F7CA0 800E8CF0 260F0008 */  addiu      $t7, $s0, 0x8
    /* F7CA4 800E8CF4 AE4F0000 */  sw         $t7, 0x0($s2)
    /* F7CA8 800E8CF8 AE000004 */  sw         $zero, 0x4($s0)
    /* F7CAC 800E8CFC AE180000 */  sw         $t8, 0x0($s0)
    /* F7CB0 800E8D00 8E500000 */  lw         $s0, 0x0($s2)
    /* F7CB4 800E8D04 3C0FF607 */  lui        $t7, (0xF607C07C >> 16)
    /* F7CB8 800E8D08 35EFC07C */  ori        $t7, $t7, (0xF607C07C & 0xFFFF)
    /* F7CBC 800E8D0C 26190008 */  addiu      $t9, $s0, 0x8
    /* F7CC0 800E8D10 AE590000 */  sw         $t9, 0x0($s2)
    /* F7CC4 800E8D14 AE000004 */  sw         $zero, 0x4($s0)
    /* F7CC8 800E8D18 AE0C0000 */  sw         $t4, 0x0($s0)
    /* F7CCC 800E8D1C 8E500000 */  lw         $s0, 0x0($s2)
    /* F7CD0 800E8D20 24842B40 */  addiu      $a0, $a0, %lo(D_80052B40)
    /* F7CD4 800E8D24 3C098005 */  lui        $t1, %hi(D_80052B34)
    /* F7CD8 800E8D28 260E0008 */  addiu      $t6, $s0, 0x8
    /* F7CDC 800E8D2C AE4E0000 */  sw         $t6, 0x0($s2)
    /* F7CE0 800E8D30 AE000004 */  sw         $zero, 0x4($s0)
    /* F7CE4 800E8D34 AE0F0000 */  sw         $t7, 0x0($s0)
    /* F7CE8 800E8D38 8E500000 */  lw         $s0, 0x0($s2)
    /* F7CEC 800E8D3C 3C0FB900 */  lui        $t7, (0xB900031D >> 16)
    /* F7CF0 800E8D40 35EF031D */  ori        $t7, $t7, (0xB900031D & 0xFFFF)
    /* F7CF4 800E8D44 26180008 */  addiu      $t8, $s0, 0x8
    /* F7CF8 800E8D48 AE580000 */  sw         $t8, 0x0($s2)
    /* F7CFC 800E8D4C AE000004 */  sw         $zero, 0x4($s0)
    /* F7D00 800E8D50 AE0C0000 */  sw         $t4, 0x0($s0)
    /* F7D04 800E8D54 8E500000 */  lw         $s0, 0x0($s2)
    /* F7D08 800E8D58 3C180055 */  lui        $t8, (0x552048 >> 16)
    /* F7D0C 800E8D5C 37182048 */  ori        $t8, $t8, (0x552048 & 0xFFFF)
    /* F7D10 800E8D60 26190008 */  addiu      $t9, $s0, 0x8
    /* F7D14 800E8D64 AE590000 */  sw         $t9, 0x0($s2)
    /* F7D18 800E8D68 AE000004 */  sw         $zero, 0x4($s0)
    /* F7D1C 800E8D6C AE0D0000 */  sw         $t5, 0x0($s0)
    /* F7D20 800E8D70 8E500000 */  lw         $s0, 0x0($s2)
    /* F7D24 800E8D74 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* F7D28 800E8D78 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* F7D2C 800E8D7C 260E0008 */  addiu      $t6, $s0, 0x8
    /* F7D30 800E8D80 AE4E0000 */  sw         $t6, 0x0($s2)
    /* F7D34 800E8D84 AE180004 */  sw         $t8, 0x4($s0)
    /* F7D38 800E8D88 AE0F0000 */  sw         $t7, 0x0($s0)
    /* F7D3C 800E8D8C 8E500000 */  lw         $s0, 0x0($s2)
    /* F7D40 800E8D90 3C0FFFFD */  lui        $t7, (0xFFFDF6FB >> 16)
    /* F7D44 800E8D94 3C0EFCFF */  lui        $t6, (0xFCFFFFFF >> 16)
    /* F7D48 800E8D98 26190008 */  addiu      $t9, $s0, 0x8
    /* F7D4C 800E8D9C AE590000 */  sw         $t9, 0x0($s2)
    /* F7D50 800E8DA0 35CEFFFF */  ori        $t6, $t6, (0xFCFFFFFF & 0xFFFF)
    /* F7D54 800E8DA4 35EFF6FB */  ori        $t7, $t7, (0xFFFDF6FB & 0xFFFF)
    /* F7D58 800E8DA8 AE0F0004 */  sw         $t7, 0x4($s0)
    /* F7D5C 800E8DAC AE0E0000 */  sw         $t6, 0x0($s0)
    /* F7D60 800E8DB0 8E500000 */  lw         $s0, 0x0($s2)
    /* F7D64 800E8DB4 8FAA012C */  lw         $t2, 0x12C($sp)
    /* F7D68 800E8DB8 3C0E0003 */  lui        $t6, (0x30001 >> 16)
    /* F7D6C 800E8DBC 26180008 */  addiu      $t8, $s0, 0x8
    /* F7D70 800E8DC0 AE580000 */  sw         $t8, 0x0($s2)
    /* F7D74 800E8DC4 35CE0001 */  ori        $t6, $t6, (0x30001 & 0xFFFF)
    /* F7D78 800E8DC8 3C19B600 */  lui        $t9, (0xB6000000 >> 16)
    /* F7D7C 800E8DCC AE190000 */  sw         $t9, 0x0($s0)
    /* F7D80 800E8DD0 AE0E0004 */  sw         $t6, 0x4($s0)
    /* F7D84 800E8DD4 8E500000 */  lw         $s0, 0x0($s2)
    /* F7D88 800E8DD8 3C190909 */  lui        $t9, (0x90909FF >> 16)
    /* F7D8C 800E8DDC 373909FF */  ori        $t9, $t9, (0x90909FF & 0xFFFF)
    /* F7D90 800E8DE0 260F0008 */  addiu      $t7, $s0, 0x8
    /* F7D94 800E8DE4 AE4F0000 */  sw         $t7, 0x0($s2)
    /* F7D98 800E8DE8 3C18FA00 */  lui        $t8, (0xFA000000 >> 16)
    /* F7D9C 800E8DEC AE180000 */  sw         $t8, 0x0($s0)
    /* F7DA0 800E8DF0 AE190004 */  sw         $t9, 0x4($s0)
    /* F7DA4 800E8DF4 8E500000 */  lw         $s0, 0x0($s2)
    /* F7DA8 800E8DF8 3C188000 */  lui        $t8, (0x80008000 >> 16)
    /* F7DAC 800E8DFC 37188000 */  ori        $t8, $t8, (0x80008000 & 0xFFFF)
    /* F7DB0 800E8E00 260E0008 */  addiu      $t6, $s0, 0x8
    /* F7DB4 800E8E04 AE4E0000 */  sw         $t6, 0x0($s2)
    /* F7DB8 800E8E08 3C0FBB00 */  lui        $t7, (0xBB000000 >> 16)
    /* F7DBC 800E8E0C AE0F0000 */  sw         $t7, 0x0($s0)
    /* F7DC0 800E8E10 AE180004 */  sw         $t8, 0x4($s0)
    /* F7DC4 800E8E14 2419FD44 */  addiu      $t9, $zero, -0x2BC
    /* F7DC8 800E8E18 A4800000 */  sh         $zero, 0x0($a0)
    /* F7DCC 800E8E1C A4800002 */  sh         $zero, 0x2($a0)
    /* F7DD0 800E8E20 A4990004 */  sh         $t9, 0x4($a0)
    /* F7DD4 800E8E24 8D292B34 */  lw         $t1, %lo(D_80052B34)($t1)
    /* F7DD8 800E8E28 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* F7DDC 800E8E2C 44810800 */  mtc1       $at, $f1
    /* F7DE0 800E8E30 852E0008 */  lh         $t6, 0x8($t1)
    /* F7DE4 800E8E34 A4A00002 */  sh         $zero, 0x2($a1)
    /* F7DE8 800E8E38 3C068005 */  lui        $a2, %hi(D_80052B50)
    /* F7DEC 800E8E3C 000E7823 */  negu       $t7, $t6
    /* F7DF0 800E8E40 A4AF0000 */  sh         $t7, 0x0($a1)
    /* F7DF4 800E8E44 8538000A */  lh         $t8, 0xA($t1)
    /* F7DF8 800E8E48 3C158006 */  lui        $s5, %hi(D_8005BB38)
    /* F7DFC 800E8E4C 44800000 */  mtc1       $zero, $f0
    /* F7E00 800E8E50 27194000 */  addiu      $t9, $t8, 0x4000
    /* F7E04 800E8E54 A4B90004 */  sh         $t9, 0x4($a1)
    /* F7E08 800E8E58 914E006C */  lbu        $t6, 0x6C($t2)
    /* F7E0C 800E8E5C 91580065 */  lbu        $t8, 0x65($t2)
    /* F7E10 800E8E60 26B5BB38 */  addiu      $s5, $s5, %lo(D_8005BB38)
    /* F7E14 800E8E64 000E7840 */  sll        $t7, $t6, 1
    /* F7E18 800E8E68 448F2000 */  mtc1       $t7, $f4
    /* F7E1C 800E8E6C 44984000 */  mtc1       $t8, $f8
    /* F7E20 800E8E70 24C62B50 */  addiu      $a2, $a2, %lo(D_80052B50)
    /* F7E24 800E8E74 468021A0 */  cvt.s.w    $f6, $f4
    /* F7E28 800E8E78 07010005 */  bgez       $t8, .L800E8E90_F7E40
    /* F7E2C 800E8E7C 468042A0 */   cvt.s.w   $f10, $f8
    /* F7E30 800E8E80 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* F7E34 800E8E84 44818000 */  mtc1       $at, $f16
    /* F7E38 800E8E88 00000000 */  nop
    /* F7E3C 800E8E8C 46105280 */  add.s      $f10, $f10, $f16
  .L800E8E90_F7E40:
    /* F7E40 800E8E90 460A3480 */  add.s      $f18, $f6, $f10
    /* F7E44 800E8E94 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* F7E48 800E8E98 46009121 */  cvt.d.s    $f4, $f18
    /* F7E4C 800E8E9C 46240203 */  div.d      $f8, $f0, $f4
    /* F7E50 800E8EA0 4620440D */  trunc.w.d  $f16, $f8
    /* F7E54 800E8EA4 440E8000 */  mfc1       $t6, $f16
    /* F7E58 800E8EA8 00000000 */  nop
    /* F7E5C 800E8EAC A4CE0000 */  sh         $t6, 0x0($a2)
    /* F7E60 800E8EB0 914F006D */  lbu        $t7, 0x6D($t2)
    /* F7E64 800E8EB4 91590065 */  lbu        $t9, 0x65($t2)
    /* F7E68 800E8EB8 000FC040 */  sll        $t8, $t7, 1
    /* F7E6C 800E8EBC 44983000 */  mtc1       $t8, $f6
    /* F7E70 800E8EC0 44999000 */  mtc1       $t9, $f18
    /* F7E74 800E8EC4 468032A0 */  cvt.s.w    $f10, $f6
    /* F7E78 800E8EC8 07210004 */  bgez       $t9, .L800E8EDC_F7E8C
    /* F7E7C 800E8ECC 46809120 */   cvt.s.w   $f4, $f18
    /* F7E80 800E8ED0 44814000 */  mtc1       $at, $f8
    /* F7E84 800E8ED4 00000000 */  nop
    /* F7E88 800E8ED8 46082100 */  add.s      $f4, $f4, $f8
  .L800E8EDC_F7E8C:
    /* F7E8C 800E8EDC 46045400 */  add.s      $f16, $f10, $f4
    /* F7E90 800E8EE0 84D90000 */  lh         $t9, 0x0($a2)
    /* F7E94 800E8EE4 8EA70000 */  lw         $a3, 0x0($s5)
    /* F7E98 800E8EE8 460081A1 */  cvt.d.s    $f6, $f16
    /* F7E9C 800E8EEC 46260483 */  div.d      $f18, $f0, $f6
    /* F7EA0 800E8EF0 4620920D */  trunc.w.d  $f8, $f18
    /* F7EA4 800E8EF4 440F4000 */  mfc1       $t7, $f8
    /* F7EA8 800E8EF8 00000000 */  nop
    /* F7EAC 800E8EFC A4CF0004 */  sh         $t7, 0x4($a2)
    /* F7EB0 800E8F00 84D80004 */  lh         $t8, 0x4($a2)
    /* F7EB4 800E8F04 03197021 */  addu       $t6, $t8, $t9
    /* F7EB8 800E8F08 000E7843 */  sra        $t7, $t6, 1
    /* F7EBC 800E8F0C 000FC023 */  negu       $t8, $t7
    /* F7EC0 800E8F10 0C000E74 */  jal        func_800039D0_45D0
    /* F7EC4 800E8F14 A4D80002 */   sh        $t8, 0x2($a2)
    /* F7EC8 800E8F18 8E500000 */  lw         $s0, 0x0($s2)
    /* F7ECC 800E8F1C 3C0E0106 */  lui        $t6, (0x1060040 >> 16)
    /* F7ED0 800E8F20 35CE0040 */  ori        $t6, $t6, (0x1060040 & 0xFFFF)
    /* F7ED4 800E8F24 26190008 */  addiu      $t9, $s0, 0x8
    /* F7ED8 800E8F28 AE590000 */  sw         $t9, 0x0($s2)
    /* F7EDC 800E8F2C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* F7EE0 800E8F30 AE0E0000 */  sw         $t6, 0x0($s0)
    /* F7EE4 800E8F34 44810000 */  mtc1       $at, $f0
    /* F7EE8 800E8F38 8EAF0000 */  lw         $t7, 0x0($s5)
    /* F7EEC 800E8F3C 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* F7EF0 800E8F40 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* F7EF4 800E8F44 01E1C024 */  and        $t8, $t7, $at
    /* F7EF8 800E8F48 AE180004 */  sw         $t8, 0x4($s0)
    /* F7EFC 800E8F4C 8EB90000 */  lw         $t9, 0x0($s5)
    /* F7F00 800E8F50 3C014248 */  lui        $at, (0x42480000 >> 16)
    /* F7F04 800E8F54 44815000 */  mtc1       $at, $f10
    /* F7F08 800E8F58 27240040 */  addiu      $a0, $t9, 0x40
    /* F7F0C 800E8F5C AEA40000 */  sw         $a0, 0x0($s5)
    /* F7F10 800E8F60 3C018014 */  lui        $at, %hi(D_801442CC)
    /* F7F14 800E8F64 C42442CC */  lwc1       $f4, %lo(D_801442CC)($at)
    /* F7F18 800E8F68 44070000 */  mfc1       $a3, $f0
    /* F7F1C 800E8F6C 27A5011E */  addiu      $a1, $sp, 0x11E
    /* F7F20 800E8F70 3C0641A0 */  lui        $a2, (0x41A00000 >> 16)
    /* F7F24 800E8F74 E7A00018 */  swc1       $f0, 0x18($sp)
    /* F7F28 800E8F78 E7AA0010 */  swc1       $f10, 0x10($sp)
    /* F7F2C 800E8F7C 0C007964 */  jal        guPerspective
    /* F7F30 800E8F80 E7A40014 */   swc1      $f4, 0x14($sp)
    /* F7F34 800E8F84 8E500000 */  lw         $s0, 0x0($s2)
    /* F7F38 800E8F88 3C18BC00 */  lui        $t8, (0xBC00000E >> 16)
    /* F7F3C 800E8F8C 8FB3010C */  lw         $s3, 0x10C($sp)
    /* F7F40 800E8F90 260F0008 */  addiu      $t7, $s0, 0x8
    /* F7F44 800E8F94 AE4F0000 */  sw         $t7, 0x0($s2)
    /* F7F48 800E8F98 3718000E */  ori        $t8, $t8, (0xBC00000E & 0xFFFF)
    /* F7F4C 800E8F9C AE180000 */  sw         $t8, 0x0($s0)
    /* F7F50 800E8FA0 97B9011E */  lhu        $t9, 0x11E($sp)
    /* F7F54 800E8FA4 3C0F0103 */  lui        $t7, (0x1030040 >> 16)
    /* F7F58 800E8FA8 35EF0040 */  ori        $t7, $t7, (0x1030040 & 0xFFFF)
    /* F7F5C 800E8FAC AE190004 */  sw         $t9, 0x4($s0)
    /* F7F60 800E8FB0 8E500000 */  lw         $s0, 0x0($s2)
    /* F7F64 800E8FB4 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* F7F68 800E8FB8 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* F7F6C 800E8FBC 260E0008 */  addiu      $t6, $s0, 0x8
    /* F7F70 800E8FC0 AE4E0000 */  sw         $t6, 0x0($s2)
    /* F7F74 800E8FC4 AE0F0000 */  sw         $t7, 0x0($s0)
    /* F7F78 800E8FC8 8EB80000 */  lw         $t8, 0x0($s5)
    /* F7F7C 800E8FCC 0301C824 */  and        $t9, $t8, $at
    /* F7F80 800E8FD0 AE190004 */  sw         $t9, 0x4($s0)
    /* F7F84 800E8FD4 8EAE0000 */  lw         $t6, 0x0($s5)
    /* F7F88 800E8FD8 2A610015 */  slti       $at, $s3, 0x15
    /* F7F8C 800E8FDC 25CF0040 */  addiu      $t7, $t6, 0x40
    /* F7F90 800E8FE0 1020000D */  beqz       $at, .L800E9018_F7FC8
    /* F7F94 800E8FE4 AEAF0000 */   sw        $t7, 0x0($s5)
    /* F7F98 800E8FE8 1A60000B */  blez       $s3, .L800E9018_F7FC8
    /* F7F9C 800E8FEC 0013C0C0 */   sll       $t8, $s3, 3
    /* F7FA0 800E8FF0 0313C023 */  subu       $t8, $t8, $s3
    /* F7FA4 800E8FF4 0018C100 */  sll        $t8, $t8, 4
    /* F7FA8 800E8FF8 3C198025 */  lui        $t9, %hi(vehicleSpecs)
    /* F7FAC 800E8FFC 0338C821 */  addu       $t9, $t9, $t8
    /* F7FB0 800E9000 8F397A00 */  lw         $t9, %lo(vehicleSpecs)($t9)
    /* F7FB4 800E9004 3C048014 */  lui        $a0, %hi(D_801442BC)
    /* F7FB8 800E9008 13200003 */  beqz       $t9, .L800E9018_F7FC8
    /* F7FBC 800E900C 00000000 */   nop
    /* F7FC0 800E9010 0C00731B */  jal        osSyncPrintf
    /* F7FC4 800E9014 248442BC */   addiu     $a0, $a0, %lo(D_801442BC)
  .L800E9018_F7FC8:
    /* F7FC8 800E9018 3C0E8005 */  lui        $t6, %hi(D_80052B34)
    /* F7FCC 800E901C 8DCE2B34 */  lw         $t6, %lo(D_80052B34)($t6)
    /* F7FD0 800E9020 3C110002 */  lui        $s1, (0x20000 >> 16)
    /* F7FD4 800E9024 91CF001A */  lbu        $t7, 0x1A($t6)
    /* F7FD8 800E9028 51E0000D */  beql       $t7, $zero, .L800E9060_F8010
    /* F7FDC 800E902C 8E500000 */   lw        $s0, 0x0($s2)
    /* F7FE0 800E9030 8E510000 */  lw         $s1, 0x0($s2)
    /* F7FE4 800E9034 3C190600 */  lui        $t9, (0x6000000 >> 16)
    /* F7FE8 800E9038 24050001 */  addiu      $a1, $zero, 0x1
    /* F7FEC 800E903C 26380008 */  addiu      $t8, $s1, 0x8
    /* F7FF0 800E9040 AE580000 */  sw         $t8, 0x0($s2)
    /* F7FF4 800E9044 AE390000 */  sw         $t9, 0x0($s1)
    /* F7FF8 800E9048 8FAE012C */  lw         $t6, 0x12C($sp)
    /* F7FFC 800E904C 0C03A230 */  jal        func_800E88C0_F7870
    /* F8000 800E9050 8DC40000 */   lw        $a0, 0x0($t6)
    /* F8004 800E9054 10000010 */  b          .L800E9098_F8048
    /* F8008 800E9058 AE220004 */   sw        $v0, 0x4($s1)
    /* F800C 800E905C 8E500000 */  lw         $s0, 0x0($s2)
  .L800E9060_F8010:
    /* F8010 800E9060 3C18B700 */  lui        $t8, (0xB7000000 >> 16)
    /* F8014 800E9064 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* F8018 800E9068 260F0008 */  addiu      $t7, $s0, 0x8
    /* F801C 800E906C AE4F0000 */  sw         $t7, 0x0($s2)
    /* F8020 800E9070 AE110004 */  sw         $s1, 0x4($s0)
    /* F8024 800E9074 AE180000 */  sw         $t8, 0x0($s0)
    /* F8028 800E9078 0C03BC53 */  jal        func_800EF14C_FE0FC
    /* F802C 800E907C 8C842B34 */   lw        $a0, %lo(D_80052B34)($a0)
    /* F8030 800E9080 8E500000 */  lw         $s0, 0x0($s2)
    /* F8034 800E9084 3C0EB600 */  lui        $t6, (0xB6000000 >> 16)
    /* F8038 800E9088 26190008 */  addiu      $t9, $s0, 0x8
    /* F803C 800E908C AE590000 */  sw         $t9, 0x0($s2)
    /* F8040 800E9090 AE110004 */  sw         $s1, 0x4($s0)
    /* F8044 800E9094 AE0E0000 */  sw         $t6, 0x0($s0)
  .L800E9098_F8048:
    /* F8048 800E9098 2A610015 */  slti       $at, $s3, 0x15
    /* F804C 800E909C 5020000E */  beql       $at, $zero, .L800E90D8_F8088
    /* F8050 800E90A0 8FA3012C */   lw        $v1, 0x12C($sp)
    /* F8054 800E90A4 1A60000B */  blez       $s3, .L800E90D4_F8084
    /* F8058 800E90A8 001378C0 */   sll       $t7, $s3, 3
    /* F805C 800E90AC 01F37823 */  subu       $t7, $t7, $s3
    /* F8060 800E90B0 000F7900 */  sll        $t7, $t7, 4
    /* F8064 800E90B4 3C188025 */  lui        $t8, %hi(vehicleSpecs)
    /* F8068 800E90B8 030FC021 */  addu       $t8, $t8, $t7
    /* F806C 800E90BC 8F187A00 */  lw         $t8, %lo(vehicleSpecs)($t8)
    /* F8070 800E90C0 3C048014 */  lui        $a0, %hi(D_801442C0)
    /* F8074 800E90C4 53000004 */  beql       $t8, $zero, .L800E90D8_F8088
    /* F8078 800E90C8 8FA3012C */   lw        $v1, 0x12C($sp)
    /* F807C 800E90CC 0C00731B */  jal        osSyncPrintf
    /* F8080 800E90D0 248442C0 */   addiu     $a0, $a0, %lo(D_801442C0)
  .L800E90D4_F8084:
    /* F8084 800E90D4 8FA3012C */  lw         $v1, 0x12C($sp)
  .L800E90D8_F8088:
    /* F8088 800E90D8 3C0E8014 */  lui        $t6, %hi(D_8013FDA8)
    /* F808C 800E90DC 25CEFDA8 */  addiu      $t6, $t6, %lo(D_8013FDA8)
    /* F8090 800E90E0 907E0054 */  lbu        $fp, 0x54($v1)
    /* F8094 800E90E4 90760053 */  lbu        $s6, 0x53($v1)
    /* F8098 800E90E8 03C01025 */  or         $v0, $fp, $zero
    /* F809C 800E90EC 13C000A1 */  beqz       $fp, .L800E9374_F8324
    /* F80A0 800E90F0 27DEFFFF */   addiu     $fp, $fp, -0x1
    /* F80A4 800E90F4 0016C900 */  sll        $t9, $s6, 4
    /* F80A8 800E90F8 032EA021 */  addu       $s4, $t9, $t6
  .L800E90FC_F80AC:
    /* F80AC 800E90FC 8E990004 */  lw         $t9, 0x4($s4)
    /* F80B0 800E9100 8E910000 */  lw         $s1, 0x0($s4)
    /* F80B4 800E9104 02C02025 */  or         $a0, $s6, $zero
    /* F80B8 800E9108 0320F809 */  jalr       $t9
    /* F80BC 800E910C 00000000 */   nop
    /* F80C0 800E9110 868F000E */  lh         $t7, 0xE($s4)
    /* F80C4 800E9114 31F80001 */  andi       $t8, $t7, 0x1
    /* F80C8 800E9118 53000012 */  beql       $t8, $zero, .L800E9164_F8114
    /* F80CC 800E911C 8E500000 */   lw        $s0, 0x0($s2)
    /* F80D0 800E9120 8E500000 */  lw         $s0, 0x0($s2)
    /* F80D4 800E9124 3C190104 */  lui        $t9, (0x1040040 >> 16)
    /* F80D8 800E9128 37390040 */  ori        $t9, $t9, (0x1040040 & 0xFFFF)
    /* F80DC 800E912C 260E0008 */  addiu      $t6, $s0, 0x8
    /* F80E0 800E9130 AE4E0000 */  sw         $t6, 0x0($s2)
    /* F80E4 800E9134 AE190000 */  sw         $t9, 0x0($s0)
    /* F80E8 800E9138 8EAF0000 */  lw         $t7, 0x0($s5)
    /* F80EC 800E913C 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* F80F0 800E9140 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* F80F4 800E9144 01E1C024 */  and        $t8, $t7, $at
    /* F80F8 800E9148 AE180004 */  sw         $t8, 0x4($s0)
    /* F80FC 800E914C 8EAE0000 */  lw         $t6, 0x0($s5)
    /* F8100 800E9150 26F70001 */  addiu      $s7, $s7, 0x1
    /* F8104 800E9154 25D90040 */  addiu      $t9, $t6, 0x40
    /* F8108 800E9158 1000000F */  b          .L800E9198_F8148
    /* F810C 800E915C AEB90000 */   sw        $t9, 0x0($s5)
    /* F8110 800E9160 8E500000 */  lw         $s0, 0x0($s2)
  .L800E9164_F8114:
    /* F8114 800E9164 3C180100 */  lui        $t8, (0x1000040 >> 16)
    /* F8118 800E9168 37180040 */  ori        $t8, $t8, (0x1000040 & 0xFFFF)
    /* F811C 800E916C 260F0008 */  addiu      $t7, $s0, 0x8
    /* F8120 800E9170 AE4F0000 */  sw         $t7, 0x0($s2)
    /* F8124 800E9174 AE180000 */  sw         $t8, 0x0($s0)
    /* F8128 800E9178 8EAE0000 */  lw         $t6, 0x0($s5)
    /* F812C 800E917C 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* F8130 800E9180 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* F8134 800E9184 01C1C824 */  and        $t9, $t6, $at
    /* F8138 800E9188 AE190004 */  sw         $t9, 0x4($s0)
    /* F813C 800E918C 8EAF0000 */  lw         $t7, 0x0($s5)
    /* F8140 800E9190 25F80040 */  addiu      $t8, $t7, 0x40
    /* F8144 800E9194 AEB80000 */  sw         $t8, 0x0($s5)
  .L800E9198_F8148:
    /* F8148 800E9198 8FAE012C */  lw         $t6, 0x12C($sp)
    /* F814C 800E919C 91D90063 */  lbu        $t9, 0x63($t6)
    /* F8150 800E91A0 52D90064 */  beql       $s6, $t9, .L800E9334_F82E4
    /* F8154 800E91A4 8682000E */   lh        $v0, 0xE($s4)
    /* F8158 800E91A8 91CF0064 */  lbu        $t7, 0x64($t6)
    /* F815C 800E91AC 52CF0061 */  beql       $s6, $t7, .L800E9334_F82E4
    /* F8160 800E91B0 8682000E */   lh        $v0, 0xE($s4)
    /* F8164 800E91B4 8698000E */  lh         $t8, 0xE($s4)
    /* F8168 800E91B8 3C068005 */  lui        $a2, %hi(D_80052B50)
    /* F816C 800E91BC 24C62B50 */  addiu      $a2, $a2, %lo(D_80052B50)
    /* F8170 800E91C0 33190020 */  andi       $t9, $t8, 0x20
    /* F8174 800E91C4 1320001F */  beqz       $t9, .L800E9244_F81F4
    /* F8178 800E91C8 24030100 */   addiu     $v1, $zero, 0x100
    /* F817C 800E91CC 8E500000 */  lw         $s0, 0x0($s2)
    /* F8180 800E91D0 3C0FB600 */  lui        $t7, (0xB6000000 >> 16)
    /* F8184 800E91D4 24183000 */  addiu      $t8, $zero, 0x3000
    /* F8188 800E91D8 260E0008 */  addiu      $t6, $s0, 0x8
    /* F818C 800E91DC AE4E0000 */  sw         $t6, 0x0($s2)
    /* F8190 800E91E0 AE180004 */  sw         $t8, 0x4($s0)
    /* F8194 800E91E4 AE0F0000 */  sw         $t7, 0x0($s0)
    /* F8198 800E91E8 2419FF00 */  addiu      $t9, $zero, -0x100
    /* F819C 800E91EC A4D90000 */  sh         $t9, 0x0($a2)
    /* F81A0 800E91F0 A4C30002 */  sh         $v1, 0x2($a2)
    /* F81A4 800E91F4 A4C30004 */  sh         $v1, 0x4($a2)
    /* F81A8 800E91F8 8EA70000 */  lw         $a3, 0x0($s5)
    /* F81AC 800E91FC 00002025 */  or         $a0, $zero, $zero
    /* F81B0 800E9200 0C000E74 */  jal        func_800039D0_45D0
    /* F81B4 800E9204 00002825 */   or        $a1, $zero, $zero
    /* F81B8 800E9208 8E500000 */  lw         $s0, 0x0($s2)
    /* F81BC 800E920C 3C0F0100 */  lui        $t7, (0x1000040 >> 16)
    /* F81C0 800E9210 35EF0040 */  ori        $t7, $t7, (0x1000040 & 0xFFFF)
    /* F81C4 800E9214 260E0008 */  addiu      $t6, $s0, 0x8
    /* F81C8 800E9218 AE4E0000 */  sw         $t6, 0x0($s2)
    /* F81CC 800E921C AE0F0000 */  sw         $t7, 0x0($s0)
    /* F81D0 800E9220 8EB80000 */  lw         $t8, 0x0($s5)
    /* F81D4 800E9224 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* F81D8 800E9228 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* F81DC 800E922C 0301C824 */  and        $t9, $t8, $at
    /* F81E0 800E9230 AE190004 */  sw         $t9, 0x4($s0)
    /* F81E4 800E9234 8EAE0000 */  lw         $t6, 0x0($s5)
    /* F81E8 800E9238 25CF0040 */  addiu      $t7, $t6, 0x40
    /* F81EC 800E923C 1000000F */  b          .L800E927C_F822C
    /* F81F0 800E9240 AEAF0000 */   sw        $t7, 0x0($s5)
  .L800E9244_F81F4:
    /* F81F4 800E9244 8E500000 */  lw         $s0, 0x0($s2)
    /* F81F8 800E9248 3C19B600 */  lui        $t9, (0xB6000000 >> 16)
    /* F81FC 800E924C 240E1000 */  addiu      $t6, $zero, 0x1000
    /* F8200 800E9250 26180008 */  addiu      $t8, $s0, 0x8
    /* F8204 800E9254 AE580000 */  sw         $t8, 0x0($s2)
    /* F8208 800E9258 AE0E0004 */  sw         $t6, 0x4($s0)
    /* F820C 800E925C AE190000 */  sw         $t9, 0x0($s0)
    /* F8210 800E9260 8E500000 */  lw         $s0, 0x0($s2)
    /* F8214 800E9264 24192000 */  addiu      $t9, $zero, 0x2000
    /* F8218 800E9268 3C18B700 */  lui        $t8, (0xB7000000 >> 16)
    /* F821C 800E926C 260F0008 */  addiu      $t7, $s0, 0x8
    /* F8220 800E9270 AE4F0000 */  sw         $t7, 0x0($s2)
    /* F8224 800E9274 AE190004 */  sw         $t9, 0x4($s0)
    /* F8228 800E9278 AE180000 */  sw         $t8, 0x0($s0)
  .L800E927C_F822C:
    /* F822C 800E927C 3C0E0503 */  lui        $t6, %hi(D_5031BC0)
    /* F8230 800E9280 25CE1BC0 */  addiu      $t6, $t6, %lo(D_5031BC0)
    /* F8234 800E9284 122E002A */  beq        $s1, $t6, .L800E9330_F82E0
    /* F8238 800E9288 3C0F0503 */   lui       $t7, %hi(D_5031F30)
    /* F823C 800E928C 25EF1F30 */  addiu      $t7, $t7, %lo(D_5031F30)
    /* F8240 800E9290 122F0027 */  beq        $s1, $t7, .L800E9330_F82E0
    /* F8244 800E9294 3C180503 */   lui       $t8, %hi(D_5031DB0)
    /* F8248 800E9298 27181DB0 */  addiu      $t8, $t8, %lo(D_5031DB0)
    /* F824C 800E929C 12380024 */  beq        $s1, $t8, .L800E9330_F82E0
    /* F8250 800E92A0 3C190503 */   lui       $t9, %hi(D_5032038)
    /* F8254 800E92A4 27392038 */  addiu      $t9, $t9, %lo(D_5032038)
    /* F8258 800E92A8 12390021 */  beq        $s1, $t9, .L800E9330_F82E0
    /* F825C 800E92AC 3C0E0503 */   lui       $t6, %hi(D_5030BA0)
    /* F8260 800E92B0 25CE0BA0 */  addiu      $t6, $t6, %lo(D_5030BA0)
    /* F8264 800E92B4 122E001E */  beq        $s1, $t6, .L800E9330_F82E0
    /* F8268 800E92B8 3C0F0503 */   lui       $t7, %hi(D_5030CE8)
    /* F826C 800E92BC 25EF0CE8 */  addiu      $t7, $t7, %lo(D_5030CE8)
    /* F8270 800E92C0 122F001B */  beq        $s1, $t7, .L800E9330_F82E0
    /* F8274 800E92C4 3C180503 */   lui       $t8, %hi(D_5030E30)
    /* F8278 800E92C8 27180E30 */  addiu      $t8, $t8, %lo(D_5030E30)
    /* F827C 800E92CC 12380018 */  beq        $s1, $t8, .L800E9330_F82E0
    /* F8280 800E92D0 3C190503 */   lui       $t9, %hi(D_5030F18)
    /* F8284 800E92D4 27390F18 */  addiu      $t9, $t9, %lo(D_5030F18)
    /* F8288 800E92D8 12390015 */  beq        $s1, $t9, .L800E9330_F82E0
    /* F828C 800E92DC 3C0E0503 */   lui       $t6, %hi(D_5030FF8)
    /* F8290 800E92E0 25CE0FF8 */  addiu      $t6, $t6, %lo(D_5030FF8)
    /* F8294 800E92E4 122E0012 */  beq        $s1, $t6, .L800E9330_F82E0
    /* F8298 800E92E8 3C0F0503 */   lui       $t7, %hi(D_50310D8)
    /* F829C 800E92EC 25EF10D8 */  addiu      $t7, $t7, %lo(D_50310D8)
    /* F82A0 800E92F0 122F000F */  beq        $s1, $t7, .L800E9330_F82E0
    /* F82A4 800E92F4 3C180904 */   lui       $t8, %hi(D_9043D50)
    /* F82A8 800E92F8 27183D50 */  addiu      $t8, $t8, %lo(D_9043D50)
    /* F82AC 800E92FC 1238000C */  beq        $s1, $t8, .L800E9330_F82E0
    /* F82B0 800E9300 3C190504 */   lui       $t9, %hi(D_50445A0)
    /* F82B4 800E9304 273945A0 */  addiu      $t9, $t9, %lo(D_50445A0)
    /* F82B8 800E9308 12390009 */  beq        $s1, $t9, .L800E9330_F82E0
    /* F82BC 800E930C 3C0F0600 */   lui       $t7, (0x6000000 >> 16)
    /* F82C0 800E9310 8E530000 */  lw         $s3, 0x0($s2)
    /* F82C4 800E9314 02202025 */  or         $a0, $s1, $zero
    /* F82C8 800E9318 00002825 */  or         $a1, $zero, $zero
    /* F82CC 800E931C 266E0008 */  addiu      $t6, $s3, 0x8
    /* F82D0 800E9320 AE4E0000 */  sw         $t6, 0x0($s2)
    /* F82D4 800E9324 0C03A230 */  jal        func_800E88C0_F7870
    /* F82D8 800E9328 AE6F0000 */   sw        $t7, 0x0($s3)
    /* F82DC 800E932C AE620004 */  sw         $v0, 0x4($s3)
  .L800E9330_F82E0:
    /* F82E0 800E9330 8682000E */  lh         $v0, 0xE($s4)
  .L800E9334_F82E4:
    /* F82E4 800E9334 26D60001 */  addiu      $s6, $s6, 0x1
    /* F82E8 800E9338 26940010 */  addiu      $s4, $s4, 0x10
    /* F82EC 800E933C 30580002 */  andi       $t8, $v0, 0x2
    /* F82F0 800E9340 1300000A */  beqz       $t8, .L800E936C_F831C
    /* F82F4 800E9344 03C01025 */   or        $v0, $fp, $zero
    /* F82F8 800E9348 1AE00008 */  blez       $s7, .L800E936C_F831C
    /* F82FC 800E934C 00000000 */   nop
    /* F8300 800E9350 8E500000 */  lw         $s0, 0x0($s2)
    /* F8304 800E9354 3C0EBD00 */  lui        $t6, (0xBD000000 >> 16)
    /* F8308 800E9358 26F7FFFF */  addiu      $s7, $s7, -0x1
    /* F830C 800E935C 26190008 */  addiu      $t9, $s0, 0x8
    /* F8310 800E9360 AE590000 */  sw         $t9, 0x0($s2)
    /* F8314 800E9364 AE000004 */  sw         $zero, 0x4($s0)
    /* F8318 800E9368 AE0E0000 */  sw         $t6, 0x0($s0)
  .L800E936C_F831C:
    /* F831C 800E936C 17C0FF63 */  bnez       $fp, .L800E90FC_F80AC
    /* F8320 800E9370 27DEFFFF */   addiu     $fp, $fp, -0x1
  .L800E9374_F8324:
    /* F8324 800E9374 02E01025 */  or         $v0, $s7, $zero
    /* F8328 800E9378 12E0000B */  beqz       $s7, .L800E93A8_F8358
    /* F832C 800E937C 26F7FFFF */   addiu     $s7, $s7, -0x1
  .L800E9380_F8330:
    /* F8330 800E9380 8E500000 */  lw         $s0, 0x0($s2)
    /* F8334 800E9384 02E01025 */  or         $v0, $s7, $zero
    /* F8338 800E9388 3C18BD00 */  lui        $t8, (0xBD000000 >> 16)
    /* F833C 800E938C 260F0008 */  addiu      $t7, $s0, 0x8
    /* F8340 800E9390 AE4F0000 */  sw         $t7, 0x0($s2)
    /* F8344 800E9394 AE000004 */  sw         $zero, 0x4($s0)
    /* F8348 800E9398 AE180000 */  sw         $t8, 0x0($s0)
    /* F834C 800E939C 02001825 */  or         $v1, $s0, $zero
    /* F8350 800E93A0 16E0FFF7 */  bnez       $s7, .L800E9380_F8330
    /* F8354 800E93A4 26F7FFFF */   addiu     $s7, $s7, -0x1
  .L800E93A8_F8358:
    /* F8358 800E93A8 8E500000 */  lw         $s0, 0x0($s2)
    /* F835C 800E93AC 8FA9010C */  lw         $t1, 0x10C($sp)
    /* F8360 800E93B0 3C0EBC00 */  lui        $t6, (0xBC000404 >> 16)
    /* F8364 800E93B4 26190008 */  addiu      $t9, $s0, 0x8
    /* F8368 800E93B8 AE590000 */  sw         $t9, 0x0($s2)
    /* F836C 800E93BC 24070004 */  addiu      $a3, $zero, 0x4
    /* F8370 800E93C0 35CE0404 */  ori        $t6, $t6, (0xBC000404 & 0xFFFF)
    /* F8374 800E93C4 AE0E0000 */  sw         $t6, 0x0($s0)
    /* F8378 800E93C8 AE070004 */  sw         $a3, 0x4($s0)
    /* F837C 800E93CC 8E500000 */  lw         $s0, 0x0($s2)
    /* F8380 800E93D0 3C18BC00 */  lui        $t8, (0xBC000C04 >> 16)
    /* F8384 800E93D4 37180C04 */  ori        $t8, $t8, (0xBC000C04 & 0xFFFF)
    /* F8388 800E93D8 260F0008 */  addiu      $t7, $s0, 0x8
    /* F838C 800E93DC AE4F0000 */  sw         $t7, 0x0($s2)
    /* F8390 800E93E0 AE070004 */  sw         $a3, 0x4($s0)
    /* F8394 800E93E4 AE180000 */  sw         $t8, 0x0($s0)
    /* F8398 800E93E8 8E500000 */  lw         $s0, 0x0($s2)
    /* F839C 800E93EC 3C0EBC00 */  lui        $t6, (0xBC001404 >> 16)
    /* F83A0 800E93F0 3408FFFC */  ori        $t0, $zero, 0xFFFC
    /* F83A4 800E93F4 26190008 */  addiu      $t9, $s0, 0x8
    /* F83A8 800E93F8 AE590000 */  sw         $t9, 0x0($s2)
    /* F83AC 800E93FC 35CE1404 */  ori        $t6, $t6, (0xBC001404 & 0xFFFF)
    /* F83B0 800E9400 AE0E0000 */  sw         $t6, 0x0($s0)
    /* F83B4 800E9404 AE080004 */  sw         $t0, 0x4($s0)
    /* F83B8 800E9408 8E500000 */  lw         $s0, 0x0($s2)
    /* F83BC 800E940C 3C18BC00 */  lui        $t8, (0xBC001C04 >> 16)
    /* F83C0 800E9410 37181C04 */  ori        $t8, $t8, (0xBC001C04 & 0xFFFF)
    /* F83C4 800E9414 260F0008 */  addiu      $t7, $s0, 0x8
    /* F83C8 800E9418 AE4F0000 */  sw         $t7, 0x0($s2)
    /* F83CC 800E941C AE080004 */  sw         $t0, 0x4($s0)
    /* F83D0 800E9420 AE180000 */  sw         $t8, 0x0($s0)
    /* F83D4 800E9424 8E500000 */  lw         $s0, 0x0($s2)
    /* F83D8 800E9428 3C0F0001 */  lui        $t7, (0x10000 >> 16)
    /* F83DC 800E942C 3C0EB700 */  lui        $t6, (0xB7000000 >> 16)
    /* F83E0 800E9430 26190008 */  addiu      $t9, $s0, 0x8
    /* F83E4 800E9434 AE590000 */  sw         $t9, 0x0($s2)
    /* F83E8 800E9438 AE0F0004 */  sw         $t7, 0x4($s0)
    /* F83EC 800E943C AE0E0000 */  sw         $t6, 0x0($s0)
    /* F83F0 800E9440 3C198005 */  lui        $t9, %hi(D_80052B34)
    /* F83F4 800E9444 8F392B34 */  lw         $t9, %lo(D_80052B34)($t9)
    /* F83F8 800E9448 8FB80120 */  lw         $t8, 0x120($sp)
    /* F83FC 800E944C 29210015 */  slti       $at, $t1, 0x15
    /* F8400 800E9450 1020000D */  beqz       $at, .L800E9488_F8438
    /* F8404 800E9454 A338001A */   sb        $t8, 0x1A($t9)
    /* F8408 800E9458 1920000B */  blez       $t1, .L800E9488_F8438
    /* F840C 800E945C 000970C0 */   sll       $t6, $t1, 3
    /* F8410 800E9460 01C97023 */  subu       $t6, $t6, $t1
    /* F8414 800E9464 000E7100 */  sll        $t6, $t6, 4
    /* F8418 800E9468 3C0F8025 */  lui        $t7, %hi(vehicleSpecs)
    /* F841C 800E946C 01EE7821 */  addu       $t7, $t7, $t6
    /* F8420 800E9470 8DEF7A00 */  lw         $t7, %lo(vehicleSpecs)($t7)
    /* F8424 800E9474 3C048014 */  lui        $a0, %hi(D_801442C4)
    /* F8428 800E9478 51E00004 */  beql       $t7, $zero, .L800E948C_F843C
    /* F842C 800E947C 8FBF004C */   lw        $ra, 0x4C($sp)
    /* F8430 800E9480 0C00731B */  jal        osSyncPrintf
    /* F8434 800E9484 248442C4 */   addiu     $a0, $a0, %lo(D_801442C4)
  .L800E9488_F8438:
    /* F8438 800E9488 8FBF004C */  lw         $ra, 0x4C($sp)
  .L800E948C_F843C:
    /* F843C 800E948C 8FB00028 */  lw         $s0, 0x28($sp)
    /* F8440 800E9490 8FB1002C */  lw         $s1, 0x2C($sp)
    /* F8444 800E9494 8FB20030 */  lw         $s2, 0x30($sp)
    /* F8448 800E9498 8FB30034 */  lw         $s3, 0x34($sp)
    /* F844C 800E949C 8FB40038 */  lw         $s4, 0x38($sp)
    /* F8450 800E94A0 8FB5003C */  lw         $s5, 0x3C($sp)
    /* F8454 800E94A4 8FB60040 */  lw         $s6, 0x40($sp)
    /* F8458 800E94A8 8FB70044 */  lw         $s7, 0x44($sp)
    /* F845C 800E94AC 8FBE0048 */  lw         $fp, 0x48($sp)
    /* F8460 800E94B0 03E00008 */  jr         $ra
    /* F8464 800E94B4 27BD0130 */   addiu     $sp, $sp, 0x130
endlabel func_800E8A00_F79B0
