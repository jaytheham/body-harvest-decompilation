nonmatching func_8007F8F4_1679B4, 0x2D0

glabel func_8007F8F4_1679B4
    /* 1679B4 8007F8F4 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* 1679B8 8007F8F8 AFB00018 */  sw         $s0, 0x18($sp)
    /* 1679BC 8007F8FC AFA40068 */  sw         $a0, 0x68($sp)
    /* 1679C0 8007F900 87B8006A */  lh         $t8, 0x6A($sp)
    /* 1679C4 8007F904 3C10800E */  lui        $s0, %hi(D_800E6AD8)
    /* 1679C8 8007F908 26106AD8 */  addiu      $s0, $s0, %lo(D_800E6AD8)
    /* 1679CC 8007F90C AFA5006C */  sw         $a1, 0x6C($sp)
    /* 1679D0 8007F910 920E0426 */  lbu        $t6, 0x426($s0)
    /* 1679D4 8007F914 87AB006E */  lh         $t3, 0x6E($sp)
    /* 1679D8 8007F918 AFA60070 */  sw         $a2, 0x70($sp)
    /* 1679DC 8007F91C 87AD0072 */  lh         $t5, 0x72($sp)
    /* 1679E0 8007F920 0018CC00 */  sll        $t9, $t8, 16
    /* 1679E4 8007F924 920F0425 */  lbu        $t7, 0x425($s0)
    /* 1679E8 8007F928 3C088006 */  lui        $t0, %hi(D_8005BB38)
    /* 1679EC 8007F92C AFB9005C */  sw         $t9, 0x5C($sp)
    /* 1679F0 8007F930 A3AE004B */  sb         $t6, 0x4B($sp)
    /* 1679F4 8007F934 000B6400 */  sll        $t4, $t3, 16
    /* 1679F8 8007F938 2508BB38 */  addiu      $t0, $t0, %lo(D_8005BB38)
    /* 1679FC 8007F93C AFBF001C */  sw         $ra, 0x1C($sp)
    /* 167A00 8007F940 AFA70074 */  sw         $a3, 0x74($sp)
    /* 167A04 8007F944 A7A7004C */  sh         $a3, 0x4C($sp)
    /* 167A08 8007F948 24180040 */  addiu      $t8, $zero, 0x40
    /* 167A0C 8007F94C 24190040 */  addiu      $t9, $zero, 0x40
    /* 167A10 8007F950 240B0040 */  addiu      $t3, $zero, 0x40
    /* 167A14 8007F954 000D7400 */  sll        $t6, $t5, 16
    /* 167A18 8007F958 AFAC0060 */  sw         $t4, 0x60($sp)
    /* 167A1C 8007F95C AFAE0064 */  sw         $t6, 0x64($sp)
    /* 167A20 8007F960 A7A0004E */  sh         $zero, 0x4E($sp)
    /* 167A24 8007F964 A7A00050 */  sh         $zero, 0x50($sp)
    /* 167A28 8007F968 A7B80054 */  sh         $t8, 0x54($sp)
    /* 167A2C 8007F96C A7B90056 */  sh         $t9, 0x56($sp)
    /* 167A30 8007F970 A7AB0058 */  sh         $t3, 0x58($sp)
    /* 167A34 8007F974 8D070000 */  lw         $a3, 0x0($t0)
    /* 167A38 8007F978 27A60054 */  addiu      $a2, $sp, 0x54
    /* 167A3C 8007F97C 27A5004C */  addiu      $a1, $sp, 0x4C
    /* 167A40 8007F980 27A4005C */  addiu      $a0, $sp, 0x5C
    /* 167A44 8007F984 0C003207 */  jal        func_8000C81C_D41C
    /* 167A48 8007F988 A3AF004A */   sb        $t7, 0x4A($sp)
    /* 167A4C 8007F98C 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* 167A50 8007F990 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* 167A54 8007F994 8C620000 */  lw         $v0, 0x0($v1)
    /* 167A58 8007F998 3C0D0104 */  lui        $t5, (0x1040040 >> 16)
    /* 167A5C 8007F99C 3C088006 */  lui        $t0, %hi(D_8005BB38)
    /* 167A60 8007F9A0 244C0008 */  addiu      $t4, $v0, 0x8
    /* 167A64 8007F9A4 AC6C0000 */  sw         $t4, 0x0($v1)
    /* 167A68 8007F9A8 35AD0040 */  ori        $t5, $t5, (0x1040040 & 0xFFFF)
    /* 167A6C 8007F9AC 2508BB38 */  addiu      $t0, $t0, %lo(D_8005BB38)
    /* 167A70 8007F9B0 AC4D0000 */  sw         $t5, 0x0($v0)
    /* 167A74 8007F9B4 8D0E0000 */  lw         $t6, 0x0($t0)
    /* 167A78 8007F9B8 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 167A7C 8007F9BC 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 167A80 8007F9C0 01C17824 */  and        $t7, $t6, $at
    /* 167A84 8007F9C4 AC4F0004 */  sw         $t7, 0x4($v0)
    /* 167A88 8007F9C8 8D180000 */  lw         $t8, 0x0($t0)
    /* 167A8C 8007F9CC 920B0426 */  lbu        $t3, 0x426($s0)
    /* 167A90 8007F9D0 24010004 */  addiu      $at, $zero, 0x4
    /* 167A94 8007F9D4 27190040 */  addiu      $t9, $t8, 0x40
    /* 167A98 8007F9D8 15610016 */  bne        $t3, $at, .L8007FA34_167AF4
    /* 167A9C 8007F9DC AD190000 */   sw        $t9, 0x0($t0)
    /* 167AA0 8007F9E0 920C0425 */  lbu        $t4, 0x425($s0)
    /* 167AA4 8007F9E4 3C014780 */  lui        $at, (0x47800000 >> 16)
    /* 167AA8 8007F9E8 55800013 */  bnel       $t4, $zero, .L8007FA38_167AF8
    /* 167AAC 8007F9EC 3C014780 */   lui       $at, (0x47800000 >> 16)
    /* 167AB0 8007F9F0 44810000 */  mtc1       $at, $f0
    /* 167AB4 8007F9F4 C6040008 */  lwc1       $f4, 0x8($s0)
    /* 167AB8 8007F9F8 C60A000C */  lwc1       $f10, 0xC($s0)
    /* 167ABC 8007F9FC 46002182 */  mul.s      $f6, $f4, $f0
    /* 167AC0 8007FA00 C6040010 */  lwc1       $f4, 0x10($s0)
    /* 167AC4 8007FA04 46005402 */  mul.s      $f16, $f10, $f0
    /* 167AC8 8007FA08 4600320D */  trunc.w.s  $f8, $f6
    /* 167ACC 8007FA0C 46002182 */  mul.s      $f6, $f4, $f0
    /* 167AD0 8007FA10 440E4000 */  mfc1       $t6, $f8
    /* 167AD4 8007FA14 4600848D */  trunc.w.s  $f18, $f16
    /* 167AD8 8007FA18 AFAE003C */  sw         $t6, 0x3C($sp)
    /* 167ADC 8007FA1C 4600320D */  trunc.w.s  $f8, $f6
    /* 167AE0 8007FA20 44189000 */  mfc1       $t8, $f18
    /* 167AE4 8007FA24 440B4000 */  mfc1       $t3, $f8
    /* 167AE8 8007FA28 AFB80040 */  sw         $t8, 0x40($sp)
    /* 167AEC 8007FA2C 1000000F */  b          .L8007FA6C_167B2C
    /* 167AF0 8007FA30 AFAB0044 */   sw        $t3, 0x44($sp)
  .L8007FA34_167AF4:
    /* 167AF4 8007FA34 3C014780 */  lui        $at, (0x47800000 >> 16)
  .L8007FA38_167AF8:
    /* 167AF8 8007FA38 44810000 */  mtc1       $at, $f0
    /* 167AFC 8007FA3C C60A0008 */  lwc1       $f10, 0x8($s0)
    /* 167B00 8007FA40 C6040010 */  lwc1       $f4, 0x10($s0)
    /* 167B04 8007FA44 AFA00040 */  sw         $zero, 0x40($sp)
    /* 167B08 8007FA48 46005402 */  mul.s      $f16, $f10, $f0
    /* 167B0C 8007FA4C 00000000 */  nop
    /* 167B10 8007FA50 46002182 */  mul.s      $f6, $f4, $f0
    /* 167B14 8007FA54 4600848D */  trunc.w.s  $f18, $f16
    /* 167B18 8007FA58 4600320D */  trunc.w.s  $f8, $f6
    /* 167B1C 8007FA5C 440D9000 */  mfc1       $t5, $f18
    /* 167B20 8007FA60 440F4000 */  mfc1       $t7, $f8
    /* 167B24 8007FA64 AFAD003C */  sw         $t5, 0x3C($sp)
    /* 167B28 8007FA68 AFAF0044 */  sw         $t7, 0x44($sp)
  .L8007FA6C_167B2C:
    /* 167B2C 8007FA6C 86180002 */  lh         $t8, 0x2($s0)
    /* 167B30 8007FA70 860B0004 */  lh         $t3, 0x4($s0)
    /* 167B34 8007FA74 860D0000 */  lh         $t5, 0x0($s0)
    /* 167B38 8007FA78 0018C8C0 */  sll        $t9, $t8, 3
    /* 167B3C 8007FA7C 000B60C0 */  sll        $t4, $t3, 3
    /* 167B40 8007FA80 000D70C0 */  sll        $t6, $t5, 3
    /* 167B44 8007FA84 A7B9004C */  sh         $t9, 0x4C($sp)
    /* 167B48 8007FA88 A7AC004E */  sh         $t4, 0x4E($sp)
    /* 167B4C 8007FA8C A7AE0050 */  sh         $t6, 0x50($sp)
    /* 167B50 8007FA90 27A4003C */  addiu      $a0, $sp, 0x3C
    /* 167B54 8007FA94 27A5004C */  addiu      $a1, $sp, 0x4C
    /* 167B58 8007FA98 00003025 */  or         $a2, $zero, $zero
    /* 167B5C 8007FA9C 0C003207 */  jal        func_8000C81C_D41C
    /* 167B60 8007FAA0 8D070000 */   lw        $a3, 0x0($t0)
    /* 167B64 8007FAA4 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* 167B68 8007FAA8 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* 167B6C 8007FAAC 8C620000 */  lw         $v0, 0x0($v1)
    /* 167B70 8007FAB0 3C180100 */  lui        $t8, (0x1000040 >> 16)
    /* 167B74 8007FAB4 3C088006 */  lui        $t0, %hi(D_8005BB38)
    /* 167B78 8007FAB8 244F0008 */  addiu      $t7, $v0, 0x8
    /* 167B7C 8007FABC AC6F0000 */  sw         $t7, 0x0($v1)
    /* 167B80 8007FAC0 37180040 */  ori        $t8, $t8, (0x1000040 & 0xFFFF)
    /* 167B84 8007FAC4 2508BB38 */  addiu      $t0, $t0, %lo(D_8005BB38)
    /* 167B88 8007FAC8 AC580000 */  sw         $t8, 0x0($v0)
    /* 167B8C 8007FACC 8D190000 */  lw         $t9, 0x0($t0)
    /* 167B90 8007FAD0 3C0A1FFF */  lui        $t2, (0x1FFFFFFF >> 16)
    /* 167B94 8007FAD4 354AFFFF */  ori        $t2, $t2, (0x1FFFFFFF & 0xFFFF)
    /* 167B98 8007FAD8 032A5824 */  and        $t3, $t9, $t2
    /* 167B9C 8007FADC AC4B0004 */  sw         $t3, 0x4($v0)
    /* 167BA0 8007FAE0 8D0C0000 */  lw         $t4, 0x0($t0)
    /* 167BA4 8007FAE4 8C620000 */  lw         $v0, 0x0($v1)
    /* 167BA8 8007FAE8 3C0FBC00 */  lui        $t7, (0xBC001C06 >> 16)
    /* 167BAC 8007FAEC 258D0040 */  addiu      $t5, $t4, 0x40
    /* 167BB0 8007FAF0 244E0008 */  addiu      $t6, $v0, 0x8
    /* 167BB4 8007FAF4 AD0D0000 */  sw         $t5, 0x0($t0)
    /* 167BB8 8007FAF8 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 167BBC 8007FAFC 35EF1C06 */  ori        $t7, $t7, (0xBC001C06 & 0xFFFF)
    /* 167BC0 8007FB00 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 167BC4 8007FB04 8D180000 */  lw         $t8, 0x0($t0)
    /* 167BC8 8007FB08 02002025 */  or         $a0, $s0, $zero
    /* 167BCC 8007FB0C 030AC824 */  and        $t9, $t8, $t2
    /* 167BD0 8007FB10 AC590004 */  sw         $t9, 0x4($v0)
    /* 167BD4 8007FB14 93AB004B */  lbu        $t3, 0x4B($sp)
    /* 167BD8 8007FB18 93AD004A */  lbu        $t5, 0x4A($sp)
    /* 167BDC 8007FB1C 3C18800A */  lui        $t8, %hi(D_8009E4C8)
    /* 167BE0 8007FB20 000B6080 */  sll        $t4, $t3, 2
    /* 167BE4 8007FB24 018B6023 */  subu       $t4, $t4, $t3
    /* 167BE8 8007FB28 000C6080 */  sll        $t4, $t4, 2
    /* 167BEC 8007FB2C 018B6021 */  addu       $t4, $t4, $t3
    /* 167BF0 8007FB30 000C6100 */  sll        $t4, $t4, 4
    /* 167BF4 8007FB34 000D7100 */  sll        $t6, $t5, 4
    /* 167BF8 8007FB38 018E7821 */  addu       $t7, $t4, $t6
    /* 167BFC 8007FB3C 2718E4C8 */  addiu      $t8, $t8, %lo(D_8009E4C8)
    /* 167C00 8007FB40 01F84821 */  addu       $t1, $t7, $t8
    /* 167C04 8007FB44 9125000C */  lbu        $a1, 0xC($t1)
    /* 167C08 8007FB48 0C00330F */  jal        func_8000CC3C_D83C
    /* 167C0C 8007FB4C AFA90020 */   sw        $t1, 0x20($sp)
    /* 167C10 8007FB50 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* 167C14 8007FB54 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* 167C18 8007FB58 8C620000 */  lw         $v0, 0x0($v1)
    /* 167C1C 8007FB5C 8FA90020 */  lw         $t1, 0x20($sp)
    /* 167C20 8007FB60 3C0B0600 */  lui        $t3, (0x6000000 >> 16)
    /* 167C24 8007FB64 24590008 */  addiu      $t9, $v0, 0x8
    /* 167C28 8007FB68 AC790000 */  sw         $t9, 0x0($v1)
    /* 167C2C 8007FB6C AC4B0000 */  sw         $t3, 0x0($v0)
    /* 167C30 8007FB70 8D2D0000 */  lw         $t5, 0x0($t1)
    /* 167C34 8007FB74 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 167C38 8007FB78 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 167C3C 8007FB7C 01A16024 */  and        $t4, $t5, $at
    /* 167C40 8007FB80 AC4C0004 */  sw         $t4, 0x4($v0)
    /* 167C44 8007FB84 8C620000 */  lw         $v0, 0x0($v1)
    /* 167C48 8007FB88 3C07BD00 */  lui        $a3, (0xBD000000 >> 16)
    /* 167C4C 8007FB8C 244E0008 */  addiu      $t6, $v0, 0x8
    /* 167C50 8007FB90 AC6E0000 */  sw         $t6, 0x0($v1)
    /* 167C54 8007FB94 AC400004 */  sw         $zero, 0x4($v0)
    /* 167C58 8007FB98 AC470000 */  sw         $a3, 0x0($v0)
    /* 167C5C 8007FB9C 8C620000 */  lw         $v0, 0x0($v1)
    /* 167C60 8007FBA0 244F0008 */  addiu      $t7, $v0, 0x8
    /* 167C64 8007FBA4 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 167C68 8007FBA8 AC400004 */  sw         $zero, 0x4($v0)
    /* 167C6C 8007FBAC AC470000 */  sw         $a3, 0x0($v0)
    /* 167C70 8007FBB0 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 167C74 8007FBB4 8FB00018 */  lw         $s0, 0x18($sp)
    /* 167C78 8007FBB8 27BD0068 */  addiu      $sp, $sp, 0x68
    /* 167C7C 8007FBBC 03E00008 */  jr         $ra
    /* 167C80 8007FBC0 00000000 */   nop
endlabel func_8007F8F4_1679B4
    /* 167C84 8007FBC4 00000000 */  nop
    /* 167C88 8007FBC8 00000000 */  nop
    /* 167C8C 8007FBCC 00000000 */  nop
