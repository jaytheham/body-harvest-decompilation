nonmatching func_800AB730_BA6E0, 0xDC

glabel func_800AB730_BA6E0
    /* BA6E0 800AB730 308E00FF */  andi       $t6, $a0, 0xFF
    /* BA6E4 800AB734 000E7880 */  sll        $t7, $t6, 2
    /* BA6E8 800AB738 3C058005 */  lui        $a1, %hi(D_80052B34)
    /* BA6EC 800AB73C 8CA52B34 */  lw         $a1, %lo(D_80052B34)($a1)
    /* BA6F0 800AB740 01EE7821 */  addu       $t7, $t7, $t6
    /* BA6F4 800AB744 3C188005 */  lui        $t8, %hi(alienInstances)
    /* BA6F8 800AB748 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* BA6FC 800AB74C 000F7900 */  sll        $t7, $t7, 4
    /* BA700 800AB750 AFA40000 */  sw         $a0, 0x0($sp)
    /* BA704 800AB754 01F81821 */  addu       $v1, $t7, $t8
    /* BA708 800AB758 84790000 */  lh         $t9, 0x0($v1)
    /* BA70C 800AB75C 84A80000 */  lh         $t0, 0x0($a1)
    /* BA710 800AB760 84690004 */  lh         $t1, 0x4($v1)
    /* BA714 800AB764 84AA0004 */  lh         $t2, 0x4($a1)
    /* BA718 800AB768 03281023 */  subu       $v0, $t9, $t0
    /* BA71C 800AB76C 00023823 */  negu       $a3, $v0
    /* BA720 800AB770 00E2082A */  slt        $at, $a3, $v0
    /* BA724 800AB774 10200003 */  beqz       $at, .L800AB784_BA734
    /* BA728 800AB778 012A3023 */   subu      $a2, $t1, $t2
    /* BA72C 800AB77C 10000002 */  b          .L800AB788_BA738
    /* BA730 800AB780 00402025 */   or        $a0, $v0, $zero
  .L800AB784_BA734:
    /* BA734 800AB784 00E02025 */  or         $a0, $a3, $zero
  .L800AB788_BA738:
    /* BA738 800AB788 288100C9 */  slti       $at, $a0, 0xC9
    /* BA73C 800AB78C 10200010 */  beqz       $at, .L800AB7D0_BA780
    /* BA740 800AB790 00061023 */   negu      $v0, $a2
    /* BA744 800AB794 0046082A */  slt        $at, $v0, $a2
    /* BA748 800AB798 10200003 */  beqz       $at, .L800AB7A8_BA758
    /* BA74C 800AB79C 00402025 */   or        $a0, $v0, $zero
    /* BA750 800AB7A0 10000001 */  b          .L800AB7A8_BA758
    /* BA754 800AB7A4 00C02025 */   or        $a0, $a2, $zero
  .L800AB7A8_BA758:
    /* BA758 800AB7A8 288100C9 */  slti       $at, $a0, 0xC9
    /* BA75C 800AB7AC 50200009 */  beql       $at, $zero, .L800AB7D4_BA784
    /* BA760 800AB7B0 8C6F0020 */   lw        $t7, 0x20($v1)
    /* BA764 800AB7B4 906B0024 */  lbu        $t3, 0x24($v1)
    /* BA768 800AB7B8 2401000E */  addiu      $at, $zero, 0xE
    /* BA76C 800AB7BC 15610011 */  bne        $t3, $at, .L800AB804_BA7B4
    /* BA770 800AB7C0 00000000 */   nop
    /* BA774 800AB7C4 90AC001A */  lbu        $t4, 0x1A($a1)
    /* BA778 800AB7C8 1180000E */  beqz       $t4, .L800AB804_BA7B4
    /* BA77C 800AB7CC 00000000 */   nop
  .L800AB7D0_BA780:
    /* BA780 800AB7D0 8C6F0020 */  lw         $t7, 0x20($v1)
  .L800AB7D4_BA784:
    /* BA784 800AB7D4 3C010802 */  lui        $at, (0x8020000 >> 16)
    /* BA788 800AB7D8 906D0024 */  lbu        $t5, 0x24($v1)
    /* BA78C 800AB7DC 01E1C025 */  or         $t8, $t7, $at
    /* BA790 800AB7E0 3C01FFFF */  lui        $at, (0xFFFF7FDF >> 16)
    /* BA794 800AB7E4 34217FDF */  ori        $at, $at, (0xFFFF7FDF & 0xFFFF)
    /* BA798 800AB7E8 AC780020 */  sw         $t8, 0x20($v1)
    /* BA79C 800AB7EC 03014024 */  and        $t0, $t8, $at
    /* BA7A0 800AB7F0 240900C0 */  addiu      $t1, $zero, 0xC0
    /* BA7A4 800AB7F4 25AEFFFF */  addiu      $t6, $t5, -0x1
    /* BA7A8 800AB7F8 A06E0024 */  sb         $t6, 0x24($v1)
    /* BA7AC 800AB7FC AC680020 */  sw         $t0, 0x20($v1)
    /* BA7B0 800AB800 A4690048 */  sh         $t1, 0x48($v1)
  .L800AB804_BA7B4:
    /* BA7B4 800AB804 03E00008 */  jr         $ra
    /* BA7B8 800AB808 00000000 */   nop
endlabel func_800AB730_BA6E0
