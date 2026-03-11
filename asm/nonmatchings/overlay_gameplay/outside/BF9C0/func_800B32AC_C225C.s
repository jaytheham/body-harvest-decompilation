nonmatching func_800B32AC_C225C, 0x110

glabel func_800B32AC_C225C
    /* C225C 800B32AC 3C058022 */  lui        $a1, %hi(D_80222A70)
    /* C2260 800B32B0 8CA52A70 */  lw         $a1, %lo(D_80222A70)($a1)
    /* C2264 800B32B4 00803825 */  or         $a3, $a0, $zero
    /* C2268 800B32B8 3C0B0001 */  lui        $t3, (0x1FE02 >> 16)
    /* C226C 800B32BC 3C0A8004 */  lui        $t2, %hi(currentLevel)
    /* C2270 800B32C0 00001025 */  or         $v0, $zero, $zero
    /* C2274 800B32C4 00001825 */  or         $v1, $zero, $zero
    /* C2278 800B32C8 04A10003 */  bgez       $a1, .L800B32D8_C2288
    /* C227C 800B32CC 00057143 */   sra       $t6, $a1, 5
    /* C2280 800B32D0 24A1001F */  addiu      $at, $a1, 0x1F
    /* C2284 800B32D4 00017143 */  sra        $t6, $at, 5
  .L800B32D8_C2288:
    /* C2288 800B32D8 01C02825 */  or         $a1, $t6, $zero
    /* C228C 800B32DC 254A7F90 */  addiu      $t2, $t2, %lo(currentLevel)
    /* C2290 800B32E0 356BFE02 */  ori        $t3, $t3, (0x1FE02 & 0xFFFF)
    /* C2294 800B32E4 00E04825 */  or         $t1, $a3, $zero
    /* C2298 800B32E8 00004025 */  or         $t0, $zero, $zero
    /* C229C 800B32EC 240CEFFF */  addiu      $t4, $zero, -0x1001
    /* C22A0 800B32F0 24060004 */  addiu      $a2, $zero, 0x4
  .L800B32F4_C22A4:
    /* C22A4 800B32F4 8D4F0000 */  lw         $t7, 0x0($t2)
    /* C22A8 800B32F8 25080002 */  addiu      $t0, $t0, 0x2
    /* C22AC 800B32FC 2841004C */  slti       $at, $v0, 0x4C
    /* C22B0 800B3300 54CF000C */  bnel       $a2, $t7, .L800B3334_C22E4
    /* C22B4 800B3304 95240000 */   lhu       $a0, 0x0($t1)
    /* C22B8 800B3308 10200009 */  beqz       $at, .L800B3330_C22E0
    /* C22BC 800B330C 24050006 */   addiu     $a1, $zero, 0x6
    /* C22C0 800B3310 2861009C */  slti       $at, $v1, 0x9C
    /* C22C4 800B3314 10200006 */  beqz       $at, .L800B3330_C22E0
    /* C22C8 800B3318 00602025 */   or        $a0, $v1, $zero
    /* C22CC 800B331C 28810059 */  slti       $at, $a0, 0x59
    /* C22D0 800B3320 14200003 */  bnez       $at, .L800B3330_C22E0
    /* C22D4 800B3324 00000000 */   nop
    /* C22D8 800B3328 10000001 */  b          .L800B3330_C22E0
    /* C22DC 800B332C 24050020 */   addiu     $a1, $zero, 0x20
  .L800B3330_C22E0:
    /* C22E0 800B3330 95240000 */  lhu        $a0, 0x0($t1)
  .L800B3334_C22E4:
    /* C22E4 800B3334 24420001 */  addiu      $v0, $v0, 0x1
    /* C22E8 800B3338 3098003F */  andi       $t8, $a0, 0x3F
    /* C22EC 800B333C 0305082A */  slt        $at, $t8, $a1
    /* C22F0 800B3340 54200011 */  bnel       $at, $zero, .L800B3388_C2338
    /* C22F4 800B3344 348D1000 */   ori       $t5, $a0, 0x1000
    /* C22F8 800B3348 95390002 */  lhu        $t9, 0x2($t1)
    /* C22FC 800B334C 332D003F */  andi       $t5, $t9, 0x3F
    /* C2300 800B3350 01A5082A */  slt        $at, $t5, $a1
    /* C2304 800B3354 5420000C */  bnel       $at, $zero, .L800B3388_C2338
    /* C2308 800B3358 348D1000 */   ori       $t5, $a0, 0x1000
    /* C230C 800B335C 952E0200 */  lhu        $t6, 0x200($t1)
    /* C2310 800B3360 31CF003F */  andi       $t7, $t6, 0x3F
    /* C2314 800B3364 01E5082A */  slt        $at, $t7, $a1
    /* C2318 800B3368 54200007 */  bnel       $at, $zero, .L800B3388_C2338
    /* C231C 800B336C 348D1000 */   ori       $t5, $a0, 0x1000
    /* C2320 800B3370 95380202 */  lhu        $t8, 0x202($t1)
    /* C2324 800B3374 008C7024 */  and        $t6, $a0, $t4
    /* C2328 800B3378 3319003F */  andi       $t9, $t8, 0x3F
    /* C232C 800B337C 0325082A */  slt        $at, $t9, $a1
    /* C2330 800B3380 10200003 */  beqz       $at, .L800B3390_C2340
    /* C2334 800B3384 348D1000 */   ori       $t5, $a0, 0x1000
  .L800B3388_C2338:
    /* C2338 800B3388 10000002 */  b          .L800B3394_C2344
    /* C233C 800B338C A52D0000 */   sh        $t5, 0x0($t1)
  .L800B3390_C2340:
    /* C2340 800B3390 A52E0000 */  sh         $t6, 0x0($t1)
  .L800B3394_C2344:
    /* C2344 800B3394 304F00FF */  andi       $t7, $v0, 0xFF
    /* C2348 800B3398 15E00004 */  bnez       $t7, .L800B33AC_C235C
    /* C234C 800B339C 01E01025 */   or        $v0, $t7, $zero
    /* C2350 800B33A0 24630001 */  addiu      $v1, $v1, 0x1
    /* C2354 800B33A4 307800FF */  andi       $t8, $v1, 0xFF
    /* C2358 800B33A8 03001825 */  or         $v1, $t8, $zero
  .L800B33AC_C235C:
    /* C235C 800B33AC 150BFFD1 */  bne        $t0, $t3, .L800B32F4_C22A4
    /* C2360 800B33B0 25290002 */   addiu     $t1, $t1, 0x2
    /* C2364 800B33B4 03E00008 */  jr         $ra
    /* C2368 800B33B8 A4E00000 */   sh        $zero, 0x0($a3)
endlabel func_800B32AC_C225C
