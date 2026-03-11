nonmatching func_800FAC90_109C40, 0x80

glabel func_800FAC90_109C40
    /* 109C40 800FAC90 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 109C44 800FAC94 AFB20020 */  sw         $s2, 0x20($sp)
    /* 109C48 800FAC98 AFB00018 */  sw         $s0, 0x18($sp)
    /* 109C4C 800FAC9C AFB1001C */  sw         $s1, 0x1C($sp)
    /* 109C50 800FACA0 3C108005 */  lui        $s0, %hi(vehicleInstances)
    /* 109C54 800FACA4 3C128005 */  lui        $s2, %hi(D_80050AD0)
    /* 109C58 800FACA8 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 109C5C 800FACAC 26520AD0 */  addiu      $s2, $s2, %lo(D_80050AD0)
    /* 109C60 800FACB0 2610DCD0 */  addiu      $s0, $s0, %lo(vehicleInstances)
    /* 109C64 800FACB4 2411FFBF */  addiu      $s1, $zero, -0x41
    /* 109C68 800FACB8 86040000 */  lh         $a0, 0x0($s0)
  .L800FACBC_109C6C:
    /* 109C6C 800FACBC 86050004 */  lh         $a1, 0x4($s0)
    /* 109C70 800FACC0 0C02C344 */  jal        func_800B0D10_BFCC0
    /* 109C74 800FACC4 00003025 */   or        $a2, $zero, $zero
    /* 109C78 800FACC8 50400006 */  beql       $v0, $zero, .L800FACE4_109C94
    /* 109C7C 800FACCC 96180020 */   lhu       $t8, 0x20($s0)
    /* 109C80 800FACD0 960E0020 */  lhu        $t6, 0x20($s0)
    /* 109C84 800FACD4 01D17824 */  and        $t7, $t6, $s1
    /* 109C88 800FACD8 10000004 */  b          .L800FACEC_109C9C
    /* 109C8C 800FACDC A60F0020 */   sh        $t7, 0x20($s0)
    /* 109C90 800FACE0 96180020 */  lhu        $t8, 0x20($s0)
  .L800FACE4_109C94:
    /* 109C94 800FACE4 37190040 */  ori        $t9, $t8, 0x40
    /* 109C98 800FACE8 A6190020 */  sh         $t9, 0x20($s0)
  .L800FACEC_109C9C:
    /* 109C9C 800FACEC 2610005C */  addiu      $s0, $s0, 0x5C
    /* 109CA0 800FACF0 5612FFF2 */  bnel       $s0, $s2, .L800FACBC_109C6C
    /* 109CA4 800FACF4 86040000 */   lh        $a0, 0x0($s0)
    /* 109CA8 800FACF8 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 109CAC 800FACFC 8FB00018 */  lw         $s0, 0x18($sp)
    /* 109CB0 800FAD00 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 109CB4 800FAD04 8FB20020 */  lw         $s2, 0x20($sp)
    /* 109CB8 800FAD08 03E00008 */  jr         $ra
    /* 109CBC 800FAD0C 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_800FAC90_109C40
