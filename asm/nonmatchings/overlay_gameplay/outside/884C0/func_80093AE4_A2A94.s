nonmatching func_80093AE4_A2A94, 0x198

glabel func_80093AE4_A2A94
    /* A2A94 80093AE4 308E00FF */  andi       $t6, $a0, 0xFF
    /* A2A98 80093AE8 000E7880 */  sll        $t7, $t6, 2
    /* A2A9C 80093AEC 01EE7821 */  addu       $t7, $t7, $t6
    /* A2AA0 80093AF0 3C188005 */  lui        $t8, %hi(alienInstances)
    /* A2AA4 80093AF4 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* A2AA8 80093AF8 000F7900 */  sll        $t7, $t7, 4
    /* A2AAC 80093AFC 01F81821 */  addu       $v1, $t7, $t8
    /* A2AB0 80093B00 9062001A */  lbu        $v0, 0x1A($v1)
    /* A2AB4 80093B04 3C068025 */  lui        $a2, %hi(D_802566C0)
    /* A2AB8 80093B08 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* A2ABC 80093B0C 0002C880 */  sll        $t9, $v0, 2
    /* A2AC0 80093B10 0322C823 */  subu       $t9, $t9, $v0
    /* A2AC4 80093B14 0019C880 */  sll        $t9, $t9, 2
    /* A2AC8 80093B18 0322C821 */  addu       $t9, $t9, $v0
    /* A2ACC 80093B1C 0019C8C0 */  sll        $t9, $t9, 3
    /* A2AD0 80093B20 00D93021 */  addu       $a2, $a2, $t9
    /* A2AD4 80093B24 84C666C0 */  lh         $a2, %lo(D_802566C0)($a2)
    /* A2AD8 80093B28 AFA40020 */  sw         $a0, 0x20($sp)
    /* A2ADC 80093B2C 01C02025 */  or         $a0, $t6, $zero
    /* A2AE0 80093B30 00063943 */  sra        $a3, $a2, 5
    /* A2AE4 80093B34 24E700FA */  addiu      $a3, $a3, 0xFA
    /* A2AE8 80093B38 00E5082A */  slt        $at, $a3, $a1
    /* A2AEC 80093B3C AFBF0014 */  sw         $ra, 0x14($sp)
    /* A2AF0 80093B40 10200002 */  beqz       $at, .L80093B4C_A2AFC
    /* A2AF4 80093B44 AFA50024 */   sw        $a1, 0x24($sp)
    /* A2AF8 80093B48 AFA70024 */  sw         $a3, 0x24($sp)
  .L80093B4C_A2AFC:
    /* A2AFC 80093B4C 90690047 */  lbu        $t1, 0x47($v1)
    /* A2B00 80093B50 8FAB0024 */  lw         $t3, 0x24($sp)
    /* A2B04 80093B54 312A0001 */  andi       $t2, $t1, 0x1
    /* A2B08 80093B58 11400003 */  beqz       $t2, .L80093B68_A2B18
    /* A2B0C 80093B5C 296100FB */   slti      $at, $t3, 0xFB
    /* A2B10 80093B60 10000031 */  b          .L80093C28_A2BD8
    /* A2B14 80093B64 A4600012 */   sh        $zero, 0x12($v1)
  .L80093B68_A2B18:
    /* A2B18 80093B68 14200020 */  bnez       $at, .L80093BEC_A2B9C
    /* A2B1C 80093B6C 24050800 */   addiu     $a1, $zero, 0x800
    /* A2B20 80093B70 AFA30018 */  sw         $v1, 0x18($sp)
    /* A2B24 80093B74 0C0213FA */  jal        func_80084FE8_93F98
    /* A2B28 80093B78 A7A6001C */   sh        $a2, 0x1C($sp)
    /* A2B2C 80093B7C 8FA30018 */  lw         $v1, 0x18($sp)
    /* A2B30 80093B80 10400005 */  beqz       $v0, .L80093B98_A2B48
    /* A2B34 80093B84 87A6001C */   lh        $a2, 0x1C($sp)
    /* A2B38 80093B88 8C6C0020 */  lw         $t4, 0x20($v1)
    /* A2B3C 80093B8C 358D4000 */  ori        $t5, $t4, 0x4000
    /* A2B40 80093B90 10000005 */  b          .L80093BA8_A2B58
    /* A2B44 80093B94 AC6D0020 */   sw        $t5, 0x20($v1)
  .L80093B98_A2B48:
    /* A2B48 80093B98 8C6E0020 */  lw         $t6, 0x20($v1)
    /* A2B4C 80093B9C 2401BFFF */  addiu      $at, $zero, -0x4001
    /* A2B50 80093BA0 01C17824 */  and        $t7, $t6, $at
    /* A2B54 80093BA4 AC6F0020 */  sw         $t7, 0x20($v1)
  .L80093BA8_A2B58:
    /* A2B58 80093BA8 8C780020 */  lw         $t8, 0x20($v1)
    /* A2B5C 80093BAC 8FAB0024 */  lw         $t3, 0x24($sp)
    /* A2B60 80093BB0 00064043 */  sra        $t0, $a2, 1
    /* A2B64 80093BB4 33194000 */  andi       $t9, $t8, 0x4000
    /* A2B68 80093BB8 17200003 */  bnez       $t9, .L80093BC8_A2B78
    /* A2B6C 80093BBC 256CFF06 */   addiu     $t4, $t3, -0xFA
    /* A2B70 80093BC0 00084C00 */  sll        $t1, $t0, 16
    /* A2B74 80093BC4 00093403 */  sra        $a2, $t1, 16
  .L80093BC8_A2B78:
    /* A2B78 80093BC8 000C6843 */  sra        $t5, $t4, 1
    /* A2B7C 80093BCC 000D7140 */  sll        $t6, $t5, 5
    /* A2B80 80093BD0 A46E0012 */  sh         $t6, 0x12($v1)
    /* A2B84 80093BD4 846F0012 */  lh         $t7, 0x12($v1)
    /* A2B88 80093BD8 00CF082A */  slt        $at, $a2, $t7
    /* A2B8C 80093BDC 50200013 */  beql       $at, $zero, .L80093C2C_A2BDC
    /* A2B90 80093BE0 8C6E0020 */   lw        $t6, 0x20($v1)
    /* A2B94 80093BE4 10000010 */  b          .L80093C28_A2BD8
    /* A2B98 80093BE8 A4660012 */   sh        $a2, 0x12($v1)
  .L80093BEC_A2B9C:
    /* A2B9C 80093BEC 8FA80024 */  lw         $t0, 0x24($sp)
    /* A2BA0 80093BF0 8C780020 */  lw         $t8, 0x20($v1)
    /* A2BA4 80093BF4 2401BFFF */  addiu      $at, $zero, -0x4001
    /* A2BA8 80093BF8 2509FF06 */  addiu      $t1, $t0, -0xFA
    /* A2BAC 80093BFC 00095083 */  sra        $t2, $t1, 2
    /* A2BB0 80093C00 000A5940 */  sll        $t3, $t2, 5
    /* A2BB4 80093C04 A46B0012 */  sh         $t3, 0x12($v1)
    /* A2BB8 80093C08 846C0012 */  lh         $t4, 0x12($v1)
    /* A2BBC 80093C0C 00061043 */  sra        $v0, $a2, 1
    /* A2BC0 80093C10 0301C824 */  and        $t9, $t8, $at
    /* A2BC4 80093C14 0182082A */  slt        $at, $t4, $v0
    /* A2BC8 80093C18 10200003 */  beqz       $at, .L80093C28_A2BD8
    /* A2BCC 80093C1C AC790020 */   sw        $t9, 0x20($v1)
    /* A2BD0 80093C20 00026823 */  negu       $t5, $v0
    /* A2BD4 80093C24 A46D0012 */  sh         $t5, 0x12($v1)
  .L80093C28_A2BD8:
    /* A2BD8 80093C28 8C6E0020 */  lw         $t6, 0x20($v1)
  .L80093C2C_A2BDC:
    /* A2BDC 80093C2C 0006C043 */  sra        $t8, $a2, 1
    /* A2BE0 80093C30 24080400 */  addiu      $t0, $zero, 0x400
    /* A2BE4 80093C34 31CF4000 */  andi       $t7, $t6, 0x4000
    /* A2BE8 80093C38 51E00004 */  beql       $t7, $zero, .L80093C4C_A2BFC
    /* A2BEC 80093C3C A4780010 */   sh        $t8, 0x10($v1)
    /* A2BF0 80093C40 10000002 */  b          .L80093C4C_A2BFC
    /* A2BF4 80093C44 A4660010 */   sh        $a2, 0x10($v1)
    /* A2BF8 80093C48 A4780010 */  sh         $t8, 0x10($v1)
  .L80093C4C_A2BFC:
    /* A2BFC 80093C4C 84790010 */  lh         $t9, 0x10($v1)
    /* A2C00 80093C50 2B210401 */  slti       $at, $t9, 0x401
    /* A2C04 80093C54 54200003 */  bnel       $at, $zero, .L80093C64_A2C14
    /* A2C08 80093C58 8C690020 */   lw        $t1, 0x20($v1)
    /* A2C0C 80093C5C A4680010 */  sh         $t0, 0x10($v1)
    /* A2C10 80093C60 8C690020 */  lw         $t1, 0x20($v1)
  .L80093C64_A2C14:
    /* A2C14 80093C64 8FBF0014 */  lw         $ra, 0x14($sp)
    /* A2C18 80093C68 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* A2C1C 80093C6C 01215025 */  or         $t2, $t1, $at
    /* A2C20 80093C70 AC6A0020 */  sw         $t2, 0x20($v1)
    /* A2C24 80093C74 03E00008 */  jr         $ra
    /* A2C28 80093C78 27BD0020 */   addiu     $sp, $sp, 0x20
endlabel func_80093AE4_A2A94
