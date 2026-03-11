nonmatching func_800C56A4_D4654, 0x1F0

glabel func_800C56A4_D4654
    /* D4654 800C56A4 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* D4658 800C56A8 3C0E8015 */  lui        $t6, %hi(D_80156ED9)
    /* D465C 800C56AC 91CE6ED9 */  lbu        $t6, %lo(D_80156ED9)($t6)
    /* D4660 800C56B0 24080002 */  addiu      $t0, $zero, 0x2
    /* D4664 800C56B4 AFBF002C */  sw         $ra, 0x2C($sp)
    /* D4668 800C56B8 AFB20028 */  sw         $s2, 0x28($sp)
    /* D466C 800C56BC AFB10024 */  sw         $s1, 0x24($sp)
    /* D4670 800C56C0 AFB00020 */  sw         $s0, 0x20($sp)
    /* D4674 800C56C4 AFA40030 */  sw         $a0, 0x30($sp)
    /* D4678 800C56C8 AFA50034 */  sw         $a1, 0x34($sp)
    /* D467C 800C56CC AFA60038 */  sw         $a2, 0x38($sp)
    /* D4680 800C56D0 110E006A */  beq        $t0, $t6, .L800C587C_D482C
    /* D4684 800C56D4 AFA7003C */   sw        $a3, 0x3C($sp)
    /* D4688 800C56D8 93A30047 */  lbu        $v1, 0x47($sp)
    /* D468C 800C56DC 3C028015 */  lui        $v0, %hi(D_80156ED8)
    /* D4690 800C56E0 28610029 */  slti       $at, $v1, 0x29
    /* D4694 800C56E4 14200002 */  bnez       $at, .L800C56F0_D46A0
    /* D4698 800C56E8 00000000 */   nop
    /* D469C 800C56EC 24030028 */  addiu      $v1, $zero, 0x28
  .L800C56F0_D46A0:
    /* D46A0 800C56F0 90426ED8 */  lbu        $v0, %lo(D_80156ED8)($v0)
    /* D46A4 800C56F4 24010001 */  addiu      $at, $zero, 0x1
    /* D46A8 800C56F8 50410004 */  beql       $v0, $at, .L800C570C_D46BC
    /* D46AC 800C56FC 00001825 */   or        $v1, $zero, $zero
    /* D46B0 800C5700 15020002 */  bne        $t0, $v0, .L800C570C_D46BC
    /* D46B4 800C5704 00000000 */   nop
    /* D46B8 800C5708 00001825 */  or         $v1, $zero, $zero
  .L800C570C_D46BC:
    /* D46BC 800C570C 1060005B */  beqz       $v1, .L800C587C_D482C
    /* D46C0 800C5710 00609025 */   or        $s2, $v1, $zero
    /* D46C4 800C5714 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* D46C8 800C5718 44810000 */  mtc1       $at, $f0
    /* D46CC 800C571C 3C018004 */  lui        $at, %hi(D_80047954)
    /* D46D0 800C5720 C4247954 */  lwc1       $f4, %lo(D_80047954)($at)
    /* D46D4 800C5724 3C018004 */  lui        $at, %hi(D_8004795C)
    /* D46D8 800C5728 C42A795C */  lwc1       $f10, %lo(D_8004795C)($at)
    /* D46DC 800C572C 46002182 */  mul.s      $f6, $f4, $f0
    /* D46E0 800C5730 3C0B8004 */  lui        $t3, %hi(D_80047950)
    /* D46E4 800C5734 856B7950 */  lh         $t3, %lo(D_80047950)($t3)
    /* D46E8 800C5738 46005402 */  mul.s      $f16, $f10, $f0
    /* D46EC 800C573C 240C4000 */  addiu      $t4, $zero, 0x4000
    /* D46F0 800C5740 018B6823 */  subu       $t5, $t4, $t3
    /* D46F4 800C5744 AFAD0014 */  sw         $t5, 0x14($sp)
    /* D46F8 800C5748 87A40032 */  lh         $a0, 0x32($sp)
    /* D46FC 800C574C 87A5003A */  lh         $a1, 0x3A($sp)
    /* D4700 800C5750 4600320D */  trunc.w.s  $f8, $f6
    /* D4704 800C5754 97A6003E */  lhu        $a2, 0x3E($sp)
    /* D4708 800C5758 4600848D */  trunc.w.s  $f18, $f16
    /* D470C 800C575C 44074000 */  mfc1       $a3, $f8
    /* D4710 800C5760 440A9000 */  mfc1       $t2, $f18
    /* D4714 800C5764 0007C400 */  sll        $t8, $a3, 16
    /* D4718 800C5768 00183C03 */  sra        $a3, $t8, 16
    /* D471C 800C576C 0C02E4EB */  jal        func_800B93AC_C835C
    /* D4720 800C5770 AFAA0010 */   sw        $t2, 0x10($sp)
    /* D4724 800C5774 50400042 */  beql       $v0, $zero, .L800C5880_D4830
    /* D4728 800C5778 8FBF002C */   lw        $ra, 0x2C($sp)
    /* D472C 800C577C 0C030535 */  jal        func_800C14D4_D0484
    /* D4730 800C5780 24040002 */   addiu     $a0, $zero, 0x2
    /* D4734 800C5784 240100FB */  addiu      $at, $zero, 0xFB
    /* D4738 800C5788 1041003C */  beq        $v0, $at, .L800C587C_D482C
    /* D473C 800C578C 305100FF */   andi      $s1, $v0, 0xFF
    /* D4740 800C5790 322400FF */  andi       $a0, $s1, 0xFF
    /* D4744 800C5794 0C0305ED */  jal        func_800C17B4_D0764
    /* D4748 800C5798 00002825 */   or        $a1, $zero, $zero
    /* D474C 800C579C 2401FFFD */  addiu      $at, $zero, -0x3
    /* D4750 800C57A0 14410008 */  bne        $v0, $at, .L800C57C4_D4774
    /* D4754 800C57A4 240600FF */   addiu     $a2, $zero, 0xFF
    /* D4758 800C57A8 3C048014 */  lui        $a0, %hi(D_80143554)
    /* D475C 800C57AC 0C00731B */  jal        osSyncPrintf
    /* D4760 800C57B0 24843554 */   addiu     $a0, $a0, %lo(D_80143554)
    /* D4764 800C57B4 0C0304E1 */  jal        func_800C1384_D0334
    /* D4768 800C57B8 322400FF */   andi      $a0, $s1, 0xFF
    /* D476C 800C57BC 10000030 */  b          .L800C5880_D4830
    /* D4770 800C57C0 8FBF002C */   lw        $ra, 0x2C($sp)
  .L800C57C4_D4774:
    /* D4774 800C57C4 00022C00 */  sll        $a1, $v0, 16
    /* D4778 800C57C8 0005C403 */  sra        $t8, $a1, 16
    /* D477C 800C57CC 001848C0 */  sll        $t1, $t8, 3
    /* D4780 800C57D0 01384823 */  subu       $t1, $t1, $t8
    /* D4784 800C57D4 3C0A8015 */  lui        $t2, %hi(D_80154318)
    /* D4788 800C57D8 00117080 */  sll        $t6, $s1, 2
    /* D478C 800C57DC 254A4318 */  addiu      $t2, $t2, %lo(D_80154318)
    /* D4790 800C57E0 00094880 */  sll        $t1, $t1, 2
    /* D4794 800C57E4 01D17023 */  subu       $t6, $t6, $s1
    /* D4798 800C57E8 3C0F8015 */  lui        $t7, %hi(D_80154088)
    /* D479C 800C57EC 012A1821 */  addu       $v1, $t1, $t2
    /* D47A0 800C57F0 25EF4088 */  addiu      $t7, $t7, %lo(D_80154088)
    /* D47A4 800C57F4 000E7080 */  sll        $t6, $t6, 2
    /* D47A8 800C57F8 01CF2021 */  addu       $a0, $t6, $t7
    /* D47AC 800C57FC 90990001 */  lbu        $t9, 0x1($a0)
    /* D47B0 800C5800 93AC004B */  lbu        $t4, 0x4B($sp)
    /* D47B4 800C5804 87AB0032 */  lh         $t3, 0x32($sp)
    /* D47B8 800C5808 A0990001 */  sb         $t9, 0x1($a0)
    /* D47BC 800C580C 87AD0036 */  lh         $t5, 0x36($sp)
    /* D47C0 800C5810 87AE003A */  lh         $t6, 0x3A($sp)
    /* D47C4 800C5814 87AF003E */  lh         $t7, 0x3E($sp)
    /* D47C8 800C5818 93B90043 */  lbu        $t9, 0x43($sp)
    /* D47CC 800C581C A498000A */  sh         $t8, 0xA($a0)
    /* D47D0 800C5820 24180002 */  addiu      $t8, $zero, 0x2
    /* D47D4 800C5824 A066000E */  sb         $a2, 0xE($v1)
    /* D47D8 800C5828 A066000F */  sb         $a2, 0xF($v1)
    /* D47DC 800C582C A0660010 */  sb         $a2, 0x10($v1)
    /* D47E0 800C5830 A0780012 */  sb         $t8, 0x12($v1)
    /* D47E4 800C5834 00008025 */  or         $s0, $zero, $zero
    /* D47E8 800C5838 A46C0002 */  sh         $t4, 0x2($v1)
    /* D47EC 800C583C A46B0008 */  sh         $t3, 0x8($v1)
    /* D47F0 800C5840 A46D000A */  sh         $t5, 0xA($v1)
    /* D47F4 800C5844 A46E000C */  sh         $t6, 0xC($v1)
    /* D47F8 800C5848 A46F0014 */  sh         $t7, 0x14($v1)
    /* D47FC 800C584C 1A40000B */  blez       $s2, .L800C587C_D482C
    /* D4800 800C5850 A0790011 */   sb        $t9, 0x11($v1)
  .L800C5854_D4804:
    /* D4804 800C5854 322400FF */  andi       $a0, $s1, 0xFF
    /* D4808 800C5858 00002825 */  or         $a1, $zero, $zero
    /* D480C 800C585C 00003025 */  or         $a2, $zero, $zero
    /* D4810 800C5860 0C0313D2 */  jal        func_800C4F48_D3EF8
    /* D4814 800C5864 00003825 */   or        $a3, $zero, $zero
    /* D4818 800C5868 26100001 */  addiu      $s0, $s0, 0x1
    /* D481C 800C586C 320900FF */  andi       $t1, $s0, 0xFF
    /* D4820 800C5870 0132082A */  slt        $at, $t1, $s2
    /* D4824 800C5874 1420FFF7 */  bnez       $at, .L800C5854_D4804
    /* D4828 800C5878 01208025 */   or        $s0, $t1, $zero
  .L800C587C_D482C:
    /* D482C 800C587C 8FBF002C */  lw         $ra, 0x2C($sp)
  .L800C5880_D4830:
    /* D4830 800C5880 8FB00020 */  lw         $s0, 0x20($sp)
    /* D4834 800C5884 8FB10024 */  lw         $s1, 0x24($sp)
    /* D4838 800C5888 8FB20028 */  lw         $s2, 0x28($sp)
    /* D483C 800C588C 03E00008 */  jr         $ra
    /* D4840 800C5890 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_800C56A4_D4654
