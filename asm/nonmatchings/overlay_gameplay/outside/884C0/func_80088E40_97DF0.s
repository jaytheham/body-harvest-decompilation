nonmatching func_80088E40_97DF0, 0x138

glabel func_80088E40_97DF0
    /* 97DF0 80088E40 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 97DF4 80088E44 AFA40040 */  sw         $a0, 0x40($sp)
    /* 97DF8 80088E48 93AE0043 */  lbu        $t6, 0x43($sp)
    /* 97DFC 80088E4C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 97E00 80088E50 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 97E04 80088E54 000E7880 */  sll        $t7, $t6, 2
    /* 97E08 80088E58 01EE7821 */  addu       $t7, $t7, $t6
    /* 97E0C 80088E5C 000F7900 */  sll        $t7, $t7, 4
    /* 97E10 80088E60 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 97E14 80088E64 AFA50044 */  sw         $a1, 0x44($sp)
    /* 97E18 80088E68 AFA60048 */  sw         $a2, 0x48($sp)
    /* 97E1C 80088E6C AFA7004C */  sw         $a3, 0x4C($sp)
    /* 97E20 80088E70 01F82021 */  addu       $a0, $t7, $t8
    /* 97E24 80088E74 27B90034 */  addiu      $t9, $sp, 0x34
    /* 97E28 80088E78 27A80030 */  addiu      $t0, $sp, 0x30
    /* 97E2C 80088E7C 27A9002C */  addiu      $t1, $sp, 0x2C
    /* 97E30 80088E80 AFA90018 */  sw         $t1, 0x18($sp)
    /* 97E34 80088E84 AFA80014 */  sw         $t0, 0x14($sp)
    /* 97E38 80088E88 AFB90010 */  sw         $t9, 0x10($sp)
    /* 97E3C 80088E8C AFA40028 */  sw         $a0, 0x28($sp)
    /* 97E40 80088E90 87A6004E */  lh         $a2, 0x4E($sp)
    /* 97E44 80088E94 87A70052 */  lh         $a3, 0x52($sp)
    /* 97E48 80088E98 0C04A10A */  jal        func_80128428_1373D8
    /* 97E4C 80088E9C 87A5004A */   lh        $a1, 0x4A($sp)
    /* 97E50 80088EA0 87A40036 */  lh         $a0, 0x36($sp)
    /* 97E54 80088EA4 87A50032 */  lh         $a1, 0x32($sp)
    /* 97E58 80088EA8 87A6002E */  lh         $a2, 0x2E($sp)
    /* 97E5C 80088EAC 24070050 */  addiu      $a3, $zero, 0x50
    /* 97E60 80088EB0 0C037E12 */  jal        func_800DF848_EE7F8
    /* 97E64 80088EB4 AFA00010 */   sw        $zero, 0x10($sp)
    /* 97E68 80088EB8 93A40043 */  lbu        $a0, 0x43($sp)
    /* 97E6C 80088EBC 0C02245B */  jal        func_8008916C_9811C
    /* 97E70 80088EC0 87A50046 */   lh        $a1, 0x46($sp)
    /* 97E74 80088EC4 8FAB0028 */  lw         $t3, 0x28($sp)
    /* 97E78 80088EC8 240AFFF8 */  addiu      $t2, $zero, -0x8
    /* 97E7C 80088ECC AFAA0010 */  sw         $t2, 0x10($sp)
    /* 97E80 80088ED0 916C001A */  lbu        $t4, 0x1A($t3)
    /* 97E84 80088ED4 3C0E8025 */  lui        $t6, %hi(D_8025668C)
    /* 97E88 80088ED8 240F0001 */  addiu      $t7, $zero, 0x1
    /* 97E8C 80088EDC 000C6880 */  sll        $t5, $t4, 2
    /* 97E90 80088EE0 01AC6823 */  subu       $t5, $t5, $t4
    /* 97E94 80088EE4 000D6880 */  sll        $t5, $t5, 2
    /* 97E98 80088EE8 01AC6821 */  addu       $t5, $t5, $t4
    /* 97E9C 80088EEC 000D68C0 */  sll        $t5, $t5, 3
    /* 97EA0 80088EF0 01CD7021 */  addu       $t6, $t6, $t5
    /* 97EA4 80088EF4 85CE668C */  lh         $t6, %lo(D_8025668C)($t6)
    /* 97EA8 80088EF8 AFAF001C */  sw         $t7, 0x1C($sp)
    /* 97EAC 80088EFC AFA20018 */  sw         $v0, 0x18($sp)
    /* 97EB0 80088F00 87A40036 */  lh         $a0, 0x36($sp)
    /* 97EB4 80088F04 87A50032 */  lh         $a1, 0x32($sp)
    /* 97EB8 80088F08 87A6002E */  lh         $a2, 0x2E($sp)
    /* 97EBC 80088F0C 24070040 */  addiu      $a3, $zero, 0x40
    /* 97EC0 80088F10 0C031E49 */  jal        func_800C7924_D68D4
    /* 97EC4 80088F14 AFAE0014 */   sw        $t6, 0x14($sp)
    /* 97EC8 80088F18 8FB80028 */  lw         $t8, 0x28($sp)
    /* 97ECC 80088F1C A7A2003A */  sh         $v0, 0x3A($sp)
    /* 97ED0 80088F20 24084000 */  addiu      $t0, $zero, 0x4000
    /* 97ED4 80088F24 87190006 */  lh         $t9, 0x6($t8)
    /* 97ED8 80088F28 00023C00 */  sll        $a3, $v0, 16
    /* 97EDC 80088F2C 00075403 */  sra        $t2, $a3, 16
    /* 97EE0 80088F30 01192023 */  subu       $a0, $t0, $t9
    /* 97EE4 80088F34 3089FFFF */  andi       $t1, $a0, 0xFFFF
    /* 97EE8 80088F38 01202025 */  or         $a0, $t1, $zero
    /* 97EEC 80088F3C 01403825 */  or         $a3, $t2, $zero
    /* 97EF0 80088F40 00002825 */  or         $a1, $zero, $zero
    /* 97EF4 80088F44 0C03203C */  jal        func_800C80F0_D70A0
    /* 97EF8 80088F48 00003025 */   or        $a2, $zero, $zero
    /* 97EFC 80088F4C 83A40057 */  lb         $a0, 0x57($sp)
    /* 97F00 80088F50 83A5005B */  lb         $a1, 0x5B($sp)
    /* 97F04 80088F54 83A6005F */  lb         $a2, 0x5F($sp)
    /* 97F08 80088F58 0C032061 */  jal        func_800C8184_D7134
    /* 97F0C 80088F5C 87A7003A */   lh        $a3, 0x3A($sp)
    /* 97F10 80088F60 0C022384 */  jal        func_80088E10_97DC0
    /* 97F14 80088F64 87A40046 */   lh        $a0, 0x46($sp)
    /* 97F18 80088F68 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 97F1C 80088F6C 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 97F20 80088F70 03E00008 */  jr         $ra
    /* 97F24 80088F74 00000000 */   nop
endlabel func_80088E40_97DF0
