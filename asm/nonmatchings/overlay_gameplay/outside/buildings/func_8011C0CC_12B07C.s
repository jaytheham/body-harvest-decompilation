nonmatching func_8011C0CC_12B07C, 0x190

glabel func_8011C0CC_12B07C
    /* 12B07C 8011C0CC 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* 12B080 8011C0D0 AFA5005C */  sw         $a1, 0x5C($sp)
    /* 12B084 8011C0D4 00057400 */  sll        $t6, $a1, 16
    /* 12B088 8011C0D8 000E2C03 */  sra        $a1, $t6, 16
    /* 12B08C 8011C0DC 00047080 */  sll        $t6, $a0, 2
    /* 12B090 8011C0E0 01C47023 */  subu       $t6, $t6, $a0
    /* 12B094 8011C0E4 3C0F8005 */  lui        $t7, %hi(buildingInstances)
    /* 12B098 8011C0E8 25EF0AD8 */  addiu      $t7, $t7, %lo(buildingInstances)
    /* 12B09C 8011C0EC 000E70C0 */  sll        $t6, $t6, 3
    /* 12B0A0 8011C0F0 01CF4021 */  addu       $t0, $t6, $t7
    /* 12B0A4 8011C0F4 8D190008 */  lw         $t9, 0x8($t0)
    /* 12B0A8 8011C0F8 AFA60060 */  sw         $a2, 0x60($sp)
    /* 12B0AC 8011C0FC 0006C400 */  sll        $t8, $a2, 16
    /* 12B0B0 8011C100 332E0001 */  andi       $t6, $t9, 0x1
    /* 12B0B4 8011C104 00183403 */  sra        $a2, $t8, 16
    /* 12B0B8 8011C108 AFA70064 */  sw         $a3, 0x64($sp)
    /* 12B0BC 8011C10C 11C00008 */  beqz       $t6, .L8011C130_12B0E0
    /* 12B0C0 8011C110 91020006 */   lbu       $v0, 0x6($t0)
    /* 12B0C4 8011C114 3C188026 */  lui        $t8, %hi(buildingSpecs)
    /* 12B0C8 8011C118 27189090 */  addiu      $t8, $t8, %lo(buildingSpecs)
    /* 12B0CC 8011C11C 00027940 */  sll        $t7, $v0, 5
    /* 12B0D0 8011C120 01F81821 */  addu       $v1, $t7, $t8
    /* 12B0D4 8011C124 84670012 */  lh         $a3, 0x12($v1)
    /* 12B0D8 8011C128 10000007 */  b          .L8011C148_12B0F8
    /* 12B0DC 8011C12C 84690010 */   lh        $t1, 0x10($v1)
  .L8011C130_12B0E0:
    /* 12B0E0 8011C130 3C0E8026 */  lui        $t6, %hi(buildingSpecs)
    /* 12B0E4 8011C134 25CE9090 */  addiu      $t6, $t6, %lo(buildingSpecs)
    /* 12B0E8 8011C138 0002C940 */  sll        $t9, $v0, 5
    /* 12B0EC 8011C13C 032E1821 */  addu       $v1, $t9, $t6
    /* 12B0F0 8011C140 84670010 */  lh         $a3, 0x10($v1)
    /* 12B0F4 8011C144 84690012 */  lh         $t1, 0x12($v1)
  .L8011C148_12B0F8:
    /* 12B0F8 8011C148 850A0000 */  lh         $t2, 0x0($t0)
    /* 12B0FC 8011C14C 85040004 */  lh         $a0, 0x4($t0)
    /* 12B100 8011C150 24030004 */  addiu      $v1, $zero, 0x4
    /* 12B104 8011C154 01477823 */  subu       $t7, $t2, $a3
    /* 12B108 8011C158 0089C823 */  subu       $t9, $a0, $t1
    /* 12B10C 8011C15C 01476021 */  addu       $t4, $t2, $a3
    /* 12B110 8011C160 00896821 */  addu       $t5, $a0, $t1
    /* 12B114 8011C164 87AB0066 */  lh         $t3, 0x66($sp)
    /* 12B118 8011C168 AFAC002C */  sw         $t4, 0x2C($sp)
    /* 12B11C 8011C16C AFAD0030 */  sw         $t5, 0x30($sp)
    /* 12B120 8011C170 AFAF0004 */  sw         $t7, 0x4($sp)
    /* 12B124 8011C174 AFAF0034 */  sw         $t7, 0x34($sp)
    /* 12B128 8011C178 AFAD0038 */  sw         $t5, 0x38($sp)
    /* 12B12C 8011C17C AFAC003C */  sw         $t4, 0x3C($sp)
    /* 12B130 8011C180 AFB9000C */  sw         $t9, 0xC($sp)
    /* 12B134 8011C184 AFB90040 */  sw         $t9, 0x40($sp)
    /* 12B138 8011C188 AFAF0044 */  sw         $t7, 0x44($sp)
    /* 12B13C 8011C18C AFB90048 */  sw         $t9, 0x48($sp)
    /* 12B140 8011C190 1060001C */  beqz       $v1, .L8011C204_12B1B4
    /* 12B144 8011C194 24020003 */   addiu     $v0, $zero, 0x3
    /* 12B148 8011C198 016B0019 */  multu      $t3, $t3
    /* 12B14C 8011C19C 27A80044 */  addiu      $t0, $sp, 0x44
    /* 12B150 8011C1A0 00006812 */  mflo       $t5
    /* 12B154 8011C1A4 000D7903 */  sra        $t7, $t5, 4
    /* 12B158 8011C1A8 01E06825 */  or         $t5, $t7, $zero
  .L8011C1AC_12B15C:
    /* 12B15C 8011C1AC 8D190000 */  lw         $t9, 0x0($t0)
    /* 12B160 8011C1B0 8D0E0004 */  lw         $t6, 0x4($t0)
    /* 12B164 8011C1B4 2508FFF8 */  addiu      $t0, $t0, -0x8
    /* 12B168 8011C1B8 03251823 */  subu       $v1, $t9, $a1
    /* 12B16C 8011C1BC 0003C083 */  sra        $t8, $v1, 2
    /* 12B170 8011C1C0 03180019 */  multu      $t8, $t8
    /* 12B174 8011C1C4 01C66023 */  subu       $t4, $t6, $a2
    /* 12B178 8011C1C8 000C7883 */  sra        $t7, $t4, 2
    /* 12B17C 8011C1CC 00401825 */  or         $v1, $v0, $zero
    /* 12B180 8011C1D0 0000C812 */  mflo       $t9
    /* 12B184 8011C1D4 00000000 */  nop
    /* 12B188 8011C1D8 00000000 */  nop
    /* 12B18C 8011C1DC 01EF0019 */  multu      $t7, $t7
    /* 12B190 8011C1E0 0000C012 */  mflo       $t8
    /* 12B194 8011C1E4 03387021 */  addu       $t6, $t9, $t8
    /* 12B198 8011C1E8 01CD082A */  slt        $at, $t6, $t5
    /* 12B19C 8011C1EC 10200003 */  beqz       $at, .L8011C1FC_12B1AC
    /* 12B1A0 8011C1F0 00000000 */   nop
    /* 12B1A4 8011C1F4 10000017 */  b          .L8011C254_12B204
    /* 12B1A8 8011C1F8 24020001 */   addiu     $v0, $zero, 0x1
  .L8011C1FC_12B1AC:
    /* 12B1AC 8011C1FC 1440FFEB */  bnez       $v0, .L8011C1AC_12B15C
    /* 12B1B0 8011C200 2442FFFF */   addiu     $v0, $v0, -0x1
  .L8011C204_12B1B4:
    /* 12B1B4 8011C204 01451023 */  subu       $v0, $t2, $a1
    /* 12B1B8 8011C208 0047082A */  slt        $at, $v0, $a3
    /* 12B1BC 8011C20C 10200007 */  beqz       $at, .L8011C22C_12B1DC
    /* 12B1C0 8011C210 00867823 */   subu      $t7, $a0, $a2
    /* 12B1C4 8011C214 012BC821 */  addu       $t9, $t1, $t3
    /* 12B1C8 8011C218 01F9082A */  slt        $at, $t7, $t9
    /* 12B1CC 8011C21C 50200004 */  beql       $at, $zero, .L8011C230_12B1E0
    /* 12B1D0 8011C220 0086C023 */   subu      $t8, $a0, $a2
    /* 12B1D4 8011C224 1000000B */  b          .L8011C254_12B204
    /* 12B1D8 8011C228 24020001 */   addiu     $v0, $zero, 0x1
  .L8011C22C_12B1DC:
    /* 12B1DC 8011C22C 0086C023 */  subu       $t8, $a0, $a2
  .L8011C230_12B1E0:
    /* 12B1E0 8011C230 0309082A */  slt        $at, $t8, $t1
    /* 12B1E4 8011C234 10200006 */  beqz       $at, .L8011C250_12B200
    /* 12B1E8 8011C238 00EB7021 */   addu      $t6, $a3, $t3
    /* 12B1EC 8011C23C 004E082A */  slt        $at, $v0, $t6
    /* 12B1F0 8011C240 50200004 */  beql       $at, $zero, .L8011C254_12B204
    /* 12B1F4 8011C244 00001025 */   or        $v0, $zero, $zero
    /* 12B1F8 8011C248 10000002 */  b          .L8011C254_12B204
    /* 12B1FC 8011C24C 24020001 */   addiu     $v0, $zero, 0x1
  .L8011C250_12B200:
    /* 12B200 8011C250 00001025 */  or         $v0, $zero, $zero
  .L8011C254_12B204:
    /* 12B204 8011C254 03E00008 */  jr         $ra
    /* 12B208 8011C258 27BD0058 */   addiu     $sp, $sp, 0x58
endlabel func_8011C0CC_12B07C
