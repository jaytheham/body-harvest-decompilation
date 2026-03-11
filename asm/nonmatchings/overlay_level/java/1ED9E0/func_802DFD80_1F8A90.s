nonmatching func_802DFD80_1F8A90, 0x210

glabel func_802DFD80_1F8A90
    /* 1F8A90 802DFD80 308700FF */  andi       $a3, $a0, 0xFF
    /* 1F8A94 802DFD84 24060050 */  addiu      $a2, $zero, 0x50
    /* 1F8A98 802DFD88 00E60019 */  multu      $a3, $a2
    /* 1F8A9C 802DFD8C 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* 1F8AA0 802DFD90 3C058005 */  lui        $a1, %hi(alienInstances)
    /* 1F8AA4 802DFD94 24A58198 */  addiu      $a1, $a1, %lo(alienInstances)
    /* 1F8AA8 802DFD98 AFB00040 */  sw         $s0, 0x40($sp)
    /* 1F8AAC 802DFD9C AFBF0044 */  sw         $ra, 0x44($sp)
    /* 1F8AB0 802DFDA0 AFA40068 */  sw         $a0, 0x68($sp)
    /* 1F8AB4 802DFDA4 00007012 */  mflo       $t6
    /* 1F8AB8 802DFDA8 00AE8021 */  addu       $s0, $a1, $t6
    /* 1F8ABC 802DFDAC 8E180020 */  lw         $t8, 0x20($s0)
    /* 1F8AC0 802DFDB0 920F001A */  lbu        $t7, 0x1A($s0)
    /* 1F8AC4 802DFDB4 0018CAC0 */  sll        $t9, $t8, 11
    /* 1F8AC8 802DFDB8 07200025 */  bltz       $t9, .L802DFE50_1F8B60
    /* 1F8ACC 802DFDBC A7AF005C */   sh        $t7, 0x5C($sp)
    /* 1F8AD0 802DFDC0 92020025 */  lbu        $v0, 0x25($s0)
    /* 1F8AD4 802DFDC4 00460019 */  multu      $v0, $a2
    /* 1F8AD8 802DFDC8 00004012 */  mflo       $t0
    /* 1F8ADC 802DFDCC 00A81821 */  addu       $v1, $a1, $t0
    /* 1F8AE0 802DFDD0 8C690020 */  lw         $t1, 0x20($v1)
    /* 1F8AE4 802DFDD4 312A4000 */  andi       $t2, $t1, 0x4000
    /* 1F8AE8 802DFDD8 5140000F */  beql       $t2, $zero, .L802DFE18_1F8B28
    /* 1F8AEC 802DFDDC 00E02025 */   or        $a0, $a3, $zero
    /* 1F8AF0 802DFDE0 906B0025 */  lbu        $t3, 0x25($v1)
    /* 1F8AF4 802DFDE4 3C01FFBF */  lui        $at, (0xFFBFFFFF >> 16)
    /* 1F8AF8 802DFDE8 3421FFFF */  ori        $at, $at, (0xFFBFFFFF & 0xFFFF)
    /* 1F8AFC 802DFDEC 01660019 */  multu      $t3, $a2
    /* 1F8B00 802DFDF0 00006012 */  mflo       $t4
    /* 1F8B04 802DFDF4 00AC2021 */  addu       $a0, $a1, $t4
    /* 1F8B08 802DFDF8 908D0000 */  lbu        $t5, 0x0($a0)
    /* 1F8B0C 802DFDFC 01A60019 */  multu      $t5, $a2
    /* 1F8B10 802DFE00 00007012 */  mflo       $t6
    /* 1F8B14 802DFE04 00AE1021 */  addu       $v0, $a1, $t6
    /* 1F8B18 802DFE08 8C4F0020 */  lw         $t7, 0x20($v0)
    /* 1F8B1C 802DFE0C 01E1C024 */  and        $t8, $t7, $at
    /* 1F8B20 802DFE10 AC580020 */  sw         $t8, 0x20($v0)
    /* 1F8B24 802DFE14 00E02025 */  or         $a0, $a3, $zero
  .L802DFE18_1F8B28:
    /* 1F8B28 802DFE18 24050011 */  addiu      $a1, $zero, 0x11
    /* 1F8B2C 802DFE1C AFA30050 */  sw         $v1, 0x50($sp)
    /* 1F8B30 802DFE20 0C04DD1A */  jal        func_80137468_146418
    /* 1F8B34 802DFE24 AFA7004C */   sw        $a3, 0x4C($sp)
    /* 1F8B38 802DFE28 8FA4004C */  lw         $a0, 0x4C($sp)
    /* 1F8B3C 802DFE2C 0C01E5E9 */  jal        func_800797A4_88754
    /* 1F8B40 802DFE30 24050002 */   addiu     $a1, $zero, 0x2
    /* 1F8B44 802DFE34 8FA30050 */  lw         $v1, 0x50($sp)
    /* 1F8B48 802DFE38 24090002 */  addiu      $t1, $zero, 0x2
    /* 1F8B4C 802DFE3C 8479002C */  lh         $t9, 0x2C($v1)
    /* 1F8B50 802DFE40 27280004 */  addiu      $t0, $t9, 0x4
    /* 1F8B54 802DFE44 A468002C */  sh         $t0, 0x2C($v1)
    /* 1F8B58 802DFE48 1000004C */  b          .L802DFF7C_1F8C8C
    /* 1F8B5C 802DFE4C A609002C */   sh        $t1, 0x2C($s0)
  .L802DFE50_1F8B60:
    /* 1F8B60 802DFE50 860A002C */  lh         $t2, 0x2C($s0)
    /* 1F8B64 802DFE54 24010001 */  addiu      $at, $zero, 0x1
    /* 1F8B68 802DFE58 55410049 */  bnel       $t2, $at, .L802DFF80_1F8C90
    /* 1F8B6C 802DFE5C 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 1F8B70 802DFE60 860B000C */  lh         $t3, 0xC($s0)
    /* 1F8B74 802DFE64 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* 1F8B78 802DFE68 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* 1F8B7C 802DFE6C 000B6100 */  sll        $t4, $t3, 4
    /* 1F8B80 802DFE70 006C6821 */  addu       $t5, $v1, $t4
    /* 1F8B84 802DFE74 81A2000C */  lb         $v0, 0xC($t5)
    /* 1F8B88 802DFE78 30E400FF */  andi       $a0, $a3, 0xFF
    /* 1F8B8C 802DFE7C 00027100 */  sll        $t6, $v0, 4
    /* 1F8B90 802DFE80 006E7821 */  addu       $t7, $v1, $t6
    /* 1F8B94 802DFE84 81E5000C */  lb         $a1, 0xC($t7)
    /* 1F8B98 802DFE88 0C02245B */  jal        func_8008916C_9811C
    /* 1F8B9C 802DFE8C A3A7006B */   sb        $a3, 0x6B($sp)
    /* 1F8BA0 802DFE90 93A4006B */  lbu        $a0, 0x6B($sp)
    /* 1F8BA4 802DFE94 0C0B7E37 */  jal        func_802DF8DC_1F85EC
    /* 1F8BA8 802DFE98 00402825 */   or        $a1, $v0, $zero
    /* 1F8BAC 802DFE9C 87B8005C */  lh         $t8, 0x5C($sp)
    /* 1F8BB0 802DFEA0 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 1F8BB4 802DFEA4 86040000 */  lh         $a0, 0x0($s0)
    /* 1F8BB8 802DFEA8 0018C880 */  sll        $t9, $t8, 2
    /* 1F8BBC 802DFEAC 0338C823 */  subu       $t9, $t9, $t8
    /* 1F8BC0 802DFEB0 0019C880 */  sll        $t9, $t9, 2
    /* 1F8BC4 802DFEB4 0338C821 */  addu       $t9, $t9, $t8
    /* 1F8BC8 802DFEB8 0019C8C0 */  sll        $t9, $t9, 3
    /* 1F8BCC 802DFEBC 00F93821 */  addu       $a3, $a3, $t9
    /* 1F8BD0 802DFEC0 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 1F8BD4 802DFEC4 86050002 */  lh         $a1, 0x2($s0)
    /* 1F8BD8 802DFEC8 86060004 */  lh         $a2, 0x4($s0)
    /* 1F8BDC 802DFECC 0C037E12 */  jal        func_800DF848_EE7F8
    /* 1F8BE0 802DFED0 AFA00010 */   sw        $zero, 0x10($sp)
    /* 1F8BE4 802DFED4 2408007F */  addiu      $t0, $zero, 0x7F
    /* 1F8BE8 802DFED8 24090064 */  addiu      $t1, $zero, 0x64
    /* 1F8BEC 802DFEDC 240A00FF */  addiu      $t2, $zero, 0xFF
    /* 1F8BF0 802DFEE0 240B0014 */  addiu      $t3, $zero, 0x14
    /* 1F8BF4 802DFEE4 240C000A */  addiu      $t4, $zero, 0xA
    /* 1F8BF8 802DFEE8 240D00FF */  addiu      $t5, $zero, 0xFF
    /* 1F8BFC 802DFEEC 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 1F8C00 802DFEF0 AFAE002C */  sw         $t6, 0x2C($sp)
    /* 1F8C04 802DFEF4 AFAD0028 */  sw         $t5, 0x28($sp)
    /* 1F8C08 802DFEF8 AFAC0024 */  sw         $t4, 0x24($sp)
    /* 1F8C0C 802DFEFC AFAB0020 */  sw         $t3, 0x20($sp)
    /* 1F8C10 802DFF00 AFAA001C */  sw         $t2, 0x1C($sp)
    /* 1F8C14 802DFF04 AFA90018 */  sw         $t1, 0x18($sp)
    /* 1F8C18 802DFF08 AFA80010 */  sw         $t0, 0x10($sp)
    /* 1F8C1C 802DFF0C 86040000 */  lh         $a0, 0x0($s0)
    /* 1F8C20 802DFF10 86050002 */  lh         $a1, 0x2($s0)
    /* 1F8C24 802DFF14 86060004 */  lh         $a2, 0x4($s0)
    /* 1F8C28 802DFF18 00003825 */  or         $a3, $zero, $zero
    /* 1F8C2C 802DFF1C AFA00014 */  sw         $zero, 0x14($sp)
    /* 1F8C30 802DFF20 0C031507 */  jal        func_800C541C_D43CC
    /* 1F8C34 802DFF24 AFA00030 */   sw        $zero, 0x30($sp)
    /* 1F8C38 802DFF28 240FFF81 */  addiu      $t7, $zero, -0x7F
    /* 1F8C3C 802DFF2C 24180064 */  addiu      $t8, $zero, 0x64
    /* 1F8C40 802DFF30 241900FF */  addiu      $t9, $zero, 0xFF
    /* 1F8C44 802DFF34 24080014 */  addiu      $t0, $zero, 0x14
    /* 1F8C48 802DFF38 2409000A */  addiu      $t1, $zero, 0xA
    /* 1F8C4C 802DFF3C 240A00FF */  addiu      $t2, $zero, 0xFF
    /* 1F8C50 802DFF40 240B00FF */  addiu      $t3, $zero, 0xFF
    /* 1F8C54 802DFF44 AFAB002C */  sw         $t3, 0x2C($sp)
    /* 1F8C58 802DFF48 AFAA0028 */  sw         $t2, 0x28($sp)
    /* 1F8C5C 802DFF4C AFA90024 */  sw         $t1, 0x24($sp)
    /* 1F8C60 802DFF50 AFA80020 */  sw         $t0, 0x20($sp)
    /* 1F8C64 802DFF54 AFB9001C */  sw         $t9, 0x1C($sp)
    /* 1F8C68 802DFF58 AFB80018 */  sw         $t8, 0x18($sp)
    /* 1F8C6C 802DFF5C AFAF0010 */  sw         $t7, 0x10($sp)
    /* 1F8C70 802DFF60 86040000 */  lh         $a0, 0x0($s0)
    /* 1F8C74 802DFF64 86050002 */  lh         $a1, 0x2($s0)
    /* 1F8C78 802DFF68 86060004 */  lh         $a2, 0x4($s0)
    /* 1F8C7C 802DFF6C 00003825 */  or         $a3, $zero, $zero
    /* 1F8C80 802DFF70 AFA00014 */  sw         $zero, 0x14($sp)
    /* 1F8C84 802DFF74 0C031507 */  jal        func_800C541C_D43CC
    /* 1F8C88 802DFF78 AFA00030 */   sw        $zero, 0x30($sp)
  .L802DFF7C_1F8C8C:
    /* 1F8C8C 802DFF7C 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802DFF80_1F8C90:
    /* 1F8C90 802DFF80 8FB00040 */  lw         $s0, 0x40($sp)
    /* 1F8C94 802DFF84 27BD0068 */  addiu      $sp, $sp, 0x68
    /* 1F8C98 802DFF88 03E00008 */  jr         $ra
    /* 1F8C9C 802DFF8C 00000000 */   nop
endlabel func_802DFD80_1F8A90
