nonmatching func_800D0F5C_DFF0C, 0x84

glabel func_800D0F5C_DFF0C
    /* DFF0C 800D0F5C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* DFF10 800D0F60 AFA40018 */  sw         $a0, 0x18($sp)
    /* DFF14 800D0F64 87AA001A */  lh         $t2, 0x1A($sp)
    /* DFF18 800D0F68 00057400 */  sll        $t6, $a1, 16
    /* DFF1C 800D0F6C 0006C400 */  sll        $t8, $a2, 16
    /* DFF20 800D0F70 00074400 */  sll        $t0, $a3, 16
    /* DFF24 800D0F74 00084C03 */  sra        $t1, $t0, 16
    /* DFF28 800D0F78 0018CC03 */  sra        $t9, $t8, 16
    /* DFF2C 800D0F7C 000E7C03 */  sra        $t7, $t6, 16
    /* DFF30 800D0F80 AFA5001C */  sw         $a1, 0x1C($sp)
    /* DFF34 800D0F84 AFA60020 */  sw         $a2, 0x20($sp)
    /* DFF38 800D0F88 AFA70024 */  sw         $a3, 0x24($sp)
    /* DFF3C 800D0F8C 2401FFFD */  addiu      $at, $zero, -0x3
    /* DFF40 800D0F90 01203825 */  or         $a3, $t1, $zero
    /* DFF44 800D0F94 03203025 */  or         $a2, $t9, $zero
    /* DFF48 800D0F98 01E02825 */  or         $a1, $t7, $zero
    /* DFF4C 800D0F9C 1141000C */  beq        $t2, $at, .L800D0FD0_DFF80
    /* DFF50 800D0FA0 AFBF0014 */   sw        $ra, 0x14($sp)
    /* DFF54 800D0FA4 000A58C0 */  sll        $t3, $t2, 3
    /* DFF58 800D0FA8 016A5823 */  subu       $t3, $t3, $t2
    /* DFF5C 800D0FAC 3C0C8015 */  lui        $t4, %hi(D_80154318)
    /* DFF60 800D0FB0 258C4318 */  addiu      $t4, $t4, %lo(D_80154318)
    /* DFF64 800D0FB4 000B5880 */  sll        $t3, $t3, 2
    /* DFF68 800D0FB8 016C1021 */  addu       $v0, $t3, $t4
    /* DFF6C 800D0FBC A44F0008 */  sh         $t7, 0x8($v0)
    /* DFF70 800D0FC0 A459000A */  sh         $t9, 0xA($v0)
    /* DFF74 800D0FC4 A449000C */  sh         $t1, 0xC($v0)
    /* DFF78 800D0FC8 0C03774C */  jal        func_800DDD30_ECCE0
    /* DFF7C 800D0FCC 90440013 */   lbu       $a0, 0x13($v0)
  .L800D0FD0_DFF80:
    /* DFF80 800D0FD0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* DFF84 800D0FD4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* DFF88 800D0FD8 03E00008 */  jr         $ra
    /* DFF8C 800D0FDC 00000000 */   nop
endlabel func_800D0F5C_DFF0C
