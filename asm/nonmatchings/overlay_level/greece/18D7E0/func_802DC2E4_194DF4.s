nonmatching func_802DC2E4_194DF4, 0x21C

glabel func_802DC2E4_194DF4
    /* 194DF4 802DC2E4 308E00FF */  andi       $t6, $a0, 0xFF
    /* 194DF8 802DC2E8 000E7880 */  sll        $t7, $t6, 2
    /* 194DFC 802DC2EC 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 194E00 802DC2F0 01EE7821 */  addu       $t7, $t7, $t6
    /* 194E04 802DC2F4 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 194E08 802DC2F8 AFB00028 */  sw         $s0, 0x28($sp)
    /* 194E0C 802DC2FC 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 194E10 802DC300 000F7900 */  sll        $t7, $t7, 4
    /* 194E14 802DC304 01F88021 */  addu       $s0, $t7, $t8
    /* 194E18 802DC308 8602000C */  lh         $v0, 0xC($s0)
    /* 194E1C 802DC30C 3C0A8015 */  lui        $t2, %hi(D_8014DD50)
    /* 194E20 802DC310 254ADD50 */  addiu      $t2, $t2, %lo(D_8014DD50)
    /* 194E24 802DC314 0002C900 */  sll        $t9, $v0, 4
    /* 194E28 802DC318 032A1821 */  addu       $v1, $t9, $t2
    /* 194E2C 802DC31C 8065000C */  lb         $a1, 0xC($v1)
    /* 194E30 802DC320 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 194E34 802DC324 AFA40060 */  sw         $a0, 0x60($sp)
    /* 194E38 802DC328 01C02025 */  or         $a0, $t6, $zero
    /* 194E3C 802DC32C A3AE0063 */  sb         $t6, 0x63($sp)
    /* 194E40 802DC330 AFA30034 */  sw         $v1, 0x34($sp)
    /* 194E44 802DC334 0C02245B */  jal        func_8008916C_9811C
    /* 194E48 802DC338 A7A5005C */   sh        $a1, 0x5C($sp)
    /* 194E4C 802DC33C 8FA30034 */  lw         $v1, 0x34($sp)
    /* 194E50 802DC340 860C0006 */  lh         $t4, 0x6($s0)
    /* 194E54 802DC344 87B8005C */  lh         $t8, 0x5C($sp)
    /* 194E58 802DC348 946B0006 */  lhu        $t3, 0x6($v1)
    /* 194E5C 802DC34C 946F000A */  lhu        $t7, 0xA($v1)
    /* 194E60 802DC350 3C0A8015 */  lui        $t2, %hi(D_8014DD50)
    /* 194E64 802DC354 016C6823 */  subu       $t5, $t3, $t4
    /* 194E68 802DC358 25AE4000 */  addiu      $t6, $t5, 0x4000
    /* 194E6C 802DC35C 254ADD50 */  addiu      $t2, $t2, %lo(D_8014DD50)
    /* 194E70 802DC360 0018C900 */  sll        $t9, $t8, 4
    /* 194E74 802DC364 AFA20040 */  sw         $v0, 0x40($sp)
    /* 194E78 802DC368 A7AE0048 */  sh         $t6, 0x48($sp)
    /* 194E7C 802DC36C A7A0004A */  sh         $zero, 0x4A($sp)
    /* 194E80 802DC370 032A2021 */  addu       $a0, $t9, $t2
    /* 194E84 802DC374 27A50050 */  addiu      $a1, $sp, 0x50
    /* 194E88 802DC378 27A60048 */  addiu      $a2, $sp, 0x48
    /* 194E8C 802DC37C 0C001135 */  jal        func_800044D4_50D4
    /* 194E90 802DC380 A7AF004C */   sh        $t7, 0x4C($sp)
    /* 194E94 802DC384 9219001A */  lbu        $t9, 0x1A($s0)
    /* 194E98 802DC388 8FA30050 */  lw         $v1, 0x50($sp)
    /* 194E9C 802DC38C 8FA80054 */  lw         $t0, 0x54($sp)
    /* 194EA0 802DC390 8FA90058 */  lw         $t1, 0x58($sp)
    /* 194EA4 802DC394 860B0000 */  lh         $t3, 0x0($s0)
    /* 194EA8 802DC398 860C0002 */  lh         $t4, 0x2($s0)
    /* 194EAC 802DC39C 860D0004 */  lh         $t5, 0x4($s0)
    /* 194EB0 802DC3A0 00195080 */  sll        $t2, $t9, 2
    /* 194EB4 802DC3A4 01595023 */  subu       $t2, $t2, $t9
    /* 194EB8 802DC3A8 000A5080 */  sll        $t2, $t2, 2
    /* 194EBC 802DC3AC 01595021 */  addu       $t2, $t2, $t9
    /* 194EC0 802DC3B0 006B1821 */  addu       $v1, $v1, $t3
    /* 194EC4 802DC3B4 010C4021 */  addu       $t0, $t0, $t4
    /* 194EC8 802DC3B8 012D4821 */  addu       $t1, $t1, $t5
    /* 194ECC 802DC3BC 00093400 */  sll        $a2, $t1, 16
    /* 194ED0 802DC3C0 00082C00 */  sll        $a1, $t0, 16
    /* 194ED4 802DC3C4 00032400 */  sll        $a0, $v1, 16
    /* 194ED8 802DC3C8 000A50C0 */  sll        $t2, $t2, 3
    /* 194EDC 802DC3CC 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 194EE0 802DC3D0 00EA3821 */  addu       $a3, $a3, $t2
    /* 194EE4 802DC3D4 00047403 */  sra        $t6, $a0, 16
    /* 194EE8 802DC3D8 00057C03 */  sra        $t7, $a1, 16
    /* 194EEC 802DC3DC 0006C403 */  sra        $t8, $a2, 16
    /* 194EF0 802DC3E0 03003025 */  or         $a2, $t8, $zero
    /* 194EF4 802DC3E4 01E02825 */  or         $a1, $t7, $zero
    /* 194EF8 802DC3E8 01C02025 */  or         $a0, $t6, $zero
    /* 194EFC 802DC3EC 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 194F00 802DC3F0 AFA90058 */  sw         $t1, 0x58($sp)
    /* 194F04 802DC3F4 AFA80054 */  sw         $t0, 0x54($sp)
    /* 194F08 802DC3F8 AFA30050 */  sw         $v1, 0x50($sp)
    /* 194F0C 802DC3FC AFA00010 */  sw         $zero, 0x10($sp)
    /* 194F10 802DC400 0C037C0E */  jal        func_800DF038_EDFE8
    /* 194F14 802DC404 AFA00014 */   sw        $zero, 0x14($sp)
    /* 194F18 802DC408 8FA30050 */  lw         $v1, 0x50($sp)
    /* 194F1C 802DC40C 8FA80054 */  lw         $t0, 0x54($sp)
    /* 194F20 802DC410 8FA90058 */  lw         $t1, 0x58($sp)
    /* 194F24 802DC414 8FAF0040 */  lw         $t7, 0x40($sp)
    /* 194F28 802DC418 00032400 */  sll        $a0, $v1, 16
    /* 194F2C 802DC41C 00082C00 */  sll        $a1, $t0, 16
    /* 194F30 802DC420 00093400 */  sll        $a2, $t1, 16
    /* 194F34 802DC424 00066C03 */  sra        $t5, $a2, 16
    /* 194F38 802DC428 00056403 */  sra        $t4, $a1, 16
    /* 194F3C 802DC42C 00045C03 */  sra        $t3, $a0, 16
    /* 194F40 802DC430 240E00C8 */  addiu      $t6, $zero, 0xC8
    /* 194F44 802DC434 24180001 */  addiu      $t8, $zero, 0x1
    /* 194F48 802DC438 AFB8001C */  sw         $t8, 0x1C($sp)
    /* 194F4C 802DC43C AFAE0014 */  sw         $t6, 0x14($sp)
    /* 194F50 802DC440 01602025 */  or         $a0, $t3, $zero
    /* 194F54 802DC444 01802825 */  or         $a1, $t4, $zero
    /* 194F58 802DC448 01A03025 */  or         $a2, $t5, $zero
    /* 194F5C 802DC44C 24070040 */  addiu      $a3, $zero, 0x40
    /* 194F60 802DC450 AFA20010 */  sw         $v0, 0x10($sp)
    /* 194F64 802DC454 0C031E49 */  jal        func_800C7924_D68D4
    /* 194F68 802DC458 AFAF0018 */   sw        $t7, 0x18($sp)
    /* 194F6C 802DC45C 0C022384 */  jal        func_80088E10_97DC0
    /* 194F70 802DC460 87A4005C */   lh        $a0, 0x5C($sp)
    /* 194F74 802DC464 92190025 */  lbu        $t9, 0x25($s0)
    /* 194F78 802DC468 24060050 */  addiu      $a2, $zero, 0x50
    /* 194F7C 802DC46C 3C038005 */  lui        $v1, %hi(alienInstances)
    /* 194F80 802DC470 03260019 */  multu      $t9, $a2
    /* 194F84 802DC474 24638198 */  addiu      $v1, $v1, %lo(alienInstances)
    /* 194F88 802DC478 2418003C */  addiu      $t8, $zero, 0x3C
    /* 194F8C 802DC47C 3C050040 */  lui        $a1, (0x400000 >> 16)
    /* 194F90 802DC480 00005012 */  mflo       $t2
    /* 194F94 802DC484 006A5821 */  addu       $t3, $v1, $t2
    /* 194F98 802DC488 916C0025 */  lbu        $t4, 0x25($t3)
    /* 194F9C 802DC48C 01860019 */  multu      $t4, $a2
    /* 194FA0 802DC490 240C0006 */  addiu      $t4, $zero, 0x6
    /* 194FA4 802DC494 00006812 */  mflo       $t5
    /* 194FA8 802DC498 006D1021 */  addu       $v0, $v1, $t5
    /* 194FAC 802DC49C 8C4E0020 */  lw         $t6, 0x20($v0)
    /* 194FB0 802DC4A0 35CF8000 */  ori        $t7, $t6, 0x8000
    /* 194FB4 802DC4A4 AC4F0020 */  sw         $t7, 0x20($v0)
    /* 194FB8 802DC4A8 92190025 */  lbu        $t9, 0x25($s0)
    /* 194FBC 802DC4AC 03260019 */  multu      $t9, $a2
    /* 194FC0 802DC4B0 00005012 */  mflo       $t2
    /* 194FC4 802DC4B4 006A5821 */  addu       $t3, $v1, $t2
    /* 194FC8 802DC4B8 A578002C */  sh         $t8, 0x2C($t3)
    /* 194FCC 802DC4BC 920D0025 */  lbu        $t5, 0x25($s0)
    /* 194FD0 802DC4C0 01A60019 */  multu      $t5, $a2
    /* 194FD4 802DC4C4 00007012 */  mflo       $t6
    /* 194FD8 802DC4C8 006E7821 */  addu       $t7, $v1, $t6
    /* 194FDC 802DC4CC A5EC001E */  sh         $t4, 0x1E($t7)
    /* 194FE0 802DC4D0 0C02A5CE */  jal        func_800A9738_B86E8
    /* 194FE4 802DC4D4 92040025 */   lbu       $a0, 0x25($s0)
    /* 194FE8 802DC4D8 24190032 */  addiu      $t9, $zero, 0x32
    /* 194FEC 802DC4DC A619002C */  sh         $t9, 0x2C($s0)
    /* 194FF0 802DC4E0 93A40063 */  lbu        $a0, 0x63($sp)
    /* 194FF4 802DC4E4 0C04DD1A */  jal        func_80137468_146418
    /* 194FF8 802DC4E8 24050011 */   addiu     $a1, $zero, 0x11
    /* 194FFC 802DC4EC 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 195000 802DC4F0 8FB00028 */  lw         $s0, 0x28($sp)
    /* 195004 802DC4F4 27BD0060 */  addiu      $sp, $sp, 0x60
    /* 195008 802DC4F8 03E00008 */  jr         $ra
    /* 19500C 802DC4FC 00000000 */   nop
endlabel func_802DC2E4_194DF4
