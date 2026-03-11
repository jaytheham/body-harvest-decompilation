nonmatching func_800D2AB0_E1A60, 0x41C

glabel func_800D2AB0_E1A60
    /* E1A60 800D2AB0 3C088006 */  lui        $t0, %hi(D_8005BB2C)
    /* E1A64 800D2AB4 2508BB2C */  addiu      $t0, $t0, %lo(D_8005BB2C)
    /* E1A68 800D2AB8 8D030000 */  lw         $v1, 0x0($t0)
    /* E1A6C 800D2ABC 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* E1A70 800D2AC0 AFA40030 */  sw         $a0, 0x30($sp)
    /* E1A74 800D2AC4 00047400 */  sll        $t6, $a0, 16
    /* E1A78 800D2AC8 000E2403 */  sra        $a0, $t6, 16
    /* E1A7C 800D2ACC 246E0008 */  addiu      $t6, $v1, 0x8
    /* E1A80 800D2AD0 AFA50034 */  sw         $a1, 0x34($sp)
    /* E1A84 800D2AD4 AFA60038 */  sw         $a2, 0x38($sp)
    /* E1A88 800D2AD8 AFA7003C */  sw         $a3, 0x3C($sp)
    /* E1A8C 800D2ADC AD0E0000 */  sw         $t6, 0x0($t0)
    /* E1A90 800D2AE0 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* E1A94 800D2AE4 AC6F0000 */  sw         $t7, 0x0($v1)
    /* E1A98 800D2AE8 AC600004 */  sw         $zero, 0x4($v1)
    /* E1A9C 800D2AEC 8D030000 */  lw         $v1, 0x0($t0)
    /* E1AA0 800D2AF0 0007C400 */  sll        $t8, $a3, 16
    /* E1AA4 800D2AF4 00183C03 */  sra        $a3, $t8, 16
    /* E1AA8 800D2AF8 24780008 */  addiu      $t8, $v1, 0x8
    /* E1AAC 800D2AFC AD180000 */  sw         $t8, 0x0($t0)
    /* E1AB0 800D2B00 3C19FD90 */  lui        $t9, (0xFD900000 >> 16)
    /* E1AB4 800D2B04 AC790000 */  sw         $t9, 0x0($v1)
    /* E1AB8 800D2B08 93AE004B */  lbu        $t6, 0x4B($sp)
    /* E1ABC 800D2B0C 3C180100 */  lui        $t8, %hi(D_1007A70)
    /* E1AC0 800D2B10 27187A70 */  addiu      $t8, $t8, %lo(D_1007A70)
    /* E1AC4 800D2B14 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* E1AC8 800D2B18 000E7A40 */  sll        $t7, $t6, 9
    /* E1ACC 800D2B1C 01F8C821 */  addu       $t9, $t7, $t8
    /* E1AD0 800D2B20 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* E1AD4 800D2B24 03217024 */  and        $t6, $t9, $at
    /* E1AD8 800D2B28 AC6E0004 */  sw         $t6, 0x4($v1)
    /* E1ADC 800D2B2C 8D030000 */  lw         $v1, 0x0($t0)
    /* E1AE0 800D2B30 3C190708 */  lui        $t9, (0x7080200 >> 16)
    /* E1AE4 800D2B34 37390200 */  ori        $t9, $t9, (0x7080200 & 0xFFFF)
    /* E1AE8 800D2B38 246F0008 */  addiu      $t7, $v1, 0x8
    /* E1AEC 800D2B3C AD0F0000 */  sw         $t7, 0x0($t0)
    /* E1AF0 800D2B40 3C18F590 */  lui        $t8, (0xF5900000 >> 16)
    /* E1AF4 800D2B44 AC780000 */  sw         $t8, 0x0($v1)
    /* E1AF8 800D2B48 AC790004 */  sw         $t9, 0x4($v1)
    /* E1AFC 800D2B4C 8D030000 */  lw         $v1, 0x0($t0)
    /* E1B00 800D2B50 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
    /* E1B04 800D2B54 3C19F300 */  lui        $t9, (0xF3000000 >> 16)
    /* E1B08 800D2B58 246E0008 */  addiu      $t6, $v1, 0x8
    /* E1B0C 800D2B5C AD0E0000 */  sw         $t6, 0x0($t0)
    /* E1B10 800D2B60 AC600004 */  sw         $zero, 0x4($v1)
    /* E1B14 800D2B64 AC6F0000 */  sw         $t7, 0x0($v1)
    /* E1B18 800D2B68 8D030000 */  lw         $v1, 0x0($t0)
    /* E1B1C 800D2B6C 3C0E070F */  lui        $t6, (0x70FF400 >> 16)
    /* E1B20 800D2B70 35CEF400 */  ori        $t6, $t6, (0x70FF400 & 0xFFFF)
    /* E1B24 800D2B74 24780008 */  addiu      $t8, $v1, 0x8
    /* E1B28 800D2B78 AD180000 */  sw         $t8, 0x0($t0)
    /* E1B2C 800D2B7C AC6E0004 */  sw         $t6, 0x4($v1)
    /* E1B30 800D2B80 AC790000 */  sw         $t9, 0x0($v1)
    /* E1B34 800D2B84 8D030000 */  lw         $v1, 0x0($t0)
    /* E1B38 800D2B88 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
    /* E1B3C 800D2B8C 3C19F200 */  lui        $t9, (0xF2000000 >> 16)
    /* E1B40 800D2B90 246F0008 */  addiu      $t7, $v1, 0x8
    /* E1B44 800D2B94 AD0F0000 */  sw         $t7, 0x0($t0)
    /* E1B48 800D2B98 AFA30018 */  sw         $v1, 0x18($sp)
    /* E1B4C 800D2B9C AC780000 */  sw         $t8, 0x0($v1)
    /* E1B50 800D2BA0 8FAE0018 */  lw         $t6, 0x18($sp)
    /* E1B54 800D2BA4 3C18F580 */  lui        $t8, (0xF5800400 >> 16)
    /* E1B58 800D2BA8 37180400 */  ori        $t8, $t8, (0xF5800400 & 0xFFFF)
    /* E1B5C 800D2BAC ADC00004 */  sw         $zero, 0x4($t6)
    /* E1B60 800D2BB0 8D030000 */  lw         $v1, 0x0($t0)
    /* E1B64 800D2BB4 3C0E0008 */  lui        $t6, (0x80200 >> 16)
    /* E1B68 800D2BB8 35CE0200 */  ori        $t6, $t6, (0x80200 & 0xFFFF)
    /* E1B6C 800D2BBC 246F0008 */  addiu      $t7, $v1, 0x8
    /* E1B70 800D2BC0 AD0F0000 */  sw         $t7, 0x0($t0)
    /* E1B74 800D2BC4 AFA30014 */  sw         $v1, 0x14($sp)
    /* E1B78 800D2BC8 AC780000 */  sw         $t8, 0x0($v1)
    /* E1B7C 800D2BCC 8FAF0014 */  lw         $t7, 0x14($sp)
    /* E1B80 800D2BD0 44842000 */  mtc1       $a0, $f4
    /* E1B84 800D2BD4 3C028006 */  lui        $v0, %hi(D_8005BB34)
    /* E1B88 800D2BD8 ADEE0004 */  sw         $t6, 0x4($t7)
    /* E1B8C 800D2BDC 8D030000 */  lw         $v1, 0x0($t0)
    /* E1B90 800D2BE0 3C0F0007 */  lui        $t7, (0x7C07C >> 16)
    /* E1B94 800D2BE4 35EFC07C */  ori        $t7, $t7, (0x7C07C & 0xFFFF)
    /* E1B98 800D2BE8 24780008 */  addiu      $t8, $v1, 0x8
    /* E1B9C 800D2BEC AD180000 */  sw         $t8, 0x0($t0)
    /* E1BA0 800D2BF0 AFA30010 */  sw         $v1, 0x10($sp)
    /* E1BA4 800D2BF4 AC790000 */  sw         $t9, 0x0($v1)
    /* E1BA8 800D2BF8 8FB80010 */  lw         $t8, 0x10($sp)
    /* E1BAC 800D2BFC 468021A0 */  cvt.s.w    $f6, $f4
    /* E1BB0 800D2C00 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* E1BB4 800D2C04 AF0F0004 */  sw         $t7, 0x4($t8)
    /* E1BB8 800D2C08 8D030000 */  lw         $v1, 0x0($t0)
    /* E1BBC 800D2C0C 2442BB34 */  addiu      $v0, $v0, %lo(D_8005BB34)
    /* E1BC0 800D2C10 24090080 */  addiu      $t1, $zero, 0x80
    /* E1BC4 800D2C14 24790008 */  addiu      $t9, $v1, 0x8
    /* E1BC8 800D2C18 AD190000 */  sw         $t9, 0x0($t0)
    /* E1BCC 800D2C1C AFA3000C */  sw         $v1, 0xC($sp)
    /* E1BD0 800D2C20 4600320D */  trunc.w.s  $f8, $f6
    /* E1BD4 800D2C24 AC6E0000 */  sw         $t6, 0x0($v1)
    /* E1BD8 800D2C28 8FB8000C */  lw         $t8, 0xC($sp)
    /* E1BDC 800D2C2C 240D0780 */  addiu      $t5, $zero, 0x780
    /* E1BE0 800D2C30 440E4000 */  mfc1       $t6, $f8
    /* E1BE4 800D2C34 AF000004 */  sw         $zero, 0x4($t8)
    /* E1BE8 800D2C38 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E1BEC 800D2C3C AFAE0000 */  sw         $t6, 0x0($sp)
    /* E1BF0 800D2C40 240A0800 */  addiu      $t2, $zero, 0x800
    /* E1BF4 800D2C44 A5EE0000 */  sh         $t6, 0x0($t7)
    /* E1BF8 800D2C48 87B80046 */  lh         $t8, 0x46($sp)
    /* E1BFC 800D2C4C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E1C00 800D2C50 44985000 */  mtc1       $t8, $f10
    /* E1C04 800D2C54 00000000 */  nop
    /* E1C08 800D2C58 46805420 */  cvt.s.w    $f16, $f10
    /* E1C0C 800D2C5C 4600848D */  trunc.w.s  $f18, $f16
    /* E1C10 800D2C60 44039000 */  mfc1       $v1, $f18
    /* E1C14 800D2C64 00000000 */  nop
    /* E1C18 800D2C68 A5C30002 */  sh         $v1, 0x2($t6)
    /* E1C1C 800D2C6C 87AF003A */  lh         $t7, 0x3A($sp)
    /* E1C20 800D2C70 8C590000 */  lw         $t9, 0x0($v0)
    /* E1C24 800D2C74 448F2000 */  mtc1       $t7, $f4
    /* E1C28 800D2C78 00000000 */  nop
    /* E1C2C 800D2C7C 468021A0 */  cvt.s.w    $f6, $f4
    /* E1C30 800D2C80 44872000 */  mtc1       $a3, $f4
    /* E1C34 800D2C84 4600320D */  trunc.w.s  $f8, $f6
    /* E1C38 800D2C88 468021A0 */  cvt.s.w    $f6, $f4
    /* E1C3C 800D2C8C 44054000 */  mfc1       $a1, $f8
    /* E1C40 800D2C90 00000000 */  nop
    /* E1C44 800D2C94 A7250004 */  sh         $a1, 0x4($t9)
    /* E1C48 800D2C98 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E1C4C 800D2C9C 4600320D */  trunc.w.s  $f8, $f6
    /* E1C50 800D2CA0 A5C00006 */  sh         $zero, 0x6($t6)
    /* E1C54 800D2CA4 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E1C58 800D2CA8 440C4000 */  mfc1       $t4, $f8
    /* E1C5C 800D2CAC A5E90008 */  sh         $t1, 0x8($t7)
    /* E1C60 800D2CB0 8C580000 */  lw         $t8, 0x0($v0)
    /* E1C64 800D2CB4 3C0F8014 */  lui        $t7, %hi(D_8013E108)
    /* E1C68 800D2CB8 25EFE108 */  addiu      $t7, $t7, %lo(D_8013E108)
    /* E1C6C 800D2CBC A700000A */  sh         $zero, 0xA($t8)
    /* E1C70 800D2CC0 93B9004F */  lbu        $t9, 0x4F($sp)
    /* E1C74 800D2CC4 001970C0 */  sll        $t6, $t9, 3
    /* E1C78 800D2CC8 01CF2021 */  addu       $a0, $t6, $t7
    /* E1C7C 800D2CCC 90980000 */  lbu        $t8, 0x0($a0)
    /* E1C80 800D2CD0 8C590000 */  lw         $t9, 0x0($v0)
    /* E1C84 800D2CD4 A338000C */  sb         $t8, 0xC($t9)
    /* E1C88 800D2CD8 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E1C8C 800D2CDC 908E0001 */  lbu        $t6, 0x1($a0)
    /* E1C90 800D2CE0 A1EE000D */  sb         $t6, 0xD($t7)
    /* E1C94 800D2CE4 8C590000 */  lw         $t9, 0x0($v0)
    /* E1C98 800D2CE8 90980002 */  lbu        $t8, 0x2($a0)
    /* E1C9C 800D2CEC A338000E */  sb         $t8, 0xE($t9)
    /* E1CA0 800D2CF0 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E1CA4 800D2CF4 908E0003 */  lbu        $t6, 0x3($a0)
    /* E1CA8 800D2CF8 A1EE000F */  sb         $t6, 0xF($t7)
    /* E1CAC 800D2CFC 87AE0036 */  lh         $t6, 0x36($sp)
    /* E1CB0 800D2D00 8C580000 */  lw         $t8, 0x0($v0)
    /* E1CB4 800D2D04 448E5000 */  mtc1       $t6, $f10
    /* E1CB8 800D2D08 27190010 */  addiu      $t9, $t8, 0x10
    /* E1CBC 800D2D0C AC590000 */  sw         $t9, 0x0($v0)
    /* E1CC0 800D2D10 46805420 */  cvt.s.w    $f16, $f10
    /* E1CC4 800D2D14 4600848D */  trunc.w.s  $f18, $f16
    /* E1CC8 800D2D18 440B9000 */  mfc1       $t3, $f18
    /* E1CCC 800D2D1C 00000000 */  nop
    /* E1CD0 800D2D20 A72B0000 */  sh         $t3, 0x0($t9)
    /* E1CD4 800D2D24 8C590000 */  lw         $t9, 0x0($v0)
    /* E1CD8 800D2D28 A7230002 */  sh         $v1, 0x2($t9)
    /* E1CDC 800D2D2C 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E1CE0 800D2D30 A5EC0004 */  sh         $t4, 0x4($t7)
    /* E1CE4 800D2D34 8C580000 */  lw         $t8, 0x0($v0)
    /* E1CE8 800D2D38 A7000006 */  sh         $zero, 0x6($t8)
    /* E1CEC 800D2D3C 8C590000 */  lw         $t9, 0x0($v0)
    /* E1CF0 800D2D40 A72D0008 */  sh         $t5, 0x8($t9)
    /* E1CF4 800D2D44 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E1CF8 800D2D48 A5C0000A */  sh         $zero, 0xA($t6)
    /* E1CFC 800D2D4C 8C580000 */  lw         $t8, 0x0($v0)
    /* E1D00 800D2D50 908F0000 */  lbu        $t7, 0x0($a0)
    /* E1D04 800D2D54 A30F000C */  sb         $t7, 0xC($t8)
    /* E1D08 800D2D58 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E1D0C 800D2D5C 90990001 */  lbu        $t9, 0x1($a0)
    /* E1D10 800D2D60 A1D9000D */  sb         $t9, 0xD($t6)
    /* E1D14 800D2D64 8C580000 */  lw         $t8, 0x0($v0)
    /* E1D18 800D2D68 908F0002 */  lbu        $t7, 0x2($a0)
    /* E1D1C 800D2D6C A30F000E */  sb         $t7, 0xE($t8)
    /* E1D20 800D2D70 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E1D24 800D2D74 90990003 */  lbu        $t9, 0x3($a0)
    /* E1D28 800D2D78 A1D9000F */  sb         $t9, 0xF($t6)
    /* E1D2C 800D2D7C 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E1D30 800D2D80 25F80010 */  addiu      $t8, $t7, 0x10
    /* E1D34 800D2D84 AC580000 */  sw         $t8, 0x0($v0)
    /* E1D38 800D2D88 A70B0000 */  sh         $t3, 0x0($t8)
    /* E1D3C 800D2D8C 87AE0042 */  lh         $t6, 0x42($sp)
    /* E1D40 800D2D90 8C580000 */  lw         $t8, 0x0($v0)
    /* E1D44 800D2D94 448E5000 */  mtc1       $t6, $f10
    /* E1D48 800D2D98 00000000 */  nop
    /* E1D4C 800D2D9C 46805420 */  cvt.s.w    $f16, $f10
    /* E1D50 800D2DA0 4600848D */  trunc.w.s  $f18, $f16
    /* E1D54 800D2DA4 44069000 */  mfc1       $a2, $f18
    /* E1D58 800D2DA8 00000000 */  nop
    /* E1D5C 800D2DAC A7060002 */  sh         $a2, 0x2($t8)
    /* E1D60 800D2DB0 8C590000 */  lw         $t9, 0x0($v0)
    /* E1D64 800D2DB4 A72C0004 */  sh         $t4, 0x4($t9)
    /* E1D68 800D2DB8 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E1D6C 800D2DBC A5C00006 */  sh         $zero, 0x6($t6)
    /* E1D70 800D2DC0 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E1D74 800D2DC4 A5ED0008 */  sh         $t5, 0x8($t7)
    /* E1D78 800D2DC8 8C580000 */  lw         $t8, 0x0($v0)
    /* E1D7C 800D2DCC A70A000A */  sh         $t2, 0xA($t8)
    /* E1D80 800D2DD0 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E1D84 800D2DD4 90990004 */  lbu        $t9, 0x4($a0)
    /* E1D88 800D2DD8 A1D9000C */  sb         $t9, 0xC($t6)
    /* E1D8C 800D2DDC 8C580000 */  lw         $t8, 0x0($v0)
    /* E1D90 800D2DE0 908F0005 */  lbu        $t7, 0x5($a0)
    /* E1D94 800D2DE4 A30F000D */  sb         $t7, 0xD($t8)
    /* E1D98 800D2DE8 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E1D9C 800D2DEC 90990006 */  lbu        $t9, 0x6($a0)
    /* E1DA0 800D2DF0 A1D9000E */  sb         $t9, 0xE($t6)
    /* E1DA4 800D2DF4 8C580000 */  lw         $t8, 0x0($v0)
    /* E1DA8 800D2DF8 908F0007 */  lbu        $t7, 0x7($a0)
    /* E1DAC 800D2DFC A30F000F */  sb         $t7, 0xF($t8)
    /* E1DB0 800D2E00 8C590000 */  lw         $t9, 0x0($v0)
    /* E1DB4 800D2E04 8FAF0000 */  lw         $t7, 0x0($sp)
    /* E1DB8 800D2E08 272E0010 */  addiu      $t6, $t9, 0x10
    /* E1DBC 800D2E0C AC4E0000 */  sw         $t6, 0x0($v0)
    /* E1DC0 800D2E10 A5CF0000 */  sh         $t7, 0x0($t6)
    /* E1DC4 800D2E14 8C590000 */  lw         $t9, 0x0($v0)
    /* E1DC8 800D2E18 A7260002 */  sh         $a2, 0x2($t9)
    /* E1DCC 800D2E1C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E1DD0 800D2E20 A5C50004 */  sh         $a1, 0x4($t6)
    /* E1DD4 800D2E24 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E1DD8 800D2E28 A5E00006 */  sh         $zero, 0x6($t7)
    /* E1DDC 800D2E2C 8C580000 */  lw         $t8, 0x0($v0)
    /* E1DE0 800D2E30 A7090008 */  sh         $t1, 0x8($t8)
    /* E1DE4 800D2E34 8C590000 */  lw         $t9, 0x0($v0)
    /* E1DE8 800D2E38 A72A000A */  sh         $t2, 0xA($t9)
    /* E1DEC 800D2E3C 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E1DF0 800D2E40 908E0004 */  lbu        $t6, 0x4($a0)
    /* E1DF4 800D2E44 A1EE000C */  sb         $t6, 0xC($t7)
    /* E1DF8 800D2E48 8C590000 */  lw         $t9, 0x0($v0)
    /* E1DFC 800D2E4C 90980005 */  lbu        $t8, 0x5($a0)
    /* E1E00 800D2E50 A338000D */  sb         $t8, 0xD($t9)
    /* E1E04 800D2E54 8C4F0000 */  lw         $t7, 0x0($v0)
    /* E1E08 800D2E58 908E0006 */  lbu        $t6, 0x6($a0)
    /* E1E0C 800D2E5C A1EE000E */  sb         $t6, 0xE($t7)
    /* E1E10 800D2E60 8C590000 */  lw         $t9, 0x0($v0)
    /* E1E14 800D2E64 90980007 */  lbu        $t8, 0x7($a0)
    /* E1E18 800D2E68 A338000F */  sb         $t8, 0xF($t9)
    /* E1E1C 800D2E6C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E1E20 800D2E70 8D030000 */  lw         $v1, 0x0($t0)
    /* E1E24 800D2E74 3C190400 */  lui        $t9, (0x400103F >> 16)
    /* E1E28 800D2E78 25CF0010 */  addiu      $t7, $t6, 0x10
    /* E1E2C 800D2E7C 24780008 */  addiu      $t8, $v1, 0x8
    /* E1E30 800D2E80 AC4F0000 */  sw         $t7, 0x0($v0)
    /* E1E34 800D2E84 AD180000 */  sw         $t8, 0x0($t0)
    /* E1E38 800D2E88 3739103F */  ori        $t9, $t9, (0x400103F & 0xFFFF)
    /* E1E3C 800D2E8C AC790000 */  sw         $t9, 0x0($v1)
    /* E1E40 800D2E90 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E1E44 800D2E94 25CFFFC0 */  addiu      $t7, $t6, -0x40
    /* E1E48 800D2E98 01E1C024 */  and        $t8, $t7, $at
    /* E1E4C 800D2E9C AC780004 */  sw         $t8, 0x4($v1)
    /* E1E50 800D2EA0 8D030000 */  lw         $v1, 0x0($t0)
    /* E1E54 800D2EA4 3C0F0006 */  lui        $t7, (0x60204 >> 16)
    /* E1E58 800D2EA8 3C0EB100 */  lui        $t6, (0xB1000206 >> 16)
    /* E1E5C 800D2EAC 24790008 */  addiu      $t9, $v1, 0x8
    /* E1E60 800D2EB0 AD190000 */  sw         $t9, 0x0($t0)
    /* E1E64 800D2EB4 35CE0206 */  ori        $t6, $t6, (0xB1000206 & 0xFFFF)
    /* E1E68 800D2EB8 35EF0204 */  ori        $t7, $t7, (0x60204 & 0xFFFF)
    /* E1E6C 800D2EBC 27BD0030 */  addiu      $sp, $sp, 0x30
    /* E1E70 800D2EC0 AC6F0004 */  sw         $t7, 0x4($v1)
    /* E1E74 800D2EC4 03E00008 */  jr         $ra
    /* E1E78 800D2EC8 AC6E0000 */   sw        $t6, 0x0($v1)
endlabel func_800D2AB0_E1A60
