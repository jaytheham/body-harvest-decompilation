nonmatching func_8000A2B8_AEB8, 0x124

glabel func_8000A2B8_AEB8
    /* AEB8 8000A2B8 00057400 */  sll        $t6, $a1, 16
    /* AEBC 8000A2BC 000E7C03 */  sra        $t7, $t6, 16
    /* AEC0 8000A2C0 AFA50004 */  sw         $a1, 0x4($sp)
    /* AEC4 8000A2C4 01E43021 */  addu       $a2, $t7, $a0
    /* AEC8 8000A2C8 90C70000 */  lbu        $a3, 0x0($a2)
    /* AECC 8000A2CC 2408000A */  addiu      $t0, $zero, 0xA
    /* AED0 8000A2D0 00001825 */  or         $v1, $zero, $zero
    /* AED4 8000A2D4 1107003F */  beq        $t0, $a3, .L8000A3D4_AFD4
    /* AED8 8000A2D8 00C01025 */   or        $v0, $a2, $zero
    /* AEDC 8000A2DC 10E0003D */  beqz       $a3, .L8000A3D4_AFD4
    /* AEE0 8000A2E0 3C098003 */   lui       $t1, %hi(D_80031650)
    /* AEE4 8000A2E4 90C40000 */  lbu        $a0, 0x0($a2)
    /* AEE8 8000A2E8 3C078003 */  lui        $a3, %hi(D_80031720)
    /* AEEC 8000A2EC 24E71720 */  addiu      $a3, $a3, %lo(D_80031720)
    /* AEF0 8000A2F0 24060020 */  addiu      $a2, $zero, 0x20
    /* AEF4 8000A2F4 25291650 */  addiu      $t1, $t1, %lo(D_80031650)
    /* AEF8 8000A2F8 28810020 */  slti       $at, $a0, 0x20
  .L8000A2FC_AEFC:
    /* AEFC 8000A2FC 14200020 */  bnez       $at, .L8000A380_AF80
    /* AF00 8000A300 248EFFEC */   addiu     $t6, $a0, -0x14
    /* AF04 8000A304 288100FD */  slti       $at, $a0, 0xFD
    /* AF08 8000A308 50200014 */  beql       $at, $zero, .L8000A35C_AF5C
    /* AF0C 8000A30C 904A0001 */   lbu       $t2, 0x1($v0)
    /* AF10 8000A310 14600003 */  bnez       $v1, .L8000A320_AF20
    /* AF14 8000A314 288100C1 */   slti      $at, $a0, 0xC1
    /* AF18 8000A318 50C40029 */  beql       $a2, $a0, .L8000A3C0_AFC0
    /* AF1C 8000A31C 90440001 */   lbu       $a0, 0x1($v0)
  .L8000A320_AF20:
    /* AF20 8000A320 14200009 */  bnez       $at, .L8000A348_AF48
    /* AF24 8000A324 00047040 */   sll       $t6, $a0, 1
    /* AF28 8000A328 0004C040 */  sll        $t8, $a0, 1
    /* AF2C 8000A32C 0138C821 */  addu       $t9, $t1, $t8
    /* AF30 8000A330 872AFE80 */  lh         $t2, -0x180($t9)
    /* AF34 8000A334 000A5840 */  sll        $t3, $t2, 1
    /* AF38 8000A338 00EB6021 */  addu       $t4, $a3, $t3
    /* AF3C 8000A33C 818D0221 */  lb         $t5, 0x221($t4)
    /* AF40 8000A340 1000001E */  b          .L8000A3BC_AFBC
    /* AF44 8000A344 006D1821 */   addu      $v1, $v1, $t5
  .L8000A348_AF48:
    /* AF48 8000A348 00EE7821 */  addu       $t7, $a3, $t6
    /* AF4C 8000A34C 81F80261 */  lb         $t8, 0x261($t7)
    /* AF50 8000A350 1000001A */  b          .L8000A3BC_AFBC
    /* AF54 8000A354 00781821 */   addu      $v1, $v1, $t8
    /* AF58 8000A358 904A0001 */  lbu        $t2, 0x1($v0)
  .L8000A35C_AF5C:
    /* AF5C 8000A35C 3085007F */  andi       $a1, $a0, 0x7F
    /* AF60 8000A360 0005CA00 */  sll        $t9, $a1, 8
    /* AF64 8000A364 032A2821 */  addu       $a1, $t9, $t2
    /* AF68 8000A368 00055840 */  sll        $t3, $a1, 1
    /* AF6C 8000A36C 00EB6021 */  addu       $t4, $a3, $t3
    /* AF70 8000A370 818D0001 */  lb         $t5, 0x1($t4)
    /* AF74 8000A374 24420001 */  addiu      $v0, $v0, 0x1
    /* AF78 8000A378 10000010 */  b          .L8000A3BC_AFBC
    /* AF7C 8000A37C 006D1821 */   addu      $v1, $v1, $t5
  .L8000A380_AF80:
    /* AF80 8000A380 2DC10006 */  sltiu      $at, $t6, 0x6
    /* AF84 8000A384 1020000D */  beqz       $at, .L8000A3BC_AFBC
    /* AF88 8000A388 000E7080 */   sll       $t6, $t6, 2
    /* AF8C 8000A38C 3C018003 */  lui        $at, %hi(jtbl_80037460_core)
    /* AF90 8000A390 002E0821 */  addu       $at, $at, $t6
    /* AF94 8000A394 8C2E7460 */  lw         $t6, %lo(jtbl_80037460_core)($at)
    /* AF98 8000A398 01C00008 */  jr         $t6
    /* AF9C 8000A39C 00000000 */   nop
    /* AFA0 8000A3A0 10000006 */  b          .L8000A3BC_AFBC
    /* AFA4 8000A3A4 24420001 */   addiu     $v0, $v0, 0x1
    /* AFA8 8000A3A8 10000004 */  b          .L8000A3BC_AFBC
    /* AFAC 8000A3AC 24420002 */   addiu     $v0, $v0, 0x2
    /* AFB0 8000A3B0 10000002 */  b          .L8000A3BC_AFBC
    /* AFB4 8000A3B4 24420003 */   addiu     $v0, $v0, 0x3
    /* AFB8 8000A3B8 24420004 */  addiu      $v0, $v0, 0x4
  .L8000A3BC_AFBC:
    /* AFBC 8000A3BC 90440001 */  lbu        $a0, 0x1($v0)
  .L8000A3C0_AFC0:
    /* AFC0 8000A3C0 24420001 */  addiu      $v0, $v0, 0x1
    /* AFC4 8000A3C4 11040003 */  beq        $t0, $a0, .L8000A3D4_AFD4
    /* AFC8 8000A3C8 00000000 */   nop
    /* AFCC 8000A3CC 5480FFCB */  bnel       $a0, $zero, .L8000A2FC_AEFC
    /* AFD0 8000A3D0 28810020 */   slti      $at, $a0, 0x20
  .L8000A3D4_AFD4:
    /* AFD4 8000A3D4 03E00008 */  jr         $ra
    /* AFD8 8000A3D8 00601025 */   or        $v0, $v1, $zero
endlabel func_8000A2B8_AEB8
