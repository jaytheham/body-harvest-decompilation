nonmatching func_8000CD54_D954, 0xA8

glabel func_8000CD54_D954
    /* D954 8000CD54 AFA60008 */  sw         $a2, 0x8($sp)
    /* D958 8000CD58 8CAF0014 */  lw         $t7, 0x14($a1)
    /* D95C 8000CD5C 8CA20018 */  lw         $v0, 0x18($a1)
    /* D960 8000CD60 30CE00FF */  andi       $t6, $a2, 0xFF
    /* D964 8000CD64 000EC080 */  sll        $t8, $t6, 2
    /* D968 8000CD68 004F082A */  slt        $at, $v0, $t7
    /* D96C 8000CD6C 10200021 */  beqz       $at, .L8000CDF4_D9F4
    /* D970 8000CD70 0098C821 */   addu      $t9, $a0, $t8
    /* D974 8000CD74 9723000C */  lhu        $v1, 0xC($t9)
    /* D978 8000CD78 44802000 */  mtc1       $zero, $f4
    /* D97C 8000CD7C 00621821 */  addu       $v1, $v1, $v0
    /* D980 8000CD80 3068FFFF */  andi       $t0, $v1, 0xFFFF
    /* D984 8000CD84 000848C0 */  sll        $t1, $t0, 3
    /* D988 8000CD88 01284823 */  subu       $t1, $t1, $t0
    /* D98C 8000CD8C 00094840 */  sll        $t1, $t1, 1
    /* D990 8000CD90 00895021 */  addu       $t2, $a0, $t1
    /* D994 8000CD94 89410050 */  lwl        $at, 0x50($t2)
    /* D998 8000CD98 99410053 */  lwr        $at, 0x53($t2)
    /* D99C 8000CD9C A8A10024 */  swl        $at, 0x24($a1)
    /* D9A0 8000CDA0 B8A10027 */  swr        $at, 0x27($a1)
    /* D9A4 8000CDA4 894C0054 */  lwl        $t4, 0x54($t2)
    /* D9A8 8000CDA8 994C0057 */  lwr        $t4, 0x57($t2)
    /* D9AC 8000CDAC A8AC0028 */  swl        $t4, 0x28($a1)
    /* D9B0 8000CDB0 B8AC002B */  swr        $t4, 0x2B($a1)
    /* D9B4 8000CDB4 89410058 */  lwl        $at, 0x58($t2)
    /* D9B8 8000CDB8 9941005B */  lwr        $at, 0x5B($t2)
    /* D9BC 8000CDBC A8A1002C */  swl        $at, 0x2C($a1)
    /* D9C0 8000CDC0 B8A1002F */  swr        $at, 0x2F($a1)
    /* D9C4 8000CDC4 9541005C */  lhu        $at, 0x5C($t2)
    /* D9C8 8000CDC8 E4A4001C */  swc1       $f4, 0x1C($a1)
    /* D9CC 8000CDCC 302DFFFF */  andi       $t5, $at, 0xFFFF
    /* D9D0 8000CDD0 448D3000 */  mtc1       $t5, $f6
    /* D9D4 8000CDD4 A4A10030 */  sh         $at, 0x30($a1)
    /* D9D8 8000CDD8 05A10005 */  bgez       $t5, .L8000CDF0_D9F0
    /* D9DC 8000CDDC 46803220 */   cvt.s.w   $f8, $f6
    /* D9E0 8000CDE0 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* D9E4 8000CDE4 44815000 */  mtc1       $at, $f10
    /* D9E8 8000CDE8 00000000 */  nop
    /* D9EC 8000CDEC 460A4200 */  add.s      $f8, $f8, $f10
  .L8000CDF0_D9F0:
    /* D9F0 8000CDF0 E4A80020 */  swc1       $f8, 0x20($a1)
  .L8000CDF4_D9F4:
    /* D9F4 8000CDF4 03E00008 */  jr         $ra
    /* D9F8 8000CDF8 00000000 */   nop
endlabel func_8000CD54_D954
