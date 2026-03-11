nonmatching func_800AF1F8_BE1A8, 0xC4

glabel func_800AF1F8_BE1A8
    /* BE1A8 800AF1F8 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* BE1AC 800AF1FC 30D800FF */  andi       $t8, $a2, 0xFF
    /* BE1B0 800AF200 AFB30020 */  sw         $s3, 0x20($sp)
    /* BE1B4 800AF204 AFB2001C */  sw         $s2, 0x1C($sp)
    /* BE1B8 800AF208 0018C880 */  sll        $t9, $t8, 2
    /* BE1BC 800AF20C 00049400 */  sll        $s2, $a0, 16
    /* BE1C0 800AF210 00059C00 */  sll        $s3, $a1, 16
    /* BE1C4 800AF214 0338C823 */  subu       $t9, $t9, $t8
    /* BE1C8 800AF218 3C088004 */  lui        $t0, %hi(D_8003BCC0)
    /* BE1CC 800AF21C 00137C03 */  sra        $t7, $s3, 16
    /* BE1D0 800AF220 00127403 */  sra        $t6, $s2, 16
    /* BE1D4 800AF224 AFB10018 */  sw         $s1, 0x18($sp)
    /* BE1D8 800AF228 AFB00014 */  sw         $s0, 0x14($sp)
    /* BE1DC 800AF22C 2508BCC0 */  addiu      $t0, $t0, %lo(D_8003BCC0)
    /* BE1E0 800AF230 0019C940 */  sll        $t9, $t9, 5
    /* BE1E4 800AF234 01C09025 */  or         $s2, $t6, $zero
    /* BE1E8 800AF238 01E09825 */  or         $s3, $t7, $zero
    /* BE1EC 800AF23C AFBF0024 */  sw         $ra, 0x24($sp)
    /* BE1F0 800AF240 AFA40028 */  sw         $a0, 0x28($sp)
    /* BE1F4 800AF244 AFA5002C */  sw         $a1, 0x2C($sp)
    /* BE1F8 800AF248 AFA60030 */  sw         $a2, 0x30($sp)
    /* BE1FC 800AF24C 03288821 */  addu       $s1, $t9, $t0
    /* BE200 800AF250 00008025 */  or         $s0, $zero, $zero
  .L800AF254_BE204:
    /* BE204 800AF254 001048C0 */  sll        $t1, $s0, 3
    /* BE208 800AF258 02291021 */  addu       $v0, $s1, $t1
    /* BE20C 800AF25C 90460006 */  lbu        $a2, 0x6($v0)
    /* BE210 800AF260 50C00010 */  beql       $a2, $zero, .L800AF2A4_BE254
    /* BE214 800AF264 8FBF0024 */   lw        $ra, 0x24($sp)
    /* BE218 800AF268 844A0000 */  lh         $t2, 0x0($v0)
    /* BE21C 800AF26C 844D0002 */  lh         $t5, 0x2($v0)
    /* BE220 800AF270 01522021 */  addu       $a0, $t2, $s2
    /* BE224 800AF274 01B32821 */  addu       $a1, $t5, $s3
    /* BE228 800AF278 00045C00 */  sll        $t3, $a0, 16
    /* BE22C 800AF27C 00057400 */  sll        $t6, $a1, 16
    /* BE230 800AF280 000B2403 */  sra        $a0, $t3, 16
    /* BE234 800AF284 0C02BC30 */  jal        func_800AF0C0_BE070
    /* BE238 800AF288 000E2C03 */   sra       $a1, $t6, 16
    /* BE23C 800AF28C 26100001 */  addiu      $s0, $s0, 0x1
    /* BE240 800AF290 321800FF */  andi       $t8, $s0, 0xFF
    /* BE244 800AF294 2B01000C */  slti       $at, $t8, 0xC
    /* BE248 800AF298 1420FFEE */  bnez       $at, .L800AF254_BE204
    /* BE24C 800AF29C 03008025 */   or        $s0, $t8, $zero
    /* BE250 800AF2A0 8FBF0024 */  lw         $ra, 0x24($sp)
  .L800AF2A4_BE254:
    /* BE254 800AF2A4 8FB00014 */  lw         $s0, 0x14($sp)
    /* BE258 800AF2A8 8FB10018 */  lw         $s1, 0x18($sp)
    /* BE25C 800AF2AC 8FB2001C */  lw         $s2, 0x1C($sp)
    /* BE260 800AF2B0 8FB30020 */  lw         $s3, 0x20($sp)
    /* BE264 800AF2B4 03E00008 */  jr         $ra
    /* BE268 800AF2B8 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_800AF1F8_BE1A8
