nonmatching func_800C1150_D0100, 0x118

glabel func_800C1150_D0100
    /* D0100 800C1150 3C058006 */  lui        $a1, %hi(D_8005BB20)
    /* D0104 800C1154 8CA5BB20 */  lw         $a1, %lo(D_8005BB20)($a1)
    /* D0108 800C1158 27BDFF68 */  addiu      $sp, $sp, -0x98
    /* D010C 800C115C AFBF0014 */  sw         $ra, 0x14($sp)
    /* D0110 800C1160 27A40058 */  addiu      $a0, $sp, 0x58
    /* D0114 800C1164 0C00A012 */  jal        guMtxL2F
    /* D0118 800C1168 24A50200 */   addiu     $a1, $a1, 0x200
    /* D011C 800C116C 27A60058 */  addiu      $a2, $sp, 0x58
    /* D0120 800C1170 00002825 */  or         $a1, $zero, $zero
    /* D0124 800C1174 00057080 */  sll        $t6, $a1, 2
  .L800C1178_D0128:
    /* D0128 800C1178 01C57023 */  subu       $t6, $t6, $a1
    /* D012C 800C117C 000E7080 */  sll        $t6, $t6, 2
    /* D0130 800C1180 27AF0034 */  addiu      $t7, $sp, 0x34
    /* D0134 800C1184 01CF1821 */  addu       $v1, $t6, $t7
    /* D0138 800C1188 00001025 */  or         $v0, $zero, $zero
    /* D013C 800C118C 00052080 */  sll        $a0, $a1, 2
  .L800C1190_D0140:
    /* D0140 800C1190 0002C100 */  sll        $t8, $v0, 4
    /* D0144 800C1194 00024880 */  sll        $t1, $v0, 2
    /* D0148 800C1198 24420001 */  addiu      $v0, $v0, 0x1
    /* D014C 800C119C 00D8C821 */  addu       $t9, $a2, $t8
    /* D0150 800C11A0 00025C00 */  sll        $t3, $v0, 16
    /* D0154 800C11A4 03244021 */  addu       $t0, $t9, $a0
    /* D0158 800C11A8 C5040000 */  lwc1       $f4, 0x0($t0)
    /* D015C 800C11AC 000B1403 */  sra        $v0, $t3, 16
    /* D0160 800C11B0 28410003 */  slti       $at, $v0, 0x3
    /* D0164 800C11B4 00695021 */  addu       $t2, $v1, $t1
    /* D0168 800C11B8 1420FFF5 */  bnez       $at, .L800C1190_D0140
    /* D016C 800C11BC E5440000 */   swc1      $f4, 0x0($t2)
    /* D0170 800C11C0 24A50001 */  addiu      $a1, $a1, 0x1
    /* D0174 800C11C4 00056C00 */  sll        $t5, $a1, 16
    /* D0178 800C11C8 000D2C03 */  sra        $a1, $t5, 16
    /* D017C 800C11CC 28A10003 */  slti       $at, $a1, 0x3
    /* D0180 800C11D0 5420FFE9 */  bnel       $at, $zero, .L800C1178_D0128
    /* D0184 800C11D4 00057080 */   sll       $t6, $a1, 2
    /* D0188 800C11D8 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
    /* D018C 800C11DC 44813000 */  mtc1       $at, $f6
    /* D0190 800C11E0 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* D0194 800C11E4 44814000 */  mtc1       $at, $f8
    /* D0198 800C11E8 44805000 */  mtc1       $zero, $f10
    /* D019C 800C11EC 3C068015 */  lui        $a2, %hi(D_80153AB8)
    /* D01A0 800C11F0 24C63AB8 */  addiu      $a2, $a2, %lo(D_80153AB8)
    /* D01A4 800C11F4 27A40034 */  addiu      $a0, $sp, 0x34
    /* D01A8 800C11F8 27A50024 */  addiu      $a1, $sp, 0x24
    /* D01AC 800C11FC E7A60024 */  swc1       $f6, 0x24($sp)
    /* D01B0 800C1200 E7A80028 */  swc1       $f8, 0x28($sp)
    /* D01B4 800C1204 0C0303A0 */  jal        func_800C0E80_CFE30
    /* D01B8 800C1208 E7AA002C */   swc1      $f10, 0x2C($sp)
    /* D01BC 800C120C C7B00024 */  lwc1       $f16, 0x24($sp)
    /* D01C0 800C1210 3C068015 */  lui        $a2, %hi(D_80153AC4)
    /* D01C4 800C1214 24C63AC4 */  addiu      $a2, $a2, %lo(D_80153AC4)
    /* D01C8 800C1218 46008487 */  neg.s      $f18, $f16
    /* D01CC 800C121C 27A40034 */  addiu      $a0, $sp, 0x34
    /* D01D0 800C1220 E7B20024 */  swc1       $f18, 0x24($sp)
    /* D01D4 800C1224 0C0303A0 */  jal        func_800C0E80_CFE30
    /* D01D8 800C1228 27A50024 */   addiu     $a1, $sp, 0x24
    /* D01DC 800C122C 3C048015 */  lui        $a0, %hi(D_80153AB8)
    /* D01E0 800C1230 3C058015 */  lui        $a1, %hi(D_80153AC4)
    /* D01E4 800C1234 3C068015 */  lui        $a2, %hi(D_80153AD0)
    /* D01E8 800C1238 24C63AD0 */  addiu      $a2, $a2, %lo(D_80153AD0)
    /* D01EC 800C123C 24A53AC4 */  addiu      $a1, $a1, %lo(D_80153AC4)
    /* D01F0 800C1240 0C0303C5 */  jal        func_800C0F14_CFEC4
    /* D01F4 800C1244 24843AB8 */   addiu     $a0, $a0, %lo(D_80153AB8)
    /* D01F8 800C1248 3C048015 */  lui        $a0, %hi(D_80153AD0)
    /* D01FC 800C124C 24843AD0 */  addiu      $a0, $a0, %lo(D_80153AD0)
    /* D0200 800C1250 0C030409 */  jal        func_800C1024_CFFD4
    /* D0204 800C1254 00802825 */   or        $a1, $a0, $zero
    /* D0208 800C1258 8FBF0014 */  lw         $ra, 0x14($sp)
    /* D020C 800C125C 27BD0098 */  addiu      $sp, $sp, 0x98
    /* D0210 800C1260 03E00008 */  jr         $ra
    /* D0214 800C1264 00000000 */   nop
endlabel func_800C1150_D0100
