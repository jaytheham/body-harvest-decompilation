nonmatching func_802DDFFC_32214C, 0xF8

glabel func_802DDFFC_32214C
    /* 32214C 802DDFFC 308E00FF */  andi       $t6, $a0, 0xFF
    /* 322150 802DE000 000E7880 */  sll        $t7, $t6, 2
    /* 322154 802DE004 01EE7821 */  addu       $t7, $t7, $t6
    /* 322158 802DE008 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 32215C 802DE00C 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 322160 802DE010 000F7900 */  sll        $t7, $t7, 4
    /* 322164 802DE014 01F84021 */  addu       $t0, $t7, $t8
    /* 322168 802DE018 8D190020 */  lw         $t9, 0x20($t0)
    /* 32216C 802DE01C 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 322170 802DE020 AFA40030 */  sw         $a0, 0x30($sp)
    /* 322174 802DE024 33291000 */  andi       $t1, $t9, 0x1000
    /* 322178 802DE028 01C02025 */  or         $a0, $t6, $zero
    /* 32217C 802DE02C AFBF001C */  sw         $ra, 0x1C($sp)
    /* 322180 802DE030 AFA50034 */  sw         $a1, 0x34($sp)
    /* 322184 802DE034 1120002B */  beqz       $t1, .L802DE0E4_322234
    /* 322188 802DE038 AFA60038 */   sw        $a2, 0x38($sp)
    /* 32218C 802DE03C 87AA0036 */  lh         $t2, 0x36($sp)
    /* 322190 802DE040 87AB003A */  lh         $t3, 0x3A($sp)
    /* 322194 802DE044 3C0C802E */  lui        $t4, %hi(D_802E5EC8)
    /* 322198 802DE048 258C5EC8 */  addiu      $t4, $t4, %lo(D_802E5EC8)
    /* 32219C 802DE04C AFAC0010 */  sw         $t4, 0x10($sp)
    /* 3221A0 802DE050 24050002 */  addiu      $a1, $zero, 0x2
    /* 3221A4 802DE054 24060006 */  addiu      $a2, $zero, 0x6
    /* 3221A8 802DE058 27A7002C */  addiu      $a3, $sp, 0x2C
    /* 3221AC 802DE05C A3AE0033 */  sb         $t6, 0x33($sp)
    /* 3221B0 802DE060 AFA80024 */  sw         $t0, 0x24($sp)
    /* 3221B4 802DE064 A7AA002C */  sh         $t2, 0x2C($sp)
    /* 3221B8 802DE068 0C0207C6 */  jal        func_80081F18_90EC8
    /* 3221BC 802DE06C A7AB002E */   sh        $t3, 0x2E($sp)
    /* 3221C0 802DE070 304500FF */  andi       $a1, $v0, 0xFF
    /* 3221C4 802DE074 93A40033 */  lbu        $a0, 0x33($sp)
    /* 3221C8 802DE078 8FA80024 */  lw         $t0, 0x24($sp)
    /* 3221CC 802DE07C 00401825 */  or         $v1, $v0, $zero
    /* 3221D0 802DE080 304700FF */  andi       $a3, $v0, 0xFF
    /* 3221D4 802DE084 04A10004 */  bgez       $a1, .L802DE098_3221E8
    /* 3221D8 802DE088 30AD0001 */   andi      $t5, $a1, 0x1
    /* 3221DC 802DE08C 11A00002 */  beqz       $t5, .L802DE098_3221E8
    /* 3221E0 802DE090 00000000 */   nop
    /* 3221E4 802DE094 25ADFFFE */  addiu      $t5, $t5, -0x2
  .L802DE098_3221E8:
    /* 3221E8 802DE098 15A0000A */  bnez       $t5, .L802DE0C4_322214
    /* 3221EC 802DE09C 28A10006 */   slti      $at, $a1, 0x6
    /* 3221F0 802DE0A0 10200008 */  beqz       $at, .L802DE0C4_322214
    /* 3221F4 802DE0A4 24050001 */   addiu     $a1, $zero, 0x1
    /* 3221F8 802DE0A8 A500001E */  sh         $zero, 0x1E($t0)
    /* 3221FC 802DE0AC 2406000A */  addiu      $a2, $zero, 0xA
    /* 322200 802DE0B0 A3A7002B */  sb         $a3, 0x2B($sp)
    /* 322204 802DE0B4 0C021C73 */  jal        func_800871CC_9617C
    /* 322208 802DE0B8 AFA80024 */   sw        $t0, 0x24($sp)
    /* 32220C 802DE0BC 93A7002B */  lbu        $a3, 0x2B($sp)
    /* 322210 802DE0C0 8FA80024 */  lw         $t0, 0x24($sp)
  .L802DE0C4_322214:
    /* 322214 802DE0C4 24010006 */  addiu      $at, $zero, 0x6
    /* 322218 802DE0C8 54E10007 */  bnel       $a3, $at, .L802DE0E8_322238
    /* 32221C 802DE0CC 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 322220 802DE0D0 8D0E0020 */  lw         $t6, 0x20($t0)
    /* 322224 802DE0D4 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 322228 802DE0D8 A500001E */  sh         $zero, 0x1E($t0)
    /* 32222C 802DE0DC 01C17824 */  and        $t7, $t6, $at
    /* 322230 802DE0E0 AD0F0020 */  sw         $t7, 0x20($t0)
  .L802DE0E4_322234:
    /* 322234 802DE0E4 8FBF001C */  lw         $ra, 0x1C($sp)
  .L802DE0E8_322238:
    /* 322238 802DE0E8 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 32223C 802DE0EC 03E00008 */  jr         $ra
    /* 322240 802DE0F0 00000000 */   nop
endlabel func_802DDFFC_32214C
