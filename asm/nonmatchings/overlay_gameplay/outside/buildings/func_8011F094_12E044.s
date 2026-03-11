nonmatching func_8011F094_12E044, 0x198

glabel func_8011F094_12E044
    /* 12E044 8011F094 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 12E048 8011F098 AFB00040 */  sw         $s0, 0x40($sp)
    /* 12E04C 8011F09C 00808025 */  or         $s0, $a0, $zero
    /* 12E050 8011F0A0 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 12E054 8011F0A4 2404FFDF */  addiu      $a0, $zero, -0x21
    /* 12E058 8011F0A8 0C047498 */  jal        func_8011D260_12C210
    /* 12E05C 8011F0AC 24050038 */   addiu     $a1, $zero, 0x38
    /* 12E060 8011F0B0 00027080 */  sll        $t6, $v0, 2
    /* 12E064 8011F0B4 01C27023 */  subu       $t6, $t6, $v0
    /* 12E068 8011F0B8 3C038005 */  lui        $v1, %hi(buildingInstances)
    /* 12E06C 8011F0BC 24630AD8 */  addiu      $v1, $v1, %lo(buildingInstances)
    /* 12E070 8011F0C0 000E70C0 */  sll        $t6, $t6, 3
    /* 12E074 8011F0C4 006E7821 */  addu       $t7, $v1, $t6
    /* 12E078 8011F0C8 160F0007 */  bne        $s0, $t7, .L8011F0E8_12E098
    /* 12E07C 8011F0CC 2404000D */   addiu     $a0, $zero, 0xD
    /* 12E080 8011F0D0 9218000D */  lbu        $t8, 0xD($s0)
    /* 12E084 8011F0D4 24010002 */  addiu      $at, $zero, 0x2
    /* 12E088 8011F0D8 24190001 */  addiu      $t9, $zero, 0x1
    /* 12E08C 8011F0DC 53010003 */  beql       $t8, $at, .L8011F0EC_12E09C
    /* 12E090 8011F0E0 9202000D */   lbu       $v0, 0xD($s0)
    /* 12E094 8011F0E4 A219000D */  sb         $t9, 0xD($s0)
  .L8011F0E8_12E098:
    /* 12E098 8011F0E8 9202000D */  lbu        $v0, 0xD($s0)
  .L8011F0EC_12E09C:
    /* 12E09C 8011F0EC 02032823 */  subu       $a1, $s0, $v1
    /* 12E0A0 8011F0F0 24010018 */  addiu      $at, $zero, 0x18
    /* 12E0A4 8011F0F4 10400006 */  beqz       $v0, .L8011F110_12E0C0
    /* 12E0A8 8011F0F8 3C0C8016 */   lui       $t4, %hi(D_80159DC8)
    /* 12E0AC 8011F0FC 24010001 */  addiu      $at, $zero, 0x1
    /* 12E0B0 8011F100 10410028 */  beq        $v0, $at, .L8011F1A4_12E154
    /* 12E0B4 8011F104 3C198016 */   lui       $t9, %hi(D_80159DC8)
    /* 12E0B8 8011F108 10000044 */  b          .L8011F21C_12E1CC
    /* 12E0BC 8011F10C 8FBF0044 */   lw        $ra, 0x44($sp)
  .L8011F110_12E0C0:
    /* 12E0C0 8011F110 00A1001A */  div        $zero, $a1, $at
    /* 12E0C4 8011F114 00004012 */  mflo       $t0
    /* 12E0C8 8011F118 00084900 */  sll        $t1, $t0, 4
    /* 12E0CC 8011F11C 860B0000 */  lh         $t3, 0x0($s0)
    /* 12E0D0 8011F120 860F0002 */  lh         $t7, 0x2($s0)
    /* 12E0D4 8011F124 3125FFFF */  andi       $a1, $t1, 0xFFFF
    /* 12E0D8 8011F128 86090004 */  lh         $t1, 0x4($s0)
    /* 12E0DC 8011F12C 858C9DC8 */  lh         $t4, %lo(D_80159DC8)($t4)
    /* 12E0E0 8011F130 3C188016 */  lui        $t8, %hi(D_80159DCA)
    /* 12E0E4 8011F134 87189DCA */  lh         $t8, %lo(D_80159DCA)($t8)
    /* 12E0E8 8011F138 3C0A8016 */  lui        $t2, %hi(D_80159DCC)
    /* 12E0EC 8011F13C 016C3021 */  addu       $a2, $t3, $t4
    /* 12E0F0 8011F140 854A9DCC */  lh         $t2, %lo(D_80159DCC)($t2)
    /* 12E0F4 8011F144 01F83821 */  addu       $a3, $t7, $t8
    /* 12E0F8 8011F148 00066C00 */  sll        $t5, $a2, 16
    /* 12E0FC 8011F14C 000D3403 */  sra        $a2, $t5, 16
    /* 12E100 8011F150 24E7FFCE */  addiu      $a3, $a3, -0x32
    /* 12E104 8011F154 3C0F8012 */  lui        $t7, %hi(func_8011EFBC_12DF6C)
    /* 12E108 8011F158 25EFEFBC */  addiu      $t7, $t7, %lo(func_8011EFBC_12DF6C)
    /* 12E10C 8011F15C 0007CC00 */  sll        $t9, $a3, 16
    /* 12E110 8011F160 240D0018 */  addiu      $t5, $zero, 0x18
    /* 12E114 8011F164 240C001A */  addiu      $t4, $zero, 0x1A
    /* 12E118 8011F168 240E001A */  addiu      $t6, $zero, 0x1A
    /* 12E11C 8011F16C 012A5821 */  addu       $t3, $t1, $t2
    /* 12E120 8011F170 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 12E124 8011F174 AFAE0028 */  sw         $t6, 0x28($sp)
    /* 12E128 8011F178 AFAC0020 */  sw         $t4, 0x20($sp)
    /* 12E12C 8011F17C AFAD0024 */  sw         $t5, 0x24($sp)
    /* 12E130 8011F180 00193C03 */  sra        $a3, $t9, 16
    /* 12E134 8011F184 AFAF0030 */  sw         $t7, 0x30($sp)
    /* 12E138 8011F188 AFA0002C */  sw         $zero, 0x2C($sp)
    /* 12E13C 8011F18C AFA0001C */  sw         $zero, 0x1C($sp)
    /* 12E140 8011F190 AFA00018 */  sw         $zero, 0x18($sp)
    /* 12E144 8011F194 0C04B5C0 */  jal        func_8012D700_13C6B0
    /* 12E148 8011F198 AFA00014 */   sw        $zero, 0x14($sp)
    /* 12E14C 8011F19C 1000001F */  b          .L8011F21C_12E1CC
    /* 12E150 8011F1A0 8FBF0044 */   lw        $ra, 0x44($sp)
  .L8011F1A4_12E154:
    /* 12E154 8011F1A4 3C0B8016 */  lui        $t3, %hi(D_80159DCA)
    /* 12E158 8011F1A8 856B9DCA */  lh         $t3, %lo(D_80159DCA)($t3)
    /* 12E15C 8011F1AC 86180000 */  lh         $t8, 0x0($s0)
    /* 12E160 8011F1B0 87399DC8 */  lh         $t9, %lo(D_80159DC8)($t9)
    /* 12E164 8011F1B4 860A0002 */  lh         $t2, 0x2($s0)
    /* 12E168 8011F1B8 3C0F8016 */  lui        $t7, %hi(D_80159DCC)
    /* 12E16C 8011F1BC 85EF9DCC */  lh         $t7, %lo(D_80159DCC)($t7)
    /* 12E170 8011F1C0 860E0004 */  lh         $t6, 0x4($s0)
    /* 12E174 8011F1C4 03192021 */  addu       $a0, $t8, $t9
    /* 12E178 8011F1C8 014B2821 */  addu       $a1, $t2, $t3
    /* 12E17C 8011F1CC 00044400 */  sll        $t0, $a0, 16
    /* 12E180 8011F1D0 00082403 */  sra        $a0, $t0, 16
    /* 12E184 8011F1D4 01CF3021 */  addu       $a2, $t6, $t7
    /* 12E188 8011F1D8 0006C400 */  sll        $t8, $a2, 16
    /* 12E18C 8011F1DC 3408FFFF */  ori        $t0, $zero, 0xFFFF
    /* 12E190 8011F1E0 00056400 */  sll        $t4, $a1, 16
    /* 12E194 8011F1E4 240B0039 */  addiu      $t3, $zero, 0x39
    /* 12E198 8011F1E8 240A00D9 */  addiu      $t2, $zero, 0xD9
    /* 12E19C 8011F1EC 240900F0 */  addiu      $t1, $zero, 0xF0
    /* 12E1A0 8011F1F0 AFA90014 */  sw         $t1, 0x14($sp)
    /* 12E1A4 8011F1F4 AFAA0018 */  sw         $t2, 0x18($sp)
    /* 12E1A8 8011F1F8 AFAB001C */  sw         $t3, 0x1C($sp)
    /* 12E1AC 8011F1FC 000C2C03 */  sra        $a1, $t4, 16
    /* 12E1B0 8011F200 AFA80010 */  sw         $t0, 0x10($sp)
    /* 12E1B4 8011F204 00183403 */  sra        $a2, $t8, 16
    /* 12E1B8 8011F208 0C030EF6 */  jal        func_800C3BD8_D2B88
    /* 12E1BC 8011F20C 2407004E */   addiu     $a3, $zero, 0x4E
    /* 12E1C0 8011F210 240C0002 */  addiu      $t4, $zero, 0x2
    /* 12E1C4 8011F214 A20C000D */  sb         $t4, 0xD($s0)
    /* 12E1C8 8011F218 8FBF0044 */  lw         $ra, 0x44($sp)
  .L8011F21C_12E1CC:
    /* 12E1CC 8011F21C 8FB00040 */  lw         $s0, 0x40($sp)
    /* 12E1D0 8011F220 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 12E1D4 8011F224 03E00008 */  jr         $ra
    /* 12E1D8 8011F228 00000000 */   nop
endlabel func_8011F094_12E044
