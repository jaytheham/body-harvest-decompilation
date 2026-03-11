nonmatching func_800AF3B8_BE368, 0xBC

glabel func_800AF3B8_BE368
    /* BE368 800AF3B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* BE36C 800AF3BC AFBF0014 */  sw         $ra, 0x14($sp)
    /* BE370 800AF3C0 90830009 */  lbu        $v1, 0x9($a0)
    /* BE374 800AF3C4 3C028022 */  lui        $v0, %hi(D_8022378E)
    /* BE378 800AF3C8 00803825 */  or         $a3, $a0, $zero
    /* BE37C 800AF3CC 00037080 */  sll        $t6, $v1, 2
    /* BE380 800AF3D0 01C37021 */  addu       $t6, $t6, $v1
    /* BE384 800AF3D4 000E7080 */  sll        $t6, $t6, 2
    /* BE388 800AF3D8 004E1021 */  addu       $v0, $v0, $t6
    /* BE38C 800AF3DC 9042378E */  lbu        $v0, %lo(D_8022378E)($v0)
    /* BE390 800AF3E0 3C048014 */  lui        $a0, %hi(D_80142BA0)
    /* BE394 800AF3E4 24842BA0 */  addiu      $a0, $a0, %lo(D_80142BA0)
    /* BE398 800AF3E8 00027880 */  sll        $t7, $v0, 2
    /* BE39C 800AF3EC 01E27823 */  subu       $t7, $t7, $v0
    /* BE3A0 800AF3F0 000F78C0 */  sll        $t7, $t7, 3
    /* BE3A4 800AF3F4 01E27821 */  addu       $t7, $t7, $v0
    /* BE3A8 800AF3F8 000F78C0 */  sll        $t7, $t7, 3
    /* BE3AC 800AF3FC 11E00017 */  beqz       $t7, .L800AF45C_BE40C
    /* BE3B0 800AF400 00602825 */   or        $a1, $v1, $zero
    /* BE3B4 800AF404 24010014 */  addiu      $at, $zero, 0x14
    /* BE3B8 800AF408 01E1001A */  div        $zero, $t7, $at
    /* BE3BC 800AF40C 00003012 */  mflo       $a2
    /* BE3C0 800AF410 3C048014 */  lui        $a0, %hi(D_80142B7C)
    /* BE3C4 800AF414 24842B7C */  addiu      $a0, $a0, %lo(D_80142B7C)
    /* BE3C8 800AF418 AFAF001C */  sw         $t7, 0x1C($sp)
    /* BE3CC 800AF41C 0C00731B */  jal        osSyncPrintf
    /* BE3D0 800AF420 AFA70020 */   sw        $a3, 0x20($sp)
    /* BE3D4 800AF424 8FA40020 */  lw         $a0, 0x20($sp)
    /* BE3D8 800AF428 8FA2001C */  lw         $v0, 0x1C($sp)
    /* BE3DC 800AF42C 24180002 */  addiu      $t8, $zero, 0x2
    /* BE3E0 800AF430 3C198015 */  lui        $t9, %hi(D_8014F820)
    /* BE3E4 800AF434 A0980000 */  sb         $t8, 0x0($a0)
    /* BE3E8 800AF438 8F39F820 */  lw         $t9, %lo(D_8014F820)($t9)
    /* BE3EC 800AF43C 3C09800B */  lui        $t1, %hi(func_800AF390_BE340)
    /* BE3F0 800AF440 2529F390 */  addiu      $t1, $t1, %lo(func_800AF390_BE340)
    /* BE3F4 800AF444 00594021 */  addu       $t0, $v0, $t9
    /* BE3F8 800AF448 AC880004 */  sw         $t0, 0x4($a0)
    /* BE3FC 800AF44C 0C02B915 */  jal        func_800AE454_BD404
    /* BE400 800AF450 AC89000C */   sw        $t1, 0xC($a0)
    /* BE404 800AF454 10000004 */  b          .L800AF468_BE418
    /* BE408 800AF458 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800AF45C_BE40C:
    /* BE40C 800AF45C 0C00731B */  jal        osSyncPrintf
    /* BE410 800AF460 00602825 */   or        $a1, $v1, $zero
    /* BE414 800AF464 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800AF468_BE418:
    /* BE418 800AF468 27BD0020 */  addiu      $sp, $sp, 0x20
    /* BE41C 800AF46C 03E00008 */  jr         $ra
    /* BE420 800AF470 00000000 */   nop
endlabel func_800AF3B8_BE368
