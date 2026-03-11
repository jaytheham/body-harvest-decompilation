nonmatching func_80095BD4_A4B84, 0x178

glabel func_80095BD4_A4B84
    /* A4B84 80095BD4 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* A4B88 80095BD8 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* A4B8C 80095BDC 8C620000 */  lw         $v0, 0x0($v1)
    /* A4B90 80095BE0 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* A4B94 80095BE4 AFA50024 */  sw         $a1, 0x24($sp)
    /* A4B98 80095BE8 00A07025 */  or         $t6, $a1, $zero
    /* A4B9C 80095BEC 24590008 */  addiu      $t9, $v0, 0x8
    /* A4BA0 80095BF0 01C02825 */  or         $a1, $t6, $zero
    /* A4BA4 80095BF4 AFA60028 */  sw         $a2, 0x28($sp)
    /* A4BA8 80095BF8 AFA7002C */  sw         $a3, 0x2C($sp)
    /* A4BAC 80095BFC AC790000 */  sw         $t9, 0x0($v1)
    /* A4BB0 80095C00 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* A4BB4 80095C04 AC4E0000 */  sw         $t6, 0x0($v0)
    /* A4BB8 80095C08 AC400004 */  sw         $zero, 0x4($v0)
    /* A4BBC 80095C0C 8C620000 */  lw         $v0, 0x0($v1)
    /* A4BC0 80095C10 00C07825 */  or         $t7, $a2, $zero
    /* A4BC4 80095C14 01E03025 */  or         $a2, $t7, $zero
    /* A4BC8 80095C18 00E0C025 */  or         $t8, $a3, $zero
    /* A4BCC 80095C1C 03003825 */  or         $a3, $t8, $zero
    /* A4BD0 80095C20 244F0008 */  addiu      $t7, $v0, 0x8
    /* A4BD4 80095C24 AC6F0000 */  sw         $t7, 0x0($v1)
    /* A4BD8 80095C28 3C18BA00 */  lui        $t8, (0xBA001402 >> 16)
    /* A4BDC 80095C2C 37181402 */  ori        $t8, $t8, (0xBA001402 & 0xFFFF)
    /* A4BE0 80095C30 3C190030 */  lui        $t9, (0x300000 >> 16)
    /* A4BE4 80095C34 AC590004 */  sw         $t9, 0x4($v0)
    /* A4BE8 80095C38 AC580000 */  sw         $t8, 0x0($v0)
    /* A4BEC 80095C3C 8C620000 */  lw         $v0, 0x0($v1)
    /* A4BF0 80095C40 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* A4BF4 80095C44 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* A4BF8 80095C48 244E0008 */  addiu      $t6, $v0, 0x8
    /* A4BFC 80095C4C AC6E0000 */  sw         $t6, 0x0($v1)
    /* A4C00 80095C50 3C0FFF10 */  lui        $t7, (0xFF10013F >> 16)
    /* A4C04 80095C54 35EF013F */  ori        $t7, $t7, (0xFF10013F & 0xFFFF)
    /* A4C08 80095C58 0081C024 */  and        $t8, $a0, $at
    /* A4C0C 80095C5C AC580004 */  sw         $t8, 0x4($v0)
    /* A4C10 80095C60 AC4F0000 */  sw         $t7, 0x0($v0)
    /* A4C14 80095C64 8C620000 */  lw         $v0, 0x0($v1)
    /* A4C18 80095C68 3C0EF700 */  lui        $t6, (0xF7000000 >> 16)
    /* A4C1C 80095C6C 00057A00 */  sll        $t7, $a1, 8
    /* A4C20 80095C70 24590008 */  addiu      $t9, $v0, 0x8
    /* A4C24 80095C74 AC790000 */  sw         $t9, 0x0($v1)
    /* A4C28 80095C78 0006C8C0 */  sll        $t9, $a2, 3
    /* A4C2C 80095C7C AC4E0000 */  sw         $t6, 0x0($v0)
    /* A4C30 80095C80 332E07C0 */  andi       $t6, $t9, 0x7C0
    /* A4C34 80095C84 31F8F800 */  andi       $t8, $t7, 0xF800
    /* A4C38 80095C88 030E7825 */  or         $t7, $t8, $t6
    /* A4C3C 80095C8C 0007C883 */  sra        $t9, $a3, 2
    /* A4C40 80095C90 3338003E */  andi       $t8, $t9, 0x3E
    /* A4C44 80095C94 01F86025 */  or         $t4, $t7, $t8
    /* A4C48 80095C98 358E0001 */  ori        $t6, $t4, 0x1
    /* A4C4C 80095C9C 000ECC00 */  sll        $t9, $t6, 16
    /* A4C50 80095CA0 032E7825 */  or         $t7, $t9, $t6
    /* A4C54 80095CA4 AC4F0004 */  sw         $t7, 0x4($v0)
    /* A4C58 80095CA8 8C620000 */  lw         $v0, 0x0($v1)
    /* A4C5C 80095CAC 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* A4C60 80095CB0 3C0F8007 */  lui        $t7, %hi(D_80068084)
    /* A4C64 80095CB4 24580008 */  addiu      $t8, $v0, 0x8
    /* A4C68 80095CB8 AC780000 */  sw         $t8, 0x0($v1)
    /* A4C6C 80095CBC AC400004 */  sw         $zero, 0x4($v0)
    /* A4C70 80095CC0 AC4E0000 */  sw         $t6, 0x0($v0)
    /* A4C74 80095CC4 8C620000 */  lw         $v0, 0x0($v1)
    /* A4C78 80095CC8 3C01F600 */  lui        $at, (0xF6000000 >> 16)
    /* A4C7C 80095CCC 24590008 */  addiu      $t9, $v0, 0x8
    /* A4C80 80095CD0 AC790000 */  sw         $t9, 0x0($v1)
    /* A4C84 80095CD4 8DEF8084 */  lw         $t7, %lo(D_80068084)($t7)
    /* A4C88 80095CD8 AFA20008 */  sw         $v0, 0x8($sp)
    /* A4C8C 80095CDC 25F8FFFF */  addiu      $t8, $t7, -0x1
    /* A4C90 80095CE0 330E03FF */  andi       $t6, $t8, 0x3FF
    /* A4C94 80095CE4 3C188007 */  lui        $t8, %hi(D_80068088)
    /* A4C98 80095CE8 8F188088 */  lw         $t8, %lo(D_80068088)($t8)
    /* A4C9C 80095CEC 000ECB80 */  sll        $t9, $t6, 14
    /* A4CA0 80095CF0 03217825 */  or         $t7, $t9, $at
    /* A4CA4 80095CF4 270EFFFF */  addiu      $t6, $t8, -0x1
    /* A4CA8 80095CF8 31D903FF */  andi       $t9, $t6, 0x3FF
    /* A4CAC 80095CFC 0019C080 */  sll        $t8, $t9, 2
    /* A4CB0 80095D00 01F87025 */  or         $t6, $t7, $t8
    /* A4CB4 80095D04 AC4E0000 */  sw         $t6, 0x0($v0)
    /* A4CB8 80095D08 AC400004 */  sw         $zero, 0x4($v0)
    /* A4CBC 80095D0C 8C620000 */  lw         $v0, 0x0($v1)
    /* A4CC0 80095D10 3C18BA00 */  lui        $t8, (0xBA001402 >> 16)
    /* A4CC4 80095D14 37181402 */  ori        $t8, $t8, (0xBA001402 & 0xFFFF)
    /* A4CC8 80095D18 244F0008 */  addiu      $t7, $v0, 0x8
    /* A4CCC 80095D1C AC6F0000 */  sw         $t7, 0x0($v1)
    /* A4CD0 80095D20 AFA20004 */  sw         $v0, 0x4($sp)
    /* A4CD4 80095D24 AC400004 */  sw         $zero, 0x4($v0)
    /* A4CD8 80095D28 AC580000 */  sw         $t8, 0x0($v0)
    /* A4CDC 80095D2C 8C620000 */  lw         $v0, 0x0($v1)
    /* A4CE0 80095D30 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* A4CE4 80095D34 27BD0020 */  addiu      $sp, $sp, 0x20
    /* A4CE8 80095D38 24590008 */  addiu      $t9, $v0, 0x8
    /* A4CEC 80095D3C AC790000 */  sw         $t9, 0x0($v1)
    /* A4CF0 80095D40 AC400004 */  sw         $zero, 0x4($v0)
    /* A4CF4 80095D44 03E00008 */  jr         $ra
    /* A4CF8 80095D48 AC4F0000 */   sw        $t7, 0x0($v0)
endlabel func_80095BD4_A4B84
