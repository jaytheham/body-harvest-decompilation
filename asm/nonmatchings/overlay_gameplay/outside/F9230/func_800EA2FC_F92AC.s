nonmatching func_800EA2FC_F92AC, 0xEC

glabel func_800EA2FC_F92AC
    /* F92AC 800EA2FC 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* F92B0 800EA300 AFA40028 */  sw         $a0, 0x28($sp)
    /* F92B4 800EA304 87AE002A */  lh         $t6, 0x2A($sp)
    /* F92B8 800EA308 3C058015 */  lui        $a1, %hi(D_80157600)
    /* F92BC 800EA30C AFBF001C */  sw         $ra, 0x1C($sp)
    /* F92C0 800EA310 29C1006E */  slti       $at, $t6, 0x6E
    /* F92C4 800EA314 1420000C */  bnez       $at, .L800EA348_F92F8
    /* F92C8 800EA318 24A57600 */   addiu     $a1, $a1, %lo(D_80157600)
    /* F92CC 800EA31C 3C058015 */  lui        $a1, %hi(D_80157600)
    /* F92D0 800EA320 24A57600 */  addiu      $a1, $a1, %lo(D_80157600)
    /* F92D4 800EA324 3C078014 */  lui        $a3, %hi(D_8013ECC8)
    /* F92D8 800EA328 240F0001 */  addiu      $t7, $zero, 0x1
    /* F92DC 800EA32C AFAF0010 */  sw         $t7, 0x10($sp)
    /* F92E0 800EA330 8CE7ECC8 */  lw         $a3, %lo(D_8013ECC8)($a3)
    /* F92E4 800EA334 8CA40404 */  lw         $a0, 0x404($a1)
    /* F92E8 800EA338 0C00337F */  jal        func_8000CDFC_D9FC
    /* F92EC 800EA33C 24060010 */   addiu     $a2, $zero, 0x10
    /* F92F0 800EA340 10000026 */  b          .L800EA3DC_F938C
    /* F92F4 800EA344 8FBF001C */   lw        $ra, 0x1C($sp)
  .L800EA348_F92F8:
    /* F92F8 800EA348 87B8002A */  lh         $t8, 0x2A($sp)
    /* F92FC 800EA34C 8CB9040C */  lw         $t9, 0x40C($a1)
    /* F9300 800EA350 87AA002A */  lh         $t2, 0x2A($sp)
    /* F9304 800EA354 24060010 */  addiu      $a2, $zero, 0x10
    /* F9308 800EA358 17190005 */  bne        $t8, $t9, .L800EA370_F9320
    /* F930C 800EA35C 3C0D8014 */   lui       $t5, %hi(D_8013E5AC)
    /* F9310 800EA360 8CA80404 */  lw         $t0, 0x404($a1)
    /* F9314 800EA364 8D090E50 */  lw         $t1, 0xE50($t0)
    /* F9318 800EA368 5520001C */  bnel       $t1, $zero, .L800EA3DC_F938C
    /* F931C 800EA36C 8FBF001C */   lw        $ra, 0x1C($sp)
  .L800EA370_F9320:
    /* F9320 800EA370 87AB002A */  lh         $t3, 0x2A($sp)
    /* F9324 800EA374 25ADE5AC */  addiu      $t5, $t5, %lo(D_8013E5AC)
    /* F9328 800EA378 240E0001 */  addiu      $t6, $zero, 0x1
    /* F932C 800EA37C 000B6080 */  sll        $t4, $t3, 2
    /* F9330 800EA380 018B6023 */  subu       $t4, $t4, $t3
    /* F9334 800EA384 000C6080 */  sll        $t4, $t4, 2
    /* F9338 800EA388 018B6021 */  addu       $t4, $t4, $t3
    /* F933C 800EA38C 000C6080 */  sll        $t4, $t4, 2
    /* F9340 800EA390 018D1021 */  addu       $v0, $t4, $t5
    /* F9344 800EA394 ACAA040C */  sw         $t2, 0x40C($a1)
    /* F9348 800EA398 8C470000 */  lw         $a3, 0x0($v0)
    /* F934C 800EA39C AFA20024 */  sw         $v0, 0x24($sp)
    /* F9350 800EA3A0 AFAE0010 */  sw         $t6, 0x10($sp)
    /* F9354 800EA3A4 0C00337F */  jal        func_8000CDFC_D9FC
    /* F9358 800EA3A8 8CA40404 */   lw        $a0, 0x404($a1)
    /* F935C 800EA3AC 8FA20024 */  lw         $v0, 0x24($sp)
    /* F9360 800EA3B0 3C058015 */  lui        $a1, %hi(D_80157600)
    /* F9364 800EA3B4 24A57600 */  addiu      $a1, $a1, %lo(D_80157600)
    /* F9368 800EA3B8 8C4F0004 */  lw         $t7, 0x4($v0)
    /* F936C 800EA3BC 24060010 */  addiu      $a2, $zero, 0x10
    /* F9370 800EA3C0 31F80001 */  andi       $t8, $t7, 0x1
    /* F9374 800EA3C4 53000005 */  beql       $t8, $zero, .L800EA3DC_F938C
    /* F9378 800EA3C8 8FBF001C */   lw        $ra, 0x1C($sp)
    /* F937C 800EA3CC 8CA40404 */  lw         $a0, 0x404($a1)
    /* F9380 800EA3D0 0C00349E */  jal        func_8000D278_DE78
    /* F9384 800EA3D4 8C470008 */   lw        $a3, 0x8($v0)
    /* F9388 800EA3D8 8FBF001C */  lw         $ra, 0x1C($sp)
  .L800EA3DC_F938C:
    /* F938C 800EA3DC 27BD0028 */  addiu      $sp, $sp, 0x28
    /* F9390 800EA3E0 03E00008 */  jr         $ra
    /* F9394 800EA3E4 00000000 */   nop
endlabel func_800EA2FC_F92AC
