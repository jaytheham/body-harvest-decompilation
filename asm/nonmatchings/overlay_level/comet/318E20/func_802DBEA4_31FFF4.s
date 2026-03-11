nonmatching func_802DBEA4_31FFF4, 0xE4

glabel func_802DBEA4_31FFF4
    /* 31FFF4 802DBEA4 308E00FF */  andi       $t6, $a0, 0xFF
    /* 31FFF8 802DBEA8 000E7880 */  sll        $t7, $t6, 2
    /* 31FFFC 802DBEAC 01EE7821 */  addu       $t7, $t7, $t6
    /* 320000 802DBEB0 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 320004 802DBEB4 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 320008 802DBEB8 000F7900 */  sll        $t7, $t7, 4
    /* 32000C 802DBEBC 01F84021 */  addu       $t0, $t7, $t8
    /* 320010 802DBEC0 8D190020 */  lw         $t9, 0x20($t0)
    /* 320014 802DBEC4 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 320018 802DBEC8 AFA40038 */  sw         $a0, 0x38($sp)
    /* 32001C 802DBECC 33291000 */  andi       $t1, $t9, 0x1000
    /* 320020 802DBED0 01C02025 */  or         $a0, $t6, $zero
    /* 320024 802DBED4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 320028 802DBED8 AFA5003C */  sw         $a1, 0x3C($sp)
    /* 32002C 802DBEDC 11200026 */  beqz       $t1, .L802DBF78_3200C8
    /* 320030 802DBEE0 AFA60040 */   sw        $a2, 0x40($sp)
    /* 320034 802DBEE4 87AA003E */  lh         $t2, 0x3E($sp)
    /* 320038 802DBEE8 87AB0042 */  lh         $t3, 0x42($sp)
    /* 32003C 802DBEEC 3C0C802E */  lui        $t4, %hi(D_802E566C)
    /* 320040 802DBEF0 258C566C */  addiu      $t4, $t4, %lo(D_802E566C)
    /* 320044 802DBEF4 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 320048 802DBEF8 24050002 */  addiu      $a1, $zero, 0x2
    /* 32004C 802DBEFC 2406000D */  addiu      $a2, $zero, 0xD
    /* 320050 802DBF00 27A70034 */  addiu      $a3, $sp, 0x34
    /* 320054 802DBF04 A3AE003B */  sb         $t6, 0x3B($sp)
    /* 320058 802DBF08 AFA80028 */  sw         $t0, 0x28($sp)
    /* 32005C 802DBF0C A7AA0034 */  sh         $t2, 0x34($sp)
    /* 320060 802DBF10 0C0207C6 */  jal        func_80081F18_90EC8
    /* 320064 802DBF14 A7AB0036 */   sh        $t3, 0x36($sp)
    /* 320068 802DBF18 304300FF */  andi       $v1, $v0, 0xFF
    /* 32006C 802DBF1C 24010004 */  addiu      $at, $zero, 0x4
    /* 320070 802DBF20 93A4003B */  lbu        $a0, 0x3B($sp)
    /* 320074 802DBF24 1061000A */  beq        $v1, $at, .L802DBF50_3200A0
    /* 320078 802DBF28 8FA80028 */   lw        $t0, 0x28($sp)
    /* 32007C 802DBF2C 24010007 */  addiu      $at, $zero, 0x7
    /* 320080 802DBF30 10610007 */  beq        $v1, $at, .L802DBF50_3200A0
    /* 320084 802DBF34 2401000A */   addiu     $at, $zero, 0xA
    /* 320088 802DBF38 10610005 */  beq        $v1, $at, .L802DBF50_3200A0
    /* 32008C 802DBF3C 2401000D */   addiu     $at, $zero, 0xD
    /* 320090 802DBF40 5061000A */  beql       $v1, $at, .L802DBF6C_3200BC
    /* 320094 802DBF44 8D0D0020 */   lw        $t5, 0x20($t0)
    /* 320098 802DBF48 1000000C */  b          .L802DBF7C_3200CC
    /* 32009C 802DBF4C 8FBF001C */   lw        $ra, 0x1C($sp)
  .L802DBF50_3200A0:
    /* 3200A0 802DBF50 A500001E */  sh         $zero, 0x1E($t0)
    /* 3200A4 802DBF54 00002825 */  or         $a1, $zero, $zero
    /* 3200A8 802DBF58 0C021C62 */  jal        func_80087188_96138
    /* 3200AC 802DBF5C 24060020 */   addiu     $a2, $zero, 0x20
    /* 3200B0 802DBF60 10000006 */  b          .L802DBF7C_3200CC
    /* 3200B4 802DBF64 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 3200B8 802DBF68 8D0D0020 */  lw         $t5, 0x20($t0)
  .L802DBF6C_3200BC:
    /* 3200BC 802DBF6C 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 3200C0 802DBF70 01A17024 */  and        $t6, $t5, $at
    /* 3200C4 802DBF74 AD0E0020 */  sw         $t6, 0x20($t0)
  .L802DBF78_3200C8:
    /* 3200C8 802DBF78 8FBF001C */  lw         $ra, 0x1C($sp)
  .L802DBF7C_3200CC:
    /* 3200CC 802DBF7C 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 3200D0 802DBF80 03E00008 */  jr         $ra
    /* 3200D4 802DBF84 00000000 */   nop
endlabel func_802DBEA4_31FFF4
