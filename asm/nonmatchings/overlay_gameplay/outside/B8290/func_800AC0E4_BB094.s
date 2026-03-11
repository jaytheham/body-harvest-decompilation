nonmatching func_800AC0E4_BB094, 0xB4

glabel func_800AC0E4_BB094
    /* BB094 800AC0E4 308E00FF */  andi       $t6, $a0, 0xFF
    /* BB098 800AC0E8 000E7880 */  sll        $t7, $t6, 2
    /* BB09C 800AC0EC 3C028005 */  lui        $v0, %hi(alienInstances)
    /* BB0A0 800AC0F0 01EE7821 */  addu       $t7, $t7, $t6
    /* BB0A4 800AC0F4 24428198 */  addiu      $v0, $v0, %lo(alienInstances)
    /* BB0A8 800AC0F8 000F7900 */  sll        $t7, $t7, 4
    /* BB0AC 800AC0FC 004F3821 */  addu       $a3, $v0, $t7
    /* BB0B0 800AC100 84F80038 */  lh         $t8, 0x38($a3)
    /* BB0B4 800AC104 A4E00048 */  sh         $zero, 0x48($a3)
    /* BB0B8 800AC108 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* BB0BC 800AC10C 0018C880 */  sll        $t9, $t8, 2
    /* BB0C0 800AC110 0338C821 */  addu       $t9, $t9, $t8
    /* BB0C4 800AC114 0019C900 */  sll        $t9, $t9, 4
    /* BB0C8 800AC118 00593021 */  addu       $a2, $v0, $t9
    /* BB0CC 800AC11C 8CC80020 */  lw         $t0, 0x20($a2)
    /* BB0D0 800AC120 AFA40018 */  sw         $a0, 0x18($sp)
    /* BB0D4 800AC124 AFBF0014 */  sw         $ra, 0x14($sp)
    /* BB0D8 800AC128 00084AC0 */  sll        $t1, $t0, 11
    /* BB0DC 800AC12C 05210008 */  bgez       $t1, .L800AC150_BB100
    /* BB0E0 800AC130 00E02025 */   or        $a0, $a3, $zero
    /* BB0E4 800AC134 8CEA0020 */  lw         $t2, 0x20($a3)
    /* BB0E8 800AC138 2401FFDF */  addiu      $at, $zero, -0x21
    /* BB0EC 800AC13C 240C0040 */  addiu      $t4, $zero, 0x40
    /* BB0F0 800AC140 01415824 */  and        $t3, $t2, $at
    /* BB0F4 800AC144 ACEB0020 */  sw         $t3, 0x20($a3)
    /* BB0F8 800AC148 1000000F */  b          .L800AC188_BB138
    /* BB0FC 800AC14C A4EC0048 */   sh        $t4, 0x48($a3)
  .L800AC150_BB100:
    /* BB100 800AC150 90ED0036 */  lbu        $t5, 0x36($a3)
    /* BB104 800AC154 24010010 */  addiu      $at, $zero, 0x10
    /* BB108 800AC158 3C188005 */  lui        $t8, %hi(alienInstances)
    /* BB10C 800AC15C 15A10008 */  bne        $t5, $at, .L800AC180_BB130
    /* BB110 800AC160 00000000 */   nop
    /* BB114 800AC164 84EE0038 */  lh         $t6, 0x38($a3)
    /* BB118 800AC168 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* BB11C 800AC16C A4E0001E */  sh         $zero, 0x1E($a3)
    /* BB120 800AC170 000E7880 */  sll        $t7, $t6, 2
    /* BB124 800AC174 01EE7821 */  addu       $t7, $t7, $t6
    /* BB128 800AC178 000F7900 */  sll        $t7, $t7, 4
    /* BB12C 800AC17C 01F83021 */  addu       $a2, $t7, $t8
  .L800AC180_BB130:
    /* BB130 800AC180 0C04AC44 */  jal        func_8012B110_13A0C0
    /* BB134 800AC184 00002825 */   or        $a1, $zero, $zero
  .L800AC188_BB138:
    /* BB138 800AC188 8FBF0014 */  lw         $ra, 0x14($sp)
    /* BB13C 800AC18C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* BB140 800AC190 03E00008 */  jr         $ra
    /* BB144 800AC194 00000000 */   nop
endlabel func_800AC0E4_BB094
