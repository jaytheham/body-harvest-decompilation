nonmatching func_802D4F4C_31909C, 0x2E0

glabel func_802D4F4C_31909C
    /* 31909C 802D4F4C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 3190A0 802D4F50 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 3190A4 802D4F54 3C04802E */  lui        $a0, %hi(D_802E7A60)
    /* 3190A8 802D4F58 0C00731B */  jal        osSyncPrintf
    /* 3190AC 802D4F5C 24847A60 */   addiu     $a0, $a0, %lo(D_802E7A60)
    /* 3190B0 802D4F60 24040000 */  addiu      $a0, $zero, 0x0
    /* 3190B4 802D4F64 0C001C9B */  jal        func_8000726C_7E6C
    /* 3190B8 802D4F68 2405002D */   addiu     $a1, $zero, 0x2D
    /* 3190BC 802D4F6C 1440000F */  bnez       $v0, .L802D4FAC_3190FC
    /* 3190C0 802D4F70 2404C40A */   addiu     $a0, $zero, -0x3BF6
    /* 3190C4 802D4F74 0C02E134 */  jal        func_800B84D0_C7480
    /* 3190C8 802D4F78 24053900 */   addiu     $a1, $zero, 0x3900
    /* 3190CC 802D4F7C 00022A03 */  sra        $a1, $v0, 8
    /* 3190D0 802D4F80 00057400 */  sll        $t6, $a1, 16
    /* 3190D4 802D4F84 241801F4 */  addiu      $t8, $zero, 0x1F4
    /* 3190D8 802D4F88 AFB80010 */  sw         $t8, 0x10($sp)
    /* 3190DC 802D4F8C 000E2C03 */  sra        $a1, $t6, 16
    /* 3190E0 802D4F90 2404C40A */  addiu      $a0, $zero, -0x3BF6
    /* 3190E4 802D4F94 240637F5 */  addiu      $a2, $zero, 0x37F5
    /* 3190E8 802D4F98 0C0B536A */  jal        func_802D4DA8_318EF8
    /* 3190EC 802D4F9C 240707D0 */   addiu     $a3, $zero, 0x7D0
    /* 3190F0 802D4FA0 3C01802E */  lui        $at, %hi(D_802E7C30)
    /* 3190F4 802D4FA4 1000000E */  b          .L802D4FE0_319130
    /* 3190F8 802D4FA8 A4227C30 */   sh        $v0, %lo(D_802E7C30)($at)
  .L802D4FAC_3190FC:
    /* 3190FC 802D4FAC 2419FFFF */  addiu      $t9, $zero, -0x1
    /* 319100 802D4FB0 3C01802E */  lui        $at, %hi(D_802E7C30)
    /* 319104 802D4FB4 A4397C30 */  sh         $t9, %lo(D_802E7C30)($at)
    /* 319108 802D4FB8 0C047020 */  jal        func_8011C080_12B030
    /* 31910C 802D4FBC 240400C3 */   addiu     $a0, $zero, 0xC3
    /* 319110 802D4FC0 0C047020 */  jal        func_8011C080_12B030
    /* 319114 802D4FC4 240400CB */   addiu     $a0, $zero, 0xCB
    /* 319118 802D4FC8 0C047020 */  jal        func_8011C080_12B030
    /* 31911C 802D4FCC 240400D0 */   addiu     $a0, $zero, 0xD0
    /* 319120 802D4FD0 0C047020 */  jal        func_8011C080_12B030
    /* 319124 802D4FD4 240400C9 */   addiu     $a0, $zero, 0xC9
    /* 319128 802D4FD8 0C047020 */  jal        func_8011C080_12B030
    /* 31912C 802D4FDC 240400CA */   addiu     $a0, $zero, 0xCA
  .L802D4FE0_319130:
    /* 319130 802D4FE0 24040000 */  addiu      $a0, $zero, 0x0
    /* 319134 802D4FE4 0C001C9B */  jal        func_8000726C_7E6C
    /* 319138 802D4FE8 2405002E */   addiu     $a1, $zero, 0x2E
    /* 31913C 802D4FEC 1440000F */  bnez       $v0, .L802D502C_31917C
    /* 319140 802D4FF0 24041000 */   addiu     $a0, $zero, 0x1000
    /* 319144 802D4FF4 0C02E134 */  jal        func_800B84D0_C7480
    /* 319148 802D4FF8 24053900 */   addiu     $a1, $zero, 0x3900
    /* 31914C 802D4FFC 00022A03 */  sra        $a1, $v0, 8
    /* 319150 802D5000 00054400 */  sll        $t0, $a1, 16
    /* 319154 802D5004 240A01F4 */  addiu      $t2, $zero, 0x1F4
    /* 319158 802D5008 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 31915C 802D500C 00082C03 */  sra        $a1, $t0, 16
    /* 319160 802D5010 24041000 */  addiu      $a0, $zero, 0x1000
    /* 319164 802D5014 240637F5 */  addiu      $a2, $zero, 0x37F5
    /* 319168 802D5018 0C0B536A */  jal        func_802D4DA8_318EF8
    /* 31916C 802D501C 240707D0 */   addiu     $a3, $zero, 0x7D0
    /* 319170 802D5020 3C01802E */  lui        $at, %hi(D_802E7C32)
    /* 319174 802D5024 1000000E */  b          .L802D5060_3191B0
    /* 319178 802D5028 A4227C32 */   sh        $v0, %lo(D_802E7C32)($at)
  .L802D502C_31917C:
    /* 31917C 802D502C 240BFFFF */  addiu      $t3, $zero, -0x1
    /* 319180 802D5030 3C01802E */  lui        $at, %hi(D_802E7C32)
    /* 319184 802D5034 A42B7C32 */  sh         $t3, %lo(D_802E7C32)($at)
    /* 319188 802D5038 0C047020 */  jal        func_8011C080_12B030
    /* 31918C 802D503C 240400C4 */   addiu     $a0, $zero, 0xC4
    /* 319190 802D5040 0C047020 */  jal        func_8011C080_12B030
    /* 319194 802D5044 240400CE */   addiu     $a0, $zero, 0xCE
    /* 319198 802D5048 0C047020 */  jal        func_8011C080_12B030
    /* 31919C 802D504C 240400D1 */   addiu     $a0, $zero, 0xD1
    /* 3191A0 802D5050 0C047020 */  jal        func_8011C080_12B030
    /* 3191A4 802D5054 240400CC */   addiu     $a0, $zero, 0xCC
    /* 3191A8 802D5058 0C047020 */  jal        func_8011C080_12B030
    /* 3191AC 802D505C 240400CD */   addiu     $a0, $zero, 0xCD
  .L802D5060_3191B0:
    /* 3191B0 802D5060 24040000 */  addiu      $a0, $zero, 0x0
    /* 3191B4 802D5064 0C001C9B */  jal        func_8000726C_7E6C
    /* 3191B8 802D5068 2405002F */   addiu     $a1, $zero, 0x2F
    /* 3191BC 802D506C 1440000F */  bnez       $v0, .L802D50AC_3191FC
    /* 3191C0 802D5070 2404C40A */   addiu     $a0, $zero, -0x3BF6
    /* 3191C4 802D5074 0C02E134 */  jal        func_800B84D0_C7480
    /* 3191C8 802D5078 2405C700 */   addiu     $a1, $zero, -0x3900
    /* 3191CC 802D507C 00022A03 */  sra        $a1, $v0, 8
    /* 3191D0 802D5080 00056400 */  sll        $t4, $a1, 16
    /* 3191D4 802D5084 240E01F4 */  addiu      $t6, $zero, 0x1F4
    /* 3191D8 802D5088 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 3191DC 802D508C 000C2C03 */  sra        $a1, $t4, 16
    /* 3191E0 802D5090 2404C40A */  addiu      $a0, $zero, -0x3BF6
    /* 3191E4 802D5094 2406C40A */  addiu      $a2, $zero, -0x3BF6
    /* 3191E8 802D5098 0C0B536A */  jal        func_802D4DA8_318EF8
    /* 3191EC 802D509C 240707D0 */   addiu     $a3, $zero, 0x7D0
    /* 3191F0 802D50A0 3C01802E */  lui        $at, %hi(D_802E7C34)
    /* 3191F4 802D50A4 1000000E */  b          .L802D50E0_319230
    /* 3191F8 802D50A8 A4227C34 */   sh        $v0, %lo(D_802E7C34)($at)
  .L802D50AC_3191FC:
    /* 3191FC 802D50AC 240FFFFF */  addiu      $t7, $zero, -0x1
    /* 319200 802D50B0 3C01802E */  lui        $at, %hi(D_802E7C34)
    /* 319204 802D50B4 A42F7C34 */  sh         $t7, %lo(D_802E7C34)($at)
    /* 319208 802D50B8 0C047020 */  jal        func_8011C080_12B030
    /* 31920C 802D50BC 24040043 */   addiu     $a0, $zero, 0x43
    /* 319210 802D50C0 0C047020 */  jal        func_8011C080_12B030
    /* 319214 802D50C4 2404003F */   addiu     $a0, $zero, 0x3F
    /* 319218 802D50C8 0C047020 */  jal        func_8011C080_12B030
    /* 31921C 802D50CC 24040045 */   addiu     $a0, $zero, 0x45
    /* 319220 802D50D0 0C047020 */  jal        func_8011C080_12B030
    /* 319224 802D50D4 2404004D */   addiu     $a0, $zero, 0x4D
    /* 319228 802D50D8 0C047020 */  jal        func_8011C080_12B030
    /* 31922C 802D50DC 24040044 */   addiu     $a0, $zero, 0x44
  .L802D50E0_319230:
    /* 319230 802D50E0 24040000 */  addiu      $a0, $zero, 0x0
    /* 319234 802D50E4 0C001C9B */  jal        func_8000726C_7E6C
    /* 319238 802D50E8 24050030 */   addiu     $a1, $zero, 0x30
    /* 31923C 802D50EC 14400010 */  bnez       $v0, .L802D5130_319280
    /* 319240 802D50F0 2409FFFF */   addiu     $t1, $zero, -0x1
    /* 319244 802D50F4 24041000 */  addiu      $a0, $zero, 0x1000
    /* 319248 802D50F8 0C02E134 */  jal        func_800B84D0_C7480
    /* 31924C 802D50FC 2405C700 */   addiu     $a1, $zero, -0x3900
    /* 319250 802D5100 00022A03 */  sra        $a1, $v0, 8
    /* 319254 802D5104 0005C400 */  sll        $t8, $a1, 16
    /* 319258 802D5108 240801F4 */  addiu      $t0, $zero, 0x1F4
    /* 31925C 802D510C AFA80010 */  sw         $t0, 0x10($sp)
    /* 319260 802D5110 00182C03 */  sra        $a1, $t8, 16
    /* 319264 802D5114 24041000 */  addiu      $a0, $zero, 0x1000
    /* 319268 802D5118 2406C40A */  addiu      $a2, $zero, -0x3BF6
    /* 31926C 802D511C 0C0B536A */  jal        func_802D4DA8_318EF8
    /* 319270 802D5120 240707D0 */   addiu     $a3, $zero, 0x7D0
    /* 319274 802D5124 3C01802E */  lui        $at, %hi(D_802E7C36)
    /* 319278 802D5128 1000000D */  b          .L802D5160_3192B0
    /* 31927C 802D512C A4227C36 */   sh        $v0, %lo(D_802E7C36)($at)
  .L802D5130_319280:
    /* 319280 802D5130 3C01802E */  lui        $at, %hi(D_802E7C36)
    /* 319284 802D5134 A4297C36 */  sh         $t1, %lo(D_802E7C36)($at)
    /* 319288 802D5138 0C047020 */  jal        func_8011C080_12B030
    /* 31928C 802D513C 24040040 */   addiu     $a0, $zero, 0x40
    /* 319290 802D5140 0C047020 */  jal        func_8011C080_12B030
    /* 319294 802D5144 24040047 */   addiu     $a0, $zero, 0x47
    /* 319298 802D5148 0C047020 */  jal        func_8011C080_12B030
    /* 31929C 802D514C 2404004E */   addiu     $a0, $zero, 0x4E
    /* 3192A0 802D5150 0C047020 */  jal        func_8011C080_12B030
    /* 3192A4 802D5154 24040046 */   addiu     $a0, $zero, 0x46
    /* 3192A8 802D5158 0C047020 */  jal        func_8011C080_12B030
    /* 3192AC 802D515C 24040048 */   addiu     $a0, $zero, 0x48
  .L802D5160_3192B0:
    /* 3192B0 802D5160 3C01802E */  lui        $at, %hi(D_802E4E80)
    /* 3192B4 802D5164 AC204E80 */  sw         $zero, %lo(D_802E4E80)($at)
    /* 3192B8 802D5168 24040000 */  addiu      $a0, $zero, 0x0
    /* 3192BC 802D516C 0C001C9B */  jal        func_8000726C_7E6C
    /* 3192C0 802D5170 24050029 */   addiu     $a1, $zero, 0x29
    /* 3192C4 802D5174 50400004 */  beql       $v0, $zero, .L802D5188_3192D8
    /* 3192C8 802D5178 24040000 */   addiu     $a0, $zero, 0x0
    /* 3192CC 802D517C 0C047020 */  jal        func_8011C080_12B030
    /* 3192D0 802D5180 240400F6 */   addiu     $a0, $zero, 0xF6
    /* 3192D4 802D5184 24040000 */  addiu      $a0, $zero, 0x0
  .L802D5188_3192D8:
    /* 3192D8 802D5188 0C001C9B */  jal        func_8000726C_7E6C
    /* 3192DC 802D518C 2405002A */   addiu     $a1, $zero, 0x2A
    /* 3192E0 802D5190 50400004 */  beql       $v0, $zero, .L802D51A4_3192F4
    /* 3192E4 802D5194 24040000 */   addiu     $a0, $zero, 0x0
    /* 3192E8 802D5198 0C047020 */  jal        func_8011C080_12B030
    /* 3192EC 802D519C 24040065 */   addiu     $a0, $zero, 0x65
    /* 3192F0 802D51A0 24040000 */  addiu      $a0, $zero, 0x0
  .L802D51A4_3192F4:
    /* 3192F4 802D51A4 0C001C9B */  jal        func_8000726C_7E6C
    /* 3192F8 802D51A8 2405002B */   addiu     $a1, $zero, 0x2B
    /* 3192FC 802D51AC 50400004 */  beql       $v0, $zero, .L802D51C0_319310
    /* 319300 802D51B0 24040000 */   addiu     $a0, $zero, 0x0
    /* 319304 802D51B4 0C047020 */  jal        func_8011C080_12B030
    /* 319308 802D51B8 2404005D */   addiu     $a0, $zero, 0x5D
    /* 31930C 802D51BC 24040000 */  addiu      $a0, $zero, 0x0
  .L802D51C0_319310:
    /* 319310 802D51C0 0C001C9B */  jal        func_8000726C_7E6C
    /* 319314 802D51C4 2405002C */   addiu     $a1, $zero, 0x2C
    /* 319318 802D51C8 10400003 */  beqz       $v0, .L802D51D8_319328
    /* 31931C 802D51CC 00000000 */   nop
    /* 319320 802D51D0 0C047020 */  jal        func_8011C080_12B030
    /* 319324 802D51D4 240400AF */   addiu     $a0, $zero, 0xAF
  .L802D51D8_319328:
    /* 319328 802D51D8 3C0A8004 */  lui        $t2, %hi(D_80047F98)
    /* 31932C 802D51DC 8D4A7F98 */  lw         $t2, %lo(D_80047F98)($t2)
    /* 319330 802D51E0 5140000F */  beql       $t2, $zero, .L802D5220_319370
    /* 319334 802D51E4 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 319338 802D51E8 0C04818D */  jal        func_80120634_12F5E4
    /* 31933C 802D51EC 00000000 */   nop
    /* 319340 802D51F0 00025880 */  sll        $t3, $v0, 2
    /* 319344 802D51F4 01625823 */  subu       $t3, $t3, $v0
    /* 319348 802D51F8 3C0C8005 */  lui        $t4, %hi(buildingInstances)
    /* 31934C 802D51FC 258C0AD8 */  addiu      $t4, $t4, %lo(buildingInstances)
    /* 319350 802D5200 000B58C0 */  sll        $t3, $t3, 3
    /* 319354 802D5204 3C038015 */  lui        $v1, %hi(D_80157FA4)
    /* 319358 802D5208 24637FA4 */  addiu      $v1, $v1, %lo(D_80157FA4)
    /* 31935C 802D520C 016C6821 */  addu       $t5, $t3, $t4
    /* 319360 802D5210 AC6D0000 */  sw         $t5, 0x0($v1)
    /* 319364 802D5214 240E7D00 */  addiu      $t6, $zero, 0x7D00
    /* 319368 802D5218 A5AE0002 */  sh         $t6, 0x2($t5)
    /* 31936C 802D521C 8FBF001C */  lw         $ra, 0x1C($sp)
  .L802D5220_319370:
    /* 319370 802D5220 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 319374 802D5224 03E00008 */  jr         $ra
    /* 319378 802D5228 00000000 */   nop
endlabel func_802D4F4C_31909C
