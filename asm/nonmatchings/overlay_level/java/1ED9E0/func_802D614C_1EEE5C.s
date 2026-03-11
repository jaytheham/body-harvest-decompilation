nonmatching func_802D614C_1EEE5C, 0x154

glabel func_802D614C_1EEE5C
    /* 1EEE5C 802D614C 3C03802E */  lui        $v1, %hi(D_802E0FB6)
    /* 1EEE60 802D6150 24630FB6 */  addiu      $v1, $v1, %lo(D_802E0FB6)
    /* 1EEE64 802D6154 84620000 */  lh         $v0, 0x0($v1)
    /* 1EEE68 802D6158 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 1EEE6C 802D615C AFBF0024 */  sw         $ra, 0x24($sp)
    /* 1EEE70 802D6160 18400004 */  blez       $v0, .L802D6174_1EEE84
    /* 1EEE74 802D6164 AFB00020 */   sw        $s0, 0x20($sp)
    /* 1EEE78 802D6168 244EFFFF */  addiu      $t6, $v0, -0x1
    /* 1EEE7C 802D616C A46E0000 */  sh         $t6, 0x0($v1)
    /* 1EEE80 802D6170 84620000 */  lh         $v0, 0x0($v1)
  .L802D6174_1EEE84:
    /* 1EEE84 802D6174 5440002E */  bnel       $v0, $zero, .L802D6230_1EEF40
    /* 1EEE88 802D6178 24010005 */   addiu     $at, $zero, 0x5
    /* 1EEE8C 802D617C 0C047020 */  jal        func_8011C080_12B030
    /* 1EEE90 802D6180 24040032 */   addiu     $a0, $zero, 0x32
    /* 1EEE94 802D6184 0C047020 */  jal        func_8011C080_12B030
    /* 1EEE98 802D6188 24040031 */   addiu     $a0, $zero, 0x31
    /* 1EEE9C 802D618C 3C058022 */  lui        $a1, %hi(D_80222A70)
    /* 1EEEA0 802D6190 8CA52A70 */  lw         $a1, %lo(D_80222A70)($a1)
    /* 1EEEA4 802D6194 3C108005 */  lui        $s0, %hi(buildingInstances)
    /* 1EEEA8 802D6198 26100AD8 */  addiu      $s0, $s0, %lo(buildingInstances)
    /* 1EEEAC 802D619C 24A50064 */  addiu      $a1, $a1, 0x64
    /* 1EEEB0 802D61A0 00057C00 */  sll        $t7, $a1, 16
    /* 1EEEB4 802D61A4 000F2C03 */  sra        $a1, $t7, 16
    /* 1EEEB8 802D61A8 86040498 */  lh         $a0, 0x498($s0)
    /* 1EEEBC 802D61AC 8606049C */  lh         $a2, 0x49C($s0)
    /* 1EEEC0 802D61B0 0C0383D3 */  jal        func_800E0F4C_EFEFC
    /* 1EEEC4 802D61B4 24070019 */   addiu     $a3, $zero, 0x19
    /* 1EEEC8 802D61B8 3C04802D */  lui        $a0, %hi(func_802D614C_1EEE5C)
    /* 1EEECC 802D61BC 0C001D2F */  jal        func_800074BC_80BC
    /* 1EEED0 802D61C0 2484614C */   addiu     $a0, $a0, %lo(func_802D614C_1EEE5C)
    /* 1EEED4 802D61C4 3C058022 */  lui        $a1, %hi(D_80222A70)
    /* 1EEED8 802D61C8 8CA52A70 */  lw         $a1, %lo(D_80222A70)($a1)
    /* 1EEEDC 802D61CC 24090008 */  addiu      $t1, $zero, 0x8
    /* 1EEEE0 802D61D0 AFA90010 */  sw         $t1, 0x10($sp)
    /* 1EEEE4 802D61D4 24A50096 */  addiu      $a1, $a1, 0x96
    /* 1EEEE8 802D61D8 0005CC00 */  sll        $t9, $a1, 16
    /* 1EEEEC 802D61DC 00192C03 */  sra        $a1, $t9, 16
    /* 1EEEF0 802D61E0 86040498 */  lh         $a0, 0x498($s0)
    /* 1EEEF4 802D61E4 8606049C */  lh         $a2, 0x49C($s0)
    /* 1EEEF8 802D61E8 2407012C */  addiu      $a3, $zero, 0x12C
    /* 1EEEFC 802D61EC 0C037C0E */  jal        func_800DF038_EDFE8
    /* 1EEF00 802D61F0 AFA00014 */   sw        $zero, 0x14($sp)
    /* 1EEF04 802D61F4 3C058022 */  lui        $a1, %hi(D_80222A70)
    /* 1EEF08 802D61F8 8CA52A70 */  lw         $a1, %lo(D_80222A70)($a1)
    /* 1EEF0C 802D61FC 240C0010 */  addiu      $t4, $zero, 0x10
    /* 1EEF10 802D6200 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 1EEF14 802D6204 24A50096 */  addiu      $a1, $a1, 0x96
    /* 1EEF18 802D6208 00055400 */  sll        $t2, $a1, 16
    /* 1EEF1C 802D620C 000A2C03 */  sra        $a1, $t2, 16
    /* 1EEF20 802D6210 860404B0 */  lh         $a0, 0x4B0($s0)
    /* 1EEF24 802D6214 860604B4 */  lh         $a2, 0x4B4($s0)
    /* 1EEF28 802D6218 2407012C */  addiu      $a3, $zero, 0x12C
    /* 1EEF2C 802D621C 0C037C0E */  jal        func_800DF038_EDFE8
    /* 1EEF30 802D6220 AFA00014 */   sw        $zero, 0x14($sp)
    /* 1EEF34 802D6224 3C02802E */  lui        $v0, %hi(D_802E0FB6)
    /* 1EEF38 802D6228 84420FB6 */  lh         $v0, %lo(D_802E0FB6)($v0)
    /* 1EEF3C 802D622C 24010005 */  addiu      $at, $zero, 0x5
  .L802D6230_1EEF40:
    /* 1EEF40 802D6230 0041001A */  div        $zero, $v0, $at
    /* 1EEF44 802D6234 3C108005 */  lui        $s0, %hi(buildingInstances)
    /* 1EEF48 802D6238 00006810 */  mfhi       $t5
    /* 1EEF4C 802D623C 26100AD8 */  addiu      $s0, $s0, %lo(buildingInstances)
    /* 1EEF50 802D6240 15A00012 */  bnez       $t5, .L802D628C_1EEF9C
    /* 1EEF54 802D6244 00027880 */   sll       $t7, $v0, 2
    /* 1EEF58 802D6248 01E27823 */  subu       $t7, $t7, $v0
    /* 1EEF5C 802D624C 860E04B0 */  lh         $t6, 0x4B0($s0)
    /* 1EEF60 802D6250 000F78C0 */  sll        $t7, $t7, 3
    /* 1EEF64 802D6254 3C058022 */  lui        $a1, %hi(D_80222A70)
    /* 1EEF68 802D6258 8CA52A70 */  lw         $a1, %lo(D_80222A70)($a1)
    /* 1EEF6C 802D625C 01E27821 */  addu       $t7, $t7, $v0
    /* 1EEF70 802D6260 000F7840 */  sll        $t7, $t7, 1
    /* 1EEF74 802D6264 01CF2023 */  subu       $a0, $t6, $t7
    /* 1EEF78 802D6268 248403E8 */  addiu      $a0, $a0, 0x3E8
    /* 1EEF7C 802D626C 24A50096 */  addiu      $a1, $a1, 0x96
    /* 1EEF80 802D6270 00054400 */  sll        $t0, $a1, 16
    /* 1EEF84 802D6274 0004C400 */  sll        $t8, $a0, 16
    /* 1EEF88 802D6278 00182403 */  sra        $a0, $t8, 16
    /* 1EEF8C 802D627C 00082C03 */  sra        $a1, $t0, 16
    /* 1EEF90 802D6280 860604B4 */  lh         $a2, 0x4B4($s0)
    /* 1EEF94 802D6284 0C0383D3 */  jal        func_800E0F4C_EFEFC
    /* 1EEF98 802D6288 24070019 */   addiu     $a3, $zero, 0x19
  .L802D628C_1EEF9C:
    /* 1EEF9C 802D628C 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 1EEFA0 802D6290 8FB00020 */  lw         $s0, 0x20($sp)
    /* 1EEFA4 802D6294 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 1EEFA8 802D6298 03E00008 */  jr         $ra
    /* 1EEFAC 802D629C 00000000 */   nop
endlabel func_802D614C_1EEE5C
