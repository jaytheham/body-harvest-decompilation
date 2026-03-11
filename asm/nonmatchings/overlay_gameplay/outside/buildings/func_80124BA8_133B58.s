nonmatching func_80124BA8_133B58, 0x98

glabel func_80124BA8_133B58
    /* 133B58 80124BA8 3C048016 */  lui        $a0, %hi(D_8015F760)
    /* 133B5C 80124BAC 44800000 */  mtc1       $zero, $f0
    /* 133B60 80124BB0 2484F760 */  addiu      $a0, $a0, %lo(D_8015F760)
    /* 133B64 80124BB4 2403003F */  addiu      $v1, $zero, 0x3F
  .L80124BB8_133B68:
    /* 133B68 80124BB8 00601025 */  or         $v0, $v1, $zero
    /* 133B6C 80124BBC E4800010 */  swc1       $f0, 0x10($a0)
    /* 133B70 80124BC0 E4800014 */  swc1       $f0, 0x14($a0)
    /* 133B74 80124BC4 E4800018 */  swc1       $f0, 0x18($a0)
    /* 133B78 80124BC8 A4800028 */  sh         $zero, 0x28($a0)
    /* 133B7C 80124BCC AC800020 */  sw         $zero, 0x20($a0)
    /* 133B80 80124BD0 AC800024 */  sw         $zero, 0x24($a0)
    /* 133B84 80124BD4 2484FFD0 */  addiu      $a0, $a0, -0x30
    /* 133B88 80124BD8 1460FFF7 */  bnez       $v1, .L80124BB8_133B68
    /* 133B8C 80124BDC 2463FFFF */   addiu     $v1, $v1, -0x1
    /* 133B90 80124BE0 3C048016 */  lui        $a0, %hi(D_8015F9AC)
    /* 133B94 80124BE4 2484F9AC */  addiu      $a0, $a0, %lo(D_8015F9AC)
    /* 133B98 80124BE8 2403000F */  addiu      $v1, $zero, 0xF
  .L80124BEC_133B9C:
    /* 133B9C 80124BEC 908E001F */  lbu        $t6, 0x1F($a0)
    /* 133BA0 80124BF0 00601025 */  or         $v0, $v1, $zero
    /* 133BA4 80124BF4 2484FFDC */  addiu      $a0, $a0, -0x24
    /* 133BA8 80124BF8 31CFFFFD */  andi       $t7, $t6, 0xFFFD
    /* 133BAC 80124BFC 01E0C025 */  or         $t8, $t7, $zero
    /* 133BB0 80124C00 A08F0043 */  sb         $t7, 0x43($a0)
    /* 133BB4 80124C04 3319FFFE */  andi       $t9, $t8, 0xFFFE
    /* 133BB8 80124C08 A0990043 */  sb         $t9, 0x43($a0)
    /* 133BBC 80124C0C 1460FFF7 */  bnez       $v1, .L80124BEC_133B9C
    /* 133BC0 80124C10 2463FFFF */   addiu     $v1, $v1, -0x1
    /* 133BC4 80124C14 3C028014 */  lui        $v0, %hi(D_80140AC8)
    /* 133BC8 80124C18 3C038016 */  lui        $v1, %hi(D_8015F9E8)
    /* 133BCC 80124C1C 2463F9E8 */  addiu      $v1, $v1, %lo(D_8015F9E8)
    /* 133BD0 80124C20 24420AC8 */  addiu      $v0, $v0, %lo(D_80140AC8)
    /* 133BD4 80124C24 AC400000 */  sw         $zero, 0x0($v0)
    /* 133BD8 80124C28 AC600000 */  sw         $zero, 0x0($v1)
    /* 133BDC 80124C2C 3C018016 */  lui        $at, %hi(D_8015F9E4)
    /* 133BE0 80124C30 AC20F9E4 */  sw         $zero, %lo(D_8015F9E4)($at)
    /* 133BE4 80124C34 3C018016 */  lui        $at, %hi(D_8015FA38)
    /* 133BE8 80124C38 03E00008 */  jr         $ra
    /* 133BEC 80124C3C A420FA38 */   sh        $zero, %lo(D_8015FA38)($at)
endlabel func_80124BA8_133B58
