nonmatching func_802D5C24_2B8054, 0x304

glabel func_802D5C24_2B8054
    /* 2B8054 802D5C24 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 2B8058 802D5C28 AFB00038 */  sw         $s0, 0x38($sp)
    /* 2B805C 802D5C2C 3C108005 */  lui        $s0, %hi(vehicleInstances)
    /* 2B8060 802D5C30 2610DCD0 */  addiu      $s0, $s0, %lo(vehicleInstances)
    /* 2B8064 802D5C34 860E0AE4 */  lh         $t6, 0xAE4($s0)
    /* 2B8068 802D5C38 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 2B806C 802D5C3C 1DC0000C */  bgtz       $t6, .L802D5C70_2B80A0
    /* 2B8070 802D5C40 00000000 */   nop
    /* 2B8074 802D5C44 860F1384 */  lh         $t7, 0x1384($s0)
    /* 2B8078 802D5C48 3C048005 */  lui        $a0, %hi(D_8004F038)
    /* 2B807C 802D5C4C 2484F038 */  addiu      $a0, $a0, %lo(D_8004F038)
    /* 2B8080 802D5C50 000FC440 */  sll        $t8, $t7, 17
    /* 2B8084 802D5C54 0C049046 */  jal        func_80124118_1330C8
    /* 2B8088 802D5C58 00182C03 */   sra       $a1, $t8, 16
    /* 2B808C 802D5C5C 3C04802D */  lui        $a0, %hi(func_802D5C24_2B8054)
    /* 2B8090 802D5C60 0C001D2F */  jal        func_800074BC_80BC
    /* 2B8094 802D5C64 24845C24 */   addiu     $a0, $a0, %lo(func_802D5C24_2B8054)
    /* 2B8098 802D5C68 0C001DB5 */  jal        func_800076D4_82D4
    /* 2B809C 802D5C6C 24040002 */   addiu     $a0, $zero, 0x2
  .L802D5C70_2B80A0:
    /* 2B80A0 802D5C70 3C048005 */  lui        $a0, %hi(D_8004E798)
    /* 2B80A4 802D5C74 2484E798 */  addiu      $a0, $a0, %lo(D_8004E798)
    /* 2B80A8 802D5C78 24050001 */  addiu      $a1, $zero, 0x1
    /* 2B80AC 802D5C7C 0C005142 */  jal        func_80014508_15108
    /* 2B80B0 802D5C80 24060002 */   addiu     $a2, $zero, 0x2
    /* 2B80B4 802D5C84 3C088005 */  lui        $t0, %hi(D_80052A8C)
    /* 2B80B8 802D5C88 8D082A8C */  lw         $t0, %lo(D_80052A8C)($t0)
    /* 2B80BC 802D5C8C 2401000C */  addiu      $at, $zero, 0xC
    /* 2B80C0 802D5C90 3C048005 */  lui        $a0, %hi(D_8004E798)
    /* 2B80C4 802D5C94 0101001B */  divu       $zero, $t0, $at
    /* 2B80C8 802D5C98 00004810 */  mfhi       $t1
    /* 2B80CC 802D5C9C 2484E798 */  addiu      $a0, $a0, %lo(D_8004E798)
    /* 2B80D0 802D5CA0 15200008 */  bnez       $t1, .L802D5CC4_2B80F4
    /* 2B80D4 802D5CA4 00003025 */   or        $a2, $zero, $zero
    /* 2B80D8 802D5CA8 3C038015 */  lui        $v1, %hi(D_8014D17C)
    /* 2B80DC 802D5CAC 2463D17C */  addiu      $v1, $v1, %lo(D_8014D17C)
    /* 2B80E0 802D5CB0 84620000 */  lh         $v0, 0x0($v1)
    /* 2B80E4 802D5CB4 28410005 */  slti       $at, $v0, 0x5
    /* 2B80E8 802D5CB8 10200002 */  beqz       $at, .L802D5CC4_2B80F4
    /* 2B80EC 802D5CBC 244A0001 */   addiu     $t2, $v0, 0x1
    /* 2B80F0 802D5CC0 A46A0000 */  sh         $t2, 0x0($v1)
  .L802D5CC4_2B80F4:
    /* 2B80F4 802D5CC4 86050ACE */  lh         $a1, 0xACE($s0)
    /* 2B80F8 802D5CC8 0C040A83 */  jal        func_80102A0C_1119BC
    /* 2B80FC 802D5CCC 3C074020 */   lui       $a3, (0x40200000 >> 16)
    /* 2B8100 802D5CD0 0C000E38 */  jal        func_800038E0_44E0
    /* 2B8104 802D5CD4 00000000 */   nop
    /* 2B8108 802D5CD8 3C0B8005 */  lui        $t3, %hi(D_80052A8C)
    /* 2B810C 802D5CDC 8D6B2A8C */  lw         $t3, %lo(D_80052A8C)($t3)
    /* 2B8110 802D5CE0 304C0007 */  andi       $t4, $v0, 0x7
    /* 2B8114 802D5CE4 258D0004 */  addiu      $t5, $t4, 0x4
    /* 2B8118 802D5CE8 016D001B */  divu       $zero, $t3, $t5
    /* 2B811C 802D5CEC 00007010 */  mfhi       $t6
    /* 2B8120 802D5CF0 15A00002 */  bnez       $t5, .L802D5CFC_2B812C
    /* 2B8124 802D5CF4 00000000 */   nop
    /* 2B8128 802D5CF8 0007000D */  break      7
  .L802D5CFC_2B812C:
    /* 2B812C 802D5CFC 55C00050 */  bnel       $t6, $zero, .L802D5E40_2B8270
    /* 2B8130 802D5D00 86020AC8 */   lh        $v0, 0xAC8($s0)
    /* 2B8134 802D5D04 860F1384 */  lh         $t7, 0x1384($s0)
    /* 2B8138 802D5D08 59E0004D */  blezl      $t7, .L802D5E40_2B8270
    /* 2B813C 802D5D0C 86020AC8 */   lh        $v0, 0xAC8($s0)
    /* 2B8140 802D5D10 0C000E38 */  jal        func_800038E0_44E0
    /* 2B8144 802D5D14 00000000 */   nop
    /* 2B8148 802D5D18 0C000E38 */  jal        func_800038E0_44E0
    /* 2B814C 802D5D1C A7A20042 */   sh        $v0, 0x42($sp)
    /* 2B8150 802D5D20 0C000E38 */  jal        func_800038E0_44E0
    /* 2B8154 802D5D24 A7A20044 */   sh        $v0, 0x44($sp)
    /* 2B8158 802D5D28 24030019 */  addiu      $v1, $zero, 0x19
    /* 2B815C 802D5D2C 97B80042 */  lhu        $t8, 0x42($sp)
    /* 2B8160 802D5D30 97AC0044 */  lhu        $t4, 0x44($sp)
    /* 2B8164 802D5D34 86081368 */  lh         $t0, 0x1368($s0)
    /* 2B8168 802D5D38 0303001A */  div        $zero, $t8, $v1
    /* 2B816C 802D5D3C 0000C810 */  mfhi       $t9
    /* 2B8170 802D5D40 860D136A */  lh         $t5, 0x136A($s0)
    /* 2B8174 802D5D44 14600002 */  bnez       $v1, .L802D5D50_2B8180
    /* 2B8178 802D5D48 00000000 */   nop
    /* 2B817C 802D5D4C 0007000D */  break      7
  .L802D5D50_2B8180:
    /* 2B8180 802D5D50 2401FFFF */  addiu      $at, $zero, -0x1
    /* 2B8184 802D5D54 14610004 */  bne        $v1, $at, .L802D5D68_2B8198
    /* 2B8188 802D5D58 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 2B818C 802D5D5C 17010002 */  bne        $t8, $at, .L802D5D68_2B8198
    /* 2B8190 802D5D60 00000000 */   nop
    /* 2B8194 802D5D64 0006000D */  break      6
  .L802D5D68_2B8198:
    /* 2B8198 802D5D68 0183001A */  div        $zero, $t4, $v1
    /* 2B819C 802D5D6C 00005810 */  mfhi       $t3
    /* 2B81A0 802D5D70 03282021 */  addu       $a0, $t9, $t0
    /* 2B81A4 802D5D74 016D2821 */  addu       $a1, $t3, $t5
    /* 2B81A8 802D5D78 0043001A */  div        $zero, $v0, $v1
    /* 2B81AC 802D5D7C 8619136C */  lh         $t9, 0x136C($s0)
    /* 2B81B0 802D5D80 24A50064 */  addiu      $a1, $a1, 0x64
    /* 2B81B4 802D5D84 00057400 */  sll        $t6, $a1, 16
    /* 2B81B8 802D5D88 24840050 */  addiu      $a0, $a0, 0x50
    /* 2B81BC 802D5D8C 00044C00 */  sll        $t1, $a0, 16
    /* 2B81C0 802D5D90 000E7C03 */  sra        $t7, $t6, 16
    /* 2B81C4 802D5D94 0000C010 */  mfhi       $t8
    /* 2B81C8 802D5D98 00095403 */  sra        $t2, $t1, 16
    /* 2B81CC 802D5D9C 03193021 */  addu       $a2, $t8, $t9
    /* 2B81D0 802D5DA0 24C60014 */  addiu      $a2, $a2, 0x14
    /* 2B81D4 802D5DA4 01402025 */  or         $a0, $t2, $zero
    /* 2B81D8 802D5DA8 14600002 */  bnez       $v1, .L802D5DB4_2B81E4
    /* 2B81DC 802D5DAC 00000000 */   nop
    /* 2B81E0 802D5DB0 0007000D */  break      7
  .L802D5DB4_2B81E4:
    /* 2B81E4 802D5DB4 2401FFFF */  addiu      $at, $zero, -0x1
    /* 2B81E8 802D5DB8 14610004 */  bne        $v1, $at, .L802D5DCC_2B81FC
    /* 2B81EC 802D5DBC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 2B81F0 802D5DC0 15810002 */  bne        $t4, $at, .L802D5DCC_2B81FC
    /* 2B81F4 802D5DC4 00000000 */   nop
    /* 2B81F8 802D5DC8 0006000D */  break      6
  .L802D5DCC_2B81FC:
    /* 2B81FC 802D5DCC 01E02825 */  or         $a1, $t7, $zero
    /* 2B8200 802D5DD0 240F007B */  addiu      $t7, $zero, 0x7B
    /* 2B8204 802D5DD4 14600002 */  bnez       $v1, .L802D5DE0_2B8210
    /* 2B8208 802D5DD8 00000000 */   nop
    /* 2B820C 802D5DDC 0007000D */  break      7
  .L802D5DE0_2B8210:
    /* 2B8210 802D5DE0 2401FFFF */  addiu      $at, $zero, -0x1
    /* 2B8214 802D5DE4 14610004 */  bne        $v1, $at, .L802D5DF8_2B8228
    /* 2B8218 802D5DE8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 2B821C 802D5DEC 14410002 */  bne        $v0, $at, .L802D5DF8_2B8228
    /* 2B8220 802D5DF0 00000000 */   nop
    /* 2B8224 802D5DF4 0006000D */  break      6
  .L802D5DF8_2B8228:
    /* 2B8228 802D5DF8 240C000E */  addiu      $t4, $zero, 0xE
    /* 2B822C 802D5DFC 240A0008 */  addiu      $t2, $zero, 0x8
    /* 2B8230 802D5E00 00064400 */  sll        $t0, $a2, 16
    /* 2B8234 802D5E04 2418002E */  addiu      $t8, $zero, 0x2E
    /* 2B8238 802D5E08 240E002F */  addiu      $t6, $zero, 0x2F
    /* 2B823C 802D5E0C 240D00F0 */  addiu      $t5, $zero, 0xF0
    /* 2B8240 802D5E10 240B0028 */  addiu      $t3, $zero, 0x28
    /* 2B8244 802D5E14 AFAB0018 */  sw         $t3, 0x18($sp)
    /* 2B8248 802D5E18 AFAD001C */  sw         $t5, 0x1C($sp)
    /* 2B824C 802D5E1C AFAE0020 */  sw         $t6, 0x20($sp)
    /* 2B8250 802D5E20 AFB80028 */  sw         $t8, 0x28($sp)
    /* 2B8254 802D5E24 00083403 */  sra        $a2, $t0, 16
    /* 2B8258 802D5E28 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 2B825C 802D5E2C AFAC0014 */  sw         $t4, 0x14($sp)
    /* 2B8260 802D5E30 AFAF0024 */  sw         $t7, 0x24($sp)
    /* 2B8264 802D5E34 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 2B8268 802D5E38 24070050 */   addiu     $a3, $zero, 0x50
    /* 2B826C 802D5E3C 86020AC8 */  lh         $v0, 0xAC8($s0)
  .L802D5E40_2B8270:
    /* 2B8270 802D5E40 28411940 */  slti       $at, $v0, 0x1940
    /* 2B8274 802D5E44 50200027 */  beql       $at, $zero, .L802D5EE4_2B8314
    /* 2B8278 802D5E48 28411C60 */   slti      $at, $v0, 0x1C60
    /* 2B827C 802D5E4C 86190AE4 */  lh         $t9, 0xAE4($s0)
    /* 2B8280 802D5E50 3C048005 */  lui        $a0, %hi(D_8004E798)
    /* 2B8284 802D5E54 2484E798 */  addiu      $a0, $a0, %lo(D_8004E798)
    /* 2B8288 802D5E58 00194440 */  sll        $t0, $t9, 17
    /* 2B828C 802D5E5C 0C049046 */  jal        func_80124118_1330C8
    /* 2B8290 802D5E60 00082C03 */   sra       $a1, $t0, 16
    /* 2B8294 802D5E64 24040000 */  addiu      $a0, $zero, 0x0
    /* 2B8298 802D5E68 0C001CB3 */  jal        func_800072CC_7ECC
    /* 2B829C 802D5E6C 2405000C */   addiu     $a1, $zero, 0xC
    /* 2B82A0 802D5E70 0C02B87B */  jal        func_800AE1EC_BD19C
    /* 2B82A4 802D5E74 00000000 */   nop
    /* 2B82A8 802D5E78 3C0C8004 */  lui        $t4, %hi(D_80047710)
    /* 2B82AC 802D5E7C 858C7710 */  lh         $t4, %lo(D_80047710)($t4)
    /* 2B82B0 802D5E80 860A1368 */  lh         $t2, 0x1368($s0)
    /* 2B82B4 802D5E84 240E0008 */  addiu      $t6, $zero, 0x8
    /* 2B82B8 802D5E88 240F0001 */  addiu      $t7, $zero, 0x1
    /* 2B82BC 802D5E8C 014C2021 */  addu       $a0, $t2, $t4
    /* 2B82C0 802D5E90 00045C00 */  sll        $t3, $a0, 16
    /* 2B82C4 802D5E94 240A002E */  addiu      $t2, $zero, 0x2E
    /* 2B82C8 802D5E98 241800C8 */  addiu      $t8, $zero, 0xC8
    /* 2B82CC 802D5E9C 241900FF */  addiu      $t9, $zero, 0xFF
    /* 2B82D0 802D5EA0 2408002F */  addiu      $t0, $zero, 0x2F
    /* 2B82D4 802D5EA4 2409007B */  addiu      $t1, $zero, 0x7B
    /* 2B82D8 802D5EA8 AFA90024 */  sw         $t1, 0x24($sp)
    /* 2B82DC 802D5EAC AFA80020 */  sw         $t0, 0x20($sp)
    /* 2B82E0 802D5EB0 AFB9001C */  sw         $t9, 0x1C($sp)
    /* 2B82E4 802D5EB4 AFB80018 */  sw         $t8, 0x18($sp)
    /* 2B82E8 802D5EB8 AFAA0028 */  sw         $t2, 0x28($sp)
    /* 2B82EC 802D5EBC 000B2403 */  sra        $a0, $t3, 16
    /* 2B82F0 802D5EC0 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 2B82F4 802D5EC4 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 2B82F8 802D5EC8 8605136A */  lh         $a1, 0x136A($s0)
    /* 2B82FC 802D5ECC 8606136C */  lh         $a2, 0x136C($s0)
    /* 2B8300 802D5ED0 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 2B8304 802D5ED4 24070190 */   addiu     $a3, $zero, 0x190
    /* 2B8308 802D5ED8 3C028005 */  lui        $v0, %hi(D_8004E798)
    /* 2B830C 802D5EDC 8442E798 */  lh         $v0, %lo(D_8004E798)($v0)
    /* 2B8310 802D5EE0 28411C60 */  slti       $at, $v0, 0x1C60
  .L802D5EE4_2B8314:
    /* 2B8314 802D5EE4 1020000B */  beqz       $at, .L802D5F14_2B8344
    /* 2B8318 802D5EE8 3C10802E */   lui       $s0, %hi(D_802E30EC)
    /* 2B831C 802D5EEC 261030EC */  addiu      $s0, $s0, %lo(D_802E30EC)
    /* 2B8320 802D5EF0 8E0C0000 */  lw         $t4, 0x0($s0)
    /* 2B8324 802D5EF4 00002025 */  or         $a0, $zero, $zero
    /* 2B8328 802D5EF8 2405001B */  addiu      $a1, $zero, 0x1B
    /* 2B832C 802D5EFC 55800006 */  bnel       $t4, $zero, .L802D5F18_2B8348
    /* 2B8330 802D5F00 8FBF003C */   lw        $ra, 0x3C($sp)
    /* 2B8334 802D5F04 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 2B8338 802D5F08 00003025 */   or        $a2, $zero, $zero
    /* 2B833C 802D5F0C 240B0001 */  addiu      $t3, $zero, 0x1
    /* 2B8340 802D5F10 AE0B0000 */  sw         $t3, 0x0($s0)
  .L802D5F14_2B8344:
    /* 2B8344 802D5F14 8FBF003C */  lw         $ra, 0x3C($sp)
  .L802D5F18_2B8348:
    /* 2B8348 802D5F18 8FB00038 */  lw         $s0, 0x38($sp)
    /* 2B834C 802D5F1C 27BD0050 */  addiu      $sp, $sp, 0x50
    /* 2B8350 802D5F20 03E00008 */  jr         $ra
    /* 2B8354 802D5F24 00000000 */   nop
endlabel func_802D5C24_2B8054
