nonmatching func_8009C1D8_AB188, 0x280

glabel func_8009C1D8_AB188
    /* AB188 8009C1D8 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* AB18C 8009C1DC 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* AB190 8009C1E0 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* AB194 8009C1E4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* AB198 8009C1E8 AFA40038 */  sw         $a0, 0x38($sp)
    /* AB19C 8009C1EC AFA5003C */  sw         $a1, 0x3C($sp)
    /* AB1A0 8009C1F0 AFA60040 */  sw         $a2, 0x40($sp)
    /* AB1A4 8009C1F4 844C0000 */  lh         $t4, 0x0($v0)
    /* AB1A8 8009C1F8 844A0004 */  lh         $t2, 0x4($v0)
    /* AB1AC 8009C1FC 00047400 */  sll        $t6, $a0, 16
    /* AB1B0 8009C200 0005C400 */  sll        $t8, $a1, 16
    /* AB1B4 8009C204 0018CC03 */  sra        $t9, $t8, 16
    /* AB1B8 8009C208 000E7C03 */  sra        $t7, $t6, 16
    /* AB1BC 8009C20C 018F6823 */  subu       $t5, $t4, $t7
    /* AB1C0 8009C210 01595823 */  subu       $t3, $t2, $t9
    /* AB1C4 8009C214 448B2000 */  mtc1       $t3, $f4
    /* AB1C8 8009C218 448D3000 */  mtc1       $t5, $f6
    /* AB1CC 8009C21C 46802320 */  cvt.s.w    $f12, $f4
    /* AB1D0 8009C220 0C000E09 */  jal        func_80003824_4424
    /* AB1D4 8009C224 468033A0 */   cvt.s.w   $f14, $f6
    /* AB1D8 8009C228 3C0E8004 */  lui        $t6, %hi(D_80047950)
    /* AB1DC 8009C22C 85CE7950 */  lh         $t6, %lo(D_80047950)($t6)
    /* AB1E0 8009C230 004EC023 */  subu       $t8, $v0, $t6
    /* AB1E4 8009C234 3304FFFF */  andi       $a0, $t8, 0xFFFF
    /* AB1E8 8009C238 AFA40018 */  sw         $a0, 0x18($sp)
    /* AB1EC 8009C23C 0C007660 */  jal        sins
    /* AB1F0 8009C240 A7B80036 */   sh        $t8, 0x36($sp)
    /* AB1F4 8009C244 44824000 */  mtc1       $v0, $f8
    /* AB1F8 8009C248 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* AB1FC 8009C24C 44819800 */  mtc1       $at, $f19
    /* AB200 8009C250 468042A0 */  cvt.s.w    $f10, $f8
    /* AB204 8009C254 44809000 */  mtc1       $zero, $f18
    /* AB208 8009C258 3C198007 */  lui        $t9, %hi(D_80068084)
    /* AB20C 8009C25C 8F398084 */  lw         $t9, %lo(D_80068084)($t9)
    /* AB210 8009C260 3C018014 */  lui        $at, %hi(D_801426C0)
    /* AB214 8009C264 D42626C0 */  ldc1       $f6, %lo(D_801426C0)($at)
    /* AB218 8009C268 46005421 */  cvt.d.s    $f16, $f10
    /* AB21C 8009C26C 00195043 */  sra        $t2, $t9, 1
    /* AB220 8009C270 46328103 */  div.d      $f4, $f16, $f18
    /* AB224 8009C274 448A5000 */  mtc1       $t2, $f10
    /* AB228 8009C278 8FA40018 */  lw         $a0, 0x18($sp)
    /* AB22C 8009C27C 46805421 */  cvt.d.w    $f16, $f10
    /* AB230 8009C280 46262202 */  mul.d      $f8, $f4, $f6
    /* AB234 8009C284 46304480 */  add.d      $f18, $f8, $f16
    /* AB238 8009C288 4620910D */  trunc.w.d  $f4, $f18
    /* AB23C 8009C28C 440D2000 */  mfc1       $t5, $f4
    /* AB240 8009C290 0C007654 */  jal        coss
    /* AB244 8009C294 A7AD0034 */   sh        $t5, 0x34($sp)
    /* AB248 8009C298 44823000 */  mtc1       $v0, $f6
    /* AB24C 8009C29C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* AB250 8009C2A0 44818800 */  mtc1       $at, $f17
    /* AB254 8009C2A4 468032A0 */  cvt.s.w    $f10, $f6
    /* AB258 8009C2A8 44808000 */  mtc1       $zero, $f16
    /* AB25C 8009C2AC 3C0E8007 */  lui        $t6, %hi(D_80068088)
    /* AB260 8009C2B0 8DCE8088 */  lw         $t6, %lo(D_80068088)($t6)
    /* AB264 8009C2B4 3C018014 */  lui        $at, %hi(D_801426C8)
    /* AB268 8009C2B8 D42426C8 */  ldc1       $f4, %lo(D_801426C8)($at)
    /* AB26C 8009C2BC 46005221 */  cvt.d.s    $f8, $f10
    /* AB270 8009C2C0 000E7843 */  sra        $t7, $t6, 1
    /* AB274 8009C2C4 46304483 */  div.d      $f18, $f8, $f16
    /* AB278 8009C2C8 448F5000 */  mtc1       $t7, $f10
    /* AB27C 8009C2CC 87A50034 */  lh         $a1, 0x34($sp)
    /* AB280 8009C2D0 3C048005 */  lui        $a0, %hi(D_80052B40)
    /* AB284 8009C2D4 46805221 */  cvt.d.w    $f8, $f10
    /* AB288 8009C2D8 3C028005 */  lui        $v0, %hi(D_80052B48)
    /* AB28C 8009C2DC 28A10118 */  slti       $at, $a1, 0x118
    /* AB290 8009C2E0 24842B40 */  addiu      $a0, $a0, %lo(D_80052B40)
    /* AB294 8009C2E4 8FA60040 */  lw         $a2, 0x40($sp)
    /* AB298 8009C2E8 240BFFFF */  addiu      $t3, $zero, -0x1
    /* AB29C 8009C2EC 24422B48 */  addiu      $v0, $v0, %lo(D_80052B48)
    /* AB2A0 8009C2F0 340D8000 */  ori        $t5, $zero, 0x8000
    /* AB2A4 8009C2F4 46249182 */  mul.d      $f6, $f18, $f4
    /* AB2A8 8009C2F8 46283400 */  add.d      $f16, $f6, $f8
    /* AB2AC 8009C2FC 4620848D */  trunc.w.d  $f18, $f16
    /* AB2B0 8009C300 44039000 */  mfc1       $v1, $f18
    /* AB2B4 8009C304 00000000 */  nop
    /* AB2B8 8009C308 0003CC00 */  sll        $t9, $v1, 16
    /* AB2BC 8009C30C 14200002 */  bnez       $at, .L8009C318_AB2C8
    /* AB2C0 8009C310 00191C03 */   sra       $v1, $t9, 16
    /* AB2C4 8009C314 24050117 */  addiu      $a1, $zero, 0x117
  .L8009C318_AB2C8:
    /* AB2C8 8009C318 28A1001C */  slti       $at, $a1, 0x1C
    /* AB2CC 8009C31C 50200003 */  beql       $at, $zero, .L8009C32C_AB2DC
    /* AB2D0 8009C320 2861001A */   slti      $at, $v1, 0x1A
    /* AB2D4 8009C324 2405001C */  addiu      $a1, $zero, 0x1C
    /* AB2D8 8009C328 2861001A */  slti       $at, $v1, 0x1A
  .L8009C32C_AB2DC:
    /* AB2DC 8009C32C 50200003 */  beql       $at, $zero, .L8009C33C_AB2EC
    /* AB2E0 8009C330 286100CF */   slti      $at, $v1, 0xCF
    /* AB2E4 8009C334 2403001A */  addiu      $v1, $zero, 0x1A
    /* AB2E8 8009C338 286100CF */  slti       $at, $v1, 0xCF
  .L8009C33C_AB2EC:
    /* AB2EC 8009C33C 54200003 */  bnel       $at, $zero, .L8009C34C_AB2FC
    /* AB2F0 8009C340 A4850000 */   sh        $a1, 0x0($a0)
    /* AB2F4 8009C344 240300CE */  addiu      $v1, $zero, 0xCE
    /* AB2F8 8009C348 A4850000 */  sh         $a1, 0x0($a0)
  .L8009C34C_AB2FC:
    /* AB2FC 8009C34C A4830002 */  sh         $v1, 0x2($a0)
    /* AB300 8009C350 10C00006 */  beqz       $a2, .L8009C36C_AB31C
    /* AB304 8009C354 A48B0004 */   sh        $t3, 0x4($a0)
    /* AB308 8009C358 87AC0036 */  lh         $t4, 0x36($sp)
    /* AB30C 8009C35C A4400000 */  sh         $zero, 0x0($v0)
    /* AB310 8009C360 A4400004 */  sh         $zero, 0x4($v0)
    /* AB314 8009C364 01AC7023 */  subu       $t6, $t5, $t4
    /* AB318 8009C368 A44E0002 */  sh         $t6, 0x2($v0)
  .L8009C36C_AB31C:
    /* AB31C 8009C36C 3C028005 */  lui        $v0, %hi(D_80052B48)
    /* AB320 8009C370 10C00003 */  beqz       $a2, .L8009C380_AB330
    /* AB324 8009C374 24422B48 */   addiu     $v0, $v0, %lo(D_80052B48)
    /* AB328 8009C378 10000002 */  b          .L8009C384_AB334
    /* AB32C 8009C37C 00402825 */   or        $a1, $v0, $zero
  .L8009C380_AB330:
    /* AB330 8009C380 00002825 */  or         $a1, $zero, $zero
  .L8009C384_AB334:
    /* AB334 8009C384 3C088006 */  lui        $t0, %hi(D_8005BB38)
    /* AB338 8009C388 2508BB38 */  addiu      $t0, $t0, %lo(D_8005BB38)
    /* AB33C 8009C38C 3C068014 */  lui        $a2, %hi(D_8013D588)
    /* AB340 8009C390 24C6D588 */  addiu      $a2, $a2, %lo(D_8013D588)
    /* AB344 8009C394 0C000E74 */  jal        func_800039D0_45D0
    /* AB348 8009C398 8D070000 */   lw        $a3, 0x0($t0)
    /* AB34C 8009C39C 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* AB350 8009C3A0 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* AB354 8009C3A4 8C620000 */  lw         $v0, 0x0($v1)
    /* AB358 8009C3A8 3C180106 */  lui        $t8, (0x1060040 >> 16)
    /* AB35C 8009C3AC 3C088006 */  lui        $t0, %hi(D_8005BB38)
    /* AB360 8009C3B0 244F0008 */  addiu      $t7, $v0, 0x8
    /* AB364 8009C3B4 AC6F0000 */  sw         $t7, 0x0($v1)
    /* AB368 8009C3B8 37180040 */  ori        $t8, $t8, (0x1060040 & 0xFFFF)
    /* AB36C 8009C3BC 2508BB38 */  addiu      $t0, $t0, %lo(D_8005BB38)
    /* AB370 8009C3C0 AC580000 */  sw         $t8, 0x0($v0)
    /* AB374 8009C3C4 8D190000 */  lw         $t9, 0x0($t0)
    /* AB378 8009C3C8 3C091FFF */  lui        $t1, (0x1FFFFFFF >> 16)
    /* AB37C 8009C3CC 3529FFFF */  ori        $t1, $t1, (0x1FFFFFFF & 0xFFFF)
    /* AB380 8009C3D0 03295024 */  and        $t2, $t9, $t1
    /* AB384 8009C3D4 AC4A0004 */  sw         $t2, 0x4($v0)
    /* AB388 8009C3D8 8D0B0000 */  lw         $t3, 0x0($t0)
    /* AB38C 8009C3DC 8C620000 */  lw         $v0, 0x0($v1)
    /* AB390 8009C3E0 3C0F8014 */  lui        $t7, %hi(D_8013D5E8)
    /* AB394 8009C3E4 256D0040 */  addiu      $t5, $t3, 0x40
    /* AB398 8009C3E8 244C0008 */  addiu      $t4, $v0, 0x8
    /* AB39C 8009C3EC AD0D0000 */  sw         $t5, 0x0($t0)
    /* AB3A0 8009C3F0 AC6C0000 */  sw         $t4, 0x0($v1)
    /* AB3A4 8009C3F4 25EFD5E8 */  addiu      $t7, $t7, %lo(D_8013D5E8)
    /* AB3A8 8009C3F8 3C0E0400 */  lui        $t6, (0x400103F >> 16)
    /* AB3AC 8009C3FC 35CE103F */  ori        $t6, $t6, (0x400103F & 0xFFFF)
    /* AB3B0 8009C400 01E9C024 */  and        $t8, $t7, $t1
    /* AB3B4 8009C404 AC580004 */  sw         $t8, 0x4($v0)
    /* AB3B8 8009C408 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AB3BC 8009C40C 8C620000 */  lw         $v0, 0x0($v1)
    /* AB3C0 8009C410 3C0B0002 */  lui        $t3, (0x20406 >> 16)
    /* AB3C4 8009C414 3C0AB102 */  lui        $t2, (0xB1020004 >> 16)
    /* AB3C8 8009C418 24590008 */  addiu      $t9, $v0, 0x8
    /* AB3CC 8009C41C AC790000 */  sw         $t9, 0x0($v1)
    /* AB3D0 8009C420 354A0004 */  ori        $t2, $t2, (0xB1020004 & 0xFFFF)
    /* AB3D4 8009C424 356B0406 */  ori        $t3, $t3, (0x20406 & 0xFFFF)
    /* AB3D8 8009C428 AC4B0004 */  sw         $t3, 0x4($v0)
    /* AB3DC 8009C42C AC4A0000 */  sw         $t2, 0x0($v0)
    /* AB3E0 8009C430 8C620000 */  lw         $v0, 0x0($v1)
    /* AB3E4 8009C434 3C0CBD00 */  lui        $t4, (0xBD000000 >> 16)
    /* AB3E8 8009C438 244D0008 */  addiu      $t5, $v0, 0x8
    /* AB3EC 8009C43C AC6D0000 */  sw         $t5, 0x0($v1)
    /* AB3F0 8009C440 AC400004 */  sw         $zero, 0x4($v0)
    /* AB3F4 8009C444 AC4C0000 */  sw         $t4, 0x0($v0)
    /* AB3F8 8009C448 8FBF0014 */  lw         $ra, 0x14($sp)
    /* AB3FC 8009C44C 27BD0038 */  addiu      $sp, $sp, 0x38
    /* AB400 8009C450 03E00008 */  jr         $ra
    /* AB404 8009C454 00000000 */   nop
endlabel func_8009C1D8_AB188
