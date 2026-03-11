nonmatching func_800D05A8_DF558, 0x6C

glabel func_800D05A8_DF558
    /* DF558 800D05A8 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* DF55C 800D05AC AFA40028 */  sw         $a0, 0x28($sp)
    /* DF560 800D05B0 00047400 */  sll        $t6, $a0, 16
    /* DF564 800D05B4 93AB003B */  lbu        $t3, 0x3B($sp)
    /* DF568 800D05B8 93AC003F */  lbu        $t4, 0x3F($sp)
    /* DF56C 800D05BC 93AD0043 */  lbu        $t5, 0x43($sp)
    /* DF570 800D05C0 000E2403 */  sra        $a0, $t6, 16
    /* DF574 800D05C4 AFBF0024 */  sw         $ra, 0x24($sp)
    /* DF578 800D05C8 AFA5002C */  sw         $a1, 0x2C($sp)
    /* DF57C 800D05CC AFA60030 */  sw         $a2, 0x30($sp)
    /* DF580 800D05D0 AFA70034 */  sw         $a3, 0x34($sp)
    /* DF584 800D05D4 0005C400 */  sll        $t8, $a1, 16
    /* DF588 800D05D8 00064400 */  sll        $t0, $a2, 16
    /* DF58C 800D05DC 30EAFFFF */  andi       $t2, $a3, 0xFFFF
    /* DF590 800D05E0 240E0001 */  addiu      $t6, $zero, 0x1
    /* DF594 800D05E4 01403825 */  or         $a3, $t2, $zero
    /* DF598 800D05E8 00083403 */  sra        $a2, $t0, 16
    /* DF59C 800D05EC 00182C03 */  sra        $a1, $t8, 16
    /* DF5A0 800D05F0 AFAE001C */  sw         $t6, 0x1C($sp)
    /* DF5A4 800D05F4 AFAB0010 */  sw         $t3, 0x10($sp)
    /* DF5A8 800D05F8 AFAC0014 */  sw         $t4, 0x14($sp)
    /* DF5AC 800D05FC 0C034185 */  jal        func_800D0614_DF5C4
    /* DF5B0 800D0600 AFAD0018 */   sw        $t5, 0x18($sp)
    /* DF5B4 800D0604 8FBF0024 */  lw         $ra, 0x24($sp)
    /* DF5B8 800D0608 27BD0028 */  addiu      $sp, $sp, 0x28
    /* DF5BC 800D060C 03E00008 */  jr         $ra
    /* DF5C0 800D0610 00000000 */   nop
endlabel func_800D05A8_DF558
