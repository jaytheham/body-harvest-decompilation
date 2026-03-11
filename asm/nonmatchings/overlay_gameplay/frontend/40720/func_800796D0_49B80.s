nonmatching func_800796D0_49B80, 0x860

glabel func_800796D0_49B80
    /* 49B80 800796D0 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 49B84 800796D4 AFBF0054 */  sw         $ra, 0x54($sp)
    /* 49B88 800796D8 AFB7004C */  sw         $s7, 0x4C($sp)
    /* 49B8C 800796DC AFA50064 */  sw         $a1, 0x64($sp)
    /* 49B90 800796E0 30AEFFFF */  andi       $t6, $a1, 0xFFFF
    /* 49B94 800796E4 01C02825 */  or         $a1, $t6, $zero
    /* 49B98 800796E8 AFBE0050 */  sw         $fp, 0x50($sp)
    /* 49B9C 800796EC AFB60048 */  sw         $s6, 0x48($sp)
    /* 49BA0 800796F0 AFB50044 */  sw         $s5, 0x44($sp)
    /* 49BA4 800796F4 AFB40040 */  sw         $s4, 0x40($sp)
    /* 49BA8 800796F8 AFB3003C */  sw         $s3, 0x3C($sp)
    /* 49BAC 800796FC AFB20038 */  sw         $s2, 0x38($sp)
    /* 49BB0 80079700 AFB10034 */  sw         $s1, 0x34($sp)
    /* 49BB4 80079704 AFB00030 */  sw         $s0, 0x30($sp)
    /* 49BB8 80079708 F7B60028 */  sdc1       $f22, 0x28($sp)
    /* 49BBC 8007970C F7B40020 */  sdc1       $f20, 0x20($sp)
    /* 49BC0 80079710 A7A0005E */  sh         $zero, 0x5E($sp)
    /* 49BC4 80079714 0C01E527 */  jal        func_8007949C_4994C
    /* 49BC8 80079718 0000B825 */   or        $s7, $zero, $zero
    /* 49BCC 8007971C 0C004D33 */  jal        func_800134CC_140CC
    /* 49BD0 80079720 00000000 */   nop
    /* 49BD4 80079724 3C014396 */  lui        $at, (0x43960000 >> 16)
    /* 49BD8 80079728 4481B000 */  mtc1       $at, $f22
    /* 49BDC 8007972C 3C01437F */  lui        $at, (0x437F0000 >> 16)
    /* 49BE0 80079730 3C1E8003 */  lui        $fp, %hi(D_800313D0)
    /* 49BE4 80079734 4481A000 */  mtc1       $at, $f20
    /* 49BE8 80079738 27DE13D0 */  addiu      $fp, $fp, %lo(D_800313D0)
    /* 49BEC 8007973C 2416003C */  addiu      $s6, $zero, 0x3C
    /* 49BF0 80079740 2AE107D0 */  slti       $at, $s7, 0x7D0
  .L80079744_49BF4:
    /* 49BF4 80079744 10200004 */  beqz       $at, .L80079758_49C08
    /* 49BF8 80079748 00000000 */   nop
    /* 49BFC 8007974C 26F70001 */  addiu      $s7, $s7, 0x1
    /* 49C00 80079750 00177C00 */  sll        $t7, $s7, 16
    /* 49C04 80079754 000FBC03 */  sra        $s7, $t7, 16
  .L80079758_49C08:
    /* 49C08 80079758 0C01E468 */  jal        func_800791A0_49650
    /* 49C0C 8007975C 00002025 */   or        $a0, $zero, $zero
    /* 49C10 80079760 0C002BF7 */  jal        func_8000AFDC_BBDC
    /* 49C14 80079764 00000000 */   nop
    /* 49C18 80079768 3C04800B */  lui        $a0, %hi(D_800ADCE0)
    /* 49C1C 8007976C 2484DCE0 */  addiu      $a0, $a0, %lo(D_800ADCE0)
    /* 49C20 80079770 240500FF */  addiu      $a1, $zero, 0xFF
    /* 49C24 80079774 00003025 */  or         $a2, $zero, $zero
    /* 49C28 80079778 0C002929 */  jal        drawText
    /* 49C2C 8007977C 00003825 */   or        $a3, $zero, $zero
    /* 49C30 80079780 3C04800B */  lui        $a0, %hi(D_800ADCE4)
    /* 49C34 80079784 2484DCE4 */  addiu      $a0, $a0, %lo(D_800ADCE4)
    /* 49C38 80079788 0C002929 */  jal        drawText
    /* 49C3C 8007978C 240500FF */   addiu     $a1, $zero, 0xFF
    /* 49C40 80079790 87C20000 */  lh         $v0, 0x0($fp)
    /* 49C44 80079794 3C04800B */  lui        $a0, %hi(D_800ADCE8)
    /* 49C48 80079798 24010001 */  addiu      $at, $zero, 0x1
    /* 49C4C 8007979C 10400006 */  beqz       $v0, .L800797B8_49C68
    /* 49C50 800797A0 2484DCE8 */   addiu     $a0, $a0, %lo(D_800ADCE8)
    /* 49C54 800797A4 1041000F */  beq        $v0, $at, .L800797E4_49C94
    /* 49C58 800797A8 24050080 */   addiu     $a1, $zero, 0x80
    /* 49C5C 800797AC 24010002 */  addiu      $at, $zero, 0x2
    /* 49C60 800797B0 10410006 */  beq        $v0, $at, .L800797CC_49C7C
    /* 49C64 800797B4 24050080 */   addiu     $a1, $zero, 0x80
  .L800797B8_49C68:
    /* 49C68 800797B8 24050080 */  addiu      $a1, $zero, 0x80
    /* 49C6C 800797BC 0C002929 */  jal        drawText
    /* 49C70 800797C0 00003025 */   or        $a2, $zero, $zero
    /* 49C74 800797C4 1000000B */  b          .L800797F4_49CA4
    /* 49C78 800797C8 00000000 */   nop
  .L800797CC_49C7C:
    /* 49C7C 800797CC 3C04800B */  lui        $a0, %hi(D_800ADCF8)
    /* 49C80 800797D0 2484DCF8 */  addiu      $a0, $a0, %lo(D_800ADCF8)
    /* 49C84 800797D4 0C002929 */  jal        drawText
    /* 49C88 800797D8 00003025 */   or        $a2, $zero, $zero
    /* 49C8C 800797DC 10000005 */  b          .L800797F4_49CA4
    /* 49C90 800797E0 00000000 */   nop
  .L800797E4_49C94:
    /* 49C94 800797E4 3C04800B */  lui        $a0, %hi(D_800ADD08)
    /* 49C98 800797E8 2484DD08 */  addiu      $a0, $a0, %lo(D_800ADD08)
    /* 49C9C 800797EC 0C002929 */  jal        drawText
    /* 49CA0 800797F0 00003025 */   or        $a2, $zero, $zero
  .L800797F4_49CA4:
    /* 49CA4 800797F4 3C04800B */  lui        $a0, %hi(D_800ADD18)
    /* 49CA8 800797F8 241900FA */  addiu      $t9, $zero, 0xFA
    /* 49CAC 800797FC AFB90010 */  sw         $t9, 0x10($sp)
    /* 49CB0 80079800 2484DD18 */  addiu      $a0, $a0, %lo(D_800ADD18)
    /* 49CB4 80079804 24050014 */  addiu      $a1, $zero, 0x14
    /* 49CB8 80079808 24060032 */  addiu      $a2, $zero, 0x32
    /* 49CBC 8007980C 0C002929 */  jal        drawText
    /* 49CC0 80079810 2407012C */   addiu     $a3, $zero, 0x12C
    /* 49CC4 80079814 0000A825 */  or         $s5, $zero, $zero
    /* 49CC8 80079818 00151140 */  sll        $v0, $s5, 5
  .L8007981C_49CCC:
    /* 49CCC 8007981C 00551023 */  subu       $v0, $v0, $s5
    /* 49CD0 80079820 00021080 */  sll        $v0, $v0, 2
    /* 49CD4 80079824 00551021 */  addu       $v0, $v0, $s5
    /* 49CD8 80079828 00021040 */  sll        $v0, $v0, 1
    /* 49CDC 8007982C 24490014 */  addiu      $t1, $v0, 0x14
    /* 49CE0 80079830 02E9082A */  slt        $at, $s7, $t1
    /* 49CE4 80079834 1420017F */  bnez       $at, .L80079E34_4A2E4
    /* 49CE8 80079838 24010004 */   addiu     $at, $zero, 0x4
    /* 49CEC 8007983C 12A10003 */  beq        $s5, $at, .L8007984C_49CFC
    /* 49CF0 80079840 244A010E */   addiu     $t2, $v0, 0x10E
    /* 49CF4 80079844 02EA082A */  slt        $at, $s7, $t2
    /* 49CF8 80079848 1020017A */  beqz       $at, .L80079E34_4A2E4
  .L8007984C_49CFC:
    /* 49CFC 8007984C 02E21823 */   subu      $v1, $s7, $v0
    /* 49D00 80079850 2463FFEC */  addiu      $v1, $v1, -0x14
    /* 49D04 80079854 2861001F */  slti       $at, $v1, 0x1F
    /* 49D08 80079858 14200176 */  bnez       $at, .L80079E34_4A2E4
    /* 49D0C 8007985C 24010004 */   addiu     $at, $zero, 0x4
    /* 49D10 80079860 12A10021 */  beq        $s5, $at, .L800798E8_49D98
    /* 49D14 80079864 2470FFCE */   addiu     $s0, $v1, -0x32
    /* 49D18 80079868 00101880 */  sll        $v1, $s0, 2
    /* 49D1C 8007986C 00701823 */  subu       $v1, $v1, $s0
    /* 49D20 80079870 00031840 */  sll        $v1, $v1, 1
    /* 49D24 80079874 2463FC7C */  addiu      $v1, $v1, -0x384
    /* 49D28 80079878 04610003 */  bgez       $v1, .L80079888_49D38
    /* 49D2C 8007987C 3C04800B */   lui       $a0, %hi(D_800ADD1C)
    /* 49D30 80079880 10000002 */  b          .L8007988C_49D3C
    /* 49D34 80079884 00001025 */   or        $v0, $zero, $zero
  .L80079888_49D38:
    /* 49D38 80079888 00601025 */  or         $v0, $v1, $zero
  .L8007988C_49D3C:
    /* 49D3C 8007988C 2841012D */  slti       $at, $v0, 0x12D
    /* 49D40 80079890 14200003 */  bnez       $at, .L800798A0_49D50
    /* 49D44 80079894 2484DD1C */   addiu     $a0, $a0, %lo(D_800ADD1C)
    /* 49D48 80079898 10000006 */  b          .L800798B4_49D64
    /* 49D4C 8007989C 2413012C */   addiu     $s3, $zero, 0x12C
  .L800798A0_49D50:
    /* 49D50 800798A0 04610003 */  bgez       $v1, .L800798B0_49D60
    /* 49D54 800798A4 00601025 */   or        $v0, $v1, $zero
    /* 49D58 800798A8 10000001 */  b          .L800798B0_49D60
    /* 49D5C 800798AC 00001025 */   or        $v0, $zero, $zero
  .L800798B0_49D60:
    /* 49D60 800798B0 00409825 */  or         $s3, $v0, $zero
  .L800798B4_49D64:
    /* 49D64 800798B4 0C002929 */  jal        drawText
    /* 49D68 800798B8 02602825 */   or        $a1, $s3, $zero
    /* 49D6C 800798BC 44932000 */  mtc1       $s3, $f4
    /* 49D70 800798C0 3C04800B */  lui        $a0, %hi(D_800ADD20)
    /* 49D74 800798C4 2484DD20 */  addiu      $a0, $a0, %lo(D_800ADD20)
    /* 49D78 800798C8 468021A0 */  cvt.s.w    $f6, $f4
    /* 49D7C 800798CC 46163203 */  div.s      $f8, $f6, $f22
    /* 49D80 800798D0 46144282 */  mul.s      $f10, $f8, $f20
    /* 49D84 800798D4 460AA401 */  sub.s      $f16, $f20, $f10
    /* 49D88 800798D8 4600848D */  trunc.w.s  $f18, $f16
    /* 49D8C 800798DC 44059000 */  mfc1       $a1, $f18
    /* 49D90 800798E0 0C002929 */  jal        drawText
    /* 49D94 800798E4 00000000 */   nop
  .L800798E8_49D98:
    /* 49D98 800798E8 00156080 */  sll        $t4, $s5, 2
    /* 49D9C 800798EC 000C6823 */  negu       $t5, $t4
    /* 49DA0 800798F0 3C078003 */  lui        $a3, %hi(D_80031548)
    /* 49DA4 800798F4 00ED3821 */  addu       $a3, $a3, $t5
    /* 49DA8 800798F8 3C04800B */  lui        $a0, %hi(D_800ADD24)
    /* 49DAC 800798FC 2484DD24 */  addiu      $a0, $a0, %lo(D_800ADD24)
    /* 49DB0 80079900 8CE71548 */  lw         $a3, %lo(D_80031548)($a3)
    /* 49DB4 80079904 24050080 */  addiu      $a1, $zero, 0x80
    /* 49DB8 80079908 0C002929 */  jal        drawText
    /* 49DBC 8007990C 24060002 */   addiu     $a2, $zero, 0x2
    /* 49DC0 80079910 2A010010 */  slti       $at, $s0, 0x10
    /* 49DC4 80079914 14200029 */  bnez       $at, .L800799BC_49E6C
    /* 49DC8 80079918 24010004 */   addiu     $at, $zero, 0x4
    /* 49DCC 8007991C 16A10005 */  bne        $s5, $at, .L80079934_49DE4
    /* 49DD0 80079920 3C04800B */   lui       $a0, %hi(D_800ADD2C)
    /* 49DD4 80079924 0C0015DF */  jal        func_8000577C_637C
    /* 49DD8 80079928 00000000 */   nop
    /* 49DDC 8007992C 10000006 */  b          .L80079948_49DF8
    /* 49DE0 80079930 00000000 */   nop
  .L80079934_49DE4:
    /* 49DE4 80079934 2484DD2C */  addiu      $a0, $a0, %lo(D_800ADD2C)
    /* 49DE8 80079938 00002825 */  or         $a1, $zero, $zero
    /* 49DEC 8007993C 240600FF */  addiu      $a2, $zero, 0xFF
    /* 49DF0 80079940 0C002929 */  jal        drawText
    /* 49DF4 80079944 00003825 */   or        $a3, $zero, $zero
  .L80079948_49DF8:
    /* 49DF8 80079948 3C04800B */  lui        $a0, %hi(D_800ADD30)
    /* 49DFC 8007994C 2484DD30 */  addiu      $a0, $a0, %lo(D_800ADD30)
    /* 49E00 80079950 0C002929 */  jal        drawText
    /* 49E04 80079954 24050800 */   addiu     $a1, $zero, 0x800
    /* 49E08 80079958 00157080 */  sll        $t6, $s5, 2
    /* 49E0C 8007995C 01D57021 */  addu       $t6, $t6, $s5
    /* 49E10 80079960 000E7080 */  sll        $t6, $t6, 2
    /* 49E14 80079964 3C188005 */  lui        $t8, %hi(D_80048008)
    /* 49E18 80079968 27188008 */  addiu      $t8, $t8, %lo(D_80048008)
    /* 49E1C 8007996C 000E7823 */  negu       $t7, $t6
    /* 49E20 80079970 01F8A021 */  addu       $s4, $t7, $t8
    /* 49E24 80079974 0C01E51B */  jal        func_8007946C_4991C
    /* 49E28 80079978 02802025 */   or        $a0, $s4, $zero
    /* 49E2C 8007997C 24190006 */  addiu      $t9, $zero, 0x6
    /* 49E30 80079980 03222823 */  subu       $a1, $t9, $v0
    /* 49E34 80079984 3C04800B */  lui        $a0, %hi(D_800ADD34)
    /* 49E38 80079988 2484DD34 */  addiu      $a0, $a0, %lo(D_800ADD34)
    /* 49E3C 8007998C 04A10003 */  bgez       $a1, .L8007999C_49E4C
    /* 49E40 80079990 00054843 */   sra       $t1, $a1, 1
    /* 49E44 80079994 24A10001 */  addiu      $at, $a1, 0x1
    /* 49E48 80079998 00014843 */  sra        $t1, $at, 1
  .L8007999C_49E4C:
    /* 49E4C 8007999C 25250004 */  addiu      $a1, $t1, 0x4
    /* 49E50 800799A0 24060003 */  addiu      $a2, $zero, 0x3
    /* 49E54 800799A4 0C002929 */  jal        drawText
    /* 49E58 800799A8 02803825 */   or        $a3, $s4, $zero
    /* 49E5C 800799AC 3C04800B */  lui        $a0, %hi(D_800ADD3C)
    /* 49E60 800799B0 2484DD3C */  addiu      $a0, $a0, %lo(D_800ADD3C)
    /* 49E64 800799B4 0C002929 */  jal        drawText
    /* 49E68 800799B8 24050400 */   addiu     $a1, $zero, 0x400
  .L800799BC_49E6C:
    /* 49E6C 800799BC 00155080 */  sll        $t2, $s5, 2
    /* 49E70 800799C0 01555021 */  addu       $t2, $t2, $s5
    /* 49E74 800799C4 000A5080 */  sll        $t2, $t2, 2
    /* 49E78 800799C8 00108900 */  sll        $s1, $s0, 4
    /* 49E7C 800799CC 3C0C8005 */  lui        $t4, %hi(D_80048008)
    /* 49E80 800799D0 258C8008 */  addiu      $t4, $t4, %lo(D_80048008)
    /* 49E84 800799D4 2623FE20 */  addiu      $v1, $s1, -0x1E0
    /* 49E88 800799D8 000A5823 */  negu       $t3, $t2
    /* 49E8C 800799DC 04610003 */  bgez       $v1, .L800799EC_49E9C
    /* 49E90 800799E0 016CA021 */   addu      $s4, $t3, $t4
    /* 49E94 800799E4 10000002 */  b          .L800799F0_49EA0
    /* 49E98 800799E8 00001025 */   or        $v0, $zero, $zero
  .L800799EC_49E9C:
    /* 49E9C 800799EC 00601025 */  or         $v0, $v1, $zero
  .L800799F0_49EA0:
    /* 49EA0 800799F0 28410281 */  slti       $at, $v0, 0x281
    /* 49EA4 800799F4 14200003 */  bnez       $at, .L80079A04_49EB4
    /* 49EA8 800799F8 3C04800B */   lui       $a0, %hi(D_800ADD40)
    /* 49EAC 800799FC 10000006 */  b          .L80079A18_49EC8
    /* 49EB0 80079A00 24130280 */   addiu     $s3, $zero, 0x280
  .L80079A04_49EB4:
    /* 49EB4 80079A04 04610003 */  bgez       $v1, .L80079A14_49EC4
    /* 49EB8 80079A08 00601025 */   or        $v0, $v1, $zero
    /* 49EBC 80079A0C 10000001 */  b          .L80079A14_49EC4
    /* 49EC0 80079A10 00001025 */   or        $v0, $zero, $zero
  .L80079A14_49EC4:
    /* 49EC4 80079A14 00409825 */  or         $s3, $v0, $zero
  .L80079A18_49EC8:
    /* 49EC8 80079A18 2484DD40 */  addiu      $a0, $a0, %lo(D_800ADD40)
    /* 49ECC 80079A1C 0C002929 */  jal        drawText
    /* 49ED0 80079A20 02602825 */   or        $a1, $s3, $zero
    /* 49ED4 80079A24 87C20000 */  lh         $v0, 0x0($fp)
    /* 49ED8 80079A28 3C04800B */  lui        $a0, %hi(D_800ADD44)
    /* 49EDC 80079A2C 24010001 */  addiu      $at, $zero, 0x1
    /* 49EE0 80079A30 10400006 */  beqz       $v0, .L80079A4C_49EFC
    /* 49EE4 80079A34 2484DD44 */   addiu     $a0, $a0, %lo(D_800ADD44)
    /* 49EE8 80079A38 1041000F */  beq        $v0, $at, .L80079A78_49F28
    /* 49EEC 80079A3C 2405FFF0 */   addiu     $a1, $zero, -0x10
    /* 49EF0 80079A40 24010002 */  addiu      $at, $zero, 0x2
    /* 49EF4 80079A44 10410006 */  beq        $v0, $at, .L80079A60_49F10
    /* 49EF8 80079A48 2405FFF0 */   addiu     $a1, $zero, -0x10
  .L80079A4C_49EFC:
    /* 49EFC 80079A4C 2405FFF0 */  addiu      $a1, $zero, -0x10
    /* 49F00 80079A50 0C002929 */  jal        drawText
    /* 49F04 80079A54 24060004 */   addiu     $a2, $zero, 0x4
    /* 49F08 80079A58 1000000B */  b          .L80079A88_49F38
    /* 49F0C 80079A5C 00000000 */   nop
  .L80079A60_49F10:
    /* 49F10 80079A60 3C04800B */  lui        $a0, %hi(D_800ADD50)
    /* 49F14 80079A64 2484DD50 */  addiu      $a0, $a0, %lo(D_800ADD50)
    /* 49F18 80079A68 0C002929 */  jal        drawText
    /* 49F1C 80079A6C 24060004 */   addiu     $a2, $zero, 0x4
    /* 49F20 80079A70 10000005 */  b          .L80079A88_49F38
    /* 49F24 80079A74 00000000 */   nop
  .L80079A78_49F28:
    /* 49F28 80079A78 3C04800B */  lui        $a0, %hi(D_800ADD5C)
    /* 49F2C 80079A7C 2484DD5C */  addiu      $a0, $a0, %lo(D_800ADD5C)
    /* 49F30 80079A80 0C002929 */  jal        drawText
    /* 49F34 80079A84 24060004 */   addiu     $a2, $zero, 0x4
  .L80079A88_49F38:
    /* 49F38 80079A88 3C04800B */  lui        $a0, %hi(D_800ADD68)
    /* 49F3C 80079A8C 2484DD68 */  addiu      $a0, $a0, %lo(D_800ADD68)
    /* 49F40 80079A90 0C002929 */  jal        drawText
    /* 49F44 80079A94 00132823 */   negu      $a1, $s3
    /* 49F48 80079A98 3C04800B */  lui        $a0, %hi(D_800ADD6C)
    /* 49F4C 80079A9C 2484DD6C */  addiu      $a0, $a0, %lo(D_800ADD6C)
    /* 49F50 80079AA0 24050030 */  addiu      $a1, $zero, 0x30
    /* 49F54 80079AA4 24060004 */  addiu      $a2, $zero, 0x4
    /* 49F58 80079AA8 0C002929 */  jal        drawText
    /* 49F5C 80079AAC 8E870008 */   lw        $a3, 0x8($s4)
    /* 49F60 80079AB0 2623FD30 */  addiu      $v1, $s1, -0x2D0
    /* 49F64 80079AB4 04610003 */  bgez       $v1, .L80079AC4_49F74
    /* 49F68 80079AB8 3C04800B */   lui       $a0, %hi(D_800ADD74)
    /* 49F6C 80079ABC 10000002 */  b          .L80079AC8_49F78
    /* 49F70 80079AC0 00001025 */   or        $v0, $zero, $zero
  .L80079AC4_49F74:
    /* 49F74 80079AC4 00601025 */  or         $v0, $v1, $zero
  .L80079AC8_49F78:
    /* 49F78 80079AC8 28410281 */  slti       $at, $v0, 0x281
    /* 49F7C 80079ACC 14200003 */  bnez       $at, .L80079ADC_49F8C
    /* 49F80 80079AD0 2484DD74 */   addiu     $a0, $a0, %lo(D_800ADD74)
    /* 49F84 80079AD4 10000006 */  b          .L80079AF0_49FA0
    /* 49F88 80079AD8 24130280 */   addiu     $s3, $zero, 0x280
  .L80079ADC_49F8C:
    /* 49F8C 80079ADC 04610003 */  bgez       $v1, .L80079AEC_49F9C
    /* 49F90 80079AE0 00601025 */   or        $v0, $v1, $zero
    /* 49F94 80079AE4 10000001 */  b          .L80079AEC_49F9C
    /* 49F98 80079AE8 00001025 */   or        $v0, $zero, $zero
  .L80079AEC_49F9C:
    /* 49F9C 80079AEC 00409825 */  or         $s3, $v0, $zero
  .L80079AF0_49FA0:
    /* 49FA0 80079AF0 0C002929 */  jal        drawText
    /* 49FA4 80079AF4 02602825 */   or        $a1, $s3, $zero
    /* 49FA8 80079AF8 87C20000 */  lh         $v0, 0x0($fp)
    /* 49FAC 80079AFC 3C04800B */  lui        $a0, %hi(D_800ADD78)
    /* 49FB0 80079B00 24010001 */  addiu      $at, $zero, 0x1
    /* 49FB4 80079B04 10400006 */  beqz       $v0, .L80079B20_49FD0
    /* 49FB8 80079B08 2484DD78 */   addiu     $a0, $a0, %lo(D_800ADD78)
    /* 49FBC 80079B0C 1041000F */  beq        $v0, $at, .L80079B4C_49FFC
    /* 49FC0 80079B10 2405FFF0 */   addiu     $a1, $zero, -0x10
    /* 49FC4 80079B14 24010002 */  addiu      $at, $zero, 0x2
    /* 49FC8 80079B18 10410006 */  beq        $v0, $at, .L80079B34_49FE4
    /* 49FCC 80079B1C 2405FFF0 */   addiu     $a1, $zero, -0x10
  .L80079B20_49FD0:
    /* 49FD0 80079B20 2405FFF0 */  addiu      $a1, $zero, -0x10
    /* 49FD4 80079B24 0C002929 */  jal        drawText
    /* 49FD8 80079B28 24060005 */   addiu     $a2, $zero, 0x5
    /* 49FDC 80079B2C 1000000B */  b          .L80079B5C_4A00C
    /* 49FE0 80079B30 00000000 */   nop
  .L80079B34_49FE4:
    /* 49FE4 80079B34 3C04800B */  lui        $a0, %hi(D_800ADD8C)
    /* 49FE8 80079B38 2484DD8C */  addiu      $a0, $a0, %lo(D_800ADD8C)
    /* 49FEC 80079B3C 0C002929 */  jal        drawText
    /* 49FF0 80079B40 24060005 */   addiu     $a2, $zero, 0x5
    /* 49FF4 80079B44 10000005 */  b          .L80079B5C_4A00C
    /* 49FF8 80079B48 00000000 */   nop
  .L80079B4C_49FFC:
    /* 49FFC 80079B4C 3C04800B */  lui        $a0, %hi(D_800ADD98)
    /* 4A000 80079B50 2484DD98 */  addiu      $a0, $a0, %lo(D_800ADD98)
    /* 4A004 80079B54 0C002929 */  jal        drawText
    /* 4A008 80079B58 24060005 */   addiu     $a2, $zero, 0x5
  .L80079B5C_4A00C:
    /* 4A00C 80079B5C 3C04800B */  lui        $a0, %hi(D_800ADDA8)
    /* 4A010 80079B60 2484DDA8 */  addiu      $a0, $a0, %lo(D_800ADDA8)
    /* 4A014 80079B64 0C002929 */  jal        drawText
    /* 4A018 80079B68 00132823 */   negu      $a1, $s3
    /* 4A01C 80079B6C 3C04800B */  lui        $a0, %hi(D_800ADDAC)
    /* 4A020 80079B70 2484DDAC */  addiu      $a0, $a0, %lo(D_800ADDAC)
    /* 4A024 80079B74 24050030 */  addiu      $a1, $zero, 0x30
    /* 4A028 80079B78 24060005 */  addiu      $a2, $zero, 0x5
    /* 4A02C 80079B7C 0C002929 */  jal        drawText
    /* 4A030 80079B80 8687000C */   lh        $a3, 0xC($s4)
    /* 4A034 80079B84 2623FC40 */  addiu      $v1, $s1, -0x3C0
    /* 4A038 80079B88 04610003 */  bgez       $v1, .L80079B98_4A048
    /* 4A03C 80079B8C 3C04800B */   lui       $a0, %hi(D_800ADDB4)
    /* 4A040 80079B90 10000002 */  b          .L80079B9C_4A04C
    /* 4A044 80079B94 00001025 */   or        $v0, $zero, $zero
  .L80079B98_4A048:
    /* 4A048 80079B98 00601025 */  or         $v0, $v1, $zero
  .L80079B9C_4A04C:
    /* 4A04C 80079B9C 28410281 */  slti       $at, $v0, 0x281
    /* 4A050 80079BA0 14200003 */  bnez       $at, .L80079BB0_4A060
    /* 4A054 80079BA4 2484DDB4 */   addiu     $a0, $a0, %lo(D_800ADDB4)
    /* 4A058 80079BA8 10000006 */  b          .L80079BC4_4A074
    /* 4A05C 80079BAC 24130280 */   addiu     $s3, $zero, 0x280
  .L80079BB0_4A060:
    /* 4A060 80079BB0 04610003 */  bgez       $v1, .L80079BC0_4A070
    /* 4A064 80079BB4 00601025 */   or        $v0, $v1, $zero
    /* 4A068 80079BB8 10000001 */  b          .L80079BC0_4A070
    /* 4A06C 80079BBC 00001025 */   or        $v0, $zero, $zero
  .L80079BC0_4A070:
    /* 4A070 80079BC0 00409825 */  or         $s3, $v0, $zero
  .L80079BC4_4A074:
    /* 4A074 80079BC4 8E900010 */  lw         $s0, 0x10($s4)
    /* 4A078 80079BC8 0216001B */  divu       $zero, $s0, $s6
    /* 4A07C 80079BCC 00001012 */  mflo       $v0
    /* 4A080 80079BD0 16C00002 */  bnez       $s6, .L80079BDC_4A08C
    /* 4A084 80079BD4 00000000 */   nop
    /* 4A088 80079BD8 0007000D */  break      7
  .L80079BDC_4A08C:
    /* 4A08C 80079BDC 0056001B */  divu       $zero, $v0, $s6
    /* 4A090 80079BE0 00008812 */  mflo       $s1
    /* 4A094 80079BE4 00009010 */  mfhi       $s2
    /* 4A098 80079BE8 2E210064 */  sltiu      $at, $s1, 0x64
    /* 4A09C 80079BEC 16C00002 */  bnez       $s6, .L80079BF8_4A0A8
    /* 4A0A0 80079BF0 00000000 */   nop
    /* 4A0A4 80079BF4 0007000D */  break      7
  .L80079BF8_4A0A8:
    /* 4A0A8 80079BF8 0216001B */  divu       $zero, $s0, $s6
    /* 4A0AC 80079BFC 00008010 */  mfhi       $s0
    /* 4A0B0 80079C00 16C00002 */  bnez       $s6, .L80079C0C_4A0BC
    /* 4A0B4 80079C04 00000000 */   nop
    /* 4A0B8 80079C08 0007000D */  break      7
  .L80079C0C_4A0BC:
    /* 4A0BC 80079C0C 14200004 */  bnez       $at, .L80079C20_4A0D0
    /* 4A0C0 80079C10 00000000 */   nop
    /* 4A0C4 80079C14 24110063 */  addiu      $s1, $zero, 0x63
    /* 4A0C8 80079C18 2412003B */  addiu      $s2, $zero, 0x3B
    /* 4A0CC 80079C1C 2410003B */  addiu      $s0, $zero, 0x3B
  .L80079C20_4A0D0:
    /* 4A0D0 80079C20 0C002929 */  jal        drawText
    /* 4A0D4 80079C24 02602825 */   or        $a1, $s3, $zero
    /* 4A0D8 80079C28 87C20000 */  lh         $v0, 0x0($fp)
    /* 4A0DC 80079C2C 3C04800B */  lui        $a0, %hi(D_800ADDB8)
    /* 4A0E0 80079C30 24010001 */  addiu      $at, $zero, 0x1
    /* 4A0E4 80079C34 10400006 */  beqz       $v0, .L80079C50_4A100
    /* 4A0E8 80079C38 2484DDB8 */   addiu     $a0, $a0, %lo(D_800ADDB8)
    /* 4A0EC 80079C3C 1041000F */  beq        $v0, $at, .L80079C7C_4A12C
    /* 4A0F0 80079C40 2405FFF0 */   addiu     $a1, $zero, -0x10
    /* 4A0F4 80079C44 24010002 */  addiu      $at, $zero, 0x2
    /* 4A0F8 80079C48 10410006 */  beq        $v0, $at, .L80079C64_4A114
    /* 4A0FC 80079C4C 2405FFF0 */   addiu     $a1, $zero, -0x10
  .L80079C50_4A100:
    /* 4A100 80079C50 2405FFF0 */  addiu      $a1, $zero, -0x10
    /* 4A104 80079C54 0C002929 */  jal        drawText
    /* 4A108 80079C58 24060006 */   addiu     $a2, $zero, 0x6
    /* 4A10C 80079C5C 1000000B */  b          .L80079C8C_4A13C
    /* 4A110 80079C60 00000000 */   nop
  .L80079C64_4A114:
    /* 4A114 80079C64 3C04800B */  lui        $a0, %hi(D_800ADDC0)
    /* 4A118 80079C68 2484DDC0 */  addiu      $a0, $a0, %lo(D_800ADDC0)
    /* 4A11C 80079C6C 0C002929 */  jal        drawText
    /* 4A120 80079C70 24060006 */   addiu     $a2, $zero, 0x6
    /* 4A124 80079C74 10000005 */  b          .L80079C8C_4A13C
    /* 4A128 80079C78 00000000 */   nop
  .L80079C7C_4A12C:
    /* 4A12C 80079C7C 3C04800B */  lui        $a0, %hi(D_800ADDC8)
    /* 4A130 80079C80 2484DDC8 */  addiu      $a0, $a0, %lo(D_800ADDC8)
    /* 4A134 80079C84 0C002929 */  jal        drawText
    /* 4A138 80079C88 24060006 */   addiu     $a2, $zero, 0x6
  .L80079C8C_4A13C:
    /* 4A13C 80079C8C 3C04800B */  lui        $a0, %hi(D_800ADDD4)
    /* 4A140 80079C90 2484DDD4 */  addiu      $a0, $a0, %lo(D_800ADDD4)
    /* 4A144 80079C94 0C002929 */  jal        drawText
    /* 4A148 80079C98 00132823 */   negu      $a1, $s3
    /* 4A14C 80079C9C 2E21000A */  sltiu      $at, $s1, 0xA
    /* 4A150 80079CA0 1020000E */  beqz       $at, .L80079CDC_4A18C
    /* 4A154 80079CA4 2E41000A */   sltiu     $at, $s2, 0xA
    /* 4A158 80079CA8 1020000C */  beqz       $at, .L80079CDC_4A18C
    /* 4A15C 80079CAC 2E01000A */   sltiu     $at, $s0, 0xA
    /* 4A160 80079CB0 1020000A */  beqz       $at, .L80079CDC_4A18C
    /* 4A164 80079CB4 3C04800B */   lui       $a0, %hi(D_800ADDD8)
    /* 4A168 80079CB8 2484DDD8 */  addiu      $a0, $a0, %lo(D_800ADDD8)
    /* 4A16C 80079CBC 24050030 */  addiu      $a1, $zero, 0x30
    /* 4A170 80079CC0 24060006 */  addiu      $a2, $zero, 0x6
    /* 4A174 80079CC4 02203825 */  or         $a3, $s1, $zero
    /* 4A178 80079CC8 AFB20010 */  sw         $s2, 0x10($sp)
    /* 4A17C 80079CCC 0C002929 */  jal        drawText
    /* 4A180 80079CD0 AFB00014 */   sw        $s0, 0x14($sp)
    /* 4A184 80079CD4 10000058 */  b          .L80079E38_4A2E8
    /* 4A188 80079CD8 26B50001 */   addiu     $s5, $s5, 0x1
  .L80079CDC_4A18C:
    /* 4A18C 80079CDC 2E21000A */  sltiu      $at, $s1, 0xA
    /* 4A190 80079CE0 1020000C */  beqz       $at, .L80079D14_4A1C4
    /* 4A194 80079CE4 2E41000A */   sltiu     $at, $s2, 0xA
    /* 4A198 80079CE8 1020000A */  beqz       $at, .L80079D14_4A1C4
    /* 4A19C 80079CEC 3C04800B */   lui       $a0, %hi(D_800ADDE8)
    /* 4A1A0 80079CF0 2484DDE8 */  addiu      $a0, $a0, %lo(D_800ADDE8)
    /* 4A1A4 80079CF4 24050030 */  addiu      $a1, $zero, 0x30
    /* 4A1A8 80079CF8 24060006 */  addiu      $a2, $zero, 0x6
    /* 4A1AC 80079CFC 02203825 */  or         $a3, $s1, $zero
    /* 4A1B0 80079D00 AFB20010 */  sw         $s2, 0x10($sp)
    /* 4A1B4 80079D04 0C002929 */  jal        drawText
    /* 4A1B8 80079D08 AFB00014 */   sw        $s0, 0x14($sp)
    /* 4A1BC 80079D0C 1000004A */  b          .L80079E38_4A2E8
    /* 4A1C0 80079D10 26B50001 */   addiu     $s5, $s5, 0x1
  .L80079D14_4A1C4:
    /* 4A1C4 80079D14 2E21000A */  sltiu      $at, $s1, 0xA
    /* 4A1C8 80079D18 1020000C */  beqz       $at, .L80079D4C_4A1FC
    /* 4A1CC 80079D1C 2E01000A */   sltiu     $at, $s0, 0xA
    /* 4A1D0 80079D20 1020000A */  beqz       $at, .L80079D4C_4A1FC
    /* 4A1D4 80079D24 3C04800B */   lui       $a0, %hi(D_800ADDF8)
    /* 4A1D8 80079D28 2484DDF8 */  addiu      $a0, $a0, %lo(D_800ADDF8)
    /* 4A1DC 80079D2C 24050030 */  addiu      $a1, $zero, 0x30
    /* 4A1E0 80079D30 24060006 */  addiu      $a2, $zero, 0x6
    /* 4A1E4 80079D34 02203825 */  or         $a3, $s1, $zero
    /* 4A1E8 80079D38 AFB20010 */  sw         $s2, 0x10($sp)
    /* 4A1EC 80079D3C 0C002929 */  jal        drawText
    /* 4A1F0 80079D40 AFB00014 */   sw        $s0, 0x14($sp)
    /* 4A1F4 80079D44 1000003C */  b          .L80079E38_4A2E8
    /* 4A1F8 80079D48 26B50001 */   addiu     $s5, $s5, 0x1
  .L80079D4C_4A1FC:
    /* 4A1FC 80079D4C 2E41000A */  sltiu      $at, $s2, 0xA
    /* 4A200 80079D50 1020000C */  beqz       $at, .L80079D84_4A234
    /* 4A204 80079D54 2E01000A */   sltiu     $at, $s0, 0xA
    /* 4A208 80079D58 1020000A */  beqz       $at, .L80079D84_4A234
    /* 4A20C 80079D5C 3C04800B */   lui       $a0, %hi(D_800ADE08)
    /* 4A210 80079D60 2484DE08 */  addiu      $a0, $a0, %lo(D_800ADE08)
    /* 4A214 80079D64 24050030 */  addiu      $a1, $zero, 0x30
    /* 4A218 80079D68 24060006 */  addiu      $a2, $zero, 0x6
    /* 4A21C 80079D6C 02203825 */  or         $a3, $s1, $zero
    /* 4A220 80079D70 AFB20010 */  sw         $s2, 0x10($sp)
    /* 4A224 80079D74 0C002929 */  jal        drawText
    /* 4A228 80079D78 AFB00014 */   sw        $s0, 0x14($sp)
    /* 4A22C 80079D7C 1000002E */  b          .L80079E38_4A2E8
    /* 4A230 80079D80 26B50001 */   addiu     $s5, $s5, 0x1
  .L80079D84_4A234:
    /* 4A234 80079D84 2E21000A */  sltiu      $at, $s1, 0xA
    /* 4A238 80079D88 1020000A */  beqz       $at, .L80079DB4_4A264
    /* 4A23C 80079D8C 3C04800B */   lui       $a0, %hi(D_800ADE18)
    /* 4A240 80079D90 2484DE18 */  addiu      $a0, $a0, %lo(D_800ADE18)
    /* 4A244 80079D94 24050030 */  addiu      $a1, $zero, 0x30
    /* 4A248 80079D98 24060006 */  addiu      $a2, $zero, 0x6
    /* 4A24C 80079D9C 02203825 */  or         $a3, $s1, $zero
    /* 4A250 80079DA0 AFB20010 */  sw         $s2, 0x10($sp)
    /* 4A254 80079DA4 0C002929 */  jal        drawText
    /* 4A258 80079DA8 AFB00014 */   sw        $s0, 0x14($sp)
    /* 4A25C 80079DAC 10000022 */  b          .L80079E38_4A2E8
    /* 4A260 80079DB0 26B50001 */   addiu     $s5, $s5, 0x1
  .L80079DB4_4A264:
    /* 4A264 80079DB4 2E41000A */  sltiu      $at, $s2, 0xA
    /* 4A268 80079DB8 1020000A */  beqz       $at, .L80079DE4_4A294
    /* 4A26C 80079DBC 3C04800B */   lui       $a0, %hi(D_800ADE24)
    /* 4A270 80079DC0 2484DE24 */  addiu      $a0, $a0, %lo(D_800ADE24)
    /* 4A274 80079DC4 24050030 */  addiu      $a1, $zero, 0x30
    /* 4A278 80079DC8 24060006 */  addiu      $a2, $zero, 0x6
    /* 4A27C 80079DCC 02203825 */  or         $a3, $s1, $zero
    /* 4A280 80079DD0 AFB20010 */  sw         $s2, 0x10($sp)
    /* 4A284 80079DD4 0C002929 */  jal        drawText
    /* 4A288 80079DD8 AFB00014 */   sw        $s0, 0x14($sp)
    /* 4A28C 80079DDC 10000016 */  b          .L80079E38_4A2E8
    /* 4A290 80079DE0 26B50001 */   addiu     $s5, $s5, 0x1
  .L80079DE4_4A294:
    /* 4A294 80079DE4 2E01000A */  sltiu      $at, $s0, 0xA
    /* 4A298 80079DE8 1020000B */  beqz       $at, .L80079E18_4A2C8
    /* 4A29C 80079DEC 3C04800B */   lui       $a0, %hi(D_800ADE3C)
    /* 4A2A0 80079DF0 3C04800B */  lui        $a0, %hi(D_800ADE30)
    /* 4A2A4 80079DF4 2484DE30 */  addiu      $a0, $a0, %lo(D_800ADE30)
    /* 4A2A8 80079DF8 24050030 */  addiu      $a1, $zero, 0x30
    /* 4A2AC 80079DFC 24060006 */  addiu      $a2, $zero, 0x6
    /* 4A2B0 80079E00 02203825 */  or         $a3, $s1, $zero
    /* 4A2B4 80079E04 AFB20010 */  sw         $s2, 0x10($sp)
    /* 4A2B8 80079E08 0C002929 */  jal        drawText
    /* 4A2BC 80079E0C AFB00014 */   sw        $s0, 0x14($sp)
    /* 4A2C0 80079E10 10000009 */  b          .L80079E38_4A2E8
    /* 4A2C4 80079E14 26B50001 */   addiu     $s5, $s5, 0x1
  .L80079E18_4A2C8:
    /* 4A2C8 80079E18 2484DE3C */  addiu      $a0, $a0, %lo(D_800ADE3C)
    /* 4A2CC 80079E1C 24050030 */  addiu      $a1, $zero, 0x30
    /* 4A2D0 80079E20 24060006 */  addiu      $a2, $zero, 0x6
    /* 4A2D4 80079E24 02203825 */  or         $a3, $s1, $zero
    /* 4A2D8 80079E28 AFB20010 */  sw         $s2, 0x10($sp)
    /* 4A2DC 80079E2C 0C002929 */  jal        drawText
    /* 4A2E0 80079E30 AFB00014 */   sw        $s0, 0x14($sp)
  .L80079E34_4A2E4:
    /* 4A2E4 80079E34 26B50001 */  addiu      $s5, $s5, 0x1
  .L80079E38_4A2E8:
    /* 4A2E8 80079E38 00156C00 */  sll        $t5, $s5, 16
    /* 4A2EC 80079E3C 000DAC03 */  sra        $s5, $t5, 16
    /* 4A2F0 80079E40 2AA10005 */  slti       $at, $s5, 0x5
    /* 4A2F4 80079E44 5420FE75 */  bnel       $at, $zero, .L8007981C_49CCC
    /* 4A2F8 80079E48 00151140 */   sll       $v0, $s5, 5
    /* 4A2FC 80079E4C 00002025 */  or         $a0, $zero, $zero
    /* 4A300 80079E50 0C000D61 */  jal        isButtonNewlyPressed
    /* 4A304 80079E54 3405D000 */   ori       $a1, $zero, 0xD000
    /* 4A308 80079E58 14400004 */  bnez       $v0, .L80079E6C_4A31C
    /* 4A30C 80079E5C 24010005 */   addiu     $at, $zero, 0x5
    /* 4A310 80079E60 16A10004 */  bne        $s5, $at, .L80079E74_4A324
    /* 4A314 80079E64 24010640 */   addiu     $at, $zero, 0x640
    /* 4A318 80079E68 16E10002 */  bne        $s7, $at, .L80079E74_4A324
  .L80079E6C_4A31C:
    /* 4A31C 80079E6C 240F0001 */   addiu     $t7, $zero, 0x1
    /* 4A320 80079E70 A7AF005E */  sh         $t7, 0x5E($sp)
  .L80079E74_4A324:
    /* 4A324 80079E74 0C002C11 */  jal        func_8000B044_BC44
    /* 4A328 80079E78 00000000 */   nop
    /* 4A32C 80079E7C 3C088006 */  lui        $t0, %hi(D_8005BB2C)
    /* 4A330 80079E80 2508BB2C */  addiu      $t0, $t0, %lo(D_8005BB2C)
    /* 4A334 80079E84 8D020000 */  lw         $v0, 0x0($t0)
    /* 4A338 80079E88 3C19E900 */  lui        $t9, (0xE9000000 >> 16)
    /* 4A33C 80079E8C 3C0AB800 */  lui        $t2, (0xB8000000 >> 16)
    /* 4A340 80079E90 24580008 */  addiu      $t8, $v0, 0x8
    /* 4A344 80079E94 AD180000 */  sw         $t8, 0x0($t0)
    /* 4A348 80079E98 AC400004 */  sw         $zero, 0x4($v0)
    /* 4A34C 80079E9C AC590000 */  sw         $t9, 0x0($v0)
    /* 4A350 80079EA0 8D020000 */  lw         $v0, 0x0($t0)
    /* 4A354 80079EA4 3C048007 */  lui        $a0, %hi(D_8006A8B0)
    /* 4A358 80079EA8 3C058003 */  lui        $a1, %hi(D_800314CC)
    /* 4A35C 80079EAC 24490008 */  addiu      $t1, $v0, 0x8
    /* 4A360 80079EB0 AD090000 */  sw         $t1, 0x0($t0)
    /* 4A364 80079EB4 24A514CC */  addiu      $a1, $a1, %lo(D_800314CC)
    /* 4A368 80079EB8 2484A8B0 */  addiu      $a0, $a0, %lo(D_8006A8B0)
    /* 4A36C 80079EBC 24060001 */  addiu      $a2, $zero, 0x1
    /* 4A370 80079EC0 AC400004 */  sw         $zero, 0x4($v0)
    /* 4A374 80079EC4 0C0070F4 */  jal        osSendMesg
    /* 4A378 80079EC8 AC4A0000 */   sw        $t2, 0x0($v0)
    /* 4A37C 80079ECC 87AB005E */  lh         $t3, 0x5E($sp)
    /* 4A380 80079ED0 5160FE1C */  beql       $t3, $zero, .L80079744_49BF4
    /* 4A384 80079ED4 2AE107D0 */   slti      $at, $s7, 0x7D0
    /* 4A388 80079ED8 0C0054F6 */  jal        func_800153D8_15FD8
    /* 4A38C 80079EDC 240400C8 */   addiu     $a0, $zero, 0xC8
    /* 4A390 80079EE0 3C04800B */  lui        $a0, %hi(D_800ADE48)
    /* 4A394 80079EE4 2484DE48 */  addiu      $a0, $a0, %lo(D_800ADE48)
    /* 4A398 80079EE8 240500FF */  addiu      $a1, $zero, 0xFF
    /* 4A39C 80079EEC 240600FF */  addiu      $a2, $zero, 0xFF
    /* 4A3A0 80079EF0 0C002929 */  jal        drawText
    /* 4A3A4 80079EF4 240700FE */   addiu     $a3, $zero, 0xFE
    /* 4A3A8 80079EF8 8FBF0054 */  lw         $ra, 0x54($sp)
    /* 4A3AC 80079EFC D7B40020 */  ldc1       $f20, 0x20($sp)
    /* 4A3B0 80079F00 D7B60028 */  ldc1       $f22, 0x28($sp)
    /* 4A3B4 80079F04 8FB00030 */  lw         $s0, 0x30($sp)
    /* 4A3B8 80079F08 8FB10034 */  lw         $s1, 0x34($sp)
    /* 4A3BC 80079F0C 8FB20038 */  lw         $s2, 0x38($sp)
    /* 4A3C0 80079F10 8FB3003C */  lw         $s3, 0x3C($sp)
    /* 4A3C4 80079F14 8FB40040 */  lw         $s4, 0x40($sp)
    /* 4A3C8 80079F18 8FB50044 */  lw         $s5, 0x44($sp)
    /* 4A3CC 80079F1C 8FB60048 */  lw         $s6, 0x48($sp)
    /* 4A3D0 80079F20 8FB7004C */  lw         $s7, 0x4C($sp)
    /* 4A3D4 80079F24 8FBE0050 */  lw         $fp, 0x50($sp)
    /* 4A3D8 80079F28 03E00008 */  jr         $ra
    /* 4A3DC 80079F2C 27BD0060 */   addiu     $sp, $sp, 0x60
endlabel func_800796D0_49B80
