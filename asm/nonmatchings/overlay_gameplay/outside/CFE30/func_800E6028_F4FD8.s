nonmatching func_800E6028_F4FD8, 0xA4

glabel func_800E6028_F4FD8
    /* F4FD8 800E6028 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* F4FDC 800E602C AFB00018 */  sw         $s0, 0x18($sp)
    /* F4FE0 800E6030 AFA40020 */  sw         $a0, 0x20($sp)
    /* F4FE4 800E6034 30B000FF */  andi       $s0, $a1, 0xFF
    /* F4FE8 800E6038 AFBF001C */  sw         $ra, 0x1C($sp)
    /* F4FEC 800E603C AFA50024 */  sw         $a1, 0x24($sp)
    /* F4FF0 800E6040 3C048014 */  lui        $a0, %hi(D_80143FA4)
    /* F4FF4 800E6044 24843FA4 */  addiu      $a0, $a0, %lo(D_80143FA4)
    /* F4FF8 800E6048 0C00731B */  jal        osSyncPrintf
    /* F4FFC 800E604C 02002825 */   or        $a1, $s0, $zero
    /* F5000 800E6050 3C048015 */  lui        $a0, %hi(D_80152C96)
    /* F5004 800E6054 84842C96 */  lh         $a0, %lo(D_80152C96)($a0)
    /* F5008 800E6058 00001025 */  or         $v0, $zero, $zero
    /* F500C 800E605C 93A50023 */  lbu        $a1, 0x23($sp)
    /* F5010 800E6060 18800015 */  blez       $a0, .L800E60B8_F5068
    /* F5014 800E6064 24070003 */   addiu     $a3, $zero, 0x3
    /* F5018 800E6068 3C068015 */  lui        $a2, %hi(D_80152CA0)
    /* F501C 800E606C 24C62CA0 */  addiu      $a2, $a2, %lo(D_80152CA0)
  .L800E6070_F5020:
    /* F5020 800E6070 00470019 */  multu      $v0, $a3
    /* F5024 800E6074 00007012 */  mflo       $t6
    /* F5028 800E6078 00CE1821 */  addu       $v1, $a2, $t6
    /* F502C 800E607C 906F0001 */  lbu        $t7, 0x1($v1)
    /* F5030 800E6080 54AF0008 */  bnel       $a1, $t7, .L800E60A4_F5054
    /* F5034 800E6084 24420001 */   addiu     $v0, $v0, 0x1
    /* F5038 800E6088 90780000 */  lbu        $t8, 0x0($v1)
    /* F503C 800E608C 24190064 */  addiu      $t9, $zero, 0x64
    /* F5040 800E6090 56180004 */  bnel       $s0, $t8, .L800E60A4_F5054
    /* F5044 800E6094 24420001 */   addiu     $v0, $v0, 0x1
    /* F5048 800E6098 10000007 */  b          .L800E60B8_F5068
    /* F504C 800E609C A0790002 */   sb        $t9, 0x2($v1)
    /* F5050 800E60A0 24420001 */  addiu      $v0, $v0, 0x1
  .L800E60A4_F5054:
    /* F5054 800E60A4 00024400 */  sll        $t0, $v0, 16
    /* F5058 800E60A8 00081403 */  sra        $v0, $t0, 16
    /* F505C 800E60AC 0044082A */  slt        $at, $v0, $a0
    /* F5060 800E60B0 1420FFEF */  bnez       $at, .L800E6070_F5020
    /* F5064 800E60B4 00000000 */   nop
  .L800E60B8_F5068:
    /* F5068 800E60B8 8FBF001C */  lw         $ra, 0x1C($sp)
    /* F506C 800E60BC 8FB00018 */  lw         $s0, 0x18($sp)
    /* F5070 800E60C0 27BD0020 */  addiu      $sp, $sp, 0x20
    /* F5074 800E60C4 03E00008 */  jr         $ra
    /* F5078 800E60C8 00000000 */   nop
endlabel func_800E6028_F4FD8
