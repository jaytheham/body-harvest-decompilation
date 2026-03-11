nonmatching func_8008FBD4_60084, 0x1C8

glabel func_8008FBD4_60084
    /* 60084 8008FBD4 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* 60088 8008FBD8 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* 6008C 8008FBDC 8C620000 */  lw         $v0, 0x0($v1)
    /* 60090 8008FBE0 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 60094 8008FBE4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 60098 8008FBE8 244E0008 */  addiu      $t6, $v0, 0x8
    /* 6009C 8008FBEC AC6E0000 */  sw         $t6, 0x0($v1)
    /* 600A0 8008FBF0 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
    /* 600A4 8008FBF4 AC4D0000 */  sw         $t5, 0x0($v0)
    /* 600A8 8008FBF8 AC400004 */  sw         $zero, 0x4($v0)
    /* 600AC 8008FBFC 8C620000 */  lw         $v0, 0x0($v1)
    /* 600B0 8008FC00 3C190101 */  lui        $t9, %hi(D_100DC00)
    /* 600B4 8008FC04 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 600B8 8008FC08 244F0008 */  addiu      $t7, $v0, 0x8
    /* 600BC 8008FC0C AC6F0000 */  sw         $t7, 0x0($v1)
    /* 600C0 8008FC10 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 600C4 8008FC14 2739DC00 */  addiu      $t9, $t9, %lo(D_100DC00)
    /* 600C8 8008FC18 03217024 */  and        $t6, $t9, $at
    /* 600CC 8008FC1C 3C18FD90 */  lui        $t8, (0xFD900000 >> 16)
    /* 600D0 8008FC20 AC580000 */  sw         $t8, 0x0($v0)
    /* 600D4 8008FC24 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 600D8 8008FC28 8C620000 */  lw         $v0, 0x0($v1)
    /* 600DC 8008FC2C 3C190708 */  lui        $t9, (0x7080200 >> 16)
    /* 600E0 8008FC30 37390200 */  ori        $t9, $t9, (0x7080200 & 0xFFFF)
    /* 600E4 8008FC34 244F0008 */  addiu      $t7, $v0, 0x8
    /* 600E8 8008FC38 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 600EC 8008FC3C 3C18F590 */  lui        $t8, (0xF5900000 >> 16)
    /* 600F0 8008FC40 AC580000 */  sw         $t8, 0x0($v0)
    /* 600F4 8008FC44 AC590004 */  sw         $t9, 0x4($v0)
    /* 600F8 8008FC48 8C620000 */  lw         $v0, 0x0($v1)
    /* 600FC 8008FC4C 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
    /* 60100 8008FC50 3C19F300 */  lui        $t9, (0xF3000000 >> 16)
    /* 60104 8008FC54 244E0008 */  addiu      $t6, $v0, 0x8
    /* 60108 8008FC58 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 6010C 8008FC5C AC400004 */  sw         $zero, 0x4($v0)
    /* 60110 8008FC60 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 60114 8008FC64 8C620000 */  lw         $v0, 0x0($v1)
    /* 60118 8008FC68 3C0E070F */  lui        $t6, (0x70FF400 >> 16)
    /* 6011C 8008FC6C 35CEF400 */  ori        $t6, $t6, (0x70FF400 & 0xFFFF)
    /* 60120 8008FC70 24580008 */  addiu      $t8, $v0, 0x8
    /* 60124 8008FC74 AC780000 */  sw         $t8, 0x0($v1)
    /* 60128 8008FC78 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 6012C 8008FC7C AC590000 */  sw         $t9, 0x0($v0)
    /* 60130 8008FC80 8C620000 */  lw         $v0, 0x0($v1)
    /* 60134 8008FC84 3C19F580 */  lui        $t9, (0xF5800400 >> 16)
    /* 60138 8008FC88 3C0E0008 */  lui        $t6, (0x80200 >> 16)
    /* 6013C 8008FC8C 244F0008 */  addiu      $t7, $v0, 0x8
    /* 60140 8008FC90 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 60144 8008FC94 AC400004 */  sw         $zero, 0x4($v0)
    /* 60148 8008FC98 AC4D0000 */  sw         $t5, 0x0($v0)
    /* 6014C 8008FC9C 8C620000 */  lw         $v0, 0x0($v1)
    /* 60150 8008FCA0 35CE0200 */  ori        $t6, $t6, (0x80200 & 0xFFFF)
    /* 60154 8008FCA4 37390400 */  ori        $t9, $t9, (0xF5800400 & 0xFFFF)
    /* 60158 8008FCA8 24580008 */  addiu      $t8, $v0, 0x8
    /* 6015C 8008FCAC AC780000 */  sw         $t8, 0x0($v1)
    /* 60160 8008FCB0 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 60164 8008FCB4 AC590000 */  sw         $t9, 0x0($v0)
    /* 60168 8008FCB8 8C620000 */  lw         $v0, 0x0($v1)
    /* 6016C 8008FCBC 3C190007 */  lui        $t9, (0x7C07C >> 16)
    /* 60170 8008FCC0 3739C07C */  ori        $t9, $t9, (0x7C07C & 0xFFFF)
    /* 60174 8008FCC4 244F0008 */  addiu      $t7, $v0, 0x8
    /* 60178 8008FCC8 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 6017C 8008FCCC 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* 60180 8008FCD0 AC580000 */  sw         $t8, 0x0($v0)
    /* 60184 8008FCD4 AC590004 */  sw         $t9, 0x4($v0)
    /* 60188 8008FCD8 8C620000 */  lw         $v0, 0x0($v1)
    /* 6018C 8008FCDC 3C19800E */  lui        $t9, %hi(D_800DE0B0)
    /* 60190 8008FCE0 240F0020 */  addiu      $t7, $zero, 0x20
    /* 60194 8008FCE4 244E0008 */  addiu      $t6, $v0, 0x8
    /* 60198 8008FCE8 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 6019C 8008FCEC AC400004 */  sw         $zero, 0x4($v0)
    /* 601A0 8008FCF0 AC4D0000 */  sw         $t5, 0x0($v0)
    /* 601A4 8008FCF4 8739E0B0 */  lh         $t9, %lo(D_800DE0B0)($t9)
    /* 601A8 8008FCF8 3C01800E */  lui        $at, %hi(D_800DE12D)
    /* 601AC 8008FCFC A02FE12D */  sb         $t7, %lo(D_800DE12D)($at)
    /* 601B0 8008FD00 44992000 */  mtc1       $t9, $f4
    /* 601B4 8008FD04 3C1F800E */  lui        $ra, %hi(D_800DE118)
    /* 601B8 8008FD08 3C01800E */  lui        $at, %hi(D_800DE12E)
    /* 601BC 8008FD0C 468021A0 */  cvt.s.w    $f6, $f4
    /* 601C0 8008FD10 24180020 */  addiu      $t8, $zero, 0x20
    /* 601C4 8008FD14 27FFE118 */  addiu      $ra, $ra, %lo(D_800DE118)
    /* 601C8 8008FD18 A038E12E */  sb         $t8, %lo(D_800DE12E)($at)
    /* 601CC 8008FD1C 3C0E800E */  lui        $t6, %hi(D_800DE0B2)
    /* 601D0 8008FD20 3C0F800E */  lui        $t7, %hi(D_800DE0B4)
    /* 601D4 8008FD24 E7E60000 */  swc1       $f6, 0x0($ra)
    /* 601D8 8008FD28 85CEE0B2 */  lh         $t6, %lo(D_800DE0B2)($t6)
    /* 601DC 8008FD2C 24180019 */  addiu      $t8, $zero, 0x19
    /* 601E0 8008FD30 3C01800E */  lui        $at, %hi(D_800DE124)
    /* 601E4 8008FD34 448E4000 */  mtc1       $t6, $f8
    /* 601E8 8008FD38 A3B80044 */  sb         $t8, 0x44($sp)
    /* 601EC 8008FD3C 241800F0 */  addiu      $t8, $zero, 0xF0
    /* 601F0 8008FD40 468042A0 */  cvt.s.w    $f10, $f8
    /* 601F4 8008FD44 241900FF */  addiu      $t9, $zero, 0xFF
    /* 601F8 8008FD48 240E0028 */  addiu      $t6, $zero, 0x28
    /* 601FC 8008FD4C A3B90045 */  sb         $t9, 0x45($sp)
    /* 60200 8008FD50 A3AE0046 */  sb         $t6, 0x46($sp)
    /* 60204 8008FD54 E7EA0004 */  swc1       $f10, 0x4($ra)
    /* 60208 8008FD58 85EFE0B4 */  lh         $t7, %lo(D_800DE0B4)($t7)
    /* 6020C 8008FD5C 448F8000 */  mtc1       $t7, $f16
    /* 60210 8008FD60 27AF0044 */  addiu      $t7, $sp, 0x44
    /* 60214 8008FD64 468084A0 */  cvt.s.w    $f18, $f16
    /* 60218 8008FD68 E7F20008 */  swc1       $f18, 0x8($ra)
    /* 6021C 8008FD6C AC2FE124 */  sw         $t7, %lo(D_800DE124)($at)
    /* 60220 8008FD70 3C01800E */  lui        $at, %hi(D_800DE12C)
    /* 60224 8008FD74 A038E12C */  sb         $t8, %lo(D_800DE12C)($at)
    /* 60228 8008FD78 3C0143E1 */  lui        $at, (0x43E10000 >> 16)
    /* 6022C 8008FD7C 44812000 */  mtc1       $at, $f4
    /* 60230 8008FD80 3C01800E */  lui        $at, %hi(D_800DE128)
    /* 60234 8008FD84 0C023453 */  jal        func_8008D14C_5D5FC
    /* 60238 8008FD88 E424E128 */   swc1      $f4, %lo(D_800DE128)($at)
    /* 6023C 8008FD8C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 60240 8008FD90 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 60244 8008FD94 03E00008 */  jr         $ra
    /* 60248 8008FD98 00000000 */   nop
endlabel func_8008FBD4_60084
