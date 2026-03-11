nonmatching func_800AB80C_BA7BC, 0xC0

glabel func_800AB80C_BA7BC
    /* BA7BC 800AB80C 308E00FF */  andi       $t6, $a0, 0xFF
    /* BA7C0 800AB810 000E7880 */  sll        $t7, $t6, 2
    /* BA7C4 800AB814 01EE7821 */  addu       $t7, $t7, $t6
    /* BA7C8 800AB818 3C188005 */  lui        $t8, %hi(alienInstances)
    /* BA7CC 800AB81C 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* BA7D0 800AB820 000F7900 */  sll        $t7, $t7, 4
    /* BA7D4 800AB824 01F81821 */  addu       $v1, $t7, $t8
    /* BA7D8 800AB828 90680024 */  lbu        $t0, 0x24($v1)
    /* BA7DC 800AB82C 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* BA7E0 800AB830 AFA40030 */  sw         $a0, 0x30($sp)
    /* BA7E4 800AB834 241900C0 */  addiu      $t9, $zero, 0xC0
    /* BA7E8 800AB838 2401000D */  addiu      $at, $zero, 0xD
    /* BA7EC 800AB83C 01C02025 */  or         $a0, $t6, $zero
    /* BA7F0 800AB840 AFBF0014 */  sw         $ra, 0x14($sp)
    /* BA7F4 800AB844 1501000E */  bne        $t0, $at, .L800AB880_BA830
    /* BA7F8 800AB848 A4790048 */   sh        $t9, 0x48($v1)
    /* BA7FC 800AB84C 3C098005 */  lui        $t1, %hi(D_80052B34)
    /* BA800 800AB850 8D292B34 */  lw         $t1, %lo(D_80052B34)($t1)
    /* BA804 800AB854 3C01FFFD */  lui        $at, (0xFFFDFFFF >> 16)
    /* BA808 800AB858 3421FFFF */  ori        $at, $at, (0xFFFDFFFF & 0xFFFF)
    /* BA80C 800AB85C 912A001A */  lbu        $t2, 0x1A($t1)
    /* BA810 800AB860 51400008 */  beql       $t2, $zero, .L800AB884_BA834
    /* BA814 800AB864 24050023 */   addiu     $a1, $zero, 0x23
    /* BA818 800AB868 8C6B0020 */  lw         $t3, 0x20($v1)
    /* BA81C 800AB86C 240D0015 */  addiu      $t5, $zero, 0x15
    /* BA820 800AB870 A06D0024 */  sb         $t5, 0x24($v1)
    /* BA824 800AB874 01616024 */  and        $t4, $t3, $at
    /* BA828 800AB878 10000010 */  b          .L800AB8BC_BA86C
    /* BA82C 800AB87C AC6C0020 */   sw        $t4, 0x20($v1)
  .L800AB880_BA830:
    /* BA830 800AB880 24050023 */  addiu      $a1, $zero, 0x23
  .L800AB884_BA834:
    /* BA834 800AB884 0C020210 */  jal        func_80080840_8F7F0
    /* BA838 800AB888 AFA3001C */   sw        $v1, 0x1C($sp)
    /* BA83C 800AB88C 1040000B */  beqz       $v0, .L800AB8BC_BA86C
    /* BA840 800AB890 8FA3001C */   lw        $v1, 0x1C($sp)
    /* BA844 800AB894 906E0024 */  lbu        $t6, 0x24($v1)
    /* BA848 800AB898 8C780020 */  lw         $t8, 0x20($v1)
    /* BA84C 800AB89C 3C01FFFD */  lui        $at, (0xFFFDFFFF >> 16)
    /* BA850 800AB8A0 3421FFFF */  ori        $at, $at, (0xFFFDFFFF & 0xFFFF)
    /* BA854 800AB8A4 25CF0001 */  addiu      $t7, $t6, 0x1
    /* BA858 800AB8A8 0301C824 */  and        $t9, $t8, $at
    /* BA85C 800AB8AC A4600048 */  sh         $zero, 0x48($v1)
    /* BA860 800AB8B0 A06F0024 */  sb         $t7, 0x24($v1)
    /* BA864 800AB8B4 A0600036 */  sb         $zero, 0x36($v1)
    /* BA868 800AB8B8 AC790020 */  sw         $t9, 0x20($v1)
  .L800AB8BC_BA86C:
    /* BA86C 800AB8BC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* BA870 800AB8C0 27BD0030 */  addiu      $sp, $sp, 0x30
    /* BA874 800AB8C4 03E00008 */  jr         $ra
    /* BA878 800AB8C8 00000000 */   nop
endlabel func_800AB80C_BA7BC
