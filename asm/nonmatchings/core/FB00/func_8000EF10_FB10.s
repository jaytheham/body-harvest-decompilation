nonmatching func_8000EF10_FB10, 0x88

glabel func_8000EF10_FB10
    /* FB10 8000EF10 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* FB14 8000EF14 AFA40020 */  sw         $a0, 0x20($sp)
    /* FB18 8000EF18 3C048004 */  lui        $a0, %hi(D_8003FB20)
    /* FB1C 8000EF1C 3C0E803F */  lui        $t6, (0x803FFFFF >> 16)
    /* FB20 8000EF20 2484FB20 */  addiu      $a0, $a0, %lo(D_8003FB20)
    /* FB24 8000EF24 AFBF001C */  sw         $ra, 0x1C($sp)
    /* FB28 8000EF28 3C018007 */  lui        $at, %hi(D_80068078)
    /* FB2C 8000EF2C 35CEFFFF */  ori        $t6, $t6, (0x803FFFFF & 0xFFFF)
    /* FB30 8000EF30 A4208078 */  sh         $zero, %lo(D_80068078)($at)
    /* FB34 8000EF34 0C007A48 */  jal        bzero
    /* FB38 8000EF38 01C42823 */   subu      $a1, $t6, $a0
    /* FB3C 8000EF3C 0C007834 */  jal        osInitialize
    /* FB40 8000EF40 00000000 */   nop
    /* FB44 8000EF44 3C048006 */  lui        $a0, %hi(D_80067388)
    /* FB48 8000EF48 3C0F8006 */  lui        $t7, %hi(D_8005C760)
    /* FB4C 8000EF4C 24847388 */  addiu      $a0, $a0, %lo(D_80067388)
    /* FB50 8000EF50 25EFC760 */  addiu      $t7, $t7, %lo(D_8005C760)
    /* FB54 8000EF54 3C068001 */  lui        $a2, %hi(func_8000EFB8_FBB8)
    /* FB58 8000EF58 2418000A */  addiu      $t8, $zero, 0xA
    /* FB5C 8000EF5C AC800000 */  sw         $zero, 0x0($a0)
    /* FB60 8000EF60 AC800008 */  sw         $zero, 0x8($a0)
    /* FB64 8000EF64 AFB80014 */  sw         $t8, 0x14($sp)
    /* FB68 8000EF68 24C6EFB8 */  addiu      $a2, $a2, %lo(func_8000EFB8_FBB8)
    /* FB6C 8000EF6C AFAF0010 */  sw         $t7, 0x10($sp)
    /* FB70 8000EF70 24050001 */  addiu      $a1, $zero, 0x1
    /* FB74 8000EF74 0C006BA4 */  jal        osCreateThread
    /* FB78 8000EF78 00003825 */   or        $a3, $zero, $zero
    /* FB7C 8000EF7C 3C048006 */  lui        $a0, %hi(D_80067388)
    /* FB80 8000EF80 0C006BF8 */  jal        osStartThread
    /* FB84 8000EF84 24847388 */   addiu     $a0, $a0, %lo(D_80067388)
    /* FB88 8000EF88 8FBF001C */  lw         $ra, 0x1C($sp)
    /* FB8C 8000EF8C 27BD0020 */  addiu      $sp, $sp, 0x20
    /* FB90 8000EF90 03E00008 */  jr         $ra
    /* FB94 8000EF94 00000000 */   nop
endlabel func_8000EF10_FB10
