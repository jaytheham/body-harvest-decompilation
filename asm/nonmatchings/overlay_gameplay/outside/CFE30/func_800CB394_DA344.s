nonmatching func_800CB394_DA344, 0x164

glabel func_800CB394_DA344
    /* DA344 800CB394 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* DA348 800CB398 AFB1001C */  sw         $s1, 0x1C($sp)
    /* DA34C 800CB39C 3C118015 */  lui        $s1, %hi(D_8015422E)
    /* DA350 800CB3A0 8631422E */  lh         $s1, %lo(D_8015422E)($s1)
    /* DA354 800CB3A4 AFB70034 */  sw         $s7, 0x34($sp)
    /* DA358 800CB3A8 2417FFFB */  addiu      $s7, $zero, -0x5
    /* DA35C 800CB3AC AFBF003C */  sw         $ra, 0x3C($sp)
    /* DA360 800CB3B0 AFBE0038 */  sw         $fp, 0x38($sp)
    /* DA364 800CB3B4 AFB60030 */  sw         $s6, 0x30($sp)
    /* DA368 800CB3B8 AFB5002C */  sw         $s5, 0x2C($sp)
    /* DA36C 800CB3BC AFB40028 */  sw         $s4, 0x28($sp)
    /* DA370 800CB3C0 AFB30024 */  sw         $s3, 0x24($sp)
    /* DA374 800CB3C4 AFB20020 */  sw         $s2, 0x20($sp)
    /* DA378 800CB3C8 12370003 */  beq        $s1, $s7, .L800CB3D8_DA388
    /* DA37C 800CB3CC AFB00018 */   sw        $s0, 0x18($sp)
    /* DA380 800CB3D0 241EFFFA */  addiu      $fp, $zero, -0x6
    /* DA384 800CB3D4 163E0005 */  bne        $s1, $fp, .L800CB3EC_DA39C
  .L800CB3D8_DA388:
    /* DA388 800CB3D8 24040004 */   addiu     $a0, $zero, 0x4
    /* DA38C 800CB3DC 0C030506 */  jal        func_800C1418_D03C8
    /* DA390 800CB3E0 24050001 */   addiu     $a1, $zero, 0x1
    /* DA394 800CB3E4 10000039 */  b          .L800CB4CC_DA47C
    /* DA398 800CB3E8 8FBF003C */   lw        $ra, 0x3C($sp)
  .L800CB3EC_DA39C:
    /* DA39C 800CB3EC 52370037 */  beql       $s1, $s7, .L800CB4CC_DA47C
    /* DA3A0 800CB3F0 8FBF003C */   lw        $ra, 0x3C($sp)
    /* DA3A4 800CB3F4 123E0034 */  beq        $s1, $fp, .L800CB4C8_DA478
    /* DA3A8 800CB3F8 241600FF */   addiu     $s6, $zero, 0xFF
    /* DA3AC 800CB3FC 3C148015 */  lui        $s4, %hi(D_80154318)
    /* DA3B0 800CB400 26944318 */  addiu      $s4, $s4, %lo(D_80154318)
    /* DA3B4 800CB404 2415001C */  addiu      $s5, $zero, 0x1C
    /* DA3B8 800CB408 24130032 */  addiu      $s3, $zero, 0x32
  .L800CB40C_DA3BC:
    /* DA3BC 800CB40C 0C000E38 */  jal        func_800038E0_44E0
    /* DA3C0 800CB410 00000000 */   nop
    /* DA3C4 800CB414 02350019 */  multu      $s1, $s5
    /* DA3C8 800CB418 00007012 */  mflo       $t6
    /* DA3CC 800CB41C 028E9021 */  addu       $s2, $s4, $t6
    /* DA3D0 800CB420 26500008 */  addiu      $s0, $s2, 0x8
    /* DA3D4 800CB424 0053001A */  div        $zero, $v0, $s3
    /* DA3D8 800CB428 00007810 */  mfhi       $t7
    /* DA3DC 800CB42C 25F800CD */  addiu      $t8, $t7, 0xCD
    /* DA3E0 800CB430 16600002 */  bnez       $s3, .L800CB43C_DA3EC
    /* DA3E4 800CB434 00000000 */   nop
    /* DA3E8 800CB438 0007000D */  break      7
  .L800CB43C_DA3EC:
    /* DA3EC 800CB43C 2401FFFF */  addiu      $at, $zero, -0x1
    /* DA3F0 800CB440 16610004 */  bne        $s3, $at, .L800CB454_DA404
    /* DA3F4 800CB444 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DA3F8 800CB448 14410002 */  bne        $v0, $at, .L800CB454_DA404
    /* DA3FC 800CB44C 00000000 */   nop
    /* DA400 800CB450 0006000D */  break      6
  .L800CB454_DA404:
    /* DA404 800CB454 A2180006 */  sb         $t8, 0x6($s0)
    /* DA408 800CB458 0C000E38 */  jal        func_800038E0_44E0
    /* DA40C 800CB45C 00000000 */   nop
    /* DA410 800CB460 0053001A */  div        $zero, $v0, $s3
    /* DA414 800CB464 9209000A */  lbu        $t1, 0xA($s0)
    /* DA418 800CB468 16600002 */  bnez       $s3, .L800CB474_DA424
    /* DA41C 800CB46C 00000000 */   nop
    /* DA420 800CB470 0007000D */  break      7
  .L800CB474_DA424:
    /* DA424 800CB474 2401FFFF */  addiu      $at, $zero, -0x1
    /* DA428 800CB478 16610004 */  bne        $s3, $at, .L800CB48C_DA43C
    /* DA42C 800CB47C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DA430 800CB480 14410002 */  bne        $v0, $at, .L800CB48C_DA43C
    /* DA434 800CB484 00000000 */   nop
    /* DA438 800CB488 0006000D */  break      6
  .L800CB48C_DA43C:
    /* DA43C 800CB48C 252A0001 */  addiu      $t2, $t1, 0x1
    /* DA440 800CB490 0000C810 */  mfhi       $t9
    /* DA444 800CB494 314B00FF */  andi       $t3, $t2, 0xFF
    /* DA448 800CB498 272800CD */  addiu      $t0, $t9, 0xCD
    /* DA44C 800CB49C 29610005 */  slti       $at, $t3, 0x5
    /* DA450 800CB4A0 A2080007 */  sb         $t0, 0x7($s0)
    /* DA454 800CB4A4 A2160008 */  sb         $s6, 0x8($s0)
    /* DA458 800CB4A8 14200002 */  bnez       $at, .L800CB4B4_DA464
    /* DA45C 800CB4AC A20A000A */   sb        $t2, 0xA($s0)
    /* DA460 800CB4B0 A200000A */  sb         $zero, 0xA($s0)
  .L800CB4B4_DA464:
    /* DA464 800CB4B4 86510004 */  lh         $s1, 0x4($s2)
    /* DA468 800CB4B8 52370004 */  beql       $s1, $s7, .L800CB4CC_DA47C
    /* DA46C 800CB4BC 8FBF003C */   lw        $ra, 0x3C($sp)
    /* DA470 800CB4C0 163EFFD2 */  bne        $s1, $fp, .L800CB40C_DA3BC
    /* DA474 800CB4C4 00000000 */   nop
  .L800CB4C8_DA478:
    /* DA478 800CB4C8 8FBF003C */  lw         $ra, 0x3C($sp)
  .L800CB4CC_DA47C:
    /* DA47C 800CB4CC 8FB00018 */  lw         $s0, 0x18($sp)
    /* DA480 800CB4D0 8FB1001C */  lw         $s1, 0x1C($sp)
    /* DA484 800CB4D4 8FB20020 */  lw         $s2, 0x20($sp)
    /* DA488 800CB4D8 8FB30024 */  lw         $s3, 0x24($sp)
    /* DA48C 800CB4DC 8FB40028 */  lw         $s4, 0x28($sp)
    /* DA490 800CB4E0 8FB5002C */  lw         $s5, 0x2C($sp)
    /* DA494 800CB4E4 8FB60030 */  lw         $s6, 0x30($sp)
    /* DA498 800CB4E8 8FB70034 */  lw         $s7, 0x34($sp)
    /* DA49C 800CB4EC 8FBE0038 */  lw         $fp, 0x38($sp)
    /* DA4A0 800CB4F0 03E00008 */  jr         $ra
    /* DA4A4 800CB4F4 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800CB394_DA344
