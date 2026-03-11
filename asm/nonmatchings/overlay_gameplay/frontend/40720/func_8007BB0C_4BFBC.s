nonmatching func_8007BB0C_4BFBC, 0x184

glabel func_8007BB0C_4BFBC
    /* 4BFBC 8007BB0C 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 4BFC0 8007BB10 AFBF005C */  sw         $ra, 0x5C($sp)
    /* 4BFC4 8007BB14 AFB10044 */  sw         $s1, 0x44($sp)
    /* 4BFC8 8007BB18 AFB60058 */  sw         $s6, 0x58($sp)
    /* 4BFCC 8007BB1C AFB50054 */  sw         $s5, 0x54($sp)
    /* 4BFD0 8007BB20 AFB40050 */  sw         $s4, 0x50($sp)
    /* 4BFD4 8007BB24 AFB3004C */  sw         $s3, 0x4C($sp)
    /* 4BFD8 8007BB28 AFB20048 */  sw         $s2, 0x48($sp)
    /* 4BFDC 8007BB2C AFB00040 */  sw         $s0, 0x40($sp)
    /* 4BFE0 8007BB30 F7B40038 */  sdc1       $f20, 0x38($sp)
    /* 4BFE4 8007BB34 24110064 */  addiu      $s1, $zero, 0x64
    /* 4BFE8 8007BB38 0C01E468 */  jal        func_800791A0_49650
    /* 4BFEC 8007BB3C 24040001 */   addiu     $a0, $zero, 0x1
    /* 4BFF0 8007BB40 3C108006 */  lui        $s0, %hi(D_8005BB2C)
    /* 4BFF4 8007BB44 2610BB2C */  addiu      $s0, $s0, %lo(D_8005BB2C)
    /* 4BFF8 8007BB48 8E020000 */  lw         $v0, 0x0($s0)
    /* 4BFFC 8007BB4C 3C12E900 */  lui        $s2, (0xE9000000 >> 16)
    /* 4C000 8007BB50 3C13B800 */  lui        $s3, (0xB8000000 >> 16)
    /* 4C004 8007BB54 244E0008 */  addiu      $t6, $v0, 0x8
    /* 4C008 8007BB58 AE0E0000 */  sw         $t6, 0x0($s0)
    /* 4C00C 8007BB5C AC400004 */  sw         $zero, 0x4($v0)
    /* 4C010 8007BB60 AC520000 */  sw         $s2, 0x0($v0)
    /* 4C014 8007BB64 8E020000 */  lw         $v0, 0x0($s0)
    /* 4C018 8007BB68 244F0008 */  addiu      $t7, $v0, 0x8
    /* 4C01C 8007BB6C AE0F0000 */  sw         $t7, 0x0($s0)
    /* 4C020 8007BB70 AC400004 */  sw         $zero, 0x4($v0)
    /* 4C024 8007BB74 0C001417 */  jal        func_8000505C_5C5C
    /* 4C028 8007BB78 AC530000 */   sw        $s3, 0x0($v0)
    /* 4C02C 8007BB7C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 4C030 8007BB80 3C16040B */  lui        $s6, %hi(D_40B1A40)
    /* 4C034 8007BB84 3C15040B */  lui        $s5, %hi(D_40AAE40)
    /* 4C038 8007BB88 3C14BA00 */  lui        $s4, (0xBA000C02 >> 16)
    /* 4C03C 8007BB8C 4481A000 */  mtc1       $at, $f20
    /* 4C040 8007BB90 36940C02 */  ori        $s4, $s4, (0xBA000C02 & 0xFFFF)
    /* 4C044 8007BB94 26B5AE40 */  addiu      $s5, $s5, %lo(D_40AAE40)
    /* 4C048 8007BB98 26D61A40 */  addiu      $s6, $s6, %lo(D_40B1A40)
  .L8007BB9C_4C04C:
    /* 4C04C 8007BB9C 0C01E468 */  jal        func_800791A0_49650
    /* 4C050 8007BBA0 24040001 */   addiu     $a0, $zero, 0x1
    /* 4C054 8007BBA4 8E020000 */  lw         $v0, 0x0($s0)
    /* 4C058 8007BBA8 24190018 */  addiu      $t9, $zero, 0x18
    /* 4C05C 8007BBAC 24080050 */  addiu      $t0, $zero, 0x50
    /* 4C060 8007BBB0 24580008 */  addiu      $t8, $v0, 0x8
    /* 4C064 8007BBB4 AE180000 */  sw         $t8, 0x0($s0)
    /* 4C068 8007BBB8 AC400004 */  sw         $zero, 0x4($v0)
    /* 4C06C 8007BBBC AC540000 */  sw         $s4, 0x0($v0)
    /* 4C070 8007BBC0 24090120 */  addiu      $t1, $zero, 0x120
    /* 4C074 8007BBC4 240A0060 */  addiu      $t2, $zero, 0x60
    /* 4C078 8007BBC8 AFAA001C */  sw         $t2, 0x1C($sp)
    /* 4C07C 8007BBCC AFA90018 */  sw         $t1, 0x18($sp)
    /* 4C080 8007BBD0 AFB60028 */  sw         $s6, 0x28($sp)
    /* 4C084 8007BBD4 E7B40024 */  swc1       $f20, 0x24($sp)
    /* 4C088 8007BBD8 E7B40020 */  swc1       $f20, 0x20($sp)
    /* 4C08C 8007BBDC AFA80014 */  sw         $t0, 0x14($sp)
    /* 4C090 8007BBE0 AFB90010 */  sw         $t9, 0x10($sp)
    /* 4C094 8007BBE4 02A02025 */  or         $a0, $s5, $zero
    /* 4C098 8007BBE8 24050002 */  addiu      $a1, $zero, 0x2
    /* 4C09C 8007BBEC 24060001 */  addiu      $a2, $zero, 0x1
    /* 4C0A0 8007BBF0 0C001717 */  jal        func_80005C5C_685C
    /* 4C0A4 8007BBF4 24070008 */   addiu     $a3, $zero, 0x8
    /* 4C0A8 8007BBF8 16200005 */  bnez       $s1, .L8007BC10_4C0C0
    /* 4C0AC 8007BBFC 00002025 */   or        $a0, $zero, $zero
    /* 4C0B0 8007BC00 00002825 */  or         $a1, $zero, $zero
    /* 4C0B4 8007BC04 00003025 */  or         $a2, $zero, $zero
    /* 4C0B8 8007BC08 0C0016BB */  jal        func_80005AEC_66EC
    /* 4C0BC 8007BC0C 24070040 */   addiu     $a3, $zero, 0x40
  .L8007BC10_4C0C0:
    /* 4C0C0 8007BC10 2631FFFF */  addiu      $s1, $s1, -0x1
    /* 4C0C4 8007BC14 322BFFFF */  andi       $t3, $s1, 0xFFFF
    /* 4C0C8 8007BC18 0C002C11 */  jal        func_8000B044_BC44
    /* 4C0CC 8007BC1C 01608825 */   or        $s1, $t3, $zero
    /* 4C0D0 8007BC20 0C0016E1 */  jal        func_80005B84_6784
    /* 4C0D4 8007BC24 00000000 */   nop
    /* 4C0D8 8007BC28 8E020000 */  lw         $v0, 0x0($s0)
    /* 4C0DC 8007BC2C 244C0008 */  addiu      $t4, $v0, 0x8
    /* 4C0E0 8007BC30 AE0C0000 */  sw         $t4, 0x0($s0)
    /* 4C0E4 8007BC34 AC400004 */  sw         $zero, 0x4($v0)
    /* 4C0E8 8007BC38 AC520000 */  sw         $s2, 0x0($v0)
    /* 4C0EC 8007BC3C 8E020000 */  lw         $v0, 0x0($s0)
    /* 4C0F0 8007BC40 244D0008 */  addiu      $t5, $v0, 0x8
    /* 4C0F4 8007BC44 AE0D0000 */  sw         $t5, 0x0($s0)
    /* 4C0F8 8007BC48 AC400004 */  sw         $zero, 0x4($v0)
    /* 4C0FC 8007BC4C 0C001417 */  jal        func_8000505C_5C5C
    /* 4C100 8007BC50 AC530000 */   sw        $s3, 0x0($v0)
    /* 4C104 8007BC54 0C0016CC */  jal        func_80005B30_6730
    /* 4C108 8007BC58 00000000 */   nop
    /* 4C10C 8007BC5C 1040FFCF */  beqz       $v0, .L8007BB9C_4C04C
    /* 4C110 8007BC60 00000000 */   nop
    /* 4C114 8007BC64 8FBF005C */  lw         $ra, 0x5C($sp)
    /* 4C118 8007BC68 D7B40038 */  ldc1       $f20, 0x38($sp)
    /* 4C11C 8007BC6C 8FB00040 */  lw         $s0, 0x40($sp)
    /* 4C120 8007BC70 8FB10044 */  lw         $s1, 0x44($sp)
    /* 4C124 8007BC74 8FB20048 */  lw         $s2, 0x48($sp)
    /* 4C128 8007BC78 8FB3004C */  lw         $s3, 0x4C($sp)
    /* 4C12C 8007BC7C 8FB40050 */  lw         $s4, 0x50($sp)
    /* 4C130 8007BC80 8FB50054 */  lw         $s5, 0x54($sp)
    /* 4C134 8007BC84 8FB60058 */  lw         $s6, 0x58($sp)
    /* 4C138 8007BC88 03E00008 */  jr         $ra
    /* 4C13C 8007BC8C 27BD0060 */   addiu     $sp, $sp, 0x60
endlabel func_8007BB0C_4BFBC
