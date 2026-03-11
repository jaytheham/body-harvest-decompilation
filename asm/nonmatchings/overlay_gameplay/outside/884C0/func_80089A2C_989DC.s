nonmatching func_80089A2C_989DC, 0x214

glabel func_80089A2C_989DC
    /* 989DC 80089A2C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 989E0 80089A30 24060050 */  addiu      $a2, $zero, 0x50
    /* 989E4 80089A34 01C60019 */  multu      $t6, $a2
    /* 989E8 80089A38 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* 989EC 80089A3C 3C058005 */  lui        $a1, %hi(alienInstances)
    /* 989F0 80089A40 24A58198 */  addiu      $a1, $a1, %lo(alienInstances)
    /* 989F4 80089A44 AFB00040 */  sw         $s0, 0x40($sp)
    /* 989F8 80089A48 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 989FC 80089A4C AFA40058 */  sw         $a0, 0x58($sp)
    /* 98A00 80089A50 00007812 */  mflo       $t7
    /* 98A04 80089A54 00AF8021 */  addu       $s0, $a1, $t7
    /* 98A08 80089A58 8E020020 */  lw         $v0, 0x20($s0)
    /* 98A0C 80089A5C 0002C2C0 */  sll        $t8, $v0, 11
    /* 98A10 80089A60 07000072 */  bltz       $t8, .L80089C2C_98BDC
    /* 98A14 80089A64 30590600 */   andi      $t9, $v0, 0x600
    /* 98A18 80089A68 1320004C */  beqz       $t9, .L80089B9C_98B4C
    /* 98A1C 80089A6C 3C088003 */   lui       $t0, %hi(D_80031420)
    /* 98A20 80089A70 8D081420 */  lw         $t0, %lo(D_80031420)($t0)
    /* 98A24 80089A74 31090003 */  andi       $t1, $t0, 0x3
    /* 98A28 80089A78 51200049 */  beql       $t1, $zero, .L80089BA0_98B50
    /* 98A2C 80089A7C 92040025 */   lbu       $a0, 0x25($s0)
    /* 98A30 80089A80 0C000E38 */  jal        func_800038E0_44E0
    /* 98A34 80089A84 00000000 */   nop
    /* 98A38 80089A88 0C000E38 */  jal        func_800038E0_44E0
    /* 98A3C 80089A8C A7A20048 */   sh        $v0, 0x48($sp)
    /* 98A40 80089A90 0C000E38 */  jal        func_800038E0_44E0
    /* 98A44 80089A94 A7A2004A */   sh        $v0, 0x4A($sp)
    /* 98A48 80089A98 0C000E38 */  jal        func_800038E0_44E0
    /* 98A4C 80089A9C A7A2004C */   sh        $v0, 0x4C($sp)
    /* 98A50 80089AA0 24030032 */  addiu      $v1, $zero, 0x32
    /* 98A54 80089AA4 97AA0048 */  lhu        $t2, 0x48($sp)
    /* 98A58 80089AA8 97AE004A */  lhu        $t6, 0x4A($sp)
    /* 98A5C 80089AAC 97A9004C */  lhu        $t1, 0x4C($sp)
    /* 98A60 80089AB0 0143001A */  div        $zero, $t2, $v1
    /* 98A64 80089AB4 00003810 */  mfhi       $a3
    /* 98A68 80089AB8 24E7FFE7 */  addiu      $a3, $a3, -0x19
    /* 98A6C 80089ABC 00075E00 */  sll        $t3, $a3, 24
    /* 98A70 80089AC0 01C3001A */  div        $zero, $t6, $v1
    /* 98A74 80089AC4 00007810 */  mfhi       $t7
    /* 98A78 80089AC8 000B6603 */  sra        $t4, $t3, 24
    /* 98A7C 80089ACC 01803825 */  or         $a3, $t4, $zero
    /* 98A80 80089AD0 240D0050 */  addiu      $t5, $zero, 0x50
    /* 98A84 80089AD4 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 98A88 80089AD8 25F8FFE7 */  addiu      $t8, $t7, -0x19
    /* 98A8C 80089ADC 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 98A90 80089AE0 24190019 */  addiu      $t9, $zero, 0x19
    /* 98A94 80089AE4 24080005 */  addiu      $t0, $zero, 0x5
    /* 98A98 80089AE8 AFA8001C */  sw         $t0, 0x1C($sp)
    /* 98A9C 80089AEC AFB90018 */  sw         $t9, 0x18($sp)
    /* 98AA0 80089AF0 AFAF0034 */  sw         $t7, 0x34($sp)
    /* 98AA4 80089AF4 AFB80014 */  sw         $t8, 0x14($sp)
    /* 98AA8 80089AF8 86040000 */  lh         $a0, 0x0($s0)
    /* 98AAC 80089AFC 86050002 */  lh         $a1, 0x2($s0)
    /* 98AB0 80089B00 86060004 */  lh         $a2, 0x4($s0)
    /* 98AB4 80089B04 14600002 */  bnez       $v1, .L80089B10_98AC0
    /* 98AB8 80089B08 00000000 */   nop
    /* 98ABC 80089B0C 0007000D */  break      7
  .L80089B10_98AC0:
    /* 98AC0 80089B10 2401FFFF */  addiu      $at, $zero, -0x1
    /* 98AC4 80089B14 14610004 */  bne        $v1, $at, .L80089B28_98AD8
    /* 98AC8 80089B18 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 98ACC 80089B1C 15410002 */  bne        $t2, $at, .L80089B28_98AD8
    /* 98AD0 80089B20 00000000 */   nop
    /* 98AD4 80089B24 0006000D */  break      6
  .L80089B28_98AD8:
    /* 98AD8 80089B28 AFA00028 */  sw         $zero, 0x28($sp)
    /* 98ADC 80089B2C 14600002 */  bnez       $v1, .L80089B38_98AE8
    /* 98AE0 80089B30 00000000 */   nop
    /* 98AE4 80089B34 0007000D */  break      7
  .L80089B38_98AE8:
    /* 98AE8 80089B38 2401FFFF */  addiu      $at, $zero, -0x1
    /* 98AEC 80089B3C 14610004 */  bne        $v1, $at, .L80089B50_98B00
    /* 98AF0 80089B40 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 98AF4 80089B44 15C10002 */  bne        $t6, $at, .L80089B50_98B00
    /* 98AF8 80089B48 00000000 */   nop
    /* 98AFC 80089B4C 0006000D */  break      6
  .L80089B50_98B00:
    /* 98B00 80089B50 24010023 */  addiu      $at, $zero, 0x23
    /* 98B04 80089B54 0041001A */  div        $zero, $v0, $at
    /* 98B08 80089B58 00006010 */  mfhi       $t4
    /* 98B0C 80089B5C 258D0069 */  addiu      $t5, $t4, 0x69
    /* 98B10 80089B60 05210004 */  bgez       $t1, .L80089B74_98B24
    /* 98B14 80089B64 312A0007 */   andi      $t2, $t1, 0x7
    /* 98B18 80089B68 11400002 */  beqz       $t2, .L80089B74_98B24
    /* 98B1C 80089B6C 00000000 */   nop
    /* 98B20 80089B70 254AFFF8 */  addiu      $t2, $t2, -0x8
  .L80089B74_98B24:
    /* 98B24 80089B74 254B000C */  addiu      $t3, $t2, 0xC
    /* 98B28 80089B78 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 98B2C 80089B7C AFAE002C */  sw         $t6, 0x2C($sp)
    /* 98B30 80089B80 AFAB0020 */  sw         $t3, 0x20($sp)
    /* 98B34 80089B84 AFAD0024 */  sw         $t5, 0x24($sp)
    /* 98B38 80089B88 0C03297B */  jal        func_800CA5EC_D959C
    /* 98B3C 80089B8C AFA00030 */   sw        $zero, 0x30($sp)
    /* 98B40 80089B90 3C058005 */  lui        $a1, %hi(alienInstances)
    /* 98B44 80089B94 24A58198 */  addiu      $a1, $a1, %lo(alienInstances)
    /* 98B48 80089B98 24060050 */  addiu      $a2, $zero, 0x50
  .L80089B9C_98B4C:
    /* 98B4C 80089B9C 92040025 */  lbu        $a0, 0x25($s0)
  .L80089BA0_98B50:
    /* 98B50 80089BA0 240100FF */  addiu      $at, $zero, 0xFF
    /* 98B54 80089BA4 A600002C */  sh         $zero, 0x2C($s0)
    /* 98B58 80089BA8 50810021 */  beql       $a0, $at, .L80089C30_98BE0
    /* 98B5C 80089BAC 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 98B60 80089BB0 00860019 */  multu      $a0, $a2
    /* 98B64 80089BB4 3C010030 */  lui        $at, (0x308000 >> 16)
    /* 98B68 80089BB8 34218000 */  ori        $at, $at, (0x308000 & 0xFFFF)
    /* 98B6C 80089BBC 3C0B8005 */  lui        $t3, %hi(D_8004DCBC)
    /* 98B70 80089BC0 0000C012 */  mflo       $t8
    /* 98B74 80089BC4 00B81021 */  addu       $v0, $a1, $t8
    /* 98B78 80089BC8 90590026 */  lbu        $t9, 0x26($v0)
    /* 98B7C 80089BCC 8C490020 */  lw         $t1, 0x20($v0)
    /* 98B80 80089BD0 27280001 */  addiu      $t0, $t9, 0x1
    /* 98B84 80089BD4 01215024 */  and        $t2, $t1, $at
    /* 98B88 80089BD8 15400006 */  bnez       $t2, .L80089BF4_98BA4
    /* 98B8C 80089BDC A0480026 */   sb        $t0, 0x26($v0)
    /* 98B90 80089BE0 856BDCBC */  lh         $t3, %lo(D_8004DCBC)($t3)
    /* 98B94 80089BE4 240C0096 */  addiu      $t4, $zero, 0x96
    /* 98B98 80089BE8 55600003 */  bnel       $t3, $zero, .L80089BF8_98BA8
    /* 98B9C 80089BEC 904D0025 */   lbu       $t5, 0x25($v0)
    /* 98BA0 80089BF0 A44C002C */  sh         $t4, 0x2C($v0)
  .L80089BF4_98BA4:
    /* 98BA4 80089BF4 904D0025 */  lbu        $t5, 0x25($v0)
  .L80089BF8_98BA8:
    /* 98BA8 80089BF8 01A60019 */  multu      $t5, $a2
    /* 98BAC 80089BFC 00007012 */  mflo       $t6
    /* 98BB0 80089C00 00AE1821 */  addu       $v1, $a1, $t6
    /* 98BB4 80089C04 846F001C */  lh         $t7, 0x1C($v1)
    /* 98BB8 80089C08 25F8FFFF */  addiu      $t8, $t7, -0x1
    /* 98BBC 80089C0C A478001C */  sh         $t8, 0x1C($v1)
    /* 98BC0 80089C10 8479001C */  lh         $t9, 0x1C($v1)
    /* 98BC4 80089C14 57200006 */  bnel       $t9, $zero, .L80089C30_98BE0
    /* 98BC8 80089C18 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 98BCC 80089C1C 8C680020 */  lw         $t0, 0x20($v1)
    /* 98BD0 80089C20 35094000 */  ori        $t1, $t0, 0x4000
    /* 98BD4 80089C24 0C021EAB */  jal        func_80087AAC_96A5C
    /* 98BD8 80089C28 AC690020 */   sw        $t1, 0x20($v1)
  .L80089C2C_98BDC:
    /* 98BDC 80089C2C 8FBF0044 */  lw         $ra, 0x44($sp)
  .L80089C30_98BE0:
    /* 98BE0 80089C30 8FB00040 */  lw         $s0, 0x40($sp)
    /* 98BE4 80089C34 27BD0058 */  addiu      $sp, $sp, 0x58
    /* 98BE8 80089C38 03E00008 */  jr         $ra
    /* 98BEC 80089C3C 00000000 */   nop
endlabel func_80089A2C_989DC
