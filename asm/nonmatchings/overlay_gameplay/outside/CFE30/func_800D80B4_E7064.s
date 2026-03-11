nonmatching func_800D80B4_E7064, 0xDC

glabel func_800D80B4_E7064
    /* E7064 800D80B4 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* E7068 800D80B8 AFB10020 */  sw         $s1, 0x20($sp)
    /* E706C 800D80BC 3C118015 */  lui        $s1, %hi(D_801542D6)
    /* E7070 800D80C0 863142D6 */  lh         $s1, %lo(D_801542D6)($s1)
    /* E7074 800D80C4 AFB4002C */  sw         $s4, 0x2C($sp)
    /* E7078 800D80C8 2414FFFB */  addiu      $s4, $zero, -0x5
    /* E707C 800D80CC AFBF0034 */  sw         $ra, 0x34($sp)
    /* E7080 800D80D0 AFB50030 */  sw         $s5, 0x30($sp)
    /* E7084 800D80D4 AFB30028 */  sw         $s3, 0x28($sp)
    /* E7088 800D80D8 AFB20024 */  sw         $s2, 0x24($sp)
    /* E708C 800D80DC 12340003 */  beq        $s1, $s4, .L800D80EC_E709C
    /* E7090 800D80E0 AFB0001C */   sw        $s0, 0x1C($sp)
    /* E7094 800D80E4 2415FFFA */  addiu      $s5, $zero, -0x6
    /* E7098 800D80E8 16350005 */  bne        $s1, $s5, .L800D8100_E70B0
  .L800D80EC_E709C:
    /* E709C 800D80EC 24040012 */   addiu     $a0, $zero, 0x12
    /* E70A0 800D80F0 0C030506 */  jal        func_800C1418_D03C8
    /* E70A4 800D80F4 24050001 */   addiu     $a1, $zero, 0x1
    /* E70A8 800D80F8 1000001D */  b          .L800D8170_E7120
    /* E70AC 800D80FC 8FBF0034 */   lw        $ra, 0x34($sp)
  .L800D8100_E70B0:
    /* E70B0 800D8100 5234001B */  beql       $s1, $s4, .L800D8170_E7120
    /* E70B4 800D8104 8FBF0034 */   lw        $ra, 0x34($sp)
    /* E70B8 800D8108 12350018 */  beq        $s1, $s5, .L800D816C_E711C
    /* E70BC 800D810C 2413001C */   addiu     $s3, $zero, 0x1C
    /* E70C0 800D8110 3C128015 */  lui        $s2, %hi(D_80154318)
    /* E70C4 800D8114 26524318 */  addiu      $s2, $s2, %lo(D_80154318)
  .L800D8118_E70C8:
    /* E70C8 800D8118 02330019 */  multu      $s1, $s3
    /* E70CC 800D811C AFA00010 */  sw         $zero, 0x10($sp)
    /* E70D0 800D8120 00007012 */  mflo       $t6
    /* E70D4 800D8124 024E8021 */  addu       $s0, $s2, $t6
    /* E70D8 800D8128 86040008 */  lh         $a0, 0x8($s0)
    /* E70DC 800D812C 8605000A */  lh         $a1, 0xA($s0)
    /* E70E0 800D8130 8606000C */  lh         $a2, 0xC($s0)
    /* E70E4 800D8134 0C0307B3 */  jal        func_800C1ECC_D0E7C
    /* E70E8 800D8138 92070014 */   lbu       $a3, 0x14($s0)
    /* E70EC 800D813C 26020008 */  addiu      $v0, $s0, 0x8
    /* E70F0 800D8140 84440000 */  lh         $a0, 0x0($v0)
    /* E70F4 800D8144 84450002 */  lh         $a1, 0x2($v0)
    /* E70F8 800D8148 84460004 */  lh         $a2, 0x4($v0)
    /* E70FC 800D814C AFB10010 */  sw         $s1, 0x10($sp)
    /* E7100 800D8150 0C04DCDA */  jal        func_80137368_146318
    /* E7104 800D8154 2407000A */   addiu     $a3, $zero, 0xA
    /* E7108 800D8158 86110004 */  lh         $s1, 0x4($s0)
    /* E710C 800D815C 52340004 */  beql       $s1, $s4, .L800D8170_E7120
    /* E7110 800D8160 8FBF0034 */   lw        $ra, 0x34($sp)
    /* E7114 800D8164 1635FFEC */  bne        $s1, $s5, .L800D8118_E70C8
    /* E7118 800D8168 00000000 */   nop
  .L800D816C_E711C:
    /* E711C 800D816C 8FBF0034 */  lw         $ra, 0x34($sp)
  .L800D8170_E7120:
    /* E7120 800D8170 8FB0001C */  lw         $s0, 0x1C($sp)
    /* E7124 800D8174 8FB10020 */  lw         $s1, 0x20($sp)
    /* E7128 800D8178 8FB20024 */  lw         $s2, 0x24($sp)
    /* E712C 800D817C 8FB30028 */  lw         $s3, 0x28($sp)
    /* E7130 800D8180 8FB4002C */  lw         $s4, 0x2C($sp)
    /* E7134 800D8184 8FB50030 */  lw         $s5, 0x30($sp)
    /* E7138 800D8188 03E00008 */  jr         $ra
    /* E713C 800D818C 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_800D80B4_E7064
