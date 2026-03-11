nonmatching func_8007C764_4CC14, 0x90

glabel func_8007C764_4CC14
    /* 4CC14 8007C764 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 4CC18 8007C768 3083FFFF */  andi       $v1, $a0, 0xFFFF
    /* 4CC1C 8007C76C 30A2FFFF */  andi       $v0, $a1, 0xFFFF
    /* 4CC20 8007C770 0043082A */  slt        $at, $v0, $v1
    /* 4CC24 8007C774 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 4CC28 8007C778 AFA40018 */  sw         $a0, 0x18($sp)
    /* 4CC2C 8007C77C 10200007 */  beqz       $at, .L8007C79C_4CC4C
    /* 4CC30 8007C780 AFA5001C */   sw        $a1, 0x1C($sp)
    /* 4CC34 8007C784 3C04800B */  lui        $a0, %hi(D_800AE094)
    /* 4CC38 8007C788 2484E094 */  addiu      $a0, $a0, %lo(D_800AE094)
    /* 4CC3C 8007C78C 0C002929 */  jal        drawText
    /* 4CC40 8007C790 00002825 */   or        $a1, $zero, $zero
    /* 4CC44 8007C794 10000014 */  b          .L8007C7E8_4CC98
    /* 4CC48 8007C798 8FBF0014 */   lw        $ra, 0x14($sp)
  .L8007C79C_4CC4C:
    /* 4CC4C 8007C79C 24780014 */  addiu      $t8, $v1, 0x14
    /* 4CC50 8007C7A0 0302082A */  slt        $at, $t8, $v0
    /* 4CC54 8007C7A4 10200007 */  beqz       $at, .L8007C7C4_4CC74
    /* 4CC58 8007C7A8 00432823 */   subu      $a1, $v0, $v1
    /* 4CC5C 8007C7AC 3C04800B */  lui        $a0, %hi(D_800AE098)
    /* 4CC60 8007C7B0 2484E098 */  addiu      $a0, $a0, %lo(D_800AE098)
    /* 4CC64 8007C7B4 0C002929 */  jal        drawText
    /* 4CC68 8007C7B8 240500FF */   addiu     $a1, $zero, 0xFF
    /* 4CC6C 8007C7BC 1000000A */  b          .L8007C7E8_4CC98
    /* 4CC70 8007C7C0 8FBF0014 */   lw        $ra, 0x14($sp)
  .L8007C7C4_4CC74:
    /* 4CC74 8007C7C4 0005CA00 */  sll        $t9, $a1, 8
    /* 4CC78 8007C7C8 0325C823 */  subu       $t9, $t9, $a1
    /* 4CC7C 8007C7CC 24010014 */  addiu      $at, $zero, 0x14
    /* 4CC80 8007C7D0 0321001A */  div        $zero, $t9, $at
    /* 4CC84 8007C7D4 00002812 */  mflo       $a1
    /* 4CC88 8007C7D8 3C04800B */  lui        $a0, %hi(D_800AE09C)
    /* 4CC8C 8007C7DC 0C002929 */  jal        drawText
    /* 4CC90 8007C7E0 2484E09C */   addiu     $a0, $a0, %lo(D_800AE09C)
    /* 4CC94 8007C7E4 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8007C7E8_4CC98:
    /* 4CC98 8007C7E8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 4CC9C 8007C7EC 03E00008 */  jr         $ra
    /* 4CCA0 8007C7F0 00000000 */   nop
endlabel func_8007C764_4CC14
