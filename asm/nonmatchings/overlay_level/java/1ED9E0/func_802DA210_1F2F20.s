nonmatching func_802DA210_1F2F20, 0x338

glabel func_802DA210_1F2F20
    /* 1F2F20 802DA210 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* 1F2F24 802DA214 AFA40078 */  sw         $a0, 0x78($sp)
    /* 1F2F28 802DA218 93AE007B */  lbu        $t6, 0x7B($sp)
    /* 1F2F2C 802DA21C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F2F30 802DA220 AFB00040 */  sw         $s0, 0x40($sp)
    /* 1F2F34 802DA224 000E7880 */  sll        $t7, $t6, 2
    /* 1F2F38 802DA228 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F2F3C 802DA22C 000F7900 */  sll        $t7, $t7, 4
    /* 1F2F40 802DA230 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F2F44 802DA234 01F88021 */  addu       $s0, $t7, $t8
    /* 1F2F48 802DA238 8E080020 */  lw         $t0, 0x20($s0)
    /* 1F2F4C 802DA23C 92020026 */  lbu        $v0, 0x26($s0)
    /* 1F2F50 802DA240 9219001A */  lbu        $t9, 0x1A($s0)
    /* 1F2F54 802DA244 31091000 */  andi       $t1, $t0, 0x1000
    /* 1F2F58 802DA248 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 1F2F5C 802DA24C AFA5007C */  sw         $a1, 0x7C($sp)
    /* 1F2F60 802DA250 AFA60080 */  sw         $a2, 0x80($sp)
    /* 1F2F64 802DA254 00403825 */  or         $a3, $v0, $zero
    /* 1F2F68 802DA258 112000B6 */  beqz       $t1, .L802DA534_1F3244
    /* 1F2F6C 802DA25C A3B90076 */   sb        $t9, 0x76($sp)
    /* 1F2F70 802DA260 87AA007E */  lh         $t2, 0x7E($sp)
    /* 1F2F74 802DA264 00072400 */  sll        $a0, $a3, 16
    /* 1F2F78 802DA268 00047C03 */  sra        $t7, $a0, 16
    /* 1F2F7C 802DA26C 15420005 */  bne        $t2, $v0, .L802DA284_1F2F94
    /* 1F2F80 802DA270 01E02025 */   or        $a0, $t7, $zero
    /* 1F2F84 802DA274 860B002A */  lh         $t3, 0x2A($s0)
    /* 1F2F88 802DA278 256C1000 */  addiu      $t4, $t3, 0x1000
    /* 1F2F8C 802DA27C 10000004 */  b          .L802DA290_1F2FA0
    /* 1F2F90 802DA280 A60C002A */   sh        $t4, 0x2A($s0)
  .L802DA284_1F2F94:
    /* 1F2F94 802DA284 860D002A */  lh         $t5, 0x2A($s0)
    /* 1F2F98 802DA288 25AEF000 */  addiu      $t6, $t5, -0x1000
    /* 1F2F9C 802DA28C A60E002A */  sh         $t6, 0x2A($s0)
  .L802DA290_1F2FA0:
    /* 1F2FA0 802DA290 0C020797 */  jal        func_80081E5C_90E0C
    /* 1F2FA4 802DA294 A3A70077 */   sb        $a3, 0x77($sp)
    /* 1F2FA8 802DA298 93A70077 */  lbu        $a3, 0x77($sp)
    /* 1F2FAC 802DA29C 3C198015 */  lui        $t9, %hi(D_8014DD5E)
    /* 1F2FB0 802DA2A0 0007C100 */  sll        $t8, $a3, 4
    /* 1F2FB4 802DA2A4 0338C821 */  addu       $t9, $t9, $t8
    /* 1F2FB8 802DA2A8 8739DD5E */  lh         $t9, %lo(D_8014DD5E)($t9)
    /* 1F2FBC 802DA2AC 572000A2 */  bnel       $t9, $zero, .L802DA538_1F3248
    /* 1F2FC0 802DA2B0 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 1F2FC4 802DA2B4 92020036 */  lbu        $v0, 0x36($s0)
    /* 1F2FC8 802DA2B8 24010003 */  addiu      $at, $zero, 0x3
    /* 1F2FCC 802DA2BC 30E400FF */  andi       $a0, $a3, 0xFF
    /* 1F2FD0 802DA2C0 14410006 */  bne        $v0, $at, .L802DA2DC_1F2FEC
    /* 1F2FD4 802DA2C4 00025100 */   sll       $t2, $v0, 4
    /* 1F2FD8 802DA2C8 8E080020 */  lw         $t0, 0x20($s0)
    /* 1F2FDC 802DA2CC 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 1F2FE0 802DA2D0 01014824 */  and        $t1, $t0, $at
    /* 1F2FE4 802DA2D4 10000097 */  b          .L802DA534_1F3244
    /* 1F2FE8 802DA2D8 AE090020 */   sw        $t1, 0x20($s0)
  .L802DA2DC_1F2FEC:
    /* 1F2FEC 802DA2DC 3C0B802E */  lui        $t3, %hi(D_802E06E0)
    /* 1F2FF0 802DA2E0 256B06E0 */  addiu      $t3, $t3, %lo(D_802E06E0)
    /* 1F2FF4 802DA2E4 0C020721 */  jal        func_80081C84_90C34
    /* 1F2FF8 802DA2E8 014B2821 */   addu      $a1, $t2, $t3
    /* 1F2FFC 802DA2EC 920C0036 */  lbu        $t4, 0x36($s0)
    /* 1F3000 802DA2F0 24010003 */  addiu      $at, $zero, 0x3
    /* 1F3004 802DA2F4 24050064 */  addiu      $a1, $zero, 0x64
    /* 1F3008 802DA2F8 258D0001 */  addiu      $t5, $t4, 0x1
    /* 1F300C 802DA2FC 31A200FF */  andi       $v0, $t5, 0xFF
    /* 1F3010 802DA300 14410085 */  bne        $v0, $at, .L802DA518_1F3228
    /* 1F3014 802DA304 A20D0036 */   sb        $t5, 0x36($s0)
    /* 1F3018 802DA308 0C04DD1A */  jal        func_80137468_146418
    /* 1F301C 802DA30C 93A4007B */   lbu       $a0, 0x7B($sp)
    /* 1F3020 802DA310 92030026 */  lbu        $v1, 0x26($s0)
    /* 1F3024 802DA314 87AE007E */  lh         $t6, 0x7E($sp)
    /* 1F3028 802DA318 93A4007B */  lbu        $a0, 0x7B($sp)
    /* 1F302C 802DA31C 00002825 */  or         $a1, $zero, $zero
    /* 1F3030 802DA320 55C30006 */  bnel       $t6, $v1, .L802DA33C_1F304C
    /* 1F3034 802DA324 87AF0082 */   lh        $t7, 0x82($sp)
    /* 1F3038 802DA328 0C021E69 */  jal        func_800879A4_96954
    /* 1F303C 802DA32C 24060001 */   addiu     $a2, $zero, 0x1
    /* 1F3040 802DA330 92030026 */  lbu        $v1, 0x26($s0)
    /* 1F3044 802DA334 AFA20060 */  sw         $v0, 0x60($sp)
    /* 1F3048 802DA338 87AF0082 */  lh         $t7, 0x82($sp)
  .L802DA33C_1F304C:
    /* 1F304C 802DA33C 93B80076 */  lbu        $t8, 0x76($sp)
    /* 1F3050 802DA340 8FA40060 */  lw         $a0, 0x60($sp)
    /* 1F3054 802DA344 15E30015 */  bne        $t7, $v1, .L802DA39C_1F30AC
    /* 1F3058 802DA348 0018C880 */   sll       $t9, $t8, 2
    /* 1F305C 802DA34C 0338C823 */  subu       $t9, $t9, $t8
    /* 1F3060 802DA350 0019C880 */  sll        $t9, $t9, 2
    /* 1F3064 802DA354 0338C821 */  addu       $t9, $t9, $t8
    /* 1F3068 802DA358 3C088025 */  lui        $t0, %hi(alienSpecs)
    /* 1F306C 802DA35C 25086680 */  addiu      $t0, $t0, %lo(alienSpecs)
    /* 1F3070 802DA360 0019C8C0 */  sll        $t9, $t9, 3
    /* 1F3074 802DA364 03281821 */  addu       $v1, $t9, $t0
    /* 1F3078 802DA368 8469002C */  lh         $t1, 0x2C($v1)
    /* 1F307C 802DA36C AFA30048 */  sw         $v1, 0x48($sp)
    /* 1F3080 802DA370 93A4007B */  lbu        $a0, 0x7B($sp)
    /* 1F3084 802DA374 00095023 */  negu       $t2, $t1
    /* 1F3088 802DA378 A46A002C */  sh         $t2, 0x2C($v1)
    /* 1F308C 802DA37C 24050096 */  addiu      $a1, $zero, 0x96
    /* 1F3090 802DA380 0C021E69 */  jal        func_800879A4_96954
    /* 1F3094 802DA384 24060001 */   addiu     $a2, $zero, 0x1
    /* 1F3098 802DA388 8FA30048 */  lw         $v1, 0x48($sp)
    /* 1F309C 802DA38C 00402025 */  or         $a0, $v0, $zero
    /* 1F30A0 802DA390 846B002C */  lh         $t3, 0x2C($v1)
    /* 1F30A4 802DA394 000B6023 */  negu       $t4, $t3
    /* 1F30A8 802DA398 A46C002C */  sh         $t4, 0x2C($v1)
  .L802DA39C_1F30AC:
    /* 1F30AC 802DA39C 93AD0076 */  lbu        $t5, 0x76($sp)
    /* 1F30B0 802DA3A0 3C0F8025 */  lui        $t7, %hi(alienSpecs)
    /* 1F30B4 802DA3A4 25EF6680 */  addiu      $t7, $t7, %lo(alienSpecs)
    /* 1F30B8 802DA3A8 000D7080 */  sll        $t6, $t5, 2
    /* 1F30BC 802DA3AC 01CD7023 */  subu       $t6, $t6, $t5
    /* 1F30C0 802DA3B0 000E7080 */  sll        $t6, $t6, 2
    /* 1F30C4 802DA3B4 01CD7021 */  addu       $t6, $t6, $t5
    /* 1F30C8 802DA3B8 000E70C0 */  sll        $t6, $t6, 3
    /* 1F30CC 802DA3BC 10800009 */  beqz       $a0, .L802DA3E4_1F30F4
    /* 1F30D0 802DA3C0 01CF1821 */   addu      $v1, $t6, $t7
    /* 1F30D4 802DA3C4 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 1F30D8 802DA3C8 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 1F30DC 802DA3CC 24050190 */  addiu      $a1, $zero, 0x190
    /* 1F30E0 802DA3D0 86060000 */  lh         $a2, 0x0($s0)
    /* 1F30E4 802DA3D4 86070004 */  lh         $a3, 0x4($s0)
    /* 1F30E8 802DA3D8 0C048949 */  jal        func_80122524_1314D4
    /* 1F30EC 802DA3DC AFA30048 */   sw        $v1, 0x48($sp)
    /* 1F30F0 802DA3E0 8FA30048 */  lw         $v1, 0x48($sp)
  .L802DA3E4_1F30F4:
    /* 1F30F4 802DA3E4 87B80082 */  lh         $t8, 0x82($sp)
    /* 1F30F8 802DA3E8 92190026 */  lbu        $t9, 0x26($s0)
    /* 1F30FC 802DA3EC 02002025 */  or         $a0, $s0, $zero
    /* 1F3100 802DA3F0 27A9005C */  addiu      $t1, $sp, 0x5C
    /* 1F3104 802DA3F4 17190004 */  bne        $t8, $t9, .L802DA408_1F3118
    /* 1F3108 802DA3F8 27AA0058 */   addiu     $t2, $sp, 0x58
    /* 1F310C 802DA3FC 8462002C */  lh         $v0, 0x2C($v1)
    /* 1F3110 802DA400 10000002 */  b          .L802DA40C_1F311C
    /* 1F3114 802DA404 00021023 */   negu      $v0, $v0
  .L802DA408_1F3118:
    /* 1F3118 802DA408 8462002C */  lh         $v0, 0x2C($v1)
  .L802DA40C_1F311C:
    /* 1F311C 802DA40C 00022C00 */  sll        $a1, $v0, 16
    /* 1F3120 802DA410 00054403 */  sra        $t0, $a1, 16
    /* 1F3124 802DA414 27AB0054 */  addiu      $t3, $sp, 0x54
    /* 1F3128 802DA418 AFAB0018 */  sw         $t3, 0x18($sp)
    /* 1F312C 802DA41C 01002825 */  or         $a1, $t0, $zero
    /* 1F3130 802DA420 8466002E */  lh         $a2, 0x2E($v1)
    /* 1F3134 802DA424 84670030 */  lh         $a3, 0x30($v1)
    /* 1F3138 802DA428 AFA90010 */  sw         $t1, 0x10($sp)
    /* 1F313C 802DA42C 0C04A10A */  jal        func_80128428_1373D8
    /* 1F3140 802DA430 AFAA0014 */   sw        $t2, 0x14($sp)
    /* 1F3144 802DA434 8FA50058 */  lw         $a1, 0x58($sp)
    /* 1F3148 802DA438 240E0014 */  addiu      $t6, $zero, 0x14
    /* 1F314C 802DA43C AFAE0010 */  sw         $t6, 0x10($sp)
    /* 1F3150 802DA440 24A50005 */  addiu      $a1, $a1, 0x5
    /* 1F3154 802DA444 00056400 */  sll        $t4, $a1, 16
    /* 1F3158 802DA448 000C2C03 */  sra        $a1, $t4, 16
    /* 1F315C 802DA44C 87A4005E */  lh         $a0, 0x5E($sp)
    /* 1F3160 802DA450 87A60056 */  lh         $a2, 0x56($sp)
    /* 1F3164 802DA454 0C037B97 */  jal        func_800DEE5C_EDE0C
    /* 1F3168 802DA458 24070050 */   addiu     $a3, $zero, 0x50
    /* 1F316C 802DA45C 240FFFFF */  addiu      $t7, $zero, -0x1
    /* 1F3170 802DA460 24180064 */  addiu      $t8, $zero, 0x64
    /* 1F3174 802DA464 241900FF */  addiu      $t9, $zero, 0xFF
    /* 1F3178 802DA468 24080028 */  addiu      $t0, $zero, 0x28
    /* 1F317C 802DA46C 24090014 */  addiu      $t1, $zero, 0x14
    /* 1F3180 802DA470 240A00FF */  addiu      $t2, $zero, 0xFF
    /* 1F3184 802DA474 240B00FF */  addiu      $t3, $zero, 0xFF
    /* 1F3188 802DA478 240C0080 */  addiu      $t4, $zero, 0x80
    /* 1F318C 802DA47C AFAC0030 */  sw         $t4, 0x30($sp)
    /* 1F3190 802DA480 AFAB002C */  sw         $t3, 0x2C($sp)
    /* 1F3194 802DA484 AFAA0028 */  sw         $t2, 0x28($sp)
    /* 1F3198 802DA488 AFA90024 */  sw         $t1, 0x24($sp)
    /* 1F319C 802DA48C AFA80020 */  sw         $t0, 0x20($sp)
    /* 1F31A0 802DA490 AFB9001C */  sw         $t9, 0x1C($sp)
    /* 1F31A4 802DA494 AFB80018 */  sw         $t8, 0x18($sp)
    /* 1F31A8 802DA498 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 1F31AC 802DA49C 87A4005E */  lh         $a0, 0x5E($sp)
    /* 1F31B0 802DA4A0 87A5005A */  lh         $a1, 0x5A($sp)
    /* 1F31B4 802DA4A4 87A60056 */  lh         $a2, 0x56($sp)
    /* 1F31B8 802DA4A8 00003825 */  or         $a3, $zero, $zero
    /* 1F31BC 802DA4AC 0C031507 */  jal        func_800C541C_D43CC
    /* 1F31C0 802DA4B0 AFA00014 */   sw        $zero, 0x14($sp)
    /* 1F31C4 802DA4B4 240D0008 */  addiu      $t5, $zero, 0x8
    /* 1F31C8 802DA4B8 240E0006 */  addiu      $t6, $zero, 0x6
    /* 1F31CC 802DA4BC 240F0028 */  addiu      $t7, $zero, 0x28
    /* 1F31D0 802DA4C0 241800C8 */  addiu      $t8, $zero, 0xC8
    /* 1F31D4 802DA4C4 241900A6 */  addiu      $t9, $zero, 0xA6
    /* 1F31D8 802DA4C8 24080085 */  addiu      $t0, $zero, 0x85
    /* 1F31DC 802DA4CC 2409002F */  addiu      $t1, $zero, 0x2F
    /* 1F31E0 802DA4D0 AFA90028 */  sw         $t1, 0x28($sp)
    /* 1F31E4 802DA4D4 AFA80024 */  sw         $t0, 0x24($sp)
    /* 1F31E8 802DA4D8 AFB90020 */  sw         $t9, 0x20($sp)
    /* 1F31EC 802DA4DC AFB8001C */  sw         $t8, 0x1C($sp)
    /* 1F31F0 802DA4E0 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 1F31F4 802DA4E4 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 1F31F8 802DA4E8 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 1F31FC 802DA4EC 87A4005E */  lh         $a0, 0x5E($sp)
    /* 1F3200 802DA4F0 87A5005A */  lh         $a1, 0x5A($sp)
    /* 1F3204 802DA4F4 87A60056 */  lh         $a2, 0x56($sp)
    /* 1F3208 802DA4F8 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 1F320C 802DA4FC 24070096 */   addiu     $a3, $zero, 0x96
    /* 1F3210 802DA500 8FA4005C */  lw         $a0, 0x5C($sp)
    /* 1F3214 802DA504 8FA50058 */  lw         $a1, 0x58($sp)
    /* 1F3218 802DA508 8FA60054 */  lw         $a2, 0x54($sp)
    /* 1F321C 802DA50C 0C04D751 */  jal        func_80135D44_144CF4
    /* 1F3220 802DA510 3C074040 */   lui       $a3, (0x40400000 >> 16)
    /* 1F3224 802DA514 92020036 */  lbu        $v0, 0x36($s0)
  .L802DA518_1F3228:
    /* 1F3228 802DA518 24010004 */  addiu      $at, $zero, 0x4
    /* 1F322C 802DA51C 54410006 */  bnel       $v0, $at, .L802DA538_1F3248
    /* 1F3230 802DA520 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 1F3234 802DA524 8E0A0020 */  lw         $t2, 0x20($s0)
    /* 1F3238 802DA528 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 1F323C 802DA52C 01415824 */  and        $t3, $t2, $at
    /* 1F3240 802DA530 AE0B0020 */  sw         $t3, 0x20($s0)
  .L802DA534_1F3244:
    /* 1F3244 802DA534 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802DA538_1F3248:
    /* 1F3248 802DA538 8FB00040 */  lw         $s0, 0x40($sp)
    /* 1F324C 802DA53C 27BD0078 */  addiu      $sp, $sp, 0x78
    /* 1F3250 802DA540 03E00008 */  jr         $ra
    /* 1F3254 802DA544 00000000 */   nop
endlabel func_802DA210_1F2F20
