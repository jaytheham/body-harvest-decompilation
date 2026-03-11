nonmatching func_800AE1EC_BD19C, 0xD0

glabel func_800AE1EC_BD19C
    /* BD19C 800AE1EC 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* BD1A0 800AE1F0 3C058015 */  lui        $a1, %hi(D_8014D507)
    /* BD1A4 800AE1F4 90A5D507 */  lbu        $a1, %lo(D_8014D507)($a1)
    /* BD1A8 800AE1F8 AFB00014 */  sw         $s0, 0x14($sp)
    /* BD1AC 800AE1FC AFBF002C */  sw         $ra, 0x2C($sp)
    /* BD1B0 800AE200 AFB50028 */  sw         $s5, 0x28($sp)
    /* BD1B4 800AE204 AFB40024 */  sw         $s4, 0x24($sp)
    /* BD1B8 800AE208 AFB30020 */  sw         $s3, 0x20($sp)
    /* BD1BC 800AE20C AFB2001C */  sw         $s2, 0x1C($sp)
    /* BD1C0 800AE210 AFB10018 */  sw         $s1, 0x18($sp)
    /* BD1C4 800AE214 18A00020 */  blez       $a1, .L800AE298_BD248
    /* BD1C8 800AE218 00008025 */   or        $s0, $zero, $zero
    /* BD1CC 800AE21C 3C128005 */  lui        $s2, %hi(alienInstances)
    /* BD1D0 800AE220 3C118015 */  lui        $s1, %hi(D_8014D408)
    /* BD1D4 800AE224 2631D408 */  addiu      $s1, $s1, %lo(D_8014D408)
    /* BD1D8 800AE228 26528198 */  addiu      $s2, $s2, %lo(alienInstances)
    /* BD1DC 800AE22C 2415001D */  addiu      $s5, $zero, 0x1D
    /* BD1E0 800AE230 24140003 */  addiu      $s4, $zero, 0x3
    /* BD1E4 800AE234 24130050 */  addiu      $s3, $zero, 0x50
    /* BD1E8 800AE238 02307021 */  addu       $t6, $s1, $s0
  .L800AE23C_BD1EC:
    /* BD1EC 800AE23C 91C40000 */  lbu        $a0, 0x0($t6)
    /* BD1F0 800AE240 00003025 */  or         $a2, $zero, $zero
    /* BD1F4 800AE244 00003825 */  or         $a3, $zero, $zero
    /* BD1F8 800AE248 00930019 */  multu      $a0, $s3
    /* BD1FC 800AE24C 00007812 */  mflo       $t7
    /* BD200 800AE250 024F1021 */  addu       $v0, $s2, $t7
    /* BD204 800AE254 90430024 */  lbu        $v1, 0x24($v0)
    /* BD208 800AE258 14600006 */  bnez       $v1, .L800AE274_BD224
    /* BD20C 800AE25C 00000000 */   nop
    /* BD210 800AE260 0C02B605 */  jal        func_800AD814_BC7C4
    /* BD214 800AE264 24050001 */   addiu     $a1, $zero, 0x1
    /* BD218 800AE268 3C058015 */  lui        $a1, %hi(D_8014D507)
    /* BD21C 800AE26C 10000004 */  b          .L800AE280_BD230
    /* BD220 800AE270 90A5D507 */   lbu       $a1, %lo(D_8014D507)($a1)
  .L800AE274_BD224:
    /* BD224 800AE274 56830003 */  bnel       $s4, $v1, .L800AE284_BD234
    /* BD228 800AE278 26100001 */   addiu     $s0, $s0, 0x1
    /* BD22C 800AE27C A0550024 */  sb         $s5, 0x24($v0)
  .L800AE280_BD230:
    /* BD230 800AE280 26100001 */  addiu      $s0, $s0, 0x1
  .L800AE284_BD234:
    /* BD234 800AE284 0010C400 */  sll        $t8, $s0, 16
    /* BD238 800AE288 00188403 */  sra        $s0, $t8, 16
    /* BD23C 800AE28C 0205082A */  slt        $at, $s0, $a1
    /* BD240 800AE290 5420FFEA */  bnel       $at, $zero, .L800AE23C_BD1EC
    /* BD244 800AE294 02307021 */   addu      $t6, $s1, $s0
  .L800AE298_BD248:
    /* BD248 800AE298 8FBF002C */  lw         $ra, 0x2C($sp)
    /* BD24C 800AE29C 8FB00014 */  lw         $s0, 0x14($sp)
    /* BD250 800AE2A0 8FB10018 */  lw         $s1, 0x18($sp)
    /* BD254 800AE2A4 8FB2001C */  lw         $s2, 0x1C($sp)
    /* BD258 800AE2A8 8FB30020 */  lw         $s3, 0x20($sp)
    /* BD25C 800AE2AC 8FB40024 */  lw         $s4, 0x24($sp)
    /* BD260 800AE2B0 8FB50028 */  lw         $s5, 0x28($sp)
    /* BD264 800AE2B4 03E00008 */  jr         $ra
    /* BD268 800AE2B8 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_800AE1EC_BD19C
    /* BD26C 800AE2BC 00000000 */  nop
