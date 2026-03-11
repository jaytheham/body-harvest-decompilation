nonmatching func_80011E14_12A14, 0x17C

glabel func_80011E14_12A14
    /* 12A14 80011E14 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* 12A18 80011E18 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* 12A1C 80011E1C 8C620000 */  lw         $v0, 0x0($v1)
    /* 12A20 80011E20 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 12A24 80011E24 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 12A28 80011E28 244F0008 */  addiu      $t7, $v0, 0x8
    /* 12A2C 80011E2C AFA40018 */  sw         $a0, 0x18($sp)
    /* 12A30 80011E30 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 12A34 80011E34 3C18BC00 */  lui        $t8, (0xBC000006 >> 16)
    /* 12A38 80011E38 37180006 */  ori        $t8, $t8, (0xBC000006 & 0xFFFF)
    /* 12A3C 80011E3C AC580000 */  sw         $t8, 0x0($v0)
    /* 12A40 80011E40 AC400004 */  sw         $zero, 0x4($v0)
    /* 12A44 80011E44 8C620000 */  lw         $v0, 0x0($v1)
    /* 12A48 80011E48 308E00FF */  andi       $t6, $a0, 0xFF
    /* 12A4C 80011E4C 01C02025 */  or         $a0, $t6, $zero
    /* 12A50 80011E50 3C0EBC00 */  lui        $t6, (0xBC000406 >> 16)
    /* 12A54 80011E54 24590008 */  addiu      $t9, $v0, 0x8
    /* 12A58 80011E58 AC790000 */  sw         $t9, 0x0($v1)
    /* 12A5C 80011E5C 35CE0406 */  ori        $t6, $t6, (0xBC000406 & 0xFFFF)
    /* 12A60 80011E60 3C0F8003 */  lui        $t7, %hi(__printfunc)
    /* 12A64 80011E64 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 12A68 80011E68 8DEF1C84 */  lw         $t7, %lo(__printfunc)($t7)
    /* 12A6C 80011E6C 3C0A1FFF */  lui        $t2, (0x1FFFFFFF >> 16)
    /* 12A70 80011E70 354AFFFF */  ori        $t2, $t2, (0x1FFFFFFF & 0xFFFF)
    /* 12A74 80011E74 01EAC024 */  and        $t8, $t7, $t2
    /* 12A78 80011E78 AC580004 */  sw         $t8, 0x4($v0)
    /* 12A7C 80011E7C 8C620000 */  lw         $v0, 0x0($v1)
    /* 12A80 80011E80 3C0EBC00 */  lui        $t6, (0xBC001406 >> 16)
    /* 12A84 80011E84 35CE1406 */  ori        $t6, $t6, (0xBC001406 & 0xFFFF)
    /* 12A88 80011E88 24590008 */  addiu      $t9, $v0, 0x8
    /* 12A8C 80011E8C AC790000 */  sw         $t9, 0x0($v1)
    /* 12A90 80011E90 3C0F8007 */  lui        $t7, %hi(D_8006AA6C)
    /* 12A94 80011E94 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 12A98 80011E98 8DEFAA6C */  lw         $t7, %lo(D_8006AA6C)($t7)
    /* 12A9C 80011E9C 3C0EBC00 */  lui        $t6, (0xBC003C06 >> 16)
    /* 12AA0 80011EA0 35CE3C06 */  ori        $t6, $t6, (0xBC003C06 & 0xFFFF)
    /* 12AA4 80011EA4 01EAC024 */  and        $t8, $t7, $t2
    /* 12AA8 80011EA8 AC580004 */  sw         $t8, 0x4($v0)
    /* 12AAC 80011EAC 8C620000 */  lw         $v0, 0x0($v1)
    /* 12AB0 80011EB0 3C0F8007 */  lui        $t7, %hi(D_8006AA74)
    /* 12AB4 80011EB4 3C0B8003 */  lui        $t3, %hi(D_80031C68)
    /* 12AB8 80011EB8 24590008 */  addiu      $t9, $v0, 0x8
    /* 12ABC 80011EBC AC790000 */  sw         $t9, 0x0($v1)
    /* 12AC0 80011EC0 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 12AC4 80011EC4 8DEFAA74 */  lw         $t7, %lo(D_8006AA74)($t7)
    /* 12AC8 80011EC8 256B1C68 */  addiu      $t3, $t3, %lo(D_80031C68)
    /* 12ACC 80011ECC 00047080 */  sll        $t6, $a0, 2
    /* 12AD0 80011ED0 01EAC024 */  and        $t8, $t7, $t2
    /* 12AD4 80011ED4 AC580004 */  sw         $t8, 0x4($v0)
    /* 12AD8 80011ED8 8C620000 */  lw         $v0, 0x0($v1)
    /* 12ADC 80011EDC 016E7821 */  addu       $t7, $t3, $t6
    /* 12AE0 80011EE0 8DF80000 */  lw         $t8, 0x0($t7)
    /* 12AE4 80011EE4 24590008 */  addiu      $t9, $v0, 0x8
    /* 12AE8 80011EE8 AC790000 */  sw         $t9, 0x0($v1)
    /* 12AEC 80011EEC 0018C880 */  sll        $t9, $t8, 2
    /* 12AF0 80011EF0 332EFFFF */  andi       $t6, $t9, 0xFFFF
    /* 12AF4 80011EF4 3C0CBC00 */  lui        $t4, (0xBC000006 >> 16)
    /* 12AF8 80011EF8 000E7A00 */  sll        $t7, $t6, 8
    /* 12AFC 80011EFC 01ECC025 */  or         $t8, $t7, $t4
    /* 12B00 80011F00 3C0D8007 */  lui        $t5, %hi(D_8006AA70)
    /* 12B04 80011F04 37190006 */  ori        $t9, $t8, (0xBC000006 & 0xFFFF)
    /* 12B08 80011F08 25ADAA70 */  addiu      $t5, $t5, %lo(D_8006AA70)
    /* 12B0C 80011F0C AC590000 */  sw         $t9, 0x0($v0)
    /* 12B10 80011F10 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 12B14 80011F14 3C188005 */  lui        $t8, %hi(D_80052ACA)
    /* 12B18 80011F18 24010002 */  addiu      $at, $zero, 0x2
    /* 12B1C 80011F1C 01CA7824 */  and        $t7, $t6, $t2
    /* 12B20 80011F20 AC4F0004 */  sw         $t7, 0x4($v0)
    /* 12B24 80011F24 93182ACA */  lbu        $t8, %lo(D_80052ACA)($t8)
    /* 12B28 80011F28 3C198004 */  lui        $t9, %hi(currentLevel)
    /* 12B2C 80011F2C 17010012 */  bne        $t8, $at, .L80011F78_12B78
    /* 12B30 80011F30 00000000 */   nop
    /* 12B34 80011F34 8F397F90 */  lw         $t9, %lo(currentLevel)($t9)
    /* 12B38 80011F38 24010005 */  addiu      $at, $zero, 0x5
    /* 12B3C 80011F3C 1321000E */  beq        $t9, $at, .L80011F78_12B78
    /* 12B40 80011F40 00000000 */   nop
    /* 12B44 80011F44 8C620000 */  lw         $v0, 0x0($v1)
    /* 12B48 80011F48 8D6F0018 */  lw         $t7, 0x18($t3)
    /* 12B4C 80011F4C 244E0008 */  addiu      $t6, $v0, 0x8
    /* 12B50 80011F50 000FC080 */  sll        $t8, $t7, 2
    /* 12B54 80011F54 3319FFFF */  andi       $t9, $t8, 0xFFFF
    /* 12B58 80011F58 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 12B5C 80011F5C 00197200 */  sll        $t6, $t9, 8
    /* 12B60 80011F60 01CC7825 */  or         $t7, $t6, $t4
    /* 12B64 80011F64 35F80006 */  ori        $t8, $t7, (0xBC000006 & 0xFFFF)
    /* 12B68 80011F68 AC580000 */  sw         $t8, 0x0($v0)
    /* 12B6C 80011F6C 8DB90000 */  lw         $t9, 0x0($t5)
    /* 12B70 80011F70 032A7024 */  and        $t6, $t9, $t2
    /* 12B74 80011F74 AC4E0004 */  sw         $t6, 0x4($v0)
  .L80011F78_12B78:
    /* 12B78 80011F78 0C001323 */  jal        func_80004C8C_588C
    /* 12B7C 80011F7C 00000000 */   nop
    /* 12B80 80011F80 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 12B84 80011F84 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 12B88 80011F88 03E00008 */  jr         $ra
    /* 12B8C 80011F8C 00000000 */   nop
endlabel func_80011E14_12A14
