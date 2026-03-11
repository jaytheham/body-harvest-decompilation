nonmatching func_800C1288_D0238, 0xFC

glabel func_800C1288_D0238
    /* D0238 800C1288 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* D023C 800C128C AFA40018 */  sw         $a0, 0x18($sp)
    /* D0240 800C1290 93AE001B */  lbu        $t6, 0x1B($sp)
    /* D0244 800C1294 AFBF0014 */  sw         $ra, 0x14($sp)
    /* D0248 800C1298 AFA5001C */  sw         $a1, 0x1C($sp)
    /* D024C 800C129C 29C1001E */  slti       $at, $t6, 0x1E
    /* D0250 800C12A0 AFA60020 */  sw         $a2, 0x20($sp)
    /* D0254 800C12A4 1020002F */  beqz       $at, .L800C1364_D0314
    /* D0258 800C12A8 01C03825 */   or        $a3, $t6, $zero
    /* D025C 800C12AC 2406000C */  addiu      $a2, $zero, 0xC
    /* D0260 800C12B0 01C60019 */  multu      $t6, $a2
    /* D0264 800C12B4 8FB90020 */  lw         $t9, 0x20($sp)
    /* D0268 800C12B8 3C058015 */  lui        $a1, %hi(D_80154088)
    /* D026C 800C12BC 93B8001F */  lbu        $t8, 0x1F($sp)
    /* D0270 800C12C0 24A54088 */  addiu      $a1, $a1, %lo(D_80154088)
    /* D0274 800C12C4 3C038015 */  lui        $v1, %hi(D_8015430C)
    /* D0278 800C12C8 3C098015 */  lui        $t1, %hi(D_80154304)
    /* D027C 800C12CC 25294304 */  addiu      $t1, $t1, %lo(D_80154304)
    /* D0280 800C12D0 2463430C */  addiu      $v1, $v1, %lo(D_8015430C)
    /* D0284 800C12D4 2408FFFA */  addiu      $t0, $zero, -0x6
    /* D0288 800C12D8 00007812 */  mflo       $t7
    /* D028C 800C12DC 00AF2021 */  addu       $a0, $a1, $t7
    /* D0290 800C12E0 A0800001 */  sb         $zero, 0x1($a0)
    /* D0294 800C12E4 13200003 */  beqz       $t9, .L800C12F4_D02A4
    /* D0298 800C12E8 A0980000 */   sb        $t8, 0x0($a0)
    /* D029C 800C12EC 340B0008 */  ori        $t3, $zero, 0x8
    /* D02A0 800C12F0 A08B0001 */  sb         $t3, 0x1($a0)
  .L800C12F4_D02A4:
    /* D02A4 800C12F4 912C0000 */  lbu        $t4, 0x0($t1)
    /* D02A8 800C12F8 240E001E */  addiu      $t6, $zero, 0x1E
    /* D02AC 800C12FC 28E1001E */  slti       $at, $a3, 0x1E
    /* D02B0 800C1300 258D0001 */  addiu      $t5, $t4, 0x1
    /* D02B4 800C1304 A0800004 */  sb         $zero, 0x4($a0)
    /* D02B8 800C1308 A4880006 */  sh         $t0, 0x6($a0)
    /* D02BC 800C130C A4880008 */  sh         $t0, 0x8($a0)
    /* D02C0 800C1310 A488000A */  sh         $t0, 0xA($a0)
    /* D02C4 800C1314 A12D0000 */  sb         $t5, 0x0($t1)
    /* D02C8 800C1318 A06E0000 */  sb         $t6, 0x0($v1)
    /* D02CC 800C131C 10200015 */  beqz       $at, .L800C1374_D0324
    /* D02D0 800C1320 93A2001B */   lbu       $v0, 0x1B($sp)
    /* D02D4 800C1324 240400FA */  addiu      $a0, $zero, 0xFA
  .L800C1328_D02D8:
    /* D02D8 800C1328 00460019 */  multu      $v0, $a2
    /* D02DC 800C132C 00007812 */  mflo       $t7
    /* D02E0 800C1330 00AFC021 */  addu       $t8, $a1, $t7
    /* D02E4 800C1334 93190000 */  lbu        $t9, 0x0($t8)
    /* D02E8 800C1338 54990004 */  bnel       $a0, $t9, .L800C134C_D02FC
    /* D02EC 800C133C 24420001 */   addiu     $v0, $v0, 0x1
    /* D02F0 800C1340 A0620000 */  sb         $v0, 0x0($v1)
    /* D02F4 800C1344 2402001E */  addiu      $v0, $zero, 0x1E
    /* D02F8 800C1348 24420001 */  addiu      $v0, $v0, 0x1
  .L800C134C_D02FC:
    /* D02FC 800C134C 304A00FF */  andi       $t2, $v0, 0xFF
    /* D0300 800C1350 2941001E */  slti       $at, $t2, 0x1E
    /* D0304 800C1354 1420FFF4 */  bnez       $at, .L800C1328_D02D8
    /* D0308 800C1358 01401025 */   or        $v0, $t2, $zero
    /* D030C 800C135C 10000006 */  b          .L800C1378_D0328
    /* D0310 800C1360 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800C1364_D0314:
    /* D0314 800C1364 3C048014 */  lui        $a0, %hi(D_80142EA0)
    /* D0318 800C1368 24842EA0 */  addiu      $a0, $a0, %lo(D_80142EA0)
    /* D031C 800C136C 0C00731B */  jal        osSyncPrintf
    /* D0320 800C1370 00E02825 */   or        $a1, $a3, $zero
  .L800C1374_D0324:
    /* D0324 800C1374 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800C1378_D0328:
    /* D0328 800C1378 27BD0018 */  addiu      $sp, $sp, 0x18
    /* D032C 800C137C 03E00008 */  jr         $ra
    /* D0330 800C1380 00000000 */   nop
endlabel func_800C1288_D0238
