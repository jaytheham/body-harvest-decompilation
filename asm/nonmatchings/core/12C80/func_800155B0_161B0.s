nonmatching func_800155B0_161B0, 0x50

glabel func_800155B0_161B0
    /* 161B0 800155B0 3C0E8007 */  lui        $t6, %hi(D_8006AB88)
    /* 161B4 800155B4 8DCEAB88 */  lw         $t6, %lo(D_8006AB88)($t6)
    /* 161B8 800155B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 161BC 800155BC AFA40018 */  sw         $a0, 0x18($sp)
    /* 161C0 800155C0 AFA5001C */  sw         $a1, 0x1C($sp)
    /* 161C4 800155C4 87A5001A */  lh         $a1, 0x1A($sp)
    /* 161C8 800155C8 11C00009 */  beqz       $t6, .L800155F0_161F0
    /* 161CC 800155CC AFBF0014 */   sw        $ra, 0x14($sp)
    /* 161D0 800155D0 04A00007 */  bltz       $a1, .L800155F0_161F0
    /* 161D4 800155D4 3C048007 */   lui       $a0, %hi(D_8006AB10)
    /* 161D8 800155D8 0C007E08 */  jal        func_8001F820_20420
    /* 161DC 800155DC 8C84AB10 */   lw        $a0, %lo(D_8006AB10)($a0)
    /* 161E0 800155E0 3C048007 */  lui        $a0, %hi(D_8006AB10)
    /* 161E4 800155E4 8C84AB10 */  lw         $a0, %lo(D_8006AB10)($a0)
    /* 161E8 800155E8 0C008844 */  jal        alSndpSetPitch
    /* 161EC 800155EC 8FA5001C */   lw        $a1, 0x1C($sp)
  .L800155F0_161F0:
    /* 161F0 800155F0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 161F4 800155F4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 161F8 800155F8 03E00008 */  jr         $ra
    /* 161FC 800155FC 00000000 */   nop
endlabel func_800155B0_161B0
