nonmatching func_800D6140_E50F0, 0x150

glabel func_800D6140_E50F0
    /* E50F0 800D6140 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* E50F4 800D6144 AFB40028 */  sw         $s4, 0x28($sp)
    /* E50F8 800D6148 309400FF */  andi       $s4, $a0, 0xFF
    /* E50FC 800D614C 00147080 */  sll        $t6, $s4, 2
    /* E5100 800D6150 01D47023 */  subu       $t6, $t6, $s4
    /* E5104 800D6154 3C0F8015 */  lui        $t7, %hi(D_80154088)
    /* E5108 800D6158 AFB5002C */  sw         $s5, 0x2C($sp)
    /* E510C 800D615C 25EF4088 */  addiu      $t7, $t7, %lo(D_80154088)
    /* E5110 800D6160 000E7080 */  sll        $t6, $t6, 2
    /* E5114 800D6164 01CFA821 */  addu       $s5, $t6, $t7
    /* E5118 800D6168 86A70006 */  lh         $a3, 0x6($s5)
    /* E511C 800D616C AFB60030 */  sw         $s6, 0x30($sp)
    /* E5120 800D6170 2416FFFB */  addiu      $s6, $zero, -0x5
    /* E5124 800D6174 AFBF0034 */  sw         $ra, 0x34($sp)
    /* E5128 800D6178 AFB30024 */  sw         $s3, 0x24($sp)
    /* E512C 800D617C AFB20020 */  sw         $s2, 0x20($sp)
    /* E5130 800D6180 AFB1001C */  sw         $s1, 0x1C($sp)
    /* E5134 800D6184 AFB00018 */  sw         $s0, 0x18($sp)
    /* E5138 800D6188 10F60003 */  beq        $a3, $s6, .L800D6198_E5148
    /* E513C 800D618C AFA40038 */   sw        $a0, 0x38($sp)
    /* E5140 800D6190 2413FFFA */  addiu      $s3, $zero, -0x6
    /* E5144 800D6194 14F30007 */  bne        $a3, $s3, .L800D61B4_E5164
  .L800D6198_E5148:
    /* E5148 800D6198 328400FF */   andi      $a0, $s4, 0xFF
    /* E514C 800D619C 0C030506 */  jal        func_800C1418_D03C8
    /* E5150 800D61A0 00002825 */   or        $a1, $zero, $zero
    /* E5154 800D61A4 0C0304E1 */  jal        func_800C1384_D0334
    /* E5158 800D61A8 328400FF */   andi      $a0, $s4, 0xFF
    /* E515C 800D61AC 1000002F */  b          .L800D626C_E521C
    /* E5160 800D61B0 8FBF0034 */   lw        $ra, 0x34($sp)
  .L800D61B4_E5164:
    /* E5164 800D61B4 50F6002D */  beql       $a3, $s6, .L800D626C_E521C
    /* E5168 800D61B8 8FBF0034 */   lw        $ra, 0x34($sp)
    /* E516C 800D61BC 10F3002A */  beq        $a3, $s3, .L800D6268_E5218
    /* E5170 800D61C0 2412001C */   addiu     $s2, $zero, 0x1C
    /* E5174 800D61C4 3C118015 */  lui        $s1, %hi(D_80154318)
    /* E5178 800D61C8 26314318 */  addiu      $s1, $s1, %lo(D_80154318)
  .L800D61CC_E517C:
    /* E517C 800D61CC 00F20019 */  multu      $a3, $s2
    /* E5180 800D61D0 00072400 */  sll        $a0, $a3, 16
    /* E5184 800D61D4 328500FF */  andi       $a1, $s4, 0xFF
    /* E5188 800D61D8 00003025 */  or         $a2, $zero, $zero
    /* E518C 800D61DC 0000C012 */  mflo       $t8
    /* E5190 800D61E0 02388021 */  addu       $s0, $s1, $t8
    /* E5194 800D61E4 920D0011 */  lbu        $t5, 0x11($s0)
    /* E5198 800D61E8 9219000E */  lbu        $t9, 0xE($s0)
    /* E519C 800D61EC 9209000F */  lbu        $t1, 0xF($s0)
    /* E51A0 800D61F0 920B0010 */  lbu        $t3, 0x10($s0)
    /* E51A4 800D61F4 25AEFFF4 */  addiu      $t6, $t5, -0xC
    /* E51A8 800D61F8 31CF00FF */  andi       $t7, $t6, 0xFF
    /* E51AC 800D61FC 29E10014 */  slti       $at, $t7, 0x14
    /* E51B0 800D6200 2728FFFD */  addiu      $t0, $t9, -0x3
    /* E51B4 800D6204 252AFFFE */  addiu      $t2, $t1, -0x2
    /* E51B8 800D6208 256CFFFB */  addiu      $t4, $t3, -0x5
    /* E51BC 800D620C A208000E */  sb         $t0, 0xE($s0)
    /* E51C0 800D6210 A20A000F */  sb         $t2, 0xF($s0)
    /* E51C4 800D6214 A20C0010 */  sb         $t4, 0x10($s0)
    /* E51C8 800D6218 1020000E */  beqz       $at, .L800D6254_E5204
    /* E51CC 800D621C A20E0011 */   sb        $t6, 0x11($s0)
    /* E51D0 800D6220 0004C403 */  sra        $t8, $a0, 16
    /* E51D4 800D6224 0C030693 */  jal        func_800C1A4C_D09FC
    /* E51D8 800D6228 03002025 */   or        $a0, $t8, $zero
    /* E51DC 800D622C 92B90004 */  lbu        $t9, 0x4($s5)
    /* E51E0 800D6230 2B210002 */  slti       $at, $t9, 0x2
    /* E51E4 800D6234 10200007 */  beqz       $at, .L800D6254_E5204
    /* E51E8 800D6238 328400FF */   andi      $a0, $s4, 0xFF
    /* E51EC 800D623C 0C030506 */  jal        func_800C1418_D03C8
    /* E51F0 800D6240 00002825 */   or        $a1, $zero, $zero
    /* E51F4 800D6244 0C0304E1 */  jal        func_800C1384_D0334
    /* E51F8 800D6248 328400FF */   andi      $a0, $s4, 0xFF
    /* E51FC 800D624C 10000007 */  b          .L800D626C_E521C
    /* E5200 800D6250 8FBF0034 */   lw        $ra, 0x34($sp)
  .L800D6254_E5204:
    /* E5204 800D6254 86070004 */  lh         $a3, 0x4($s0)
    /* E5208 800D6258 50F60004 */  beql       $a3, $s6, .L800D626C_E521C
    /* E520C 800D625C 8FBF0034 */   lw        $ra, 0x34($sp)
    /* E5210 800D6260 14F3FFDA */  bne        $a3, $s3, .L800D61CC_E517C
    /* E5214 800D6264 00000000 */   nop
  .L800D6268_E5218:
    /* E5218 800D6268 8FBF0034 */  lw         $ra, 0x34($sp)
  .L800D626C_E521C:
    /* E521C 800D626C 8FB00018 */  lw         $s0, 0x18($sp)
    /* E5220 800D6270 8FB1001C */  lw         $s1, 0x1C($sp)
    /* E5224 800D6274 8FB20020 */  lw         $s2, 0x20($sp)
    /* E5228 800D6278 8FB30024 */  lw         $s3, 0x24($sp)
    /* E522C 800D627C 8FB40028 */  lw         $s4, 0x28($sp)
    /* E5230 800D6280 8FB5002C */  lw         $s5, 0x2C($sp)
    /* E5234 800D6284 8FB60030 */  lw         $s6, 0x30($sp)
    /* E5238 800D6288 03E00008 */  jr         $ra
    /* E523C 800D628C 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_800D6140_E50F0
