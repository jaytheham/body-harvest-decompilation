nonmatching func_800DE150_ED100, 0x198

glabel func_800DE150_ED100
    /* ED100 800DE150 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* ED104 800DE154 AFB70034 */  sw         $s7, 0x34($sp)
    /* ED108 800DE158 AFB5002C */  sw         $s5, 0x2C($sp)
    /* ED10C 800DE15C AFB30024 */  sw         $s3, 0x24($sp)
    /* ED110 800DE160 AFBE0038 */  sw         $fp, 0x38($sp)
    /* ED114 800DE164 AFB60030 */  sw         $s6, 0x30($sp)
    /* ED118 800DE168 AFB40028 */  sw         $s4, 0x28($sp)
    /* ED11C 800DE16C AFB20020 */  sw         $s2, 0x20($sp)
    /* ED120 800DE170 AFB1001C */  sw         $s1, 0x1C($sp)
    /* ED124 800DE174 3C138015 */  lui        $s3, %hi(D_80156EF0)
    /* ED128 800DE178 3C158014 */  lui        $s5, %hi(D_8013DFF4)
    /* ED12C 800DE17C 3C178014 */  lui        $s7, %hi(D_8013E0A8)
    /* ED130 800DE180 AFBF003C */  sw         $ra, 0x3C($sp)
    /* ED134 800DE184 AFB00018 */  sw         $s0, 0x18($sp)
    /* ED138 800DE188 00008825 */  or         $s1, $zero, $zero
    /* ED13C 800DE18C 00009025 */  or         $s2, $zero, $zero
    /* ED140 800DE190 26F7E0A8 */  addiu      $s7, $s7, %lo(D_8013E0A8)
    /* ED144 800DE194 26B5DFF4 */  addiu      $s5, $s5, %lo(D_8013DFF4)
    /* ED148 800DE198 26736EF0 */  addiu      $s3, $s3, %lo(D_80156EF0)
    /* ED14C 800DE19C 24140014 */  addiu      $s4, $zero, 0x14
    /* ED150 800DE1A0 2416000E */  addiu      $s6, $zero, 0xE
    /* ED154 800DE1A4 241E0003 */  addiu      $fp, $zero, 0x3
  .L800DE1A8_ED158:
    /* ED158 800DE1A8 02340019 */  multu      $s1, $s4
    /* ED15C 800DE1AC 00007012 */  mflo       $t6
    /* ED160 800DE1B0 026E8021 */  addu       $s0, $s3, $t6
    /* ED164 800DE1B4 860F000A */  lh         $t7, 0xA($s0)
    /* ED168 800DE1B8 51E00039 */  beql       $t7, $zero, .L800DE2A0_ED250
    /* ED16C 800DE1BC 26310001 */   addiu     $s1, $s1, 0x1
    /* ED170 800DE1C0 9202000F */  lbu        $v0, 0xF($s0)
    /* ED174 800DE1C4 26520001 */  addiu      $s2, $s2, 0x1
    /* ED178 800DE1C8 0012C400 */  sll        $t8, $s2, 16
    /* ED17C 800DE1CC 14400031 */  bnez       $v0, .L800DE294_ED244
    /* ED180 800DE1D0 00189403 */   sra       $s2, $t8, 16
    /* ED184 800DE1D4 82020012 */  lb         $v0, 0x12($s0)
    /* ED188 800DE1D8 9203000D */  lbu        $v1, 0xD($s0)
    /* ED18C 800DE1DC 0043082A */  slt        $at, $v0, $v1
    /* ED190 800DE1E0 10200028 */  beqz       $at, .L800DE284_ED234
    /* ED194 800DE1E4 00624023 */   subu      $t0, $v1, $v0
    /* ED198 800DE1E8 920C000C */  lbu        $t4, 0xC($s0)
    /* ED19C 800DE1EC 9209000E */  lbu        $t1, 0xE($s0)
    /* ED1A0 800DE1F0 A208000D */  sb         $t0, 0xD($s0)
    /* ED1A4 800DE1F4 000C68C0 */  sll        $t5, $t4, 3
    /* ED1A8 800DE1F8 02AD7021 */  addu       $t6, $s5, $t5
    /* ED1AC 800DE1FC 81CF0000 */  lb         $t7, 0x0($t6)
    /* ED1B0 800DE200 252A0001 */  addiu      $t2, $t1, 0x1
    /* ED1B4 800DE204 314B00FF */  andi       $t3, $t2, 0xFF
    /* ED1B8 800DE208 016F082A */  slt        $at, $t3, $t7
    /* ED1BC 800DE20C 14200002 */  bnez       $at, .L800DE218_ED1C8
    /* ED1C0 800DE210 A20A000E */   sb        $t2, 0xE($s0)
    /* ED1C4 800DE214 A200000E */  sb         $zero, 0xE($s0)
  .L800DE218_ED1C8:
    /* ED1C8 800DE218 8618000A */  lh         $t8, 0xA($s0)
    /* ED1CC 800DE21C 82190010 */  lb         $t9, 0x10($s0)
    /* ED1D0 800DE220 03194021 */  addu       $t0, $t8, $t9
    /* ED1D4 800DE224 A608000A */  sh         $t0, 0xA($s0)
    /* ED1D8 800DE228 8609000A */  lh         $t1, 0xA($s0)
    /* ED1DC 800DE22C 5D200004 */  bgtzl      $t1, .L800DE240_ED1F0
    /* ED1E0 800DE230 860A0002 */   lh        $t2, 0x2($s0)
    /* ED1E4 800DE234 0C0377C6 */  jal        func_800DDF18_ECEC8
    /* ED1E8 800DE238 322400FF */   andi      $a0, $s1, 0xFF
    /* ED1EC 800DE23C 860A0002 */  lh         $t2, 0x2($s0)
  .L800DE240_ED1F0:
    /* ED1F0 800DE240 820C0011 */  lb         $t4, 0x11($s0)
    /* ED1F4 800DE244 920E000C */  lbu        $t6, 0xC($s0)
    /* ED1F8 800DE248 014C6821 */  addu       $t5, $t2, $t4
    /* ED1FC 800DE24C 16CE0013 */  bne        $s6, $t6, .L800DE29C_ED24C
    /* ED200 800DE250 A60D0002 */   sh        $t5, 0x2($s0)
    /* ED204 800DE254 920B000E */  lbu        $t3, 0xE($s0)
    /* ED208 800DE258 000B7843 */  sra        $t7, $t3, 1
    /* ED20C 800DE25C 01FE0019 */  multu      $t7, $fp
    /* ED210 800DE260 0000C012 */  mflo       $t8
    /* ED214 800DE264 02F81021 */  addu       $v0, $s7, $t8
    /* ED218 800DE268 90590000 */  lbu        $t9, 0x0($v0)
    /* ED21C 800DE26C 90480001 */  lbu        $t0, 0x1($v0)
    /* ED220 800DE270 90490002 */  lbu        $t1, 0x2($v0)
    /* ED224 800DE274 A2190006 */  sb         $t9, 0x6($s0)
    /* ED228 800DE278 A2080007 */  sb         $t0, 0x7($s0)
    /* ED22C 800DE27C 10000007 */  b          .L800DE29C_ED24C
    /* ED230 800DE280 A2090008 */   sb        $t1, 0x8($s0)
  .L800DE284_ED234:
    /* ED234 800DE284 0C0377C6 */  jal        func_800DDF18_ECEC8
    /* ED238 800DE288 322400FF */   andi      $a0, $s1, 0xFF
    /* ED23C 800DE28C 10000004 */  b          .L800DE2A0_ED250
    /* ED240 800DE290 26310001 */   addiu     $s1, $s1, 0x1
  .L800DE294_ED244:
    /* ED244 800DE294 244AFFFF */  addiu      $t2, $v0, -0x1
    /* ED248 800DE298 A20A000F */  sb         $t2, 0xF($s0)
  .L800DE29C_ED24C:
    /* ED24C 800DE29C 26310001 */  addiu      $s1, $s1, 0x1
  .L800DE2A0_ED250:
    /* ED250 800DE2A0 322C00FF */  andi       $t4, $s1, 0xFF
    /* ED254 800DE2A4 29810050 */  slti       $at, $t4, 0x50
    /* ED258 800DE2A8 1420FFBF */  bnez       $at, .L800DE1A8_ED158
    /* ED25C 800DE2AC 01808825 */   or        $s1, $t4, $zero
    /* ED260 800DE2B0 8FBF003C */  lw         $ra, 0x3C($sp)
    /* ED264 800DE2B4 3C018015 */  lui        $at, %hi(D_80157530)
    /* ED268 800DE2B8 A0327530 */  sb         $s2, %lo(D_80157530)($at)
    /* ED26C 800DE2BC 8FB20020 */  lw         $s2, 0x20($sp)
    /* ED270 800DE2C0 8FB00018 */  lw         $s0, 0x18($sp)
    /* ED274 800DE2C4 8FB1001C */  lw         $s1, 0x1C($sp)
    /* ED278 800DE2C8 8FB30024 */  lw         $s3, 0x24($sp)
    /* ED27C 800DE2CC 8FB40028 */  lw         $s4, 0x28($sp)
    /* ED280 800DE2D0 8FB5002C */  lw         $s5, 0x2C($sp)
    /* ED284 800DE2D4 8FB60030 */  lw         $s6, 0x30($sp)
    /* ED288 800DE2D8 8FB70034 */  lw         $s7, 0x34($sp)
    /* ED28C 800DE2DC 8FBE0038 */  lw         $fp, 0x38($sp)
    /* ED290 800DE2E0 03E00008 */  jr         $ra
    /* ED294 800DE2E4 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800DE150_ED100
