nonmatching func_80085B14_94AC4, 0x13C

glabel func_80085B14_94AC4
    /* 94AC4 80085B14 308E00FF */  andi       $t6, $a0, 0xFF
    /* 94AC8 80085B18 000EC880 */  sll        $t9, $t6, 2
    /* 94ACC 80085B1C 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 94AD0 80085B20 032EC821 */  addu       $t9, $t9, $t6
    /* 94AD4 80085B24 87AE005A */  lh         $t6, 0x5A($sp)
    /* 94AD8 80085B28 00077C00 */  sll        $t7, $a3, 16
    /* 94ADC 80085B2C 3C0B8005 */  lui        $t3, %hi(alienInstances)
    /* 94AE0 80085B30 0019C900 */  sll        $t9, $t9, 4
    /* 94AE4 80085B34 256B8198 */  addiu      $t3, $t3, %lo(alienInstances)
    /* 94AE8 80085B38 000FC403 */  sra        $t8, $t7, 16
    /* 94AEC 80085B3C 032B1821 */  addu       $v1, $t9, $t3
    /* 94AF0 80085B40 846D0000 */  lh         $t5, 0x0($v1)
    /* 94AF4 80085B44 846F0004 */  lh         $t7, 0x4($v1)
    /* 94AF8 80085B48 906C001A */  lbu        $t4, 0x1A($v1)
    /* 94AFC 80085B4C AFBF001C */  sw         $ra, 0x1C($sp)
    /* 94B00 80085B50 030D1023 */  subu       $v0, $t8, $t5
    /* 94B04 80085B54 44829000 */  mtc1       $v0, $f18
    /* 94B08 80085B58 01CF4023 */  subu       $t0, $t6, $t7
    /* 94B0C 80085B5C 44888000 */  mtc1       $t0, $f16
    /* 94B10 80085B60 46809320 */  cvt.s.w    $f12, $f18
    /* 94B14 80085B64 AFA40048 */  sw         $a0, 0x48($sp)
    /* 94B18 80085B68 AFA5004C */  sw         $a1, 0x4C($sp)
    /* 94B1C 80085B6C AFA60050 */  sw         $a2, 0x50($sp)
    /* 94B20 80085B70 AFA70054 */  sw         $a3, 0x54($sp)
    /* 94B24 80085B74 468083A0 */  cvt.s.w    $f14, $f16
    /* 94B28 80085B78 A3AC0047 */  sb         $t4, 0x47($sp)
    /* 94B2C 80085B7C 0C000E09 */  jal        func_80003824_4424
    /* 94B30 80085B80 AFA3002C */   sw        $v1, 0x2C($sp)
    /* 94B34 80085B84 93B90047 */  lbu        $t9, 0x47($sp)
    /* 94B38 80085B88 8FA3002C */  lw         $v1, 0x2C($sp)
    /* 94B3C 80085B8C 87AC004E */  lh         $t4, 0x4E($sp)
    /* 94B40 80085B90 00195880 */  sll        $t3, $t9, 2
    /* 94B44 80085B94 01795823 */  subu       $t3, $t3, $t9
    /* 94B48 80085B98 84780006 */  lh         $t8, 0x6($v1)
    /* 94B4C 80085B9C 000B5880 */  sll        $t3, $t3, 2
    /* 94B50 80085BA0 000C6900 */  sll        $t5, $t4, 4
    /* 94B54 80085BA4 3C0C8025 */  lui        $t4, %hi(alienSpecs)
    /* 94B58 80085BA8 3C0E8015 */  lui        $t6, %hi(D_8014DD50)
    /* 94B5C 80085BAC 01795821 */  addu       $t3, $t3, $t9
    /* 94B60 80085BB0 000B58C0 */  sll        $t3, $t3, 3
    /* 94B64 80085BB4 25CEDD50 */  addiu      $t6, $t6, %lo(D_8014DD50)
    /* 94B68 80085BB8 258C6680 */  addiu      $t4, $t4, %lo(alienSpecs)
    /* 94B6C 80085BBC 016C5021 */  addu       $t2, $t3, $t4
    /* 94B70 80085BC0 01AE4021 */  addu       $t0, $t5, $t6
    /* 94B74 80085BC4 00584823 */  subu       $t1, $v0, $t8
    /* 94B78 80085BC8 8FA60050 */  lw         $a2, 0x50($sp)
    /* 94B7C 80085BCC 854D0042 */  lh         $t5, 0x42($t2)
    /* 94B80 80085BD0 00092823 */  negu       $a1, $t1
    /* 94B84 80085BD4 00057C00 */  sll        $t7, $a1, 16
    /* 94B88 80085BD8 000F2C03 */  sra        $a1, $t7, 16
    /* 94B8C 80085BDC A7A90042 */  sh         $t1, 0x42($sp)
    /* 94B90 80085BE0 85040006 */  lh         $a0, 0x6($t0)
    /* 94B94 80085BE4 AFA80028 */  sw         $t0, 0x28($sp)
    /* 94B98 80085BE8 AFAA0024 */  sw         $t2, 0x24($sp)
    /* 94B9C 80085BEC 00063823 */  negu       $a3, $a2
    /* 94BA0 80085BF0 0C0216A7 */  jal        func_80085A9C_94A4C
    /* 94BA4 80085BF4 AFAD0010 */   sw        $t5, 0x10($sp)
    /* 94BA8 80085BF8 8FA80028 */  lw         $t0, 0x28($sp)
    /* 94BAC 80085BFC 87A90042 */  lh         $t1, 0x42($sp)
    /* 94BB0 80085C00 8FAA0024 */  lw         $t2, 0x24($sp)
    /* 94BB4 80085C04 A5020006 */  sh         $v0, 0x6($t0)
    /* 94BB8 80085C08 850E0006 */  lh         $t6, 0x6($t0)
    /* 94BBC 80085C0C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 94BC0 80085C10 01C91821 */  addu       $v1, $t6, $t1
    /* 94BC4 80085C14 00032023 */  negu       $a0, $v1
    /* 94BC8 80085C18 0083082A */  slt        $at, $a0, $v1
    /* 94BCC 80085C1C 10200003 */  beqz       $at, .L80085C2C_94BDC
    /* 94BD0 80085C20 00801025 */   or        $v0, $a0, $zero
    /* 94BD4 80085C24 10000001 */  b          .L80085C2C_94BDC
    /* 94BD8 80085C28 00601025 */   or        $v0, $v1, $zero
  .L80085C2C_94BDC:
    /* 94BDC 80085C2C 854F0042 */  lh         $t7, 0x42($t2)
    /* 94BE0 80085C30 000FC040 */  sll        $t8, $t7, 1
    /* 94BE4 80085C34 0302082A */  slt        $at, $t8, $v0
    /* 94BE8 80085C38 10200003 */  beqz       $at, .L80085C48_94BF8
    /* 94BEC 80085C3C 00001025 */   or        $v0, $zero, $zero
    /* 94BF0 80085C40 10000001 */  b          .L80085C48_94BF8
    /* 94BF4 80085C44 24020001 */   addiu     $v0, $zero, 0x1
  .L80085C48_94BF8:
    /* 94BF8 80085C48 03E00008 */  jr         $ra
    /* 94BFC 80085C4C 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_80085B14_94AC4
