nonmatching func_800EB534_FA4E4, 0x298

glabel func_800EB534_FA4E4
    /* FA4E4 800EB534 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* FA4E8 800EB538 3C0E8015 */  lui        $t6, %hi(D_80157A48)
    /* FA4EC 800EB53C AFB00028 */  sw         $s0, 0x28($sp)
    /* FA4F0 800EB540 AFA70044 */  sw         $a3, 0x44($sp)
    /* FA4F4 800EB544 25CE7A48 */  addiu      $t6, $t6, %lo(D_80157A48)
    /* FA4F8 800EB548 00A03825 */  or         $a3, $a1, $zero
    /* FA4FC 800EB54C 00808025 */  or         $s0, $a0, $zero
    /* FA500 800EB550 AFBF002C */  sw         $ra, 0x2C($sp)
    /* FA504 800EB554 AFA5003C */  sw         $a1, 0x3C($sp)
    /* FA508 800EB558 AFA60040 */  sw         $a2, 0x40($sp)
    /* FA50C 800EB55C 00004025 */  or         $t0, $zero, $zero
    /* FA510 800EB560 148E000A */  bne        $a0, $t6, .L800EB58C_FA53C
    /* FA514 800EB564 00001825 */   or        $v1, $zero, $zero
    /* FA518 800EB568 3C048014 */  lui        $a0, %hi(D_80144320)
    /* FA51C 800EB56C 24844320 */  addiu      $a0, $a0, %lo(D_80144320)
    /* FA520 800EB570 AFA00030 */  sw         $zero, 0x30($sp)
    /* FA524 800EB574 AFA7003C */  sw         $a3, 0x3C($sp)
    /* FA528 800EB578 0C00731B */  jal        osSyncPrintf
    /* FA52C 800EB57C AFA00034 */   sw        $zero, 0x34($sp)
    /* FA530 800EB580 8FA30030 */  lw         $v1, 0x30($sp)
    /* FA534 800EB584 8FA7003C */  lw         $a3, 0x3C($sp)
    /* FA538 800EB588 8FA80034 */  lw         $t0, 0x34($sp)
  .L800EB58C_FA53C:
    /* FA53C 800EB58C 8E04040C */  lw         $a0, 0x40C($s0)
    /* FA540 800EB590 2881005C */  slti       $at, $a0, 0x5C
    /* FA544 800EB594 14200006 */  bnez       $at, .L800EB5B0_FA560
    /* FA548 800EB598 00801025 */   or        $v0, $a0, $zero
    /* FA54C 800EB59C 2401005C */  addiu      $at, $zero, 0x5C
    /* FA550 800EB5A0 10410013 */  beq        $v0, $at, .L800EB5F0_FA5A0
    /* FA554 800EB5A4 00000000 */   nop
    /* FA558 800EB5A8 1000001E */  b          .L800EB624_FA5D4
    /* FA55C 800EB5AC 00000000 */   nop
  .L800EB5B0_FA560:
    /* FA560 800EB5B0 28410029 */  slti       $at, $v0, 0x29
    /* FA564 800EB5B4 14200006 */  bnez       $at, .L800EB5D0_FA580
    /* FA568 800EB5B8 244FFFE9 */   addiu     $t7, $v0, -0x17
    /* FA56C 800EB5BC 2401005B */  addiu      $at, $zero, 0x5B
    /* FA570 800EB5C0 1041000B */  beq        $v0, $at, .L800EB5F0_FA5A0
    /* FA574 800EB5C4 00000000 */   nop
    /* FA578 800EB5C8 10000016 */  b          .L800EB624_FA5D4
    /* FA57C 800EB5CC 00000000 */   nop
  .L800EB5D0_FA580:
    /* FA580 800EB5D0 2DE10012 */  sltiu      $at, $t7, 0x12
    /* FA584 800EB5D4 10200013 */  beqz       $at, .L800EB624_FA5D4
    /* FA588 800EB5D8 000F7880 */   sll       $t7, $t7, 2
    /* FA58C 800EB5DC 3C018014 */  lui        $at, %hi(jtbl_80144420_overlay_gameplay_outside)
    /* FA590 800EB5E0 002F0821 */  addu       $at, $at, $t7
    /* FA594 800EB5E4 8C2F4420 */  lw         $t7, %lo(jtbl_80144420_overlay_gameplay_outside)($at)
    /* FA598 800EB5E8 01E00008 */  jr         $t7
    /* FA59C 800EB5EC 00000000 */   nop
  .L800EB5F0_FA5A0:
    /* FA5A0 800EB5F0 1000000C */  b          .L800EB624_FA5D4
    /* FA5A4 800EB5F4 24080001 */   addiu     $t0, $zero, 0x1
    /* FA5A8 800EB5F8 1000000A */  b          .L800EB624_FA5D4
    /* FA5AC 800EB5FC 24034000 */   addiu     $v1, $zero, 0x4000
    /* FA5B0 800EB600 10000008 */  b          .L800EB624_FA5D4
    /* FA5B4 800EB604 2403C000 */   addiu     $v1, $zero, -0x4000
    /* FA5B8 800EB608 10000006 */  b          .L800EB624_FA5D4
    /* FA5BC 800EB60C 2403A000 */   addiu     $v1, $zero, -0x6000
    /* FA5C0 800EB610 10000004 */  b          .L800EB624_FA5D4
    /* FA5C4 800EB614 2403E000 */   addiu     $v1, $zero, -0x2000
    /* FA5C8 800EB618 10000002 */  b          .L800EB624_FA5D4
    /* FA5CC 800EB61C 24036000 */   addiu     $v1, $zero, 0x6000
    /* FA5D0 800EB620 24032000 */  addiu      $v1, $zero, 0x2000
  .L800EB624_FA5D4:
    /* FA5D4 800EB624 1060000C */  beqz       $v1, .L800EB658_FA608
    /* FA5D8 800EB628 24010016 */   addiu     $at, $zero, 0x16
    /* FA5DC 800EB62C 3C068005 */  lui        $a2, %hi(D_80052B34)
    /* FA5E0 800EB630 24C62B34 */  addiu      $a2, $a2, %lo(D_80052B34)
    /* FA5E4 800EB634 8CC20000 */  lw         $v0, 0x0($a2)
    /* FA5E8 800EB638 3C058015 */  lui        $a1, %hi(D_80157600)
    /* FA5EC 800EB63C 24A57600 */  addiu      $a1, $a1, %lo(D_80157600)
    /* FA5F0 800EB640 8458000E */  lh         $t8, 0xE($v0)
    /* FA5F4 800EB644 24080001 */  addiu      $t0, $zero, 0x1
    /* FA5F8 800EB648 0303C821 */  addu       $t9, $t8, $v1
    /* FA5FC 800EB64C A459000E */  sh         $t9, 0xE($v0)
    /* FA600 800EB650 A4A00002 */  sh         $zero, 0x2($a1)
    /* FA604 800EB654 8E04040C */  lw         $a0, 0x40C($s0)
  .L800EB658_FA608:
    /* FA608 800EB658 8FAA0040 */  lw         $t2, 0x40($sp)
    /* FA60C 800EB65C 3C058015 */  lui        $a1, %hi(D_80157600)
    /* FA610 800EB660 3C068005 */  lui        $a2, %hi(D_80052B34)
    /* FA614 800EB664 24C62B34 */  addiu      $a2, $a2, %lo(D_80052B34)
    /* FA618 800EB668 11400002 */  beqz       $t2, .L800EB674_FA624
    /* FA61C 800EB66C 24A57600 */   addiu     $a1, $a1, %lo(D_80157600)
    /* FA620 800EB670 24080001 */  addiu      $t0, $zero, 0x1
  .L800EB674_FA624:
    /* FA624 800EB674 10810003 */  beq        $a0, $at, .L800EB684_FA634
    /* FA628 800EB678 24010017 */   addiu     $at, $zero, 0x17
    /* FA62C 800EB67C 54810007 */  bnel       $a0, $at, .L800EB69C_FA64C
    /* FA630 800EB680 24010018 */   addiu     $at, $zero, 0x18
  .L800EB684_FA634:
    /* FA634 800EB684 00004025 */  or         $t0, $zero, $zero
    /* FA638 800EB688 A4A00000 */  sh         $zero, 0x0($a1)
    /* FA63C 800EB68C A4A00002 */  sh         $zero, 0x2($a1)
    /* FA640 800EB690 10000017 */  b          .L800EB6F0_FA6A0
    /* FA644 800EB694 A4A00004 */   sh        $zero, 0x4($a1)
    /* FA648 800EB698 24010018 */  addiu      $at, $zero, 0x18
  .L800EB69C_FA64C:
    /* FA64C 800EB69C 54810009 */  bnel       $a0, $at, .L800EB6C4_FA674
    /* FA650 800EB6A0 24010010 */   addiu     $at, $zero, 0x10
    /* FA654 800EB6A4 8CC20000 */  lw         $v0, 0x0($a2)
    /* FA658 800EB6A8 34018000 */  ori        $at, $zero, 0x8000
    /* FA65C 800EB6AC 844B000E */  lh         $t3, 0xE($v0)
    /* FA660 800EB6B0 01616021 */  addu       $t4, $t3, $at
    /* FA664 800EB6B4 A44C000E */  sh         $t4, 0xE($v0)
    /* FA668 800EB6B8 1000000D */  b          .L800EB6F0_FA6A0
    /* FA66C 800EB6BC A4A00002 */   sh        $zero, 0x2($a1)
    /* FA670 800EB6C0 24010010 */  addiu      $at, $zero, 0x10
  .L800EB6C4_FA674:
    /* FA674 800EB6C4 1481000A */  bne        $a0, $at, .L800EB6F0_FA6A0
    /* FA678 800EB6C8 24090034 */   addiu     $t1, $zero, 0x34
    /* FA67C 800EB6CC 00890019 */  multu      $a0, $t1
    /* FA680 800EB6D0 3C038014 */  lui        $v1, %hi(D_8013E5AC)
    /* FA684 800EB6D4 2463E5AC */  addiu      $v1, $v1, %lo(D_8013E5AC)
    /* FA688 800EB6D8 8CD80000 */  lw         $t8, 0x0($a2)
    /* FA68C 800EB6DC 00006812 */  mflo       $t5
    /* FA690 800EB6E0 006D7021 */  addu       $t6, $v1, $t5
    /* FA694 800EB6E4 8DCF0010 */  lw         $t7, 0x10($t6)
    /* FA698 800EB6E8 A70F000E */  sh         $t7, 0xE($t8)
    /* FA69C 800EB6EC A4A00002 */  sh         $zero, 0x2($a1)
  .L800EB6F0_FA6A0:
    /* FA6A0 800EB6F0 3C038014 */  lui        $v1, %hi(D_8013E5AC)
    /* FA6A4 800EB6F4 2401FFFF */  addiu      $at, $zero, -0x1
    /* FA6A8 800EB6F8 2463E5AC */  addiu      $v1, $v1, %lo(D_8013E5AC)
    /* FA6AC 800EB6FC 10E1002E */  beq        $a3, $at, .L800EB7B8_FA768
    /* FA6B0 800EB700 24090034 */   addiu     $t1, $zero, 0x34
    /* FA6B4 800EB704 8E19040C */  lw         $t9, 0x40C($s0)
    /* FA6B8 800EB708 14F90005 */  bne        $a3, $t9, .L800EB720_FA6D0
    /* FA6BC 800EB70C 00000000 */   nop
    /* FA6C0 800EB710 8E0A0404 */  lw         $t2, 0x404($s0)
    /* FA6C4 800EB714 8D4B0E50 */  lw         $t3, 0xE50($t2)
    /* FA6C8 800EB718 55600028 */  bnel       $t3, $zero, .L800EB7BC_FA76C
    /* FA6CC 800EB71C 8FBF002C */   lw        $ra, 0x2C($sp)
  .L800EB720_FA6D0:
    /* FA6D0 800EB720 00E90019 */  multu      $a3, $t1
    /* FA6D4 800EB724 AE07040C */  sw         $a3, 0x40C($s0)
    /* FA6D8 800EB728 02002825 */  or         $a1, $s0, $zero
    /* FA6DC 800EB72C 24060010 */  addiu      $a2, $zero, 0x10
    /* FA6E0 800EB730 00006012 */  mflo       $t4
    /* FA6E4 800EB734 006C1021 */  addu       $v0, $v1, $t4
    /* FA6E8 800EB738 8C4D0004 */  lw         $t5, 0x4($v0)
    /* FA6EC 800EB73C 31AE0004 */  andi       $t6, $t5, 0x4
    /* FA6F0 800EB740 51C00014 */  beql       $t6, $zero, .L800EB794_FA744
    /* FA6F4 800EB744 8E040404 */   lw        $a0, 0x404($s0)
    /* FA6F8 800EB748 8C58000C */  lw         $t8, 0xC($v0)
    /* FA6FC 800EB74C 8E040404 */  lw         $a0, 0x404($s0)
    /* FA700 800EB750 8E050408 */  lw         $a1, 0x408($s0)
    /* FA704 800EB754 03090019 */  multu      $t8, $t1
    /* FA708 800EB758 8C4F0000 */  lw         $t7, 0x0($v0)
    /* FA70C 800EB75C C7A40044 */  lwc1       $f4, 0x44($sp)
    /* FA710 800EB760 02003025 */  or         $a2, $s0, $zero
    /* FA714 800EB764 24070010 */  addiu      $a3, $zero, 0x10
    /* FA718 800EB768 AFAF0010 */  sw         $t7, 0x10($sp)
    /* FA71C 800EB76C 0000C812 */  mflo       $t9
    /* FA720 800EB770 00795021 */  addu       $t2, $v1, $t9
    /* FA724 800EB774 8D4B0000 */  lw         $t3, 0x0($t2)
    /* FA728 800EB778 AFA8001C */  sw         $t0, 0x1C($sp)
    /* FA72C 800EB77C E7A40018 */  swc1       $f4, 0x18($sp)
    /* FA730 800EB780 0C0035C7 */  jal        func_8000D71C_E31C
    /* FA734 800EB784 AFAB0014 */   sw        $t3, 0x14($sp)
    /* FA738 800EB788 10000006 */  b          .L800EB7A4_FA754
    /* FA73C 800EB78C 44800000 */   mtc1      $zero, $f0
    /* FA740 800EB790 8E040404 */  lw         $a0, 0x404($s0)
  .L800EB794_FA744:
    /* FA744 800EB794 AFA80010 */  sw         $t0, 0x10($sp)
    /* FA748 800EB798 0C00337F */  jal        func_8000CDFC_D9FC
    /* FA74C 800EB79C 8C470000 */   lw        $a3, 0x0($v0)
    /* FA750 800EB7A0 44800000 */  mtc1       $zero, $f0
  .L800EB7A4_FA754:
    /* FA754 800EB7A4 00000000 */  nop
    /* FA758 800EB7A8 E6000414 */  swc1       $f0, 0x414($s0)
    /* FA75C 800EB7AC E6000418 */  swc1       $f0, 0x418($s0)
    /* FA760 800EB7B0 E6000008 */  swc1       $f0, 0x8($s0)
    /* FA764 800EB7B4 E6000010 */  swc1       $f0, 0x10($s0)
  .L800EB7B8_FA768:
    /* FA768 800EB7B8 8FBF002C */  lw         $ra, 0x2C($sp)
  .L800EB7BC_FA76C:
    /* FA76C 800EB7BC 8FB00028 */  lw         $s0, 0x28($sp)
    /* FA770 800EB7C0 27BD0038 */  addiu      $sp, $sp, 0x38
    /* FA774 800EB7C4 03E00008 */  jr         $ra
    /* FA778 800EB7C8 00000000 */   nop
endlabel func_800EB534_FA4E4
