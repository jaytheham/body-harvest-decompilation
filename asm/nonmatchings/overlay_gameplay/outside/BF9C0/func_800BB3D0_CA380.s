nonmatching func_800BB3D0_CA380, 0x210

glabel func_800BB3D0_CA380
    /* CA380 800BB3D0 AFA40000 */  sw         $a0, 0x0($sp)
    /* CA384 800BB3D4 00047400 */  sll        $t6, $a0, 16
    /* CA388 800BB3D8 000E2403 */  sra        $a0, $t6, 16
    /* CA38C 800BB3DC 00067400 */  sll        $t6, $a2, 16
    /* CA390 800BB3E0 AFA50004 */  sw         $a1, 0x4($sp)
    /* CA394 800BB3E4 0005C400 */  sll        $t8, $a1, 16
    /* CA398 800BB3E8 00182C03 */  sra        $a1, $t8, 16
    /* CA39C 800BB3EC 000E7C03 */  sra        $t7, $t6, 16
    /* CA3A0 800BB3F0 0007C400 */  sll        $t8, $a3, 16
    /* CA3A4 800BB3F4 AFA60008 */  sw         $a2, 0x8($sp)
    /* CA3A8 800BB3F8 AFA7000C */  sw         $a3, 0xC($sp)
    /* CA3AC 800BB3FC 01E4082A */  slt        $at, $t7, $a0
    /* CA3B0 800BB400 00183C03 */  sra        $a3, $t8, 16
    /* CA3B4 800BB404 10200008 */  beqz       $at, .L800BB428_CA3D8
    /* CA3B8 800BB408 01E03025 */   or        $a2, $t7, $zero
    /* CA3BC 800BB40C 00807025 */  or         $t6, $a0, $zero
    /* CA3C0 800BB410 000F2400 */  sll        $a0, $t7, 16
    /* CA3C4 800BB414 000E3400 */  sll        $a2, $t6, 16
    /* CA3C8 800BB418 00047C03 */  sra        $t7, $a0, 16
    /* CA3CC 800BB41C 0006C403 */  sra        $t8, $a2, 16
    /* CA3D0 800BB420 01E02025 */  or         $a0, $t7, $zero
    /* CA3D4 800BB424 03003025 */  or         $a2, $t8, $zero
  .L800BB428_CA3D8:
    /* CA3D8 800BB428 00E5082A */  slt        $at, $a3, $a1
    /* CA3DC 800BB42C 10200008 */  beqz       $at, .L800BB450_CA400
    /* CA3E0 800BB430 8FA30018 */   lw        $v1, 0x18($sp)
    /* CA3E4 800BB434 00A0C825 */  or         $t9, $a1, $zero
    /* CA3E8 800BB438 00072C00 */  sll        $a1, $a3, 16
    /* CA3EC 800BB43C 00193C00 */  sll        $a3, $t9, 16
    /* CA3F0 800BB440 00057403 */  sra        $t6, $a1, 16
    /* CA3F4 800BB444 00077C03 */  sra        $t7, $a3, 16
    /* CA3F8 800BB448 01C02825 */  or         $a1, $t6, $zero
    /* CA3FC 800BB44C 01E03825 */  or         $a3, $t7, $zero
  .L800BB450_CA400:
    /* CA400 800BB450 8FA90010 */  lw         $t1, 0x10($sp)
    /* CA404 800BB454 84680000 */  lh         $t0, 0x0($v1)
    /* CA408 800BB458 852A0000 */  lh         $t2, 0x0($t1)
    /* CA40C 800BB45C 010A082A */  slt        $at, $t0, $t2
    /* CA410 800BB460 50200004 */  beql       $at, $zero, .L800BB474_CA424
    /* CA414 800BB464 8FAB001C */   lw        $t3, 0x1C($sp)
    /* CA418 800BB468 A5280000 */  sh         $t0, 0x0($t1)
    /* CA41C 800BB46C A46A0000 */  sh         $t2, 0x0($v1)
    /* CA420 800BB470 8FAB001C */  lw         $t3, 0x1C($sp)
  .L800BB474_CA424:
    /* CA424 800BB474 8FAC0014 */  lw         $t4, 0x14($sp)
    /* CA428 800BB478 85680000 */  lh         $t0, 0x0($t3)
    /* CA42C 800BB47C 858D0000 */  lh         $t5, 0x0($t4)
    /* CA430 800BB480 010D082A */  slt        $at, $t0, $t5
    /* CA434 800BB484 50200004 */  beql       $at, $zero, .L800BB498_CA448
    /* CA438 800BB488 852A0000 */   lh        $t2, 0x0($t1)
    /* CA43C 800BB48C A5880000 */  sh         $t0, 0x0($t4)
    /* CA440 800BB490 A56D0000 */  sh         $t5, 0x0($t3)
    /* CA444 800BB494 852A0000 */  lh         $t2, 0x0($t1)
  .L800BB498_CA448:
    /* CA448 800BB498 84680000 */  lh         $t0, 0x0($v1)
    /* CA44C 800BB49C 008A082A */  slt        $at, $a0, $t2
    /* CA450 800BB4A0 55480028 */  bnel       $t2, $t0, .L800BB544_CA4F4
    /* CA454 800BB4A4 858D0000 */   lh        $t5, 0x0($t4)
    /* CA458 800BB4A8 10200023 */  beqz       $at, .L800BB538_CA4E8
    /* CA45C 800BB4AC 0146082A */   slt       $at, $t2, $a2
    /* CA460 800BB4B0 10200021 */  beqz       $at, .L800BB538_CA4E8
    /* CA464 800BB4B4 00000000 */   nop
    /* CA468 800BB4B8 858D0000 */  lh         $t5, 0x0($t4)
    /* CA46C 800BB4BC 00ED082A */  slt        $at, $a3, $t5
    /* CA470 800BB4C0 50200004 */  beql       $at, $zero, .L800BB4D4_CA484
    /* CA474 800BB4C4 856E0000 */   lh        $t6, 0x0($t3)
    /* CA478 800BB4C8 03E00008 */  jr         $ra
    /* CA47C 800BB4CC 00001025 */   or        $v0, $zero, $zero
    /* CA480 800BB4D0 856E0000 */  lh         $t6, 0x0($t3)
  .L800BB4D4_CA484:
    /* CA484 800BB4D4 01C5082A */  slt        $at, $t6, $a1
    /* CA488 800BB4D8 50200004 */  beql       $at, $zero, .L800BB4EC_CA49C
    /* CA48C 800BB4DC 01A5082A */   slt       $at, $t5, $a1
    /* CA490 800BB4E0 03E00008 */  jr         $ra
    /* CA494 800BB4E4 00001025 */   or        $v0, $zero, $zero
    /* CA498 800BB4E8 01A5082A */  slt        $at, $t5, $a1
  .L800BB4EC_CA49C:
    /* CA49C 800BB4EC 50200004 */  beql       $at, $zero, .L800BB500_CA4B0
    /* CA4A0 800BB4F0 00ED082A */   slt       $at, $a3, $t5
    /* CA4A4 800BB4F4 A5850000 */  sh         $a1, 0x0($t4)
    /* CA4A8 800BB4F8 858D0000 */  lh         $t5, 0x0($t4)
    /* CA4AC 800BB4FC 00ED082A */  slt        $at, $a3, $t5
  .L800BB500_CA4B0:
    /* CA4B0 800BB500 50200003 */  beql       $at, $zero, .L800BB510_CA4C0
    /* CA4B4 800BB504 85680000 */   lh        $t0, 0x0($t3)
    /* CA4B8 800BB508 A5870000 */  sh         $a3, 0x0($t4)
    /* CA4BC 800BB50C 85680000 */  lh         $t0, 0x0($t3)
  .L800BB510_CA4C0:
    /* CA4C0 800BB510 0105082A */  slt        $at, $t0, $a1
    /* CA4C4 800BB514 50200004 */  beql       $at, $zero, .L800BB528_CA4D8
    /* CA4C8 800BB518 00E8082A */   slt       $at, $a3, $t0
    /* CA4CC 800BB51C A5650000 */  sh         $a1, 0x0($t3)
    /* CA4D0 800BB520 85680000 */  lh         $t0, 0x0($t3)
    /* CA4D4 800BB524 00E8082A */  slt        $at, $a3, $t0
  .L800BB528_CA4D8:
    /* CA4D8 800BB528 5020002B */  beql       $at, $zero, .L800BB5D8_CA588
    /* CA4DC 800BB52C 24020001 */   addiu     $v0, $zero, 0x1
    /* CA4E0 800BB530 10000028 */  b          .L800BB5D4_CA584
    /* CA4E4 800BB534 A5670000 */   sh        $a3, 0x0($t3)
  .L800BB538_CA4E8:
    /* CA4E8 800BB538 03E00008 */  jr         $ra
    /* CA4EC 800BB53C 00001025 */   or        $v0, $zero, $zero
    /* CA4F0 800BB540 858D0000 */  lh         $t5, 0x0($t4)
  .L800BB544_CA4F4:
    /* CA4F4 800BB544 00AD082A */  slt        $at, $a1, $t5
    /* CA4F8 800BB548 10200020 */  beqz       $at, .L800BB5CC_CA57C
    /* CA4FC 800BB54C 01A7082A */   slt       $at, $t5, $a3
    /* CA500 800BB550 1020001E */  beqz       $at, .L800BB5CC_CA57C
    /* CA504 800BB554 00CA082A */   slt       $at, $a2, $t2
    /* CA508 800BB558 50200004 */  beql       $at, $zero, .L800BB56C_CA51C
    /* CA50C 800BB55C 0104082A */   slt       $at, $t0, $a0
    /* CA510 800BB560 03E00008 */  jr         $ra
    /* CA514 800BB564 00001025 */   or        $v0, $zero, $zero
    /* CA518 800BB568 0104082A */  slt        $at, $t0, $a0
  .L800BB56C_CA51C:
    /* CA51C 800BB56C 50200004 */  beql       $at, $zero, .L800BB580_CA530
    /* CA520 800BB570 0144082A */   slt       $at, $t2, $a0
    /* CA524 800BB574 03E00008 */  jr         $ra
    /* CA528 800BB578 00001025 */   or        $v0, $zero, $zero
    /* CA52C 800BB57C 0144082A */  slt        $at, $t2, $a0
  .L800BB580_CA530:
    /* CA530 800BB580 50200004 */  beql       $at, $zero, .L800BB594_CA544
    /* CA534 800BB584 00CA082A */   slt       $at, $a2, $t2
    /* CA538 800BB588 A5240000 */  sh         $a0, 0x0($t1)
    /* CA53C 800BB58C 852A0000 */  lh         $t2, 0x0($t1)
    /* CA540 800BB590 00CA082A */  slt        $at, $a2, $t2
  .L800BB594_CA544:
    /* CA544 800BB594 50200003 */  beql       $at, $zero, .L800BB5A4_CA554
    /* CA548 800BB598 84680000 */   lh        $t0, 0x0($v1)
    /* CA54C 800BB59C A5260000 */  sh         $a2, 0x0($t1)
    /* CA550 800BB5A0 84680000 */  lh         $t0, 0x0($v1)
  .L800BB5A4_CA554:
    /* CA554 800BB5A4 0104082A */  slt        $at, $t0, $a0
    /* CA558 800BB5A8 50200004 */  beql       $at, $zero, .L800BB5BC_CA56C
    /* CA55C 800BB5AC 00C8082A */   slt       $at, $a2, $t0
    /* CA560 800BB5B0 A4640000 */  sh         $a0, 0x0($v1)
    /* CA564 800BB5B4 84680000 */  lh         $t0, 0x0($v1)
    /* CA568 800BB5B8 00C8082A */  slt        $at, $a2, $t0
  .L800BB5BC_CA56C:
    /* CA56C 800BB5BC 50200006 */  beql       $at, $zero, .L800BB5D8_CA588
    /* CA570 800BB5C0 24020001 */   addiu     $v0, $zero, 0x1
    /* CA574 800BB5C4 10000003 */  b          .L800BB5D4_CA584
    /* CA578 800BB5C8 A4660000 */   sh        $a2, 0x0($v1)
  .L800BB5CC_CA57C:
    /* CA57C 800BB5CC 03E00008 */  jr         $ra
    /* CA580 800BB5D0 00001025 */   or        $v0, $zero, $zero
  .L800BB5D4_CA584:
    /* CA584 800BB5D4 24020001 */  addiu      $v0, $zero, 0x1
  .L800BB5D8_CA588:
    /* CA588 800BB5D8 03E00008 */  jr         $ra
    /* CA58C 800BB5DC 00000000 */   nop
endlabel func_800BB3D0_CA380
