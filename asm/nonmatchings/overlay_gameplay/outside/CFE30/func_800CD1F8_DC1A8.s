nonmatching func_800CD1F8_DC1A8, 0xF0

glabel func_800CD1F8_DC1A8
    /* DC1A8 800CD1F8 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* DC1AC 800CD1FC AFBF0014 */  sw         $ra, 0x14($sp)
    /* DC1B0 800CD200 AFA40028 */  sw         $a0, 0x28($sp)
    /* DC1B4 800CD204 AFA5002C */  sw         $a1, 0x2C($sp)
    /* DC1B8 800CD208 AFA60030 */  sw         $a2, 0x30($sp)
    /* DC1BC 800CD20C AFA70034 */  sw         $a3, 0x34($sp)
    /* DC1C0 800CD210 0C030535 */  jal        func_800C14D4_D0484
    /* DC1C4 800CD214 24040005 */   addiu     $a0, $zero, 0x5
    /* DC1C8 800CD218 240100FB */  addiu      $at, $zero, 0xFB
    /* DC1CC 800CD21C 1041002D */  beq        $v0, $at, .L800CD2D4_DC284
    /* DC1D0 800CD220 304600FF */   andi      $a2, $v0, 0xFF
    /* DC1D4 800CD224 00067080 */  sll        $t6, $a2, 2
    /* DC1D8 800CD228 01C67023 */  subu       $t6, $t6, $a2
    /* DC1DC 800CD22C 3C0F8015 */  lui        $t7, %hi(D_80154088)
    /* DC1E0 800CD230 25EF4088 */  addiu      $t7, $t7, %lo(D_80154088)
    /* DC1E4 800CD234 000E7080 */  sll        $t6, $t6, 2
    /* DC1E8 800CD238 01CF1021 */  addu       $v0, $t6, $t7
    /* DC1EC 800CD23C 90580001 */  lbu        $t8, 0x1($v0)
    /* DC1F0 800CD240 30C400FF */  andi       $a0, $a2, 0xFF
    /* DC1F4 800CD244 00002825 */  or         $a1, $zero, $zero
    /* DC1F8 800CD248 37190001 */  ori        $t9, $t8, 0x1
    /* DC1FC 800CD24C A0590001 */  sb         $t9, 0x1($v0)
    /* DC200 800CD250 0C0305ED */  jal        func_800C17B4_D0764
    /* DC204 800CD254 A3A6001F */   sb        $a2, 0x1F($sp)
    /* DC208 800CD258 2401FFFD */  addiu      $at, $zero, -0x3
    /* DC20C 800CD25C 14410009 */  bne        $v0, $at, .L800CD284_DC234
    /* DC210 800CD260 93A6001F */   lbu       $a2, 0x1F($sp)
    /* DC214 800CD264 3C048014 */  lui        $a0, %hi(D_80143688)
    /* DC218 800CD268 24843688 */  addiu      $a0, $a0, %lo(D_80143688)
    /* DC21C 800CD26C 0C00731B */  jal        osSyncPrintf
    /* DC220 800CD270 A3A6001F */   sb        $a2, 0x1F($sp)
    /* DC224 800CD274 0C0304E1 */  jal        func_800C1384_D0334
    /* DC228 800CD278 93A4001F */   lbu       $a0, 0x1F($sp)
    /* DC22C 800CD27C 10000016 */  b          .L800CD2D8_DC288
    /* DC230 800CD280 240200FB */   addiu     $v0, $zero, 0xFB
  .L800CD284_DC234:
    /* DC234 800CD284 000240C0 */  sll        $t0, $v0, 3
    /* DC238 800CD288 01024023 */  subu       $t0, $t0, $v0
    /* DC23C 800CD28C 3C098015 */  lui        $t1, %hi(D_80154318)
    /* DC240 800CD290 25294318 */  addiu      $t1, $t1, %lo(D_80154318)
    /* DC244 800CD294 00084080 */  sll        $t0, $t0, 2
    /* DC248 800CD298 01091821 */  addu       $v1, $t0, $t1
    /* DC24C 800CD29C 87AA002A */  lh         $t2, 0x2A($sp)
    /* DC250 800CD2A0 87AB002E */  lh         $t3, 0x2E($sp)
    /* DC254 800CD2A4 87AC0032 */  lh         $t4, 0x32($sp)
    /* DC258 800CD2A8 83AD0037 */  lb         $t5, 0x37($sp)
    /* DC25C 800CD2AC 83AE003B */  lb         $t6, 0x3B($sp)
    /* DC260 800CD2B0 83AF003F */  lb         $t7, 0x3F($sp)
    /* DC264 800CD2B4 24180001 */  addiu      $t8, $zero, 0x1
    /* DC268 800CD2B8 A0780011 */  sb         $t8, 0x11($v1)
    /* DC26C 800CD2BC A46A0008 */  sh         $t2, 0x8($v1)
    /* DC270 800CD2C0 A46B000A */  sh         $t3, 0xA($v1)
    /* DC274 800CD2C4 A46C000C */  sh         $t4, 0xC($v1)
    /* DC278 800CD2C8 A06D000E */  sb         $t5, 0xE($v1)
    /* DC27C 800CD2CC A06E000F */  sb         $t6, 0xF($v1)
    /* DC280 800CD2D0 A06F0010 */  sb         $t7, 0x10($v1)
  .L800CD2D4_DC284:
    /* DC284 800CD2D4 00C01025 */  or         $v0, $a2, $zero
  .L800CD2D8_DC288:
    /* DC288 800CD2D8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* DC28C 800CD2DC 27BD0028 */  addiu      $sp, $sp, 0x28
    /* DC290 800CD2E0 03E00008 */  jr         $ra
    /* DC294 800CD2E4 00000000 */   nop
endlabel func_800CD1F8_DC1A8
