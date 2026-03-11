nonmatching func_8009BDB8_AAD68, 0x1AC

glabel func_8009BDB8_AAD68
    /* AAD68 8009BDB8 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* AAD6C 8009BDBC 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* AAD70 8009BDC0 8C620000 */  lw         $v0, 0x0($v1)
    /* AAD74 8009BDC4 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* AAD78 8009BDC8 AFA40030 */  sw         $a0, 0x30($sp)
    /* AAD7C 8009BDCC 308E00FF */  andi       $t6, $a0, 0xFF
    /* AAD80 8009BDD0 01C02025 */  or         $a0, $t6, $zero
    /* AAD84 8009BDD4 30AF00FF */  andi       $t7, $a1, 0xFF
    /* AAD88 8009BDD8 000F71C0 */  sll        $t6, $t7, 7
    /* AAD8C 8009BDDC 24580008 */  addiu      $t8, $v0, 0x8
    /* AAD90 8009BDE0 AC780000 */  sw         $t8, 0x0($v1)
    /* AAD94 8009BDE4 3C0F0101 */  lui        $t7, %hi(D_1009C70)
    /* AAD98 8009BDE8 AFA50034 */  sw         $a1, 0x34($sp)
    /* AAD9C 8009BDEC 25EF9C70 */  addiu      $t7, $t7, %lo(D_1009C70)
    /* AADA0 8009BDF0 3C19FD90 */  lui        $t9, (0xFD900000 >> 16)
    /* AADA4 8009BDF4 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* AADA8 8009BDF8 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* AADAC 8009BDFC 01CFC021 */  addu       $t8, $t6, $t7
    /* AADB0 8009BE00 AC590000 */  sw         $t9, 0x0($v0)
    /* AADB4 8009BE04 0301C824 */  and        $t9, $t8, $at
    /* AADB8 8009BE08 AC590004 */  sw         $t9, 0x4($v0)
    /* AADBC 8009BE0C 8C620000 */  lw         $v0, 0x0($v1)
    /* AADC0 8009BE10 3C180701 */  lui        $t8, (0x7014050 >> 16)
    /* AADC4 8009BE14 37184050 */  ori        $t8, $t8, (0x7014050 & 0xFFFF)
    /* AADC8 8009BE18 244E0008 */  addiu      $t6, $v0, 0x8
    /* AADCC 8009BE1C AC6E0000 */  sw         $t6, 0x0($v1)
    /* AADD0 8009BE20 3C0FF590 */  lui        $t7, (0xF5900000 >> 16)
    /* AADD4 8009BE24 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AADD8 8009BE28 AC580004 */  sw         $t8, 0x4($v0)
    /* AADDC 8009BE2C 8C620000 */  lw         $v0, 0x0($v1)
    /* AADE0 8009BE30 3C0EE600 */  lui        $t6, (0xE6000000 >> 16)
    /* AADE4 8009BE34 3C18F300 */  lui        $t8, (0xF3000000 >> 16)
    /* AADE8 8009BE38 24590008 */  addiu      $t9, $v0, 0x8
    /* AADEC 8009BE3C AC790000 */  sw         $t9, 0x0($v1)
    /* AADF0 8009BE40 AC400004 */  sw         $zero, 0x4($v0)
    /* AADF4 8009BE44 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AADF8 8009BE48 8C620000 */  lw         $v0, 0x0($v1)
    /* AADFC 8009BE4C 3C190703 */  lui        $t9, (0x703F800 >> 16)
    /* AAE00 8009BE50 3739F800 */  ori        $t9, $t9, (0x703F800 & 0xFFFF)
    /* AAE04 8009BE54 244F0008 */  addiu      $t7, $v0, 0x8
    /* AAE08 8009BE58 AC6F0000 */  sw         $t7, 0x0($v1)
    /* AAE0C 8009BE5C AC590004 */  sw         $t9, 0x4($v0)
    /* AAE10 8009BE60 AC580000 */  sw         $t8, 0x0($v0)
    /* AAE14 8009BE64 8C620000 */  lw         $v0, 0x0($v1)
    /* AAE18 8009BE68 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* AAE1C 8009BE6C 3C19F580 */  lui        $t9, (0xF5800200 >> 16)
    /* AAE20 8009BE70 244E0008 */  addiu      $t6, $v0, 0x8
    /* AAE24 8009BE74 AC6E0000 */  sw         $t6, 0x0($v1)
    /* AAE28 8009BE78 AC400004 */  sw         $zero, 0x4($v0)
    /* AAE2C 8009BE7C AC4F0000 */  sw         $t7, 0x0($v0)
    /* AAE30 8009BE80 8C620000 */  lw         $v0, 0x0($v1)
    /* AAE34 8009BE84 3C0E0001 */  lui        $t6, (0x14050 >> 16)
    /* AAE38 8009BE88 35CE4050 */  ori        $t6, $t6, (0x14050 & 0xFFFF)
    /* AAE3C 8009BE8C 24580008 */  addiu      $t8, $v0, 0x8
    /* AAE40 8009BE90 AC780000 */  sw         $t8, 0x0($v1)
    /* AAE44 8009BE94 37390200 */  ori        $t9, $t9, (0xF5800200 & 0xFFFF)
    /* AAE48 8009BE98 AC590000 */  sw         $t9, 0x0($v0)
    /* AAE4C 8009BE9C AC4E0004 */  sw         $t6, 0x4($v0)
    /* AAE50 8009BEA0 8C620000 */  lw         $v0, 0x0($v1)
    /* AAE54 8009BEA4 3C190003 */  lui        $t9, (0x3C03C >> 16)
    /* AAE58 8009BEA8 3739C03C */  ori        $t9, $t9, (0x3C03C & 0xFFFF)
    /* AAE5C 8009BEAC 244F0008 */  addiu      $t7, $v0, 0x8
    /* AAE60 8009BEB0 AC6F0000 */  sw         $t7, 0x0($v1)
    /* AAE64 8009BEB4 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* AAE68 8009BEB8 AC580000 */  sw         $t8, 0x0($v0)
    /* AAE6C 8009BEBC AC590004 */  sw         $t9, 0x4($v0)
    /* AAE70 8009BEC0 8C620000 */  lw         $v0, 0x0($v1)
    /* AAE74 8009BEC4 24980015 */  addiu      $t8, $a0, 0x15
    /* AAE78 8009BEC8 0018C880 */  sll        $t9, $t8, 2
    /* AAE7C 8009BECC 244E0008 */  addiu      $t6, $v0, 0x8
    /* AAE80 8009BED0 AC6E0000 */  sw         $t6, 0x0($v1)
    /* AAE84 8009BED4 332E0FFF */  andi       $t6, $t9, 0xFFF
    /* AAE88 8009BED8 000E7B00 */  sll        $t7, $t6, 12
    /* AAE8C 8009BEDC 3C01E400 */  lui        $at, (0xE40000F4 >> 16)
    /* AAE90 8009BEE0 01E1C025 */  or         $t8, $t7, $at
    /* AAE94 8009BEE4 371900F4 */  ori        $t9, $t8, (0xE40000F4 & 0xFFFF)
    /* AAE98 8009BEE8 AFA40000 */  sw         $a0, 0x0($sp)
    /* AAE9C 8009BEEC AC590000 */  sw         $t9, 0x0($v0)
    /* AAEA0 8009BEF0 8FAE0000 */  lw         $t6, 0x0($sp)
    /* AAEA4 8009BEF4 000E7880 */  sll        $t7, $t6, 2
    /* AAEA8 8009BEF8 31F80FFF */  andi       $t8, $t7, 0xFFF
    /* AAEAC 8009BEFC 0018CB00 */  sll        $t9, $t8, 12
    /* AAEB0 8009BF00 372E00A0 */  ori        $t6, $t9, 0xA0
    /* AAEB4 8009BF04 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AAEB8 8009BF08 8C620000 */  lw         $v0, 0x0($v1)
    /* AAEBC 8009BF0C 3C18B400 */  lui        $t8, (0xB4000000 >> 16)
    /* AAEC0 8009BF10 244F0008 */  addiu      $t7, $v0, 0x8
    /* AAEC4 8009BF14 AC6F0000 */  sw         $t7, 0x0($v1)
    /* AAEC8 8009BF18 AFA2000C */  sw         $v0, 0xC($sp)
    /* AAECC 8009BF1C AC400004 */  sw         $zero, 0x4($v0)
    /* AAED0 8009BF20 AC580000 */  sw         $t8, 0x0($v0)
    /* AAED4 8009BF24 8C620000 */  lw         $v0, 0x0($v1)
    /* AAED8 8009BF28 3C180300 */  lui        $t8, (0x3000300 >> 16)
    /* AAEDC 8009BF2C 37180300 */  ori        $t8, $t8, (0x3000300 & 0xFFFF)
    /* AAEE0 8009BF30 244E0008 */  addiu      $t6, $v0, 0x8
    /* AAEE4 8009BF34 AC6E0000 */  sw         $t6, 0x0($v1)
    /* AAEE8 8009BF38 3C0FB300 */  lui        $t7, (0xB3000000 >> 16)
    /* AAEEC 8009BF3C AC4F0000 */  sw         $t7, 0x0($v0)
    /* AAEF0 8009BF40 AC580004 */  sw         $t8, 0x4($v0)
    /* AAEF4 8009BF44 8C620000 */  lw         $v0, 0x0($v1)
    /* AAEF8 8009BF48 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* AAEFC 8009BF4C 27BD0030 */  addiu      $sp, $sp, 0x30
    /* AAF00 8009BF50 24590008 */  addiu      $t9, $v0, 0x8
    /* AAF04 8009BF54 AC790000 */  sw         $t9, 0x0($v1)
    /* AAF08 8009BF58 AC400004 */  sw         $zero, 0x4($v0)
    /* AAF0C 8009BF5C 03E00008 */  jr         $ra
    /* AAF10 8009BF60 AC4E0000 */   sw        $t6, 0x0($v0)
endlabel func_8009BDB8_AAD68
