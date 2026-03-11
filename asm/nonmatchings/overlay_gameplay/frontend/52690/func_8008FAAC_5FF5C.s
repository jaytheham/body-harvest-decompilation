nonmatching func_8008FAAC_5FF5C, 0x128

glabel func_8008FAAC_5FF5C
    /* 5FF5C 8008FAAC 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 5FF60 8008FAB0 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 5FF64 8008FAB4 AFB10018 */  sw         $s1, 0x18($sp)
    /* 5FF68 8008FAB8 AFB00014 */  sw         $s0, 0x14($sp)
    /* 5FF6C 8008FABC 24040800 */  addiu      $a0, $zero, 0x800
    /* 5FF70 8008FAC0 0C000CF5 */  jal        func_800033D4_3FD4
    /* 5FF74 8008FAC4 00002825 */   or        $a1, $zero, $zero
    /* 5FF78 8008FAC8 3C118004 */  lui        $s1, %hi(currentControllerStates)
    /* 5FF7C 8008FACC 26317588 */  addiu      $s1, $s1, %lo(currentControllerStates)
    /* 5FF80 8008FAD0 962E0000 */  lhu        $t6, 0x0($s1)
    /* 5FF84 8008FAD4 24040400 */  addiu      $a0, $zero, 0x400
    /* 5FF88 8008FAD8 00002825 */  or         $a1, $zero, $zero
    /* 5FF8C 8008FADC 31CF0800 */  andi       $t7, $t6, 0x800
    /* 5FF90 8008FAE0 11E00005 */  beqz       $t7, .L8008FAF8_5FFA8
    /* 5FF94 8008FAE4 3C10800E */   lui       $s0, %hi(D_800DE0B0)
    /* 5FF98 8008FAE8 2610E0B0 */  addiu      $s0, $s0, %lo(D_800DE0B0)
    /* 5FF9C 8008FAEC 86180002 */  lh         $t8, 0x2($s0)
    /* 5FFA0 8008FAF0 27190028 */  addiu      $t9, $t8, 0x28
    /* 5FFA4 8008FAF4 A6190002 */  sh         $t9, 0x2($s0)
  .L8008FAF8_5FFA8:
    /* 5FFA8 8008FAF8 3C10800E */  lui        $s0, %hi(D_800DE0B0)
    /* 5FFAC 8008FAFC 0C000CF5 */  jal        func_800033D4_3FD4
    /* 5FFB0 8008FB00 2610E0B0 */   addiu     $s0, $s0, %lo(D_800DE0B0)
    /* 5FFB4 8008FB04 96280000 */  lhu        $t0, 0x0($s1)
    /* 5FFB8 8008FB08 24040200 */  addiu      $a0, $zero, 0x200
    /* 5FFBC 8008FB0C 31090400 */  andi       $t1, $t0, 0x400
    /* 5FFC0 8008FB10 11200004 */  beqz       $t1, .L8008FB24_5FFD4
    /* 5FFC4 8008FB14 00000000 */   nop
    /* 5FFC8 8008FB18 860A0002 */  lh         $t2, 0x2($s0)
    /* 5FFCC 8008FB1C 254BFFD8 */  addiu      $t3, $t2, -0x28
    /* 5FFD0 8008FB20 A60B0002 */  sh         $t3, 0x2($s0)
  .L8008FB24_5FFD4:
    /* 5FFD4 8008FB24 0C000CF5 */  jal        func_800033D4_3FD4
    /* 5FFD8 8008FB28 00002825 */   or        $a1, $zero, $zero
    /* 5FFDC 8008FB2C 962C0000 */  lhu        $t4, 0x0($s1)
    /* 5FFE0 8008FB30 24040100 */  addiu      $a0, $zero, 0x100
    /* 5FFE4 8008FB34 318D0200 */  andi       $t5, $t4, 0x200
    /* 5FFE8 8008FB38 11A00004 */  beqz       $t5, .L8008FB4C_5FFFC
    /* 5FFEC 8008FB3C 00000000 */   nop
    /* 5FFF0 8008FB40 860E0000 */  lh         $t6, 0x0($s0)
    /* 5FFF4 8008FB44 25CFFFD8 */  addiu      $t7, $t6, -0x28
    /* 5FFF8 8008FB48 A60F0000 */  sh         $t7, 0x0($s0)
  .L8008FB4C_5FFFC:
    /* 5FFFC 8008FB4C 0C000CF5 */  jal        func_800033D4_3FD4
    /* 60000 8008FB50 00002825 */   or        $a1, $zero, $zero
    /* 60004 8008FB54 96380000 */  lhu        $t8, 0x0($s1)
    /* 60008 8008FB58 24040008 */  addiu      $a0, $zero, 0x8
    /* 6000C 8008FB5C 33190100 */  andi       $t9, $t8, 0x100
    /* 60010 8008FB60 13200004 */  beqz       $t9, .L8008FB74_60024
    /* 60014 8008FB64 00000000 */   nop
    /* 60018 8008FB68 86080000 */  lh         $t0, 0x0($s0)
    /* 6001C 8008FB6C 25090028 */  addiu      $t1, $t0, 0x28
    /* 60020 8008FB70 A6090000 */  sh         $t1, 0x0($s0)
  .L8008FB74_60024:
    /* 60024 8008FB74 0C000CF5 */  jal        func_800033D4_3FD4
    /* 60028 8008FB78 00002825 */   or        $a1, $zero, $zero
    /* 6002C 8008FB7C 962A0000 */  lhu        $t2, 0x0($s1)
    /* 60030 8008FB80 24040004 */  addiu      $a0, $zero, 0x4
    /* 60034 8008FB84 314B0008 */  andi       $t3, $t2, 0x8
    /* 60038 8008FB88 11600004 */  beqz       $t3, .L8008FB9C_6004C
    /* 6003C 8008FB8C 00000000 */   nop
    /* 60040 8008FB90 860C0004 */  lh         $t4, 0x4($s0)
    /* 60044 8008FB94 258D0028 */  addiu      $t5, $t4, 0x28
    /* 60048 8008FB98 A60D0004 */  sh         $t5, 0x4($s0)
  .L8008FB9C_6004C:
    /* 6004C 8008FB9C 0C000CF5 */  jal        func_800033D4_3FD4
    /* 60050 8008FBA0 00002825 */   or        $a1, $zero, $zero
    /* 60054 8008FBA4 962E0000 */  lhu        $t6, 0x0($s1)
    /* 60058 8008FBA8 31CF0004 */  andi       $t7, $t6, 0x4
    /* 6005C 8008FBAC 51E00005 */  beql       $t7, $zero, .L8008FBC4_60074
    /* 60060 8008FBB0 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 60064 8008FBB4 86180004 */  lh         $t8, 0x4($s0)
    /* 60068 8008FBB8 2719FFD8 */  addiu      $t9, $t8, -0x28
    /* 6006C 8008FBBC A6190004 */  sh         $t9, 0x4($s0)
    /* 60070 8008FBC0 8FBF001C */  lw         $ra, 0x1C($sp)
  .L8008FBC4_60074:
    /* 60074 8008FBC4 8FB00014 */  lw         $s0, 0x14($sp)
    /* 60078 8008FBC8 8FB10018 */  lw         $s1, 0x18($sp)
    /* 6007C 8008FBCC 03E00008 */  jr         $ra
    /* 60080 8008FBD0 27BD0020 */   addiu     $sp, $sp, 0x20
endlabel func_8008FAAC_5FF5C
