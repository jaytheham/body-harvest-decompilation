nonmatching debug_printModelSegmentEnd, 0xB8

glabel debug_printModelSegmentEnd
    /* 1286C 80011C6C 3C0F803E */  lui        $t7, %hi(D_803DA800)
    /* 12870 80011C70 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 12874 80011C74 25EFA800 */  addiu      $t7, $t7, %lo(D_803DA800)
    /* 12878 80011C78 01E4C023 */  subu       $t8, $t7, $a0
    /* 1287C 80011C7C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 12880 80011C80 AFA40020 */  sw         $a0, 0x20($sp)
    /* 12884 80011C84 1F000007 */  bgtz       $t8, .L80011CA4_128A4
    /* 12888 80011C88 AFB80018 */   sw        $t8, 0x18($sp)
    /* 1288C 80011C8C 3C048004 */  lui        $a0, %hi(D_80038104)
    /* 12890 80011C90 3C058004 */  lui        $a1, %hi(D_8003810C)
    /* 12894 80011C94 24A5810C */  addiu      $a1, $a1, %lo(D_8003810C)
    /* 12898 80011C98 24848104 */  addiu      $a0, $a0, %lo(D_80038104)
    /* 1289C 80011C9C 0C003BC0 */  jal        sourceTaggedPrintF
    /* 128A0 80011CA0 2406047A */   addiu     $a2, $zero, 0x47A
  .L80011CA4_128A4:
    /* 128A4 80011CA4 3C048004 */  lui        $a0, %hi(D_8003811C)
    /* 128A8 80011CA8 0C00731B */  jal        osSyncPrintf
    /* 128AC 80011CAC 2484811C */   addiu     $a0, $a0, %lo(D_8003811C)
    /* 128B0 80011CB0 3C048004 */  lui        $a0, %hi(D_8003813C)
    /* 128B4 80011CB4 2484813C */  addiu      $a0, $a0, %lo(D_8003813C)
    /* 128B8 80011CB8 0C00731B */  jal        osSyncPrintf
    /* 128BC 80011CBC 8FA50020 */   lw        $a1, 0x20($sp)
    /* 128C0 80011CC0 3C048004 */  lui        $a0, %hi(D_80038158)
    /* 128C4 80011CC4 3C05803E */  lui        $a1, %hi(D_803DA800)
    /* 128C8 80011CC8 24A5A800 */  addiu      $a1, $a1, %lo(D_803DA800)
    /* 128CC 80011CCC 0C00731B */  jal        osSyncPrintf
    /* 128D0 80011CD0 24848158 */   addiu     $a0, $a0, %lo(D_80038158)
    /* 128D4 80011CD4 8FA50018 */  lw         $a1, 0x18($sp)
    /* 128D8 80011CD8 3C013F50 */  lui        $at, (0x3F500000 >> 16)
    /* 128DC 80011CDC 44814800 */  mtc1       $at, $f9
    /* 128E0 80011CE0 44852000 */  mtc1       $a1, $f4
    /* 128E4 80011CE4 44804000 */  mtc1       $zero, $f8
    /* 128E8 80011CE8 3C048004 */  lui        $a0, %hi(D_80038174)
    /* 128EC 80011CEC 468021A1 */  cvt.d.w    $f6, $f4
    /* 128F0 80011CF0 24848174 */  addiu      $a0, $a0, %lo(D_80038174)
    /* 128F4 80011CF4 46283282 */  mul.d      $f10, $f6, $f8
    /* 128F8 80011CF8 44075000 */  mfc1       $a3, $f10
    /* 128FC 80011CFC 44065800 */  mfc1       $a2, $f11
    /* 12900 80011D00 0C00731B */  jal        osSyncPrintf
    /* 12904 80011D04 00000000 */   nop
    /* 12908 80011D08 3C048004 */  lui        $a0, %hi(D_80038198)
    /* 1290C 80011D0C 0C00731B */  jal        osSyncPrintf
    /* 12910 80011D10 24848198 */   addiu     $a0, $a0, %lo(D_80038198)
    /* 12914 80011D14 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 12918 80011D18 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 1291C 80011D1C 03E00008 */  jr         $ra
    /* 12920 80011D20 00000000 */   nop
endlabel debug_printModelSegmentEnd
