nonmatching func_800ACF9C_BBF4C, 0x154

glabel func_800ACF9C_BBF4C
    /* BBF4C 800ACF9C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* BBF50 800ACFA0 AFA40020 */  sw         $a0, 0x20($sp)
    /* BBF54 800ACFA4 93AE0023 */  lbu        $t6, 0x23($sp)
    /* BBF58 800ACFA8 3C038015 */  lui        $v1, %hi(D_8014D507)
    /* BBF5C 800ACFAC 9063D507 */  lbu        $v1, %lo(D_8014D507)($v1)
    /* BBF60 800ACFB0 000E7880 */  sll        $t7, $t6, 2
    /* BBF64 800ACFB4 3C188005 */  lui        $t8, %hi(buildingInstances)
    /* BBF68 800ACFB8 01EE7823 */  subu       $t7, $t7, $t6
    /* BBF6C 800ACFBC 000F78C0 */  sll        $t7, $t7, 3
    /* BBF70 800ACFC0 27180AD8 */  addiu      $t8, $t8, %lo(buildingInstances)
    /* BBF74 800ACFC4 01F81021 */  addu       $v0, $t7, $t8
    /* BBF78 800ACFC8 AFBF001C */  sw         $ra, 0x1C($sp)
    /* BBF7C 800ACFCC AFB10018 */  sw         $s1, 0x18($sp)
    /* BBF80 800ACFD0 AFB00014 */  sw         $s0, 0x14($sp)
    /* BBF84 800ACFD4 844B0000 */  lh         $t3, 0x0($v0)
    /* BBF88 800ACFD8 1860003D */  blez       $v1, .L800AD0D0_BC080
    /* BBF8C 800ACFDC 844C0004 */   lh        $t4, 0x4($v0)
    /* BBF90 800ACFE0 3C198015 */  lui        $t9, %hi(D_8014D408)
    /* BBF94 800ACFE4 2729D408 */  addiu      $t1, $t9, %lo(D_8014D408)
    /* BBF98 800ACFE8 3C1F8005 */  lui        $ra, %hi(alienInstances)
    /* BBF9C 800ACFEC 27FF8198 */  addiu      $ra, $ra, %lo(alienInstances)
    /* BBFA0 800ACFF0 00696821 */  addu       $t5, $v1, $t1
    /* BBFA4 800ACFF4 2411FE5F */  addiu      $s1, $zero, -0x1A1
    /* BBFA8 800ACFF8 24100050 */  addiu      $s0, $zero, 0x50
    /* BBFAC 800ACFFC 91220000 */  lbu        $v0, 0x0($t1)
  .L800AD000_BBFB0:
    /* BBFB0 800AD000 25290001 */  addiu      $t1, $t1, 0x1
    /* BBFB4 800AD004 00500019 */  multu      $v0, $s0
    /* BBFB8 800AD008 00007012 */  mflo       $t6
    /* BBFBC 800AD00C 03EE3821 */  addu       $a3, $ra, $t6
    /* BBFC0 800AD010 8CEA0020 */  lw         $t2, 0x20($a3)
    /* BBFC4 800AD014 314F0080 */  andi       $t7, $t2, 0x80
    /* BBFC8 800AD018 55E0002B */  bnel       $t7, $zero, .L800AD0C8_BC078
    /* BBFCC 800AD01C 012D082B */   sltu      $at, $t1, $t5
    /* BBFD0 800AD020 90F80024 */  lbu        $t8, 0x24($a3)
    /* BBFD4 800AD024 57000028 */  bnel       $t8, $zero, .L800AD0C8_BC078
    /* BBFD8 800AD028 012D082B */   sltu      $at, $t1, $t5
    /* BBFDC 800AD02C 84F90000 */  lh         $t9, 0x0($a3)
    /* BBFE0 800AD030 84EE0004 */  lh         $t6, 0x4($a3)
    /* BBFE4 800AD034 354F1000 */  ori        $t7, $t2, 0x1000
    /* BBFE8 800AD038 01791023 */  subu       $v0, $t3, $t9
    /* BBFEC 800AD03C 00022023 */  negu       $a0, $v0
    /* BBFF0 800AD040 0082082A */  slt        $at, $a0, $v0
    /* BBFF4 800AD044 10200003 */  beqz       $at, .L800AD054_BC004
    /* BBFF8 800AD048 018E1823 */   subu      $v1, $t4, $t6
    /* BBFFC 800AD04C 10000002 */  b          .L800AD058_BC008
    /* BC000 800AD050 00404025 */   or        $t0, $v0, $zero
  .L800AD054_BC004:
    /* BC004 800AD054 00804025 */  or         $t0, $a0, $zero
  .L800AD058_BC008:
    /* BC008 800AD058 00032823 */  negu       $a1, $v1
    /* BC00C 800AD05C 00A3082A */  slt        $at, $a1, $v1
    /* BC010 800AD060 10200003 */  beqz       $at, .L800AD070_BC020
    /* BC014 800AD064 00A03025 */   or        $a2, $a1, $zero
    /* BC018 800AD068 10000001 */  b          .L800AD070_BC020
    /* BC01C 800AD06C 00603025 */   or        $a2, $v1, $zero
  .L800AD070_BC020:
    /* BC020 800AD070 00C8082A */  slt        $at, $a2, $t0
    /* BC024 800AD074 10200008 */  beqz       $at, .L800AD098_BC048
    /* BC028 800AD078 01F1C824 */   and       $t9, $t7, $s1
    /* BC02C 800AD07C 0082082A */  slt        $at, $a0, $v0
    /* BC030 800AD080 10200003 */  beqz       $at, .L800AD090_BC040
    /* BC034 800AD084 00801825 */   or        $v1, $a0, $zero
    /* BC038 800AD088 1000000A */  b          .L800AD0B4_BC064
    /* BC03C 800AD08C 28410800 */   slti      $at, $v0, 0x800
  .L800AD090_BC040:
    /* BC040 800AD090 10000007 */  b          .L800AD0B0_BC060
    /* BC044 800AD094 00601025 */   or        $v0, $v1, $zero
  .L800AD098_BC048:
    /* BC048 800AD098 00A3082A */  slt        $at, $a1, $v1
    /* BC04C 800AD09C 10200003 */  beqz       $at, .L800AD0AC_BC05C
    /* BC050 800AD0A0 00A02025 */   or        $a0, $a1, $zero
    /* BC054 800AD0A4 10000001 */  b          .L800AD0AC_BC05C
    /* BC058 800AD0A8 00602025 */   or        $a0, $v1, $zero
  .L800AD0AC_BC05C:
    /* BC05C 800AD0AC 00801025 */  or         $v0, $a0, $zero
  .L800AD0B0_BC060:
    /* BC060 800AD0B0 28410800 */  slti       $at, $v0, 0x800
  .L800AD0B4_BC064:
    /* BC064 800AD0B4 50200004 */  beql       $at, $zero, .L800AD0C8_BC078
    /* BC068 800AD0B8 012D082B */   sltu      $at, $t1, $t5
    /* BC06C 800AD0BC ACEF0020 */  sw         $t7, 0x20($a3)
    /* BC070 800AD0C0 ACF90020 */  sw         $t9, 0x20($a3)
    /* BC074 800AD0C4 012D082B */  sltu       $at, $t1, $t5
  .L800AD0C8_BC078:
    /* BC078 800AD0C8 5420FFCD */  bnel       $at, $zero, .L800AD000_BBFB0
    /* BC07C 800AD0CC 91220000 */   lbu       $v0, 0x0($t1)
  .L800AD0D0_BC080:
    /* BC080 800AD0D0 93A40023 */  lbu        $a0, 0x23($sp)
    /* BC084 800AD0D4 0C046EA0 */  jal        func_8011BA80_12AA30
    /* BC088 800AD0D8 24050800 */   addiu     $a1, $zero, 0x800
    /* BC08C 800AD0DC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* BC090 800AD0E0 8FB00014 */  lw         $s0, 0x14($sp)
    /* BC094 800AD0E4 8FB10018 */  lw         $s1, 0x18($sp)
    /* BC098 800AD0E8 03E00008 */  jr         $ra
    /* BC09C 800AD0EC 27BD0020 */   addiu     $sp, $sp, 0x20
endlabel func_800ACF9C_BBF4C
