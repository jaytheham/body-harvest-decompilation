nonmatching func_8008BB6C_173C2C, 0x1AC

glabel func_8008BB6C_173C2C
    /* 173C2C 8008BB6C 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* 173C30 8008BB70 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* 173C34 8008BB74 8C620000 */  lw         $v0, 0x0($v1)
    /* 173C38 8008BB78 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 173C3C 8008BB7C AFA40030 */  sw         $a0, 0x30($sp)
    /* 173C40 8008BB80 308E00FF */  andi       $t6, $a0, 0xFF
    /* 173C44 8008BB84 01C02025 */  or         $a0, $t6, $zero
    /* 173C48 8008BB88 30AF00FF */  andi       $t7, $a1, 0xFF
    /* 173C4C 8008BB8C 000F71C0 */  sll        $t6, $t7, 7
    /* 173C50 8008BB90 24580008 */  addiu      $t8, $v0, 0x8
    /* 173C54 8008BB94 AC780000 */  sw         $t8, 0x0($v1)
    /* 173C58 8008BB98 3C0F0101 */  lui        $t7, %hi(D_1009C70)
    /* 173C5C 8008BB9C AFA50034 */  sw         $a1, 0x34($sp)
    /* 173C60 8008BBA0 25EF9C70 */  addiu      $t7, $t7, %lo(D_1009C70)
    /* 173C64 8008BBA4 3C19FD90 */  lui        $t9, (0xFD900000 >> 16)
    /* 173C68 8008BBA8 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 173C6C 8008BBAC 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 173C70 8008BBB0 01CFC021 */  addu       $t8, $t6, $t7
    /* 173C74 8008BBB4 AC590000 */  sw         $t9, 0x0($v0)
    /* 173C78 8008BBB8 0301C824 */  and        $t9, $t8, $at
    /* 173C7C 8008BBBC AC590004 */  sw         $t9, 0x4($v0)
    /* 173C80 8008BBC0 8C620000 */  lw         $v0, 0x0($v1)
    /* 173C84 8008BBC4 3C180701 */  lui        $t8, (0x7014050 >> 16)
    /* 173C88 8008BBC8 37184050 */  ori        $t8, $t8, (0x7014050 & 0xFFFF)
    /* 173C8C 8008BBCC 244E0008 */  addiu      $t6, $v0, 0x8
    /* 173C90 8008BBD0 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 173C94 8008BBD4 3C0FF590 */  lui        $t7, (0xF5900000 >> 16)
    /* 173C98 8008BBD8 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 173C9C 8008BBDC AC580004 */  sw         $t8, 0x4($v0)
    /* 173CA0 8008BBE0 8C620000 */  lw         $v0, 0x0($v1)
    /* 173CA4 8008BBE4 3C0EE600 */  lui        $t6, (0xE6000000 >> 16)
    /* 173CA8 8008BBE8 3C18F300 */  lui        $t8, (0xF3000000 >> 16)
    /* 173CAC 8008BBEC 24590008 */  addiu      $t9, $v0, 0x8
    /* 173CB0 8008BBF0 AC790000 */  sw         $t9, 0x0($v1)
    /* 173CB4 8008BBF4 AC400004 */  sw         $zero, 0x4($v0)
    /* 173CB8 8008BBF8 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 173CBC 8008BBFC 8C620000 */  lw         $v0, 0x0($v1)
    /* 173CC0 8008BC00 3C190703 */  lui        $t9, (0x703F800 >> 16)
    /* 173CC4 8008BC04 3739F800 */  ori        $t9, $t9, (0x703F800 & 0xFFFF)
    /* 173CC8 8008BC08 244F0008 */  addiu      $t7, $v0, 0x8
    /* 173CCC 8008BC0C AC6F0000 */  sw         $t7, 0x0($v1)
    /* 173CD0 8008BC10 AC590004 */  sw         $t9, 0x4($v0)
    /* 173CD4 8008BC14 AC580000 */  sw         $t8, 0x0($v0)
    /* 173CD8 8008BC18 8C620000 */  lw         $v0, 0x0($v1)
    /* 173CDC 8008BC1C 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* 173CE0 8008BC20 3C19F580 */  lui        $t9, (0xF5800200 >> 16)
    /* 173CE4 8008BC24 244E0008 */  addiu      $t6, $v0, 0x8
    /* 173CE8 8008BC28 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 173CEC 8008BC2C AC400004 */  sw         $zero, 0x4($v0)
    /* 173CF0 8008BC30 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 173CF4 8008BC34 8C620000 */  lw         $v0, 0x0($v1)
    /* 173CF8 8008BC38 3C0E0001 */  lui        $t6, (0x14050 >> 16)
    /* 173CFC 8008BC3C 35CE4050 */  ori        $t6, $t6, (0x14050 & 0xFFFF)
    /* 173D00 8008BC40 24580008 */  addiu      $t8, $v0, 0x8
    /* 173D04 8008BC44 AC780000 */  sw         $t8, 0x0($v1)
    /* 173D08 8008BC48 37390200 */  ori        $t9, $t9, (0xF5800200 & 0xFFFF)
    /* 173D0C 8008BC4C AC590000 */  sw         $t9, 0x0($v0)
    /* 173D10 8008BC50 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 173D14 8008BC54 8C620000 */  lw         $v0, 0x0($v1)
    /* 173D18 8008BC58 3C190003 */  lui        $t9, (0x3C03C >> 16)
    /* 173D1C 8008BC5C 3739C03C */  ori        $t9, $t9, (0x3C03C & 0xFFFF)
    /* 173D20 8008BC60 244F0008 */  addiu      $t7, $v0, 0x8
    /* 173D24 8008BC64 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 173D28 8008BC68 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* 173D2C 8008BC6C AC580000 */  sw         $t8, 0x0($v0)
    /* 173D30 8008BC70 AC590004 */  sw         $t9, 0x4($v0)
    /* 173D34 8008BC74 8C620000 */  lw         $v0, 0x0($v1)
    /* 173D38 8008BC78 2498000B */  addiu      $t8, $a0, 0xB
    /* 173D3C 8008BC7C 0018C880 */  sll        $t9, $t8, 2
    /* 173D40 8008BC80 244E0008 */  addiu      $t6, $v0, 0x8
    /* 173D44 8008BC84 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 173D48 8008BC88 332E0FFF */  andi       $t6, $t9, 0xFFF
    /* 173D4C 8008BC8C 000E7B00 */  sll        $t7, $t6, 12
    /* 173D50 8008BC90 3C01E400 */  lui        $at, (0xE4000344 >> 16)
    /* 173D54 8008BC94 01E1C025 */  or         $t8, $t7, $at
    /* 173D58 8008BC98 37190344 */  ori        $t9, $t8, (0xE4000344 & 0xFFFF)
    /* 173D5C 8008BC9C AFA40000 */  sw         $a0, 0x0($sp)
    /* 173D60 8008BCA0 AC590000 */  sw         $t9, 0x0($v0)
    /* 173D64 8008BCA4 8FAE0000 */  lw         $t6, 0x0($sp)
    /* 173D68 8008BCA8 000E7880 */  sll        $t7, $t6, 2
    /* 173D6C 8008BCAC 31F80FFF */  andi       $t8, $t7, 0xFFF
    /* 173D70 8008BCB0 0018CB00 */  sll        $t9, $t8, 12
    /* 173D74 8008BCB4 372E0318 */  ori        $t6, $t9, 0x318
    /* 173D78 8008BCB8 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 173D7C 8008BCBC 8C620000 */  lw         $v0, 0x0($v1)
    /* 173D80 8008BCC0 3C18B400 */  lui        $t8, (0xB4000000 >> 16)
    /* 173D84 8008BCC4 244F0008 */  addiu      $t7, $v0, 0x8
    /* 173D88 8008BCC8 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 173D8C 8008BCCC AFA2000C */  sw         $v0, 0xC($sp)
    /* 173D90 8008BCD0 AC400004 */  sw         $zero, 0x4($v0)
    /* 173D94 8008BCD4 AC580000 */  sw         $t8, 0x0($v0)
    /* 173D98 8008BCD8 8C620000 */  lw         $v0, 0x0($v1)
    /* 173D9C 8008BCDC 3C180600 */  lui        $t8, (0x6000600 >> 16)
    /* 173DA0 8008BCE0 37180600 */  ori        $t8, $t8, (0x6000600 & 0xFFFF)
    /* 173DA4 8008BCE4 244E0008 */  addiu      $t6, $v0, 0x8
    /* 173DA8 8008BCE8 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 173DAC 8008BCEC 3C0FB300 */  lui        $t7, (0xB3000000 >> 16)
    /* 173DB0 8008BCF0 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 173DB4 8008BCF4 AC580004 */  sw         $t8, 0x4($v0)
    /* 173DB8 8008BCF8 8C620000 */  lw         $v0, 0x0($v1)
    /* 173DBC 8008BCFC 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* 173DC0 8008BD00 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 173DC4 8008BD04 24590008 */  addiu      $t9, $v0, 0x8
    /* 173DC8 8008BD08 AC790000 */  sw         $t9, 0x0($v1)
    /* 173DCC 8008BD0C AC400004 */  sw         $zero, 0x4($v0)
    /* 173DD0 8008BD10 03E00008 */  jr         $ra
    /* 173DD4 8008BD14 AC4E0000 */   sw        $t6, 0x0($v0)
endlabel func_8008BB6C_173C2C
