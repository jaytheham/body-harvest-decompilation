nonmatching func_800CE100_DD0B0, 0xC0

glabel func_800CE100_DD0B0
    /* DD0B0 800CE100 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* DD0B4 800CE104 308E00FF */  andi       $t6, $a0, 0xFF
    /* DD0B8 800CE108 AFA40018 */  sw         $a0, 0x18($sp)
    /* DD0BC 800CE10C 29C1001E */  slti       $at, $t6, 0x1E
    /* DD0C0 800CE110 01C02025 */  or         $a0, $t6, $zero
    /* DD0C4 800CE114 AFBF0014 */  sw         $ra, 0x14($sp)
    /* DD0C8 800CE118 AFA5001C */  sw         $a1, 0x1C($sp)
    /* DD0CC 800CE11C AFA60020 */  sw         $a2, 0x20($sp)
    /* DD0D0 800CE120 10200022 */  beqz       $at, .L800CE1AC_DD15C
    /* DD0D4 800CE124 AFA70024 */   sw        $a3, 0x24($sp)
    /* DD0D8 800CE128 000E7880 */  sll        $t7, $t6, 2
    /* DD0DC 800CE12C 01EE7823 */  subu       $t7, $t7, $t6
    /* DD0E0 800CE130 000F7880 */  sll        $t7, $t7, 2
    /* DD0E4 800CE134 3C188015 */  lui        $t8, %hi(D_80154088)
    /* DD0E8 800CE138 030FC021 */  addu       $t8, $t8, $t7
    /* DD0EC 800CE13C 93184088 */  lbu        $t8, %lo(D_80154088)($t8)
    /* DD0F0 800CE140 24010009 */  addiu      $at, $zero, 0x9
    /* DD0F4 800CE144 5701001A */  bnel       $t8, $at, .L800CE1B0_DD160
    /* DD0F8 800CE148 2402FFF3 */   addiu     $v0, $zero, -0xD
    /* DD0FC 800CE14C 0C0305ED */  jal        func_800C17B4_D0764
    /* DD100 800CE150 00002825 */   or        $a1, $zero, $zero
    /* DD104 800CE154 2401FFFD */  addiu      $at, $zero, -0x3
    /* DD108 800CE158 10410012 */  beq        $v0, $at, .L800CE1A4_DD154
    /* DD10C 800CE15C 0002C8C0 */   sll       $t9, $v0, 3
    /* DD110 800CE160 0322C823 */  subu       $t9, $t9, $v0
    /* DD114 800CE164 3C088015 */  lui        $t0, %hi(D_80154318)
    /* DD118 800CE168 25084318 */  addiu      $t0, $t0, %lo(D_80154318)
    /* DD11C 800CE16C 0019C880 */  sll        $t9, $t9, 2
    /* DD120 800CE170 03281821 */  addu       $v1, $t9, $t0
    /* DD124 800CE174 87A9001E */  lh         $t1, 0x1E($sp)
    /* DD128 800CE178 87AA0022 */  lh         $t2, 0x22($sp)
    /* DD12C 800CE17C 87AB0026 */  lh         $t3, 0x26($sp)
    /* DD130 800CE180 87AC002A */  lh         $t4, 0x2A($sp)
    /* DD134 800CE184 87AD002E */  lh         $t5, 0x2E($sp)
    /* DD138 800CE188 87AE0032 */  lh         $t6, 0x32($sp)
    /* DD13C 800CE18C A4690008 */  sh         $t1, 0x8($v1)
    /* DD140 800CE190 A46A000A */  sh         $t2, 0xA($v1)
    /* DD144 800CE194 A46B000C */  sh         $t3, 0xC($v1)
    /* DD148 800CE198 A46C000E */  sh         $t4, 0xE($v1)
    /* DD14C 800CE19C A46D0010 */  sh         $t5, 0x10($v1)
    /* DD150 800CE1A0 A46E0012 */  sh         $t6, 0x12($v1)
  .L800CE1A4_DD154:
    /* DD154 800CE1A4 10000002 */  b          .L800CE1B0_DD160
    /* DD158 800CE1A8 00001025 */   or        $v0, $zero, $zero
  .L800CE1AC_DD15C:
    /* DD15C 800CE1AC 2402FFF3 */  addiu      $v0, $zero, -0xD
  .L800CE1B0_DD160:
    /* DD160 800CE1B0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* DD164 800CE1B4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* DD168 800CE1B8 03E00008 */  jr         $ra
    /* DD16C 800CE1BC 00000000 */   nop
endlabel func_800CE100_DD0B0
