nonmatching func_800FAB9C_109B4C, 0xF4

glabel func_800FAB9C_109B4C
    /* 109B4C 800FAB9C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 109B50 800FABA0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 109B54 800FABA4 AFA40020 */  sw         $a0, 0x20($sp)
    /* 109B58 800FABA8 AFA50024 */  sw         $a1, 0x24($sp)
    /* 109B5C 800FABAC AFA60028 */  sw         $a2, 0x28($sp)
    /* 109B60 800FABB0 AFA7002C */  sw         $a3, 0x2C($sp)
    /* 109B64 800FABB4 87A50026 */  lh         $a1, 0x26($sp)
    /* 109B68 800FABB8 0C02E134 */  jal        func_800B84D0_C7480
    /* 109B6C 800FABBC 87A40022 */   lh        $a0, 0x22($sp)
    /* 109B70 800FABC0 00027203 */  sra        $t6, $v0, 8
    /* 109B74 800FABC4 AFAE001C */  sw         $t6, 0x1C($sp)
    /* 109B78 800FABC8 87A4002A */  lh         $a0, 0x2A($sp)
    /* 109B7C 800FABCC 0C02E134 */  jal        func_800B84D0_C7480
    /* 109B80 800FABD0 87A5002E */   lh        $a1, 0x2E($sp)
    /* 109B84 800FABD4 87B8002A */  lh         $t8, 0x2A($sp)
    /* 109B88 800FABD8 87B90022 */  lh         $t9, 0x22($sp)
    /* 109B8C 800FABDC 87A8002E */  lh         $t0, 0x2E($sp)
    /* 109B90 800FABE0 87A90026 */  lh         $t1, 0x26($sp)
    /* 109B94 800FABE4 03191823 */  subu       $v1, $t8, $t9
    /* 109B98 800FABE8 00630019 */  multu      $v1, $v1
    /* 109B9C 800FABEC 01092023 */  subu       $a0, $t0, $t1
    /* 109BA0 800FABF0 00027A03 */  sra        $t7, $v0, 8
    /* 109BA4 800FABF4 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 109BA8 800FABF8 00005012 */  mflo       $t2
    /* 109BAC 800FABFC 00000000 */  nop
    /* 109BB0 800FAC00 00000000 */  nop
    /* 109BB4 800FAC04 00840019 */  multu      $a0, $a0
    /* 109BB8 800FAC08 00005812 */  mflo       $t3
    /* 109BBC 800FAC0C 014B6021 */  addu       $t4, $t2, $t3
    /* 109BC0 800FAC10 448C2000 */  mtc1       $t4, $f4
    /* 109BC4 800FAC14 0C007650 */  jal        sqrtf
    /* 109BC8 800FAC18 46802320 */   cvt.s.w   $f12, $f4
    /* 109BCC 800FAC1C 4600028D */  trunc.w.s  $f10, $f0
    /* 109BD0 800FAC20 8FAD0018 */  lw         $t5, 0x18($sp)
    /* 109BD4 800FAC24 8FAE001C */  lw         $t6, 0x1C($sp)
    /* 109BD8 800FAC28 3C014100 */  lui        $at, (0x41000000 >> 16)
    /* 109BDC 800FAC2C 44195000 */  mfc1       $t9, $f10
    /* 109BE0 800FAC30 01AE7823 */  subu       $t7, $t5, $t6
    /* 109BE4 800FAC34 448F3000 */  mtc1       $t7, $f6
    /* 109BE8 800FAC38 44998000 */  mtc1       $t9, $f16
    /* 109BEC 800FAC3C 44805000 */  mtc1       $zero, $f10
    /* 109BF0 800FAC40 46803220 */  cvt.s.w    $f8, $f6
    /* 109BF4 800FAC44 44813000 */  mtc1       $at, $f6
    /* 109BF8 800FAC48 468084A0 */  cvt.s.w    $f18, $f16
    /* 109BFC 800FAC4C 46124103 */  div.s      $f4, $f8, $f18
    /* 109C00 800FAC50 46062082 */  mul.s      $f2, $f4, $f6
    /* 109C04 800FAC54 4602503E */  c.le.s     $f10, $f2
    /* 109C08 800FAC58 00000000 */  nop
    /* 109C0C 800FAC5C 45020004 */  bc1fl      .L800FAC70_109C20
    /* 109C10 800FAC60 46001007 */   neg.s     $f0, $f2
    /* 109C14 800FAC64 10000002 */  b          .L800FAC70_109C20
    /* 109C18 800FAC68 46001006 */   mov.s     $f0, $f2
    /* 109C1C 800FAC6C 46001007 */  neg.s      $f0, $f2
  .L800FAC70_109C20:
    /* 109C20 800FAC70 4600040D */  trunc.w.s  $f16, $f0
    /* 109C24 800FAC74 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 109C28 800FAC78 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 109C2C 800FAC7C 44028000 */  mfc1       $v0, $f16
    /* 109C30 800FAC80 00000000 */  nop
    /* 109C34 800FAC84 00024C00 */  sll        $t1, $v0, 16
    /* 109C38 800FAC88 03E00008 */  jr         $ra
    /* 109C3C 800FAC8C 00091403 */   sra       $v0, $t1, 16
endlabel func_800FAB9C_109B4C
