nonmatching func_8011BEA0_12AE50, 0xDC

glabel func_8011BEA0_12AE50
    /* 12AE50 8011BEA0 308600FF */  andi       $a2, $a0, 0xFF
    /* 12AE54 8011BEA4 00067080 */  sll        $t6, $a2, 2
    /* 12AE58 8011BEA8 01C67023 */  subu       $t6, $t6, $a2
    /* 12AE5C 8011BEAC 3C0F8005 */  lui        $t7, %hi(buildingInstances)
    /* 12AE60 8011BEB0 25EF0AD8 */  addiu      $t7, $t7, %lo(buildingInstances)
    /* 12AE64 8011BEB4 000E70C0 */  sll        $t6, $t6, 3
    /* 12AE68 8011BEB8 01CF1821 */  addu       $v1, $t6, $t7
    /* 12AE6C 8011BEBC 9078000C */  lbu        $t8, 0xC($v1)
    /* 12AE70 8011BEC0 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 12AE74 8011BEC4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 12AE78 8011BEC8 13000003 */  beqz       $t8, .L8011BED8_12AE88
    /* 12AE7C 8011BECC AFA40020 */   sw        $a0, 0x20($sp)
    /* 12AE80 8011BED0 10000026 */  b          .L8011BF6C_12AF1C
    /* 12AE84 8011BED4 00001025 */   or        $v0, $zero, $zero
  .L8011BED8_12AE88:
    /* 12AE88 8011BED8 8C790008 */  lw         $t9, 0x8($v1)
    /* 12AE8C 8011BEDC 00194302 */  srl        $t0, $t9, 12
    /* 12AE90 8011BEE0 31091000 */  andi       $t1, $t0, 0x1000
    /* 12AE94 8011BEE4 11200003 */  beqz       $t1, .L8011BEF4_12AEA4
    /* 12AE98 8011BEE8 00000000 */   nop
    /* 12AE9C 8011BEEC 1000001F */  b          .L8011BF6C_12AF1C
    /* 12AEA0 8011BEF0 00001025 */   or        $v0, $zero, $zero
  .L8011BEF4_12AEA4:
    /* 12AEA4 8011BEF4 1CA00003 */  bgtz       $a1, .L8011BF04_12AEB4
    /* 12AEA8 8011BEF8 00C02025 */   or        $a0, $a2, $zero
    /* 12AEAC 8011BEFC 1000001B */  b          .L8011BF6C_12AF1C
    /* 12AEB0 8011BF00 00001025 */   or        $v0, $zero, $zero
  .L8011BF04_12AEB4:
    /* 12AEB4 8011BF04 8062000F */  lb         $v0, 0xF($v1)
    /* 12AEB8 8011BF08 18400007 */  blez       $v0, .L8011BF28_12AED8
    /* 12AEBC 8011BF0C A0620010 */   sb        $v0, 0x10($v1)
    /* 12AEC0 8011BF10 00A2082A */  slt        $at, $a1, $v0
    /* 12AEC4 8011BF14 10200003 */  beqz       $at, .L8011BF24_12AED4
    /* 12AEC8 8011BF18 00455023 */   subu      $t2, $v0, $a1
    /* 12AECC 8011BF1C 10000002 */  b          .L8011BF28_12AED8
    /* 12AED0 8011BF20 A06A000F */   sb        $t2, 0xF($v1)
  .L8011BF24_12AED4:
    /* 12AED4 8011BF24 A060000F */  sb         $zero, 0xF($v1)
  .L8011BF28_12AED8:
    /* 12AED8 8011BF28 24050001 */  addiu      $a1, $zero, 0x1
    /* 12AEDC 8011BF2C 0C046EE5 */  jal        func_8011BB94_12AB44
    /* 12AEE0 8011BF30 AFA30018 */   sw        $v1, 0x18($sp)
    /* 12AEE4 8011BF34 8FA30018 */  lw         $v1, 0x18($sp)
    /* 12AEE8 8011BF38 3C0C8016 */  lui        $t4, %hi(D_8015EA29)
    /* 12AEEC 8011BF3C 24020001 */  addiu      $v0, $zero, 0x1
    /* 12AEF0 8011BF40 806B000F */  lb         $t3, 0xF($v1)
    /* 12AEF4 8011BF44 1D600009 */  bgtz       $t3, .L8011BF6C_12AF1C
    /* 12AEF8 8011BF48 00000000 */   nop
    /* 12AEFC 8011BF4C 918CEA29 */  lbu        $t4, %lo(D_8015EA29)($t4)
    /* 12AF00 8011BF50 906D0006 */  lbu        $t5, 0x6($v1)
    /* 12AF04 8011BF54 3C018005 */  lui        $at, %hi(D_80052AC8)
    /* 12AF08 8011BF58 158D0004 */  bne        $t4, $t5, .L8011BF6C_12AF1C
    /* 12AF0C 8011BF5C 00000000 */   nop
    /* 12AF10 8011BF60 A4202AC8 */  sh         $zero, %lo(D_80052AC8)($at)
    /* 12AF14 8011BF64 3C018005 */  lui        $at, %hi(D_80052AD0)
    /* 12AF18 8011BF68 AC202AD0 */  sw         $zero, %lo(D_80052AD0)($at)
  .L8011BF6C_12AF1C:
    /* 12AF1C 8011BF6C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 12AF20 8011BF70 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 12AF24 8011BF74 03E00008 */  jr         $ra
    /* 12AF28 8011BF78 00000000 */   nop
endlabel func_8011BEA0_12AE50
