nonmatching func_800F2ED8_101E88, 0x160

glabel func_800F2ED8_101E88
    /* 101E88 800F2ED8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 101E8C 800F2EDC AFA40018 */  sw         $a0, 0x18($sp)
    /* 101E90 800F2EE0 93AE001B */  lbu        $t6, 0x1B($sp)
    /* 101E94 800F2EE4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 101E98 800F2EE8 AFA5001C */  sw         $a1, 0x1C($sp)
    /* 101E9C 800F2EEC 29C10009 */  slti       $at, $t6, 0x9
    /* 101EA0 800F2EF0 AFA60020 */  sw         $a2, 0x20($sp)
    /* 101EA4 800F2EF4 14200004 */  bnez       $at, .L800F2F08_101EB8
    /* 101EA8 800F2EF8 AFA70024 */   sw        $a3, 0x24($sp)
    /* 101EAC 800F2EFC 3C048014 */  lui        $a0, %hi(D_80144728)
    /* 101EB0 800F2F00 0C00731B */  jal        osSyncPrintf
    /* 101EB4 800F2F04 24844728 */   addiu     $a0, $a0, %lo(D_80144728)
  .L800F2F08_101EB8:
    /* 101EB8 800F2F08 93AF001B */  lbu        $t7, 0x1B($sp)
    /* 101EBC 800F2F0C 3C188015 */  lui        $t8, %hi(D_80157FF0)
    /* 101EC0 800F2F10 2401FFFF */  addiu      $at, $zero, -0x1
    /* 101EC4 800F2F14 030FC021 */  addu       $t8, $t8, $t7
    /* 101EC8 800F2F18 83187FF0 */  lb         $t8, %lo(D_80157FF0)($t8)
    /* 101ECC 800F2F1C 3C048014 */  lui        $a0, %hi(D_80144740)
    /* 101ED0 800F2F20 53010004 */  beql       $t8, $at, .L800F2F34_101EE4
    /* 101ED4 800F2F24 93B9001B */   lbu       $t9, 0x1B($sp)
    /* 101ED8 800F2F28 0C00731B */  jal        osSyncPrintf
    /* 101EDC 800F2F2C 24844740 */   addiu     $a0, $a0, %lo(D_80144740)
    /* 101EE0 800F2F30 93B9001B */  lbu        $t9, 0x1B($sp)
  .L800F2F34_101EE4:
    /* 101EE4 800F2F34 3C098016 */  lui        $t1, %hi(D_80158000)
    /* 101EE8 800F2F38 25298000 */  addiu      $t1, $t1, %lo(D_80158000)
    /* 101EEC 800F2F3C 00194080 */  sll        $t0, $t9, 2
    /* 101EF0 800F2F40 01194023 */  subu       $t0, $t0, $t9
    /* 101EF4 800F2F44 000840C0 */  sll        $t0, $t0, 3
    /* 101EF8 800F2F48 01194023 */  subu       $t0, $t0, $t9
    /* 101EFC 800F2F4C 00084100 */  sll        $t0, $t0, 4
    /* 101F00 800F2F50 01092021 */  addu       $a0, $t0, $t1
    /* 101F04 800F2F54 90830022 */  lbu        $v1, 0x22($a0)
    /* 101F08 800F2F58 87AA001E */  lh         $t2, 0x1E($sp)
    /* 101F0C 800F2F5C 24010010 */  addiu      $at, $zero, 0x10
    /* 101F10 800F2F60 10610031 */  beq        $v1, $at, .L800F3028_101FD8
    /* 101F14 800F2F64 000A2823 */   negu      $a1, $t2
    /* 101F18 800F2F68 00AA082A */  slt        $at, $a1, $t2
    /* 101F1C 800F2F6C 10200003 */  beqz       $at, .L800F2F7C_101F2C
    /* 101F20 800F2F70 00A01025 */   or        $v0, $a1, $zero
    /* 101F24 800F2F74 10000001 */  b          .L800F2F7C_101F2C
    /* 101F28 800F2F78 01401025 */   or        $v0, $t2, $zero
  .L800F2F7C_101F2C:
    /* 101F2C 800F2F7C 2841000D */  slti       $at, $v0, 0xD
    /* 101F30 800F2F80 10200003 */  beqz       $at, .L800F2F90_101F40
    /* 101F34 800F2F84 87AB0022 */   lh        $t3, 0x22($sp)
    /* 101F38 800F2F88 848C0018 */  lh         $t4, 0x18($a0)
    /* 101F3C 800F2F8C 116C0007 */  beq        $t3, $t4, .L800F2FAC_101F5C
  .L800F2F90_101F40:
    /* 101F40 800F2F90 24010004 */   addiu     $at, $zero, 0x4
    /* 101F44 800F2F94 10610005 */  beq        $v1, $at, .L800F2FAC_101F5C
    /* 101F48 800F2F98 93AD002B */   lbu       $t5, 0x2B($sp)
    /* 101F4C 800F2F9C 31AE0080 */  andi       $t6, $t5, 0x80
    /* 101F50 800F2FA0 35CF0001 */  ori        $t7, $t6, 0x1
    /* 101F54 800F2FA4 A08F0022 */  sb         $t7, 0x22($a0)
    /* 101F58 800F2FA8 31E300FF */  andi       $v1, $t7, 0xFF
  .L800F2FAC_101F5C:
    /* 101F5C 800F2FAC 90980023 */  lbu        $t8, 0x23($a0)
    /* 101F60 800F2FB0 3C088016 */  lui        $t0, %hi(D_80160202)
    /* 101F64 800F2FB4 87A9001E */  lh         $t1, 0x1E($sp)
    /* 101F68 800F2FB8 0018C880 */  sll        $t9, $t8, 2
    /* 101F6C 800F2FBC 0338C823 */  subu       $t9, $t9, $t8
    /* 101F70 800F2FC0 0019C880 */  sll        $t9, $t9, 2
    /* 101F74 800F2FC4 0338C823 */  subu       $t9, $t9, $t8
    /* 101F78 800F2FC8 0019C840 */  sll        $t9, $t9, 1
    /* 101F7C 800F2FCC 01194021 */  addu       $t0, $t0, $t9
    /* 101F80 800F2FD0 91080202 */  lbu        $t0, %lo(D_80160202)($t0)
    /* 101F84 800F2FD4 306D0080 */  andi       $t5, $v1, 0x80
    /* 101F88 800F2FD8 01090019 */  multu      $t0, $t1
    /* 101F8C 800F2FDC 00005012 */  mflo       $t2
    /* 101F90 800F2FE0 05410003 */  bgez       $t2, .L800F2FF0_101FA0
    /* 101F94 800F2FE4 000A58C3 */   sra       $t3, $t2, 3
    /* 101F98 800F2FE8 25410007 */  addiu      $at, $t2, 0x7
    /* 101F9C 800F2FEC 000158C3 */  sra        $t3, $at, 3
  .L800F2FF0_101FA0:
    /* 101FA0 800F2FF0 A48B001C */  sh         $t3, 0x1C($a0)
    /* 101FA4 800F2FF4 87AC0022 */  lh         $t4, 0x22($sp)
    /* 101FA8 800F2FF8 11A00003 */  beqz       $t5, .L800F3008_101FB8
    /* 101FAC 800F2FFC A48C0018 */   sh        $t4, 0x18($a0)
    /* 101FB0 800F3000 87AE0026 */  lh         $t6, 0x26($sp)
    /* 101FB4 800F3004 A48E001A */  sh         $t6, 0x1A($a0)
  .L800F3008_101FB8:
    /* 101FB8 800F3008 14A00005 */  bnez       $a1, .L800F3020_101FD0
    /* 101FBC 800F300C 00000000 */   nop
    /* 101FC0 800F3010 8C8F0010 */  lw         $t7, 0x10($a0)
    /* 101FC4 800F3014 8C980014 */  lw         $t8, 0x14($a0)
    /* 101FC8 800F3018 AC8F0000 */  sw         $t7, 0x0($a0)
    /* 101FCC 800F301C AC980004 */  sw         $t8, 0x4($a0)
  .L800F3020_101FD0:
    /* 101FD0 800F3020 0C03CA60 */  jal        func_800F2980_101930
    /* 101FD4 800F3024 00000000 */   nop
  .L800F3028_101FD8:
    /* 101FD8 800F3028 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 101FDC 800F302C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 101FE0 800F3030 03E00008 */  jr         $ra
    /* 101FE4 800F3034 00000000 */   nop
endlabel func_800F2ED8_101E88
