nonmatching func_800FC90C_10B8BC, 0x150

glabel func_800FC90C_10B8BC
    /* 10B8BC 800FC90C 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 10B8C0 800FC910 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 10B8C4 800FC914 AFB00018 */  sw         $s0, 0x18($sp)
    /* 10B8C8 800FC918 AFA5003C */  sw         $a1, 0x3C($sp)
    /* 10B8CC 800FC91C 84A20000 */  lh         $v0, 0x0($a1)
    /* 10B8D0 800FC920 84A30002 */  lh         $v1, 0x2($a1)
    /* 10B8D4 800FC924 00808025 */  or         $s0, $a0, $zero
    /* 10B8D8 800FC928 00022600 */  sll        $a0, $v0, 24
    /* 10B8DC 800FC92C 00032E00 */  sll        $a1, $v1, 24
    /* 10B8E0 800FC930 0005C603 */  sra        $t8, $a1, 24
    /* 10B8E4 800FC934 00047E03 */  sra        $t7, $a0, 24
    /* 10B8E8 800FC938 01E02025 */  or         $a0, $t7, $zero
    /* 10B8EC 800FC93C 03002825 */  or         $a1, $t8, $zero
    /* 10B8F0 800FC940 27A60036 */  addiu      $a2, $sp, 0x36
    /* 10B8F4 800FC944 27A70034 */  addiu      $a3, $sp, 0x34
    /* 10B8F8 800FC948 A7A20032 */  sh         $v0, 0x32($sp)
    /* 10B8FC 800FC94C 0C03F1F8 */  jal        func_800FC7E0_10B790
    /* 10B900 800FC950 A7A30030 */   sh        $v1, 0x30($sp)
    /* 10B904 800FC954 87A20032 */  lh         $v0, 0x32($sp)
    /* 10B908 800FC958 87A80036 */  lh         $t0, 0x36($sp)
    /* 10B90C 800FC95C 02002025 */  or         $a0, $s0, $zero
    /* 10B910 800FC960 0002CA00 */  sll        $t9, $v0, 8
    /* 10B914 800FC964 03284821 */  addu       $t1, $t9, $t0
    /* 10B918 800FC968 44892000 */  mtc1       $t1, $f4
    /* 10B91C 800FC96C 03201025 */  or         $v0, $t9, $zero
    /* 10B920 800FC970 AFB90028 */  sw         $t9, 0x28($sp)
    /* 10B924 800FC974 46802120 */  cvt.s.w    $f4, $f4
    /* 10B928 800FC978 44052000 */  mfc1       $a1, $f4
    /* 10B92C 800FC97C 0C03ED13 */  jal        func_800FB44C_10A3FC
    /* 10B930 800FC980 00000000 */   nop
    /* 10B934 800FC984 87A30030 */  lh         $v1, 0x30($sp)
    /* 10B938 800FC988 87AB0034 */  lh         $t3, 0x34($sp)
    /* 10B93C 800FC98C 02002025 */  or         $a0, $s0, $zero
    /* 10B940 800FC990 00035200 */  sll        $t2, $v1, 8
    /* 10B944 800FC994 014B6021 */  addu       $t4, $t2, $t3
    /* 10B948 800FC998 448C3000 */  mtc1       $t4, $f6
    /* 10B94C 800FC99C 01401825 */  or         $v1, $t2, $zero
    /* 10B950 800FC9A0 AFAA0024 */  sw         $t2, 0x24($sp)
    /* 10B954 800FC9A4 468031A0 */  cvt.s.w    $f6, $f6
    /* 10B958 800FC9A8 44053000 */  mfc1       $a1, $f6
    /* 10B95C 800FC9AC 0C03ED21 */  jal        func_800FB484_10A434
    /* 10B960 800FC9B0 00000000 */   nop
    /* 10B964 800FC9B4 8FAD0028 */  lw         $t5, 0x28($sp)
    /* 10B968 800FC9B8 87AE0036 */  lh         $t6, 0x36($sp)
    /* 10B96C 800FC9BC 8FA30024 */  lw         $v1, 0x24($sp)
    /* 10B970 800FC9C0 960B0020 */  lhu        $t3, 0x20($s0)
    /* 10B974 800FC9C4 01AE7821 */  addu       $t7, $t5, $t6
    /* 10B978 800FC9C8 A60F0040 */  sh         $t7, 0x40($s0)
    /* 10B97C 800FC9CC 87B80034 */  lh         $t8, 0x34($sp)
    /* 10B980 800FC9D0 240A000A */  addiu      $t2, $zero, 0xA
    /* 10B984 800FC9D4 356C0400 */  ori        $t4, $t3, 0x400
    /* 10B988 800FC9D8 0078C821 */  addu       $t9, $v1, $t8
    /* 10B98C 800FC9DC A6190042 */  sh         $t9, 0x42($s0)
    /* 10B990 800FC9E0 87A80032 */  lh         $t0, 0x32($sp)
    /* 10B994 800FC9E4 24014000 */  addiu      $at, $zero, 0x4000
    /* 10B998 800FC9E8 240E0008 */  addiu      $t6, $zero, 0x8
    /* 10B99C 800FC9EC A2080047 */  sb         $t0, 0x47($s0)
    /* 10B9A0 800FC9F0 87A90030 */  lh         $t1, 0x30($sp)
    /* 10B9A4 800FC9F4 A20A0045 */  sb         $t2, 0x45($s0)
    /* 10B9A8 800FC9F8 A60C0020 */  sh         $t4, 0x20($s0)
    /* 10B9AC 800FC9FC A2090048 */  sb         $t1, 0x48($s0)
    /* 10B9B0 800FCA00 8FAD003C */  lw         $t5, 0x3C($sp)
    /* 10B9B4 800FCA04 85A20008 */  lh         $v0, 0x8($t5)
    /* 10B9B8 800FCA08 10400008 */  beqz       $v0, .L800FCA2C_10B9DC
    /* 10B9BC 800FCA0C 00000000 */   nop
    /* 10B9C0 800FCA10 10410008 */  beq        $v0, $at, .L800FCA34_10B9E4
    /* 10B9C4 800FCA14 240F0001 */   addiu     $t7, $zero, 0x1
    /* 10B9C8 800FCA18 34018000 */  ori        $at, $zero, 0x8000
    /* 10B9CC 800FCA1C 10410007 */  beq        $v0, $at, .L800FCA3C_10B9EC
    /* 10B9D0 800FCA20 24180004 */   addiu     $t8, $zero, 0x4
    /* 10B9D4 800FCA24 10000007 */  b          .L800FCA44_10B9F4
    /* 10B9D8 800FCA28 24190002 */   addiu     $t9, $zero, 0x2
  .L800FCA2C_10B9DC:
    /* 10B9DC 800FCA2C 10000006 */  b          .L800FCA48_10B9F8
    /* 10B9E0 800FCA30 A20E0044 */   sb        $t6, 0x44($s0)
  .L800FCA34_10B9E4:
    /* 10B9E4 800FCA34 10000004 */  b          .L800FCA48_10B9F8
    /* 10B9E8 800FCA38 A20F0044 */   sb        $t7, 0x44($s0)
  .L800FCA3C_10B9EC:
    /* 10B9EC 800FCA3C 10000002 */  b          .L800FCA48_10B9F8
    /* 10B9F0 800FCA40 A2180044 */   sb        $t8, 0x44($s0)
  .L800FCA44_10B9F4:
    /* 10B9F4 800FCA44 A2190044 */  sb         $t9, 0x44($s0)
  .L800FCA48_10B9F8:
    /* 10B9F8 800FCA48 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 10B9FC 800FCA4C 8FB00018 */  lw         $s0, 0x18($sp)
    /* 10BA00 800FCA50 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 10BA04 800FCA54 03E00008 */  jr         $ra
    /* 10BA08 800FCA58 00000000 */   nop
endlabel func_800FC90C_10B8BC
