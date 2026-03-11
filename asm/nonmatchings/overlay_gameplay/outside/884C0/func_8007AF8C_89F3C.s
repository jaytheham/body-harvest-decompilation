nonmatching func_8007AF8C_89F3C, 0x1E4

glabel func_8007AF8C_89F3C
    /* 89F3C 8007AF8C 27BDFFF0 */  addiu      $sp, $sp, -0x10
    /* 89F40 8007AF90 AFB2000C */  sw         $s2, 0xC($sp)
    /* 89F44 8007AF94 AFB10008 */  sw         $s1, 0x8($sp)
    /* 89F48 8007AF98 3C078005 */  lui        $a3, %hi(alienInstances)
    /* 89F4C 8007AF9C 3C068005 */  lui        $a2, %hi(D_8004D148)
    /* 89F50 8007AFA0 AFB00004 */  sw         $s0, 0x4($sp)
    /* 89F54 8007AFA4 00001025 */  or         $v0, $zero, $zero
    /* 89F58 8007AFA8 00001825 */  or         $v1, $zero, $zero
    /* 89F5C 8007AFAC 00002025 */  or         $a0, $zero, $zero
    /* 89F60 8007AFB0 00002825 */  or         $a1, $zero, $zero
    /* 89F64 8007AFB4 24C6D148 */  addiu      $a2, $a2, %lo(D_8004D148)
    /* 89F68 8007AFB8 24E78198 */  addiu      $a3, $a3, %lo(alienInstances)
    /* 89F6C 8007AFBC 24110002 */  addiu      $s1, $zero, 0x2
    /* 89F70 8007AFC0 24120020 */  addiu      $s2, $zero, 0x20
    /* 89F74 8007AFC4 240D0013 */  addiu      $t5, $zero, 0x13
    /* 89F78 8007AFC8 240C0001 */  addiu      $t4, $zero, 0x1
    /* 89F7C 8007AFCC 90E8001A */  lbu        $t0, 0x1A($a3)
  .L8007AFD0_89F80:
    /* 89F80 8007AFD0 15880006 */  bne        $t4, $t0, .L8007AFEC_89F9C
    /* 89F84 8007AFD4 00000000 */   nop
    /* 89F88 8007AFD8 90EE0024 */  lbu        $t6, 0x24($a3)
    /* 89F8C 8007AFDC 11AE0003 */  beq        $t5, $t6, .L8007AFEC_89F9C
    /* 89F90 8007AFE0 00000000 */   nop
    /* 89F94 8007AFE4 10000015 */  b          .L8007B03C_89FEC
    /* 89F98 8007AFE8 24420001 */   addiu     $v0, $v0, 0x1
  .L8007AFEC_89F9C:
    /* 89F9C 8007AFEC 12280003 */  beq        $s1, $t0, .L8007AFFC_89FAC
    /* 89FA0 8007AFF0 00000000 */   nop
    /* 89FA4 8007AFF4 16480003 */  bne        $s2, $t0, .L8007B004_89FB4
    /* 89FA8 8007AFF8 29010003 */   slti      $at, $t0, 0x3
  .L8007AFFC_89FAC:
    /* 89FAC 8007AFFC 1000000F */  b          .L8007B03C_89FEC
    /* 89FB0 8007B000 24630001 */   addiu     $v1, $v1, 0x1
  .L8007B004_89FB4:
    /* 89FB4 8007B004 14200002 */  bnez       $at, .L8007B010_89FC0
    /* 89FB8 8007B008 29010018 */   slti      $at, $t0, 0x18
    /* 89FBC 8007B00C 14200003 */  bnez       $at, .L8007B01C_89FCC
  .L8007B010_89FC0:
    /* 89FC0 8007B010 29010021 */   slti      $at, $t0, 0x21
    /* 89FC4 8007B014 54200004 */  bnel       $at, $zero, .L8007B028_89FD8
    /* 89FC8 8007B018 29010018 */   slti      $at, $t0, 0x18
  .L8007B01C_89FCC:
    /* 89FCC 8007B01C 10000007 */  b          .L8007B03C_89FEC
    /* 89FD0 8007B020 24840001 */   addiu     $a0, $a0, 0x1
    /* 89FD4 8007B024 29010018 */  slti       $at, $t0, 0x18
  .L8007B028_89FD8:
    /* 89FD8 8007B028 14200004 */  bnez       $at, .L8007B03C_89FEC
    /* 89FDC 8007B02C 29010020 */   slti      $at, $t0, 0x20
    /* 89FE0 8007B030 50200003 */  beql       $at, $zero, .L8007B040_89FF0
    /* 89FE4 8007B034 24E70050 */   addiu     $a3, $a3, 0x50
    /* 89FE8 8007B038 24A50001 */  addiu      $a1, $a1, 0x1
  .L8007B03C_89FEC:
    /* 89FEC 8007B03C 24E70050 */  addiu      $a3, $a3, 0x50
  .L8007B040_89FF0:
    /* 89FF0 8007B040 00E6082B */  sltu       $at, $a3, $a2
    /* 89FF4 8007B044 5420FFE2 */  bnel       $at, $zero, .L8007AFD0_89F80
    /* 89FF8 8007B048 90E8001A */   lbu       $t0, 0x1A($a3)
    /* 89FFC 8007B04C 3C088015 */  lui        $t0, %hi(D_8014D507)
    /* 8A000 8007B050 2508D507 */  addiu      $t0, $t0, %lo(D_8014D507)
    /* 8A004 8007B054 304900FF */  andi       $t1, $v0, 0xFF
    /* 8A008 8007B058 A1020000 */  sb         $v0, 0x0($t0)
    /* 8A00C 8007B05C 01237821 */  addu       $t7, $t1, $v1
    /* 8A010 8007B060 3C018015 */  lui        $at, %hi(D_8014D508)
    /* 8A014 8007B064 A02FD508 */  sb         $t7, %lo(D_8014D508)($at)
    /* 8A018 8007B068 3C0A8015 */  lui        $t2, %hi(D_8014D508)
    /* 8A01C 8007B06C 914AD508 */  lbu        $t2, %lo(D_8014D508)($t2)
    /* 8A020 8007B070 3C018015 */  lui        $at, %hi(D_8014D509)
    /* 8A024 8007B074 3C0B8015 */  lui        $t3, %hi(D_8014D509)
    /* 8A028 8007B078 0144C021 */  addu       $t8, $t2, $a0
    /* 8A02C 8007B07C A038D509 */  sb         $t8, %lo(D_8014D509)($at)
    /* 8A030 8007B080 916BD509 */  lbu        $t3, %lo(D_8014D509)($t3)
    /* 8A034 8007B084 3C018015 */  lui        $at, %hi(D_8014D50A)
    /* 8A038 8007B088 3C078005 */  lui        $a3, %hi(alienInstances)
    /* 8A03C 8007B08C 3C108015 */  lui        $s0, %hi(D_8014D408)
    /* 8A040 8007B090 0165C821 */  addu       $t9, $t3, $a1
    /* 8A044 8007B094 A039D50A */  sb         $t9, %lo(D_8014D50A)($at)
    /* 8A048 8007B098 2610D408 */  addiu      $s0, $s0, %lo(D_8014D408)
    /* 8A04C 8007B09C 24E78198 */  addiu      $a3, $a3, %lo(alienInstances)
    /* 8A050 8007B0A0 00003025 */  or         $a2, $zero, $zero
  .L8007B0A4_8A054:
    /* 8A054 8007B0A4 90E8001A */  lbu        $t0, 0x1A($a3)
    /* 8A058 8007B0A8 15880009 */  bne        $t4, $t0, .L8007B0D0_8A080
    /* 8A05C 8007B0AC 00000000 */   nop
    /* 8A060 8007B0B0 90EE0024 */  lbu        $t6, 0x24($a3)
    /* 8A064 8007B0B4 02097821 */  addu       $t7, $s0, $t1
    /* 8A068 8007B0B8 0002C023 */  negu       $t8, $v0
    /* 8A06C 8007B0BC 11AE0004 */  beq        $t5, $t6, .L8007B0D0_8A080
    /* 8A070 8007B0C0 01F8C821 */   addu      $t9, $t7, $t8
    /* 8A074 8007B0C4 A3260000 */  sb         $a2, 0x0($t9)
    /* 8A078 8007B0C8 10000020 */  b          .L8007B14C_8A0FC
    /* 8A07C 8007B0CC 2442FFFF */   addiu     $v0, $v0, -0x1
  .L8007B0D0_8A080:
    /* 8A080 8007B0D0 12280003 */  beq        $s1, $t0, .L8007B0E0_8A090
    /* 8A084 8007B0D4 020A7021 */   addu      $t6, $s0, $t2
    /* 8A088 8007B0D8 16480006 */  bne        $s2, $t0, .L8007B0F4_8A0A4
    /* 8A08C 8007B0DC 29010003 */   slti      $at, $t0, 0x3
  .L8007B0E0_8A090:
    /* 8A090 8007B0E0 00037823 */  negu       $t7, $v1
    /* 8A094 8007B0E4 01CFC021 */  addu       $t8, $t6, $t7
    /* 8A098 8007B0E8 A3060000 */  sb         $a2, 0x0($t8)
    /* 8A09C 8007B0EC 10000017 */  b          .L8007B14C_8A0FC
    /* 8A0A0 8007B0F0 2463FFFF */   addiu     $v1, $v1, -0x1
  .L8007B0F4_8A0A4:
    /* 8A0A4 8007B0F4 14200002 */  bnez       $at, .L8007B100_8A0B0
    /* 8A0A8 8007B0F8 29010018 */   slti      $at, $t0, 0x18
    /* 8A0AC 8007B0FC 14200002 */  bnez       $at, .L8007B108_8A0B8
  .L8007B100_8A0B0:
    /* 8A0B0 8007B100 29010021 */   slti      $at, $t0, 0x21
    /* 8A0B4 8007B104 14200006 */  bnez       $at, .L8007B120_8A0D0
  .L8007B108_8A0B8:
    /* 8A0B8 8007B108 020BC821 */   addu      $t9, $s0, $t3
    /* 8A0BC 8007B10C 00047023 */  negu       $t6, $a0
    /* 8A0C0 8007B110 032E7821 */  addu       $t7, $t9, $t6
    /* 8A0C4 8007B114 A1E60000 */  sb         $a2, 0x0($t7)
    /* 8A0C8 8007B118 1000000C */  b          .L8007B14C_8A0FC
    /* 8A0CC 8007B11C 2484FFFF */   addiu     $a0, $a0, -0x1
  .L8007B120_8A0D0:
    /* 8A0D0 8007B120 29010018 */  slti       $at, $t0, 0x18
    /* 8A0D4 8007B124 14200009 */  bnez       $at, .L8007B14C_8A0FC
    /* 8A0D8 8007B128 29010020 */   slti      $at, $t0, 0x20
    /* 8A0DC 8007B12C 10200007 */  beqz       $at, .L8007B14C_8A0FC
    /* 8A0E0 8007B130 3C188015 */   lui       $t8, %hi(D_8014D50A)
    /* 8A0E4 8007B134 9318D50A */  lbu        $t8, %lo(D_8014D50A)($t8)
    /* 8A0E8 8007B138 00057023 */  negu       $t6, $a1
    /* 8A0EC 8007B13C 24A5FFFF */  addiu      $a1, $a1, -0x1
    /* 8A0F0 8007B140 0218C821 */  addu       $t9, $s0, $t8
    /* 8A0F4 8007B144 032E7821 */  addu       $t7, $t9, $t6
    /* 8A0F8 8007B148 A1E60000 */  sb         $a2, 0x0($t7)
  .L8007B14C_8A0FC:
    /* 8A0FC 8007B14C 24C60001 */  addiu      $a2, $a2, 0x1
    /* 8A100 8007B150 240100FF */  addiu      $at, $zero, 0xFF
    /* 8A104 8007B154 14C1FFD3 */  bne        $a2, $at, .L8007B0A4_8A054
    /* 8A108 8007B158 24E70050 */   addiu     $a3, $a3, 0x50
    /* 8A10C 8007B15C 8FB00004 */  lw         $s0, 0x4($sp)
    /* 8A110 8007B160 8FB10008 */  lw         $s1, 0x8($sp)
    /* 8A114 8007B164 8FB2000C */  lw         $s2, 0xC($sp)
    /* 8A118 8007B168 03E00008 */  jr         $ra
    /* 8A11C 8007B16C 27BD0010 */   addiu     $sp, $sp, 0x10
endlabel func_8007AF8C_89F3C
