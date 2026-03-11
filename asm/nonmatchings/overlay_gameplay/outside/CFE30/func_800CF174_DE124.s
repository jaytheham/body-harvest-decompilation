nonmatching func_800CF174_DE124, 0x16C

glabel func_800CF174_DE124
    /* DE124 800CF174 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* DE128 800CF178 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* DE12C 800CF17C 8C620000 */  lw         $v0, 0x0($v1)
    /* DE130 800CF180 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* DE134 800CF184 AFBF0014 */  sw         $ra, 0x14($sp)
    /* DE138 800CF188 244F0008 */  addiu      $t7, $v0, 0x8
    /* DE13C 800CF18C AFA5001C */  sw         $a1, 0x1C($sp)
    /* DE140 800CF190 AC6F0000 */  sw         $t7, 0x0($v1)
    /* DE144 800CF194 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
    /* DE148 800CF198 AC580000 */  sw         $t8, 0x0($v0)
    /* DE14C 800CF19C AC400004 */  sw         $zero, 0x4($v0)
    /* DE150 800CF1A0 8C620000 */  lw         $v0, 0x0($v1)
    /* DE154 800CF1A4 30AE00FF */  andi       $t6, $a1, 0xFF
    /* DE158 800CF1A8 01C02825 */  or         $a1, $t6, $zero
    /* DE15C 800CF1AC 24590008 */  addiu      $t9, $v0, 0x8
    /* DE160 800CF1B0 AC790000 */  sw         $t9, 0x0($v1)
    /* DE164 800CF1B4 00057880 */  sll        $t7, $a1, 2
    /* DE168 800CF1B8 3C0EFD70 */  lui        $t6, (0xFD700000 >> 16)
    /* DE16C 800CF1BC 3C188014 */  lui        $t8, %hi(D_8013DCF0)
    /* DE170 800CF1C0 030FC021 */  addu       $t8, $t8, $t7
    /* DE174 800CF1C4 AC4E0000 */  sw         $t6, 0x0($v0)
    /* DE178 800CF1C8 8F18DCF0 */  lw         $t8, %lo(D_8013DCF0)($t8)
    /* DE17C 800CF1CC 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* DE180 800CF1D0 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* DE184 800CF1D4 0301C824 */  and        $t9, $t8, $at
    /* DE188 800CF1D8 AC590004 */  sw         $t9, 0x4($v0)
    /* DE18C 800CF1DC 8C620000 */  lw         $v0, 0x0($v1)
    /* DE190 800CF1E0 3C180700 */  lui        $t8, (0x7000000 >> 16)
    /* DE194 800CF1E4 3C0FF570 */  lui        $t7, (0xF5700000 >> 16)
    /* DE198 800CF1E8 244E0008 */  addiu      $t6, $v0, 0x8
    /* DE19C 800CF1EC AC6E0000 */  sw         $t6, 0x0($v1)
    /* DE1A0 800CF1F0 AC580004 */  sw         $t8, 0x4($v0)
    /* DE1A4 800CF1F4 AC4F0000 */  sw         $t7, 0x0($v0)
    /* DE1A8 800CF1F8 8C620000 */  lw         $v0, 0x0($v1)
    /* DE1AC 800CF1FC 3C0EE600 */  lui        $t6, (0xE6000000 >> 16)
    /* DE1B0 800CF200 3C18F300 */  lui        $t8, (0xF3000000 >> 16)
    /* DE1B4 800CF204 24590008 */  addiu      $t9, $v0, 0x8
    /* DE1B8 800CF208 AC790000 */  sw         $t9, 0x0($v1)
    /* DE1BC 800CF20C AC400004 */  sw         $zero, 0x4($v0)
    /* DE1C0 800CF210 AC4E0000 */  sw         $t6, 0x0($v0)
    /* DE1C4 800CF214 8C620000 */  lw         $v0, 0x0($v1)
    /* DE1C8 800CF218 3C19070F */  lui        $t9, (0x70FF400 >> 16)
    /* DE1CC 800CF21C 3739F400 */  ori        $t9, $t9, (0x70FF400 & 0xFFFF)
    /* DE1D0 800CF220 244F0008 */  addiu      $t7, $v0, 0x8
    /* DE1D4 800CF224 AC6F0000 */  sw         $t7, 0x0($v1)
    /* DE1D8 800CF228 AC590004 */  sw         $t9, 0x4($v0)
    /* DE1DC 800CF22C AC580000 */  sw         $t8, 0x0($v0)
    /* DE1E0 800CF230 8C620000 */  lw         $v0, 0x0($v1)
    /* DE1E4 800CF234 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* DE1E8 800CF238 3C19F560 */  lui        $t9, (0xF5600400 >> 16)
    /* DE1EC 800CF23C 244E0008 */  addiu      $t6, $v0, 0x8
    /* DE1F0 800CF240 AC6E0000 */  sw         $t6, 0x0($v1)
    /* DE1F4 800CF244 AC400004 */  sw         $zero, 0x4($v0)
    /* DE1F8 800CF248 AC4F0000 */  sw         $t7, 0x0($v0)
    /* DE1FC 800CF24C 8C620000 */  lw         $v0, 0x0($v1)
    /* DE200 800CF250 37390400 */  ori        $t9, $t9, (0xF5600400 & 0xFFFF)
    /* DE204 800CF254 3C0FF200 */  lui        $t7, (0xF2000000 >> 16)
    /* DE208 800CF258 24580008 */  addiu      $t8, $v0, 0x8
    /* DE20C 800CF25C AC780000 */  sw         $t8, 0x0($v1)
    /* DE210 800CF260 AC400004 */  sw         $zero, 0x4($v0)
    /* DE214 800CF264 AC590000 */  sw         $t9, 0x0($v0)
    /* DE218 800CF268 8C620000 */  lw         $v0, 0x0($v1)
    /* DE21C 800CF26C 3C180007 */  lui        $t8, (0x7C07C >> 16)
    /* DE220 800CF270 3718C07C */  ori        $t8, $t8, (0x7C07C & 0xFFFF)
    /* DE224 800CF274 244E0008 */  addiu      $t6, $v0, 0x8
    /* DE228 800CF278 AC6E0000 */  sw         $t6, 0x0($v1)
    /* DE22C 800CF27C AC580004 */  sw         $t8, 0x4($v0)
    /* DE230 800CF280 AC4F0000 */  sw         $t7, 0x0($v0)
    /* DE234 800CF284 8C620000 */  lw         $v0, 0x0($v1)
    /* DE238 800CF288 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
    /* DE23C 800CF28C 3C018015 */  lui        $at, %hi(D_80153BB8)
    /* DE240 800CF290 24590008 */  addiu      $t9, $v0, 0x8
    /* DE244 800CF294 AC790000 */  sw         $t9, 0x0($v1)
    /* DE248 800CF298 AC400004 */  sw         $zero, 0x4($v0)
    /* DE24C 800CF29C AC4E0000 */  sw         $t6, 0x0($v0)
    /* DE250 800CF2A0 C4840000 */  lwc1       $f4, 0x0($a0)
    /* DE254 800CF2A4 E4243BB8 */  swc1       $f4, %lo(D_80153BB8)($at)
    /* DE258 800CF2A8 C4860004 */  lwc1       $f6, 0x4($a0)
    /* DE25C 800CF2AC E4263BBC */  swc1       $f6, %lo(D_80153BBC)($at)
    /* DE260 800CF2B0 C4880008 */  lwc1       $f8, 0x8($a0)
    /* DE264 800CF2B4 3C018015 */  lui        $at, %hi(D_80153BC0)
    /* DE268 800CF2B8 0C036CD4 */  jal        func_800DB350_EA300
    /* DE26C 800CF2BC E4283BC0 */   swc1      $f8, %lo(D_80153BC0)($at)
    /* DE270 800CF2C0 3C028015 */  lui        $v0, %hi(D_80156EDA)
    /* DE274 800CF2C4 24426EDA */  addiu      $v0, $v0, %lo(D_80156EDA)
    /* DE278 800CF2C8 844F0000 */  lh         $t7, 0x0($v0)
    /* DE27C 800CF2CC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* DE280 800CF2D0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* DE284 800CF2D4 25F80004 */  addiu      $t8, $t7, 0x4
    /* DE288 800CF2D8 03E00008 */  jr         $ra
    /* DE28C 800CF2DC A4580000 */   sh        $t8, 0x0($v0)
endlabel func_800CF174_DE124
