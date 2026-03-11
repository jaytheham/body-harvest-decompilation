nonmatching func_80011AC8_126C8, 0x4C

glabel func_80011AC8_126C8
    /* 126C8 80011AC8 3C030056 */  lui        $v1, %hi(D_55B0A0)
    /* 126CC 80011ACC 3C0F0058 */  lui        $t7, %hi(D_579D50)
    /* 126D0 80011AD0 2465B0A0 */  addiu      $a1, $v1, %lo(D_55B0A0)
    /* 126D4 80011AD4 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 126D8 80011AD8 3C028007 */  lui        $v0, %hi(D_8006AA74)
    /* 126DC 80011ADC 25EF9D50 */  addiu      $t7, $t7, %lo(D_579D50)
    /* 126E0 80011AE0 2442AA74 */  addiu      $v0, $v0, %lo(D_8006AA74)
    /* 126E4 80011AE4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 126E8 80011AE8 01E53023 */  subu       $a2, $t7, $a1
    /* 126EC 80011AEC AFA40020 */  sw         $a0, 0x20($sp)
    /* 126F0 80011AF0 AC440000 */  sw         $a0, 0x0($v0)
    /* 126F4 80011AF4 0C00407C */  jal        func_800101F0_10DF0
    /* 126F8 80011AF8 AFA6001C */   sw        $a2, 0x1C($sp)
    /* 126FC 80011AFC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 12700 80011B00 8FA6001C */  lw         $a2, 0x1C($sp)
    /* 12704 80011B04 8FB80020 */  lw         $t8, 0x20($sp)
    /* 12708 80011B08 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 1270C 80011B0C 03E00008 */  jr         $ra
    /* 12710 80011B10 00D81021 */   addu      $v0, $a2, $t8
endlabel func_80011AC8_126C8
