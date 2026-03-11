nonmatching func_800E75A0_F6550, 0xC0

glabel func_800E75A0_F6550
    /* F6550 800E75A0 3C028004 */  lui        $v0, %hi(currentLevel)
    /* F6554 800E75A4 8C427F90 */  lw         $v0, %lo(currentLevel)($v0)
    /* F6558 800E75A8 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* F655C 800E75AC AFA40028 */  sw         $a0, 0x28($sp)
    /* F6560 800E75B0 AFA5002C */  sw         $a1, 0x2C($sp)
    /* F6564 800E75B4 00047400 */  sll        $t6, $a0, 16
    /* F6568 800E75B8 0005C400 */  sll        $t8, $a1, 16
    /* F656C 800E75BC 24010001 */  addiu      $at, $zero, 0x1
    /* F6570 800E75C0 00182C03 */  sra        $a1, $t8, 16
    /* F6574 800E75C4 000E2403 */  sra        $a0, $t6, 16
    /* F6578 800E75C8 AFBF0024 */  sw         $ra, 0x24($sp)
    /* F657C 800E75CC 10410004 */  beq        $v0, $at, .L800E75E0_F6590
    /* F6580 800E75D0 AFA60030 */   sw        $a2, 0x30($sp)
    /* F6584 800E75D4 24010003 */  addiu      $at, $zero, 0x3
    /* F6588 800E75D8 5441000E */  bnel       $v0, $at, .L800E7614_F65C4
    /* F658C 800E75DC 24010002 */   addiu     $at, $zero, 0x2
  .L800E75E0_F6590:
    /* F6590 800E75E0 A7A4002A */  sh         $a0, 0x2A($sp)
    /* F6594 800E75E4 0C02E134 */  jal        func_800B84D0_C7480
    /* F6598 800E75E8 A7A5002E */   sh        $a1, 0x2E($sp)
    /* F659C 800E75EC 00022A03 */  sra        $a1, $v0, 8
    /* F65A0 800E75F0 00054400 */  sll        $t0, $a1, 16
    /* F65A4 800E75F4 00082C03 */  sra        $a1, $t0, 16
    /* F65A8 800E75F8 87A4002A */  lh         $a0, 0x2A($sp)
    /* F65AC 800E75FC 87A6002E */  lh         $a2, 0x2E($sp)
    /* F65B0 800E7600 0C037AB7 */  jal        func_800DEADC_EDA8C
    /* F65B4 800E7604 87A70032 */   lh        $a3, 0x32($sp)
    /* F65B8 800E7608 10000012 */  b          .L800E7654_F6604
    /* F65BC 800E760C 8FBF0024 */   lw        $ra, 0x24($sp)
    /* F65C0 800E7610 24010002 */  addiu      $at, $zero, 0x2
  .L800E7614_F65C4:
    /* F65C4 800E7614 1441000E */  bne        $v0, $at, .L800E7650_F6600
    /* F65C8 800E7618 2406000F */   addiu     $a2, $zero, 0xF
    /* F65CC 800E761C 87AC0032 */  lh         $t4, 0x32($sp)
    /* F65D0 800E7620 240A0096 */  addiu      $t2, $zero, 0x96
    /* F65D4 800E7624 240B00C8 */  addiu      $t3, $zero, 0xC8
    /* F65D8 800E7628 AFAB0014 */  sw         $t3, 0x14($sp)
    /* F65DC 800E762C AFAA0010 */  sw         $t2, 0x10($sp)
    /* F65E0 800E7630 24070096 */  addiu      $a3, $zero, 0x96
    /* F65E4 800E7634 05810003 */  bgez       $t4, .L800E7644_F65F4
    /* F65E8 800E7638 000C6883 */   sra       $t5, $t4, 2
    /* F65EC 800E763C 25810003 */  addiu      $at, $t4, 0x3
    /* F65F0 800E7640 00016883 */  sra        $t5, $at, 2
  .L800E7644_F65F4:
    /* F65F4 800E7644 25AE003C */  addiu      $t6, $t5, 0x3C
    /* F65F8 800E7648 0C03254C */  jal        func_800C9530_D84E0
    /* F65FC 800E764C AFAE0018 */   sw        $t6, 0x18($sp)
  .L800E7650_F6600:
    /* F6600 800E7650 8FBF0024 */  lw         $ra, 0x24($sp)
  .L800E7654_F6604:
    /* F6604 800E7654 27BD0028 */  addiu      $sp, $sp, 0x28
    /* F6608 800E7658 03E00008 */  jr         $ra
    /* F660C 800E765C 00000000 */   nop
endlabel func_800E75A0_F6550
