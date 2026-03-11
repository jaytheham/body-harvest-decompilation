nonmatching func_800F9CB0_108C60, 0x74

glabel func_800F9CB0_108C60
    /* 108C60 800F9CB0 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 108C64 800F9CB4 3C0F8016 */  lui        $t7, %hi(D_80159218)
    /* 108C68 800F9CB8 85EF9218 */  lh         $t7, %lo(D_80159218)($t7)
    /* 108C6C 800F9CBC 00043C00 */  sll        $a3, $a0, 16
    /* 108C70 800F9CC0 00077403 */  sra        $t6, $a3, 16
    /* 108C74 800F9CC4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 108C78 800F9CC8 AFA40020 */  sw         $a0, 0x20($sp)
    /* 108C7C 800F9CCC AFA50024 */  sw         $a1, 0x24($sp)
    /* 108C80 800F9CD0 AFA60028 */  sw         $a2, 0x28($sp)
    /* 108C84 800F9CD4 0C03E710 */  jal        func_800F9C40_108BF0
    /* 108C88 800F9CD8 01CF2023 */   subu      $a0, $t6, $t7
    /* 108C8C 800F9CDC 3C198016 */  lui        $t9, %hi(D_8015921C)
    /* 108C90 800F9CE0 8739921C */  lh         $t9, %lo(D_8015921C)($t9)
    /* 108C94 800F9CE4 87B8002A */  lh         $t8, 0x2A($sp)
    /* 108C98 800F9CE8 AFA2001C */  sw         $v0, 0x1C($sp)
    /* 108C9C 800F9CEC 0C03E710 */  jal        func_800F9C40_108BF0
    /* 108CA0 800F9CF0 03192023 */   subu      $a0, $t8, $t9
    /* 108CA4 800F9CF4 8FA8001C */  lw         $t0, 0x1C($sp)
    /* 108CA8 800F9CF8 00484821 */  addu       $t1, $v0, $t0
    /* 108CAC 800F9CFC 2D2109C4 */  sltiu      $at, $t1, 0x9C4
    /* 108CB0 800F9D00 10200004 */  beqz       $at, .L800F9D14_108CC4
    /* 108CB4 800F9D04 8FA20024 */   lw        $v0, 0x24($sp)
    /* 108CB8 800F9D08 844A0000 */  lh         $t2, 0x0($v0)
    /* 108CBC 800F9D0C 254B0014 */  addiu      $t3, $t2, 0x14
    /* 108CC0 800F9D10 A44B0000 */  sh         $t3, 0x0($v0)
  .L800F9D14_108CC4:
    /* 108CC4 800F9D14 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 108CC8 800F9D18 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 108CCC 800F9D1C 03E00008 */  jr         $ra
    /* 108CD0 800F9D20 00000000 */   nop
endlabel func_800F9CB0_108C60
