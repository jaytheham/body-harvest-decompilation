nonmatching func_800AB570_BA520, 0x160

glabel func_800AB570_BA520
    /* BA520 800AB570 308E00FF */  andi       $t6, $a0, 0xFF
    /* BA524 800AB574 000E7880 */  sll        $t7, $t6, 2
    /* BA528 800AB578 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* BA52C 800AB57C 01EE7821 */  addu       $t7, $t7, $t6
    /* BA530 800AB580 3C188005 */  lui        $t8, %hi(alienInstances)
    /* BA534 800AB584 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* BA538 800AB588 000F7900 */  sll        $t7, $t7, 4
    /* BA53C 800AB58C AFBF0014 */  sw         $ra, 0x14($sp)
    /* BA540 800AB590 AFA40048 */  sw         $a0, 0x48($sp)
    /* BA544 800AB594 01F81821 */  addu       $v1, $t7, $t8
    /* BA548 800AB598 241900C0 */  addiu      $t9, $zero, 0xC0
    /* BA54C 800AB59C 01C02025 */  or         $a0, $t6, $zero
    /* BA550 800AB5A0 A4790048 */  sh         $t9, 0x48($v1)
    /* BA554 800AB5A4 AFA30020 */  sw         $v1, 0x20($sp)
    /* BA558 800AB5A8 0C020210 */  jal        func_80080840_8F7F0
    /* BA55C 800AB5AC 24050023 */   addiu     $a1, $zero, 0x23
    /* BA560 800AB5B0 10400007 */  beqz       $v0, .L800AB5D0_BA580
    /* BA564 800AB5B4 8FA30020 */   lw        $v1, 0x20($sp)
    /* BA568 800AB5B8 906B0024 */  lbu        $t3, 0x24($v1)
    /* BA56C 800AB5BC A4600048 */  sh         $zero, 0x48($v1)
    /* BA570 800AB5C0 A0600036 */  sb         $zero, 0x36($v1)
    /* BA574 800AB5C4 256C0001 */  addiu      $t4, $t3, 0x1
    /* BA578 800AB5C8 1000003D */  b          .L800AB6C0_BA670
    /* BA57C 800AB5CC A06C0024 */   sb        $t4, 0x24($v1)
  .L800AB5D0_BA580:
    /* BA580 800AB5D0 24040064 */  addiu      $a0, $zero, 0x64
    /* BA584 800AB5D4 27A50046 */  addiu      $a1, $sp, 0x46
    /* BA588 800AB5D8 27A60044 */  addiu      $a2, $sp, 0x44
    /* BA58C 800AB5DC 27A70042 */  addiu      $a3, $sp, 0x42
    /* BA590 800AB5E0 0C046CFC */  jal        func_8011B3F0_12A3A0
    /* BA594 800AB5E4 AFA30020 */   sw        $v1, 0x20($sp)
    /* BA598 800AB5E8 8FA30020 */  lw         $v1, 0x20($sp)
    /* BA59C 800AB5EC 87A90046 */  lh         $t1, 0x46($sp)
    /* BA5A0 800AB5F0 87AA0042 */  lh         $t2, 0x42($sp)
    /* BA5A4 800AB5F4 846D0000 */  lh         $t5, 0x0($v1)
    /* BA5A8 800AB5F8 846E0004 */  lh         $t6, 0x4($v1)
    /* BA5AC 800AB5FC 240F0014 */  addiu      $t7, $zero, 0x14
    /* BA5B0 800AB600 01A92023 */  subu       $a0, $t5, $t1
    /* BA5B4 800AB604 00043023 */  negu       $a2, $a0
    /* BA5B8 800AB608 00C4082A */  slt        $at, $a2, $a0
    /* BA5BC 800AB60C 10200003 */  beqz       $at, .L800AB61C_BA5CC
    /* BA5C0 800AB610 01CA2823 */   subu      $a1, $t6, $t2
    /* BA5C4 800AB614 10000002 */  b          .L800AB620_BA5D0
    /* BA5C8 800AB618 00804025 */   or        $t0, $a0, $zero
  .L800AB61C_BA5CC:
    /* BA5CC 800AB61C 00C04025 */  or         $t0, $a2, $zero
  .L800AB620_BA5D0:
    /* BA5D0 800AB620 00051023 */  negu       $v0, $a1
    /* BA5D4 800AB624 0045082A */  slt        $at, $v0, $a1
    /* BA5D8 800AB628 10200003 */  beqz       $at, .L800AB638_BA5E8
    /* BA5DC 800AB62C 00403825 */   or        $a3, $v0, $zero
    /* BA5E0 800AB630 10000001 */  b          .L800AB638_BA5E8
    /* BA5E4 800AB634 00A03825 */   or        $a3, $a1, $zero
  .L800AB638_BA5E8:
    /* BA5E8 800AB638 00E8082A */  slt        $at, $a3, $t0
    /* BA5EC 800AB63C 10200008 */  beqz       $at, .L800AB660_BA610
    /* BA5F0 800AB640 24180064 */   addiu     $t8, $zero, 0x64
    /* BA5F4 800AB644 00C4082A */  slt        $at, $a2, $a0
    /* BA5F8 800AB648 10200003 */  beqz       $at, .L800AB658_BA608
    /* BA5FC 800AB64C 00C01025 */   or        $v0, $a2, $zero
    /* BA600 800AB650 1000000A */  b          .L800AB67C_BA62C
    /* BA604 800AB654 288104B0 */   slti      $at, $a0, 0x4B0
  .L800AB658_BA608:
    /* BA608 800AB658 10000007 */  b          .L800AB678_BA628
    /* BA60C 800AB65C 00402025 */   or        $a0, $v0, $zero
  .L800AB660_BA610:
    /* BA610 800AB660 0045082A */  slt        $at, $v0, $a1
    /* BA614 800AB664 10200003 */  beqz       $at, .L800AB674_BA624
    /* BA618 800AB668 00403025 */   or        $a2, $v0, $zero
    /* BA61C 800AB66C 10000001 */  b          .L800AB674_BA624
    /* BA620 800AB670 00A03025 */   or        $a2, $a1, $zero
  .L800AB674_BA624:
    /* BA624 800AB674 00C02025 */  or         $a0, $a2, $zero
  .L800AB678_BA628:
    /* BA628 800AB678 288104B0 */  slti       $at, $a0, 0x4B0
  .L800AB67C_BA62C:
    /* BA62C 800AB67C 50200011 */  beql       $at, $zero, .L800AB6C4_BA674
    /* BA630 800AB680 8FBF0014 */   lw        $ra, 0x14($sp)
    /* BA634 800AB684 8C6B0020 */  lw         $t3, 0x20($v1)
    /* BA638 800AB688 3C01FFFD */  lui        $at, (0xFFFDFE5F >> 16)
    /* BA63C 800AB68C 3421FE5F */  ori        $at, $at, (0xFFFDFE5F & 0xFFFF)
    /* BA640 800AB690 87B90044 */  lh         $t9, 0x44($sp)
    /* BA644 800AB694 01616024 */  and        $t4, $t3, $at
    /* BA648 800AB698 A06F0024 */  sb         $t7, 0x24($v1)
    /* BA64C 800AB69C AC6C0020 */  sw         $t4, 0x20($v1)
    /* BA650 800AB6A0 358E0100 */  ori        $t6, $t4, 0x100
    /* BA654 800AB6A4 240F00A0 */  addiu      $t7, $zero, 0xA0
    /* BA658 800AB6A8 A4780038 */  sh         $t8, 0x38($v1)
    /* BA65C 800AB6AC A4690014 */  sh         $t1, 0x14($v1)
    /* BA660 800AB6B0 A46A0018 */  sh         $t2, 0x18($v1)
    /* BA664 800AB6B4 AC6E0020 */  sw         $t6, 0x20($v1)
    /* BA668 800AB6B8 A46F0048 */  sh         $t7, 0x48($v1)
    /* BA66C 800AB6BC A4790016 */  sh         $t9, 0x16($v1)
  .L800AB6C0_BA670:
    /* BA670 800AB6C0 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800AB6C4_BA674:
    /* BA674 800AB6C4 27BD0048 */  addiu      $sp, $sp, 0x48
    /* BA678 800AB6C8 03E00008 */  jr         $ra
    /* BA67C 800AB6CC 00000000 */   nop
endlabel func_800AB570_BA520
