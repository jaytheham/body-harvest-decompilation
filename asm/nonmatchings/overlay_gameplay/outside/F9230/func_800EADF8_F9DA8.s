nonmatching func_800EADF8_F9DA8, 0x264

glabel func_800EADF8_F9DA8
    /* F9DA8 800EADF8 3C068015 */  lui        $a2, %hi(D_80157A28)
    /* F9DAC 800EADFC 8CC67A28 */  lw         $a2, %lo(D_80157A28)($a2)
    /* F9DB0 800EAE00 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* F9DB4 800EAE04 AFB10018 */  sw         $s1, 0x18($sp)
    /* F9DB8 800EAE08 00058C00 */  sll        $s1, $a1, 16
    /* F9DBC 800EAE0C 00117403 */  sra        $t6, $s1, 16
    /* F9DC0 800EAE10 AFB00014 */  sw         $s0, 0x14($sp)
    /* F9DC4 800EAE14 24010004 */  addiu      $at, $zero, 0x4
    /* F9DC8 800EAE18 30CF0004 */  andi       $t7, $a2, 0x4
    /* F9DCC 800EAE1C 00808025 */  or         $s0, $a0, $zero
    /* F9DD0 800EAE20 01C08825 */  or         $s1, $t6, $zero
    /* F9DD4 800EAE24 AFBF001C */  sw         $ra, 0x1C($sp)
    /* F9DD8 800EAE28 AFA50024 */  sw         $a1, 0x24($sp)
    /* F9DDC 800EAE2C 15E10010 */  bne        $t7, $at, .L800EAE70_F9E20
    /* F9DE0 800EAE30 01E03025 */   or        $a2, $t7, $zero
    /* F9DE4 800EAE34 3C188015 */  lui        $t8, %hi(D_80157A0C)
    /* F9DE8 800EAE38 8F187A0C */  lw         $t8, %lo(D_80157A0C)($t8)
    /* F9DEC 800EAE3C 24010064 */  addiu      $at, $zero, 0x64
    /* F9DF0 800EAE40 3C048015 */  lui        $a0, %hi(D_80157600)
    /* F9DF4 800EAE44 1301001C */  beq        $t8, $at, .L800EAEB8_F9E68
    /* F9DF8 800EAE48 24847600 */   addiu     $a0, $a0, %lo(D_80157600)
    /* F9DFC 800EAE4C 24050064 */  addiu      $a1, $zero, 0x64
    /* F9E00 800EAE50 00003025 */  or         $a2, $zero, $zero
    /* F9E04 800EAE54 0C03AD4D */  jal        func_800EB534_FA4E4
    /* F9E08 800EAE58 24070000 */   addiu     $a3, $zero, 0x0
    /* F9E0C 800EAE5C 3C068015 */  lui        $a2, %hi(D_80157A28)
    /* F9E10 800EAE60 8CC67A28 */  lw         $a2, %lo(D_80157A28)($a2)
    /* F9E14 800EAE64 30D90004 */  andi       $t9, $a2, 0x4
    /* F9E18 800EAE68 10000013 */  b          .L800EAEB8_F9E68
    /* F9E1C 800EAE6C 03203025 */   or        $a2, $t9, $zero
  .L800EAE70_F9E20:
    /* F9E20 800EAE70 3C028015 */  lui        $v0, %hi(D_80157A0C)
    /* F9E24 800EAE74 8C427A0C */  lw         $v0, %lo(D_80157A0C)($v0)
    /* F9E28 800EAE78 24010061 */  addiu      $at, $zero, 0x61
    /* F9E2C 800EAE7C 1041000E */  beq        $v0, $at, .L800EAEB8_F9E68
    /* F9E30 800EAE80 24010062 */   addiu     $at, $zero, 0x62
    /* F9E34 800EAE84 1041000C */  beq        $v0, $at, .L800EAEB8_F9E68
    /* F9E38 800EAE88 24010063 */   addiu     $at, $zero, 0x63
    /* F9E3C 800EAE8C 1041000A */  beq        $v0, $at, .L800EAEB8_F9E68
    /* F9E40 800EAE90 3C048015 */   lui       $a0, %hi(D_80157600)
    /* F9E44 800EAE94 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* F9E48 800EAE98 24050061 */  addiu      $a1, $zero, 0x61
    /* F9E4C 800EAE9C 00003025 */  or         $a2, $zero, $zero
    /* F9E50 800EAEA0 0C03AD4D */  jal        func_800EB534_FA4E4
    /* F9E54 800EAEA4 24070000 */   addiu     $a3, $zero, 0x0
    /* F9E58 800EAEA8 3C068015 */  lui        $a2, %hi(D_80157A28)
    /* F9E5C 800EAEAC 8CC67A28 */  lw         $a2, %lo(D_80157A28)($a2)
    /* F9E60 800EAEB0 30C80004 */  andi       $t0, $a2, 0x4
    /* F9E64 800EAEB4 01003025 */  or         $a2, $t0, $zero
  .L800EAEB8_F9E68:
    /* F9E68 800EAEB8 24010004 */  addiu      $at, $zero, 0x4
    /* F9E6C 800EAEBC 14C10008 */  bne        $a2, $at, .L800EAEE0_F9E90
    /* F9E70 800EAEC0 240905DC */   addiu     $t1, $zero, 0x5DC
    /* F9E74 800EAEC4 3C018015 */  lui        $at, %hi(D_801575D4)
    /* F9E78 800EAEC8 AC2975D4 */  sw         $t1, %lo(D_801575D4)($at)
    /* F9E7C 800EAECC 8603000E */  lh         $v1, 0xE($s0)
    /* F9E80 800EAED0 00712023 */  subu       $a0, $v1, $s1
    /* F9E84 800EAED4 00045400 */  sll        $t2, $a0, 16
    /* F9E88 800EAED8 1000004D */  b          .L800EB010_F9FC0
    /* F9E8C 800EAEDC 000A2403 */   sra       $a0, $t2, 16
  .L800EAEE0_F9E90:
    /* F9E90 800EAEE0 8603000E */  lh         $v1, 0xE($s0)
    /* F9E94 800EAEE4 3C028015 */  lui        $v0, %hi(D_80157A0C)
    /* F9E98 800EAEE8 8C427A0C */  lw         $v0, %lo(D_80157A0C)($v0)
    /* F9E9C 800EAEEC 00712023 */  subu       $a0, $v1, $s1
    /* F9EA0 800EAEF0 00046400 */  sll        $t4, $a0, 16
    /* F9EA4 800EAEF4 000C2403 */  sra        $a0, $t4, 16
    /* F9EA8 800EAEF8 2881C000 */  slti       $at, $a0, -0x4000
    /* F9EAC 800EAEFC 10200018 */  beqz       $at, .L800EAF60_F9F10
    /* F9EB0 800EAF00 24010063 */   addiu     $at, $zero, 0x63
    /* F9EB4 800EAF04 50410017 */  beql       $v0, $at, .L800EAF64_F9F14
    /* F9EB8 800EAF08 28814001 */   slti      $at, $a0, 0x4001
    /* F9EBC 800EAF0C 14C00014 */  bnez       $a2, .L800EAF60_F9F10
    /* F9EC0 800EAF10 24050063 */   addiu     $a1, $zero, 0x63
    /* F9EC4 800EAF14 3C048015 */  lui        $a0, %hi(D_80157600)
    /* F9EC8 800EAF18 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* F9ECC 800EAF1C 00003025 */  or         $a2, $zero, $zero
    /* F9ED0 800EAF20 0C03AD4D */  jal        func_800EB534_FA4E4
    /* F9ED4 800EAF24 24070000 */   addiu     $a3, $zero, 0x0
    /* F9ED8 800EAF28 860E000E */  lh         $t6, 0xE($s0)
    /* F9EDC 800EAF2C 2401000A */  addiu      $at, $zero, 0xA
    /* F9EE0 800EAF30 022E7823 */  subu       $t7, $s1, $t6
    /* F9EE4 800EAF34 000FC400 */  sll        $t8, $t7, 16
    /* F9EE8 800EAF38 0018CC03 */  sra        $t9, $t8, 16
    /* F9EEC 800EAF3C 0321001A */  div        $zero, $t9, $at
    /* F9EF0 800EAF40 00004012 */  mflo       $t0
    /* F9EF4 800EAF44 3C018015 */  lui        $at, %hi(D_801575D4)
    /* F9EF8 800EAF48 AC2875D4 */  sw         $t0, %lo(D_801575D4)($at)
    /* F9EFC 800EAF4C 8603000E */  lh         $v1, 0xE($s0)
    /* F9F00 800EAF50 00712023 */  subu       $a0, $v1, $s1
    /* F9F04 800EAF54 00044C00 */  sll        $t1, $a0, 16
    /* F9F08 800EAF58 1000002D */  b          .L800EB010_F9FC0
    /* F9F0C 800EAF5C 00092403 */   sra       $a0, $t1, 16
  .L800EAF60_F9F10:
    /* F9F10 800EAF60 28814001 */  slti       $at, $a0, 0x4001
  .L800EAF64_F9F14:
    /* F9F14 800EAF64 14200019 */  bnez       $at, .L800EAFCC_F9F7C
    /* F9F18 800EAF68 00024080 */   sll       $t0, $v0, 2
    /* F9F1C 800EAF6C 24010062 */  addiu      $at, $zero, 0x62
    /* F9F20 800EAF70 50410017 */  beql       $v0, $at, .L800EAFD0_F9F80
    /* F9F24 800EAF74 01024023 */   subu      $t0, $t0, $v0
    /* F9F28 800EAF78 14C00014 */  bnez       $a2, .L800EAFCC_F9F7C
    /* F9F2C 800EAF7C 24050062 */   addiu     $a1, $zero, 0x62
    /* F9F30 800EAF80 3C048015 */  lui        $a0, %hi(D_80157600)
    /* F9F34 800EAF84 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* F9F38 800EAF88 00003025 */  or         $a2, $zero, $zero
    /* F9F3C 800EAF8C 0C03AD4D */  jal        func_800EB534_FA4E4
    /* F9F40 800EAF90 24070000 */   addiu     $a3, $zero, 0x0
    /* F9F44 800EAF94 860B000E */  lh         $t3, 0xE($s0)
    /* F9F48 800EAF98 2401000A */  addiu      $at, $zero, 0xA
    /* F9F4C 800EAF9C 01716023 */  subu       $t4, $t3, $s1
    /* F9F50 800EAFA0 000C6C00 */  sll        $t5, $t4, 16
    /* F9F54 800EAFA4 000D7403 */  sra        $t6, $t5, 16
    /* F9F58 800EAFA8 01C1001A */  div        $zero, $t6, $at
    /* F9F5C 800EAFAC 00007812 */  mflo       $t7
    /* F9F60 800EAFB0 3C018015 */  lui        $at, %hi(D_801575D4)
    /* F9F64 800EAFB4 AC2F75D4 */  sw         $t7, %lo(D_801575D4)($at)
    /* F9F68 800EAFB8 8603000E */  lh         $v1, 0xE($s0)
    /* F9F6C 800EAFBC 00712023 */  subu       $a0, $v1, $s1
    /* F9F70 800EAFC0 0004C400 */  sll        $t8, $a0, 16
    /* F9F74 800EAFC4 10000012 */  b          .L800EB010_F9FC0
    /* F9F78 800EAFC8 00182403 */   sra       $a0, $t8, 16
  .L800EAFCC_F9F7C:
    /* F9F7C 800EAFCC 01024023 */  subu       $t0, $t0, $v0
  .L800EAFD0_F9F80:
    /* F9F80 800EAFD0 00084080 */  sll        $t0, $t0, 2
    /* F9F84 800EAFD4 01024021 */  addu       $t0, $t0, $v0
    /* F9F88 800EAFD8 00084080 */  sll        $t0, $t0, 2
    /* F9F8C 800EAFDC 3C098014 */  lui        $t1, %hi(D_8013E5B0)
    /* F9F90 800EAFE0 01284821 */  addu       $t1, $t1, $t0
    /* F9F94 800EAFE4 8D29E5B0 */  lw         $t1, %lo(D_8013E5B0)($t1)
    /* F9F98 800EAFE8 240B05DC */  addiu      $t3, $zero, 0x5DC
    /* F9F9C 800EAFEC 3C018015 */  lui        $at, %hi(D_801575D4)
    /* F9FA0 800EAFF0 312A0100 */  andi       $t2, $t1, 0x100
    /* F9FA4 800EAFF4 15400006 */  bnez       $t2, .L800EB010_F9FC0
    /* F9FA8 800EAFF8 00000000 */   nop
    /* F9FAC 800EAFFC AC2B75D4 */  sw         $t3, %lo(D_801575D4)($at)
    /* F9FB0 800EB000 8603000E */  lh         $v1, 0xE($s0)
    /* F9FB4 800EB004 00712023 */  subu       $a0, $v1, $s1
    /* F9FB8 800EB008 00046400 */  sll        $t4, $a0, 16
    /* F9FBC 800EB00C 000C2403 */  sra        $a0, $t4, 16
  .L800EB010_F9FC0:
    /* F9FC0 800EB010 3C028015 */  lui        $v0, %hi(D_801575D4)
    /* F9FC4 800EB014 8C4275D4 */  lw         $v0, %lo(D_801575D4)($v0)
    /* F9FC8 800EB018 00027023 */  negu       $t6, $v0
    /* F9FCC 800EB01C 008E082A */  slt        $at, $a0, $t6
    /* F9FD0 800EB020 10200003 */  beqz       $at, .L800EB030_F9FE0
    /* F9FD4 800EB024 00627821 */   addu      $t7, $v1, $v0
    /* F9FD8 800EB028 10000007 */  b          .L800EB048_F9FF8
    /* F9FDC 800EB02C A60F000E */   sh        $t7, 0xE($s0)
  .L800EB030_F9FE0:
    /* F9FE0 800EB030 0044082A */  slt        $at, $v0, $a0
    /* F9FE4 800EB034 10200003 */  beqz       $at, .L800EB044_F9FF4
    /* F9FE8 800EB038 0062C023 */   subu      $t8, $v1, $v0
    /* F9FEC 800EB03C 10000002 */  b          .L800EB048_F9FF8
    /* F9FF0 800EB040 A618000E */   sh        $t8, 0xE($s0)
  .L800EB044_F9FF4:
    /* F9FF4 800EB044 A611000E */  sh         $s1, 0xE($s0)
  .L800EB048_F9FF8:
    /* F9FF8 800EB048 8FBF001C */  lw         $ra, 0x1C($sp)
    /* F9FFC 800EB04C 8FB00014 */  lw         $s0, 0x14($sp)
    /* FA000 800EB050 8FB10018 */  lw         $s1, 0x18($sp)
    /* FA004 800EB054 03E00008 */  jr         $ra
    /* FA008 800EB058 27BD0020 */   addiu     $sp, $sp, 0x20
endlabel func_800EADF8_F9DA8
