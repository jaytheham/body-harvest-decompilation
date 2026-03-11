nonmatching func_800EC0D0_FB080, 0x260

glabel func_800EC0D0_FB080
    /* FB080 800EC0D0 3C088015 */  lui        $t0, %hi(D_801575E0)
    /* FB084 800EC0D4 240E0001 */  addiu      $t6, $zero, 0x1
    /* FB088 800EC0D8 3C018005 */  lui        $at, %hi(D_80048188)
    /* FB08C 800EC0DC 250875E0 */  addiu      $t0, $t0, %lo(D_801575E0)
    /* FB090 800EC0E0 AC2E8188 */  sw         $t6, %lo(D_80048188)($at)
    /* FB094 800EC0E4 24020002 */  addiu      $v0, $zero, 0x2
    /* FB098 800EC0E8 A5020000 */  sh         $v0, 0x0($t0)
    /* FB09C 800EC0EC A5000004 */  sh         $zero, 0x4($t0)
    /* FB0A0 800EC0F0 A5020002 */  sh         $v0, 0x2($t0)
    /* FB0A4 800EC0F4 3C0F8015 */  lui        $t7, %hi(D_80157F68)
    /* FB0A8 800EC0F8 85EF7F68 */  lh         $t7, %lo(D_80157F68)($t7)
    /* FB0AC 800EC0FC 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* FB0B0 800EC100 AFBF001C */  sw         $ra, 0x1C($sp)
    /* FB0B4 800EC104 1DE00086 */  bgtz       $t7, .L800EC320_FB2D0
    /* FB0B8 800EC108 AFA40050 */   sw        $a0, 0x50($sp)
    /* FB0BC 800EC10C 3C048005 */  lui        $a0, %hi(D_80052542)
    /* FB0C0 800EC110 3C058005 */  lui        $a1, %hi(D_80052546)
    /* FB0C4 800EC114 84A52546 */  lh         $a1, %lo(D_80052546)($a1)
    /* FB0C8 800EC118 0C045931 */  jal        func_801164C4_125474
    /* FB0CC 800EC11C 84842542 */   lh        $a0, %lo(D_80052542)($a0)
    /* FB0D0 800EC120 90580008 */  lbu        $t8, 0x8($v0)
    /* FB0D4 800EC124 3C098015 */  lui        $t1, %hi(D_80148390)
    /* FB0D8 800EC128 25298390 */  addiu      $t1, $t1, %lo(D_80148390)
    /* FB0DC 800EC12C 0018C880 */  sll        $t9, $t8, 2
    /* FB0E0 800EC130 0338C823 */  subu       $t9, $t9, $t8
    /* FB0E4 800EC134 0019C8C0 */  sll        $t9, $t9, 3
    /* FB0E8 800EC138 03291821 */  addu       $v1, $t9, $t1
    /* FB0EC 800EC13C 8C6A0000 */  lw         $t2, 0x0($v1)
    /* FB0F0 800EC140 3C088015 */  lui        $t0, %hi(D_801575E0)
    /* FB0F4 800EC144 250875E0 */  addiu      $t0, $t0, %lo(D_801575E0)
    /* FB0F8 800EC148 1540000B */  bnez       $t2, .L800EC178_FB128
    /* FB0FC 800EC14C 3C048005 */   lui       $a0, %hi(D_80052543)
    /* FB100 800EC150 3C0B8015 */  lui        $t3, %hi(D_80157F68)
    /* FB104 800EC154 856B7F68 */  lh         $t3, %lo(D_80157F68)($t3)
    /* FB108 800EC158 240C0006 */  addiu      $t4, $zero, 0x6
    /* FB10C 800EC15C 3C018005 */  lui        $at, %hi(gameplayMode)
    /* FB110 800EC160 5D600070 */  bgtzl      $t3, .L800EC324_FB2D4
    /* FB114 800EC164 8FBF001C */   lw        $ra, 0x1C($sp)
    /* FB118 800EC168 AC2C2ADC */  sw         $t4, %lo(gameplayMode)($at)
    /* FB11C 800EC16C 3C018005 */  lui        $at, %hi(D_80048188)
    /* FB120 800EC170 1000006B */  b          .L800EC320_FB2D0
    /* FB124 800EC174 AC208188 */   sw        $zero, %lo(D_80048188)($at)
  .L800EC178_FB128:
    /* FB128 800EC178 846D0012 */  lh         $t5, 0x12($v1)
    /* FB12C 800EC17C 24010003 */  addiu      $at, $zero, 0x3
    /* FB130 800EC180 3C058005 */  lui        $a1, %hi(D_80052547)
    /* FB134 800EC184 15A10004 */  bne        $t5, $at, .L800EC198_FB148
    /* FB138 800EC188 27A60046 */   addiu     $a2, $sp, 0x46
    /* FB13C 800EC18C 240E0037 */  addiu      $t6, $zero, 0x37
    /* FB140 800EC190 10000003 */  b          .L800EC1A0_FB150
    /* FB144 800EC194 A50E0016 */   sh        $t6, 0x16($t0)
  .L800EC198_FB148:
    /* FB148 800EC198 240F0036 */  addiu      $t7, $zero, 0x36
    /* FB14C 800EC19C A50F0016 */  sh         $t7, 0x16($t0)
  .L800EC1A0_FB150:
    /* FB150 800EC1A0 27B80042 */  addiu      $t8, $sp, 0x42
    /* FB154 800EC1A4 27B90040 */  addiu      $t9, $sp, 0x40
    /* FB158 800EC1A8 AFB90014 */  sw         $t9, 0x14($sp)
    /* FB15C 800EC1AC AFB80010 */  sw         $t8, 0x10($sp)
    /* FB160 800EC1B0 90842543 */  lbu        $a0, %lo(D_80052543)($a0)
    /* FB164 800EC1B4 90A52547 */  lbu        $a1, %lo(D_80052547)($a1)
    /* FB168 800EC1B8 0C04597F */  jal        func_801165FC_1255AC
    /* FB16C 800EC1BC 27A70044 */   addiu     $a3, $sp, 0x44
    /* FB170 800EC1C0 87A90040 */  lh         $t1, 0x40($sp)
    /* FB174 800EC1C4 3C018014 */  lui        $at, %hi(D_80144470)
    /* FB178 800EC1C8 D42A4470 */  ldc1       $f10, %lo(D_80144470)($at)
    /* FB17C 800EC1CC 44892000 */  mtc1       $t1, $f4
    /* FB180 800EC1D0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* FB184 800EC1D4 44819800 */  mtc1       $at, $f19
    /* FB188 800EC1D8 468021A0 */  cvt.s.w    $f6, $f4
    /* FB18C 800EC1DC 44809000 */  mtc1       $zero, $f18
    /* FB190 800EC1E0 3C088015 */  lui        $t0, %hi(D_801575E0)
    /* FB194 800EC1E4 2401FEF2 */  addiu      $at, $zero, -0x10E
    /* FB198 800EC1E8 250875E0 */  addiu      $t0, $t0, %lo(D_801575E0)
    /* FB19C 800EC1EC 46003221 */  cvt.d.s    $f8, $f6
    /* FB1A0 800EC1F0 462A4402 */  mul.d      $f16, $f8, $f10
    /* FB1A4 800EC1F4 46328103 */  div.d      $f4, $f16, $f18
    /* FB1A8 800EC1F8 4620218D */  trunc.w.d  $f6, $f4
    /* FB1AC 800EC1FC 44033000 */  mfc1       $v1, $f6
    /* FB1B0 800EC200 00000000 */  nop
    /* FB1B4 800EC204 10610020 */  beq        $v1, $at, .L800EC288_FB238
    /* FB1B8 800EC208 00602825 */   or        $a1, $v1, $zero
    /* FB1BC 800EC20C 2401FF4C */  addiu      $at, $zero, -0xB4
    /* FB1C0 800EC210 10610024 */  beq        $v1, $at, .L800EC2A4_FB254
    /* FB1C4 800EC214 240DC000 */   addiu     $t5, $zero, -0x4000
    /* FB1C8 800EC218 2401FFA6 */  addiu      $at, $zero, -0x5A
    /* FB1CC 800EC21C 10610013 */  beq        $v1, $at, .L800EC26C_FB21C
    /* FB1D0 800EC220 240C8000 */   addiu     $t4, $zero, -0x8000
    /* FB1D4 800EC224 10600009 */  beqz       $v1, .L800EC24C_FB1FC
    /* FB1D8 800EC228 2401005A */   addiu     $at, $zero, 0x5A
    /* FB1DC 800EC22C 10610016 */  beq        $v1, $at, .L800EC288_FB238
    /* FB1E0 800EC230 240100B4 */   addiu     $at, $zero, 0xB4
    /* FB1E4 800EC234 1061001B */  beq        $v1, $at, .L800EC2A4_FB254
    /* FB1E8 800EC238 2401010E */   addiu     $at, $zero, 0x10E
    /* FB1EC 800EC23C 1061000B */  beq        $v1, $at, .L800EC26C_FB21C
    /* FB1F0 800EC240 24010168 */   addiu     $at, $zero, 0x168
    /* FB1F4 800EC244 1461001E */  bne        $v1, $at, .L800EC2C0_FB270
    /* FB1F8 800EC248 3C048014 */   lui       $a0, %hi(D_80144354)
  .L800EC24C_FB1FC:
    /* FB1FC 800EC24C 3C01C296 */  lui        $at, (0xC2960000 >> 16)
    /* FB200 800EC250 44804000 */  mtc1       $zero, $f8
    /* FB204 800EC254 44815000 */  mtc1       $at, $f10
    /* FB208 800EC258 240B4000 */  addiu      $t3, $zero, 0x4000
    /* FB20C 800EC25C A7AB003A */  sh         $t3, 0x3A($sp)
    /* FB210 800EC260 E7A8002C */  swc1       $f8, 0x2C($sp)
    /* FB214 800EC264 1000001A */  b          .L800EC2D0_FB280
    /* FB218 800EC268 E7AA0028 */   swc1      $f10, 0x28($sp)
  .L800EC26C_FB21C:
    /* FB21C 800EC26C 3C014296 */  lui        $at, (0x42960000 >> 16)
    /* FB220 800EC270 44818000 */  mtc1       $at, $f16
    /* FB224 800EC274 44809000 */  mtc1       $zero, $f18
    /* FB228 800EC278 A7AC003A */  sh         $t4, 0x3A($sp)
    /* FB22C 800EC27C E7B0002C */  swc1       $f16, 0x2C($sp)
    /* FB230 800EC280 10000013 */  b          .L800EC2D0_FB280
    /* FB234 800EC284 E7B20028 */   swc1      $f18, 0x28($sp)
  .L800EC288_FB238:
    /* FB238 800EC288 3C01C296 */  lui        $at, (0xC2960000 >> 16)
    /* FB23C 800EC28C 44812000 */  mtc1       $at, $f4
    /* FB240 800EC290 44803000 */  mtc1       $zero, $f6
    /* FB244 800EC294 A7A0003A */  sh         $zero, 0x3A($sp)
    /* FB248 800EC298 E7A4002C */  swc1       $f4, 0x2C($sp)
    /* FB24C 800EC29C 1000000C */  b          .L800EC2D0_FB280
    /* FB250 800EC2A0 E7A60028 */   swc1      $f6, 0x28($sp)
  .L800EC2A4_FB254:
    /* FB254 800EC2A4 3C014296 */  lui        $at, (0x42960000 >> 16)
    /* FB258 800EC2A8 44804000 */  mtc1       $zero, $f8
    /* FB25C 800EC2AC 44815000 */  mtc1       $at, $f10
    /* FB260 800EC2B0 A7AD003A */  sh         $t5, 0x3A($sp)
    /* FB264 800EC2B4 E7A8002C */  swc1       $f8, 0x2C($sp)
    /* FB268 800EC2B8 10000005 */  b          .L800EC2D0_FB280
    /* FB26C 800EC2BC E7AA0028 */   swc1      $f10, 0x28($sp)
  .L800EC2C0_FB270:
    /* FB270 800EC2C0 0C00731B */  jal        osSyncPrintf
    /* FB274 800EC2C4 24844354 */   addiu     $a0, $a0, %lo(D_80144354)
    /* FB278 800EC2C8 3C088015 */  lui        $t0, %hi(D_801575E0)
    /* FB27C 800EC2CC 250875E0 */  addiu      $t0, $t0, %lo(D_801575E0)
  .L800EC2D0_FB280:
    /* FB280 800EC2D0 C7B0002C */  lwc1       $f16, 0x2C($sp)
    /* FB284 800EC2D4 C7A40028 */  lwc1       $f4, 0x28($sp)
    /* FB288 800EC2D8 87AE0046 */  lh         $t6, 0x46($sp)
    /* FB28C 800EC2DC 4600848D */  trunc.w.s  $f18, $f16
    /* FB290 800EC2E0 87AA0042 */  lh         $t2, 0x42($sp)
    /* FB294 800EC2E4 87A90044 */  lh         $t1, 0x44($sp)
    /* FB298 800EC2E8 4600218D */  trunc.w.s  $f6, $f4
    /* FB29C 800EC2EC 44189000 */  mfc1       $t8, $f18
    /* FB2A0 800EC2F0 87AF003A */  lh         $t7, 0x3A($sp)
    /* FB2A4 800EC2F4 24027FFF */  addiu      $v0, $zero, 0x7FFF
    /* FB2A8 800EC2F8 440C3000 */  mfc1       $t4, $f6
    /* FB2AC 800EC2FC 01D8C821 */  addu       $t9, $t6, $t8
    /* FB2B0 800EC300 A5190006 */  sh         $t9, 0x6($t0)
    /* FB2B4 800EC304 014C6821 */  addu       $t5, $t2, $t4
    /* FB2B8 800EC308 A50D000E */  sh         $t5, 0xE($t0)
    /* FB2BC 800EC30C A5020008 */  sh         $v0, 0x8($t0)
    /* FB2C0 800EC310 A502000C */  sh         $v0, 0xC($t0)
    /* FB2C4 800EC314 A5020010 */  sh         $v0, 0x10($t0)
    /* FB2C8 800EC318 A509000A */  sh         $t1, 0xA($t0)
    /* FB2CC 800EC31C A50F0012 */  sh         $t7, 0x12($t0)
  .L800EC320_FB2D0:
    /* FB2D0 800EC320 8FBF001C */  lw         $ra, 0x1C($sp)
  .L800EC324_FB2D4:
    /* FB2D4 800EC324 27BD0050 */  addiu      $sp, $sp, 0x50
    /* FB2D8 800EC328 03E00008 */  jr         $ra
    /* FB2DC 800EC32C 00000000 */   nop
endlabel func_800EC0D0_FB080
