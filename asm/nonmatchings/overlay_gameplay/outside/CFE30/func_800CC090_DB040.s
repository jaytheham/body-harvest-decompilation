nonmatching func_800CC090_DB040, 0x720

glabel func_800CC090_DB040
    /* DB040 800CC090 27BDFF18 */  addiu      $sp, $sp, -0xE8
    /* DB044 800CC094 AFB20060 */  sw         $s2, 0x60($sp)
    /* DB048 800CC098 3C128006 */  lui        $s2, %hi(D_8005BB2C)
    /* DB04C 800CC09C 2652BB2C */  addiu      $s2, $s2, %lo(D_8005BB2C)
    /* DB050 800CC0A0 8E430000 */  lw         $v1, 0x0($s2)
    /* DB054 800CC0A4 3C048015 */  lui        $a0, %hi(D_8015423A)
    /* DB058 800CC0A8 8484423A */  lh         $a0, %lo(D_8015423A)($a0)
    /* DB05C 800CC0AC 246E0008 */  addiu      $t6, $v1, 0x8
    /* DB060 800CC0B0 AFBF007C */  sw         $ra, 0x7C($sp)
    /* DB064 800CC0B4 AFBE0078 */  sw         $fp, 0x78($sp)
    /* DB068 800CC0B8 AFB70074 */  sw         $s7, 0x74($sp)
    /* DB06C 800CC0BC AFB60070 */  sw         $s6, 0x70($sp)
    /* DB070 800CC0C0 AFB5006C */  sw         $s5, 0x6C($sp)
    /* DB074 800CC0C4 AFB40068 */  sw         $s4, 0x68($sp)
    /* DB078 800CC0C8 AFB30064 */  sw         $s3, 0x64($sp)
    /* DB07C 800CC0CC AFB1005C */  sw         $s1, 0x5C($sp)
    /* DB080 800CC0D0 AFB00058 */  sw         $s0, 0x58($sp)
    /* DB084 800CC0D4 F7BE0050 */  sdc1       $f30, 0x50($sp)
    /* DB088 800CC0D8 F7BC0048 */  sdc1       $f28, 0x48($sp)
    /* DB08C 800CC0DC F7BA0040 */  sdc1       $f26, 0x40($sp)
    /* DB090 800CC0E0 F7B80038 */  sdc1       $f24, 0x38($sp)
    /* DB094 800CC0E4 F7B60030 */  sdc1       $f22, 0x30($sp)
    /* DB098 800CC0E8 F7B40028 */  sdc1       $f20, 0x28($sp)
    /* DB09C 800CC0EC AE4E0000 */  sw         $t6, 0x0($s2)
    /* DB0A0 800CC0F0 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
    /* DB0A4 800CC0F4 AC6D0000 */  sw         $t5, 0x0($v1)
    /* DB0A8 800CC0F8 AC600004 */  sw         $zero, 0x4($v1)
    /* DB0AC 800CC0FC 8E430000 */  lw         $v1, 0x0($s2)
    /* DB0B0 800CC100 3C18FCFF */  lui        $t8, (0xFCFF99FF >> 16)
    /* DB0B4 800CC104 3C19FF32 */  lui        $t9, (0xFF327F3F >> 16)
    /* DB0B8 800CC108 246F0008 */  addiu      $t7, $v1, 0x8
    /* DB0BC 800CC10C AE4F0000 */  sw         $t7, 0x0($s2)
    /* DB0C0 800CC110 37397F3F */  ori        $t9, $t9, (0xFF327F3F & 0xFFFF)
    /* DB0C4 800CC114 371899FF */  ori        $t8, $t8, (0xFCFF99FF & 0xFFFF)
    /* DB0C8 800CC118 AC780000 */  sw         $t8, 0x0($v1)
    /* DB0CC 800CC11C AC790004 */  sw         $t9, 0x4($v1)
    /* DB0D0 800CC120 8E430000 */  lw         $v1, 0x0($s2)
    /* DB0D4 800CC124 3C180101 */  lui        $t8, %hi(D_100BCF0)
    /* DB0D8 800CC128 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* DB0DC 800CC12C 246E0008 */  addiu      $t6, $v1, 0x8
    /* DB0E0 800CC130 AE4E0000 */  sw         $t6, 0x0($s2)
    /* DB0E4 800CC134 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* DB0E8 800CC138 2718BCF0 */  addiu      $t8, $t8, %lo(D_100BCF0)
    /* DB0EC 800CC13C 0301C824 */  and        $t9, $t8, $at
    /* DB0F0 800CC140 3C0FFD90 */  lui        $t7, (0xFD900000 >> 16)
    /* DB0F4 800CC144 AC6F0000 */  sw         $t7, 0x0($v1)
    /* DB0F8 800CC148 AC790004 */  sw         $t9, 0x4($v1)
    /* DB0FC 800CC14C 8E430000 */  lw         $v1, 0x0($s2)
    /* DB100 800CC150 3C180708 */  lui        $t8, (0x7080200 >> 16)
    /* DB104 800CC154 37180200 */  ori        $t8, $t8, (0x7080200 & 0xFFFF)
    /* DB108 800CC158 246E0008 */  addiu      $t6, $v1, 0x8
    /* DB10C 800CC15C AE4E0000 */  sw         $t6, 0x0($s2)
    /* DB110 800CC160 3C0FF590 */  lui        $t7, (0xF5900000 >> 16)
    /* DB114 800CC164 AC6F0000 */  sw         $t7, 0x0($v1)
    /* DB118 800CC168 AC780004 */  sw         $t8, 0x4($v1)
    /* DB11C 800CC16C 8E430000 */  lw         $v1, 0x0($s2)
    /* DB120 800CC170 3C0EE600 */  lui        $t6, (0xE6000000 >> 16)
    /* DB124 800CC174 3C18F300 */  lui        $t8, (0xF3000000 >> 16)
    /* DB128 800CC178 24790008 */  addiu      $t9, $v1, 0x8
    /* DB12C 800CC17C AE590000 */  sw         $t9, 0x0($s2)
    /* DB130 800CC180 AC600004 */  sw         $zero, 0x4($v1)
    /* DB134 800CC184 AC6E0000 */  sw         $t6, 0x0($v1)
    /* DB138 800CC188 8E430000 */  lw         $v1, 0x0($s2)
    /* DB13C 800CC18C 3C190700 */  lui        $t9, (0x7007400 >> 16)
    /* DB140 800CC190 37397400 */  ori        $t9, $t9, (0x7007400 & 0xFFFF)
    /* DB144 800CC194 246F0008 */  addiu      $t7, $v1, 0x8
    /* DB148 800CC198 AE4F0000 */  sw         $t7, 0x0($s2)
    /* DB14C 800CC19C AC790004 */  sw         $t9, 0x4($v1)
    /* DB150 800CC1A0 AC780000 */  sw         $t8, 0x0($v1)
    /* DB154 800CC1A4 8E430000 */  lw         $v1, 0x0($s2)
    /* DB158 800CC1A8 3C18F580 */  lui        $t8, (0xF5800400 >> 16)
    /* DB15C 800CC1AC 3C190008 */  lui        $t9, (0x80200 >> 16)
    /* DB160 800CC1B0 246E0008 */  addiu      $t6, $v1, 0x8
    /* DB164 800CC1B4 AE4E0000 */  sw         $t6, 0x0($s2)
    /* DB168 800CC1B8 AC600004 */  sw         $zero, 0x4($v1)
    /* DB16C 800CC1BC AC6D0000 */  sw         $t5, 0x0($v1)
    /* DB170 800CC1C0 8E430000 */  lw         $v1, 0x0($s2)
    /* DB174 800CC1C4 37390200 */  ori        $t9, $t9, (0x80200 & 0xFFFF)
    /* DB178 800CC1C8 37180400 */  ori        $t8, $t8, (0xF5800400 & 0xFFFF)
    /* DB17C 800CC1CC 246F0008 */  addiu      $t7, $v1, 0x8
    /* DB180 800CC1D0 AE4F0000 */  sw         $t7, 0x0($s2)
    /* DB184 800CC1D4 AC790004 */  sw         $t9, 0x4($v1)
    /* DB188 800CC1D8 AC780000 */  sw         $t8, 0x0($v1)
    /* DB18C 800CC1DC 8E430000 */  lw         $v1, 0x0($s2)
    /* DB190 800CC1E0 3C180007 */  lui        $t8, (0x7C000 >> 16)
    /* DB194 800CC1E4 3718C000 */  ori        $t8, $t8, (0x7C000 & 0xFFFF)
    /* DB198 800CC1E8 246E0008 */  addiu      $t6, $v1, 0x8
    /* DB19C 800CC1EC AE4E0000 */  sw         $t6, 0x0($s2)
    /* DB1A0 800CC1F0 3C0FF200 */  lui        $t7, (0xF2000000 >> 16)
    /* DB1A4 800CC1F4 2401FFFB */  addiu      $at, $zero, -0x5
    /* DB1A8 800CC1F8 AC6F0000 */  sw         $t7, 0x0($v1)
    /* DB1AC 800CC1FC 10810152 */  beq        $a0, $at, .L800CC748_DB6F8
    /* DB1B0 800CC200 AC780004 */   sw        $t8, 0x4($v1)
    /* DB1B4 800CC204 2401FFFA */  addiu      $at, $zero, -0x6
    /* DB1B8 800CC208 1081014F */  beq        $a0, $at, .L800CC748_DB6F8
    /* DB1BC 800CC20C 3C1E0400 */   lui       $fp, (0x400103F >> 16)
    /* DB1C0 800CC210 3C014020 */  lui        $at, (0x40200000 >> 16)
    /* DB1C4 800CC214 4481F000 */  mtc1       $at, $f30
    /* DB1C8 800CC218 3C0141C8 */  lui        $at, (0x41C80000 >> 16)
    /* DB1CC 800CC21C 4481E000 */  mtc1       $at, $f28
    /* DB1D0 800CC220 3C018014 */  lui        $at, %hi(D_80144000)
    /* DB1D4 800CC224 C43A4000 */  lwc1       $f26, %lo(D_80144000)($at)
    /* DB1D8 800CC228 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
    /* DB1DC 800CC22C 4481C000 */  mtc1       $at, $f24
    /* DB1E0 800CC230 3C018014 */  lui        $at, %hi(D_80144004)
    /* DB1E4 800CC234 3C168015 */  lui        $s6, %hi(D_80154318)
    /* DB1E8 800CC238 3C138015 */  lui        $s3, %hi(D_80153AB8)
    /* DB1EC 800CC23C 3C108006 */  lui        $s0, %hi(D_8005BB34)
    /* DB1F0 800CC240 2610BB34 */  addiu      $s0, $s0, %lo(D_8005BB34)
    /* DB1F4 800CC244 26733AB8 */  addiu      $s3, $s3, %lo(D_80153AB8)
    /* DB1F8 800CC248 26D64318 */  addiu      $s6, $s6, %lo(D_80154318)
    /* DB1FC 800CC24C C4364004 */  lwc1       $f22, %lo(D_80144004)($at)
    /* DB200 800CC250 37DE103F */  ori        $fp, $fp, (0x400103F & 0xFFFF)
    /* DB204 800CC254 2417001C */  addiu      $s7, $zero, 0x1C
    /* DB208 800CC258 24150040 */  addiu      $s5, $zero, 0x40
    /* DB20C 800CC25C 24140800 */  addiu      $s4, $zero, 0x800
  .L800CC260_DB210:
    /* DB210 800CC260 00970019 */  multu      $a0, $s7
    /* DB214 800CC264 8E430000 */  lw         $v1, 0x0($s2)
    /* DB218 800CC268 27A400C4 */  addiu      $a0, $sp, 0xC4
    /* DB21C 800CC26C 2405001E */  addiu      $a1, $zero, 0x1E
    /* DB220 800CC270 24790008 */  addiu      $t9, $v1, 0x8
    /* DB224 800CC274 AE590000 */  sw         $t9, 0x0($s2)
    /* DB228 800CC278 AC600004 */  sw         $zero, 0x4($v1)
    /* DB22C 800CC27C AC6D0000 */  sw         $t5, 0x0($v1)
    /* DB230 800CC280 240601F4 */  addiu      $a2, $zero, 0x1F4
    /* DB234 800CC284 240700FF */  addiu      $a3, $zero, 0xFF
    /* DB238 800CC288 00007012 */  mflo       $t6
    /* DB23C 800CC28C 02CE8821 */  addu       $s1, $s6, $t6
    /* DB240 800CC290 822F0013 */  lb         $t7, 0x13($s1)
    /* DB244 800CC294 29E10014 */  slti       $at, $t7, 0x14
    /* DB248 800CC298 50200013 */  beql       $at, $zero, .L800CC2E8_DB298
    /* DB24C 800CC29C 86220002 */   lh        $v0, 0x2($s1)
    /* DB250 800CC2A0 86220002 */  lh         $v0, 0x2($s1)
    /* DB254 800CC2A4 04400003 */  bltz       $v0, .L800CC2B4_DB264
    /* DB258 800CC2A8 00021823 */   negu      $v1, $v0
    /* DB25C 800CC2AC 10000001 */  b          .L800CC2B4_DB264
    /* DB260 800CC2B0 00401825 */   or        $v1, $v0, $zero
  .L800CC2B4_DB264:
    /* DB264 800CC2B4 26220008 */  addiu      $v0, $s1, 0x8
    /* DB268 800CC2B8 8058000B */  lb         $t8, 0xB($v0)
    /* DB26C 800CC2BC 44832000 */  mtc1       $v1, $f4
    /* DB270 800CC2C0 44984000 */  mtc1       $t8, $f8
    /* DB274 800CC2C4 468021A0 */  cvt.s.w    $f6, $f4
    /* DB278 800CC2C8 468042A0 */  cvt.s.w    $f10, $f8
    /* DB27C 800CC2CC 46185103 */  div.s      $f4, $f10, $f24
    /* DB280 800CC2D0 46043202 */  mul.s      $f8, $f6, $f4
    /* DB284 800CC2D4 00000000 */  nop
    /* DB288 800CC2D8 461A4002 */  mul.s      $f0, $f8, $f26
    /* DB28C 800CC2DC 10000010 */  b          .L800CC320_DB2D0
    /* DB290 800CC2E0 00000000 */   nop
    /* DB294 800CC2E4 86220002 */  lh         $v0, 0x2($s1)
  .L800CC2E8_DB298:
    /* DB298 800CC2E8 04400003 */  bltz       $v0, .L800CC2F8_DB2A8
    /* DB29C 800CC2EC 00021823 */   negu      $v1, $v0
    /* DB2A0 800CC2F0 10000001 */  b          .L800CC2F8_DB2A8
    /* DB2A4 800CC2F4 00401825 */   or        $v1, $v0, $zero
  .L800CC2F8_DB2A8:
    /* DB2A8 800CC2F8 26220008 */  addiu      $v0, $s1, 0x8
    /* DB2AC 800CC2FC 8059000B */  lb         $t9, 0xB($v0)
    /* DB2B0 800CC300 44835000 */  mtc1       $v1, $f10
    /* DB2B4 800CC304 272EFFEC */  addiu      $t6, $t9, -0x14
    /* DB2B8 800CC308 448E2000 */  mtc1       $t6, $f4
    /* DB2BC 800CC30C 468051A0 */  cvt.s.w    $f6, $f10
    /* DB2C0 800CC310 46802220 */  cvt.s.w    $f8, $f4
    /* DB2C4 800CC314 461C4283 */  div.s      $f10, $f8, $f28
    /* DB2C8 800CC318 461E5102 */  mul.s      $f4, $f10, $f30
    /* DB2CC 800CC31C 46043001 */  sub.s      $f0, $f6, $f4
  .L800CC320_DB2D0:
    /* DB2D0 800CC320 C6680000 */  lwc1       $f8, 0x0($s3)
    /* DB2D4 800CC324 C66A0004 */  lwc1       $f10, 0x4($s3)
    /* DB2D8 800CC328 C6660008 */  lwc1       $f6, 0x8($s3)
    /* DB2DC 800CC32C 46080302 */  mul.s      $f12, $f0, $f8
    /* DB2E0 800CC330 844F0000 */  lh         $t7, 0x0($v0)
    /* DB2E4 800CC334 C664000C */  lwc1       $f4, 0xC($s3)
    /* DB2E8 800CC338 460A0082 */  mul.s      $f2, $f0, $f10
    /* DB2EC 800CC33C C6680010 */  lwc1       $f8, 0x10($s3)
    /* DB2F0 800CC340 C66A0014 */  lwc1       $f10, 0x14($s3)
    /* DB2F4 800CC344 46060382 */  mul.s      $f14, $f0, $f6
    /* DB2F8 800CC348 448F3000 */  mtc1       $t7, $f6
    /* DB2FC 800CC34C 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DB300 800CC350 46040402 */  mul.s      $f16, $f0, $f4
    /* DB304 800CC354 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* DB308 800CC358 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* DB30C 800CC35C 46080502 */  mul.s      $f20, $f0, $f8
    /* DB310 800CC360 00000000 */  nop
    /* DB314 800CC364 460A0482 */  mul.s      $f18, $f0, $f10
    /* DB318 800CC368 46803120 */  cvt.s.w    $f4, $f6
    /* DB31C 800CC36C 460C2200 */  add.s      $f8, $f4, $f12
    /* DB320 800CC370 4600428D */  trunc.w.s  $f10, $f8
    /* DB324 800CC374 44195000 */  mfc1       $t9, $f10
    /* DB328 800CC378 00000000 */  nop
    /* DB32C 800CC37C A5D90000 */  sh         $t9, 0x0($t6)
    /* DB330 800CC380 844F0002 */  lh         $t7, 0x2($v0)
    /* DB334 800CC384 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DB338 800CC388 448F3000 */  mtc1       $t7, $f6
    /* DB33C 800CC38C 00000000 */  nop
    /* DB340 800CC390 46803120 */  cvt.s.w    $f4, $f6
    /* DB344 800CC394 46022200 */  add.s      $f8, $f4, $f2
    /* DB348 800CC398 46164280 */  add.s      $f10, $f8, $f22
    /* DB34C 800CC39C 4600518D */  trunc.w.s  $f6, $f10
    /* DB350 800CC3A0 44193000 */  mfc1       $t9, $f6
    /* DB354 800CC3A4 00000000 */  nop
    /* DB358 800CC3A8 A5D90002 */  sh         $t9, 0x2($t6)
    /* DB35C 800CC3AC 844F0004 */  lh         $t7, 0x4($v0)
    /* DB360 800CC3B0 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DB364 800CC3B4 448F2000 */  mtc1       $t7, $f4
    /* DB368 800CC3B8 00000000 */  nop
    /* DB36C 800CC3BC 46802220 */  cvt.s.w    $f8, $f4
    /* DB370 800CC3C0 460E4280 */  add.s      $f10, $f8, $f14
    /* DB374 800CC3C4 4600518D */  trunc.w.s  $f6, $f10
    /* DB378 800CC3C8 44193000 */  mfc1       $t9, $f6
    /* DB37C 800CC3CC 00000000 */  nop
    /* DB380 800CC3D0 A5D90004 */  sh         $t9, 0x4($t6)
    /* DB384 800CC3D4 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DB388 800CC3D8 A5E00006 */  sh         $zero, 0x6($t7)
    /* DB38C 800CC3DC 8E180000 */  lw         $t8, 0x0($s0)
    /* DB390 800CC3E0 A7000008 */  sh         $zero, 0x8($t8)
    /* DB394 800CC3E4 8E190000 */  lw         $t9, 0x0($s0)
    /* DB398 800CC3E8 A720000A */  sh         $zero, 0xA($t9)
    /* DB39C 800CC3EC 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DB3A0 800CC3F0 904E0006 */  lbu        $t6, 0x6($v0)
    /* DB3A4 800CC3F4 A1EE000C */  sb         $t6, 0xC($t7)
    /* DB3A8 800CC3F8 8E190000 */  lw         $t9, 0x0($s0)
    /* DB3AC 800CC3FC 90580007 */  lbu        $t8, 0x7($v0)
    /* DB3B0 800CC400 A338000D */  sb         $t8, 0xD($t9)
    /* DB3B4 800CC404 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DB3B8 800CC408 904E0008 */  lbu        $t6, 0x8($v0)
    /* DB3BC 800CC40C A1EE000E */  sb         $t6, 0xE($t7)
    /* DB3C0 800CC410 8E190000 */  lw         $t9, 0x0($s0)
    /* DB3C4 800CC414 90580009 */  lbu        $t8, 0x9($v0)
    /* DB3C8 800CC418 A338000F */  sb         $t8, 0xF($t9)
    /* DB3CC 800CC41C 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DB3D0 800CC420 25CF0010 */  addiu      $t7, $t6, 0x10
    /* DB3D4 800CC424 AE0F0000 */  sw         $t7, 0x0($s0)
    /* DB3D8 800CC428 84580000 */  lh         $t8, 0x0($v0)
    /* DB3DC 800CC42C 44982000 */  mtc1       $t8, $f4
    /* DB3E0 800CC430 00000000 */  nop
    /* DB3E4 800CC434 46802220 */  cvt.s.w    $f8, $f4
    /* DB3E8 800CC438 46104280 */  add.s      $f10, $f8, $f16
    /* DB3EC 800CC43C 4600518D */  trunc.w.s  $f6, $f10
    /* DB3F0 800CC440 440E3000 */  mfc1       $t6, $f6
    /* DB3F4 800CC444 00000000 */  nop
    /* DB3F8 800CC448 A5EE0000 */  sh         $t6, 0x0($t7)
    /* DB3FC 800CC44C 84580002 */  lh         $t8, 0x2($v0)
    /* DB400 800CC450 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DB404 800CC454 44982000 */  mtc1       $t8, $f4
    /* DB408 800CC458 00000000 */  nop
    /* DB40C 800CC45C 46802220 */  cvt.s.w    $f8, $f4
    /* DB410 800CC460 46024280 */  add.s      $f10, $f8, $f2
    /* DB414 800CC464 46165180 */  add.s      $f6, $f10, $f22
    /* DB418 800CC468 4600310D */  trunc.w.s  $f4, $f6
    /* DB41C 800CC46C 440E2000 */  mfc1       $t6, $f4
    /* DB420 800CC470 00000000 */  nop
    /* DB424 800CC474 A5EE0002 */  sh         $t6, 0x2($t7)
    /* DB428 800CC478 84580004 */  lh         $t8, 0x4($v0)
    /* DB42C 800CC47C 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DB430 800CC480 44984000 */  mtc1       $t8, $f8
    /* DB434 800CC484 00000000 */  nop
    /* DB438 800CC488 468042A0 */  cvt.s.w    $f10, $f8
    /* DB43C 800CC48C 46125180 */  add.s      $f6, $f10, $f18
    /* DB440 800CC490 4600310D */  trunc.w.s  $f4, $f6
    /* DB444 800CC494 440E2000 */  mfc1       $t6, $f4
    /* DB448 800CC498 00000000 */  nop
    /* DB44C 800CC49C A5EE0004 */  sh         $t6, 0x4($t7)
    /* DB450 800CC4A0 8E180000 */  lw         $t8, 0x0($s0)
    /* DB454 800CC4A4 A7000006 */  sh         $zero, 0x6($t8)
    /* DB458 800CC4A8 8E190000 */  lw         $t9, 0x0($s0)
    /* DB45C 800CC4AC A7340008 */  sh         $s4, 0x8($t9)
    /* DB460 800CC4B0 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DB464 800CC4B4 A5C0000A */  sh         $zero, 0xA($t6)
    /* DB468 800CC4B8 8E180000 */  lw         $t8, 0x0($s0)
    /* DB46C 800CC4BC 904F0006 */  lbu        $t7, 0x6($v0)
    /* DB470 800CC4C0 A30F000C */  sb         $t7, 0xC($t8)
    /* DB474 800CC4C4 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DB478 800CC4C8 90590007 */  lbu        $t9, 0x7($v0)
    /* DB47C 800CC4CC A1D9000D */  sb         $t9, 0xD($t6)
    /* DB480 800CC4D0 8E180000 */  lw         $t8, 0x0($s0)
    /* DB484 800CC4D4 904F0008 */  lbu        $t7, 0x8($v0)
    /* DB488 800CC4D8 A30F000E */  sb         $t7, 0xE($t8)
    /* DB48C 800CC4DC 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DB490 800CC4E0 90590009 */  lbu        $t9, 0x9($v0)
    /* DB494 800CC4E4 A1D9000F */  sb         $t9, 0xF($t6)
    /* DB498 800CC4E8 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DB49C 800CC4EC 25F80010 */  addiu      $t8, $t7, 0x10
    /* DB4A0 800CC4F0 AE180000 */  sw         $t8, 0x0($s0)
    /* DB4A4 800CC4F4 84590000 */  lh         $t9, 0x0($v0)
    /* DB4A8 800CC4F8 44994000 */  mtc1       $t9, $f8
    /* DB4AC 800CC4FC 00000000 */  nop
    /* DB4B0 800CC500 468042A0 */  cvt.s.w    $f10, $f8
    /* DB4B4 800CC504 460C5181 */  sub.s      $f6, $f10, $f12
    /* DB4B8 800CC508 4600310D */  trunc.w.s  $f4, $f6
    /* DB4BC 800CC50C 440F2000 */  mfc1       $t7, $f4
    /* DB4C0 800CC510 00000000 */  nop
    /* DB4C4 800CC514 A70F0000 */  sh         $t7, 0x0($t8)
    /* DB4C8 800CC518 844F0002 */  lh         $t7, 0x2($v0)
    /* DB4CC 800CC51C 86390002 */  lh         $t9, 0x2($s1)
    /* DB4D0 800CC520 448F3000 */  mtc1       $t7, $f6
    /* DB4D4 800CC524 00197043 */  sra        $t6, $t9, 1
    /* DB4D8 800CC528 448E4000 */  mtc1       $t6, $f8
    /* DB4DC 800CC52C 46803120 */  cvt.s.w    $f4, $f6
    /* DB4E0 800CC530 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DB4E4 800CC534 468042A0 */  cvt.s.w    $f10, $f8
    /* DB4E8 800CC538 46022201 */  sub.s      $f8, $f4, $f2
    /* DB4EC 800CC53C 46085180 */  add.s      $f6, $f10, $f8
    /* DB4F0 800CC540 4600310D */  trunc.w.s  $f4, $f6
    /* DB4F4 800CC544 44192000 */  mfc1       $t9, $f4
    /* DB4F8 800CC548 00000000 */  nop
    /* DB4FC 800CC54C A5D90002 */  sh         $t9, 0x2($t6)
    /* DB500 800CC550 844F0004 */  lh         $t7, 0x4($v0)
    /* DB504 800CC554 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DB508 800CC558 448F5000 */  mtc1       $t7, $f10
    /* DB50C 800CC55C 00000000 */  nop
    /* DB510 800CC560 46805220 */  cvt.s.w    $f8, $f10
    /* DB514 800CC564 460E4181 */  sub.s      $f6, $f8, $f14
    /* DB518 800CC568 4600310D */  trunc.w.s  $f4, $f6
    /* DB51C 800CC56C 44192000 */  mfc1       $t9, $f4
    /* DB520 800CC570 00000000 */  nop
    /* DB524 800CC574 A5D90004 */  sh         $t9, 0x4($t6)
    /* DB528 800CC578 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DB52C 800CC57C A5E00006 */  sh         $zero, 0x6($t7)
    /* DB530 800CC580 8E180000 */  lw         $t8, 0x0($s0)
    /* DB534 800CC584 A7140008 */  sh         $s4, 0x8($t8)
    /* DB538 800CC588 8E190000 */  lw         $t9, 0x0($s0)
    /* DB53C 800CC58C A735000A */  sh         $s5, 0xA($t9)
    /* DB540 800CC590 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DB544 800CC594 904E0006 */  lbu        $t6, 0x6($v0)
    /* DB548 800CC598 A1EE000C */  sb         $t6, 0xC($t7)
    /* DB54C 800CC59C 8E190000 */  lw         $t9, 0x0($s0)
    /* DB550 800CC5A0 90580007 */  lbu        $t8, 0x7($v0)
    /* DB554 800CC5A4 A338000D */  sb         $t8, 0xD($t9)
    /* DB558 800CC5A8 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DB55C 800CC5AC 904E0008 */  lbu        $t6, 0x8($v0)
    /* DB560 800CC5B0 A1EE000E */  sb         $t6, 0xE($t7)
    /* DB564 800CC5B4 8E190000 */  lw         $t9, 0x0($s0)
    /* DB568 800CC5B8 9058000A */  lbu        $t8, 0xA($v0)
    /* DB56C 800CC5BC A338000F */  sb         $t8, 0xF($t9)
    /* DB570 800CC5C0 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DB574 800CC5C4 25CF0010 */  addiu      $t7, $t6, 0x10
    /* DB578 800CC5C8 AE0F0000 */  sw         $t7, 0x0($s0)
    /* DB57C 800CC5CC 84580000 */  lh         $t8, 0x0($v0)
    /* DB580 800CC5D0 44985000 */  mtc1       $t8, $f10
    /* DB584 800CC5D4 00000000 */  nop
    /* DB588 800CC5D8 46805220 */  cvt.s.w    $f8, $f10
    /* DB58C 800CC5DC 46104181 */  sub.s      $f6, $f8, $f16
    /* DB590 800CC5E0 4600310D */  trunc.w.s  $f4, $f6
    /* DB594 800CC5E4 440E2000 */  mfc1       $t6, $f4
    /* DB598 800CC5E8 00000000 */  nop
    /* DB59C 800CC5EC A5EE0000 */  sh         $t6, 0x0($t7)
    /* DB5A0 800CC5F0 844E0002 */  lh         $t6, 0x2($v0)
    /* DB5A4 800CC5F4 86380002 */  lh         $t8, 0x2($s1)
    /* DB5A8 800CC5F8 448E3000 */  mtc1       $t6, $f6
    /* DB5AC 800CC5FC 0018C843 */  sra        $t9, $t8, 1
    /* DB5B0 800CC600 44995000 */  mtc1       $t9, $f10
    /* DB5B4 800CC604 46803120 */  cvt.s.w    $f4, $f6
    /* DB5B8 800CC608 8E190000 */  lw         $t9, 0x0($s0)
    /* DB5BC 800CC60C 46805220 */  cvt.s.w    $f8, $f10
    /* DB5C0 800CC610 46142281 */  sub.s      $f10, $f4, $f20
    /* DB5C4 800CC614 460A4180 */  add.s      $f6, $f8, $f10
    /* DB5C8 800CC618 4600310D */  trunc.w.s  $f4, $f6
    /* DB5CC 800CC61C 44182000 */  mfc1       $t8, $f4
    /* DB5D0 800CC620 00000000 */  nop
    /* DB5D4 800CC624 A7380002 */  sh         $t8, 0x2($t9)
    /* DB5D8 800CC628 844E0004 */  lh         $t6, 0x4($v0)
    /* DB5DC 800CC62C 8E190000 */  lw         $t9, 0x0($s0)
    /* DB5E0 800CC630 448E4000 */  mtc1       $t6, $f8
    /* DB5E4 800CC634 00000000 */  nop
    /* DB5E8 800CC638 468042A0 */  cvt.s.w    $f10, $f8
    /* DB5EC 800CC63C 46125181 */  sub.s      $f6, $f10, $f18
    /* DB5F0 800CC640 4600310D */  trunc.w.s  $f4, $f6
    /* DB5F4 800CC644 44182000 */  mfc1       $t8, $f4
    /* DB5F8 800CC648 00000000 */  nop
    /* DB5FC 800CC64C A7380004 */  sh         $t8, 0x4($t9)
    /* DB600 800CC650 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DB604 800CC654 A5C00006 */  sh         $zero, 0x6($t6)
    /* DB608 800CC658 8E0F0000 */  lw         $t7, 0x0($s0)
    /* DB60C 800CC65C A5E00008 */  sh         $zero, 0x8($t7)
    /* DB610 800CC660 8E180000 */  lw         $t8, 0x0($s0)
    /* DB614 800CC664 A715000A */  sh         $s5, 0xA($t8)
    /* DB618 800CC668 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DB61C 800CC66C 90590006 */  lbu        $t9, 0x6($v0)
    /* DB620 800CC670 A1D9000C */  sb         $t9, 0xC($t6)
    /* DB624 800CC674 8E180000 */  lw         $t8, 0x0($s0)
    /* DB628 800CC678 904F0007 */  lbu        $t7, 0x7($v0)
    /* DB62C 800CC67C A30F000D */  sb         $t7, 0xD($t8)
    /* DB630 800CC680 8E0E0000 */  lw         $t6, 0x0($s0)
    /* DB634 800CC684 90590008 */  lbu        $t9, 0x8($v0)
    /* DB638 800CC688 A1D9000E */  sb         $t9, 0xE($t6)
    /* DB63C 800CC68C 8E180000 */  lw         $t8, 0x0($s0)
    /* DB640 800CC690 904F000A */  lbu        $t7, 0xA($v0)
    /* DB644 800CC694 A30F000F */  sb         $t7, 0xF($t8)
    /* DB648 800CC698 8E190000 */  lw         $t9, 0x0($s0)
    /* DB64C 800CC69C 8E430000 */  lw         $v1, 0x0($s2)
    /* DB650 800CC6A0 272E0010 */  addiu      $t6, $t9, 0x10
    /* DB654 800CC6A4 246F0008 */  addiu      $t7, $v1, 0x8
    /* DB658 800CC6A8 AE0E0000 */  sw         $t6, 0x0($s0)
    /* DB65C 800CC6AC AE4F0000 */  sw         $t7, 0x0($s2)
    /* DB660 800CC6B0 AC7E0000 */  sw         $fp, 0x0($v1)
    /* DB664 800CC6B4 8E180000 */  lw         $t8, 0x0($s0)
    /* DB668 800CC6B8 2719FFC0 */  addiu      $t9, $t8, -0x40
    /* DB66C 800CC6BC 03217024 */  and        $t6, $t9, $at
    /* DB670 800CC6C0 AC6E0004 */  sw         $t6, 0x4($v1)
    /* DB674 800CC6C4 8E430000 */  lw         $v1, 0x0($s2)
    /* DB678 800CC6C8 3C190006 */  lui        $t9, (0x60204 >> 16)
    /* DB67C 800CC6CC 3C18B100 */  lui        $t8, (0xB1000206 >> 16)
    /* DB680 800CC6D0 246F0008 */  addiu      $t7, $v1, 0x8
    /* DB684 800CC6D4 AE4F0000 */  sw         $t7, 0x0($s2)
    /* DB688 800CC6D8 37180206 */  ori        $t8, $t8, (0xB1000206 & 0xFFFF)
    /* DB68C 800CC6DC 37390204 */  ori        $t9, $t9, (0x60204 & 0xFFFF)
    /* DB690 800CC6E0 AC790004 */  sw         $t9, 0x4($v1)
    /* DB694 800CC6E4 AC780000 */  sw         $t8, 0x0($v1)
    /* DB698 800CC6E8 844E0000 */  lh         $t6, 0x0($v0)
    /* DB69C 800CC6EC 24010005 */  addiu      $at, $zero, 0x5
    /* DB6A0 800CC6F0 3C198014 */  lui        $t9, %hi(D_8013DF80)
    /* DB6A4 800CC6F4 A7AE00C4 */  sh         $t6, 0xC4($sp)
    /* DB6A8 800CC6F8 844F0004 */  lh         $t7, 0x4($v0)
    /* DB6AC 800CC6FC 240E0050 */  addiu      $t6, $zero, 0x50
    /* DB6B0 800CC700 2739DF80 */  addiu      $t9, $t9, %lo(D_8013DF80)
    /* DB6B4 800CC704 A7AF00C6 */  sh         $t7, 0xC6($sp)
    /* DB6B8 800CC708 8058000B */  lb         $t8, 0xB($v0)
    /* DB6BC 800CC70C 240F0014 */  addiu      $t7, $zero, 0x14
    /* DB6C0 800CC710 17010007 */  bne        $t8, $at, .L800CC730_DB6E0
    /* DB6C4 800CC714 00000000 */   nop
    /* DB6C8 800CC718 AFB90010 */  sw         $t9, 0x10($sp)
    /* DB6CC 800CC71C AFAE0014 */  sw         $t6, 0x14($sp)
    /* DB6D0 800CC720 AFAF0018 */  sw         $t7, 0x18($sp)
    /* DB6D4 800CC724 0C02E66A */  jal        func_800B99A8_C8958
    /* DB6D8 800CC728 AFA0001C */   sw        $zero, 0x1C($sp)
    /* DB6DC 800CC72C 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
  .L800CC730_DB6E0:
    /* DB6E0 800CC730 86240004 */  lh         $a0, 0x4($s1)
    /* DB6E4 800CC734 2401FFFB */  addiu      $at, $zero, -0x5
    /* DB6E8 800CC738 10810003 */  beq        $a0, $at, .L800CC748_DB6F8
    /* DB6EC 800CC73C 2401FFFA */   addiu     $at, $zero, -0x6
    /* DB6F0 800CC740 1481FEC7 */  bne        $a0, $at, .L800CC260_DB210
    /* DB6F4 800CC744 00000000 */   nop
  .L800CC748_DB6F8:
    /* DB6F8 800CC748 3C028015 */  lui        $v0, %hi(D_80156EDA)
    /* DB6FC 800CC74C 3C198015 */  lui        $t9, %hi(D_80154238)
    /* DB700 800CC750 93394238 */  lbu        $t9, %lo(D_80154238)($t9)
    /* DB704 800CC754 24426EDA */  addiu      $v0, $v0, %lo(D_80156EDA)
    /* DB708 800CC758 84580000 */  lh         $t8, 0x0($v0)
    /* DB70C 800CC75C 8FBF007C */  lw         $ra, 0x7C($sp)
    /* DB710 800CC760 00197080 */  sll        $t6, $t9, 2
    /* DB714 800CC764 D7B40028 */  ldc1       $f20, 0x28($sp)
    /* DB718 800CC768 D7B60030 */  ldc1       $f22, 0x30($sp)
    /* DB71C 800CC76C D7B80038 */  ldc1       $f24, 0x38($sp)
    /* DB720 800CC770 D7BA0040 */  ldc1       $f26, 0x40($sp)
    /* DB724 800CC774 D7BC0048 */  ldc1       $f28, 0x48($sp)
    /* DB728 800CC778 D7BE0050 */  ldc1       $f30, 0x50($sp)
    /* DB72C 800CC77C 8FB00058 */  lw         $s0, 0x58($sp)
    /* DB730 800CC780 8FB1005C */  lw         $s1, 0x5C($sp)
    /* DB734 800CC784 8FB20060 */  lw         $s2, 0x60($sp)
    /* DB738 800CC788 8FB30064 */  lw         $s3, 0x64($sp)
    /* DB73C 800CC78C 8FB40068 */  lw         $s4, 0x68($sp)
    /* DB740 800CC790 8FB5006C */  lw         $s5, 0x6C($sp)
    /* DB744 800CC794 8FB60070 */  lw         $s6, 0x70($sp)
    /* DB748 800CC798 8FB70074 */  lw         $s7, 0x74($sp)
    /* DB74C 800CC79C 8FBE0078 */  lw         $fp, 0x78($sp)
    /* DB750 800CC7A0 030E7821 */  addu       $t7, $t8, $t6
    /* DB754 800CC7A4 A44F0000 */  sh         $t7, 0x0($v0)
    /* DB758 800CC7A8 03E00008 */  jr         $ra
    /* DB75C 800CC7AC 27BD00E8 */   addiu     $sp, $sp, 0xE8
endlabel func_800CC090_DB040
