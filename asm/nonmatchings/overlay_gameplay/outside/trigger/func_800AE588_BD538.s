nonmatching func_800AE588_BD538, 0x144

glabel func_800AE588_BD538
    /* BD538 800AE588 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* BD53C 800AE58C 3C018015 */  lui        $at, %hi(D_8014F820)
    /* BD540 800AE590 AC20F820 */  sw         $zero, %lo(D_8014F820)($at)
    /* BD544 800AE594 3C018015 */  lui        $at, %hi(D_8014F824)
    /* BD548 800AE598 3C028022 */  lui        $v0, %hi(D_80223768)
    /* BD54C 800AE59C 3C068022 */  lui        $a2, %hi(D_80223780)
    /* BD550 800AE5A0 AFBF0024 */  sw         $ra, 0x24($sp)
    /* BD554 800AE5A4 AFB30020 */  sw         $s3, 0x20($sp)
    /* BD558 800AE5A8 AFB2001C */  sw         $s2, 0x1C($sp)
    /* BD55C 800AE5AC AFB10018 */  sw         $s1, 0x18($sp)
    /* BD560 800AE5B0 AFB00014 */  sw         $s0, 0x14($sp)
    /* BD564 800AE5B4 AC20F824 */  sw         $zero, %lo(D_8014F824)($at)
    /* BD568 800AE5B8 24C63780 */  addiu      $a2, $a2, %lo(D_80223780)
    /* BD56C 800AE5BC 24423768 */  addiu      $v0, $v0, %lo(D_80223768)
    /* BD570 800AE5C0 240400CF */  addiu      $a0, $zero, 0xCF
    /* BD574 800AE5C4 24070014 */  addiu      $a3, $zero, 0x14
    /* BD578 800AE5C8 24050002 */  addiu      $a1, $zero, 0x2
  .L800AE5CC_BD57C:
    /* BD57C 800AE5CC 904E0000 */  lbu        $t6, 0x0($v0)
    /* BD580 800AE5D0 54AE000C */  bnel       $a1, $t6, .L800AE604_BD5B4
    /* BD584 800AE5D4 00801825 */   or        $v1, $a0, $zero
    /* BD588 800AE5D8 904F0009 */  lbu        $t7, 0x9($v0)
    /* BD58C 800AE5DC 01E70019 */  multu      $t7, $a3
    /* BD590 800AE5E0 0000C012 */  mflo       $t8
    /* BD594 800AE5E4 00D81821 */  addu       $v1, $a2, $t8
    /* BD598 800AE5E8 84790002 */  lh         $t9, 0x2($v1)
    /* BD59C 800AE5EC 84690004 */  lh         $t1, 0x4($v1)
    /* BD5A0 800AE5F0 00194203 */  sra        $t0, $t9, 8
    /* BD5A4 800AE5F4 00095203 */  sra        $t2, $t1, 8
    /* BD5A8 800AE5F8 A0480001 */  sb         $t0, 0x1($v0)
    /* BD5AC 800AE5FC A04A0002 */  sb         $t2, 0x2($v0)
    /* BD5B0 800AE600 00801825 */  or         $v1, $a0, $zero
  .L800AE604_BD5B4:
    /* BD5B4 800AE604 2442FFF0 */  addiu      $v0, $v0, -0x10
    /* BD5B8 800AE608 1480FFF0 */  bnez       $a0, .L800AE5CC_BD57C
    /* BD5BC 800AE60C 2484FFFF */   addiu     $a0, $a0, -0x1
    /* BD5C0 800AE610 3C118005 */  lui        $s1, %hi(D_80048038)
    /* BD5C4 800AE614 3C108022 */  lui        $s0, %hi(D_80223780)
    /* BD5C8 800AE618 3C138022 */  lui        $s3, %hi(D_80224680)
    /* BD5CC 800AE61C 26734680 */  addiu      $s3, $s3, %lo(D_80224680)
    /* BD5D0 800AE620 26103780 */  addiu      $s0, $s0, %lo(D_80223780)
    /* BD5D4 800AE624 26318038 */  addiu      $s1, $s1, %lo(D_80048038)
    /* BD5D8 800AE628 2412FFFF */  addiu      $s2, $zero, -0x1
  .L800AE62C_BD5DC:
    /* BD5DC 800AE62C A2200000 */  sb         $zero, 0x0($s1)
    /* BD5E0 800AE630 A2000010 */  sb         $zero, 0x10($s0)
    /* BD5E4 800AE634 86040002 */  lh         $a0, 0x2($s0)
    /* BD5E8 800AE638 0C02C3C8 */  jal        func_800B0F20_BFED0
    /* BD5EC 800AE63C 86050004 */   lh        $a1, 0x4($s0)
    /* BD5F0 800AE640 26100014 */  addiu      $s0, $s0, 0x14
    /* BD5F4 800AE644 26310001 */  addiu      $s1, $s1, 0x1
    /* BD5F8 800AE648 A202FFFE */  sb         $v0, -0x2($s0)
    /* BD5FC 800AE64C 1613FFF7 */  bne        $s0, $s3, .L800AE62C_BD5DC
    /* BD600 800AE650 A212FFFF */   sb        $s2, -0x1($s0)
    /* BD604 800AE654 3C048014 */  lui        $a0, %hi(D_80142B10)
    /* BD608 800AE658 0C00731B */  jal        osSyncPrintf
    /* BD60C 800AE65C 24842B10 */   addiu     $a0, $a0, %lo(D_80142B10)
    /* BD610 800AE660 3C108004 */  lui        $s0, %hi(D_80047F98)
    /* BD614 800AE664 26107F98 */  addiu      $s0, $s0, %lo(D_80047F98)
    /* BD618 800AE668 3C048014 */  lui        $a0, %hi(D_80142B28)
    /* BD61C 800AE66C 24842B28 */  addiu      $a0, $a0, %lo(D_80142B28)
    /* BD620 800AE670 0C00731B */  jal        osSyncPrintf
    /* BD624 800AE674 8E050000 */   lw        $a1, 0x0($s0)
    /* BD628 800AE678 3C048014 */  lui        $a0, %hi(D_80142B38)
    /* BD62C 800AE67C 0C00731B */  jal        osSyncPrintf
    /* BD630 800AE680 24842B38 */   addiu     $a0, $a0, %lo(D_80142B38)
    /* BD634 800AE684 3C0B8004 */  lui        $t3, %hi(currentLevel)
    /* BD638 800AE688 8D6B7F90 */  lw         $t3, %lo(currentLevel)($t3)
    /* BD63C 800AE68C 24010005 */  addiu      $at, $zero, 0x5
    /* BD640 800AE690 51610008 */  beql       $t3, $at, .L800AE6B4_BD664
    /* BD644 800AE694 8FBF0024 */   lw        $ra, 0x24($sp)
    /* BD648 800AE698 0C01D58B */  jal        func_8007562C_845DC
    /* BD64C 800AE69C 00000000 */   nop
    /* BD650 800AE6A0 0C02C20C */  jal        func_800B0830_BF7E0
    /* BD654 800AE6A4 8E040000 */   lw        $a0, 0x0($s0)
    /* BD658 800AE6A8 0C02C237 */  jal        func_800B08DC_BF88C
    /* BD65C 800AE6AC 8E040000 */   lw        $a0, 0x0($s0)
    /* BD660 800AE6B0 8FBF0024 */  lw         $ra, 0x24($sp)
  .L800AE6B4_BD664:
    /* BD664 800AE6B4 8FB00014 */  lw         $s0, 0x14($sp)
    /* BD668 800AE6B8 8FB10018 */  lw         $s1, 0x18($sp)
    /* BD66C 800AE6BC 8FB2001C */  lw         $s2, 0x1C($sp)
    /* BD670 800AE6C0 8FB30020 */  lw         $s3, 0x20($sp)
    /* BD674 800AE6C4 03E00008 */  jr         $ra
    /* BD678 800AE6C8 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_800AE588_BD538
