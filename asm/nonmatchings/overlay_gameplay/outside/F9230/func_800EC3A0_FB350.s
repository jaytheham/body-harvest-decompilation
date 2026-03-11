nonmatching func_800EC3A0_FB350, 0xB0

glabel func_800EC3A0_FB350
    /* FB350 800EC3A0 00047400 */  sll        $t6, $a0, 16
    /* FB354 800EC3A4 000E7C03 */  sra        $t7, $t6, 16
    /* FB358 800EC3A8 AFA40000 */  sw         $a0, 0x0($sp)
    /* FB35C 800EC3AC 24010004 */  addiu      $at, $zero, 0x4
    /* FB360 800EC3B0 11E10006 */  beq        $t7, $at, .L800EC3CC_FB37C
    /* FB364 800EC3B4 01E02025 */   or        $a0, $t7, $zero
    /* FB368 800EC3B8 24010005 */  addiu      $at, $zero, 0x5
    /* FB36C 800EC3BC 11E1001A */  beq        $t7, $at, .L800EC428_FB3D8
    /* FB370 800EC3C0 3C028005 */   lui       $v0, %hi(D_80048188)
    /* FB374 800EC3C4 03E00008 */  jr         $ra
    /* FB378 800EC3C8 00000000 */   nop
  .L800EC3CC_FB37C:
    /* FB37C 800EC3CC 3C028005 */  lui        $v0, %hi(D_80048188)
    /* FB380 800EC3D0 24428188 */  addiu      $v0, $v0, %lo(D_80048188)
    /* FB384 800EC3D4 8C580000 */  lw         $t8, 0x0($v0)
    /* FB388 800EC3D8 3C038015 */  lui        $v1, %hi(D_801575E0)
    /* FB38C 800EC3DC 246375E0 */  addiu      $v1, $v1, %lo(D_801575E0)
    /* FB390 800EC3E0 17000017 */  bnez       $t8, .L800EC440_FB3F0
    /* FB394 800EC3E4 00000000 */   nop
    /* FB398 800EC3E8 84790000 */  lh         $t9, 0x0($v1)
    /* FB39C 800EC3EC 3C058015 */  lui        $a1, %hi(D_80157600)
    /* FB3A0 800EC3F0 24A57600 */  addiu      $a1, $a1, %lo(D_80157600)
    /* FB3A4 800EC3F4 10990012 */  beq        $a0, $t9, .L800EC440_FB3F0
    /* FB3A8 800EC3F8 24067FFF */   addiu     $a2, $zero, 0x7FFF
    /* FB3AC 800EC3FC 3C098014 */  lui        $t1, %hi(D_8013E450)
    /* FB3B0 800EC400 24080001 */  addiu      $t0, $zero, 0x1
    /* FB3B4 800EC404 2529E450 */  addiu      $t1, $t1, %lo(D_8013E450)
    /* FB3B8 800EC408 AC480000 */  sw         $t0, 0x0($v0)
    /* FB3BC 800EC40C A4640000 */  sh         $a0, 0x0($v1)
    /* FB3C0 800EC410 ACA90420 */  sw         $t1, 0x420($a1)
    /* FB3C4 800EC414 A0A00424 */  sb         $zero, 0x424($a1)
    /* FB3C8 800EC418 A4660006 */  sh         $a2, 0x6($v1)
    /* FB3CC 800EC41C A466000A */  sh         $a2, 0xA($v1)
    /* FB3D0 800EC420 03E00008 */  jr         $ra
    /* FB3D4 800EC424 A466000E */   sh        $a2, 0xE($v1)
  .L800EC428_FB3D8:
    /* FB3D8 800EC428 3C038015 */  lui        $v1, %hi(D_801575E0)
    /* FB3DC 800EC42C 246375E0 */  addiu      $v1, $v1, %lo(D_801575E0)
    /* FB3E0 800EC430 24428188 */  addiu      $v0, $v0, %lo(D_80048188)
    /* FB3E4 800EC434 240A0001 */  addiu      $t2, $zero, 0x1
    /* FB3E8 800EC438 AC4A0000 */  sw         $t2, 0x0($v0)
    /* FB3EC 800EC43C A4640000 */  sh         $a0, 0x0($v1)
  .L800EC440_FB3F0:
    /* FB3F0 800EC440 03E00008 */  jr         $ra
    /* FB3F4 800EC444 00000000 */   nop
    /* FB3F8 800EC448 03E00008 */  jr         $ra
    /* FB3FC 800EC44C 00000000 */   nop
endlabel func_800EC3A0_FB350
