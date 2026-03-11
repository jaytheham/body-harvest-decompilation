nonmatching func_800EA12C_F90DC, 0x150

glabel func_800EA12C_F90DC
    /* F90DC 800EA12C 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* F90E0 800EA130 AFB10024 */  sw         $s1, 0x24($sp)
    /* F90E4 800EA134 3C118016 */  lui        $s1, %hi(D_80158FD8)
    /* F90E8 800EA138 86318FD8 */  lh         $s1, %lo(D_80158FD8)($s1)
    /* F90EC 800EA13C AFBF0044 */  sw         $ra, 0x44($sp)
    /* F90F0 800EA140 AFBE0040 */  sw         $fp, 0x40($sp)
    /* F90F4 800EA144 02201025 */  or         $v0, $s1, $zero
    /* F90F8 800EA148 AFB7003C */  sw         $s7, 0x3C($sp)
    /* F90FC 800EA14C AFB60038 */  sw         $s6, 0x38($sp)
    /* F9100 800EA150 AFB50034 */  sw         $s5, 0x34($sp)
    /* F9104 800EA154 AFB40030 */  sw         $s4, 0x30($sp)
    /* F9108 800EA158 AFB3002C */  sw         $s3, 0x2C($sp)
    /* F910C 800EA15C AFB20028 */  sw         $s2, 0x28($sp)
    /* F9110 800EA160 AFB00020 */  sw         $s0, 0x20($sp)
    /* F9114 800EA164 12200039 */  beqz       $s1, .L800EA24C_F91FC
    /* F9118 800EA168 2631FFFF */   addiu     $s1, $s1, -0x1
    /* F911C 800EA16C 3C0E8016 */  lui        $t6, %hi(D_80158E80)
    /* F9120 800EA170 25CE8E80 */  addiu      $t6, $t6, %lo(D_80158E80)
    /* F9124 800EA174 3C1E8025 */  lui        $fp, %hi(vehicleSpecs)
    /* F9128 800EA178 3C178004 */  lui        $s7, %hi(D_80047950)
    /* F912C 800EA17C 3C158005 */  lui        $s5, %hi(D_80052B2C)
    /* F9130 800EA180 3C138005 */  lui        $s3, %hi(vehicleInstances)
    /* F9134 800EA184 2673DCD0 */  addiu      $s3, $s3, %lo(vehicleInstances)
    /* F9138 800EA188 26B52B2C */  addiu      $s5, $s5, %lo(D_80052B2C)
    /* F913C 800EA18C 26F77950 */  addiu      $s7, $s7, %lo(D_80047950)
    /* F9140 800EA190 27DE7A00 */  addiu      $fp, $fp, %lo(vehicleSpecs)
    /* F9144 800EA194 022E9021 */  addu       $s2, $s1, $t6
    /* F9148 800EA198 24164000 */  addiu      $s6, $zero, 0x4000
    /* F914C 800EA19C 2414005C */  addiu      $s4, $zero, 0x5C
  .L800EA1A0_F9150:
    /* F9150 800EA1A0 924F0000 */  lbu        $t7, 0x0($s2)
    /* F9154 800EA1A4 01F40019 */  multu      $t7, $s4
    /* F9158 800EA1A8 0000C012 */  mflo       $t8
    /* F915C 800EA1AC 02788021 */  addu       $s0, $s3, $t8
    /* F9160 800EA1B0 96190020 */  lhu        $t9, 0x20($s0)
    /* F9164 800EA1B4 33288000 */  andi       $t0, $t9, 0x8000
    /* F9168 800EA1B8 51000021 */  beql       $t0, $zero, .L800EA240_F91F0
    /* F916C 800EA1BC 02201025 */   or        $v0, $s1, $zero
    /* F9170 800EA1C0 86040000 */  lh         $a0, 0x0($s0)
    /* F9174 800EA1C4 0C01C0EC */  jal        func_800703B0_7F360
    /* F9178 800EA1C8 86050004 */   lh        $a1, 0x4($s0)
    /* F917C 800EA1CC 5040001C */  beql       $v0, $zero, .L800EA240_F91F0
    /* F9180 800EA1D0 02201025 */   or        $v0, $s1, $zero
    /* F9184 800EA1D4 8EA20000 */  lw         $v0, 0x0($s5)
    /* F9188 800EA1D8 86EE0000 */  lh         $t6, 0x0($s7)
    /* F918C 800EA1DC 86040000 */  lh         $a0, 0x0($s0)
    /* F9190 800EA1E0 C4440000 */  lwc1       $f4, 0x0($v0)
    /* F9194 800EA1E4 C4480008 */  lwc1       $f8, 0x8($v0)
    /* F9198 800EA1E8 86050004 */  lh         $a1, 0x4($s0)
    /* F919C 800EA1EC 4600218D */  trunc.w.s  $f6, $f4
    /* F91A0 800EA1F0 02CE7823 */  subu       $t7, $s6, $t6
    /* F91A4 800EA1F4 AFAF0014 */  sw         $t7, 0x14($sp)
    /* F91A8 800EA1F8 4600428D */  trunc.w.s  $f10, $f8
    /* F91AC 800EA1FC 44073000 */  mfc1       $a3, $f6
    /* F91B0 800EA200 240600A0 */  addiu      $a2, $zero, 0xA0
    /* F91B4 800EA204 440D5000 */  mfc1       $t5, $f10
    /* F91B8 800EA208 00075400 */  sll        $t2, $a3, 16
    /* F91BC 800EA20C 000A3C03 */  sra        $a3, $t2, 16
    /* F91C0 800EA210 0C02E4EB */  jal        func_800B93AC_C835C
    /* F91C4 800EA214 AFAD0010 */   sw        $t5, 0x10($sp)
    /* F91C8 800EA218 50400009 */  beql       $v0, $zero, .L800EA240_F91F0
    /* F91CC 800EA21C 02201025 */   or        $v0, $s1, $zero
    /* F91D0 800EA220 9218001A */  lbu        $t8, 0x1A($s0)
    /* F91D4 800EA224 02002025 */  or         $a0, $s0, $zero
    /* F91D8 800EA228 0018C8C0 */  sll        $t9, $t8, 3
    /* F91DC 800EA22C 0338C823 */  subu       $t9, $t9, $t8
    /* F91E0 800EA230 0019C900 */  sll        $t9, $t9, 4
    /* F91E4 800EA234 0C03A623 */  jal        func_800E988C_F883C
    /* F91E8 800EA238 03D92821 */   addu      $a1, $fp, $t9
    /* F91EC 800EA23C 02201025 */  or         $v0, $s1, $zero
  .L800EA240_F91F0:
    /* F91F0 800EA240 2652FFFF */  addiu      $s2, $s2, -0x1
    /* F91F4 800EA244 1620FFD6 */  bnez       $s1, .L800EA1A0_F9150
    /* F91F8 800EA248 2631FFFF */   addiu     $s1, $s1, -0x1
  .L800EA24C_F91FC:
    /* F91FC 800EA24C 8FBF0044 */  lw         $ra, 0x44($sp)
    /* F9200 800EA250 8FB00020 */  lw         $s0, 0x20($sp)
    /* F9204 800EA254 8FB10024 */  lw         $s1, 0x24($sp)
    /* F9208 800EA258 8FB20028 */  lw         $s2, 0x28($sp)
    /* F920C 800EA25C 8FB3002C */  lw         $s3, 0x2C($sp)
    /* F9210 800EA260 8FB40030 */  lw         $s4, 0x30($sp)
    /* F9214 800EA264 8FB50034 */  lw         $s5, 0x34($sp)
    /* F9218 800EA268 8FB60038 */  lw         $s6, 0x38($sp)
    /* F921C 800EA26C 8FB7003C */  lw         $s7, 0x3C($sp)
    /* F9220 800EA270 8FBE0040 */  lw         $fp, 0x40($sp)
    /* F9224 800EA274 03E00008 */  jr         $ra
    /* F9228 800EA278 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_800EA12C_F90DC
    /* F922C 800EA27C 00000000 */  nop
