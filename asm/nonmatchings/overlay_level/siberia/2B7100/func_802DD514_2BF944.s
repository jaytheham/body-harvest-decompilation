nonmatching func_802DD514_2BF944, 0x154

glabel func_802DD514_2BF944
    /* 2BF944 802DD514 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 2BF948 802DD518 AFA40028 */  sw         $a0, 0x28($sp)
    /* 2BF94C 802DD51C 93AE002B */  lbu        $t6, 0x2B($sp)
    /* 2BF950 802DD520 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BF954 802DD524 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BF958 802DD528 000E7880 */  sll        $t7, $t6, 2
    /* 2BF95C 802DD52C 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BF960 802DD530 000F7900 */  sll        $t7, $t7, 4
    /* 2BF964 802DD534 01F83021 */  addu       $a2, $t7, $t8
    /* 2BF968 802DD538 90C2001A */  lbu        $v0, 0x1A($a2)
    /* 2BF96C 802DD53C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2BF970 802DD540 AFA60018 */  sw         $a2, 0x18($sp)
    /* 2BF974 802DD544 00402025 */  or         $a0, $v0, $zero
    /* 2BF978 802DD548 0C01E55B */  jal        func_8007956C_8851C
    /* 2BF97C 802DD54C AFA20020 */   sw        $v0, 0x20($sp)
    /* 2BF980 802DD550 305900FF */  andi       $t9, $v0, 0xFF
    /* 2BF984 802DD554 00194880 */  sll        $t1, $t9, 2
    /* 2BF988 802DD558 01394821 */  addu       $t1, $t1, $t9
    /* 2BF98C 802DD55C 3C0A8005 */  lui        $t2, %hi(alienInstances)
    /* 2BF990 802DD560 254A8198 */  addiu      $t2, $t2, %lo(alienInstances)
    /* 2BF994 802DD564 00094900 */  sll        $t1, $t1, 4
    /* 2BF998 802DD568 012A1821 */  addu       $v1, $t1, $t2
    /* 2BF99C 802DD56C 2407FF38 */  addiu      $a3, $zero, -0xC8
    /* 2BF9A0 802DD570 24084A03 */  addiu      $t0, $zero, 0x4A03
    /* 2BF9A4 802DD574 8C6B0020 */  lw         $t3, 0x20($v1)
    /* 2BF9A8 802DD578 A467002E */  sh         $a3, 0x2E($v1)
    /* 2BF9AC 802DD57C A4680032 */  sh         $t0, 0x32($v1)
    /* 2BF9B0 802DD580 846D002E */  lh         $t5, 0x2E($v1)
    /* 2BF9B4 802DD584 846E0032 */  lh         $t6, 0x32($v1)
    /* 2BF9B8 802DD588 8FA60018 */  lw         $a2, 0x18($sp)
    /* 2BF9BC 802DD58C 356C8000 */  ori        $t4, $t3, 0x8000
    /* 2BF9C0 802DD590 AC6C0020 */  sw         $t4, 0x20($v1)
    /* 2BF9C4 802DD594 A4670014 */  sh         $a3, 0x14($v1)
    /* 2BF9C8 802DD598 A4680018 */  sh         $t0, 0x18($v1)
    /* 2BF9CC 802DD59C A46D0000 */  sh         $t5, 0x0($v1)
    /* 2BF9D0 802DD5A0 A46E0004 */  sh         $t6, 0x4($v1)
    /* 2BF9D4 802DD5A4 84CF001C */  lh         $t7, 0x1C($a2)
    /* 2BF9D8 802DD5A8 00082C00 */  sll        $a1, $t0, 16
    /* 2BF9DC 802DD5AC 00072400 */  sll        $a0, $a3, 16
    /* 2BF9E0 802DD5B0 2418FFE0 */  addiu      $t8, $zero, -0x20
    /* 2BF9E4 802DD5B4 0004CC03 */  sra        $t9, $a0, 16
    /* 2BF9E8 802DD5B8 00054C03 */  sra        $t1, $a1, 16
    /* 2BF9EC 802DD5BC A3A20027 */  sb         $v0, 0x27($sp)
    /* 2BF9F0 802DD5C0 A4780048 */  sh         $t8, 0x48($v1)
    /* 2BF9F4 802DD5C4 01202825 */  or         $a1, $t1, $zero
    /* 2BF9F8 802DD5C8 03202025 */  or         $a0, $t9, $zero
    /* 2BF9FC 802DD5CC 0C02E134 */  jal        func_800B84D0_C7480
    /* 2BFA00 802DD5D0 A46F001C */   sh        $t7, 0x1C($v1)
    /* 2BFA04 802DD5D4 8FAD0020 */  lw         $t5, 0x20($sp)
    /* 2BFA08 802DD5D8 93AA0027 */  lbu        $t2, 0x27($sp)
    /* 2BFA0C 802DD5DC 3C0C8005 */  lui        $t4, %hi(alienInstances)
    /* 2BFA10 802DD5E0 000D7080 */  sll        $t6, $t5, 2
    /* 2BFA14 802DD5E4 01CD7023 */  subu       $t6, $t6, $t5
    /* 2BFA18 802DD5E8 000E7080 */  sll        $t6, $t6, 2
    /* 2BFA1C 802DD5EC 000A5880 */  sll        $t3, $t2, 2
    /* 2BFA20 802DD5F0 3C0F8025 */  lui        $t7, %hi(alienSpecs)
    /* 2BFA24 802DD5F4 01CD7021 */  addu       $t6, $t6, $t5
    /* 2BFA28 802DD5F8 016A5821 */  addu       $t3, $t3, $t2
    /* 2BFA2C 802DD5FC 000B5900 */  sll        $t3, $t3, 4
    /* 2BFA30 802DD600 000E70C0 */  sll        $t6, $t6, 3
    /* 2BFA34 802DD604 25EF6680 */  addiu      $t7, $t7, %lo(alienSpecs)
    /* 2BFA38 802DD608 258C8198 */  addiu      $t4, $t4, %lo(alienInstances)
    /* 2BFA3C 802DD60C 016C1821 */  addu       $v1, $t3, $t4
    /* 2BFA40 802DD610 01CF2821 */  addu       $a1, $t6, $t7
    /* 2BFA44 802DD614 84B80058 */  lh         $t8, 0x58($a1)
    /* 2BFA48 802DD618 8C6A0020 */  lw         $t2, 0x20($v1)
    /* 2BFA4C 802DD61C 8CAC0054 */  lw         $t4, 0x54($a1)
    /* 2BFA50 802DD620 3C01F7FF */  lui        $at, (0xF7FFFFFF >> 16)
    /* 2BFA54 802DD624 3421FFFF */  ori        $at, $at, (0xF7FFFFFF & 0xFFFF)
    /* 2BFA58 802DD628 27190008 */  addiu      $t9, $t8, 0x8
    /* 2BFA5C 802DD62C 03224807 */  srav       $t1, $v0, $t9
    /* 2BFA60 802DD630 01415824 */  and        $t3, $t2, $at
    /* 2BFA64 802DD634 358D000C */  ori        $t5, $t4, 0xC
    /* 2BFA68 802DD638 A4690002 */  sh         $t1, 0x2($v1)
    /* 2BFA6C 802DD63C A0600026 */  sb         $zero, 0x26($v1)
    /* 2BFA70 802DD640 AC6B0020 */  sw         $t3, 0x20($v1)
    /* 2BFA74 802DD644 ACAD0054 */  sw         $t5, 0x54($a1)
    /* 2BFA78 802DD648 0C01E644 */  jal        func_80079910_888C0
    /* 2BFA7C 802DD64C 93A4002B */   lbu       $a0, 0x2B($sp)
    /* 2BFA80 802DD650 0C01E8A8 */  jal        func_8007A2A0_89250
    /* 2BFA84 802DD654 93A40027 */   lbu       $a0, 0x27($sp)
    /* 2BFA88 802DD658 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2BFA8C 802DD65C 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 2BFA90 802DD660 03E00008 */  jr         $ra
    /* 2BFA94 802DD664 00000000 */   nop
endlabel func_802DD514_2BF944
