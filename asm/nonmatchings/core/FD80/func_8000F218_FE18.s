nonmatching func_8000F218_FE18, 0x150

glabel func_8000F218_FE18
    /* FE18 8000F218 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* FE1C 8000F21C AFBF0014 */  sw         $ra, 0x14($sp)
    /* FE20 8000F220 3C048006 */  lui        $a0, %hi(D_80067F58)
    /* FE24 8000F224 3C058007 */  lui        $a1, %hi(D_8006A7E0)
    /* FE28 8000F228 24A5A7E0 */  addiu      $a1, $a1, %lo(D_8006A7E0)
    /* FE2C 8000F22C 24847F58 */  addiu      $a0, $a0, %lo(D_80067F58)
    /* FE30 8000F230 0C006B98 */  jal        osCreateMesgQueue
    /* FE34 8000F234 24060032 */   addiu     $a2, $zero, 0x32
    /* FE38 8000F238 3C048006 */  lui        $a0, %hi(D_80067F70)
    /* FE3C 8000F23C 3C058006 */  lui        $a1, %hi(D_80067FF0)
    /* FE40 8000F240 24A57FF0 */  addiu      $a1, $a1, %lo(D_80067FF0)
    /* FE44 8000F244 24847F70 */  addiu      $a0, $a0, %lo(D_80067F70)
    /* FE48 8000F248 0C006B98 */  jal        osCreateMesgQueue
    /* FE4C 8000F24C 24060010 */   addiu     $a2, $zero, 0x10
    /* FE50 8000F250 3C048006 */  lui        $a0, %hi(D_80067F88)
    /* FE54 8000F254 3C058007 */  lui        $a1, %hi(D_80068030)
    /* FE58 8000F258 24A58030 */  addiu      $a1, $a1, %lo(D_80068030)
    /* FE5C 8000F25C 24847F88 */  addiu      $a0, $a0, %lo(D_80067F88)
    /* FE60 8000F260 0C006B98 */  jal        osCreateMesgQueue
    /* FE64 8000F264 24060001 */   addiu     $a2, $zero, 0x1
    /* FE68 8000F268 3C048006 */  lui        $a0, %hi(D_80067FA0)
    /* FE6C 8000F26C 3C058006 */  lui        $a1, %hi(D_80067FE8)
    /* FE70 8000F270 24A57FE8 */  addiu      $a1, $a1, %lo(D_80067FE8)
    /* FE74 8000F274 24847FA0 */  addiu      $a0, $a0, %lo(D_80067FA0)
    /* FE78 8000F278 0C006B98 */  jal        osCreateMesgQueue
    /* FE7C 8000F27C 24060001 */   addiu     $a2, $zero, 0x1
    /* FE80 8000F280 3C058006 */  lui        $a1, %hi(D_80067FA0)
    /* FE84 8000F284 3C068007 */  lui        $a2, %hi(D_80068038)
    /* FE88 8000F288 8CC68038 */  lw         $a2, %lo(D_80068038)($a2)
    /* FE8C 8000F28C 24A57FA0 */  addiu      $a1, $a1, %lo(D_80067FA0)
    /* FE90 8000F290 0C007324 */  jal        osSetEventMesg
    /* FE94 8000F294 24040004 */   addiu     $a0, $zero, 0x4
    /* FE98 8000F298 3C048006 */  lui        $a0, %hi(D_80067FB8)
    /* FE9C 8000F29C 3C058006 */  lui        $a1, %hi(D_80067FEC)
    /* FEA0 8000F2A0 24A57FEC */  addiu      $a1, $a1, %lo(D_80067FEC)
    /* FEA4 8000F2A4 24847FB8 */  addiu      $a0, $a0, %lo(D_80067FB8)
    /* FEA8 8000F2A8 0C006B98 */  jal        osCreateMesgQueue
    /* FEAC 8000F2AC 24060001 */   addiu     $a2, $zero, 0x1
    /* FEB0 8000F2B0 3C048006 */  lui        $a0, %hi(D_80067FB8)
    /* FEB4 8000F2B4 3C058007 */  lui        $a1, %hi(D_80068038)
    /* FEB8 8000F2B8 8CA58038 */  lw         $a1, %lo(D_80068038)($a1)
    /* FEBC 8000F2BC 24847FB8 */  addiu      $a0, $a0, %lo(D_80067FB8)
    /* FEC0 8000F2C0 0C007C9C */  jal        osViSetEvent
    /* FEC4 8000F2C4 24060001 */   addiu     $a2, $zero, 0x1
    /* FEC8 8000F2C8 3C048007 */  lui        $a0, %hi(D_8006A8D0)
    /* FECC 8000F2CC 3C058007 */  lui        $a1, %hi(D_8006A8C8)
    /* FED0 8000F2D0 24A5A8C8 */  addiu      $a1, $a1, %lo(D_8006A8C8)
    /* FED4 8000F2D4 2484A8D0 */  addiu      $a0, $a0, %lo(D_8006A8D0)
    /* FED8 8000F2D8 0C006B98 */  jal        osCreateMesgQueue
    /* FEDC 8000F2DC 24060001 */   addiu     $a2, $zero, 0x1
    /* FEE0 8000F2E0 3C048007 */  lui        $a0, %hi(D_8006A8B0)
    /* FEE4 8000F2E4 3C058007 */  lui        $a1, %hi(D_8006A8A8)
    /* FEE8 8000F2E8 24A5A8A8 */  addiu      $a1, $a1, %lo(D_8006A8A8)
    /* FEEC 8000F2EC 2484A8B0 */  addiu      $a0, $a0, %lo(D_8006A8B0)
    /* FEF0 8000F2F0 0C006B98 */  jal        osCreateMesgQueue
    /* FEF4 8000F2F4 24060001 */   addiu     $a2, $zero, 0x1
    /* FEF8 8000F2F8 3C048007 */  lui        $a0, %hi(D_8006A8F0)
    /* FEFC 8000F2FC 3C058007 */  lui        $a1, %hi(D_8006A8E8)
    /* FF00 8000F300 24A5A8E8 */  addiu      $a1, $a1, %lo(D_8006A8E8)
    /* FF04 8000F304 2484A8F0 */  addiu      $a0, $a0, %lo(D_8006A8F0)
    /* FF08 8000F308 0C006B98 */  jal        osCreateMesgQueue
    /* FF0C 8000F30C 24060001 */   addiu     $a2, $zero, 0x1
    /* FF10 8000F310 3C048007 */  lui        $a0, %hi(D_8006A908)
    /* FF14 8000F314 3C058007 */  lui        $a1, %hi(D_8006A920)
    /* FF18 8000F318 24A5A920 */  addiu      $a1, $a1, %lo(D_8006A920)
    /* FF1C 8000F31C 2484A908 */  addiu      $a0, $a0, %lo(D_8006A908)
    /* FF20 8000F320 0C006B98 */  jal        osCreateMesgQueue
    /* FF24 8000F324 24060008 */   addiu     $a2, $zero, 0x8
    /* FF28 8000F328 3C048006 */  lui        $a0, %hi(D_80067FD0)
    /* FF2C 8000F32C 3C058007 */  lui        $a1, %hi(D_80068034)
    /* FF30 8000F330 24A58034 */  addiu      $a1, $a1, %lo(D_80068034)
    /* FF34 8000F334 24847FD0 */  addiu      $a0, $a0, %lo(D_80067FD0)
    /* FF38 8000F338 0C006B98 */  jal        osCreateMesgQueue
    /* FF3C 8000F33C 24060001 */   addiu     $a2, $zero, 0x1
    /* FF40 8000F340 3C048007 */  lui        $a0, %hi(D_80068060)
    /* FF44 8000F344 3C058007 */  lui        $a1, %hi(D_80068040)
    /* FF48 8000F348 24A58040 */  addiu      $a1, $a1, %lo(D_80068040)
    /* FF4C 8000F34C 24848060 */  addiu      $a0, $a0, %lo(D_80068060)
    /* FF50 8000F350 0C006B98 */  jal        osCreateMesgQueue
    /* FF54 8000F354 24060008 */   addiu     $a2, $zero, 0x8
    /* FF58 8000F358 8FBF0014 */  lw         $ra, 0x14($sp)
    /* FF5C 8000F35C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* FF60 8000F360 03E00008 */  jr         $ra
    /* FF64 8000F364 00000000 */   nop
endlabel func_8000F218_FE18
