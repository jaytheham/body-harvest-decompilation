nonmatching func_8012F4E0_13E490, 0x98C

glabel func_8012F4E0_13E490
    /* 13E490 8012F4E0 27BDFEE0 */  addiu      $sp, $sp, -0x120
    /* 13E494 8012F4E4 8FAF0138 */  lw         $t7, 0x138($sp)
    /* 13E498 8012F4E8 AFB1004C */  sw         $s1, 0x4C($sp)
    /* 13E49C 8012F4EC AFB00048 */  sw         $s0, 0x48($sp)
    /* 13E4A0 8012F4F0 240E0001 */  addiu      $t6, $zero, 0x1
    /* 13E4A4 8012F4F4 00A08025 */  or         $s0, $a1, $zero
    /* 13E4A8 8012F4F8 00808825 */  or         $s1, $a0, $zero
    /* 13E4AC 8012F4FC AFBF006C */  sw         $ra, 0x6C($sp)
    /* 13E4B0 8012F500 AFBE0068 */  sw         $fp, 0x68($sp)
    /* 13E4B4 8012F504 AFB70064 */  sw         $s7, 0x64($sp)
    /* 13E4B8 8012F508 AFB60060 */  sw         $s6, 0x60($sp)
    /* 13E4BC 8012F50C AFB5005C */  sw         $s5, 0x5C($sp)
    /* 13E4C0 8012F510 AFB40058 */  sw         $s4, 0x58($sp)
    /* 13E4C4 8012F514 AFB30054 */  sw         $s3, 0x54($sp)
    /* 13E4C8 8012F518 AFB20050 */  sw         $s2, 0x50($sp)
    /* 13E4CC 8012F51C F7BE0040 */  sdc1       $f30, 0x40($sp)
    /* 13E4D0 8012F520 F7BC0038 */  sdc1       $f28, 0x38($sp)
    /* 13E4D4 8012F524 F7BA0030 */  sdc1       $f26, 0x30($sp)
    /* 13E4D8 8012F528 F7B80028 */  sdc1       $f24, 0x28($sp)
    /* 13E4DC 8012F52C F7B60020 */  sdc1       $f22, 0x20($sp)
    /* 13E4E0 8012F530 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* 13E4E4 8012F534 AFA60128 */  sw         $a2, 0x128($sp)
    /* 13E4E8 8012F538 AFA7012C */  sw         $a3, 0x12C($sp)
    /* 13E4EC 8012F53C 11E00027 */  beqz       $t7, .L8012F5DC_13E58C
    /* 13E4F0 8012F540 AFAE00EC */   sw        $t6, 0xEC($sp)
    /* 13E4F4 8012F544 93B4013F */  lbu        $s4, 0x13F($sp)
    /* 13E4F8 8012F548 3C028016 */  lui        $v0, %hi(D_8015FF90)
    /* 13E4FC 8012F54C 2442FF90 */  addiu      $v0, $v0, %lo(D_8015FF90)
    /* 13E500 8012F550 32980004 */  andi       $t8, $s4, 0x4
    /* 13E504 8012F554 13000005 */  beqz       $t8, .L8012F56C_13E51C
    /* 13E508 8012F558 0300A025 */   or        $s4, $t8, $zero
    /* 13E50C 8012F55C 24190064 */  addiu      $t9, $zero, 0x64
    /* 13E510 8012F560 3C018016 */  lui        $at, %hi(D_8015FF88)
    /* 13E514 8012F564 10000003 */  b          .L8012F574_13E524
    /* 13E518 8012F568 AC39FF88 */   sw        $t9, %lo(D_8015FF88)($at)
  .L8012F56C_13E51C:
    /* 13E51C 8012F56C 3C018016 */  lui        $at, %hi(D_8015FF88)
    /* 13E520 8012F570 AC20FF88 */  sw         $zero, %lo(D_8015FF88)($at)
  .L8012F574_13E524:
    /* 13E524 8012F574 3C048016 */  lui        $a0, %hi(D_80160050)
    /* 13E528 8012F578 24840050 */  addiu      $a0, $a0, %lo(D_80160050)
    /* 13E52C 8012F57C 24030064 */  addiu      $v1, $zero, 0x64
  .L8012F580_13E530:
    /* 13E530 8012F580 52800004 */  beql       $s4, $zero, .L8012F594_13E544
    /* 13E534 8012F584 AC400000 */   sw        $zero, 0x0($v0)
    /* 13E538 8012F588 10000002 */  b          .L8012F594_13E544
    /* 13E53C 8012F58C AC430000 */   sw        $v1, 0x0($v0)
    /* 13E540 8012F590 AC400000 */  sw         $zero, 0x0($v0)
  .L8012F594_13E544:
    /* 13E544 8012F594 52800004 */  beql       $s4, $zero, .L8012F5A8_13E558
    /* 13E548 8012F598 AC400004 */   sw        $zero, 0x4($v0)
    /* 13E54C 8012F59C 10000002 */  b          .L8012F5A8_13E558
    /* 13E550 8012F5A0 AC430004 */   sw        $v1, 0x4($v0)
    /* 13E554 8012F5A4 AC400004 */  sw         $zero, 0x4($v0)
  .L8012F5A8_13E558:
    /* 13E558 8012F5A8 52800004 */  beql       $s4, $zero, .L8012F5BC_13E56C
    /* 13E55C 8012F5AC AC400008 */   sw        $zero, 0x8($v0)
    /* 13E560 8012F5B0 10000002 */  b          .L8012F5BC_13E56C
    /* 13E564 8012F5B4 AC430008 */   sw        $v1, 0x8($v0)
    /* 13E568 8012F5B8 AC400008 */  sw         $zero, 0x8($v0)
  .L8012F5BC_13E56C:
    /* 13E56C 8012F5BC 52800004 */  beql       $s4, $zero, .L8012F5D0_13E580
    /* 13E570 8012F5C0 AC40000C */   sw        $zero, 0xC($v0)
    /* 13E574 8012F5C4 10000002 */  b          .L8012F5D0_13E580
    /* 13E578 8012F5C8 AC43000C */   sw        $v1, 0xC($v0)
    /* 13E57C 8012F5CC AC40000C */  sw         $zero, 0xC($v0)
  .L8012F5D0_13E580:
    /* 13E580 8012F5D0 24420010 */  addiu      $v0, $v0, 0x10
    /* 13E584 8012F5D4 1444FFEA */  bne        $v0, $a0, .L8012F580_13E530
    /* 13E588 8012F5D8 00000000 */   nop
  .L8012F5DC_13E58C:
    /* 13E58C 8012F5DC 8FAC0134 */  lw         $t4, 0x134($sp)
    /* 13E590 8012F5E0 93AB013F */  lbu        $t3, 0x13F($sp)
    /* 13E594 8012F5E4 3C028016 */  lui        $v0, %hi(D_80160048)
    /* 13E598 8012F5E8 1180000D */  beqz       $t4, .L8012F620_13E5D0
    /* 13E59C 8012F5EC AFAB00A0 */   sw        $t3, 0xA0($sp)
    /* 13E5A0 8012F5F0 3C038016 */  lui        $v1, %hi(D_8015FF90)
    /* 13E5A4 8012F5F4 2463FF90 */  addiu      $v1, $v1, %lo(D_8015FF90)
    /* 13E5A8 8012F5F8 24420048 */  addiu      $v0, $v0, %lo(D_80160048)
  .L8012F5FC_13E5AC:
    /* 13E5AC 8012F5FC 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 13E5B0 8012F600 2442FFFC */  addiu      $v0, $v0, -0x4
    /* 13E5B4 8012F604 0043082B */  sltu       $at, $v0, $v1
    /* 13E5B8 8012F608 1020FFFC */  beqz       $at, .L8012F5FC_13E5AC
    /* 13E5BC 8012F60C AC4D0008 */   sw        $t5, 0x8($v0)
    /* 13E5C0 8012F610 3C0E8016 */  lui        $t6, %hi(D_8015FF88)
    /* 13E5C4 8012F614 8DCEFF88 */  lw         $t6, %lo(D_8015FF88)($t6)
    /* 13E5C8 8012F618 3C018016 */  lui        $at, %hi(D_8015FF90)
    /* 13E5CC 8012F61C AC2EFF90 */  sw         $t6, %lo(D_8015FF90)($at)
  .L8012F620_13E5D0:
    /* 13E5D0 8012F620 8FAF00A0 */  lw         $t7, 0xA0($sp)
    /* 13E5D4 8012F624 8FA40130 */  lw         $a0, 0x130($sp)
    /* 13E5D8 8012F628 27A500E0 */  addiu      $a1, $sp, 0xE0
    /* 13E5DC 8012F62C 31F80020 */  andi       $t8, $t7, 0x20
    /* 13E5E0 8012F630 13000005 */  beqz       $t8, .L8012F648_13E5F8
    /* 13E5E4 8012F634 AFB80098 */   sw        $t8, 0x98($sp)
    /* 13E5E8 8012F638 24060005 */  addiu      $a2, $zero, 0x5
    /* 13E5EC 8012F63C 0C04BCB7 */  jal        func_8012F2DC_13E28C
    /* 13E5F0 8012F640 AFB00124 */   sw        $s0, 0x124($sp)
    /* 13E5F4 8012F644 8FB00124 */  lw         $s0, 0x124($sp)
  .L8012F648_13E5F8:
    /* 13E5F8 8012F648 92390000 */  lbu        $t9, 0x0($s1)
    /* 13E5FC 8012F64C 8FB50130 */  lw         $s5, 0x130($sp)
    /* 13E600 8012F650 00002025 */  or         $a0, $zero, $zero
    /* 13E604 8012F654 13200014 */  beqz       $t9, .L8012F6A8_13E658
    /* 13E608 8012F658 00001825 */   or        $v1, $zero, $zero
    /* 13E60C 8012F65C 92220000 */  lbu        $v0, 0x0($s1)
    /* 13E610 8012F660 24070031 */  addiu      $a3, $zero, 0x31
    /* 13E614 8012F664 24060049 */  addiu      $a2, $zero, 0x49
    /* 13E618 8012F668 24050069 */  addiu      $a1, $zero, 0x69
    /* 13E61C 8012F66C 00701821 */  addu       $v1, $v1, $s0
  .L8012F670_13E620:
    /* 13E620 8012F670 10A20004 */  beq        $a1, $v0, .L8012F684_13E634
    /* 13E624 8012F674 24630002 */   addiu     $v1, $v1, 0x2
    /* 13E628 8012F678 50C20003 */  beql       $a2, $v0, .L8012F688_13E638
    /* 13E62C 8012F67C 00105843 */   sra       $t3, $s0, 1
    /* 13E630 8012F680 14E20002 */  bne        $a3, $v0, .L8012F68C_13E63C
  .L8012F684_13E634:
    /* 13E634 8012F684 00105843 */   sra       $t3, $s0, 1
  .L8012F688_13E638:
    /* 13E638 8012F688 006B1823 */  subu       $v1, $v1, $t3
  .L8012F68C_13E63C:
    /* 13E63C 8012F68C 24840001 */  addiu      $a0, $a0, 0x1
    /* 13E640 8012F690 308C00FF */  andi       $t4, $a0, 0xFF
    /* 13E644 8012F694 01916821 */  addu       $t5, $t4, $s1
    /* 13E648 8012F698 91A20000 */  lbu        $v0, 0x0($t5)
    /* 13E64C 8012F69C 01802025 */  or         $a0, $t4, $zero
    /* 13E650 8012F6A0 5440FFF3 */  bnel       $v0, $zero, .L8012F670_13E620
    /* 13E654 8012F6A4 00701821 */   addu      $v1, $v1, $s0
  .L8012F6A8_13E658:
    /* 13E658 8012F6A8 3C0E8007 */  lui        $t6, %hi(D_80068084)
    /* 13E65C 8012F6AC 8DCE8084 */  lw         $t6, %lo(D_80068084)($t6)
    /* 13E660 8012F6B0 0003C043 */  sra        $t8, $v1, 1
    /* 13E664 8012F6B4 24050069 */  addiu      $a1, $zero, 0x69
    /* 13E668 8012F6B8 24060049 */  addiu      $a2, $zero, 0x49
    /* 13E66C 8012F6BC 24070031 */  addiu      $a3, $zero, 0x31
    /* 13E670 8012F6C0 05C10003 */  bgez       $t6, .L8012F6D0_13E680
    /* 13E674 8012F6C4 000E7843 */   sra       $t7, $t6, 1
    /* 13E678 8012F6C8 25C10001 */  addiu      $at, $t6, 0x1
    /* 13E67C 8012F6CC 00017843 */  sra        $t7, $at, 1
  .L8012F6D0_13E680:
    /* 13E680 8012F6D0 01F8C823 */  subu       $t9, $t7, $t8
    /* 13E684 8012F6D4 AFB90118 */  sw         $t9, 0x118($sp)
    /* 13E688 8012F6D8 188001A4 */  blez       $a0, .L8012FD6C_13ED1C
    /* 13E68C 8012F6DC AFA000F8 */   sw        $zero, 0xF8($sp)
    /* 13E690 8012F6E0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 13E694 8012F6E4 4481F000 */  mtc1       $at, $f30
    /* 13E698 8012F6E8 3C014480 */  lui        $at, (0x44800000 >> 16)
    /* 13E69C 8012F6EC 4481E000 */  mtc1       $at, $f28
    /* 13E6A0 8012F6F0 3C014200 */  lui        $at, (0x42000000 >> 16)
    /* 13E6A4 8012F6F4 4481D000 */  mtc1       $at, $f26
    /* 13E6A8 8012F6F8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 13E6AC 8012F6FC 4481C000 */  mtc1       $at, $f24
    /* 13E6B0 8012F700 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
    /* 13E6B4 8012F704 AFB00124 */  sw         $s0, 0x124($sp)
    /* 13E6B8 8012F708 3C108006 */  lui        $s0, %hi(D_8005BB2C)
    /* 13E6BC 8012F70C AFB1008C */  sw         $s1, 0x8C($sp)
    /* 13E6C0 8012F710 4481B000 */  mtc1       $at, $f22
    /* 13E6C4 8012F714 8FB1010C */  lw         $s1, 0x10C($sp)
    /* 13E6C8 8012F718 2610BB2C */  addiu      $s0, $s0, %lo(D_8005BB2C)
    /* 13E6CC 8012F71C AFA40090 */  sw         $a0, 0x90($sp)
    /* 13E6D0 8012F720 3C17FA00 */  lui        $s7, (0xFA000000 >> 16)
  .L8012F724_13E6D4:
    /* 13E6D4 8012F724 8FA2008C */  lw         $v0, 0x8C($sp)
    /* 13E6D8 8012F728 0C04BB0F */  jal        func_8012EC3C_13DBEC
    /* 13E6DC 8012F72C 90440000 */   lbu       $a0, 0x0($v0)
    /* 13E6E0 8012F730 14400007 */  bnez       $v0, .L8012F750_13E700
    /* 13E6E4 8012F734 8FAF008C */   lw        $t7, 0x8C($sp)
    /* 13E6E8 8012F738 8FAB0118 */  lw         $t3, 0x118($sp)
    /* 13E6EC 8012F73C 8FAC0124 */  lw         $t4, 0x124($sp)
    /* 13E6F0 8012F740 016C6821 */  addu       $t5, $t3, $t4
    /* 13E6F4 8012F744 25AE0002 */  addiu      $t6, $t5, 0x2
    /* 13E6F8 8012F748 1000017F */  b          .L8012FD48_13ECF8
    /* 13E6FC 8012F74C AFAE0118 */   sw        $t6, 0x118($sp)
  .L8012F750_13E700:
    /* 13E700 8012F750 8FB8012C */  lw         $t8, 0x12C($sp)
    /* 13E704 8012F754 8FB90128 */  lw         $t9, 0x128($sp)
    /* 13E708 8012F758 91E20000 */  lbu        $v0, 0x0($t7)
    /* 13E70C 8012F75C 24010069 */  addiu      $at, $zero, 0x69
    /* 13E710 8012F760 03195821 */  addu       $t3, $t8, $t9
    /* 13E714 8012F764 10410006 */  beq        $v0, $at, .L8012F780_13E730
    /* 13E718 8012F768 AFAB0074 */   sw        $t3, 0x74($sp)
    /* 13E71C 8012F76C 24010049 */  addiu      $at, $zero, 0x49
    /* 13E720 8012F770 10410003 */  beq        $v0, $at, .L8012F780_13E730
    /* 13E724 8012F774 24010031 */   addiu     $at, $zero, 0x31
    /* 13E728 8012F778 54410007 */  bnel       $v0, $at, .L8012F798_13E748
    /* 13E72C 8012F77C 8FB80134 */   lw        $t8, 0x134($sp)
  .L8012F780_13E730:
    /* 13E730 8012F780 8FAD0124 */  lw         $t5, 0x124($sp)
    /* 13E734 8012F784 8FAC0118 */  lw         $t4, 0x118($sp)
    /* 13E738 8012F788 000D7043 */  sra        $t6, $t5, 1
    /* 13E73C 8012F78C 018E7823 */  subu       $t7, $t4, $t6
    /* 13E740 8012F790 AFAF0118 */  sw         $t7, 0x118($sp)
    /* 13E744 8012F794 8FB80134 */  lw         $t8, 0x134($sp)
  .L8012F798_13E748:
    /* 13E748 8012F798 8FA400A0 */  lw         $a0, 0xA0($sp)
    /* 13E74C 8012F79C 24130007 */  addiu      $s3, $zero, 0x7
    /* 13E750 8012F7A0 13000109 */  beqz       $t8, .L8012FBC8_13EB78
    /* 13E754 8012F7A4 8FB90124 */   lw        $t9, 0x124($sp)
    /* 13E758 8012F7A8 8FA20124 */  lw         $v0, 0x124($sp)
    /* 13E75C 8012F7AC 8FA300F8 */  lw         $v1, 0xF8($sp)
    /* 13E760 8012F7B0 8FAD0118 */  lw         $t5, 0x118($sp)
    /* 13E764 8012F7B4 0002C843 */  sra        $t9, $v0, 1
    /* 13E768 8012F7B8 44992000 */  mtc1       $t9, $f4
    /* 13E76C 8012F7BC 00035840 */  sll        $t3, $v1, 1
    /* 13E770 8012F7C0 01B96021 */  addu       $t4, $t5, $t9
    /* 13E774 8012F7C4 AFAC0070 */  sw         $t4, 0x70($sp)
    /* 13E778 8012F7C8 25760007 */  addiu      $s6, $t3, 0x7
    /* 13E77C 8012F7CC AFAB0088 */  sw         $t3, 0x88($sp)
    /* 13E780 8012F7D0 AFB90094 */  sw         $t9, 0x94($sp)
    /* 13E784 8012F7D4 30940004 */  andi       $s4, $a0, 0x4
    /* 13E788 8012F7D8 309E0008 */  andi       $fp, $a0, 0x8
    /* 13E78C 8012F7DC 46802520 */  cvt.s.w    $f20, $f4
  .L8012F7E0_13E790:
    /* 13E790 8012F7E0 2AC10030 */  slti       $at, $s6, 0x30
    /* 13E794 8012F7E4 14200006 */  bnez       $at, .L8012F800_13E7B0
    /* 13E798 8012F7E8 8FA400A0 */   lw        $a0, 0xA0($sp)
    /* 13E79C 8012F7EC 3C048014 */  lui        $a0, %hi(D_801453C0)
    /* 13E7A0 8012F7F0 0C00731B */  jal        osSyncPrintf
    /* 13E7A4 8012F7F4 248453C0 */   addiu     $a0, $a0, %lo(D_801453C0)
    /* 13E7A8 8012F7F8 10000025 */  b          .L8012F890_13E840
    /* 13E7AC 8012F7FC 44913000 */   mtc1      $s1, $f6
  .L8012F800_13E7B0:
    /* 13E7B0 8012F800 30820010 */  andi       $v0, $a0, 0x10
    /* 13E7B4 8012F804 10400009 */  beqz       $v0, .L8012F82C_13E7DC
    /* 13E7B8 8012F808 00135880 */   sll       $t3, $s3, 2
    /* 13E7BC 8012F80C 8FAF0088 */  lw         $t7, 0x88($sp)
    /* 13E7C0 8012F810 00137080 */  sll        $t6, $s3, 2
    /* 13E7C4 8012F814 3C118016 */  lui        $s1, %hi(D_8015FF90)
    /* 13E7C8 8012F818 000FC080 */  sll        $t8, $t7, 2
    /* 13E7CC 8012F81C 01D8C821 */  addu       $t9, $t6, $t8
    /* 13E7D0 8012F820 02398821 */  addu       $s1, $s1, $t9
    /* 13E7D4 8012F824 10000004 */  b          .L8012F838_13E7E8
    /* 13E7D8 8012F828 8E31FF90 */   lw        $s1, %lo(D_8015FF90)($s1)
  .L8012F82C_13E7DC:
    /* 13E7DC 8012F82C 3C118016 */  lui        $s1, %hi(D_8015FF90)
    /* 13E7E0 8012F830 022B8821 */  addu       $s1, $s1, $t3
    /* 13E7E4 8012F834 8E31FF90 */  lw         $s1, %lo(D_8015FF90)($s1)
  .L8012F838_13E7E8:
    /* 13E7E8 8012F838 1280000D */  beqz       $s4, .L8012F870_13E820
    /* 13E7EC 8012F83C 8FAD0134 */   lw        $t5, 0x134($sp)
    /* 13E7F0 8012F840 11A0000B */  beqz       $t5, .L8012F870_13E820
    /* 13E7F4 8012F844 2401005A */   addiu     $at, $zero, 0x5A
    /* 13E7F8 8012F848 16210009 */  bne        $s1, $at, .L8012F870_13E820
    /* 13E7FC 8012F84C 00000000 */   nop
    /* 13E800 8012F850 12800007 */  beqz       $s4, .L8012F870_13E820
    /* 13E804 8012F854 00000000 */   nop
    /* 13E808 8012F858 10400005 */  beqz       $v0, .L8012F870_13E820
    /* 13E80C 8012F85C 24010006 */   addiu     $at, $zero, 0x6
    /* 13E810 8012F860 16610003 */  bne        $s3, $at, .L8012F870_13E820
    /* 13E814 8012F864 00000000 */   nop
    /* 13E818 8012F868 0C0054F6 */  jal        func_800153D8_15FD8
    /* 13E81C 8012F86C 240400CD */   addiu     $a0, $zero, 0xCD
  .L8012F870_13E820:
    /* 13E820 8012F870 12800003 */  beqz       $s4, .L8012F880_13E830
    /* 13E824 8012F874 24020064 */   addiu     $v0, $zero, 0x64
    /* 13E828 8012F878 10000001 */  b          .L8012F880_13E830
    /* 13E82C 8012F87C 00001025 */   or        $v0, $zero, $zero
  .L8012F880_13E830:
    /* 13E830 8012F880 50510003 */  beql       $v0, $s1, .L8012F890_13E840
    /* 13E834 8012F884 44913000 */   mtc1      $s1, $f6
    /* 13E838 8012F888 AFA000EC */  sw         $zero, 0xEC($sp)
    /* 13E83C 8012F88C 44913000 */  mtc1       $s1, $f6
  .L8012F890_13E840:
    /* 13E840 8012F890 8FAC0094 */  lw         $t4, 0x94($sp)
    /* 13E844 8012F894 46803220 */  cvt.s.w    $f8, $f6
    /* 13E848 8012F898 46164283 */  div.s      $f10, $f8, $f22
    /* 13E84C 8012F89C 46145402 */  mul.s      $f16, $f10, $f20
    /* 13E850 8012F8A0 4600848D */  trunc.w.s  $f18, $f16
    /* 13E854 8012F8A4 440E9000 */  mfc1       $t6, $f18
    /* 13E858 8012F8A8 00000000 */  nop
    /* 13E85C 8012F8AC 018E1023 */  subu       $v0, $t4, $t6
    /* 13E860 8012F8B0 1C400003 */  bgtz       $v0, .L8012F8C0_13E870
    /* 13E864 8012F8B4 00409025 */   or        $s2, $v0, $zero
    /* 13E868 8012F8B8 10000001 */  b          .L8012F8C0_13E870
    /* 13E86C 8012F8BC 24120001 */   addiu     $s2, $zero, 0x1
  .L8012F8C0_13E870:
    /* 13E870 8012F8C0 12800007 */  beqz       $s4, .L8012F8E0_13E890
    /* 13E874 8012F8C4 00000000 */   nop
    /* 13E878 8012F8C8 12800003 */  beqz       $s4, .L8012F8D8_13E888
    /* 13E87C 8012F8CC 24020064 */   addiu     $v0, $zero, 0x64
    /* 13E880 8012F8D0 10000001 */  b          .L8012F8D8_13E888
    /* 13E884 8012F8D4 00001025 */   or        $v0, $zero, $zero
  .L8012F8D8_13E888:
    /* 13E888 8012F8D8 5051000A */  beql       $v0, $s1, .L8012F904_13E8B4
    /* 13E88C 8012F8DC 8E020000 */   lw        $v0, 0x0($s0)
  .L8012F8E0_13E890:
    /* 13E890 8012F8E0 16800016 */  bnez       $s4, .L8012F93C_13E8EC
    /* 13E894 8012F8E4 00000000 */   nop
    /* 13E898 8012F8E8 12800003 */  beqz       $s4, .L8012F8F8_13E8A8
    /* 13E89C 8012F8EC 00001025 */   or        $v0, $zero, $zero
    /* 13E8A0 8012F8F0 10000001 */  b          .L8012F8F8_13E8A8
    /* 13E8A4 8012F8F4 24020064 */   addiu     $v0, $zero, 0x64
  .L8012F8F8_13E8A8:
    /* 13E8A8 8012F8F8 14510010 */  bne        $v0, $s1, .L8012F93C_13E8EC
    /* 13E8AC 8012F8FC 00000000 */   nop
    /* 13E8B0 8012F900 8E020000 */  lw         $v0, 0x0($s0)
  .L8012F904_13E8B4:
    /* 13E8B4 8012F904 24580008 */  addiu      $t8, $v0, 0x8
    /* 13E8B8 8012F908 AE180000 */  sw         $t8, 0x0($s0)
    /* 13E8BC 8012F90C AC570000 */  sw         $s7, 0x0($v0)
    /* 13E8C0 8012F910 92AB0002 */  lbu        $t3, 0x2($s5)
    /* 13E8C4 8012F914 92AC0000 */  lbu        $t4, 0x0($s5)
    /* 13E8C8 8012F918 000B6A00 */  sll        $t5, $t3, 8
    /* 13E8CC 8012F91C 92AB0001 */  lbu        $t3, 0x1($s5)
    /* 13E8D0 8012F920 000C7600 */  sll        $t6, $t4, 24
    /* 13E8D4 8012F924 01AEC025 */  or         $t8, $t5, $t6
    /* 13E8D8 8012F928 000B7C00 */  sll        $t7, $t3, 16
    /* 13E8DC 8012F92C 030F6025 */  or         $t4, $t8, $t7
    /* 13E8E0 8012F930 358D00FF */  ori        $t5, $t4, 0xFF
    /* 13E8E4 8012F934 1000004C */  b          .L8012FA68_13EA18
    /* 13E8E8 8012F938 AC4D0004 */   sw        $t5, 0x4($v0)
  .L8012F93C_13E8EC:
    /* 13E8EC 8012F93C 13C00010 */  beqz       $fp, .L8012F980_13E930
    /* 13E8F0 8012F940 27A400E0 */   addiu     $a0, $sp, 0xE0
    /* 13E8F4 8012F944 8E020000 */  lw         $v0, 0x0($s0)
    /* 13E8F8 8012F948 244E0008 */  addiu      $t6, $v0, 0x8
    /* 13E8FC 8012F94C AE0E0000 */  sw         $t6, 0x0($s0)
    /* 13E900 8012F950 AC570000 */  sw         $s7, 0x0($v0)
    /* 13E904 8012F954 92AB0002 */  lbu        $t3, 0x2($s5)
    /* 13E908 8012F958 92AC0000 */  lbu        $t4, 0x0($s5)
    /* 13E90C 8012F95C 000BC200 */  sll        $t8, $t3, 8
    /* 13E910 8012F960 92AB0001 */  lbu        $t3, 0x1($s5)
    /* 13E914 8012F964 000C6E00 */  sll        $t5, $t4, 24
    /* 13E918 8012F968 030D7025 */  or         $t6, $t8, $t5
    /* 13E91C 8012F96C 000B7C00 */  sll        $t7, $t3, 16
    /* 13E920 8012F970 01CF6025 */  or         $t4, $t6, $t7
    /* 13E924 8012F974 359800FF */  ori        $t8, $t4, 0xFF
    /* 13E928 8012F978 1000003B */  b          .L8012FA68_13EA18
    /* 13E92C 8012F97C AC580004 */   sw        $t8, 0x4($v0)
  .L8012F980_13E930:
    /* 13E930 8012F980 0C04BC93 */  jal        func_8012F24C_13E1FC
    /* 13E934 8012F984 24050005 */   addiu     $a1, $zero, 0x5
    /* 13E938 8012F988 8E030000 */  lw         $v1, 0x0($s0)
    /* 13E93C 8012F98C 3C01437F */  lui        $at, (0x437F0000 >> 16)
    /* 13E940 8012F990 44815000 */  mtc1       $at, $f10
    /* 13E944 8012F994 246D0008 */  addiu      $t5, $v1, 0x8
    /* 13E948 8012F998 AE0D0000 */  sw         $t5, 0x0($s0)
    /* 13E94C 8012F99C AC770000 */  sw         $s7, 0x0($v1)
    /* 13E950 8012F9A0 93AC00E0 */  lbu        $t4, 0xE0($sp)
    /* 13E954 8012F9A4 93AB00E2 */  lbu        $t3, 0xE2($sp)
    /* 13E958 8012F9A8 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* 13E95C 8012F9AC 000CC600 */  sll        $t8, $t4, 24
    /* 13E960 8012F9B0 000B7200 */  sll        $t6, $t3, 8
    /* 13E964 8012F9B4 01D86825 */  or         $t5, $t6, $t8
    /* 13E968 8012F9B8 240E0007 */  addiu      $t6, $zero, 0x7
    /* 13E96C 8012F9BC 01D3C023 */  subu       $t8, $t6, $s3
    /* 13E970 8012F9C0 44982000 */  mtc1       $t8, $f4
    /* 13E974 8012F9C4 93AB00E1 */  lbu        $t3, 0xE1($sp)
    /* 13E978 8012F9C8 468021A0 */  cvt.s.w    $f6, $f4
    /* 13E97C 8012F9CC 000B7C00 */  sll        $t7, $t3, 16
    /* 13E980 8012F9D0 240B0001 */  addiu      $t3, $zero, 0x1
    /* 13E984 8012F9D4 01AF6025 */  or         $t4, $t5, $t7
    /* 13E988 8012F9D8 461E3203 */  div.s      $f8, $f6, $f30
    /* 13E98C 8012F9DC 460A4402 */  mul.s      $f16, $f8, $f10
    /* 13E990 8012F9E0 4459F800 */  cfc1       $t9, $31
    /* 13E994 8012F9E4 44CBF800 */  ctc1       $t3, $31
    /* 13E998 8012F9E8 00000000 */  nop
    /* 13E99C 8012F9EC 460084A4 */  cvt.w.s    $f18, $f16
    /* 13E9A0 8012F9F0 444BF800 */  cfc1       $t3, $31
    /* 13E9A4 8012F9F4 00000000 */  nop
    /* 13E9A8 8012F9F8 316B0078 */  andi       $t3, $t3, 0x78
    /* 13E9AC 8012F9FC 51600013 */  beql       $t3, $zero, .L8012FA4C_13E9FC
    /* 13E9B0 8012FA00 440B9000 */   mfc1      $t3, $f18
    /* 13E9B4 8012FA04 44819000 */  mtc1       $at, $f18
    /* 13E9B8 8012FA08 240B0001 */  addiu      $t3, $zero, 0x1
    /* 13E9BC 8012FA0C 46128481 */  sub.s      $f18, $f16, $f18
    /* 13E9C0 8012FA10 44CBF800 */  ctc1       $t3, $31
    /* 13E9C4 8012FA14 00000000 */  nop
    /* 13E9C8 8012FA18 460094A4 */  cvt.w.s    $f18, $f18
    /* 13E9CC 8012FA1C 444BF800 */  cfc1       $t3, $31
    /* 13E9D0 8012FA20 00000000 */  nop
    /* 13E9D4 8012FA24 316B0078 */  andi       $t3, $t3, 0x78
    /* 13E9D8 8012FA28 15600005 */  bnez       $t3, .L8012FA40_13E9F0
    /* 13E9DC 8012FA2C 00000000 */   nop
    /* 13E9E0 8012FA30 440B9000 */  mfc1       $t3, $f18
    /* 13E9E4 8012FA34 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 13E9E8 8012FA38 10000007 */  b          .L8012FA58_13EA08
    /* 13E9EC 8012FA3C 01615825 */   or        $t3, $t3, $at
  .L8012FA40_13E9F0:
    /* 13E9F0 8012FA40 10000005 */  b          .L8012FA58_13EA08
    /* 13E9F4 8012FA44 240BFFFF */   addiu     $t3, $zero, -0x1
    /* 13E9F8 8012FA48 440B9000 */  mfc1       $t3, $f18
  .L8012FA4C_13E9FC:
    /* 13E9FC 8012FA4C 00000000 */  nop
    /* 13EA00 8012FA50 0560FFFB */  bltz       $t3, .L8012FA40_13E9F0
    /* 13EA04 8012FA54 00000000 */   nop
  .L8012FA58_13EA08:
    /* 13EA08 8012FA58 316F00FF */  andi       $t7, $t3, 0xFF
    /* 13EA0C 8012FA5C 44D9F800 */  ctc1       $t9, $31
    /* 13EA10 8012FA60 018F7025 */  or         $t6, $t4, $t7
    /* 13EA14 8012FA64 AC6E0004 */  sw         $t6, 0x4($v1)
  .L8012FA68_13EA18:
    /* 13EA18 8012FA68 13C0000D */  beqz       $fp, .L8012FAA0_13EA50
    /* 13EA1C 8012FA6C 8FA70070 */   lw        $a3, 0x70($sp)
    /* 13EA20 8012FA70 12800007 */  beqz       $s4, .L8012FA90_13EA40
    /* 13EA24 8012FA74 00000000 */   nop
    /* 13EA28 8012FA78 12800003 */  beqz       $s4, .L8012FA88_13EA38
    /* 13EA2C 8012FA7C 00000000 */   nop
    /* 13EA30 8012FA80 10000007 */  b          .L8012FAA0_13EA50
    /* 13EA34 8012FA84 00008825 */   or        $s1, $zero, $zero
  .L8012FA88_13EA38:
    /* 13EA38 8012FA88 10000005 */  b          .L8012FAA0_13EA50
    /* 13EA3C 8012FA8C 24110064 */   addiu     $s1, $zero, 0x64
  .L8012FA90_13EA40:
    /* 13EA40 8012FA90 12800003 */  beqz       $s4, .L8012FAA0_13EA50
    /* 13EA44 8012FA94 00008825 */   or        $s1, $zero, $zero
    /* 13EA48 8012FA98 10000001 */  b          .L8012FAA0_13EA50
    /* 13EA4C 8012FA9C 24110064 */   addiu     $s1, $zero, 0x64
  .L8012FAA0_13EA50:
    /* 13EA50 8012FAA0 8E020000 */  lw         $v0, 0x0($s0)
    /* 13EA54 8012FAA4 8FA8012C */  lw         $t0, 0x12C($sp)
    /* 13EA58 8012FAA8 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* 13EA5C 8012FAAC 24580008 */  addiu      $t8, $v0, 0x8
    /* 13EA60 8012FAB0 AE180000 */  sw         $t8, 0x0($s0)
    /* 13EA64 8012FAB4 AC400004 */  sw         $zero, 0x4($v0)
    /* 13EA68 8012FAB8 AC590000 */  sw         $t9, 0x0($v0)
    /* 13EA6C 8012FABC 8E020000 */  lw         $v0, 0x0($s0)
    /* 13EA70 8012FAC0 8FB90074 */  lw         $t9, 0x74($sp)
    /* 13EA74 8012FAC4 00F26821 */  addu       $t5, $a3, $s2
    /* 13EA78 8012FAC8 244B0008 */  addiu      $t3, $v0, 0x8
    /* 13EA7C 8012FACC AE0B0000 */  sw         $t3, 0x0($s0)
    /* 13EA80 8012FAD0 000D6080 */  sll        $t4, $t5, 2
    /* 13EA84 8012FAD4 318F0FFF */  andi       $t7, $t4, 0xFFF
    /* 13EA88 8012FAD8 03315821 */  addu       $t3, $t9, $s1
    /* 13EA8C 8012FADC 000B6880 */  sll        $t5, $t3, 2
    /* 13EA90 8012FAE0 000F7300 */  sll        $t6, $t7, 12
    /* 13EA94 8012FAE4 3C01E400 */  lui        $at, (0xE4000000 >> 16)
    /* 13EA98 8012FAE8 01C1C025 */  or         $t8, $t6, $at
    /* 13EA9C 8012FAEC 31AC0FFF */  andi       $t4, $t5, 0xFFF
    /* 13EAA0 8012FAF0 030C7825 */  or         $t7, $t8, $t4
    /* 13EAA4 8012FAF4 00F27023 */  subu       $t6, $a3, $s2
    /* 13EAA8 8012FAF8 000EC880 */  sll        $t9, $t6, 2
    /* 13EAAC 8012FAFC 0111C023 */  subu       $t8, $t0, $s1
    /* 13EAB0 8012FB00 00186080 */  sll        $t4, $t8, 2
    /* 13EAB4 8012FB04 332B0FFF */  andi       $t3, $t9, 0xFFF
    /* 13EAB8 8012FB08 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 13EABC 8012FB0C 318F0FFF */  andi       $t7, $t4, 0xFFF
    /* 13EAC0 8012FB10 000B6B00 */  sll        $t5, $t3, 12
    /* 13EAC4 8012FB14 01AF7025 */  or         $t6, $t5, $t7
    /* 13EAC8 8012FB18 AC4E0004 */  sw         $t6, 0x4($v0)
    /* 13EACC 8012FB1C 8E020000 */  lw         $v0, 0x0($s0)
    /* 13EAD0 8012FB20 3C0BB400 */  lui        $t3, (0xB4000000 >> 16)
    /* 13EAD4 8012FB24 0011C040 */  sll        $t8, $s1, 1
    /* 13EAD8 8012FB28 24590008 */  addiu      $t9, $v0, 0x8
    /* 13EADC 8012FB2C AE190000 */  sw         $t9, 0x0($s0)
    /* 13EAE0 8012FB30 AC400004 */  sw         $zero, 0x4($v0)
    /* 13EAE4 8012FB34 AC4B0000 */  sw         $t3, 0x0($v0)
    /* 13EAE8 8012FB38 8FAC0128 */  lw         $t4, 0x128($sp)
    /* 13EAEC 8012FB3C 8E020000 */  lw         $v0, 0x0($s0)
    /* 13EAF0 8012FB40 2673FFFF */  addiu      $s3, $s3, -0x1
    /* 13EAF4 8012FB44 030C6821 */  addu       $t5, $t8, $t4
    /* 13EAF8 8012FB48 448D2000 */  mtc1       $t5, $f4
    /* 13EAFC 8012FB4C 0012C040 */  sll        $t8, $s2, 1
    /* 13EB00 8012FB50 24590008 */  addiu      $t9, $v0, 0x8
    /* 13EB04 8012FB54 468021A0 */  cvt.s.w    $f6, $f4
    /* 13EB08 8012FB58 44982000 */  mtc1       $t8, $f4
    /* 13EB0C 8012FB5C AE190000 */  sw         $t9, 0x0($s0)
    /* 13EB10 8012FB60 3C0BB300 */  lui        $t3, (0xB3000000 >> 16)
    /* 13EB14 8012FB64 26D6FFFF */  addiu      $s6, $s6, -0x1
    /* 13EB18 8012FB68 AC4B0000 */  sw         $t3, 0x0($v0)
    /* 13EB1C 8012FB6C 461A3203 */  div.s      $f8, $f6, $f26
    /* 13EB20 8012FB70 468021A0 */  cvt.s.w    $f6, $f4
    /* 13EB24 8012FB74 4608C283 */  div.s      $f10, $f24, $f8
    /* 13EB28 8012FB78 461A3203 */  div.s      $f8, $f6, $f26
    /* 13EB2C 8012FB7C 461C5402 */  mul.s      $f16, $f10, $f28
    /* 13EB30 8012FB80 4600848D */  trunc.w.s  $f18, $f16
    /* 13EB34 8012FB84 4608C283 */  div.s      $f10, $f24, $f8
    /* 13EB38 8012FB88 44069000 */  mfc1       $a2, $f18
    /* 13EB3C 8012FB8C 00000000 */  nop
    /* 13EB40 8012FB90 30CEFFFF */  andi       $t6, $a2, 0xFFFF
    /* 13EB44 8012FB94 01C03025 */  or         $a2, $t6, $zero
    /* 13EB48 8012FB98 461C5402 */  mul.s      $f16, $f10, $f28
    /* 13EB4C 8012FB9C 4600848D */  trunc.w.s  $f18, $f16
    /* 13EB50 8012FBA0 440F9000 */  mfc1       $t7, $f18
    /* 13EB54 8012FBA4 00000000 */  nop
    /* 13EB58 8012FBA8 000F7400 */  sll        $t6, $t7, 16
    /* 13EB5C 8012FBAC 01C6C825 */  or         $t9, $t6, $a2
    /* 13EB60 8012FBB0 0661FF0B */  bgez       $s3, .L8012F7E0_13E790
    /* 13EB64 8012FBB4 AC590004 */   sw        $t9, 0x4($v0)
    /* 13EB68 8012FBB8 8FAB0118 */  lw         $t3, 0x118($sp)
    /* 13EB6C 8012FBBC 8FB80124 */  lw         $t8, 0x124($sp)
    /* 13EB70 8012FBC0 1000005F */  b          .L8012FD40_13ECF0
    /* 13EB74 8012FBC4 01783821 */   addu      $a3, $t3, $t8
  .L8012FBC8_13EB78:
    /* 13EB78 8012FBC8 44992000 */  mtc1       $t9, $f4
    /* 13EB7C 8012FBCC 8FA9012C */  lw         $t1, 0x12C($sp)
    /* 13EB80 8012FBD0 8FA80074 */  lw         $t0, 0x74($sp)
    /* 13EB84 8012FBD4 468021A0 */  cvt.s.w    $f6, $f4
    /* 13EB88 8012FBD8 00097880 */  sll        $t7, $t1, 2
    /* 13EB8C 8012FBDC 31E90FFF */  andi       $t1, $t7, 0xFFF
    /* 13EB90 8012FBE0 8FAF0128 */  lw         $t7, 0x128($sp)
    /* 13EB94 8012FBE4 00086080 */  sll        $t4, $t0, 2
    /* 13EB98 8012FBE8 31880FFF */  andi       $t0, $t4, 0xFFF
    /* 13EB9C 8012FBEC 461A3203 */  div.s      $f8, $f6, $f26
    /* 13EBA0 8012FBF0 448F2000 */  mtc1       $t7, $f4
    /* 13EBA4 8012FBF4 8FB80098 */  lw         $t8, 0x98($sp)
    /* 13EBA8 8012FBF8 468021A0 */  cvt.s.w    $f6, $f4
    /* 13EBAC 8012FBFC 4608C283 */  div.s      $f10, $f24, $f8
    /* 13EBB0 8012FC00 461A3203 */  div.s      $f8, $f6, $f26
    /* 13EBB4 8012FC04 461C5402 */  mul.s      $f16, $f10, $f28
    /* 13EBB8 8012FC08 4600848D */  trunc.w.s  $f18, $f16
    /* 13EBBC 8012FC0C 4608C283 */  div.s      $f10, $f24, $f8
    /* 13EBC0 8012FC10 440C9000 */  mfc1       $t4, $f18
    /* 13EBC4 8012FC14 00000000 */  nop
    /* 13EBC8 8012FC18 000C6C00 */  sll        $t5, $t4, 16
    /* 13EBCC 8012FC1C 461C5402 */  mul.s      $f16, $f10, $f28
    /* 13EBD0 8012FC20 4600848D */  trunc.w.s  $f18, $f16
    /* 13EBD4 8012FC24 44199000 */  mfc1       $t9, $f18
    /* 13EBD8 8012FC28 00000000 */  nop
    /* 13EBDC 8012FC2C 332BFFFF */  andi       $t3, $t9, 0xFFFF
    /* 13EBE0 8012FC30 13000010 */  beqz       $t8, .L8012FC74_13EC24
    /* 13EBE4 8012FC34 01AB5025 */   or        $t2, $t5, $t3
    /* 13EBE8 8012FC38 8E020000 */  lw         $v0, 0x0($s0)
    /* 13EBEC 8012FC3C 244C0008 */  addiu      $t4, $v0, 0x8
    /* 13EBF0 8012FC40 AE0C0000 */  sw         $t4, 0x0($s0)
    /* 13EBF4 8012FC44 AC570000 */  sw         $s7, 0x0($v0)
    /* 13EBF8 8012FC48 93AE00E2 */  lbu        $t6, 0xE2($sp)
    /* 13EBFC 8012FC4C 93AB00E0 */  lbu        $t3, 0xE0($sp)
    /* 13EC00 8012FC50 000ECA00 */  sll        $t9, $t6, 8
    /* 13EC04 8012FC54 93AE00E1 */  lbu        $t6, 0xE1($sp)
    /* 13EC08 8012FC58 000BC600 */  sll        $t8, $t3, 24
    /* 13EC0C 8012FC5C 03386025 */  or         $t4, $t9, $t8
    /* 13EC10 8012FC60 000E6C00 */  sll        $t5, $t6, 16
    /* 13EC14 8012FC64 018D5825 */  or         $t3, $t4, $t5
    /* 13EC18 8012FC68 357900FF */  ori        $t9, $t3, 0xFF
    /* 13EC1C 8012FC6C 1000000F */  b          .L8012FCAC_13EC5C
    /* 13EC20 8012FC70 AC590004 */   sw        $t9, 0x4($v0)
  .L8012FC74_13EC24:
    /* 13EC24 8012FC74 8E020000 */  lw         $v0, 0x0($s0)
    /* 13EC28 8012FC78 24580008 */  addiu      $t8, $v0, 0x8
    /* 13EC2C 8012FC7C AE180000 */  sw         $t8, 0x0($s0)
    /* 13EC30 8012FC80 AC570000 */  sw         $s7, 0x0($v0)
    /* 13EC34 8012FC84 92AE0002 */  lbu        $t6, 0x2($s5)
    /* 13EC38 8012FC88 92AB0000 */  lbu        $t3, 0x0($s5)
    /* 13EC3C 8012FC8C 000E6200 */  sll        $t4, $t6, 8
    /* 13EC40 8012FC90 92AE0001 */  lbu        $t6, 0x1($s5)
    /* 13EC44 8012FC94 000BCE00 */  sll        $t9, $t3, 24
    /* 13EC48 8012FC98 0199C025 */  or         $t8, $t4, $t9
    /* 13EC4C 8012FC9C 000E6C00 */  sll        $t5, $t6, 16
    /* 13EC50 8012FCA0 030D5825 */  or         $t3, $t8, $t5
    /* 13EC54 8012FCA4 356C00FF */  ori        $t4, $t3, 0xFF
    /* 13EC58 8012FCA8 AC4C0004 */  sw         $t4, 0x4($v0)
  .L8012FCAC_13EC5C:
    /* 13EC5C 8012FCAC 8E020000 */  lw         $v0, 0x0($s0)
    /* 13EC60 8012FCB0 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* 13EC64 8012FCB4 3C01E400 */  lui        $at, (0xE4000000 >> 16)
    /* 13EC68 8012FCB8 24590008 */  addiu      $t9, $v0, 0x8
    /* 13EC6C 8012FCBC AE190000 */  sw         $t9, 0x0($s0)
    /* 13EC70 8012FCC0 AC400004 */  sw         $zero, 0x4($v0)
    /* 13EC74 8012FCC4 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 13EC78 8012FCC8 8FB80118 */  lw         $t8, 0x118($sp)
    /* 13EC7C 8012FCCC 8FAD0124 */  lw         $t5, 0x124($sp)
    /* 13EC80 8012FCD0 8E020000 */  lw         $v0, 0x0($s0)
    /* 13EC84 8012FCD4 030D3821 */  addu       $a3, $t8, $t5
    /* 13EC88 8012FCD8 00075880 */  sll        $t3, $a3, 2
    /* 13EC8C 8012FCDC 316C0FFF */  andi       $t4, $t3, 0xFFF
    /* 13EC90 8012FCE0 000CCB00 */  sll        $t9, $t4, 12
    /* 13EC94 8012FCE4 244E0008 */  addiu      $t6, $v0, 0x8
    /* 13EC98 8012FCE8 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 13EC9C 8012FCEC 03217825 */  or         $t7, $t9, $at
    /* 13ECA0 8012FCF0 01E87025 */  or         $t6, $t7, $t0
    /* 13ECA4 8012FCF4 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 13ECA8 8012FCF8 8FB80118 */  lw         $t8, 0x118($sp)
    /* 13ECAC 8012FCFC 3C0EB400 */  lui        $t6, (0xB4000000 >> 16)
    /* 13ECB0 8012FD00 00186880 */  sll        $t5, $t8, 2
    /* 13ECB4 8012FD04 31AB0FFF */  andi       $t3, $t5, 0xFFF
    /* 13ECB8 8012FD08 000B6300 */  sll        $t4, $t3, 12
    /* 13ECBC 8012FD0C 0189C825 */  or         $t9, $t4, $t1
    /* 13ECC0 8012FD10 AC590004 */  sw         $t9, 0x4($v0)
    /* 13ECC4 8012FD14 8E020000 */  lw         $v0, 0x0($s0)
    /* 13ECC8 8012FD18 3C0DB300 */  lui        $t5, (0xB3000000 >> 16)
    /* 13ECCC 8012FD1C 244F0008 */  addiu      $t7, $v0, 0x8
    /* 13ECD0 8012FD20 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 13ECD4 8012FD24 AC400004 */  sw         $zero, 0x4($v0)
    /* 13ECD8 8012FD28 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 13ECDC 8012FD2C 8E020000 */  lw         $v0, 0x0($s0)
    /* 13ECE0 8012FD30 24580008 */  addiu      $t8, $v0, 0x8
    /* 13ECE4 8012FD34 AE180000 */  sw         $t8, 0x0($s0)
    /* 13ECE8 8012FD38 AC4A0004 */  sw         $t2, 0x4($v0)
    /* 13ECEC 8012FD3C AC4D0000 */  sw         $t5, 0x0($v0)
  .L8012FD40_13ECF0:
    /* 13ECF0 8012FD40 24EB0002 */  addiu      $t3, $a3, 0x2
    /* 13ECF4 8012FD44 AFAB0118 */  sw         $t3, 0x118($sp)
  .L8012FD48_13ECF8:
    /* 13ECF8 8012FD48 8FA200F8 */  lw         $v0, 0xF8($sp)
    /* 13ECFC 8012FD4C 8FAC008C */  lw         $t4, 0x8C($sp)
    /* 13ED00 8012FD50 8FAF0090 */  lw         $t7, 0x90($sp)
    /* 13ED04 8012FD54 24420001 */  addiu      $v0, $v0, 0x1
    /* 13ED08 8012FD58 25990001 */  addiu      $t9, $t4, 0x1
    /* 13ED0C 8012FD5C AFB9008C */  sw         $t9, 0x8C($sp)
    /* 13ED10 8012FD60 144FFE70 */  bne        $v0, $t7, .L8012F724_13E6D4
    /* 13ED14 8012FD64 AFA200F8 */   sw        $v0, 0xF8($sp)
    /* 13ED18 8012FD68 AFB1010C */  sw         $s1, 0x10C($sp)
  .L8012FD6C_13ED1C:
    /* 13ED1C 8012FD6C 8FAE0134 */  lw         $t6, 0x134($sp)
    /* 13ED20 8012FD70 8FB400A0 */  lw         $s4, 0xA0($sp)
    /* 13ED24 8012FD74 11C0002A */  beqz       $t6, .L8012FE20_13EDD0
    /* 13ED28 8012FD78 32980004 */   andi      $t8, $s4, 0x4
    /* 13ED2C 8012FD7C 13000015 */  beqz       $t8, .L8012FDD4_13ED84
    /* 13ED30 8012FD80 0300A025 */   or        $s4, $t8, $zero
    /* 13ED34 8012FD84 13000003 */  beqz       $t8, .L8012FD94_13ED44
    /* 13ED38 8012FD88 3C038016 */   lui       $v1, %hi(D_8015FF88)
    /* 13ED3C 8012FD8C 10000002 */  b          .L8012FD98_13ED48
    /* 13ED40 8012FD90 00001025 */   or        $v0, $zero, $zero
  .L8012FD94_13ED44:
    /* 13ED44 8012FD94 24020064 */  addiu      $v0, $zero, 0x64
  .L8012FD98_13ED48:
    /* 13ED48 8012FD98 8C63FF88 */  lw         $v1, %lo(D_8015FF88)($v1)
    /* 13ED4C 8012FD9C 2463FFF6 */  addiu      $v1, $v1, -0xA
    /* 13ED50 8012FDA0 0062082A */  slt        $at, $v1, $v0
    /* 13ED54 8012FDA4 10200008 */  beqz       $at, .L8012FDC8_13ED78
    /* 13ED58 8012FDA8 00000000 */   nop
    /* 13ED5C 8012FDAC 12800003 */  beqz       $s4, .L8012FDBC_13ED6C
    /* 13ED60 8012FDB0 3C018016 */   lui       $at, %hi(D_8015FF88)
    /* 13ED64 8012FDB4 10000002 */  b          .L8012FDC0_13ED70
    /* 13ED68 8012FDB8 00001025 */   or        $v0, $zero, $zero
  .L8012FDBC_13ED6C:
    /* 13ED6C 8012FDBC 24020064 */  addiu      $v0, $zero, 0x64
  .L8012FDC0_13ED70:
    /* 13ED70 8012FDC0 10000017 */  b          .L8012FE20_13EDD0
    /* 13ED74 8012FDC4 AC22FF88 */   sw        $v0, %lo(D_8015FF88)($at)
  .L8012FDC8_13ED78:
    /* 13ED78 8012FDC8 3C018016 */  lui        $at, %hi(D_8015FF88)
    /* 13ED7C 8012FDCC 10000014 */  b          .L8012FE20_13EDD0
    /* 13ED80 8012FDD0 AC23FF88 */   sw        $v1, %lo(D_8015FF88)($at)
  .L8012FDD4_13ED84:
    /* 13ED84 8012FDD4 12800003 */  beqz       $s4, .L8012FDE4_13ED94
    /* 13ED88 8012FDD8 3C038016 */   lui       $v1, %hi(D_8015FF88)
    /* 13ED8C 8012FDDC 10000002 */  b          .L8012FDE8_13ED98
    /* 13ED90 8012FDE0 00001025 */   or        $v0, $zero, $zero
  .L8012FDE4_13ED94:
    /* 13ED94 8012FDE4 24020064 */  addiu      $v0, $zero, 0x64
  .L8012FDE8_13ED98:
    /* 13ED98 8012FDE8 8C63FF88 */  lw         $v1, %lo(D_8015FF88)($v1)
    /* 13ED9C 8012FDEC 2463000A */  addiu      $v1, $v1, 0xA
    /* 13EDA0 8012FDF0 0043082A */  slt        $at, $v0, $v1
    /* 13EDA4 8012FDF4 10200008 */  beqz       $at, .L8012FE18_13EDC8
    /* 13EDA8 8012FDF8 00000000 */   nop
    /* 13EDAC 8012FDFC 12800003 */  beqz       $s4, .L8012FE0C_13EDBC
    /* 13EDB0 8012FE00 3C018016 */   lui       $at, %hi(D_8015FF88)
    /* 13EDB4 8012FE04 10000002 */  b          .L8012FE10_13EDC0
    /* 13EDB8 8012FE08 00001025 */   or        $v0, $zero, $zero
  .L8012FE0C_13EDBC:
    /* 13EDBC 8012FE0C 24020064 */  addiu      $v0, $zero, 0x64
  .L8012FE10_13EDC0:
    /* 13EDC0 8012FE10 10000003 */  b          .L8012FE20_13EDD0
    /* 13EDC4 8012FE14 AC22FF88 */   sw        $v0, %lo(D_8015FF88)($at)
  .L8012FE18_13EDC8:
    /* 13EDC8 8012FE18 3C018016 */  lui        $at, %hi(D_8015FF88)
    /* 13EDCC 8012FE1C AC23FF88 */  sw         $v1, %lo(D_8015FF88)($at)
  .L8012FE20_13EDD0:
    /* 13EDD0 8012FE20 8FBF006C */  lw         $ra, 0x6C($sp)
    /* 13EDD4 8012FE24 8FA200EC */  lw         $v0, 0xEC($sp)
    /* 13EDD8 8012FE28 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* 13EDDC 8012FE2C D7B60020 */  ldc1       $f22, 0x20($sp)
    /* 13EDE0 8012FE30 D7B80028 */  ldc1       $f24, 0x28($sp)
    /* 13EDE4 8012FE34 D7BA0030 */  ldc1       $f26, 0x30($sp)
    /* 13EDE8 8012FE38 D7BC0038 */  ldc1       $f28, 0x38($sp)
    /* 13EDEC 8012FE3C D7BE0040 */  ldc1       $f30, 0x40($sp)
    /* 13EDF0 8012FE40 8FB00048 */  lw         $s0, 0x48($sp)
    /* 13EDF4 8012FE44 8FB1004C */  lw         $s1, 0x4C($sp)
    /* 13EDF8 8012FE48 8FB20050 */  lw         $s2, 0x50($sp)
    /* 13EDFC 8012FE4C 8FB30054 */  lw         $s3, 0x54($sp)
    /* 13EE00 8012FE50 8FB40058 */  lw         $s4, 0x58($sp)
    /* 13EE04 8012FE54 8FB5005C */  lw         $s5, 0x5C($sp)
    /* 13EE08 8012FE58 8FB60060 */  lw         $s6, 0x60($sp)
    /* 13EE0C 8012FE5C 8FB70064 */  lw         $s7, 0x64($sp)
    /* 13EE10 8012FE60 8FBE0068 */  lw         $fp, 0x68($sp)
    /* 13EE14 8012FE64 03E00008 */  jr         $ra
    /* 13EE18 8012FE68 27BD0120 */   addiu     $sp, $sp, 0x120
endlabel func_8012F4E0_13E490
