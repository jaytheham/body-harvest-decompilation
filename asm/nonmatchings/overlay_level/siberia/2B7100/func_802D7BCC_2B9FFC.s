nonmatching func_802D7BCC_2B9FFC, 0x108

glabel func_802D7BCC_2B9FFC
    /* 2B9FFC 802D7BCC 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2BA000 802D7BD0 000E7880 */  sll        $t7, $t6, 2
    /* 2BA004 802D7BD4 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BA008 802D7BD8 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BA00C 802D7BDC 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BA010 802D7BE0 000F7900 */  sll        $t7, $t7, 4
    /* 2BA014 802D7BE4 01F84021 */  addu       $t0, $t7, $t8
    /* 2BA018 802D7BE8 8D190020 */  lw         $t9, 0x20($t0)
    /* 2BA01C 802D7BEC 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 2BA020 802D7BF0 AFA40040 */  sw         $a0, 0x40($sp)
    /* 2BA024 802D7BF4 33291000 */  andi       $t1, $t9, 0x1000
    /* 2BA028 802D7BF8 01C02025 */  or         $a0, $t6, $zero
    /* 2BA02C 802D7BFC AFBF001C */  sw         $ra, 0x1C($sp)
    /* 2BA030 802D7C00 AFA50044 */  sw         $a1, 0x44($sp)
    /* 2BA034 802D7C04 AFA60048 */  sw         $a2, 0x48($sp)
    /* 2BA038 802D7C08 1120002E */  beqz       $t1, .L802D7CC4_2BA0F4
    /* 2BA03C 802D7C0C AFA7004C */   sw        $a3, 0x4C($sp)
    /* 2BA040 802D7C10 87AA0046 */  lh         $t2, 0x46($sp)
    /* 2BA044 802D7C14 87AB004A */  lh         $t3, 0x4A($sp)
    /* 2BA048 802D7C18 87AC004E */  lh         $t4, 0x4E($sp)
    /* 2BA04C 802D7C1C 87AD0052 */  lh         $t5, 0x52($sp)
    /* 2BA050 802D7C20 87AE0056 */  lh         $t6, 0x56($sp)
    /* 2BA054 802D7C24 87AF005A */  lh         $t7, 0x5A($sp)
    /* 2BA058 802D7C28 87B8005E */  lh         $t8, 0x5E($sp)
    /* 2BA05C 802D7C2C 3C19802E */  lui        $t9, %hi(D_802E12E4)
    /* 2BA060 802D7C30 273912E4 */  addiu      $t9, $t9, %lo(D_802E12E4)
    /* 2BA064 802D7C34 AFB90010 */  sw         $t9, 0x10($sp)
    /* 2BA068 802D7C38 24050007 */  addiu      $a1, $zero, 0x7
    /* 2BA06C 802D7C3C 24060005 */  addiu      $a2, $zero, 0x5
    /* 2BA070 802D7C40 27A70030 */  addiu      $a3, $sp, 0x30
    /* 2BA074 802D7C44 A3A40043 */  sb         $a0, 0x43($sp)
    /* 2BA078 802D7C48 AFA80028 */  sw         $t0, 0x28($sp)
    /* 2BA07C 802D7C4C A7AA0030 */  sh         $t2, 0x30($sp)
    /* 2BA080 802D7C50 A7AB0032 */  sh         $t3, 0x32($sp)
    /* 2BA084 802D7C54 A7AC0034 */  sh         $t4, 0x34($sp)
    /* 2BA088 802D7C58 A7AD0036 */  sh         $t5, 0x36($sp)
    /* 2BA08C 802D7C5C A7AE0038 */  sh         $t6, 0x38($sp)
    /* 2BA090 802D7C60 A7AF003A */  sh         $t7, 0x3A($sp)
    /* 2BA094 802D7C64 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2BA098 802D7C68 A7B8003C */   sh        $t8, 0x3C($sp)
    /* 2BA09C 802D7C6C 304400FF */  andi       $a0, $v0, 0xFF
    /* 2BA0A0 802D7C70 24010002 */  addiu      $at, $zero, 0x2
    /* 2BA0A4 802D7C74 8FA80028 */  lw         $t0, 0x28($sp)
    /* 2BA0A8 802D7C78 10810004 */  beq        $a0, $at, .L802D7C8C_2BA0BC
    /* 2BA0AC 802D7C7C 304600FF */   andi      $a2, $v0, 0xFF
    /* 2BA0B0 802D7C80 24010004 */  addiu      $at, $zero, 0x4
    /* 2BA0B4 802D7C84 54810009 */  bnel       $a0, $at, .L802D7CAC_2BA0DC
    /* 2BA0B8 802D7C88 24010005 */   addiu     $at, $zero, 0x5
  .L802D7C8C_2BA0BC:
    /* 2BA0BC 802D7C8C 93A40043 */  lbu        $a0, 0x43($sp)
    /* 2BA0C0 802D7C90 24050131 */  addiu      $a1, $zero, 0x131
    /* 2BA0C4 802D7C94 A3A6002F */  sb         $a2, 0x2F($sp)
    /* 2BA0C8 802D7C98 0C04DD1A */  jal        func_80137468_146418
    /* 2BA0CC 802D7C9C AFA80028 */   sw        $t0, 0x28($sp)
    /* 2BA0D0 802D7CA0 93A6002F */  lbu        $a2, 0x2F($sp)
    /* 2BA0D4 802D7CA4 8FA80028 */  lw         $t0, 0x28($sp)
    /* 2BA0D8 802D7CA8 24010005 */  addiu      $at, $zero, 0x5
  .L802D7CAC_2BA0DC:
    /* 2BA0DC 802D7CAC 54C10006 */  bnel       $a2, $at, .L802D7CC8_2BA0F8
    /* 2BA0E0 802D7CB0 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 2BA0E4 802D7CB4 8D090020 */  lw         $t1, 0x20($t0)
    /* 2BA0E8 802D7CB8 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 2BA0EC 802D7CBC 01215024 */  and        $t2, $t1, $at
    /* 2BA0F0 802D7CC0 AD0A0020 */  sw         $t2, 0x20($t0)
  .L802D7CC4_2BA0F4:
    /* 2BA0F4 802D7CC4 8FBF001C */  lw         $ra, 0x1C($sp)
  .L802D7CC8_2BA0F8:
    /* 2BA0F8 802D7CC8 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 2BA0FC 802D7CCC 03E00008 */  jr         $ra
    /* 2BA100 802D7CD0 00000000 */   nop
endlabel func_802D7BCC_2B9FFC
