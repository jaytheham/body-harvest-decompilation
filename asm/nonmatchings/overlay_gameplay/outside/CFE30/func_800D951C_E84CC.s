nonmatching func_800D951C_E84CC, 0xB4

glabel func_800D951C_E84CC
    /* E84CC 800D951C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* E84D0 800D9520 AFBF0014 */  sw         $ra, 0x14($sp)
    /* E84D4 800D9524 AFA40018 */  sw         $a0, 0x18($sp)
    /* E84D8 800D9528 AFA5001C */  sw         $a1, 0x1C($sp)
    /* E84DC 800D952C AFA60020 */  sw         $a2, 0x20($sp)
    /* E84E0 800D9530 AFA70024 */  sw         $a3, 0x24($sp)
    /* E84E4 800D9534 24050001 */  addiu      $a1, $zero, 0x1
    /* E84E8 800D9538 0C030675 */  jal        func_800C19D4_D0984
    /* E84EC 800D953C 24040014 */   addiu     $a0, $zero, 0x14
    /* E84F0 800D9540 00023400 */  sll        $a2, $v0, 16
    /* E84F4 800D9544 00067403 */  sra        $t6, $a2, 16
    /* E84F8 800D9548 2401FFFD */  addiu      $at, $zero, -0x3
    /* E84FC 800D954C 1041001B */  beq        $v0, $at, .L800D95BC_E856C
    /* E8500 800D9550 01C03025 */   or        $a2, $t6, $zero
    /* E8504 800D9554 2408001C */  addiu      $t0, $zero, 0x1C
    /* E8508 800D9558 00480019 */  multu      $v0, $t0
    /* E850C 800D955C 3C078015 */  lui        $a3, %hi(D_80154318)
    /* E8510 800D9560 24E74318 */  addiu      $a3, $a3, %lo(D_80154318)
    /* E8514 800D9564 8FB80018 */  lw         $t8, 0x18($sp)
    /* E8518 800D9568 87B90036 */  lh         $t9, 0x36($sp)
    /* E851C 800D956C 87AA001E */  lh         $t2, 0x1E($sp)
    /* E8520 800D9570 87AB0022 */  lh         $t3, 0x22($sp)
    /* E8524 800D9574 87AC0026 */  lh         $t4, 0x26($sp)
    /* E8528 800D9578 87AD002A */  lh         $t5, 0x2A($sp)
    /* E852C 800D957C 87AE002E */  lh         $t6, 0x2E($sp)
    /* E8530 800D9580 00007812 */  mflo       $t7
    /* E8534 800D9584 00EF2021 */  addu       $a0, $a3, $t7
    /* E8538 800D9588 84850004 */  lh         $a1, 0x4($a0)
    /* E853C 800D958C AC980008 */  sw         $t8, 0x8($a0)
    /* E8540 800D9590 AC99000C */  sw         $t9, 0xC($a0)
    /* E8544 800D9594 00A80019 */  multu      $a1, $t0
    /* E8548 800D9598 87AF0032 */  lh         $t7, 0x32($sp)
    /* E854C 800D959C 00004812 */  mflo       $t1
    /* E8550 800D95A0 00E91821 */  addu       $v1, $a3, $t1
    /* E8554 800D95A4 A46A0008 */  sh         $t2, 0x8($v1)
    /* E8558 800D95A8 A46B000A */  sh         $t3, 0xA($v1)
    /* E855C 800D95AC A46C000C */  sh         $t4, 0xC($v1)
    /* E8560 800D95B0 A46D000E */  sh         $t5, 0xE($v1)
    /* E8564 800D95B4 A46E0010 */  sh         $t6, 0x10($v1)
    /* E8568 800D95B8 A46F0012 */  sh         $t7, 0x12($v1)
  .L800D95BC_E856C:
    /* E856C 800D95BC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* E8570 800D95C0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* E8574 800D95C4 00C01025 */  or         $v0, $a2, $zero
    /* E8578 800D95C8 03E00008 */  jr         $ra
    /* E857C 800D95CC 00000000 */   nop
endlabel func_800D951C_E84CC
