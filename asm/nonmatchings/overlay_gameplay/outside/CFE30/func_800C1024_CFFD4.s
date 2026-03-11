nonmatching func_800C1024_CFFD4, 0x6C

glabel func_800C1024_CFFD4
    /* CFFD4 800C1024 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* CFFD8 800C1028 AFBF0014 */  sw         $ra, 0x14($sp)
    /* CFFDC 800C102C AFA5001C */  sw         $a1, 0x1C($sp)
    /* CFFE0 800C1030 0C0303F5 */  jal        func_800C0FD4_CFF84
    /* CFFE4 800C1034 AFA40018 */   sw        $a0, 0x18($sp)
    /* CFFE8 800C1038 44802800 */  mtc1       $zero, $f5
    /* CFFEC 800C103C 44802000 */  mtc1       $zero, $f4
    /* CFFF0 800C1040 460001A1 */  cvt.d.s    $f6, $f0
    /* CFFF4 800C1044 8FA40018 */  lw         $a0, 0x18($sp)
    /* CFFF8 800C1048 46262032 */  c.eq.d     $f4, $f6
    /* CFFFC 800C104C 8FA6001C */  lw         $a2, 0x1C($sp)
    /* D0000 800C1050 46000306 */  mov.s      $f12, $f0
    /* D0004 800C1054 45000008 */  bc1f       .L800C1078_D0028
    /* D0008 800C1058 00000000 */   nop
    /* D000C 800C105C 8C810000 */  lw         $at, 0x0($a0)
    /* D0010 800C1060 ACC10000 */  sw         $at, 0x0($a2)
    /* D0014 800C1064 8C8F0004 */  lw         $t7, 0x4($a0)
    /* D0018 800C1068 ACCF0004 */  sw         $t7, 0x4($a2)
    /* D001C 800C106C 8C810008 */  lw         $at, 0x8($a0)
    /* D0020 800C1070 10000003 */  b          .L800C1080_D0030
    /* D0024 800C1074 ACC10008 */   sw        $at, 0x8($a2)
  .L800C1078_D0028:
    /* D0028 800C1078 0C0303E1 */  jal        func_800C0F84_CFF34
    /* D002C 800C107C 00802825 */   or        $a1, $a0, $zero
  .L800C1080_D0030:
    /* D0030 800C1080 8FBF0014 */  lw         $ra, 0x14($sp)
    /* D0034 800C1084 27BD0018 */  addiu      $sp, $sp, 0x18
    /* D0038 800C1088 03E00008 */  jr         $ra
    /* D003C 800C108C 00000000 */   nop
endlabel func_800C1024_CFFD4
