nonmatching func_80087AFC_96AAC, 0x154

glabel func_80087AFC_96AAC
    /* 96AAC 80087AFC 308600FF */  andi       $a2, $a0, 0xFF
    /* 96AB0 80087B00 00067080 */  sll        $t6, $a2, 2
    /* 96AB4 80087B04 01C67021 */  addu       $t6, $t6, $a2
    /* 96AB8 80087B08 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 96ABC 80087B0C 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 96AC0 80087B10 000E7100 */  sll        $t6, $t6, 4
    /* 96AC4 80087B14 01CF1021 */  addu       $v0, $t6, $t7
    /* 96AC8 80087B18 8C450020 */  lw         $a1, 0x20($v0)
    /* 96ACC 80087B1C 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 96AD0 80087B20 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 96AD4 80087B24 30B80600 */  andi       $t8, $a1, 0x600
    /* 96AD8 80087B28 AFA40038 */  sw         $a0, 0x38($sp)
    /* 96ADC 80087B2C 9047001A */  lbu        $a3, 0x1A($v0)
    /* 96AE0 80087B30 24080004 */  addiu      $t0, $zero, 0x4
    /* 96AE4 80087B34 13000002 */  beqz       $t8, .L80087B40_96AF0
    /* 96AE8 80087B38 03002825 */   or        $a1, $t8, $zero
    /* 96AEC 80087B3C 24080001 */  addiu      $t0, $zero, 0x1
  .L80087B40_96AF0:
    /* 96AF0 80087B40 8443002C */  lh         $v1, 0x2C($v0)
    /* 96AF4 80087B44 24010008 */  addiu      $at, $zero, 0x8
    /* 96AF8 80087B48 1860003B */  blez       $v1, .L80087C38_96BE8
    /* 96AFC 80087B4C 00000000 */   nop
    /* 96B00 80087B50 10610006 */  beq        $v1, $at, .L80087B6C_96B1C
    /* 96B04 80087B54 00074880 */   sll       $t1, $a3, 2
    /* 96B08 80087B58 14A00034 */  bnez       $a1, .L80087C2C_96BDC
    /* 96B0C 80087B5C 2401FFFC */   addiu     $at, $zero, -0x4
    /* 96B10 80087B60 0061C824 */  and        $t9, $v1, $at
    /* 96B14 80087B64 24010020 */  addiu      $at, $zero, 0x20
    /* 96B18 80087B68 17210030 */  bne        $t9, $at, .L80087C2C_96BDC
  .L80087B6C_96B1C:
    /* 96B1C 80087B6C 01274823 */   subu      $t1, $t1, $a3
    /* 96B20 80087B70 00094880 */  sll        $t1, $t1, 2
    /* 96B24 80087B74 01274821 */  addu       $t1, $t1, $a3
    /* 96B28 80087B78 3C0A8025 */  lui        $t2, %hi(alienSpecs)
    /* 96B2C 80087B7C 254A6680 */  addiu      $t2, $t2, %lo(alienSpecs)
    /* 96B30 80087B80 000948C0 */  sll        $t1, $t1, 3
    /* 96B34 80087B84 012A1821 */  addu       $v1, $t1, $t2
    /* 96B38 80087B88 906B0016 */  lbu        $t3, 0x16($v1)
    /* 96B3C 80087B8C 24010001 */  addiu      $at, $zero, 0x1
    /* 96B40 80087B90 240900C8 */  addiu      $t1, $zero, 0xC8
    /* 96B44 80087B94 316C000F */  andi       $t4, $t3, 0xF
    /* 96B48 80087B98 15810014 */  bne        $t4, $at, .L80087BEC_96B9C
    /* 96B4C 80087B9C 241900C8 */   addiu     $t9, $zero, 0xC8
    /* 96B50 80087BA0 240D00C8 */  addiu      $t5, $zero, 0xC8
    /* 96B54 80087BA4 240E00C8 */  addiu      $t6, $zero, 0xC8
    /* 96B58 80087BA8 240F00DC */  addiu      $t7, $zero, 0xDC
    /* 96B5C 80087BAC 24180001 */  addiu      $t8, $zero, 0x1
    /* 96B60 80087BB0 AFB8001C */  sw         $t8, 0x1C($sp)
    /* 96B64 80087BB4 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 96B68 80087BB8 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 96B6C 80087BBC AFAD0010 */  sw         $t5, 0x10($sp)
    /* 96B70 80087BC0 84440000 */  lh         $a0, 0x0($v0)
    /* 96B74 80087BC4 84450002 */  lh         $a1, 0x2($v0)
    /* 96B78 80087BC8 84460004 */  lh         $a2, 0x4($v0)
    /* 96B7C 80087BCC 84670038 */  lh         $a3, 0x38($v1)
    /* 96B80 80087BD0 AFA2002C */  sw         $v0, 0x2C($sp)
    /* 96B84 80087BD4 0C033E03 */  jal        func_800CF80C_DE7BC
    /* 96B88 80087BD8 AFA80030 */   sw        $t0, 0x30($sp)
    /* 96B8C 80087BDC 8FA2002C */  lw         $v0, 0x2C($sp)
    /* 96B90 80087BE0 8FA80030 */  lw         $t0, 0x30($sp)
    /* 96B94 80087BE4 10000011 */  b          .L80087C2C_96BDC
    /* 96B98 80087BE8 8443002C */   lh        $v1, 0x2C($v0)
  .L80087BEC_96B9C:
    /* 96B9C 80087BEC 240A00DC */  addiu      $t2, $zero, 0xDC
    /* 96BA0 80087BF0 240B0001 */  addiu      $t3, $zero, 0x1
    /* 96BA4 80087BF4 AFAB001C */  sw         $t3, 0x1C($sp)
    /* 96BA8 80087BF8 AFAA0018 */  sw         $t2, 0x18($sp)
    /* 96BAC 80087BFC 84440000 */  lh         $a0, 0x0($v0)
    /* 96BB0 80087C00 84450002 */  lh         $a1, 0x2($v0)
    /* 96BB4 80087C04 84460004 */  lh         $a2, 0x4($v0)
    /* 96BB8 80087C08 8467000C */  lh         $a3, 0xC($v1)
    /* 96BBC 80087C0C AFB90010 */  sw         $t9, 0x10($sp)
    /* 96BC0 80087C10 AFA90014 */  sw         $t1, 0x14($sp)
    /* 96BC4 80087C14 AFA2002C */  sw         $v0, 0x2C($sp)
    /* 96BC8 80087C18 0C033E03 */  jal        func_800CF80C_DE7BC
    /* 96BCC 80087C1C AFA80030 */   sw        $t0, 0x30($sp)
    /* 96BD0 80087C20 8FA2002C */  lw         $v0, 0x2C($sp)
    /* 96BD4 80087C24 8FA80030 */  lw         $t0, 0x30($sp)
    /* 96BD8 80087C28 8443002C */  lh         $v1, 0x2C($v0)
  .L80087C2C_96BDC:
    /* 96BDC 80087C2C 00686023 */  subu       $t4, $v1, $t0
    /* 96BE0 80087C30 10000003 */  b          .L80087C40_96BF0
    /* 96BE4 80087C34 A44C002C */   sh        $t4, 0x2C($v0)
  .L80087C38_96BE8:
    /* 96BE8 80087C38 0C01E644 */  jal        func_80079910_888C0
    /* 96BEC 80087C3C 00C02025 */   or        $a0, $a2, $zero
  .L80087C40_96BF0:
    /* 96BF0 80087C40 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 96BF4 80087C44 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 96BF8 80087C48 03E00008 */  jr         $ra
    /* 96BFC 80087C4C 00000000 */   nop
endlabel func_80087AFC_96AAC
