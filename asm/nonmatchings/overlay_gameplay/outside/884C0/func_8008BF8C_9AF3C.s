nonmatching func_8008BF8C_9AF3C, 0x16C

glabel func_8008BF8C_9AF3C
    /* 9AF3C 8008BF8C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 9AF40 8008BF90 000E7880 */  sll        $t7, $t6, 2
    /* 9AF44 8008BF94 01EE7821 */  addu       $t7, $t7, $t6
    /* 9AF48 8008BF98 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 9AF4C 8008BF9C 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 9AF50 8008BFA0 000F7900 */  sll        $t7, $t7, 4
    /* 9AF54 8008BFA4 01F81021 */  addu       $v0, $t7, $t8
    /* 9AF58 8008BFA8 8459000C */  lh         $t9, 0xC($v0)
    /* 9AF5C 8008BFAC 8C4B0020 */  lw         $t3, 0x20($v0)
    /* 9AF60 8008BFB0 3C088015 */  lui        $t0, %hi(D_8014DD50)
    /* 9AF64 8008BFB4 2508DD50 */  addiu      $t0, $t0, %lo(D_8014DD50)
    /* 9AF68 8008BFB8 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 9AF6C 8008BFBC 00194900 */  sll        $t1, $t9, 4
    /* 9AF70 8008BFC0 AFA40030 */  sw         $a0, 0x30($sp)
    /* 9AF74 8008BFC4 01095021 */  addu       $t2, $t0, $t1
    /* 9AF78 8008BFC8 000B62C0 */  sll        $t4, $t3, 11
    /* 9AF7C 8008BFCC 01C02025 */  or         $a0, $t6, $zero
    /* 9AF80 8008BFD0 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 9AF84 8008BFD4 0580001B */  bltz       $t4, .L8008C044_9AFF4
    /* 9AF88 8008BFD8 8145000C */   lb        $a1, 0xC($t2)
    /* 9AF8C 8008BFDC 00056900 */  sll        $t5, $a1, 4
    /* 9AF90 8008BFE0 010D1821 */  addu       $v1, $t0, $t5
    /* 9AF94 8008BFE4 846E0004 */  lh         $t6, 0x4($v1)
    /* 9AF98 8008BFE8 240F0014 */  addiu      $t7, $zero, 0x14
    /* 9AF9C 8008BFEC AFAF0018 */  sw         $t7, 0x18($sp)
    /* 9AFA0 8008BFF0 84660000 */  lh         $a2, 0x0($v1)
    /* 9AFA4 8008BFF4 84670002 */  lh         $a3, 0x2($v1)
    /* 9AFA8 8008BFF8 AFA00014 */  sw         $zero, 0x14($sp)
    /* 9AFAC 8008BFFC AFA0001C */  sw         $zero, 0x1C($sp)
    /* 9AFB0 8008C000 AFA20028 */  sw         $v0, 0x28($sp)
    /* 9AFB4 8008C004 0C022390 */  jal        func_80088E40_97DF0
    /* 9AFB8 8008C008 AFAE0010 */   sw        $t6, 0x10($sp)
    /* 9AFBC 8008C00C 8FA20028 */  lw         $v0, 0x28($sp)
    /* 9AFC0 8008C010 3C0A8005 */  lui        $t2, %hi(alienInstances)
    /* 9AFC4 8008C014 24180023 */  addiu      $t8, $zero, 0x23
    /* 9AFC8 8008C018 90590025 */  lbu        $t9, 0x25($v0)
    /* 9AFCC 8008C01C 254A8198 */  addiu      $t2, $t2, %lo(alienInstances)
    /* 9AFD0 8008C020 A458002C */  sh         $t8, 0x2C($v0)
    /* 9AFD4 8008C024 00194880 */  sll        $t1, $t9, 2
    /* 9AFD8 8008C028 01394821 */  addu       $t1, $t1, $t9
    /* 9AFDC 8008C02C 00094900 */  sll        $t1, $t1, 4
    /* 9AFE0 8008C030 012A1821 */  addu       $v1, $t1, $t2
    /* 9AFE4 8008C034 906B0026 */  lbu        $t3, 0x26($v1)
    /* 9AFE8 8008C038 256CFFFF */  addiu      $t4, $t3, -0x1
    /* 9AFEC 8008C03C 1000002A */  b          .L8008C0E8_9B098
    /* 9AFF0 8008C040 A06C0026 */   sb        $t4, 0x26($v1)
  .L8008C044_9AFF4:
    /* 9AFF4 8008C044 8443002C */  lh         $v1, 0x2C($v0)
    /* 9AFF8 8008C048 24010022 */  addiu      $at, $zero, 0x22
    /* 9AFFC 8008C04C 54610014 */  bnel       $v1, $at, .L8008C0A0_9B050
    /* 9B000 8008C050 24010001 */   addiu     $at, $zero, 0x1
    /* 9B004 8008C054 904D001A */  lbu        $t5, 0x1A($v0)
    /* 9B008 8008C058 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 9B00C 8008C05C 84440000 */  lh         $a0, 0x0($v0)
    /* 9B010 8008C060 000D7080 */  sll        $t6, $t5, 2
    /* 9B014 8008C064 01CD7023 */  subu       $t6, $t6, $t5
    /* 9B018 8008C068 000E7080 */  sll        $t6, $t6, 2
    /* 9B01C 8008C06C 01CD7021 */  addu       $t6, $t6, $t5
    /* 9B020 8008C070 000E70C0 */  sll        $t6, $t6, 3
    /* 9B024 8008C074 00EE3821 */  addu       $a3, $a3, $t6
    /* 9B028 8008C078 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 9B02C 8008C07C 84450002 */  lh         $a1, 0x2($v0)
    /* 9B030 8008C080 84460004 */  lh         $a2, 0x4($v0)
    /* 9B034 8008C084 AFA00010 */  sw         $zero, 0x10($sp)
    /* 9B038 8008C088 AFA00014 */  sw         $zero, 0x14($sp)
    /* 9B03C 8008C08C 0C037C0E */  jal        func_800DF038_EDFE8
    /* 9B040 8008C090 AFA20028 */   sw        $v0, 0x28($sp)
    /* 9B044 8008C094 8FA20028 */  lw         $v0, 0x28($sp)
    /* 9B048 8008C098 8443002C */  lh         $v1, 0x2C($v0)
    /* 9B04C 8008C09C 24010001 */  addiu      $at, $zero, 0x1
  .L8008C0A0_9B050:
    /* 9B050 8008C0A0 54610012 */  bnel       $v1, $at, .L8008C0EC_9B09C
    /* 9B054 8008C0A4 8FBF0024 */   lw        $ra, 0x24($sp)
    /* 9B058 8008C0A8 904F001A */  lbu        $t7, 0x1A($v0)
    /* 9B05C 8008C0AC 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 9B060 8008C0B0 24190004 */  addiu      $t9, $zero, 0x4
    /* 9B064 8008C0B4 000FC080 */  sll        $t8, $t7, 2
    /* 9B068 8008C0B8 030FC023 */  subu       $t8, $t8, $t7
    /* 9B06C 8008C0BC 0018C080 */  sll        $t8, $t8, 2
    /* 9B070 8008C0C0 030FC021 */  addu       $t8, $t8, $t7
    /* 9B074 8008C0C4 0018C0C0 */  sll        $t8, $t8, 3
    /* 9B078 8008C0C8 00F83821 */  addu       $a3, $a3, $t8
    /* 9B07C 8008C0CC 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 9B080 8008C0D0 AFB90010 */  sw         $t9, 0x10($sp)
    /* 9B084 8008C0D4 84440000 */  lh         $a0, 0x0($v0)
    /* 9B088 8008C0D8 84450002 */  lh         $a1, 0x2($v0)
    /* 9B08C 8008C0DC 84460004 */  lh         $a2, 0x4($v0)
    /* 9B090 8008C0E0 0C037C0E */  jal        func_800DF038_EDFE8
    /* 9B094 8008C0E4 AFA00014 */   sw        $zero, 0x14($sp)
  .L8008C0E8_9B098:
    /* 9B098 8008C0E8 8FBF0024 */  lw         $ra, 0x24($sp)
  .L8008C0EC_9B09C:
    /* 9B09C 8008C0EC 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 9B0A0 8008C0F0 03E00008 */  jr         $ra
    /* 9B0A4 8008C0F4 00000000 */   nop
endlabel func_8008BF8C_9AF3C
