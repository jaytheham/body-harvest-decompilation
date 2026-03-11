nonmatching func_800CB23C_DA1EC, 0x158

glabel func_800CB23C_DA1EC
    /* DA1EC 800CB23C 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* DA1F0 800CB240 87AA0042 */  lh         $t2, 0x42($sp)
    /* DA1F4 800CB244 00047400 */  sll        $t6, $a0, 16
    /* DA1F8 800CB248 0005C400 */  sll        $t8, $a1, 16
    /* DA1FC 800CB24C 00064400 */  sll        $t0, $a2, 16
    /* DA200 800CB250 2401FFFD */  addiu      $at, $zero, -0x3
    /* DA204 800CB254 00084C03 */  sra        $t1, $t0, 16
    /* DA208 800CB258 0018CC03 */  sra        $t9, $t8, 16
    /* DA20C 800CB25C 000E7C03 */  sra        $t7, $t6, 16
    /* DA210 800CB260 AFBF001C */  sw         $ra, 0x1C($sp)
    /* DA214 800CB264 AFB00018 */  sw         $s0, 0x18($sp)
    /* DA218 800CB268 AFA40030 */  sw         $a0, 0x30($sp)
    /* DA21C 800CB26C AFA50034 */  sw         $a1, 0x34($sp)
    /* DA220 800CB270 AFA60038 */  sw         $a2, 0x38($sp)
    /* DA224 800CB274 1141003F */  beq        $t2, $at, .L800CB374_DA324
    /* DA228 800CB278 AFA7003C */   sw        $a3, 0x3C($sp)
    /* DA22C 800CB27C 29410190 */  slti       $at, $t2, 0x190
    /* DA230 800CB280 1020003C */  beqz       $at, .L800CB374_DA324
    /* DA234 800CB284 000A58C0 */   sll       $t3, $t2, 3
    /* DA238 800CB288 016A5823 */  subu       $t3, $t3, $t2
    /* DA23C 800CB28C 3C0C8015 */  lui        $t4, %hi(D_80154318)
    /* DA240 800CB290 258C4318 */  addiu      $t4, $t4, %lo(D_80154318)
    /* DA244 800CB294 000B5880 */  sll        $t3, $t3, 2
    /* DA248 800CB298 016C8021 */  addu       $s0, $t3, $t4
    /* DA24C 800CB29C 920D0000 */  lbu        $t5, 0x0($s0)
    /* DA250 800CB2A0 31AE0001 */  andi       $t6, $t5, 0x1
    /* DA254 800CB2A4 11C00033 */  beqz       $t6, .L800CB374_DA324
    /* DA258 800CB2A8 00000000 */   nop
    /* DA25C 800CB2AC A60F0008 */  sh         $t7, 0x8($s0)
    /* DA260 800CB2B0 A619000A */  sh         $t9, 0xA($s0)
    /* DA264 800CB2B4 0C000E38 */  jal        func_800038E0_44E0
    /* DA268 800CB2B8 A609000C */   sh        $t1, 0xC($s0)
    /* DA26C 800CB2BC 2401003C */  addiu      $at, $zero, 0x3C
    /* DA270 800CB2C0 0041001A */  div        $zero, $v0, $at
    /* DA274 800CB2C4 00007810 */  mfhi       $t7
    /* DA278 800CB2C8 25F800C3 */  addiu      $t8, $t7, 0xC3
    /* DA27C 800CB2CC 26030008 */  addiu      $v1, $s0, 0x8
    /* DA280 800CB2D0 A0780006 */  sb         $t8, 0x6($v1)
    /* DA284 800CB2D4 0C000E38 */  jal        func_800038E0_44E0
    /* DA288 800CB2D8 AFA30024 */   sw        $v1, 0x24($sp)
    /* DA28C 800CB2DC 2401003C */  addiu      $at, $zero, 0x3C
    /* DA290 800CB2E0 0041001A */  div        $zero, $v0, $at
    /* DA294 800CB2E4 8FA30024 */  lw         $v1, 0x24($sp)
    /* DA298 800CB2E8 0000C810 */  mfhi       $t9
    /* DA29C 800CB2EC 272800C3 */  addiu      $t0, $t9, 0xC3
    /* DA2A0 800CB2F0 0C000E38 */  jal        func_800038E0_44E0
    /* DA2A4 800CB2F4 A0680007 */   sb        $t0, 0x7($v1)
    /* DA2A8 800CB2F8 2401003C */  addiu      $at, $zero, 0x3C
    /* DA2AC 800CB2FC 0041001A */  div        $zero, $v0, $at
    /* DA2B0 800CB300 8FA30024 */  lw         $v1, 0x24($sp)
    /* DA2B4 800CB304 00004810 */  mfhi       $t1
    /* DA2B8 800CB308 252A00C3 */  addiu      $t2, $t1, 0xC3
    /* DA2BC 800CB30C A06A0008 */  sb         $t2, 0x8($v1)
    /* DA2C0 800CB310 93A4003F */  lbu        $a0, 0x3F($sp)
    /* DA2C4 800CB314 54800003 */  bnel       $a0, $zero, .L800CB324_DA2D4
    /* DA2C8 800CB318 A6040002 */   sh        $a0, 0x2($s0)
    /* DA2CC 800CB31C 24040001 */  addiu      $a0, $zero, 0x1
    /* DA2D0 800CB320 A6040002 */  sh         $a0, 0x2($s0)
  .L800CB324_DA2D4:
    /* DA2D4 800CB324 9062000B */  lbu        $v0, 0xB($v1)
    /* DA2D8 800CB328 24010010 */  addiu      $at, $zero, 0x10
    /* DA2DC 800CB32C 00047880 */  sll        $t7, $a0, 2
    /* DA2E0 800CB330 10410006 */  beq        $v0, $at, .L800CB34C_DA2FC
    /* DA2E4 800CB334 25F8FFFF */   addiu     $t8, $t7, -0x1
    /* DA2E8 800CB338 28410015 */  slti       $at, $v0, 0x15
    /* DA2EC 800CB33C 14200009 */  bnez       $at, .L800CB364_DA314
    /* DA2F0 800CB340 2841001B */   slti      $at, $v0, 0x1B
    /* DA2F4 800CB344 50200008 */  beql       $at, $zero, .L800CB368_DA318
    /* DA2F8 800CB348 A0780009 */   sb        $t8, 0x9($v1)
  .L800CB34C_DA2FC:
    /* DA2FC 800CB34C 860B0002 */  lh         $t3, 0x2($s0)
    /* DA300 800CB350 000B6040 */  sll        $t4, $t3, 1
    /* DA304 800CB354 A60C0002 */  sh         $t4, 0x2($s0)
    /* DA308 800CB358 846D0002 */  lh         $t5, 0x2($v1)
    /* DA30C 800CB35C 25AE0005 */  addiu      $t6, $t5, 0x5
    /* DA310 800CB360 A46E0002 */  sh         $t6, 0x2($v1)
  .L800CB364_DA314:
    /* DA314 800CB364 A0780009 */  sb         $t8, 0x9($v1)
  .L800CB368_DA318:
    /* DA318 800CB368 8FB90044 */  lw         $t9, 0x44($sp)
    /* DA31C 800CB36C 10000004 */  b          .L800CB380_DA330
    /* DA320 800CB370 A079000C */   sb        $t9, 0xC($v1)
  .L800CB374_DA324:
    /* DA324 800CB374 3C048014 */  lui        $a0, %hi(D_80143644)
    /* DA328 800CB378 0C00731B */  jal        osSyncPrintf
    /* DA32C 800CB37C 24843644 */   addiu     $a0, $a0, %lo(D_80143644)
  .L800CB380_DA330:
    /* DA330 800CB380 8FBF001C */  lw         $ra, 0x1C($sp)
    /* DA334 800CB384 8FB00018 */  lw         $s0, 0x18($sp)
    /* DA338 800CB388 27BD0030 */  addiu      $sp, $sp, 0x30
    /* DA33C 800CB38C 03E00008 */  jr         $ra
    /* DA340 800CB390 00000000 */   nop
endlabel func_800CB23C_DA1EC
