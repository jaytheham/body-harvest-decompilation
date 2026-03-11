nonmatching func_800D5FD4_E4F84, 0xB0

glabel func_800D5FD4_E4F84
    /* E4F84 800D5FD4 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* E4F88 800D5FD8 AFBF0024 */  sw         $ra, 0x24($sp)
    /* E4F8C 800D5FDC AFA40030 */  sw         $a0, 0x30($sp)
    /* E4F90 800D5FE0 AFA50034 */  sw         $a1, 0x34($sp)
    /* E4F94 800D5FE4 AFA60038 */  sw         $a2, 0x38($sp)
    /* E4F98 800D5FE8 AFA7003C */  sw         $a3, 0x3C($sp)
    /* E4F9C 800D5FEC 0C030535 */  jal        func_800C14D4_D0484
    /* E4FA0 800D5FF0 24040006 */   addiu     $a0, $zero, 0x6
    /* E4FA4 800D5FF4 240100FB */  addiu      $at, $zero, 0xFB
    /* E4FA8 800D5FF8 1041001D */  beq        $v0, $at, .L800D6070_E5020
    /* E4FAC 800D5FFC A3A2002F */   sb        $v0, 0x2F($sp)
    /* E4FB0 800D6000 93AE003F */  lbu        $t6, 0x3F($sp)
    /* E4FB4 800D6004 93AF0043 */  lbu        $t7, 0x43($sp)
    /* E4FB8 800D6008 93B80047 */  lbu        $t8, 0x47($sp)
    /* E4FBC 800D600C 304400FF */  andi       $a0, $v0, 0xFF
    /* E4FC0 800D6010 87A50032 */  lh         $a1, 0x32($sp)
    /* E4FC4 800D6014 87A60036 */  lh         $a2, 0x36($sp)
    /* E4FC8 800D6018 87A7003A */  lh         $a3, 0x3A($sp)
    /* E4FCC 800D601C AFAE0010 */  sw         $t6, 0x10($sp)
    /* E4FD0 800D6020 AFAF0014 */  sw         $t7, 0x14($sp)
    /* E4FD4 800D6024 0C035821 */  jal        func_800D6084_E5034
    /* E4FD8 800D6028 AFB80018 */   sw        $t8, 0x18($sp)
    /* E4FDC 800D602C 87A50032 */  lh         $a1, 0x32($sp)
    /* E4FE0 800D6030 87A7003A */  lh         $a3, 0x3A($sp)
    /* E4FE4 800D6034 93AB003F */  lbu        $t3, 0x3F($sp)
    /* E4FE8 800D6038 93AC0043 */  lbu        $t4, 0x43($sp)
    /* E4FEC 800D603C 93AD0047 */  lbu        $t5, 0x47($sp)
    /* E4FF0 800D6040 24A50002 */  addiu      $a1, $a1, 0x2
    /* E4FF4 800D6044 24E70002 */  addiu      $a3, $a3, 0x2
    /* E4FF8 800D6048 00074C00 */  sll        $t1, $a3, 16
    /* E4FFC 800D604C 0005CC00 */  sll        $t9, $a1, 16
    /* E5000 800D6050 00192C03 */  sra        $a1, $t9, 16
    /* E5004 800D6054 00093C03 */  sra        $a3, $t1, 16
    /* E5008 800D6058 93A4002F */  lbu        $a0, 0x2F($sp)
    /* E500C 800D605C 87A60036 */  lh         $a2, 0x36($sp)
    /* E5010 800D6060 AFAB0010 */  sw         $t3, 0x10($sp)
    /* E5014 800D6064 AFAC0014 */  sw         $t4, 0x14($sp)
    /* E5018 800D6068 0C035821 */  jal        func_800D6084_E5034
    /* E501C 800D606C AFAD0018 */   sw        $t5, 0x18($sp)
  .L800D6070_E5020:
    /* E5020 800D6070 8FBF0024 */  lw         $ra, 0x24($sp)
    /* E5024 800D6074 93A2002F */  lbu        $v0, 0x2F($sp)
    /* E5028 800D6078 27BD0030 */  addiu      $sp, $sp, 0x30
    /* E502C 800D607C 03E00008 */  jr         $ra
    /* E5030 800D6080 00000000 */   nop
endlabel func_800D5FD4_E4F84
