nonmatching func_800E5CF4_F4CA4, 0x148

glabel func_800E5CF4_F4CA4
    /* F4CA4 800E5CF4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* F4CA8 800E5CF8 AFA40018 */  sw         $a0, 0x18($sp)
    /* F4CAC 800E5CFC AFA5001C */  sw         $a1, 0x1C($sp)
    /* F4CB0 800E5D00 308600FF */  andi       $a2, $a0, 0xFF
    /* F4CB4 800E5D04 30AF00FF */  andi       $t7, $a1, 0xFF
    /* F4CB8 800E5D08 24090002 */  addiu      $t1, $zero, 0x2
    /* F4CBC 800E5D0C 01E02825 */  or         $a1, $t7, $zero
    /* F4CC0 800E5D10 00C02025 */  or         $a0, $a2, $zero
    /* F4CC4 800E5D14 1526000B */  bne        $t1, $a2, .L800E5D44_F4CF4
    /* F4CC8 800E5D18 AFBF0014 */   sw        $ra, 0x14($sp)
    /* F4CCC 800E5D1C 000FC080 */  sll        $t8, $t7, 2
    /* F4CD0 800E5D20 030FC023 */  subu       $t8, $t8, $t7
    /* F4CD4 800E5D24 0018C0C0 */  sll        $t8, $t8, 3
    /* F4CD8 800E5D28 030FC023 */  subu       $t8, $t8, $t7
    /* F4CDC 800E5D2C 0018C080 */  sll        $t8, $t8, 2
    /* F4CE0 800E5D30 3C198005 */  lui        $t9, %hi(D_8004DCF0)
    /* F4CE4 800E5D34 0338C821 */  addu       $t9, $t9, $t8
    /* F4CE8 800E5D38 9739DCF0 */  lhu        $t9, %lo(D_8004DCF0)($t9)
    /* F4CEC 800E5D3C 332A0080 */  andi       $t2, $t9, 0x80
    /* F4CF0 800E5D40 1540003A */  bnez       $t2, .L800E5E2C_F4DDC
  .L800E5D44_F4CF4:
    /* F4CF4 800E5D44 24070001 */   addiu     $a3, $zero, 0x1
    /* F4CF8 800E5D48 14E60009 */  bne        $a3, $a2, .L800E5D70_F4D20
    /* F4CFC 800E5D4C 00055880 */   sll       $t3, $a1, 2
    /* F4D00 800E5D50 01655823 */  subu       $t3, $t3, $a1
    /* F4D04 800E5D54 000B58C0 */  sll        $t3, $t3, 3
    /* F4D08 800E5D58 3C0C8005 */  lui        $t4, %hi(D_80050AE0)
    /* F4D0C 800E5D5C 018B6021 */  addu       $t4, $t4, $t3
    /* F4D10 800E5D60 8D8C0AE0 */  lw         $t4, %lo(D_80050AE0)($t4)
    /* F4D14 800E5D64 000C6B02 */  srl        $t5, $t4, 12
    /* F4D18 800E5D68 31AE1000 */  andi       $t6, $t5, 0x1000
    /* F4D1C 800E5D6C 15C0002F */  bnez       $t6, .L800E5E2C_F4DDC
  .L800E5D70_F4D20:
    /* F4D20 800E5D70 3C088015 */   lui       $t0, %hi(D_80152C96)
    /* F4D24 800E5D74 25082C96 */  addiu      $t0, $t0, %lo(D_80152C96)
    /* F4D28 800E5D78 85030000 */  lh         $v1, 0x0($t0)
    /* F4D2C 800E5D7C 3C188015 */  lui        $t8, %hi(D_80152CA0)
    /* F4D30 800E5D80 27182CA0 */  addiu      $t8, $t8, %lo(D_80152CA0)
    /* F4D34 800E5D84 00037880 */  sll        $t7, $v1, 2
    /* F4D38 800E5D88 01E37823 */  subu       $t7, $t7, $v1
    /* F4D3C 800E5D8C 01F81021 */  addu       $v0, $t7, $t8
    /* F4D40 800E5D90 28610020 */  slti       $at, $v1, 0x20
    /* F4D44 800E5D94 A0440001 */  sb         $a0, 0x1($v0)
    /* F4D48 800E5D98 A0450000 */  sb         $a1, 0x0($v0)
    /* F4D4C 800E5D9C 14200006 */  bnez       $at, .L800E5DB8_F4D68
    /* F4D50 800E5DA0 A0400002 */   sb        $zero, 0x2($v0)
    /* F4D54 800E5DA4 3C048014 */  lui        $a0, %hi(D_80143F58)
    /* F4D58 800E5DA8 0C00731B */  jal        osSyncPrintf
    /* F4D5C 800E5DAC 24843F58 */   addiu     $a0, $a0, %lo(D_80143F58)
    /* F4D60 800E5DB0 1000001F */  b          .L800E5E30_F4DE0
    /* F4D64 800E5DB4 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800E5DB8_F4D68:
    /* F4D68 800E5DB8 24790001 */  addiu      $t9, $v1, 0x1
    /* F4D6C 800E5DBC 1526000D */  bne        $t1, $a2, .L800E5DF4_F4DA4
    /* F4D70 800E5DC0 A5190000 */   sh        $t9, 0x0($t0)
    /* F4D74 800E5DC4 00055080 */  sll        $t2, $a1, 2
    /* F4D78 800E5DC8 01455023 */  subu       $t2, $t2, $a1
    /* F4D7C 800E5DCC 000A50C0 */  sll        $t2, $t2, 3
    /* F4D80 800E5DD0 01455023 */  subu       $t2, $t2, $a1
    /* F4D84 800E5DD4 3C0B8005 */  lui        $t3, %hi(vehicleInstances)
    /* F4D88 800E5DD8 256BDCD0 */  addiu      $t3, $t3, %lo(vehicleInstances)
    /* F4D8C 800E5DDC 000A5080 */  sll        $t2, $t2, 2
    /* F4D90 800E5DE0 014B1021 */  addu       $v0, $t2, $t3
    /* F4D94 800E5DE4 944C0020 */  lhu        $t4, 0x20($v0)
    /* F4D98 800E5DE8 358D0080 */  ori        $t5, $t4, 0x80
    /* F4D9C 800E5DEC 1000000F */  b          .L800E5E2C_F4DDC
    /* F4DA0 800E5DF0 A44D0020 */   sh        $t5, 0x20($v0)
  .L800E5DF4_F4DA4:
    /* F4DA4 800E5DF4 14E6000D */  bne        $a3, $a2, .L800E5E2C_F4DDC
    /* F4DA8 800E5DF8 00057080 */   sll       $t6, $a1, 2
    /* F4DAC 800E5DFC 01C57023 */  subu       $t6, $t6, $a1
    /* F4DB0 800E5E00 3C0F8005 */  lui        $t7, %hi(buildingInstances)
    /* F4DB4 800E5E04 25EF0AD8 */  addiu      $t7, $t7, %lo(buildingInstances)
    /* F4DB8 800E5E08 000E70C0 */  sll        $t6, $t6, 3
    /* F4DBC 800E5E0C 01CF1021 */  addu       $v0, $t6, $t7
    /* F4DC0 800E5E10 8C430008 */  lw         $v1, 0x8($v0)
    /* F4DC4 800E5E14 00032302 */  srl        $a0, $v1, 12
    /* F4DC8 800E5E18 34981000 */  ori        $t8, $a0, 0x1000
    /* F4DCC 800E5E1C 0304C826 */  xor        $t9, $t8, $a0
    /* F4DD0 800E5E20 00195300 */  sll        $t2, $t9, 12
    /* F4DD4 800E5E24 01435826 */  xor        $t3, $t2, $v1
    /* F4DD8 800E5E28 AC4B0008 */  sw         $t3, 0x8($v0)
  .L800E5E2C_F4DDC:
    /* F4DDC 800E5E2C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800E5E30_F4DE0:
    /* F4DE0 800E5E30 27BD0018 */  addiu      $sp, $sp, 0x18
    /* F4DE4 800E5E34 03E00008 */  jr         $ra
    /* F4DE8 800E5E38 00000000 */   nop
endlabel func_800E5CF4_F4CA4
