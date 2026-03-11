nonmatching func_8008D4A0_9C450, 0x194

glabel func_8008D4A0_9C450
    /* 9C450 8008D4A0 00047080 */  sll        $t6, $a0, 2
    /* 9C454 8008D4A4 3C088005 */  lui        $t0, %hi(alienInstances)
    /* 9C458 8008D4A8 01C47021 */  addu       $t6, $t6, $a0
    /* 9C45C 8008D4AC 25088198 */  addiu      $t0, $t0, %lo(alienInstances)
    /* 9C460 8008D4B0 000E7100 */  sll        $t6, $t6, 4
    /* 9C464 8008D4B4 010E1821 */  addu       $v1, $t0, $t6
    /* 9C468 8008D4B8 8C6F0020 */  lw         $t7, 0x20($v1)
    /* 9C46C 8008D4BC 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 9C470 8008D4C0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 9C474 8008D4C4 31F84000 */  andi       $t8, $t7, 0x4000
    /* 9C478 8008D4C8 17000056 */  bnez       $t8, .L8008D624_9C5D4
    /* 9C47C 8008D4CC 00803825 */   or        $a3, $a0, $zero
    /* 9C480 8008D4D0 9079001A */  lbu        $t9, 0x1A($v1)
    /* 9C484 8008D4D4 3C068025 */  lui        $a2, %hi(D_802566D1)
    /* 9C488 8008D4D8 24010014 */  addiu      $at, $zero, 0x14
    /* 9C48C 8008D4DC 00194880 */  sll        $t1, $t9, 2
    /* 9C490 8008D4E0 01394823 */  subu       $t1, $t1, $t9
    /* 9C494 8008D4E4 00094880 */  sll        $t1, $t1, 2
    /* 9C498 8008D4E8 01394821 */  addu       $t1, $t1, $t9
    /* 9C49C 8008D4EC 000948C0 */  sll        $t1, $t1, 3
    /* 9C4A0 8008D4F0 00C93021 */  addu       $a2, $a2, $t1
    /* 9C4A4 8008D4F4 90C666D1 */  lbu        $a2, %lo(D_802566D1)($a2)
    /* 9C4A8 8008D4F8 84640000 */  lh         $a0, 0x0($v1)
    /* 9C4AC 8008D4FC 84650004 */  lh         $a1, 0x4($v1)
    /* 9C4B0 8008D500 00C1001A */  div        $zero, $a2, $at
    /* 9C4B4 8008D504 00003012 */  mflo       $a2
    /* 9C4B8 8008D508 AFA3001C */  sw         $v1, 0x1C($sp)
    /* 9C4BC 8008D50C 0C0208E5 */  jal        func_80082394_91344
    /* 9C4C0 8008D510 AFA70028 */   sw        $a3, 0x28($sp)
    /* 9C4C4 8008D514 3C088005 */  lui        $t0, %hi(alienInstances)
    /* 9C4C8 8008D518 24010100 */  addiu      $at, $zero, 0x100
    /* 9C4CC 8008D51C 25088198 */  addiu      $t0, $t0, %lo(alienInstances)
    /* 9C4D0 8008D520 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 9C4D4 8008D524 1041000D */  beq        $v0, $at, .L8008D55C_9C50C
    /* 9C4D8 8008D528 8FA70028 */   lw        $a3, 0x28($sp)
    /* 9C4DC 8008D52C 240100FF */  addiu      $at, $zero, 0xFF
    /* 9C4E0 8008D530 10410014 */  beq        $v0, $at, .L8008D584_9C534
    /* 9C4E4 8008D534 00025880 */   sll       $t3, $v0, 2
    /* 9C4E8 8008D538 01625821 */  addu       $t3, $t3, $v0
    /* 9C4EC 8008D53C 000B5900 */  sll        $t3, $t3, 4
    /* 9C4F0 8008D540 010B6021 */  addu       $t4, $t0, $t3
    /* 9C4F4 8008D544 8D840020 */  lw         $a0, 0x20($t4)
    /* 9C4F8 8008D548 00046840 */  sll        $t5, $a0, 1
    /* 9C4FC 8008D54C 05A10003 */  bgez       $t5, .L8008D55C_9C50C
    /* 9C500 8008D550 308E0600 */   andi      $t6, $a0, 0x600
    /* 9C504 8008D554 55C0000C */  bnel       $t6, $zero, .L8008D588_9C538
    /* 9C508 8008D558 90620025 */   lbu       $v0, 0x25($v1)
  .L8008D55C_9C50C:
    /* 9C50C 8008D55C 8C6F0020 */  lw         $t7, 0x20($v1)
    /* 9C510 8008D560 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 9C514 8008D564 240A00E0 */  addiu      $t2, $zero, 0xE0
    /* 9C518 8008D568 35F80020 */  ori        $t8, $t7, 0x20
    /* 9C51C 8008D56C AC780020 */  sw         $t8, 0x20($v1)
    /* 9C520 8008D570 03014824 */  and        $t1, $t8, $at
    /* 9C524 8008D574 A4620038 */  sh         $v0, 0x38($v1)
    /* 9C528 8008D578 AC690020 */  sw         $t1, 0x20($v1)
    /* 9C52C 8008D57C 10000029 */  b          .L8008D624_9C5D4
    /* 9C530 8008D580 A46A0048 */   sh        $t2, 0x48($v1)
  .L8008D584_9C534:
    /* 9C534 8008D584 90620025 */  lbu        $v0, 0x25($v1)
  .L8008D588_9C538:
    /* 9C538 8008D588 30E400FF */  andi       $a0, $a3, 0xFF
    /* 9C53C 8008D58C 00025880 */  sll        $t3, $v0, 2
    /* 9C540 8008D590 01625821 */  addu       $t3, $t3, $v0
    /* 9C544 8008D594 000B5900 */  sll        $t3, $t3, 4
    /* 9C548 8008D598 010B3021 */  addu       $a2, $t0, $t3
    /* 9C54C 8008D59C 8CCC0020 */  lw         $t4, 0x20($a2)
    /* 9C550 8008D5A0 318D4000 */  andi       $t5, $t4, 0x4000
    /* 9C554 8008D5A4 51A00010 */  beql       $t5, $zero, .L8008D5E8_9C598
    /* 9C558 8008D5A8 8062003D */   lb        $v0, 0x3D($v1)
    /* 9C55C 8008D5AC 90C50039 */  lbu        $a1, 0x39($a2)
    /* 9C560 8008D5B0 0C0202D1 */  jal        func_80080B44_8FAF4
    /* 9C564 8008D5B4 AFA3001C */   sw        $v1, 0x1C($sp)
    /* 9C568 8008D5B8 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 9C56C 8008D5BC 2401EFDF */  addiu      $at, $zero, -0x1021
    /* 9C570 8008D5C0 240900E0 */  addiu      $t1, $zero, 0xE0
    /* 9C574 8008D5C4 846E0016 */  lh         $t6, 0x16($v1)
    /* 9C578 8008D5C8 8C780020 */  lw         $t8, 0x20($v1)
    /* 9C57C 8008D5CC A4690048 */  sh         $t1, 0x48($v1)
    /* 9C580 8008D5D0 25CF0064 */  addiu      $t7, $t6, 0x64
    /* 9C584 8008D5D4 0301C824 */  and        $t9, $t8, $at
    /* 9C588 8008D5D8 A46F0016 */  sh         $t7, 0x16($v1)
    /* 9C58C 8008D5DC 10000011 */  b          .L8008D624_9C5D4
    /* 9C590 8008D5E0 AC790020 */   sw        $t9, 0x20($v1)
    /* 9C594 8008D5E4 8062003D */  lb         $v0, 0x3D($v1)
  .L8008D5E8_9C598:
    /* 9C598 8008D5E8 2401FFFF */  addiu      $at, $zero, -0x1
    /* 9C59C 8008D5EC 3C0A8004 */  lui        $t2, %hi(currentLevel)
    /* 9C5A0 8008D5F0 1041000A */  beq        $v0, $at, .L8008D61C_9C5CC
    /* 9C5A4 8008D5F4 00000000 */   nop
    /* 9C5A8 8008D5F8 8D4A7F90 */  lw         $t2, %lo(currentLevel)($t2)
    /* 9C5AC 8008D5FC 00026100 */  sll        $t4, $v0, 4
    /* 9C5B0 8008D600 3C0E8014 */  lui        $t6, %hi(D_80146492)
    /* 9C5B4 8008D604 000A5A40 */  sll        $t3, $t2, 9
    /* 9C5B8 8008D608 016C6821 */  addu       $t5, $t3, $t4
    /* 9C5BC 8008D60C 01CD7021 */  addu       $t6, $t6, $t5
    /* 9C5C0 8008D610 85CE6492 */  lh         $t6, %lo(D_80146492)($t6)
    /* 9C5C4 8008D614 55C00004 */  bnel       $t6, $zero, .L8008D628_9C5D8
    /* 9C5C8 8008D618 8FBF0014 */   lw        $ra, 0x14($sp)
  .L8008D61C_9C5CC:
    /* 9C5CC 8008D61C 0C0234EC */  jal        func_8008D3B0_9C360
    /* 9C5D0 8008D620 30E400FF */   andi      $a0, $a3, 0xFF
  .L8008D624_9C5D4:
    /* 9C5D4 8008D624 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8008D628_9C5D8:
    /* 9C5D8 8008D628 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 9C5DC 8008D62C 03E00008 */  jr         $ra
    /* 9C5E0 8008D630 00000000 */   nop
endlabel func_8008D4A0_9C450
