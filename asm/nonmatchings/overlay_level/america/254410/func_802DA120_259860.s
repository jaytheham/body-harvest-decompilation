nonmatching func_802DA120_259860, 0x400

glabel func_802DA120_259860
    /* 259860 802DA120 27BDFF80 */  addiu      $sp, $sp, -0x80
    /* 259864 802DA124 AFA40080 */  sw         $a0, 0x80($sp)
    /* 259868 802DA128 87AE0082 */  lh         $t6, 0x82($sp)
    /* 25986C 802DA12C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 259870 802DA130 AFB00040 */  sw         $s0, 0x40($sp)
    /* 259874 802DA134 000E7880 */  sll        $t7, $t6, 2
    /* 259878 802DA138 01EE7821 */  addu       $t7, $t7, $t6
    /* 25987C 802DA13C 000F7900 */  sll        $t7, $t7, 4
    /* 259880 802DA140 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 259884 802DA144 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 259888 802DA148 AFA50084 */  sw         $a1, 0x84($sp)
    /* 25988C 802DA14C 01F88021 */  addu       $s0, $t7, $t8
    /* 259890 802DA150 86040000 */  lh         $a0, 0x0($s0)
    /* 259894 802DA154 0C02E134 */  jal        func_800B84D0_C7480
    /* 259898 802DA158 86050004 */   lh        $a1, 0x4($s0)
    /* 25989C 802DA15C 86190002 */  lh         $t9, 0x2($s0)
    /* 2598A0 802DA160 00024203 */  sra        $t0, $v0, 8
    /* 2598A4 802DA164 2509FF38 */  addiu      $t1, $t0, -0xC8
    /* 2598A8 802DA168 0329082A */  slt        $at, $t9, $t1
    /* 2598AC 802DA16C 542000E8 */  bnel       $at, $zero, .L802DA510_259C50
    /* 2598B0 802DA170 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 2598B4 802DA174 860A0048 */  lh         $t2, 0x48($s0)
    /* 2598B8 802DA178 87A40082 */  lh         $a0, 0x82($sp)
    /* 2598BC 802DA17C 514000E4 */  beql       $t2, $zero, .L802DA510_259C50
    /* 2598C0 802DA180 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 2598C4 802DA184 0C04DD1A */  jal        func_80137468_146418
    /* 2598C8 802DA188 2405012E */   addiu     $a1, $zero, 0x12E
    /* 2598CC 802DA18C 86020000 */  lh         $v0, 0x0($s0)
    /* 2598D0 802DA190 86030004 */  lh         $v1, 0x4($s0)
    /* 2598D4 802DA194 44805000 */  mtc1       $zero, $f10
    /* 2598D8 802DA198 04410003 */  bgez       $v0, .L802DA1A8_2598E8
    /* 2598DC 802DA19C 00025883 */   sra       $t3, $v0, 2
    /* 2598E0 802DA1A0 24410003 */  addiu      $at, $v0, 0x3
    /* 2598E4 802DA1A4 00015883 */  sra        $t3, $at, 2
  .L802DA1A8_2598E8:
    /* 2598E8 802DA1A8 3C018004 */  lui        $at, %hi(D_80047954)
    /* 2598EC 802DA1AC C4287954 */  lwc1       $f8, %lo(D_80047954)($at)
    /* 2598F0 802DA1B0 448B2000 */  mtc1       $t3, $f4
    /* 2598F4 802DA1B4 27A4006C */  addiu      $a0, $sp, 0x6C
    /* 2598F8 802DA1B8 27A50068 */  addiu      $a1, $sp, 0x68
    /* 2598FC 802DA1BC 468021A0 */  cvt.s.w    $f6, $f4
    /* 259900 802DA1C0 27A60064 */  addiu      $a2, $sp, 0x64
    /* 259904 802DA1C4 AFA20078 */  sw         $v0, 0x78($sp)
    /* 259908 802DA1C8 AFA30070 */  sw         $v1, 0x70($sp)
    /* 25990C 802DA1CC E7AA0068 */  swc1       $f10, 0x68($sp)
    /* 259910 802DA1D0 46083301 */  sub.s      $f12, $f6, $f8
    /* 259914 802DA1D4 04610003 */  bgez       $v1, .L802DA1E4_259924
    /* 259918 802DA1D8 00036083 */   sra       $t4, $v1, 2
    /* 25991C 802DA1DC 24610003 */  addiu      $at, $v1, 0x3
    /* 259920 802DA1E0 00016083 */  sra        $t4, $at, 2
  .L802DA1E4_259924:
    /* 259924 802DA1E4 448C8000 */  mtc1       $t4, $f16
    /* 259928 802DA1E8 3C018004 */  lui        $at, %hi(D_8004795C)
    /* 25992C 802DA1EC C424795C */  lwc1       $f4, %lo(D_8004795C)($at)
    /* 259930 802DA1F0 468084A0 */  cvt.s.w    $f18, $f16
    /* 259934 802DA1F4 E7AC006C */  swc1       $f12, 0x6C($sp)
    /* 259938 802DA1F8 46049001 */  sub.s      $f0, $f18, $f4
    /* 25993C 802DA1FC 0C00A040 */  jal        guNormalize
    /* 259940 802DA200 E7A00064 */   swc1      $f0, 0x64($sp)
    /* 259944 802DA204 3C014348 */  lui        $at, (0x43480000 >> 16)
    /* 259948 802DA208 44811000 */  mtc1       $at, $f2
    /* 25994C 802DA20C C7AC006C */  lwc1       $f12, 0x6C($sp)
    /* 259950 802DA210 8FA20078 */  lw         $v0, 0x78($sp)
    /* 259954 802DA214 8FA30070 */  lw         $v1, 0x70($sp)
    /* 259958 802DA218 46026302 */  mul.s      $f12, $f12, $f2
    /* 25995C 802DA21C C7A00064 */  lwc1       $f0, 0x64($sp)
    /* 259960 802DA220 44823000 */  mtc1       $v0, $f6
    /* 259964 802DA224 44839000 */  mtc1       $v1, $f18
    /* 259968 802DA228 46020002 */  mul.s      $f0, $f0, $f2
    /* 25996C 802DA22C E7AC006C */  swc1       $f12, 0x6C($sp)
    /* 259970 802DA230 46803220 */  cvt.s.w    $f8, $f6
    /* 259974 802DA234 E7A00064 */  swc1       $f0, 0x64($sp)
    /* 259978 802DA238 46809120 */  cvt.s.w    $f4, $f18
    /* 25997C 802DA23C 460C4281 */  sub.s      $f10, $f8, $f12
    /* 259980 802DA240 46002181 */  sub.s      $f6, $f4, $f0
    /* 259984 802DA244 4600540D */  trunc.w.s  $f16, $f10
    /* 259988 802DA248 4600320D */  trunc.w.s  $f8, $f6
    /* 25998C 802DA24C 44028000 */  mfc1       $v0, $f16
    /* 259990 802DA250 44034000 */  mfc1       $v1, $f8
    /* 259994 802DA254 00022400 */  sll        $a0, $v0, 16
    /* 259998 802DA258 00047C03 */  sra        $t7, $a0, 16
    /* 25999C 802DA25C 00032C00 */  sll        $a1, $v1, 16
    /* 2599A0 802DA260 0005C403 */  sra        $t8, $a1, 16
    /* 2599A4 802DA264 03002825 */  or         $a1, $t8, $zero
    /* 2599A8 802DA268 AFB80050 */  sw         $t8, 0x50($sp)
    /* 2599AC 802DA26C 01E02025 */  or         $a0, $t7, $zero
    /* 2599B0 802DA270 0C02E134 */  jal        func_800B84D0_C7480
    /* 2599B4 802DA274 AFAF0054 */   sw        $t7, 0x54($sp)
    /* 2599B8 802DA278 3C038005 */  lui        $v1, %hi(D_80052A8C)
    /* 2599BC 802DA27C 8C632A8C */  lw         $v1, %lo(D_80052A8C)($v1)
    /* 2599C0 802DA280 24010006 */  addiu      $at, $zero, 0x6
    /* 2599C4 802DA284 00024203 */  sra        $t0, $v0, 8
    /* 2599C8 802DA288 0061001B */  divu       $zero, $v1, $at
    /* 2599CC 802DA28C 25190032 */  addiu      $t9, $t0, 0x32
    /* 2599D0 802DA290 00004810 */  mfhi       $t1
    /* 2599D4 802DA294 AFB90074 */  sw         $t9, 0x74($sp)
    /* 2599D8 802DA298 5520005B */  bnel       $t1, $zero, .L802DA408_259B48
    /* 2599DC 802DA29C 306D0001 */   andi      $t5, $v1, 0x1
    /* 2599E0 802DA2A0 0C000E38 */  jal        func_800038E0_44E0
    /* 2599E4 802DA2A4 00000000 */   nop
    /* 2599E8 802DA2A8 2401001E */  addiu      $at, $zero, 0x1E
    /* 2599EC 802DA2AC 0041001A */  div        $zero, $v0, $at
    /* 2599F0 802DA2B0 8FAC0084 */  lw         $t4, 0x84($sp)
    /* 2599F4 802DA2B4 00001810 */  mfhi       $v1
    /* 2599F8 802DA2B8 00035400 */  sll        $t2, $v1, 16
    /* 2599FC 802DA2BC 000A5C03 */  sra        $t3, $t2, 16
    /* 259A00 802DA2C0 11800029 */  beqz       $t4, .L802DA368_259AA8
    /* 259A04 802DA2C4 01601825 */   or        $v1, $t3, $zero
    /* 259A08 802DA2C8 0C000E38 */  jal        func_800038E0_44E0
    /* 259A0C 802DA2CC A7AB0062 */   sh        $t3, 0x62($sp)
    /* 259A10 802DA2D0 0C000E38 */  jal        func_800038E0_44E0
    /* 259A14 802DA2D4 A7A2005E */   sh        $v0, 0x5E($sp)
    /* 259A18 802DA2D8 97A7005E */  lhu        $a3, 0x5E($sp)
    /* 259A1C 802DA2DC 24010064 */  addiu      $at, $zero, 0x64
    /* 259A20 802DA2E0 87A30062 */  lh         $v1, 0x62($sp)
    /* 259A24 802DA2E4 00E1001A */  div        $zero, $a3, $at
    /* 259A28 802DA2E8 00006810 */  mfhi       $t5
    /* 259A2C 802DA2EC 24010014 */  addiu      $at, $zero, 0x14
    /* 259A30 802DA2F0 25A7012C */  addiu      $a3, $t5, 0x12C
    /* 259A34 802DA2F4 0041001A */  div        $zero, $v0, $at
    /* 259A38 802DA2F8 0000C010 */  mfhi       $t8
    /* 259A3C 802DA2FC 2708000A */  addiu      $t0, $t8, 0xA
    /* 259A40 802DA300 00077400 */  sll        $t6, $a3, 16
    /* 259A44 802DA304 24190032 */  addiu      $t9, $zero, 0x32
    /* 259A48 802DA308 240900C8 */  addiu      $t1, $zero, 0xC8
    /* 259A4C 802DA30C 246A0088 */  addiu      $t2, $v1, 0x88
    /* 259A50 802DA310 246B0067 */  addiu      $t3, $v1, 0x67
    /* 259A54 802DA314 246C0011 */  addiu      $t4, $v1, 0x11
    /* 259A58 802DA318 AFAC0028 */  sw         $t4, 0x28($sp)
    /* 259A5C 802DA31C AFAB0024 */  sw         $t3, 0x24($sp)
    /* 259A60 802DA320 AFAA0020 */  sw         $t2, 0x20($sp)
    /* 259A64 802DA324 AFA9001C */  sw         $t1, 0x1C($sp)
    /* 259A68 802DA328 AFB90018 */  sw         $t9, 0x18($sp)
    /* 259A6C 802DA32C 000E3C03 */  sra        $a3, $t6, 16
    /* 259A70 802DA330 AFA80010 */  sw         $t0, 0x10($sp)
    /* 259A74 802DA334 87A40056 */  lh         $a0, 0x56($sp)
    /* 259A78 802DA338 87A50076 */  lh         $a1, 0x76($sp)
    /* 259A7C 802DA33C 87A60052 */  lh         $a2, 0x52($sp)
    /* 259A80 802DA340 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 259A84 802DA344 AFA00014 */   sw        $zero, 0x14($sp)
    /* 259A88 802DA348 86040000 */  lh         $a0, 0x0($s0)
    /* 259A8C 802DA34C 86050002 */  lh         $a1, 0x2($s0)
    /* 259A90 802DA350 86060004 */  lh         $a2, 0x4($s0)
    /* 259A94 802DA354 0C04D751 */  jal        func_80135D44_144CF4
    /* 259A98 802DA358 3C074040 */   lui       $a3, (0x40400000 >> 16)
    /* 259A9C 802DA35C 3C038005 */  lui        $v1, %hi(D_80052A8C)
    /* 259AA0 802DA360 10000028 */  b          .L802DA404_259B44
    /* 259AA4 802DA364 8C632A8C */   lw        $v1, %lo(D_80052A8C)($v1)
  .L802DA368_259AA8:
    /* 259AA8 802DA368 0C000E38 */  jal        func_800038E0_44E0
    /* 259AAC 802DA36C A7A30062 */   sh        $v1, 0x62($sp)
    /* 259AB0 802DA370 0C000E38 */  jal        func_800038E0_44E0
    /* 259AB4 802DA374 A7A2005E */   sh        $v0, 0x5E($sp)
    /* 259AB8 802DA378 97A7005E */  lhu        $a3, 0x5E($sp)
    /* 259ABC 802DA37C 24010064 */  addiu      $at, $zero, 0x64
    /* 259AC0 802DA380 87A30062 */  lh         $v1, 0x62($sp)
    /* 259AC4 802DA384 00E1001A */  div        $zero, $a3, $at
    /* 259AC8 802DA388 00006810 */  mfhi       $t5
    /* 259ACC 802DA38C 2401000A */  addiu      $at, $zero, 0xA
    /* 259AD0 802DA390 25A7012C */  addiu      $a3, $t5, 0x12C
    /* 259AD4 802DA394 0041001A */  div        $zero, $v0, $at
    /* 259AD8 802DA398 0000C010 */  mfhi       $t8
    /* 259ADC 802DA39C 27080005 */  addiu      $t0, $t8, 0x5
    /* 259AE0 802DA3A0 00077400 */  sll        $t6, $a3, 16
    /* 259AE4 802DA3A4 24190032 */  addiu      $t9, $zero, 0x32
    /* 259AE8 802DA3A8 240900B4 */  addiu      $t1, $zero, 0xB4
    /* 259AEC 802DA3AC 246A0088 */  addiu      $t2, $v1, 0x88
    /* 259AF0 802DA3B0 246B0067 */  addiu      $t3, $v1, 0x67
    /* 259AF4 802DA3B4 246C0011 */  addiu      $t4, $v1, 0x11
    /* 259AF8 802DA3B8 AFAC0028 */  sw         $t4, 0x28($sp)
    /* 259AFC 802DA3BC AFAB0024 */  sw         $t3, 0x24($sp)
    /* 259B00 802DA3C0 AFAA0020 */  sw         $t2, 0x20($sp)
    /* 259B04 802DA3C4 AFA9001C */  sw         $t1, 0x1C($sp)
    /* 259B08 802DA3C8 AFB90018 */  sw         $t9, 0x18($sp)
    /* 259B0C 802DA3CC 000E3C03 */  sra        $a3, $t6, 16
    /* 259B10 802DA3D0 AFA80010 */  sw         $t0, 0x10($sp)
    /* 259B14 802DA3D4 87A40056 */  lh         $a0, 0x56($sp)
    /* 259B18 802DA3D8 87A50076 */  lh         $a1, 0x76($sp)
    /* 259B1C 802DA3DC 87A60052 */  lh         $a2, 0x52($sp)
    /* 259B20 802DA3E0 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 259B24 802DA3E4 AFA00014 */   sw        $zero, 0x14($sp)
    /* 259B28 802DA3E8 86040000 */  lh         $a0, 0x0($s0)
    /* 259B2C 802DA3EC 86050002 */  lh         $a1, 0x2($s0)
    /* 259B30 802DA3F0 86060004 */  lh         $a2, 0x4($s0)
    /* 259B34 802DA3F4 0C04D751 */  jal        func_80135D44_144CF4
    /* 259B38 802DA3F8 3C074000 */   lui       $a3, (0x40000000 >> 16)
    /* 259B3C 802DA3FC 3C038005 */  lui        $v1, %hi(D_80052A8C)
    /* 259B40 802DA400 8C632A8C */  lw         $v1, %lo(D_80052A8C)($v1)
  .L802DA404_259B44:
    /* 259B44 802DA404 306D0001 */  andi       $t5, $v1, 0x1
  .L802DA408_259B48:
    /* 259B48 802DA408 15A00040 */  bnez       $t5, .L802DA50C_259C4C
    /* 259B4C 802DA40C 8FAE0084 */   lw        $t6, 0x84($sp)
    /* 259B50 802DA410 11C0003E */  beqz       $t6, .L802DA50C_259C4C
    /* 259B54 802DA414 87B80076 */   lh        $t8, 0x76($sp)
    /* 259B58 802DA418 86040006 */  lh         $a0, 0x6($s0)
    /* 259B5C 802DA41C AFB8004C */  sw         $t8, 0x4C($sp)
    /* 259B60 802DA420 24844000 */  addiu      $a0, $a0, 0x4000
    /* 259B64 802DA424 308FFFFF */  andi       $t7, $a0, 0xFFFF
    /* 259B68 802DA428 0C007660 */  jal        sins
    /* 259B6C 802DA42C 01E02025 */   or        $a0, $t7, $zero
    /* 259B70 802DA430 44825000 */  mtc1       $v0, $f10
    /* 259B74 802DA434 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 259B78 802DA438 44812800 */  mtc1       $at, $f5
    /* 259B7C 802DA43C 46805420 */  cvt.s.w    $f16, $f10
    /* 259B80 802DA440 44802000 */  mtc1       $zero, $f4
    /* 259B84 802DA444 86040006 */  lh         $a0, 0x6($s0)
    /* 259B88 802DA448 24844000 */  addiu      $a0, $a0, 0x4000
    /* 259B8C 802DA44C 460084A1 */  cvt.d.s    $f18, $f16
    /* 259B90 802DA450 3088FFFF */  andi       $t0, $a0, 0xFFFF
    /* 259B94 802DA454 46249183 */  div.d      $f6, $f18, $f4
    /* 259B98 802DA458 01002025 */  or         $a0, $t0, $zero
    /* 259B9C 802DA45C 46203320 */  cvt.s.d    $f12, $f6
    /* 259BA0 802DA460 0C007654 */  jal        coss
    /* 259BA4 802DA464 E7AC006C */   swc1      $f12, 0x6C($sp)
    /* 259BA8 802DA468 44824000 */  mtc1       $v0, $f8
    /* 259BAC 802DA46C 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
    /* 259BB0 802DA470 44811000 */  mtc1       $at, $f2
    /* 259BB4 802DA474 468042A0 */  cvt.s.w    $f10, $f8
    /* 259BB8 802DA478 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 259BBC 802DA47C 44819800 */  mtc1       $at, $f19
    /* 259BC0 802DA480 44809000 */  mtc1       $zero, $f18
    /* 259BC4 802DA484 C7AC006C */  lwc1       $f12, 0x6C($sp)
    /* 259BC8 802DA488 240B007F */  addiu      $t3, $zero, 0x7F
    /* 259BCC 802DA48C 46005421 */  cvt.d.s    $f16, $f10
    /* 259BD0 802DA490 46026202 */  mul.s      $f8, $f12, $f2
    /* 259BD4 802DA494 46328103 */  div.d      $f4, $f16, $f18
    /* 259BD8 802DA498 240E0064 */  addiu      $t6, $zero, 0x64
    /* 259BDC 802DA49C 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 259BE0 802DA4A0 24180050 */  addiu      $t8, $zero, 0x50
    /* 259BE4 802DA4A4 24080014 */  addiu      $t0, $zero, 0x14
    /* 259BE8 802DA4A8 2419006A */  addiu      $t9, $zero, 0x6A
    /* 259BEC 802DA4AC 4600428D */  trunc.w.s  $f10, $f8
    /* 259BF0 802DA4B0 AFB90028 */  sw         $t9, 0x28($sp)
    /* 259BF4 802DA4B4 AFA80024 */  sw         $t0, 0x24($sp)
    /* 259BF8 802DA4B8 AFB80020 */  sw         $t8, 0x20($sp)
    /* 259BFC 802DA4BC 44075000 */  mfc1       $a3, $f10
    /* 259C00 802DA4C0 AFAF001C */  sw         $t7, 0x1C($sp)
    /* 259C04 802DA4C4 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 259C08 802DA4C8 00074E00 */  sll        $t1, $a3, 24
    /* 259C0C 802DA4CC 00093E03 */  sra        $a3, $t1, 24
    /* 259C10 802DA4D0 24090053 */  addiu      $t1, $zero, 0x53
    /* 259C14 802DA4D4 AFA9002C */  sw         $t1, 0x2C($sp)
    /* 259C18 802DA4D8 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 259C1C 802DA4DC 87A40056 */  lh         $a0, 0x56($sp)
    /* 259C20 802DA4E0 87A5004E */  lh         $a1, 0x4E($sp)
    /* 259C24 802DA4E4 87A60052 */  lh         $a2, 0x52($sp)
    /* 259C28 802DA4E8 AFA00030 */  sw         $zero, 0x30($sp)
    /* 259C2C 802DA4EC 46202187 */  neg.d      $f6, $f4
    /* 259C30 802DA4F0 46203020 */  cvt.s.d    $f0, $f6
    /* 259C34 802DA4F4 46020402 */  mul.s      $f16, $f0, $f2
    /* 259C38 802DA4F8 E7A00064 */  swc1       $f0, 0x64($sp)
    /* 259C3C 802DA4FC 4600848D */  trunc.w.s  $f18, $f16
    /* 259C40 802DA500 440D9000 */  mfc1       $t5, $f18
    /* 259C44 802DA504 0C031507 */  jal        func_800C541C_D43CC
    /* 259C48 802DA508 AFAD0014 */   sw        $t5, 0x14($sp)
  .L802DA50C_259C4C:
    /* 259C4C 802DA50C 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802DA510_259C50:
    /* 259C50 802DA510 8FB00040 */  lw         $s0, 0x40($sp)
    /* 259C54 802DA514 27BD0080 */  addiu      $sp, $sp, 0x80
    /* 259C58 802DA518 03E00008 */  jr         $ra
    /* 259C5C 802DA51C 00000000 */   nop
endlabel func_802DA120_259860
