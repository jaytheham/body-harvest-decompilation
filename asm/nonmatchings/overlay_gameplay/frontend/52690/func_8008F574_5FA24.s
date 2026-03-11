nonmatching func_8008F574_5FA24, 0x190

glabel func_8008F574_5FA24
    /* 5FA24 8008F574 3C01800E */  lui        $at, %hi(D_800DE0EB)
    /* 5FA28 8008F578 A020E0EB */  sb         $zero, %lo(D_800DE0EB)($at)
    /* 5FA2C 8008F57C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 5FA30 8008F580 AFB00018 */  sw         $s0, 0x18($sp)
    /* 5FA34 8008F584 3C02800E */  lui        $v0, %hi(D_800DE0B0)
    /* 5FA38 8008F588 3C03800E */  lui        $v1, %hi(D_800DE0E4)
    /* 5FA3C 8008F58C 3C04800E */  lui        $a0, %hi(D_800DE0E8)
    /* 5FA40 8008F590 2484E0E8 */  addiu      $a0, $a0, %lo(D_800DE0E8)
    /* 5FA44 8008F594 2463E0E4 */  addiu      $v1, $v1, %lo(D_800DE0E4)
    /* 5FA48 8008F598 2442E0B0 */  addiu      $v0, $v0, %lo(D_800DE0B0)
    /* 5FA4C 8008F59C 241000FF */  addiu      $s0, $zero, 0xFF
    /* 5FA50 8008F5A0 24050028 */  addiu      $a1, $zero, 0x28
    /* 5FA54 8008F5A4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 5FA58 8008F5A8 240E0078 */  addiu      $t6, $zero, 0x78
    /* 5FA5C 8008F5AC 240FFD94 */  addiu      $t7, $zero, -0x26C
    /* 5FA60 8008F5B0 2418F204 */  addiu      $t8, $zero, -0xDFC
    /* 5FA64 8008F5B4 A44E0000 */  sh         $t6, 0x0($v0)
    /* 5FA68 8008F5B8 A44F0002 */  sh         $t7, 0x2($v0)
    /* 5FA6C 8008F5BC A4580004 */  sh         $t8, 0x4($v0)
    /* 5FA70 8008F5C0 A0700000 */  sb         $s0, 0x0($v1)
    /* 5FA74 8008F5C4 A0700001 */  sb         $s0, 0x1($v1)
    /* 5FA78 8008F5C8 A0700002 */  sb         $s0, 0x2($v1)
    /* 5FA7C 8008F5CC A0850000 */  sb         $a1, 0x0($a0)
    /* 5FA80 8008F5D0 A0850001 */  sb         $a1, 0x1($a0)
    /* 5FA84 8008F5D4 0C0236FB */  jal        func_8008DBEC_5E09C
    /* 5FA88 8008F5D8 A0850002 */   sb        $a1, 0x2($a0)
    /* 5FA8C 8008F5DC 3C03800E */  lui        $v1, %hi(D_800DE130)
    /* 5FA90 8008F5E0 2463E130 */  addiu      $v1, $v1, %lo(D_800DE130)
    /* 5FA94 8008F5E4 00001025 */  or         $v0, $zero, $zero
    /* 5FA98 8008F5E8 240500FA */  addiu      $a1, $zero, 0xFA
    /* 5FA9C 8008F5EC 2404000C */  addiu      $a0, $zero, 0xC
  .L8008F5F0_5FAA0:
    /* 5FAA0 8008F5F0 00440019 */  multu      $v0, $a0
    /* 5FAA4 8008F5F4 24420001 */  addiu      $v0, $v0, 0x1
    /* 5FAA8 8008F5F8 304900FF */  andi       $t1, $v0, 0xFF
    /* 5FAAC 8008F5FC 29210096 */  slti       $at, $t1, 0x96
    /* 5FAB0 8008F600 01201025 */  or         $v0, $t1, $zero
    /* 5FAB4 8008F604 0000C812 */  mflo       $t9
    /* 5FAB8 8008F608 00794021 */  addu       $t0, $v1, $t9
    /* 5FABC 8008F60C 1420FFF8 */  bnez       $at, .L8008F5F0_5FAA0
    /* 5FAC0 8008F610 A1050000 */   sb        $a1, 0x0($t0)
    /* 5FAC4 8008F614 3C03800E */  lui        $v1, %hi(D_800DE840)
    /* 5FAC8 8008F618 2463E840 */  addiu      $v1, $v1, %lo(D_800DE840)
    /* 5FACC 8008F61C 00001025 */  or         $v0, $zero, $zero
    /* 5FAD0 8008F620 2404001C */  addiu      $a0, $zero, 0x1C
  .L8008F624_5FAD4:
    /* 5FAD4 8008F624 00440019 */  multu      $v0, $a0
    /* 5FAD8 8008F628 24420001 */  addiu      $v0, $v0, 0x1
    /* 5FADC 8008F62C 304CFFFF */  andi       $t4, $v0, 0xFFFF
    /* 5FAE0 8008F630 298101C2 */  slti       $at, $t4, 0x1C2
    /* 5FAE4 8008F634 01801025 */  or         $v0, $t4, $zero
    /* 5FAE8 8008F638 00005012 */  mflo       $t2
    /* 5FAEC 8008F63C 006A5821 */  addu       $t3, $v1, $t2
    /* 5FAF0 8008F640 1420FFF8 */  bnez       $at, .L8008F624_5FAD4
    /* 5FAF4 8008F644 A1600000 */   sb        $zero, 0x0($t3)
    /* 5FAF8 8008F648 3C01800E */  lui        $at, %hi(D_800E197A)
    /* 5FAFC 8008F64C A420197A */  sh         $zero, %lo(D_800E197A)($at)
    /* 5FB00 8008F650 3C01800E */  lui        $at, %hi(D_800E1978)
    /* 5FB04 8008F654 A4201978 */  sh         $zero, %lo(D_800E1978)($at)
    /* 5FB08 8008F658 24040002 */  addiu      $a0, $zero, 0x2
    /* 5FB0C 8008F65C 0C023D4D */  jal        func_8008F534_5F9E4
    /* 5FB10 8008F660 24050095 */   addiu     $a1, $zero, 0x95
    /* 5FB14 8008F664 24040003 */  addiu      $a0, $zero, 0x3
    /* 5FB18 8008F668 0C023D4D */  jal        func_8008F534_5F9E4
    /* 5FB1C 8008F66C 24050094 */   addiu     $a1, $zero, 0x94
    /* 5FB20 8008F670 24040005 */  addiu      $a0, $zero, 0x5
    /* 5FB24 8008F674 0C023D4D */  jal        func_8008F534_5F9E4
    /* 5FB28 8008F678 24050093 */   addiu     $a1, $zero, 0x93
    /* 5FB2C 8008F67C 2404000A */  addiu      $a0, $zero, 0xA
    /* 5FB30 8008F680 0C023D4D */  jal        func_8008F534_5F9E4
    /* 5FB34 8008F684 24050092 */   addiu     $a1, $zero, 0x92
    /* 5FB38 8008F688 3C01800E */  lui        $at, %hi(D_800DE0BE)
    /* 5FB3C 8008F68C A030E0BE */  sb         $s0, %lo(D_800DE0BE)($at)
    /* 5FB40 8008F690 3C01800E */  lui        $at, %hi(D_800DE0BF)
    /* 5FB44 8008F694 A030E0BF */  sb         $s0, %lo(D_800DE0BF)($at)
    /* 5FB48 8008F698 3C01800E */  lui        $at, %hi(D_800DE0B6)
    /* 5FB4C 8008F69C A020E0B6 */  sb         $zero, %lo(D_800DE0B6)($at)
    /* 5FB50 8008F6A0 3C01800E */  lui        $at, %hi(D_800DE0B7)
    /* 5FB54 8008F6A4 A020E0B7 */  sb         $zero, %lo(D_800DE0B7)($at)
    /* 5FB58 8008F6A8 3C01800E */  lui        $at, %hi(D_800DE0B8)
    /* 5FB5C 8008F6AC A020E0B8 */  sb         $zero, %lo(D_800DE0B8)($at)
    /* 5FB60 8008F6B0 3C01800E */  lui        $at, %hi(D_800DE0B9)
    /* 5FB64 8008F6B4 A020E0B9 */  sb         $zero, %lo(D_800DE0B9)($at)
    /* 5FB68 8008F6B8 3C01800E */  lui        $at, %hi(D_800DE0BD)
    /* 5FB6C 8008F6BC A020E0BD */  sb         $zero, %lo(D_800DE0BD)($at)
    /* 5FB70 8008F6C0 3C01800E */  lui        $at, %hi(D_800DE0BA)
    /* 5FB74 8008F6C4 A020E0BA */  sb         $zero, %lo(D_800DE0BA)($at)
    /* 5FB78 8008F6C8 3C01800E */  lui        $at, %hi(D_800DE0BB)
    /* 5FB7C 8008F6CC A030E0BB */  sb         $s0, %lo(D_800DE0BB)($at)
    /* 5FB80 8008F6D0 3C01800E */  lui        $at, %hi(D_800DE839)
    /* 5FB84 8008F6D4 A020E839 */  sb         $zero, %lo(D_800DE839)($at)
    /* 5FB88 8008F6D8 3C01800E */  lui        $at, %hi(D_800DE838)
    /* 5FB8C 8008F6DC 240D0004 */  addiu      $t5, $zero, 0x4
    /* 5FB90 8008F6E0 A02DE838 */  sb         $t5, %lo(D_800DE838)($at)
    /* 5FB94 8008F6E4 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 5FB98 8008F6E8 3C01800E */  lui        $at, %hi(D_800E1D6B)
    /* 5FB9C 8008F6EC A0201D6B */  sb         $zero, %lo(D_800E1D6B)($at)
    /* 5FBA0 8008F6F0 3C01800E */  lui        $at, %hi(D_800E1D6C)
    /* 5FBA4 8008F6F4 8FB00018 */  lw         $s0, 0x18($sp)
    /* 5FBA8 8008F6F8 A0201D6C */  sb         $zero, %lo(D_800E1D6C)($at)
    /* 5FBAC 8008F6FC 03E00008 */  jr         $ra
    /* 5FBB0 8008F700 27BD0020 */   addiu     $sp, $sp, 0x20
endlabel func_8008F574_5FA24
