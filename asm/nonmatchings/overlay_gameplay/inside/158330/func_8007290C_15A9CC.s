nonmatching func_8007290C_15A9CC, 0x57C

glabel func_8007290C_15A9CC
    /* 15A9CC 8007290C 3C0E8005 */  lui        $t6, %hi(buildingInteriorToLoadId)
    /* 15A9D0 80072910 8DCE2548 */  lw         $t6, %lo(buildingInteriorToLoadId)($t6)
    /* 15A9D4 80072914 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 15A9D8 80072918 240100FF */  addiu      $at, $zero, 0xFF
    /* 15A9DC 8007291C AFBF0024 */  sw         $ra, 0x24($sp)
    /* 15A9E0 80072920 11C10154 */  beq        $t6, $at, .L80072E74_15AF34
    /* 15A9E4 80072924 AFB00020 */   sw        $s0, 0x20($sp)
    /* 15A9E8 80072928 0C022EA8 */  jal        func_8008BAA0_173B60
    /* 15A9EC 8007292C 00000000 */   nop
    /* 15A9F0 80072930 0C004DC8 */  jal        func_80013720_14320
    /* 15A9F4 80072934 00000000 */   nop
    /* 15A9F8 80072938 3C048004 */  lui        $a0, %hi(currentLevel)
    /* 15A9FC 8007293C 3C05800A */  lui        $a1, %hi(D_800A5720)
    /* 15AA00 80072940 24A55720 */  addiu      $a1, $a1, %lo(D_800A5720)
    /* 15AA04 80072944 0C004616 */  jal        func_80011858_12458
    /* 15AA08 80072948 8C847F90 */   lw        $a0, %lo(currentLevel)($a0)
    /* 15AA0C 8007294C 3C0F8004 */  lui        $t7, %hi(currentLevel)
    /* 15AA10 80072950 8DEF7F90 */  lw         $t7, %lo(currentLevel)($t7)
    /* 15AA14 80072954 3C18800F */  lui        $t8, %hi(D_800EAC90)
    /* 15AA18 80072958 2718AC90 */  addiu      $t8, $t8, %lo(D_800EAC90)
    /* 15AA1C 8007295C 3C04800D */  lui        $a0, %hi(D_800D6460)
    /* 15AA20 80072960 3C05800E */  lui        $a1, %hi(D_800E7490)
    /* 15AA24 80072964 3C06800F */  lui        $a2, %hi(D_800EAD90)
    /* 15AA28 80072968 3C07800F */  lui        $a3, %hi(D_800EAE98)
    /* 15AA2C 8007296C 24E7AE98 */  addiu      $a3, $a3, %lo(D_800EAE98)
    /* 15AA30 80072970 24C6AD90 */  addiu      $a2, $a2, %lo(D_800EAD90)
    /* 15AA34 80072974 24A57490 */  addiu      $a1, $a1, %lo(D_800E7490)
    /* 15AA38 80072978 24846460 */  addiu      $a0, $a0, %lo(D_800D6460)
    /* 15AA3C 8007297C AFB80014 */  sw         $t8, 0x14($sp)
    /* 15AA40 80072980 0C00417C */  jal        func_800105F0_111F0
    /* 15AA44 80072984 AFAF0010 */   sw        $t7, 0x10($sp)
    /* 15AA48 80072988 3C10800E */  lui        $s0, %hi(D_800E65A8)
    /* 15AA4C 8007298C 3C01800F */  lui        $at, %hi(D_800EAE90)
    /* 15AA50 80072990 AC22AE90 */  sw         $v0, %lo(D_800EAE90)($at)
    /* 15AA54 80072994 261065A8 */  addiu      $s0, $s0, %lo(D_800E65A8)
    /* 15AA58 80072998 24190001 */  addiu      $t9, $zero, 0x1
    /* 15AA5C 8007299C 0C01C7C2 */  jal        func_80071F08_159FC8
    /* 15AA60 800729A0 AE190000 */   sw        $t9, 0x0($s0)
    /* 15AA64 800729A4 3C048004 */  lui        $a0, %hi(D_80047F93)
    /* 15AA68 800729A8 0C00476F */  jal        func_80011DBC_129BC
    /* 15AA6C 800729AC 90847F93 */   lbu       $a0, %lo(D_80047F93)($a0)
  .L800729B0_15AA70:
    /* 15AA70 800729B0 0C000D17 */  jal        func_8000345C_405C
    /* 15AA74 800729B4 24041000 */   addiu     $a0, $zero, 0x1000
    /* 15AA78 800729B8 0C000D17 */  jal        func_8000345C_405C
    /* 15AA7C 800729BC 34048000 */   ori       $a0, $zero, 0x8000
    /* 15AA80 800729C0 3C088004 */  lui        $t0, %hi(D_8004771C)
    /* 15AA84 800729C4 8508771C */  lh         $t0, %lo(D_8004771C)($t0)
    /* 15AA88 800729C8 2401FFFF */  addiu      $at, $zero, -0x1
    /* 15AA8C 800729CC 15010007 */  bne        $t0, $at, .L800729EC_15AAAC
    /* 15AA90 800729D0 00000000 */   nop
    /* 15AA94 800729D4 0C000D17 */  jal        func_8000345C_405C
    /* 15AA98 800729D8 24040800 */   addiu     $a0, $zero, 0x800
    /* 15AA9C 800729DC 0C000D17 */  jal        func_8000345C_405C
    /* 15AAA0 800729E0 24040200 */   addiu     $a0, $zero, 0x200
    /* 15AAA4 800729E4 0C000D17 */  jal        func_8000345C_405C
    /* 15AAA8 800729E8 24040100 */   addiu     $a0, $zero, 0x100
  .L800729EC_15AAAC:
    /* 15AAAC 800729EC 3C01800E */  lui        $at, %hi(D_800E6698)
    /* 15AAB0 800729F0 AC206698 */  sw         $zero, %lo(D_800E6698)($at)
    /* 15AAB4 800729F4 3C01800E */  lui        $at, %hi(D_800E669C)
    /* 15AAB8 800729F8 0C01C615 */  jal        func_80071854_159914
    /* 15AABC 800729FC AC20669C */   sw        $zero, %lo(D_800E669C)($at)
    /* 15AAC0 80072A00 8E020000 */  lw         $v0, 0x0($s0)
    /* 15AAC4 80072A04 30494002 */  andi       $t1, $v0, 0x4002
    /* 15AAC8 80072A08 55200005 */  bnel       $t1, $zero, .L80072A20_15AAE0
    /* 15AACC 80072A0C 304A4000 */   andi      $t2, $v0, 0x4000
    /* 15AAD0 80072A10 0C01CBED */  jal        func_80072FB4_15B074
    /* 15AAD4 80072A14 00000000 */   nop
    /* 15AAD8 80072A18 8E020000 */  lw         $v0, 0x0($s0)
    /* 15AADC 80072A1C 304A4000 */  andi       $t2, $v0, 0x4000
  .L80072A20_15AAE0:
    /* 15AAE0 80072A20 1140000B */  beqz       $t2, .L80072A50_15AB10
    /* 15AAE4 80072A24 00000000 */   nop
    /* 15AAE8 80072A28 0C01F23F */  jal        func_8007C8FC_1649BC
    /* 15AAEC 80072A2C 00000000 */   nop
    /* 15AAF0 80072A30 0C01DEE5 */  jal        func_80077B94_15FC54
    /* 15AAF4 80072A34 00000000 */   nop
    /* 15AAF8 80072A38 0C01E12E */  jal        func_800784B8_160578
    /* 15AAFC 80072A3C 00000000 */   nop
    /* 15AB00 80072A40 0C01C544 */  jal        func_80071510_1595D0
    /* 15AB04 80072A44 00000000 */   nop
    /* 15AB08 80072A48 0C022D1D */  jal        func_8008B474_173534
    /* 15AB0C 80072A4C 00000000 */   nop
  .L80072A50_15AB10:
    /* 15AB10 80072A50 0C01FF1D */  jal        func_8007FC74_167D34
    /* 15AB14 80072A54 00000000 */   nop
    /* 15AB18 80072A58 0C01D5A3 */  jal        func_8007568C_15D74C
    /* 15AB1C 80072A5C 00000000 */   nop
    /* 15AB20 80072A60 0C01F24F */  jal        func_8007C93C_1649FC
    /* 15AB24 80072A64 00000000 */   nop
    /* 15AB28 80072A68 0C01D3FC */  jal        func_80074FF0_15D0B0
    /* 15AB2C 80072A6C 00000000 */   nop
    /* 15AB30 80072A70 0C022C6A */  jal        func_8008B1A8_173268
    /* 15AB34 80072A74 00000000 */   nop
    /* 15AB38 80072A78 0C020AD4 */  jal        func_80082B50_16AC10
    /* 15AB3C 80072A7C 00000000 */   nop
    /* 15AB40 80072A80 0C023640 */  jal        func_8008D900_1759C0
    /* 15AB44 80072A84 00000000 */   nop
    /* 15AB48 80072A88 0C002C11 */  jal        func_8000B044_BC44
    /* 15AB4C 80072A8C 00000000 */   nop
    /* 15AB50 80072A90 0C0016E1 */  jal        func_80005B84_6784
    /* 15AB54 80072A94 00000000 */   nop
    /* 15AB58 80072A98 0C001417 */  jal        func_8000505C_5C5C
    /* 15AB5C 80072A9C 00000000 */   nop
    /* 15AB60 80072AA0 8E020000 */  lw         $v0, 0x0($s0)
    /* 15AB64 80072AA4 3C0C800E */  lui        $t4, %hi(D_800E65AC)
    /* 15AB68 80072AA8 3C0E800E */  lui        $t6, %hi(D_800E66A4)
    /* 15AB6C 80072AAC 304B0002 */  andi       $t3, $v0, 0x2
    /* 15AB70 80072AB0 55600006 */  bnel       $t3, $zero, .L80072ACC_15AB8C
    /* 15AB74 80072AB4 24010001 */   addiu     $at, $zero, 0x1
    /* 15AB78 80072AB8 8D8C65AC */  lw         $t4, %lo(D_800E65AC)($t4)
    /* 15AB7C 80072ABC 3C01800E */  lui        $at, %hi(D_800E65AC)
    /* 15AB80 80072AC0 258D0001 */  addiu      $t5, $t4, 0x1
    /* 15AB84 80072AC4 AC2D65AC */  sw         $t5, %lo(D_800E65AC)($at)
    /* 15AB88 80072AC8 24010001 */  addiu      $at, $zero, 0x1
  .L80072ACC_15AB8C:
    /* 15AB8C 80072ACC 14410018 */  bne        $v0, $at, .L80072B30_15ABF0
    /* 15AB90 80072AD0 00000000 */   nop
    /* 15AB94 80072AD4 8DCE66A4 */  lw         $t6, %lo(D_800E66A4)($t6)
    /* 15AB98 80072AD8 24010005 */  addiu      $at, $zero, 0x5
    /* 15AB9C 80072ADC 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 15ABA0 80072AE0 15C10013 */  bne        $t6, $at, .L80072B30_15ABF0
    /* 15ABA4 80072AE4 00000000 */   nop
    /* 15ABA8 80072AE8 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 15ABAC 80072AEC 3C038025 */  lui        $v1, %hi(D_80257A3A)
    /* 15ABB0 80072AF0 844F001C */  lh         $t7, 0x1C($v0)
    /* 15ABB4 80072AF4 25F80002 */  addiu      $t8, $t7, 0x2
    /* 15ABB8 80072AF8 A458001C */  sh         $t8, 0x1C($v0)
    /* 15ABBC 80072AFC 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 15ABC0 80072B00 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 15ABC4 80072B04 9059001A */  lbu        $t9, 0x1A($v0)
    /* 15ABC8 80072B08 8449001C */  lh         $t1, 0x1C($v0)
    /* 15ABCC 80072B0C 001940C0 */  sll        $t0, $t9, 3
    /* 15ABD0 80072B10 01194023 */  subu       $t0, $t0, $t9
    /* 15ABD4 80072B14 00084100 */  sll        $t0, $t0, 4
    /* 15ABD8 80072B18 00681821 */  addu       $v1, $v1, $t0
    /* 15ABDC 80072B1C 94637A3A */  lhu        $v1, %lo(D_80257A3A)($v1)
    /* 15ABE0 80072B20 0069082A */  slt        $at, $v1, $t1
    /* 15ABE4 80072B24 10200002 */  beqz       $at, .L80072B30_15ABF0
    /* 15ABE8 80072B28 00000000 */   nop
    /* 15ABEC 80072B2C A443001C */  sh         $v1, 0x1C($v0)
  .L80072B30_15ABF0:
    /* 15ABF0 80072B30 3C02800E */  lui        $v0, %hi(D_800E6690)
    /* 15ABF4 80072B34 8C426690 */  lw         $v0, %lo(D_800E6690)($v0)
    /* 15ABF8 80072B38 1440000D */  bnez       $v0, .L80072B70_15AC30
    /* 15ABFC 80072B3C 00000000 */   nop
    /* 15AC00 80072B40 8E0A0000 */  lw         $t2, 0x0($s0)
    /* 15AC04 80072B44 00002025 */  or         $a0, $zero, $zero
    /* 15AC08 80072B48 00002825 */  or         $a1, $zero, $zero
    /* 15AC0C 80072B4C 314B0300 */  andi       $t3, $t2, 0x300
    /* 15AC10 80072B50 11600007 */  beqz       $t3, .L80072B70_15AC30
    /* 15AC14 80072B54 00003025 */   or        $a2, $zero, $zero
    /* 15AC18 80072B58 0C0016BB */  jal        func_80005AEC_66EC
    /* 15AC1C 80072B5C 240700C8 */   addiu     $a3, $zero, 0xC8
    /* 15AC20 80072B60 240C0001 */  addiu      $t4, $zero, 0x1
    /* 15AC24 80072B64 3C01800E */  lui        $at, %hi(D_800E6690)
    /* 15AC28 80072B68 AC2C6690 */  sw         $t4, %lo(D_800E6690)($at)
    /* 15AC2C 80072B6C 24020001 */  addiu      $v0, $zero, 0x1
  .L80072B70_15AC30:
    /* 15AC30 80072B70 10400005 */  beqz       $v0, .L80072B88_15AC48
    /* 15AC34 80072B74 00000000 */   nop
    /* 15AC38 80072B78 0C0016CC */  jal        func_80005B30_6730
    /* 15AC3C 80072B7C 00000000 */   nop
    /* 15AC40 80072B80 3C01800E */  lui        $at, %hi(D_800E6694)
    /* 15AC44 80072B84 AC226694 */  sw         $v0, %lo(D_800E6694)($at)
  .L80072B88_15AC48:
    /* 15AC48 80072B88 3C03800E */  lui        $v1, %hi(D_800E6694)
    /* 15AC4C 80072B8C 8C636694 */  lw         $v1, %lo(D_800E6694)($v1)
    /* 15AC50 80072B90 1060002D */  beqz       $v1, .L80072C48_15AD08
    /* 15AC54 80072B94 00000000 */   nop
    /* 15AC58 80072B98 8E0D0000 */  lw         $t5, 0x0($s0)
    /* 15AC5C 80072B9C 3C02800E */  lui        $v0, %hi(D_800E65D4)
    /* 15AC60 80072BA0 3C198004 */  lui        $t9, %hi(D_80047F40)
    /* 15AC64 80072BA4 31AE0200 */  andi       $t6, $t5, 0x200
    /* 15AC68 80072BA8 11C00027 */  beqz       $t6, .L80072C48_15AD08
    /* 15AC6C 80072BAC 00000000 */   nop
    /* 15AC70 80072BB0 8C4265D4 */  lw         $v0, %lo(D_800E65D4)($v0)
    /* 15AC74 80072BB4 27397F40 */  addiu      $t9, $t9, %lo(D_80047F40)
    /* 15AC78 80072BB8 240A0001 */  addiu      $t2, $zero, 0x1
    /* 15AC7C 80072BBC 04410003 */  bgez       $v0, .L80072BCC_15AC8C
    /* 15AC80 80072BC0 00027943 */   sra       $t7, $v0, 5
    /* 15AC84 80072BC4 2441001F */  addiu      $at, $v0, 0x1F
    /* 15AC88 80072BC8 00017943 */  sra        $t7, $at, 5
  .L80072BCC_15AC8C:
    /* 15AC8C 80072BCC 000FC080 */  sll        $t8, $t7, 2
    /* 15AC90 80072BD0 03191821 */  addu       $v1, $t8, $t9
    /* 15AC94 80072BD4 8C680000 */  lw         $t0, 0x0($v1)
    /* 15AC98 80072BD8 04410004 */  bgez       $v0, .L80072BEC_15ACAC
    /* 15AC9C 80072BDC 3049001F */   andi      $t1, $v0, 0x1F
    /* 15ACA0 80072BE0 11200002 */  beqz       $t1, .L80072BEC_15ACAC
    /* 15ACA4 80072BE4 00000000 */   nop
    /* 15ACA8 80072BE8 2529FFE0 */  addiu      $t1, $t1, -0x20
  .L80072BEC_15ACAC:
    /* 15ACAC 80072BEC 012A5804 */  sllv       $t3, $t2, $t1
    /* 15ACB0 80072BF0 010B6025 */  or         $t4, $t0, $t3
    /* 15ACB4 80072BF4 0C01CC4F */  jal        func_8007313C_15B1FC
    /* 15ACB8 80072BF8 AC6C0000 */   sw        $t4, 0x0($v1)
    /* 15ACBC 80072BFC 0C01F22F */  jal        func_8007C8BC_16497C
    /* 15ACC0 80072C00 00000000 */   nop
    /* 15ACC4 80072C04 0C01FDC9 */  jal        func_8007F724_1677E4
    /* 15ACC8 80072C08 00000000 */   nop
    /* 15ACCC 80072C0C 3C0D800E */  lui        $t5, %hi(D_800E65ED)
    /* 15ACD0 80072C10 91AD65ED */  lbu        $t5, %lo(D_800E65ED)($t5)
    /* 15ACD4 80072C14 3C018005 */  lui        $at, %hi(buildingInteriorToLoadId)
    /* 15ACD8 80072C18 0C01CDB1 */  jal        func_800736C4_15B784
    /* 15ACDC 80072C1C AC2D2548 */   sw        $t5, %lo(buildingInteriorToLoadId)($at)
    /* 15ACE0 80072C20 0C01CC16 */  jal        func_80073058_15B118
    /* 15ACE4 80072C24 00000000 */   nop
    /* 15ACE8 80072C28 0C01C7C2 */  jal        func_80071F08_159FC8
    /* 15ACEC 80072C2C 00000000 */   nop
    /* 15ACF0 80072C30 0C0015AA */  jal        func_800056A8_62A8
    /* 15ACF4 80072C34 00000000 */   nop
    /* 15ACF8 80072C38 0C0015AA */  jal        func_800056A8_62A8
    /* 15ACFC 80072C3C 00000000 */   nop
    /* 15AD00 80072C40 3C03800E */  lui        $v1, %hi(D_800E6694)
    /* 15AD04 80072C44 8C636694 */  lw         $v1, %lo(D_800E6694)($v1)
  .L80072C48_15AD08:
    /* 15AD08 80072C48 3C0E8005 */  lui        $t6, %hi(D_80052AD0)
    /* 15AD0C 80072C4C 8DCE2AD0 */  lw         $t6, %lo(D_80052AD0)($t6)
    /* 15AD10 80072C50 3C028005 */  lui        $v0, %hi(D_80052AD4)
    /* 15AD14 80072C54 15C0000B */  bnez       $t6, .L80072C84_15AD44
    /* 15AD18 80072C58 00000000 */   nop
    /* 15AD1C 80072C5C 8C422AD4 */  lw         $v0, %lo(D_80052AD4)($v0)
    /* 15AD20 80072C60 3C018005 */  lui        $at, %hi(D_80052AD4)
    /* 15AD24 80072C64 10400003 */  beqz       $v0, .L80072C74_15AD34
    /* 15AD28 80072C68 244FFFFF */   addiu     $t7, $v0, -0x1
    /* 15AD2C 80072C6C 10000005 */  b          .L80072C84_15AD44
    /* 15AD30 80072C70 AC2F2AD4 */   sw        $t7, %lo(D_80052AD4)($at)
  .L80072C74_15AD34:
    /* 15AD34 80072C74 8E180000 */  lw         $t8, 0x0($s0)
    /* 15AD38 80072C78 3C010002 */  lui        $at, (0x20000 >> 16)
    /* 15AD3C 80072C7C 0301C825 */  or         $t9, $t8, $at
    /* 15AD40 80072C80 AE190000 */  sw         $t9, 0x0($s0)
  .L80072C84_15AD44:
    /* 15AD44 80072C84 14600007 */  bnez       $v1, .L80072CA4_15AD64
    /* 15AD48 80072C88 00000000 */   nop
    /* 15AD4C 80072C8C 8E0A0000 */  lw         $t2, 0x0($s0)
    /* 15AD50 80072C90 3C01000A */  lui        $at, (0xA2000 >> 16)
    /* 15AD54 80072C94 34212000 */  ori        $at, $at, (0xA2000 & 0xFFFF)
    /* 15AD58 80072C98 01414824 */  and        $t1, $t2, $at
    /* 15AD5C 80072C9C 1120FF44 */  beqz       $t1, .L800729B0_15AA70
    /* 15AD60 80072CA0 00000000 */   nop
  .L80072CA4_15AD64:
    /* 15AD64 80072CA4 3C02800E */  lui        $v0, %hi(D_800E65D4)
    /* 15AD68 80072CA8 8C4265D4 */  lw         $v0, %lo(D_800E65D4)($v0)
    /* 15AD6C 80072CAC 3C0C8004 */  lui        $t4, %hi(D_80047F40)
    /* 15AD70 80072CB0 258C7F40 */  addiu      $t4, $t4, %lo(D_80047F40)
    /* 15AD74 80072CB4 04410003 */  bgez       $v0, .L80072CC4_15AD84
    /* 15AD78 80072CB8 00024143 */   sra       $t0, $v0, 5
    /* 15AD7C 80072CBC 2441001F */  addiu      $at, $v0, 0x1F
    /* 15AD80 80072CC0 00014143 */  sra        $t0, $at, 5
  .L80072CC4_15AD84:
    /* 15AD84 80072CC4 00085880 */  sll        $t3, $t0, 2
    /* 15AD88 80072CC8 016C1821 */  addu       $v1, $t3, $t4
    /* 15AD8C 80072CCC 8C6D0000 */  lw         $t5, 0x0($v1)
    /* 15AD90 80072CD0 240F0001 */  addiu      $t7, $zero, 0x1
    /* 15AD94 80072CD4 04410004 */  bgez       $v0, .L80072CE8_15ADA8
    /* 15AD98 80072CD8 304E001F */   andi      $t6, $v0, 0x1F
    /* 15AD9C 80072CDC 11C00002 */  beqz       $t6, .L80072CE8_15ADA8
    /* 15ADA0 80072CE0 00000000 */   nop
    /* 15ADA4 80072CE4 25CEFFE0 */  addiu      $t6, $t6, -0x20
  .L80072CE8_15ADA8:
    /* 15ADA8 80072CE8 01CFC004 */  sllv       $t8, $t7, $t6
    /* 15ADAC 80072CEC 01B8C825 */  or         $t9, $t5, $t8
    /* 15ADB0 80072CF0 0C01CDB1 */  jal        func_800736C4_15B784
    /* 15ADB4 80072CF4 AC790000 */   sw        $t9, 0x0($v1)
    /* 15ADB8 80072CF8 0C01CC4F */  jal        func_8007313C_15B1FC
    /* 15ADBC 80072CFC 00000000 */   nop
    /* 15ADC0 80072D00 3C0A800E */  lui        $t2, %hi(D_800E65B8)
    /* 15ADC4 80072D04 8D4A65B8 */  lw         $t2, %lo(D_800E65B8)($t2)
    /* 15ADC8 80072D08 3C018005 */  lui        $at, %hi(D_80052550)
    /* 15ADCC 80072D0C AC202550 */  sw         $zero, %lo(D_80052550)($at)
    /* 15ADD0 80072D10 51400007 */  beql       $t2, $zero, .L80072D30_15ADF0
    /* 15ADD4 80072D14 8E080000 */   lw        $t0, 0x0($s0)
    /* 15ADD8 80072D18 0C01CD5B */  jal        func_8007356C_15B62C
    /* 15ADDC 80072D1C 00000000 */   nop
    /* 15ADE0 80072D20 24090001 */  addiu      $t1, $zero, 0x1
    /* 15ADE4 80072D24 3C018005 */  lui        $at, %hi(D_80052550)
    /* 15ADE8 80072D28 AC292550 */  sw         $t1, %lo(D_80052550)($at)
    /* 15ADEC 80072D2C 8E080000 */  lw         $t0, 0x0($s0)
  .L80072D30_15ADF0:
    /* 15ADF0 80072D30 3C01000A */  lui        $at, (0xA2000 >> 16)
    /* 15ADF4 80072D34 34212000 */  ori        $at, $at, (0xA2000 & 0xFFFF)
    /* 15ADF8 80072D38 01015824 */  and        $t3, $t0, $at
    /* 15ADFC 80072D3C 1560000B */  bnez       $t3, .L80072D6C_15AE2C
    /* 15AE00 80072D40 00000000 */   nop
    /* 15AE04 80072D44 0C0015AA */  jal        func_800056A8_62A8
    /* 15AE08 80072D48 00000000 */   nop
    /* 15AE0C 80072D4C 0C0015AA */  jal        func_800056A8_62A8
    /* 15AE10 80072D50 00000000 */   nop
    /* 15AE14 80072D54 0C0015AA */  jal        func_800056A8_62A8
    /* 15AE18 80072D58 00000000 */   nop
    /* 15AE1C 80072D5C 0C0015AA */  jal        func_800056A8_62A8
    /* 15AE20 80072D60 00000000 */   nop
    /* 15AE24 80072D64 1000000D */  b          .L80072D9C_15AE5C
    /* 15AE28 80072D68 00000000 */   nop
  .L80072D6C_15AE2C:
    /* 15AE2C 80072D6C 0C001431 */  jal        func_800050C4_5CC4
    /* 15AE30 80072D70 00000000 */   nop
    /* 15AE34 80072D74 0C001417 */  jal        func_8000505C_5C5C
    /* 15AE38 80072D78 00000000 */   nop
    /* 15AE3C 80072D7C 0C001431 */  jal        func_800050C4_5CC4
    /* 15AE40 80072D80 00000000 */   nop
    /* 15AE44 80072D84 0C001417 */  jal        func_8000505C_5C5C
    /* 15AE48 80072D88 00000000 */   nop
    /* 15AE4C 80072D8C 0C001431 */  jal        func_800050C4_5CC4
    /* 15AE50 80072D90 00000000 */   nop
    /* 15AE54 80072D94 0C001417 */  jal        func_8000505C_5C5C
    /* 15AE58 80072D98 00000000 */   nop
  .L80072D9C_15AE5C:
    /* 15AE5C 80072D9C 0C01F22F */  jal        func_8007C8BC_16497C
    /* 15AE60 80072DA0 00000000 */   nop
    /* 15AE64 80072DA4 0C01FDC9 */  jal        func_8007F724_1677E4
    /* 15AE68 80072DA8 00000000 */   nop
    /* 15AE6C 80072DAC 0C004DBC */  jal        func_800136F0_142F0
    /* 15AE70 80072DB0 00000000 */   nop
    /* 15AE74 80072DB4 8E020000 */  lw         $v0, 0x0($s0)
    /* 15AE78 80072DB8 240F0001 */  addiu      $t7, $zero, 0x1
    /* 15AE7C 80072DBC 3C018005 */  lui        $at, %hi(D_80052550)
    /* 15AE80 80072DC0 304C2000 */  andi       $t4, $v0, 0x2000
    /* 15AE84 80072DC4 11800005 */  beqz       $t4, .L80072DDC_15AE9C
    /* 15AE88 80072DC8 00027300 */   sll       $t6, $v0, 12
    /* 15AE8C 80072DCC AC2F2550 */  sw         $t7, %lo(D_80052550)($at)
    /* 15AE90 80072DD0 3C018005 */  lui        $at, %hi(gameplayMode)
    /* 15AE94 80072DD4 10000027 */  b          .L80072E74_15AF34
    /* 15AE98 80072DD8 AC202ADC */   sw        $zero, %lo(gameplayMode)($at)
  .L80072DDC_15AE9C:
    /* 15AE9C 80072DDC 05C10008 */  bgez       $t6, .L80072E00_15AEC0
    /* 15AEA0 80072DE0 30594000 */   andi      $t9, $v0, 0x4000
    /* 15AEA4 80072DE4 240D0001 */  addiu      $t5, $zero, 0x1
    /* 15AEA8 80072DE8 3C018005 */  lui        $at, %hi(D_80052550)
    /* 15AEAC 80072DEC AC2D2550 */  sw         $t5, %lo(D_80052550)($at)
    /* 15AEB0 80072DF0 3C018005 */  lui        $at, %hi(gameplayMode)
    /* 15AEB4 80072DF4 24180010 */  addiu      $t8, $zero, 0x10
    /* 15AEB8 80072DF8 1000001E */  b          .L80072E74_15AF34
    /* 15AEBC 80072DFC AC382ADC */   sw        $t8, %lo(gameplayMode)($at)
  .L80072E00_15AEC0:
    /* 15AEC0 80072E00 13200005 */  beqz       $t9, .L80072E18_15AED8
    /* 15AEC4 80072E04 00024B80 */   sll       $t1, $v0, 14
    /* 15AEC8 80072E08 240A000C */  addiu      $t2, $zero, 0xC
    /* 15AECC 80072E0C 3C018005 */  lui        $at, %hi(gameplayMode)
    /* 15AED0 80072E10 10000018 */  b          .L80072E74_15AF34
    /* 15AED4 80072E14 AC2A2ADC */   sw        $t2, %lo(gameplayMode)($at)
  .L80072E18_15AED8:
    /* 15AED8 80072E18 05210005 */  bgez       $t1, .L80072E30_15AEF0
    /* 15AEDC 80072E1C 3C0B8004 */   lui       $t3, %hi(currentLevel)
    /* 15AEE0 80072E20 2408000C */  addiu      $t0, $zero, 0xC
    /* 15AEE4 80072E24 3C018005 */  lui        $at, %hi(gameplayMode)
    /* 15AEE8 80072E28 10000012 */  b          .L80072E74_15AF34
    /* 15AEEC 80072E2C AC282ADC */   sw        $t0, %lo(gameplayMode)($at)
  .L80072E30_15AEF0:
    /* 15AEF0 80072E30 8D6B7F90 */  lw         $t3, %lo(currentLevel)($t3)
    /* 15AEF4 80072E34 24010004 */  addiu      $at, $zero, 0x4
    /* 15AEF8 80072E38 24040000 */  addiu      $a0, $zero, 0x0
    /* 15AEFC 80072E3C 55610008 */  bnel       $t3, $at, .L80072E60_15AF20
    /* 15AF00 80072E40 240C0001 */   addiu     $t4, $zero, 0x1
    /* 15AF04 80072E44 0C001C9B */  jal        func_8000726C_7E6C
    /* 15AF08 80072E48 24050001 */   addiu     $a1, $zero, 0x1
    /* 15AF0C 80072E4C 10400003 */  beqz       $v0, .L80072E5C_15AF1C
    /* 15AF10 80072E50 24040000 */   addiu     $a0, $zero, 0x0
    /* 15AF14 80072E54 0C001CEE */  jal        func_800073B8_7FB8
    /* 15AF18 80072E58 24050001 */   addiu     $a1, $zero, 0x1
  .L80072E5C_15AF1C:
    /* 15AF1C 80072E5C 240C0001 */  addiu      $t4, $zero, 0x1
  .L80072E60_15AF20:
    /* 15AF20 80072E60 3C018005 */  lui        $at, %hi(gameplayMode)
    /* 15AF24 80072E64 AC2C2ADC */  sw         $t4, %lo(gameplayMode)($at)
    /* 15AF28 80072E68 3C018007 */  lui        $at, %hi(D_80068080)
    /* 15AF2C 80072E6C 240F0007 */  addiu      $t7, $zero, 0x7
    /* 15AF30 80072E70 AC2F8080 */  sw         $t7, %lo(D_80068080)($at)
  .L80072E74_15AF34:
    /* 15AF34 80072E74 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 15AF38 80072E78 8FB00020 */  lw         $s0, 0x20($sp)
    /* 15AF3C 80072E7C 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 15AF40 80072E80 03E00008 */  jr         $ra
    /* 15AF44 80072E84 00000000 */   nop
endlabel func_8007290C_15A9CC
