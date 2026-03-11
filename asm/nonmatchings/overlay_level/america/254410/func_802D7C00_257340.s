nonmatching func_802D7C00_257340, 0x108

glabel func_802D7C00_257340
    /* 257340 802D7C00 308E00FF */  andi       $t6, $a0, 0xFF
    /* 257344 802D7C04 000E7880 */  sll        $t7, $t6, 2
    /* 257348 802D7C08 01EE7821 */  addu       $t7, $t7, $t6
    /* 25734C 802D7C0C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 257350 802D7C10 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 257354 802D7C14 000F7900 */  sll        $t7, $t7, 4
    /* 257358 802D7C18 01F84021 */  addu       $t0, $t7, $t8
    /* 25735C 802D7C1C 8D190020 */  lw         $t9, 0x20($t0)
    /* 257360 802D7C20 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 257364 802D7C24 AFA40040 */  sw         $a0, 0x40($sp)
    /* 257368 802D7C28 33291000 */  andi       $t1, $t9, 0x1000
    /* 25736C 802D7C2C 01C02025 */  or         $a0, $t6, $zero
    /* 257370 802D7C30 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 257374 802D7C34 AFA50044 */  sw         $a1, 0x44($sp)
    /* 257378 802D7C38 AFA60048 */  sw         $a2, 0x48($sp)
    /* 25737C 802D7C3C 1120002E */  beqz       $t1, .L802D7CF8_257438
    /* 257380 802D7C40 AFA7004C */   sw        $a3, 0x4C($sp)
    /* 257384 802D7C44 87AA0046 */  lh         $t2, 0x46($sp)
    /* 257388 802D7C48 87AB004A */  lh         $t3, 0x4A($sp)
    /* 25738C 802D7C4C 87AC004E */  lh         $t4, 0x4E($sp)
    /* 257390 802D7C50 87AD0052 */  lh         $t5, 0x52($sp)
    /* 257394 802D7C54 87AE0056 */  lh         $t6, 0x56($sp)
    /* 257398 802D7C58 87AF005A */  lh         $t7, 0x5A($sp)
    /* 25739C 802D7C5C 87B8005E */  lh         $t8, 0x5E($sp)
    /* 2573A0 802D7C60 3C19802E */  lui        $t9, %hi(D_802DF8DC)
    /* 2573A4 802D7C64 2739F8DC */  addiu      $t9, $t9, %lo(D_802DF8DC)
    /* 2573A8 802D7C68 AFB90010 */  sw         $t9, 0x10($sp)
    /* 2573AC 802D7C6C 24050007 */  addiu      $a1, $zero, 0x7
    /* 2573B0 802D7C70 24060005 */  addiu      $a2, $zero, 0x5
    /* 2573B4 802D7C74 27A70030 */  addiu      $a3, $sp, 0x30
    /* 2573B8 802D7C78 A3A40043 */  sb         $a0, 0x43($sp)
    /* 2573BC 802D7C7C AFA80028 */  sw         $t0, 0x28($sp)
    /* 2573C0 802D7C80 A7AA0030 */  sh         $t2, 0x30($sp)
    /* 2573C4 802D7C84 A7AB0032 */  sh         $t3, 0x32($sp)
    /* 2573C8 802D7C88 A7AC0034 */  sh         $t4, 0x34($sp)
    /* 2573CC 802D7C8C A7AD0036 */  sh         $t5, 0x36($sp)
    /* 2573D0 802D7C90 A7AE0038 */  sh         $t6, 0x38($sp)
    /* 2573D4 802D7C94 A7AF003A */  sh         $t7, 0x3A($sp)
    /* 2573D8 802D7C98 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2573DC 802D7C9C A7B8003C */   sh        $t8, 0x3C($sp)
    /* 2573E0 802D7CA0 304400FF */  andi       $a0, $v0, 0xFF
    /* 2573E4 802D7CA4 24010002 */  addiu      $at, $zero, 0x2
    /* 2573E8 802D7CA8 8FA80028 */  lw         $t0, 0x28($sp)
    /* 2573EC 802D7CAC 10810004 */  beq        $a0, $at, .L802D7CC0_257400
    /* 2573F0 802D7CB0 304600FF */   andi      $a2, $v0, 0xFF
    /* 2573F4 802D7CB4 24010004 */  addiu      $at, $zero, 0x4
    /* 2573F8 802D7CB8 54810009 */  bnel       $a0, $at, .L802D7CE0_257420
    /* 2573FC 802D7CBC 24010005 */   addiu     $at, $zero, 0x5
  .L802D7CC0_257400:
    /* 257400 802D7CC0 93A40043 */  lbu        $a0, 0x43($sp)
    /* 257404 802D7CC4 24050131 */  addiu      $a1, $zero, 0x131
    /* 257408 802D7CC8 A3A6002F */  sb         $a2, 0x2F($sp)
    /* 25740C 802D7CCC 0C04DD1A */  jal        func_80137468_146418
    /* 257410 802D7CD0 AFA80028 */   sw        $t0, 0x28($sp)
    /* 257414 802D7CD4 93A6002F */  lbu        $a2, 0x2F($sp)
    /* 257418 802D7CD8 8FA80028 */  lw         $t0, 0x28($sp)
    /* 25741C 802D7CDC 24010005 */  addiu      $at, $zero, 0x5
  .L802D7CE0_257420:
    /* 257420 802D7CE0 54C10006 */  bnel       $a2, $at, .L802D7CFC_25743C
    /* 257424 802D7CE4 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 257428 802D7CE8 8D090020 */  lw         $t1, 0x20($t0)
    /* 25742C 802D7CEC 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 257430 802D7CF0 01215024 */  and        $t2, $t1, $at
    /* 257434 802D7CF4 AD0A0020 */  sw         $t2, 0x20($t0)
  .L802D7CF8_257438:
    /* 257438 802D7CF8 8FBF001C */  lw         $ra, 0x1C($sp)
  .L802D7CFC_25743C:
    /* 25743C 802D7CFC 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 257440 802D7D00 03E00008 */  jr         $ra
    /* 257444 802D7D04 00000000 */   nop
endlabel func_802D7C00_257340
