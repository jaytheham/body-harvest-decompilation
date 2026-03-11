nonmatching func_8008C8A4_174964, 0x688

glabel func_8008C8A4_174964
    /* 174964 8008C8A4 3C0E8007 */  lui        $t6, %hi(D_80068084)
    /* 174968 8008C8A8 3C0F8007 */  lui        $t7, %hi(D_80068088)
    /* 17496C 8008C8AC 8DEF8088 */  lw         $t7, %lo(D_80068088)($t7)
    /* 174970 8008C8B0 8DCE8084 */  lw         $t6, %lo(D_80068084)($t6)
    /* 174974 8008C8B4 3C01C47A */  lui        $at, (0xC47A0000 >> 16)
    /* 174978 8008C8B8 448F3000 */  mtc1       $t7, $f6
    /* 17497C 8008C8BC 448E2000 */  mtc1       $t6, $f4
    /* 174980 8008C8C0 44814000 */  mtc1       $at, $f8
    /* 174984 8008C8C4 468031A0 */  cvt.s.w    $f6, $f6
    /* 174988 8008C8C8 3C01447A */  lui        $at, (0x447A0000 >> 16)
    /* 17498C 8008C8CC 44800000 */  mtc1       $zero, $f0
    /* 174990 8008C8D0 44815000 */  mtc1       $at, $f10
    /* 174994 8008C8D4 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 174998 8008C8D8 46802120 */  cvt.s.w    $f4, $f4
    /* 17499C 8008C8DC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 1749A0 8008C8E0 44818000 */  mtc1       $at, $f16
    /* 1749A4 8008C8E4 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 1749A8 8008C8E8 44073000 */  mfc1       $a3, $f6
    /* 1749AC 8008C8EC 3C048010 */  lui        $a0, %hi(D_800FCAD8)
    /* 1749B0 8008C8F0 44062000 */  mfc1       $a2, $f4
    /* 1749B4 8008C8F4 44050000 */  mfc1       $a1, $f0
    /* 1749B8 8008C8F8 2484CAD8 */  addiu      $a0, $a0, %lo(D_800FCAD8)
    /* 1749BC 8008C8FC E7A80014 */  swc1       $f8, 0x14($sp)
    /* 1749C0 8008C900 E7A00010 */  swc1       $f0, 0x10($sp)
    /* 1749C4 8008C904 E7AA0018 */  swc1       $f10, 0x18($sp)
    /* 1749C8 8008C908 0C0076D1 */  jal        guFrustum
    /* 1749CC 8008C90C E7B0001C */   swc1      $f16, 0x1C($sp)
    /* 1749D0 8008C910 3C1F8006 */  lui        $ra, %hi(D_8005BB2C)
    /* 1749D4 8008C914 27FFBB2C */  addiu      $ra, $ra, %lo(D_8005BB2C)
    /* 1749D8 8008C918 8FE20000 */  lw         $v0, 0x0($ra)
    /* 1749DC 8008C91C 3C0E0002 */  lui        $t6, (0x23001 >> 16)
    /* 1749E0 8008C920 35CE3001 */  ori        $t6, $t6, (0x23001 & 0xFFFF)
    /* 1749E4 8008C924 24580008 */  addiu      $t8, $v0, 0x8
    /* 1749E8 8008C928 AFF80000 */  sw         $t8, 0x0($ra)
    /* 1749EC 8008C92C 3C19B600 */  lui        $t9, (0xB6000000 >> 16)
    /* 1749F0 8008C930 AC590000 */  sw         $t9, 0x0($v0)
    /* 1749F4 8008C934 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 1749F8 8008C938 8FE20000 */  lw         $v0, 0x0($ra)
    /* 1749FC 8008C93C 3C198000 */  lui        $t9, (0x80008000 >> 16)
    /* 174A00 8008C940 37398000 */  ori        $t9, $t9, (0x80008000 & 0xFFFF)
    /* 174A04 8008C944 244F0008 */  addiu      $t7, $v0, 0x8
    /* 174A08 8008C948 AFEF0000 */  sw         $t7, 0x0($ra)
    /* 174A0C 8008C94C 3C18BB00 */  lui        $t8, (0xBB000000 >> 16)
    /* 174A10 8008C950 AC580000 */  sw         $t8, 0x0($v0)
    /* 174A14 8008C954 AC590004 */  sw         $t9, 0x4($v0)
    /* 174A18 8008C958 8FE20000 */  lw         $v0, 0x0($ra)
    /* 174A1C 8008C95C 3C18FFFE */  lui        $t8, (0xFFFE793C >> 16)
    /* 174A20 8008C960 3C0FFCFF */  lui        $t7, (0xFCFFFFFF >> 16)
    /* 174A24 8008C964 244E0008 */  addiu      $t6, $v0, 0x8
    /* 174A28 8008C968 AFEE0000 */  sw         $t6, 0x0($ra)
    /* 174A2C 8008C96C 35EFFFFF */  ori        $t7, $t7, (0xFCFFFFFF & 0xFFFF)
    /* 174A30 8008C970 3718793C */  ori        $t8, $t8, (0xFFFE793C & 0xFFFF)
    /* 174A34 8008C974 AC580004 */  sw         $t8, 0x4($v0)
    /* 174A38 8008C978 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 174A3C 8008C97C 8FE20000 */  lw         $v0, 0x0($ra)
    /* 174A40 8008C980 3C0F0050 */  lui        $t7, (0x504240 >> 16)
    /* 174A44 8008C984 3C0EB900 */  lui        $t6, (0xB900031D >> 16)
    /* 174A48 8008C988 24590008 */  addiu      $t9, $v0, 0x8
    /* 174A4C 8008C98C AFF90000 */  sw         $t9, 0x0($ra)
    /* 174A50 8008C990 35CE031D */  ori        $t6, $t6, (0xB900031D & 0xFFFF)
    /* 174A54 8008C994 35EF4240 */  ori        $t7, $t7, (0x504240 & 0xFFFF)
    /* 174A58 8008C998 AC4F0004 */  sw         $t7, 0x4($v0)
    /* 174A5C 8008C99C AC4E0000 */  sw         $t6, 0x0($v0)
    /* 174A60 8008C9A0 8FE20000 */  lw         $v0, 0x0($ra)
    /* 174A64 8008C9A4 3C19BA00 */  lui        $t9, (0xBA001402 >> 16)
    /* 174A68 8008C9A8 37391402 */  ori        $t9, $t9, (0xBA001402 & 0xFFFF)
    /* 174A6C 8008C9AC 24580008 */  addiu      $t8, $v0, 0x8
    /* 174A70 8008C9B0 AFF80000 */  sw         $t8, 0x0($ra)
    /* 174A74 8008C9B4 AC400004 */  sw         $zero, 0x4($v0)
    /* 174A78 8008C9B8 AC590000 */  sw         $t9, 0x0($v0)
    /* 174A7C 8008C9BC 8FE20000 */  lw         $v0, 0x0($ra)
    /* 174A80 8008C9C0 3C0FBA00 */  lui        $t7, (0xBA001301 >> 16)
    /* 174A84 8008C9C4 35EF1301 */  ori        $t7, $t7, (0xBA001301 & 0xFFFF)
    /* 174A88 8008C9C8 244E0008 */  addiu      $t6, $v0, 0x8
    /* 174A8C 8008C9CC AFEE0000 */  sw         $t6, 0x0($ra)
    /* 174A90 8008C9D0 3C180008 */  lui        $t8, (0x80000 >> 16)
    /* 174A94 8008C9D4 AC580004 */  sw         $t8, 0x4($v0)
    /* 174A98 8008C9D8 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 174A9C 8008C9DC 8FE20000 */  lw         $v0, 0x0($ra)
    /* 174AA0 8008C9E0 3C0EBA00 */  lui        $t6, (0xBA000E02 >> 16)
    /* 174AA4 8008C9E4 35CE0E02 */  ori        $t6, $t6, (0xBA000E02 & 0xFFFF)
    /* 174AA8 8008C9E8 24590008 */  addiu      $t9, $v0, 0x8
    /* 174AAC 8008C9EC AFF90000 */  sw         $t9, 0x0($ra)
    /* 174AB0 8008C9F0 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* 174AB4 8008C9F4 AC400004 */  sw         $zero, 0x4($v0)
    /* 174AB8 8008C9F8 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 174ABC 8008C9FC 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* 174AC0 8008CA00 00002025 */  or         $a0, $zero, $zero
    /* 174AC4 8008CA04 00002825 */  or         $a1, $zero, $zero
    /* 174AC8 8008CA08 0C000E74 */  jal        func_800039D0_45D0
    /* 174ACC 8008CA0C 00003025 */   or        $a2, $zero, $zero
    /* 174AD0 8008CA10 3C1F8006 */  lui        $ra, %hi(D_8005BB2C)
    /* 174AD4 8008CA14 27FFBB2C */  addiu      $ra, $ra, %lo(D_8005BB2C)
    /* 174AD8 8008CA18 8FE20000 */  lw         $v0, 0x0($ra)
    /* 174ADC 8008CA1C 3C180102 */  lui        $t8, (0x1020040 >> 16)
    /* 174AE0 8008CA20 3C058006 */  lui        $a1, %hi(D_8005BB38)
    /* 174AE4 8008CA24 244F0008 */  addiu      $t7, $v0, 0x8
    /* 174AE8 8008CA28 AFEF0000 */  sw         $t7, 0x0($ra)
    /* 174AEC 8008CA2C 37180040 */  ori        $t8, $t8, (0x1020040 & 0xFFFF)
    /* 174AF0 8008CA30 24A5BB38 */  addiu      $a1, $a1, %lo(D_8005BB38)
    /* 174AF4 8008CA34 AC580000 */  sw         $t8, 0x0($v0)
    /* 174AF8 8008CA38 8CB90000 */  lw         $t9, 0x0($a1)
    /* 174AFC 8008CA3C 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 174B00 8008CA40 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 174B04 8008CA44 03217024 */  and        $t6, $t9, $at
    /* 174B08 8008CA48 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 174B0C 8008CA4C 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 174B10 8008CA50 3C068010 */  lui        $a2, %hi(D_800FCF24)
    /* 174B14 8008CA54 24C6CF24 */  addiu      $a2, $a2, %lo(D_800FCF24)
    /* 174B18 8008CA58 84C40000 */  lh         $a0, 0x0($a2)
    /* 174B1C 8008CA5C 25F80040 */  addiu      $t8, $t7, 0x40
    /* 174B20 8008CA60 ACB80000 */  sw         $t8, 0x0($a1)
    /* 174B24 8008CA64 10800012 */  beqz       $a0, .L8008CAB0_174B70
    /* 174B28 8008CA68 3C058010 */   lui       $a1, %hi(D_800FCF28)
    /* 174B2C 8008CA6C 3C038010 */  lui        $v1, %hi(D_800FCF22)
    /* 174B30 8008CA70 2463CF22 */  addiu      $v1, $v1, %lo(D_800FCF22)
    /* 174B34 8008CA74 84790000 */  lh         $t9, 0x0($v1)
    /* 174B38 8008CA78 240F0080 */  addiu      $t7, $zero, 0x80
    /* 174B3C 8008CA7C 03247021 */  addu       $t6, $t9, $a0
    /* 174B40 8008CA80 A46E0000 */  sh         $t6, 0x0($v1)
    /* 174B44 8008CA84 84620000 */  lh         $v0, 0x0($v1)
    /* 174B48 8008CA88 28410081 */  slti       $at, $v0, 0x81
    /* 174B4C 8008CA8C 14200004 */  bnez       $at, .L8008CAA0_174B60
    /* 174B50 8008CA90 00000000 */   nop
    /* 174B54 8008CA94 A46F0000 */  sh         $t7, 0x0($v1)
    /* 174B58 8008CA98 84620000 */  lh         $v0, 0x0($v1)
    /* 174B5C 8008CA9C A4C00000 */  sh         $zero, 0x0($a2)
  .L8008CAA0_174B60:
    /* 174B60 8008CAA0 04410003 */  bgez       $v0, .L8008CAB0_174B70
    /* 174B64 8008CAA4 00000000 */   nop
    /* 174B68 8008CAA8 A4600000 */  sh         $zero, 0x0($v1)
    /* 174B6C 8008CAAC A4C00000 */  sh         $zero, 0x0($a2)
  .L8008CAB0_174B70:
    /* 174B70 8008CAB0 24A5CF28 */  addiu      $a1, $a1, %lo(D_800FCF28)
    /* 174B74 8008CAB4 84A40000 */  lh         $a0, 0x0($a1)
    /* 174B78 8008CAB8 3C038010 */  lui        $v1, %hi(D_800FCF26)
    /* 174B7C 8008CABC 2463CF26 */  addiu      $v1, $v1, %lo(D_800FCF26)
    /* 174B80 8008CAC0 10800010 */  beqz       $a0, .L8008CB04_174BC4
    /* 174B84 8008CAC4 00000000 */   nop
    /* 174B88 8008CAC8 84780000 */  lh         $t8, 0x0($v1)
    /* 174B8C 8008CACC 240E0080 */  addiu      $t6, $zero, 0x80
    /* 174B90 8008CAD0 0304C821 */  addu       $t9, $t8, $a0
    /* 174B94 8008CAD4 A4790000 */  sh         $t9, 0x0($v1)
    /* 174B98 8008CAD8 84620000 */  lh         $v0, 0x0($v1)
    /* 174B9C 8008CADC 28410081 */  slti       $at, $v0, 0x81
    /* 174BA0 8008CAE0 14200004 */  bnez       $at, .L8008CAF4_174BB4
    /* 174BA4 8008CAE4 00000000 */   nop
    /* 174BA8 8008CAE8 A46E0000 */  sh         $t6, 0x0($v1)
    /* 174BAC 8008CAEC 84620000 */  lh         $v0, 0x0($v1)
    /* 174BB0 8008CAF0 A4A00000 */  sh         $zero, 0x0($a1)
  .L8008CAF4_174BB4:
    /* 174BB4 8008CAF4 04410003 */  bgez       $v0, .L8008CB04_174BC4
    /* 174BB8 8008CAF8 00000000 */   nop
    /* 174BBC 8008CAFC A4600000 */  sh         $zero, 0x0($v1)
    /* 174BC0 8008CB00 A4A00000 */  sh         $zero, 0x0($a1)
  .L8008CB04_174BC4:
    /* 174BC4 8008CB04 3C038010 */  lui        $v1, %hi(D_800FCF26)
    /* 174BC8 8008CB08 2463CF26 */  addiu      $v1, $v1, %lo(D_800FCF26)
    /* 174BCC 8008CB0C 846F0000 */  lh         $t7, 0x0($v1)
    /* 174BD0 8008CB10 24010080 */  addiu      $at, $zero, 0x80
    /* 174BD4 8008CB14 3C188004 */  lui        $t8, %hi(currentLevel)
    /* 174BD8 8008CB18 11E10087 */  beq        $t7, $at, .L8008CD38_174DF8
    /* 174BDC 8008CB1C 3C198005 */   lui       $t9, %hi(D_80052B34)
    /* 174BE0 8008CB20 8F187F90 */  lw         $t8, %lo(currentLevel)($t8)
    /* 174BE4 8008CB24 24010005 */  addiu      $at, $zero, 0x5
    /* 174BE8 8008CB28 2402FFEC */  addiu      $v0, $zero, -0x14
    /* 174BEC 8008CB2C 17010003 */  bne        $t8, $at, .L8008CB3C_174BFC
    /* 174BF0 8008CB30 24040050 */   addiu     $a0, $zero, 0x50
    /* 174BF4 8008CB34 10000001 */  b          .L8008CB3C_174BFC
    /* 174BF8 8008CB38 00001025 */   or        $v0, $zero, $zero
  .L8008CB3C_174BFC:
    /* 174BFC 8008CB3C 8F392B34 */  lw         $t9, %lo(D_80052B34)($t9)
    /* 174C00 8008CB40 3C038005 */  lui        $v1, %hi(vehicleInstances)
    /* 174C04 8008CB44 24060000 */  addiu      $a2, $zero, 0x0
    /* 174C08 8008CB48 872E001C */  lh         $t6, 0x1C($t9)
    /* 174C0C 8008CB4C 3C198026 */  lui        $t9, %hi(D_8025F540)
    /* 174C10 8008CB50 2739F540 */  addiu      $t9, $t9, %lo(D_8025F540)
    /* 174C14 8008CB54 19C0002C */  blez       $t6, .L8008CC08_174CC8
    /* 174C18 8008CB58 00003825 */   or        $a3, $zero, $zero
    /* 174C1C 8008CB5C 3C0F8007 */  lui        $t7, %hi(D_80068088)
    /* 174C20 8008CB60 8DEF8088 */  lw         $t7, %lo(D_80068088)($t7)
    /* 174C24 8008CB64 2463DCD0 */  addiu      $v1, $v1, %lo(vehicleInstances)
    /* 174C28 8008CB68 3C198025 */  lui        $t9, %hi(D_80257A3A)
    /* 174C2C 8008CB6C 01E22821 */  addu       $a1, $t7, $v0
    /* 174C30 8008CB70 906F001A */  lbu        $t7, 0x1A($v1)
    /* 174C34 8008CB74 24A5FFE2 */  addiu      $a1, $a1, -0x1E
    /* 174C38 8008CB78 0005C400 */  sll        $t8, $a1, 16
    /* 174C3C 8008CB7C 00182C03 */  sra        $a1, $t8, 16
    /* 174C40 8008CB80 000FC0C0 */  sll        $t8, $t7, 3
    /* 174C44 8008CB84 030FC023 */  subu       $t8, $t8, $t7
    /* 174C48 8008CB88 0018C100 */  sll        $t8, $t8, 4
    /* 174C4C 8008CB8C 0338C821 */  addu       $t9, $t9, $t8
    /* 174C50 8008CB90 97397A3A */  lhu        $t9, %lo(D_80257A3A)($t9)
    /* 174C54 8008CB94 846E001C */  lh         $t6, 0x1C($v1)
    /* 174C58 8008CB98 24040050 */  addiu      $a0, $zero, 0x50
    /* 174C5C 8008CB9C 44993000 */  mtc1       $t9, $f6
    /* 174C60 8008CBA0 448E9000 */  mtc1       $t6, $f18
    /* 174C64 8008CBA4 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* 174C68 8008CBA8 46803220 */  cvt.s.w    $f8, $f6
    /* 174C6C 8008CBAC 07210004 */  bgez       $t9, .L8008CBC0_174C80
    /* 174C70 8008CBB0 46809120 */   cvt.s.w   $f4, $f18
    /* 174C74 8008CBB4 44815000 */  mtc1       $at, $f10
    /* 174C78 8008CBB8 00000000 */  nop
    /* 174C7C 8008CBBC 460A4200 */  add.s      $f8, $f8, $f10
  .L8008CBC0_174C80:
    /* 174C80 8008CBC0 46082403 */  div.s      $f16, $f4, $f8
    /* 174C84 8008CBC4 3C188010 */  lui        $t8, %hi(D_800FCF44)
    /* 174C88 8008CBC8 8718CF44 */  lh         $t8, %lo(D_800FCF44)($t8)
    /* 174C8C 8008CBCC 3C0E8026 */  lui        $t6, %hi(D_8025F540)
    /* 174C90 8008CBD0 25CEF540 */  addiu      $t6, $t6, %lo(D_8025F540)
    /* 174C94 8008CBD4 240F0001 */  addiu      $t7, $zero, 0x1
    /* 174C98 8008CBD8 24190030 */  addiu      $t9, $zero, 0x30
    /* 174C9C 8008CBDC AFB90020 */  sw         $t9, 0x20($sp)
    /* 174CA0 8008CBE0 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 174CA4 8008CBE4 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 174CA8 8008CBE8 00003825 */  or         $a3, $zero, $zero
    /* 174CAC 8008CBEC AFA00018 */  sw         $zero, 0x18($sp)
    /* 174CB0 8008CBF0 AFB8001C */  sw         $t8, 0x1C($sp)
    /* 174CB4 8008CBF4 44068000 */  mfc1       $a2, $f16
    /* 174CB8 8008CBF8 0C022F46 */  jal        func_8008BD18_173DD8
    /* 174CBC 8008CBFC 00000000 */   nop
    /* 174CC0 8008CC00 1000000E */  b          .L8008CC3C_174CFC
    /* 174CC4 8008CC04 00000000 */   nop
  .L8008CC08_174CC8:
    /* 174CC8 8008CC08 3C0E8007 */  lui        $t6, %hi(D_80068088)
    /* 174CCC 8008CC0C 8DCE8088 */  lw         $t6, %lo(D_80068088)($t6)
    /* 174CD0 8008CC10 AFB90010 */  sw         $t9, 0x10($sp)
    /* 174CD4 8008CC14 AFA00014 */  sw         $zero, 0x14($sp)
    /* 174CD8 8008CC18 01C22821 */  addu       $a1, $t6, $v0
    /* 174CDC 8008CC1C 24A5FFE2 */  addiu      $a1, $a1, -0x1E
    /* 174CE0 8008CC20 00057C00 */  sll        $t7, $a1, 16
    /* 174CE4 8008CC24 240E0030 */  addiu      $t6, $zero, 0x30
    /* 174CE8 8008CC28 AFAE0020 */  sw         $t6, 0x20($sp)
    /* 174CEC 8008CC2C 000F2C03 */  sra        $a1, $t7, 16
    /* 174CF0 8008CC30 AFA00018 */  sw         $zero, 0x18($sp)
    /* 174CF4 8008CC34 0C022F46 */  jal        func_8008BD18_173DD8
    /* 174CF8 8008CC38 AFA0001C */   sw        $zero, 0x1C($sp)
  .L8008CC3C_174CFC:
    /* 174CFC 8008CC3C 3C0F8004 */  lui        $t7, %hi(currentLevel)
    /* 174D00 8008CC40 8DEF7F90 */  lw         $t7, %lo(currentLevel)($t7)
    /* 174D04 8008CC44 3C088010 */  lui        $t0, %hi(D_800FCF3C)
    /* 174D08 8008CC48 2508CF3C */  addiu      $t0, $t0, %lo(D_800FCF3C)
    /* 174D0C 8008CC4C 29E10005 */  slti       $at, $t7, 0x5
    /* 174D10 8008CC50 10200039 */  beqz       $at, .L8008CD38_174DF8
    /* 174D14 8008CC54 3C028005 */   lui       $v0, %hi(D_8004816A)
    /* 174D18 8008CC58 8442816A */  lh         $v0, %lo(D_8004816A)($v0)
    /* 174D1C 8008CC5C 8D180000 */  lw         $t8, 0x0($t0)
    /* 174D20 8008CC60 3C198003 */  lui        $t9, %hi(D_800314C4)
    /* 174D24 8008CC64 3C038003 */  lui        $v1, %hi(D_800314C4)
    /* 174D28 8008CC68 13020008 */  beq        $t8, $v0, .L8008CC8C_174D4C
    /* 174D2C 8008CC6C 3C058007 */   lui       $a1, %hi(D_80068088)
    /* 174D30 8008CC70 933914C4 */  lbu        $t9, %lo(D_800314C4)($t9)
    /* 174D34 8008CC74 240F0008 */  addiu      $t7, $zero, 0x8
    /* 174D38 8008CC78 272EFFFD */  addiu      $t6, $t9, -0x3
    /* 174D3C 8008CC7C 01C2082A */  slt        $at, $t6, $v0
    /* 174D40 8008CC80 14200002 */  bnez       $at, .L8008CC8C_174D4C
    /* 174D44 8008CC84 3C018010 */   lui       $at, %hi(D_800FCF46)
    /* 174D48 8008CC88 A42FCF46 */  sh         $t7, %lo(D_800FCF46)($at)
  .L8008CC8C_174D4C:
    /* 174D4C 8008CC8C 906314C4 */  lbu        $v1, %lo(D_800314C4)($v1)
    /* 174D50 8008CC90 0062082A */  slt        $at, $v1, $v0
    /* 174D54 8008CC94 10200003 */  beqz       $at, .L8008CCA4_174D64
    /* 174D58 8008CC98 00602025 */   or        $a0, $v1, $zero
    /* 174D5C 8008CC9C 10000002 */  b          .L8008CCA8_174D68
    /* 174D60 8008CCA0 AD040000 */   sw        $a0, 0x0($t0)
  .L8008CCA4_174D64:
    /* 174D64 8008CCA4 AD020000 */  sw         $v0, 0x0($t0)
  .L8008CCA8_174D68:
    /* 174D68 8008CCA8 8CA58088 */  lw         $a1, %lo(D_80068088)($a1)
    /* 174D6C 8008CCAC 8D0E0000 */  lw         $t6, 0x0($t0)
    /* 174D70 8008CCB0 44839000 */  mtc1       $v1, $f18
    /* 174D74 8008CCB4 24A5FFE2 */  addiu      $a1, $a1, -0x1E
    /* 174D78 8008CCB8 448E8000 */  mtc1       $t6, $f16
    /* 174D7C 8008CCBC 46809120 */  cvt.s.w    $f4, $f18
    /* 174D80 8008CCC0 0005C400 */  sll        $t8, $a1, 16
    /* 174D84 8008CCC4 24040050 */  addiu      $a0, $zero, 0x50
    /* 174D88 8008CCC8 00182C03 */  sra        $a1, $t8, 16
    /* 174D8C 8008CCCC 04610005 */  bgez       $v1, .L8008CCE4_174DA4
    /* 174D90 8008CCD0 468081A0 */   cvt.s.w   $f6, $f16
    /* 174D94 8008CCD4 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* 174D98 8008CCD8 44814000 */  mtc1       $at, $f8
    /* 174D9C 8008CCDC 00000000 */  nop
    /* 174DA0 8008CCE0 46082100 */  add.s      $f4, $f4, $f8
  .L8008CCE4_174DA4:
    /* 174DA4 8008CCE4 46043403 */  div.s      $f16, $f6, $f4
    /* 174DA8 8008CCE8 3C198010 */  lui        $t9, %hi(D_800FCF46)
    /* 174DAC 8008CCEC 8739CF46 */  lh         $t9, %lo(D_800FCF46)($t9)
    /* 174DB0 8008CCF0 3C0F8026 */  lui        $t7, %hi(D_8025F780)
    /* 174DB4 8008CCF4 25EFF780 */  addiu      $t7, $t7, %lo(D_8025F780)
    /* 174DB8 8008CCF8 24180002 */  addiu      $t8, $zero, 0x2
    /* 174DBC 8008CCFC 240E0030 */  addiu      $t6, $zero, 0x30
    /* 174DC0 8008CD00 AFAE0020 */  sw         $t6, 0x20($sp)
    /* 174DC4 8008CD04 AFB80014 */  sw         $t8, 0x14($sp)
    /* 174DC8 8008CD08 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 174DCC 8008CD0C 00003825 */  or         $a3, $zero, $zero
    /* 174DD0 8008CD10 AFA00018 */  sw         $zero, 0x18($sp)
    /* 174DD4 8008CD14 AFB9001C */  sw         $t9, 0x1C($sp)
    /* 174DD8 8008CD18 44068000 */  mfc1       $a2, $f16
    /* 174DDC 8008CD1C 0C022F46 */  jal        func_8008BD18_173DD8
    /* 174DE0 8008CD20 00000000 */   nop
    /* 174DE4 8008CD24 3C0F8005 */  lui        $t7, %hi(D_8004816A)
    /* 174DE8 8008CD28 85EF816A */  lh         $t7, %lo(D_8004816A)($t7)
    /* 174DEC 8008CD2C 3C088010 */  lui        $t0, %hi(D_800FCF3C)
    /* 174DF0 8008CD30 2508CF3C */  addiu      $t0, $t0, %lo(D_800FCF3C)
    /* 174DF4 8008CD34 AD0F0000 */  sw         $t7, 0x0($t0)
  .L8008CD38_174DF8:
    /* 174DF8 8008CD38 3C198003 */  lui        $t9, %hi(D_800314C4)
    /* 174DFC 8008CD3C 933914C4 */  lbu        $t9, %lo(D_800314C4)($t9)
    /* 174E00 8008CD40 3C188005 */  lui        $t8, %hi(D_8004816A)
    /* 174E04 8008CD44 8718816A */  lh         $t8, %lo(D_8004816A)($t8)
    /* 174E08 8008CD48 272EFFFD */  addiu      $t6, $t9, -0x3
    /* 174E0C 8008CD4C 3C04800A */  lui        $a0, %hi(D_800A5538)
    /* 174E10 8008CD50 01D8082A */  slt        $at, $t6, $t8
    /* 174E14 8008CD54 1020000D */  beqz       $at, .L8008CD8C_174E4C
    /* 174E18 8008CD58 24845538 */   addiu     $a0, $a0, %lo(D_800A5538)
    /* 174E1C 8008CD5C 3C0F800E */  lui        $t7, %hi(D_800E65AC)
    /* 174E20 8008CD60 8DEF65AC */  lw         $t7, %lo(D_800E65AC)($t7)
    /* 174E24 8008CD64 24180008 */  addiu      $t8, $zero, 0x8
    /* 174E28 8008CD68 3C018010 */  lui        $at, %hi(D_800FCF46)
    /* 174E2C 8008CD6C 05E10004 */  bgez       $t7, .L8008CD80_174E40
    /* 174E30 8008CD70 31F90007 */   andi      $t9, $t7, 0x7
    /* 174E34 8008CD74 13200002 */  beqz       $t9, .L8008CD80_174E40
    /* 174E38 8008CD78 00000000 */   nop
    /* 174E3C 8008CD7C 2739FFF8 */  addiu      $t9, $t9, -0x8
  .L8008CD80_174E40:
    /* 174E40 8008CD80 03197023 */  subu       $t6, $t8, $t9
    /* 174E44 8008CD84 10000003 */  b          .L8008CD94_174E54
    /* 174E48 8008CD88 A42ECF46 */   sh        $t6, %lo(D_800FCF46)($at)
  .L8008CD8C_174E4C:
    /* 174E4C 8008CD8C 3C018010 */  lui        $at, %hi(D_800FCF46)
    /* 174E50 8008CD90 A420CF46 */  sh         $zero, %lo(D_800FCF46)($at)
  .L8008CD94_174E54:
    /* 174E54 8008CD94 3C0F8005 */  lui        $t7, %hi(D_8004DCEA)
    /* 174E58 8008CD98 91EFDCEA */  lbu        $t7, %lo(D_8004DCEA)($t7)
    /* 174E5C 8008CD9C 3C198025 */  lui        $t9, %hi(D_80257A3A)
    /* 174E60 8008CDA0 00002825 */  or         $a1, $zero, $zero
    /* 174E64 8008CDA4 000FC0C0 */  sll        $t8, $t7, 3
    /* 174E68 8008CDA8 030FC023 */  subu       $t8, $t8, $t7
    /* 174E6C 8008CDAC 0018C100 */  sll        $t8, $t8, 4
    /* 174E70 8008CDB0 0338C821 */  addu       $t9, $t9, $t8
    /* 174E74 8008CDB4 97397A3A */  lhu        $t9, %lo(D_80257A3A)($t9)
    /* 174E78 8008CDB8 3C0F8005 */  lui        $t7, %hi(D_8004DCEC)
    /* 174E7C 8008CDBC 85EFDCEC */  lh         $t7, %lo(D_8004DCEC)($t7)
    /* 174E80 8008CDC0 00197083 */  sra        $t6, $t9, 2
    /* 174E84 8008CDC4 3C18800E */  lui        $t8, %hi(D_800E65AC)
    /* 174E88 8008CDC8 01CF082A */  slt        $at, $t6, $t7
    /* 174E8C 8008CDCC 1420000C */  bnez       $at, .L8008CE00_174EC0
    /* 174E90 8008CDD0 00000000 */   nop
    /* 174E94 8008CDD4 8F1865AC */  lw         $t8, %lo(D_800E65AC)($t8)
    /* 174E98 8008CDD8 240E0008 */  addiu      $t6, $zero, 0x8
    /* 174E9C 8008CDDC 3C018010 */  lui        $at, %hi(D_800FCF44)
    /* 174EA0 8008CDE0 07010004 */  bgez       $t8, .L8008CDF4_174EB4
    /* 174EA4 8008CDE4 33190007 */   andi      $t9, $t8, 0x7
    /* 174EA8 8008CDE8 13200002 */  beqz       $t9, .L8008CDF4_174EB4
    /* 174EAC 8008CDEC 00000000 */   nop
    /* 174EB0 8008CDF0 2739FFF8 */  addiu      $t9, $t9, -0x8
  .L8008CDF4_174EB4:
    /* 174EB4 8008CDF4 01D97823 */  subu       $t7, $t6, $t9
    /* 174EB8 8008CDF8 10000003 */  b          .L8008CE08_174EC8
    /* 174EBC 8008CDFC A42FCF44 */   sh        $t7, %lo(D_800FCF44)($at)
  .L8008CE00_174EC0:
    /* 174EC0 8008CE00 3C018010 */  lui        $at, %hi(D_800FCF44)
    /* 174EC4 8008CE04 A420CF44 */  sh         $zero, %lo(D_800FCF44)($at)
  .L8008CE08_174EC8:
    /* 174EC8 8008CE08 0C002929 */  jal        drawText
    /* 174ECC 8008CE0C 240600FF */   addiu     $a2, $zero, 0xFF
    /* 174ED0 8008CE10 3C028007 */  lui        $v0, %hi(D_8006C6C6)
    /* 174ED4 8008CE14 9442C6C6 */  lhu        $v0, %lo(D_8006C6C6)($v0)
    /* 174ED8 8008CE18 3C1F8006 */  lui        $ra, %hi(D_8005BB2C)
    /* 174EDC 8008CE1C 27FFBB2C */  addiu      $ra, $ra, %lo(D_8005BB2C)
    /* 174EE0 8008CE20 18400029 */  blez       $v0, .L8008CEC8_174F88
    /* 174EE4 8008CE24 3C038007 */   lui       $v1, %hi(D_8006C6C4)
    /* 174EE8 8008CE28 9463C6C4 */  lhu        $v1, %lo(D_8006C6C4)($v1)
    /* 174EEC 8008CE2C 3C198C96 */  lui        $t9, (0x8C96F0AA >> 16)
    /* 174EF0 8008CE30 3739F0AA */  ori        $t9, $t9, (0x8C96F0AA & 0xFFFF)
    /* 174EF4 8008CE34 2478FFF8 */  addiu      $t8, $v1, -0x8
    /* 174EF8 8008CE38 0302082A */  slt        $at, $t8, $v0
    /* 174EFC 8008CE3C 10200005 */  beqz       $at, .L8008CE54_174F14
    /* 174F00 8008CE40 240401B8 */   addiu     $a0, $zero, 0x1B8
    /* 174F04 8008CE44 00624823 */  subu       $t1, $v1, $v0
    /* 174F08 8008CE48 00097400 */  sll        $t6, $t1, 16
    /* 174F0C 8008CE4C 10000008 */  b          .L8008CE70_174F30
    /* 174F10 8008CE50 000E4C03 */   sra       $t1, $t6, 16
  .L8008CE54_174F14:
    /* 174F14 8008CE54 28410008 */  slti       $at, $v0, 0x8
    /* 174F18 8008CE58 10200005 */  beqz       $at, .L8008CE70_174F30
    /* 174F1C 8008CE5C 24090008 */   addiu     $t1, $zero, 0x8
    /* 174F20 8008CE60 00024C00 */  sll        $t1, $v0, 16
    /* 174F24 8008CE64 00097C03 */  sra        $t7, $t1, 16
    /* 174F28 8008CE68 10000001 */  b          .L8008CE70_174F30
    /* 174F2C 8008CE6C 01E04825 */   or        $t1, $t7, $zero
  .L8008CE70_174F30:
    /* 174F30 8008CE70 8FE20000 */  lw         $v0, 0x0($ra)
    /* 174F34 8008CE74 00097880 */  sll        $t7, $t1, 2
    /* 174F38 8008CE78 01E97823 */  subu       $t7, $t7, $t1
    /* 174F3C 8008CE7C 24580008 */  addiu      $t8, $v0, 0x8
    /* 174F40 8008CE80 AFF80000 */  sw         $t8, 0x0($ra)
    /* 174F44 8008CE84 24180030 */  addiu      $t8, $zero, 0x30
    /* 174F48 8008CE88 000F7840 */  sll        $t7, $t7, 1
    /* 174F4C 8008CE8C 030F1823 */  subu       $v1, $t8, $t7
    /* 174F50 8008CE90 3C0EFA00 */  lui        $t6, (0xFA000000 >> 16)
    /* 174F54 8008CE94 246500AF */  addiu      $a1, $v1, 0xAF
    /* 174F58 8008CE98 246700D2 */  addiu      $a3, $v1, 0xD2
    /* 174F5C 8008CE9C AC4E0000 */  sw         $t6, 0x0($v0)
    /* 174F60 8008CEA0 AC590004 */  sw         $t9, 0x4($v0)
    /* 174F64 8008CEA4 0007C880 */  sll        $t9, $a3, 2
    /* 174F68 8008CEA8 00057080 */  sll        $t6, $a1, 2
    /* 174F6C 8008CEAC 01C02825 */  or         $a1, $t6, $zero
    /* 174F70 8008CEB0 03203825 */  or         $a3, $t9, $zero
    /* 174F74 8008CEB4 AFA00010 */  sw         $zero, 0x10($sp)
    /* 174F78 8008CEB8 0C0024AE */  jal        func_800092B8_9EB8
    /* 174F7C 8008CEBC 24060310 */   addiu     $a2, $zero, 0x310
    /* 174F80 8008CEC0 3C1F8006 */  lui        $ra, %hi(D_8005BB2C)
    /* 174F84 8008CEC4 27FFBB2C */  addiu      $ra, $ra, %lo(D_8005BB2C)
  .L8008CEC8_174F88:
    /* 174F88 8008CEC8 8FE20000 */  lw         $v0, 0x0($ra)
    /* 174F8C 8008CECC 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* 174F90 8008CED0 3C19E800 */  lui        $t9, (0xE8000000 >> 16)
    /* 174F94 8008CED4 24580008 */  addiu      $t8, $v0, 0x8
    /* 174F98 8008CED8 AFF80000 */  sw         $t8, 0x0($ra)
    /* 174F9C 8008CEDC AC400004 */  sw         $zero, 0x4($v0)
    /* 174FA0 8008CEE0 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 174FA4 8008CEE4 8FE20000 */  lw         $v0, 0x0($ra)
    /* 174FA8 8008CEE8 3C0FB900 */  lui        $t7, (0xB900031D >> 16)
    /* 174FAC 8008CEEC 35EF031D */  ori        $t7, $t7, (0xB900031D & 0xFFFF)
    /* 174FB0 8008CEF0 244E0008 */  addiu      $t6, $v0, 0x8
    /* 174FB4 8008CEF4 AFEE0000 */  sw         $t6, 0x0($ra)
    /* 174FB8 8008CEF8 AC400004 */  sw         $zero, 0x4($v0)
    /* 174FBC 8008CEFC AC590000 */  sw         $t9, 0x0($v0)
    /* 174FC0 8008CF00 8FE20000 */  lw         $v0, 0x0($ra)
    /* 174FC4 8008CF04 3C0E0050 */  lui        $t6, (0x504240 >> 16)
    /* 174FC8 8008CF08 35CE4240 */  ori        $t6, $t6, (0x504240 & 0xFFFF)
    /* 174FCC 8008CF0C 24580008 */  addiu      $t8, $v0, 0x8
    /* 174FD0 8008CF10 AFF80000 */  sw         $t8, 0x0($ra)
    /* 174FD4 8008CF14 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 174FD8 8008CF18 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 174FDC 8008CF1C 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 174FE0 8008CF20 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 174FE4 8008CF24 03E00008 */  jr         $ra
    /* 174FE8 8008CF28 00000000 */   nop
endlabel func_8008C8A4_174964
