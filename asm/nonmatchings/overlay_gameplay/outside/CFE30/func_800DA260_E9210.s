nonmatching func_800DA260_E9210, 0x148

glabel func_800DA260_E9210
    /* E9210 800DA260 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* E9214 800DA264 AFA60040 */  sw         $a2, 0x40($sp)
    /* E9218 800DA268 87AE0042 */  lh         $t6, 0x42($sp)
    /* E921C 800DA26C AFA40038 */  sw         $a0, 0x38($sp)
    /* E9220 800DA270 AFBF002C */  sw         $ra, 0x2C($sp)
    /* E9224 800DA274 AFA5003C */  sw         $a1, 0x3C($sp)
    /* E9228 800DA278 3C04800E */  lui        $a0, %hi(func_800D9FF8_E8FA8)
    /* E922C 800DA27C AFB00028 */  sw         $s0, 0x28($sp)
    /* E9230 800DA280 24849FF8 */  addiu      $a0, $a0, %lo(func_800D9FF8_E8FA8)
    /* E9234 800DA284 87A7003E */  lh         $a3, 0x3E($sp)
    /* E9238 800DA288 2405003C */  addiu      $a1, $zero, 0x3C
    /* E923C 800DA28C 87A6003A */  lh         $a2, 0x3A($sp)
    /* E9240 800DA290 0C03667D */  jal        func_800D99F4_E89A4
    /* E9244 800DA294 AFAE0010 */   sw        $t6, 0x10($sp)
    /* E9248 800DA298 00028400 */  sll        $s0, $v0, 16
    /* E924C 800DA29C 00107C03 */  sra        $t7, $s0, 16
    /* E9250 800DA2A0 2401FFFD */  addiu      $at, $zero, -0x3
    /* E9254 800DA2A4 1041003A */  beq        $v0, $at, .L800DA390_E9340
    /* E9258 800DA2A8 01E08025 */   or        $s0, $t7, $zero
    /* E925C 800DA2AC 3C040505 */  lui        $a0, %hi(D_5055C00)
    /* E9260 800DA2B0 2418003C */  addiu      $t8, $zero, 0x3C
    /* E9264 800DA2B4 AFB8001C */  sw         $t8, 0x1C($sp)
    /* E9268 800DA2B8 24845C00 */  addiu      $a0, $a0, %lo(D_5055C00)
    /* E926C 800DA2BC 87A5003A */  lh         $a1, 0x3A($sp)
    /* E9270 800DA2C0 87A6003E */  lh         $a2, 0x3E($sp)
    /* E9274 800DA2C4 87A70042 */  lh         $a3, 0x42($sp)
    /* E9278 800DA2C8 AFA00010 */  sw         $zero, 0x10($sp)
    /* E927C 800DA2CC AFA00014 */  sw         $zero, 0x14($sp)
    /* E9280 800DA2D0 0C036547 */  jal        func_800D951C_E84CC
    /* E9284 800DA2D4 AFA00018 */   sw        $zero, 0x18($sp)
    /* E9288 800DA2D8 00023400 */  sll        $a2, $v0, 16
    /* E928C 800DA2DC 0006CC03 */  sra        $t9, $a2, 16
    /* E9290 800DA2E0 2401FFFD */  addiu      $at, $zero, -0x3
    /* E9294 800DA2E4 14410007 */  bne        $v0, $at, .L800DA304_E92B4
    /* E9298 800DA2E8 03203025 */   or        $a2, $t9, $zero
    /* E929C 800DA2EC 00102400 */  sll        $a0, $s0, 16
    /* E92A0 800DA2F0 00044403 */  sra        $t0, $a0, 16
    /* E92A4 800DA2F4 0C036718 */  jal        func_800D9C60_E8C10
    /* E92A8 800DA2F8 01002025 */   or        $a0, $t0, $zero
    /* E92AC 800DA2FC 10000025 */  b          .L800DA394_E9344
    /* E92B0 800DA300 2402FFFD */   addiu     $v0, $zero, -0x3
  .L800DA304_E92B4:
    /* E92B4 800DA304 00102400 */  sll        $a0, $s0, 16
    /* E92B8 800DA308 00044C03 */  sra        $t1, $a0, 16
    /* E92BC 800DA30C 01202025 */  or         $a0, $t1, $zero
    /* E92C0 800DA310 00002825 */  or         $a1, $zero, $zero
    /* E92C4 800DA314 0C0366A3 */  jal        func_800D9A8C_E8A3C
    /* E92C8 800DA318 A7A60034 */   sh        $a2, 0x34($sp)
    /* E92CC 800DA31C 240A00E5 */  addiu      $t2, $zero, 0xE5
    /* E92D0 800DA320 240B0096 */  addiu      $t3, $zero, 0x96
    /* E92D4 800DA324 240C0063 */  addiu      $t4, $zero, 0x63
    /* E92D8 800DA328 AFAC0018 */  sw         $t4, 0x18($sp)
    /* E92DC 800DA32C AFAB0014 */  sw         $t3, 0x14($sp)
    /* E92E0 800DA330 AFAA0010 */  sw         $t2, 0x10($sp)
    /* E92E4 800DA334 87A4003A */  lh         $a0, 0x3A($sp)
    /* E92E8 800DA338 87A5003E */  lh         $a1, 0x3E($sp)
    /* E92EC 800DA33C 87A60042 */  lh         $a2, 0x42($sp)
    /* E92F0 800DA340 0C034379 */  jal        func_800D0DE4_DFD94
    /* E92F4 800DA344 24070032 */   addiu     $a3, $zero, 0x32
    /* E92F8 800DA348 00023400 */  sll        $a2, $v0, 16
    /* E92FC 800DA34C 00066C03 */  sra        $t5, $a2, 16
    /* E9300 800DA350 2401FFFD */  addiu      $at, $zero, -0x3
    /* E9304 800DA354 14410009 */  bne        $v0, $at, .L800DA37C_E932C
    /* E9308 800DA358 01A03025 */   or        $a2, $t5, $zero
    /* E930C 800DA35C 00102400 */  sll        $a0, $s0, 16
    /* E9310 800DA360 00047403 */  sra        $t6, $a0, 16
    /* E9314 800DA364 0C036718 */  jal        func_800D9C60_E8C10
    /* E9318 800DA368 01C02025 */   or        $a0, $t6, $zero
    /* E931C 800DA36C 0C0365D5 */  jal        func_800D9754_E8704
    /* E9320 800DA370 87A40034 */   lh        $a0, 0x34($sp)
    /* E9324 800DA374 10000007 */  b          .L800DA394_E9344
    /* E9328 800DA378 2402FFFD */   addiu     $v0, $zero, -0x3
  .L800DA37C_E932C:
    /* E932C 800DA37C 00102400 */  sll        $a0, $s0, 16
    /* E9330 800DA380 00047C03 */  sra        $t7, $a0, 16
    /* E9334 800DA384 01E02025 */  or         $a0, $t7, $zero
    /* E9338 800DA388 0C0366A3 */  jal        func_800D9A8C_E8A3C
    /* E933C 800DA38C 24050001 */   addiu     $a1, $zero, 0x1
  .L800DA390_E9340:
    /* E9340 800DA390 02001025 */  or         $v0, $s0, $zero
  .L800DA394_E9344:
    /* E9344 800DA394 8FBF002C */  lw         $ra, 0x2C($sp)
    /* E9348 800DA398 8FB00028 */  lw         $s0, 0x28($sp)
    /* E934C 800DA39C 27BD0038 */  addiu      $sp, $sp, 0x38
    /* E9350 800DA3A0 03E00008 */  jr         $ra
    /* E9354 800DA3A4 00000000 */   nop
endlabel func_800DA260_E9210
