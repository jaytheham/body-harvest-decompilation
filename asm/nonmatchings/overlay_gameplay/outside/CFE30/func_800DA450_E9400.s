nonmatching func_800DA450_E9400, 0xC0

glabel func_800DA450_E9400
    /* E9400 800DA450 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* E9404 800DA454 AFA60030 */  sw         $a2, 0x30($sp)
    /* E9408 800DA458 87AE0032 */  lh         $t6, 0x32($sp)
    /* E940C 800DA45C AFA40028 */  sw         $a0, 0x28($sp)
    /* E9410 800DA460 AFBF0024 */  sw         $ra, 0x24($sp)
    /* E9414 800DA464 AFA5002C */  sw         $a1, 0x2C($sp)
    /* E9418 800DA468 AFA70034 */  sw         $a3, 0x34($sp)
    /* E941C 800DA46C 3C04800E */  lui        $a0, %hi(func_800DA3A8_E9358)
    /* E9420 800DA470 AFB00020 */  sw         $s0, 0x20($sp)
    /* E9424 800DA474 2484A3A8 */  addiu      $a0, $a0, %lo(func_800DA3A8_E9358)
    /* E9428 800DA478 87A7002E */  lh         $a3, 0x2E($sp)
    /* E942C 800DA47C 24057FFF */  addiu      $a1, $zero, 0x7FFF
    /* E9430 800DA480 87A6002A */  lh         $a2, 0x2A($sp)
    /* E9434 800DA484 0C03667D */  jal        func_800D99F4_E89A4
    /* E9438 800DA488 AFAE0010 */   sw        $t6, 0x10($sp)
    /* E943C 800DA48C 00028400 */  sll        $s0, $v0, 16
    /* E9440 800DA490 00107C03 */  sra        $t7, $s0, 16
    /* E9444 800DA494 2401FFFD */  addiu      $at, $zero, -0x3
    /* E9448 800DA498 10410018 */  beq        $v0, $at, .L800DA4FC_E94AC
    /* E944C 800DA49C 01E08025 */   or        $s0, $t7, $zero
    /* E9450 800DA4A0 000F2400 */  sll        $a0, $t7, 16
    /* E9454 800DA4A4 0004C403 */  sra        $t8, $a0, 16
    /* E9458 800DA4A8 03002025 */  or         $a0, $t8, $zero
    /* E945C 800DA4AC 00002825 */  or         $a1, $zero, $zero
    /* E9460 800DA4B0 0C0366A3 */  jal        func_800D9A8C_E8A3C
    /* E9464 800DA4B4 87A6002A */   lh        $a2, 0x2A($sp)
    /* E9468 800DA4B8 00102400 */  sll        $a0, $s0, 16
    /* E946C 800DA4BC 0004CC03 */  sra        $t9, $a0, 16
    /* E9470 800DA4C0 03202025 */  or         $a0, $t9, $zero
    /* E9474 800DA4C4 24050001 */  addiu      $a1, $zero, 0x1
    /* E9478 800DA4C8 0C0366A3 */  jal        func_800D9A8C_E8A3C
    /* E947C 800DA4CC 87A6002E */   lh        $a2, 0x2E($sp)
    /* E9480 800DA4D0 00102400 */  sll        $a0, $s0, 16
    /* E9484 800DA4D4 00044403 */  sra        $t0, $a0, 16
    /* E9488 800DA4D8 01002025 */  or         $a0, $t0, $zero
    /* E948C 800DA4DC 24050002 */  addiu      $a1, $zero, 0x2
    /* E9490 800DA4E0 0C0366A3 */  jal        func_800D9A8C_E8A3C
    /* E9494 800DA4E4 87A60032 */   lh        $a2, 0x32($sp)
    /* E9498 800DA4E8 00102400 */  sll        $a0, $s0, 16
    /* E949C 800DA4EC 00044C03 */  sra        $t1, $a0, 16
    /* E94A0 800DA4F0 01202025 */  or         $a0, $t1, $zero
    /* E94A4 800DA4F4 0C0366B5 */  jal        func_800D9AD4_E8A84
    /* E94A8 800DA4F8 93A50037 */   lbu       $a1, 0x37($sp)
  .L800DA4FC_E94AC:
    /* E94AC 800DA4FC 8FBF0024 */  lw         $ra, 0x24($sp)
    /* E94B0 800DA500 02001025 */  or         $v0, $s0, $zero
    /* E94B4 800DA504 8FB00020 */  lw         $s0, 0x20($sp)
    /* E94B8 800DA508 03E00008 */  jr         $ra
    /* E94BC 800DA50C 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_800DA450_E9400
