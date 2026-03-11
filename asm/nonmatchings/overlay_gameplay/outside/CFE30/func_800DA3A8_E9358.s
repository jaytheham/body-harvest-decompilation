nonmatching func_800DA3A8_E9358, 0xA8

glabel func_800DA3A8_E9358
    /* E9358 800DA3A8 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* E935C 800DA3AC AFA40038 */  sw         $a0, 0x38($sp)
    /* E9360 800DA3B0 87AE003A */  lh         $t6, 0x3A($sp)
    /* E9364 800DA3B4 2403001C */  addiu      $v1, $zero, 0x1C
    /* E9368 800DA3B8 AFA5003C */  sw         $a1, 0x3C($sp)
    /* E936C 800DA3BC 01C30019 */  multu      $t6, $v1
    /* E9370 800DA3C0 87B8003E */  lh         $t8, 0x3E($sp)
    /* E9374 800DA3C4 3C028015 */  lui        $v0, %hi(D_80154318)
    /* E9378 800DA3C8 24424318 */  addiu      $v0, $v0, %lo(D_80154318)
    /* E937C 800DA3CC AFBF0024 */  sw         $ra, 0x24($sp)
    /* E9380 800DA3D0 00007812 */  mflo       $t7
    /* E9384 800DA3D4 004F4821 */  addu       $t1, $v0, $t7
    /* E9388 800DA3D8 8524000E */  lh         $a0, 0xE($t1)
    /* E938C 800DA3DC 03030019 */  multu      $t8, $v1
    /* E9390 800DA3E0 85250010 */  lh         $a1, 0x10($t1)
    /* E9394 800DA3E4 85260012 */  lh         $a2, 0x12($t1)
    /* E9398 800DA3E8 AFA9002C */  sw         $t1, 0x2C($sp)
    /* E939C 800DA3EC 0000C812 */  mflo       $t9
    /* E93A0 800DA3F0 00594021 */  addu       $t0, $v0, $t9
    /* E93A4 800DA3F4 850A000A */  lh         $t2, 0xA($t0)
    /* E93A8 800DA3F8 850B000C */  lh         $t3, 0xC($t0)
    /* E93AC 800DA3FC 910C0014 */  lbu        $t4, 0x14($t0)
    /* E93B0 800DA400 85070008 */  lh         $a3, 0x8($t0)
    /* E93B4 800DA404 AFA80028 */  sw         $t0, 0x28($sp)
    /* E93B8 800DA408 AFAA0010 */  sw         $t2, 0x10($sp)
    /* E93BC 800DA40C AFAB0014 */  sw         $t3, 0x14($sp)
    /* E93C0 800DA410 0C0394BA */  jal        func_800E52E8_F4298
    /* E93C4 800DA414 AFAC0018 */   sw        $t4, 0x18($sp)
    /* E93C8 800DA418 8FA9002C */  lw         $t1, 0x2C($sp)
    /* E93CC 800DA41C 8FA80028 */  lw         $t0, 0x28($sp)
    /* E93D0 800DA420 25220008 */  addiu      $v0, $t1, 0x8
    /* E93D4 800DA424 844D0006 */  lh         $t5, 0x6($v0)
    /* E93D8 800DA428 25030008 */  addiu      $v1, $t0, 0x8
    /* E93DC 800DA42C A46D0000 */  sh         $t5, 0x0($v1)
    /* E93E0 800DA430 844E0008 */  lh         $t6, 0x8($v0)
    /* E93E4 800DA434 A46E0002 */  sh         $t6, 0x2($v1)
    /* E93E8 800DA438 844F000A */  lh         $t7, 0xA($v0)
    /* E93EC 800DA43C A46F0004 */  sh         $t7, 0x4($v1)
    /* E93F0 800DA440 8FBF0024 */  lw         $ra, 0x24($sp)
    /* E93F4 800DA444 27BD0038 */  addiu      $sp, $sp, 0x38
    /* E93F8 800DA448 03E00008 */  jr         $ra
    /* E93FC 800DA44C 00000000 */   nop
endlabel func_800DA3A8_E9358
