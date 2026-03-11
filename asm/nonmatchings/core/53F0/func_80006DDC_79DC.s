nonmatching func_80006DDC_79DC, 0x3FC

glabel func_80006DDC_79DC
    /* 79DC 80006DDC 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 79E0 80006DE0 240E0005 */  addiu      $t6, $zero, 0x5
    /* 79E4 80006DE4 3C018005 */  lui        $at, %hi(D_80052ACA)
    /* 79E8 80006DE8 A02E2ACA */  sb         $t6, %lo(D_80052ACA)($at)
    /* 79EC 80006DEC AFBF003C */  sw         $ra, 0x3C($sp)
    /* 79F0 80006DF0 AFB30024 */  sw         $s3, 0x24($sp)
    /* 79F4 80006DF4 3C018005 */  lui        $at, %hi(gameplayMode)
    /* 79F8 80006DF8 240F0007 */  addiu      $t7, $zero, 0x7
    /* 79FC 80006DFC AFBE0038 */  sw         $fp, 0x38($sp)
    /* 7A00 80006E00 AFB70034 */  sw         $s7, 0x34($sp)
    /* 7A04 80006E04 AFB60030 */  sw         $s6, 0x30($sp)
    /* 7A08 80006E08 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 7A0C 80006E0C AFB40028 */  sw         $s4, 0x28($sp)
    /* 7A10 80006E10 AFB20020 */  sw         $s2, 0x20($sp)
    /* 7A14 80006E14 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 7A18 80006E18 AFB00018 */  sw         $s0, 0x18($sp)
    /* 7A1C 80006E1C 00009825 */  or         $s3, $zero, $zero
    /* 7A20 80006E20 0C0015AA */  jal        func_800056A8_62A8
    /* 7A24 80006E24 AC2F2ADC */   sw        $t7, %lo(gameplayMode)($at)
    /* 7A28 80006E28 0C0015AA */  jal        func_800056A8_62A8
    /* 7A2C 80006E2C 00000000 */   nop
    /* 7A30 80006E30 3C048001 */  lui        $a0, %hi(loadLevel)
    /* 7A34 80006E34 248407B4 */  addiu      $a0, $a0, %lo(loadLevel)
    /* 7A38 80006E38 0C003C64 */  jal        func_8000F190_FD90
    /* 7A3C 80006E3C AFA40040 */   sw        $a0, 0x40($sp)
    /* 7A40 80006E40 0C0041DA */  jal        destroyThreadIfMessageInQueue
    /* 7A44 80006E44 00000000 */   nop
    /* 7A48 80006E48 14400009 */  bnez       $v0, .L80006E70_7A70
    /* 7A4C 80006E4C 00000000 */   nop
  .L80006E50_7A50:
    /* 7A50 80006E50 0C001431 */  jal        func_800050C4_5CC4
    /* 7A54 80006E54 00000000 */   nop
    /* 7A58 80006E58 0C001417 */  jal        func_8000505C_5C5C
    /* 7A5C 80006E5C 00000000 */   nop
    /* 7A60 80006E60 0C0041DA */  jal        destroyThreadIfMessageInQueue
    /* 7A64 80006E64 00000000 */   nop
    /* 7A68 80006E68 1040FFF9 */  beqz       $v0, .L80006E50_7A50
    /* 7A6C 80006E6C 00000000 */   nop
  .L80006E70_7A70:
    /* 7A70 80006E70 3C1E8004 */  lui        $fp, %hi(D_80047FA0)
    /* 7A74 80006E74 3C168003 */  lui        $s6, %hi(D_800313F0)
    /* 7A78 80006E78 3C158003 */  lui        $s5, %hi(D_800313EC)
    /* 7A7C 80006E7C 3C148003 */  lui        $s4, %hi(D_800313E8)
    /* 7A80 80006E80 3C128005 */  lui        $s2, %hi(D_80052AE8)
    /* 7A84 80006E84 3C108004 */  lui        $s0, %hi(currentLevel)
    /* 7A88 80006E88 26107F90 */  addiu      $s0, $s0, %lo(currentLevel)
    /* 7A8C 80006E8C 26522AE8 */  addiu      $s2, $s2, %lo(D_80052AE8)
    /* 7A90 80006E90 269413E8 */  addiu      $s4, $s4, %lo(D_800313E8)
    /* 7A94 80006E94 26B513EC */  addiu      $s5, $s5, %lo(D_800313EC)
    /* 7A98 80006E98 26D613F0 */  addiu      $s6, $s6, %lo(D_800313F0)
    /* 7A9C 80006E9C 27DE7FA0 */  addiu      $fp, $fp, %lo(D_80047FA0)
    /* 7AA0 80006EA0 24170005 */  addiu      $s7, $zero, 0x5
    /* 7AA4 80006EA4 24110001 */  addiu      $s1, $zero, 0x1
  .L80006EA8_7AA8:
    /* 7AA8 80006EA8 3C018005 */  lui        $at, %hi(D_80052ACA)
    /* 7AAC 80006EAC A0202ACA */  sb         $zero, %lo(D_80052ACA)($at)
    /* 7AB0 80006EB0 8E030000 */  lw         $v1, 0x0($s0)
    /* 7AB4 80006EB4 3C198003 */  lui        $t9, %hi(D_80031620)
    /* 7AB8 80006EB8 27391620 */  addiu      $t9, $t9, %lo(D_80031620)
    /* 7ABC 80006EBC 246FFFFF */  addiu      $t7, $v1, -0x1
    /* 7AC0 80006EC0 000FC080 */  sll        $t8, $t7, 2
    /* 7AC4 80006EC4 03191021 */  addu       $v0, $t8, $t9
    /* 7AC8 80006EC8 90490000 */  lbu        $t1, 0x0($v0)
    /* 7ACC 80006ECC 3C018004 */  lui        $at, %hi(D_80047743)
    /* 7AD0 80006ED0 3C198003 */  lui        $t9, %hi(D_80031634)
    /* 7AD4 80006ED4 A2890000 */  sb         $t1, 0x0($s4)
    /* 7AD8 80006ED8 A0297743 */  sb         $t1, %lo(D_80047743)($at)
    /* 7ADC 80006EDC 904B0001 */  lbu        $t3, 0x1($v0)
    /* 7AE0 80006EE0 3C018004 */  lui        $at, %hi(D_80047744)
    /* 7AE4 80006EE4 27391634 */  addiu      $t9, $t9, %lo(D_80031634)
    /* 7AE8 80006EE8 A2AB0000 */  sb         $t3, 0x0($s5)
    /* 7AEC 80006EEC A02B7744 */  sb         $t3, %lo(D_80047744)($at)
    /* 7AF0 80006EF0 904D0002 */  lbu        $t5, 0x2($v0)
    /* 7AF4 80006EF4 3C018004 */  lui        $at, %hi(D_80047745)
    /* 7AF8 80006EF8 000FC080 */  sll        $t8, $t7, 2
    /* 7AFC 80006EFC A2CD0000 */  sb         $t5, 0x0($s6)
    /* 7B00 80006F00 A02D7745 */  sb         $t5, %lo(D_80047745)($at)
    /* 7B04 80006F04 904E0003 */  lbu        $t6, 0x3($v0)
    /* 7B08 80006F08 3C018003 */  lui        $at, %hi(D_800313F4)
    /* 7B0C 80006F0C 03192021 */  addu       $a0, $t8, $t9
    /* 7B10 80006F10 A02E13F4 */  sb         $t6, %lo(D_800313F4)($at)
    /* 7B14 80006F14 84880000 */  lh         $t0, 0x0($a0)
    /* 7B18 80006F18 3C018003 */  lui        $at, %hi(D_800313F8)
    /* 7B1C 80006F1C 240A53C5 */  addiu      $t2, $zero, 0x53C5
    /* 7B20 80006F20 A42813F8 */  sh         $t0, %lo(D_800313F8)($at)
    /* 7B24 80006F24 84890002 */  lh         $t1, 0x2($a0)
    /* 7B28 80006F28 3C018003 */  lui        $at, %hi(D_800313FC)
    /* 7B2C 80006F2C 240B0CCF */  addiu      $t3, $zero, 0xCCF
    /* 7B30 80006F30 A42913FC */  sh         $t1, %lo(D_800313FC)($at)
    /* 7B34 80006F34 3C018004 */  lui        $at, %hi(D_80047964)
    /* 7B38 80006F38 A42A7964 */  sh         $t2, %lo(D_80047964)($at)
    /* 7B3C 80006F3C 3C018004 */  lui        $at, %hi(D_8004794E)
    /* 7B40 80006F40 A42B794E */  sh         $t3, %lo(D_8004794E)($at)
    /* 7B44 80006F44 3C014374 */  lui        $at, (0x43740000 >> 16)
    /* 7B48 80006F48 44812000 */  mtc1       $at, $f4
    /* 7B4C 80006F4C 3C018004 */  lui        $at, %hi(D_80047960)
    /* 7B50 80006F50 0C001B61 */  jal        setGameplayResolution
    /* 7B54 80006F54 E4247960 */   swc1      $f4, %lo(D_80047960)($at)
    /* 7B58 80006F58 0C01C09C */  jal        func_80070270
    /* 7B5C 80006F5C 24040008 */   addiu     $a0, $zero, 0x8
    /* 7B60 80006F60 3C018003 */  lui        $at, %hi(D_800313C8)
    /* 7B64 80006F64 0C004639 */  jal        __osInitialize_emu
    /* 7B68 80006F68 A42013C8 */   sh        $zero, %lo(D_800313C8)($at)
    /* 7B6C 80006F6C 3C028005 */  lui        $v0, %hi(D_80052AC8)
    /* 7B70 80006F70 84422AC8 */  lh         $v0, %lo(D_80052AC8)($v0)
    /* 7B74 80006F74 1040006C */  beqz       $v0, .L80007128_7D28
    /* 7B78 80006F78 00000000 */   nop
    /* 7B7C 80006F7C 10510005 */  beq        $v0, $s1, .L80006F94_7B94
    /* 7B80 80006F80 24010002 */   addiu     $at, $zero, 0x2
    /* 7B84 80006F84 50410012 */  beql       $v0, $at, .L80006FD0_7BD0
    /* 7B88 80006F88 8E0D0000 */   lw        $t5, 0x0($s0)
    /* 7B8C 80006F8C 10000081 */  b          .L80007194_7D94
    /* 7B90 80006F90 00000000 */   nop
  .L80006F94_7B94:
    /* 7B94 80006F94 0C0015AA */  jal        func_800056A8_62A8
    /* 7B98 80006F98 24130001 */   addiu     $s3, $zero, 0x1
    /* 7B9C 80006F9C 0C0015AA */  jal        func_800056A8_62A8
    /* 7BA0 80006FA0 00000000 */   nop
    /* 7BA4 80006FA4 0C004749 */  jal        func_80011D24_12924
    /* 7BA8 80006FA8 00000000 */   nop
    /* 7BAC 80006FAC 0C00457D */  jal        loadFrontendData
    /* 7BB0 80006FB0 00000000 */   nop
    /* 7BB4 80006FB4 0C001B57 */  jal        setFullResolution
    /* 7BB8 80006FB8 00000000 */   nop
    /* 7BBC 80006FBC 240C0003 */  addiu      $t4, $zero, 0x3
    /* 7BC0 80006FC0 AE400030 */  sw         $zero, 0x30($s2)
    /* 7BC4 80006FC4 10000073 */  b          .L80007194_7D94
    /* 7BC8 80006FC8 AE4C0040 */   sw        $t4, 0x40($s2)
    /* 7BCC 80006FCC 8E0D0000 */  lw         $t5, 0x0($s0)
  .L80006FD0_7BD0:
    /* 7BD0 80006FD0 240400FF */  addiu      $a0, $zero, 0xFF
    /* 7BD4 80006FD4 240500FF */  addiu      $a1, $zero, 0xFF
    /* 7BD8 80006FD8 16ED0009 */  bne        $s7, $t5, .L80007000_7C00
    /* 7BDC 80006FDC 00000000 */   nop
    /* 7BE0 80006FE0 0C005C3D */  jal        func_800170F4_17CF4
    /* 7BE4 80006FE4 24040003 */   addiu     $a0, $zero, 0x3
    /* 7BE8 80006FE8 0C0015AA */  jal        func_800056A8_62A8
    /* 7BEC 80006FEC 00000000 */   nop
    /* 7BF0 80006FF0 0C0015AA */  jal        func_800056A8_62A8
    /* 7BF4 80006FF4 00000000 */   nop
    /* 7BF8 80006FF8 10000007 */  b          .L80007018_7C18
    /* 7BFC 80006FFC 00000000 */   nop
  .L80007000_7C00:
    /* 7C00 80007000 0C001595 */  jal        func_80005654_6254
    /* 7C04 80007004 240600FF */   addiu     $a2, $zero, 0xFF
    /* 7C08 80007008 240400FF */  addiu      $a0, $zero, 0xFF
    /* 7C0C 8000700C 240500FF */  addiu      $a1, $zero, 0xFF
    /* 7C10 80007010 0C001595 */  jal        func_80005654_6254
    /* 7C14 80007014 240600FF */   addiu     $a2, $zero, 0xFF
  .L80007018_7C18:
    /* 7C18 80007018 0C004749 */  jal        func_80011D24_12924
    /* 7C1C 8000701C 00000000 */   nop
    /* 7C20 80007020 0C00457D */  jal        loadFrontendData
    /* 7C24 80007024 00000000 */   nop
    /* 7C28 80007028 0C001B61 */  jal        setGameplayResolution
    /* 7C2C 8000702C 00000000 */   nop
    /* 7C30 80007030 3C188005 */  lui        $t8, %hi(D_80052B2C)
    /* 7C34 80007034 8F182B2C */  lw         $t8, %lo(D_80052B2C)($t8)
    /* 7C38 80007038 8E030000 */  lw         $v1, 0x0($s0)
    /* 7C3C 8000703C 3C0F8005 */  lui        $t7, %hi(D_80052A98)
    /* 7C40 80007040 8F190030 */  lw         $t9, 0x30($t8)
    /* 7C44 80007044 25EF2A98 */  addiu      $t7, $t7, %lo(D_80052A98)
    /* 7C48 80007048 000370C0 */  sll        $t6, $v1, 3
    /* 7C4C 8000704C 01CF1021 */  addu       $v0, $t6, $t7
    /* 7C50 80007050 3C088005 */  lui        $t0, %hi(D_8004816A)
    /* 7C54 80007054 AC59FFF8 */  sw         $t9, -0x8($v0)
    /* 7C58 80007058 8508816A */  lh         $t0, %lo(D_8004816A)($t0)
    /* 7C5C 8000705C 3C098005 */  lui        $t1, %hi(D_80052A90)
    /* 7C60 80007060 240103E8 */  addiu      $at, $zero, 0x3E8
    /* 7C64 80007064 A448FFFE */  sh         $t0, -0x2($v0)
    /* 7C68 80007068 8D292A90 */  lw         $t1, %lo(D_80052A90)($t1)
    /* 7C6C 8000706C 8FCB0000 */  lw         $t3, 0x0($fp)
    /* 7C70 80007070 246C0001 */  addiu      $t4, $v1, 0x1
    /* 7C74 80007074 0121001B */  divu       $zero, $t1, $at
    /* 7C78 80007078 00005012 */  mflo       $t2
    /* 7C7C 8000707C 0163082A */  slt        $at, $t3, $v1
    /* 7C80 80007080 10200002 */  beqz       $at, .L8000708C_7C8C
    /* 7C84 80007084 A44AFFFC */   sh        $t2, -0x4($v0)
    /* 7C88 80007088 AFC30000 */  sw         $v1, 0x0($fp)
  .L8000708C_7C8C:
    /* 7C8C 8000708C 16E30008 */  bne        $s7, $v1, .L800070B0_7CB0
    /* 7C90 80007090 3C018004 */   lui       $at, %hi(D_800476A0)
    /* 7C94 80007094 A43176A0 */  sh         $s1, %lo(D_800476A0)($at)
    /* 7C98 80007098 0C001B57 */  jal        setFullResolution
    /* 7C9C 8000709C 24130001 */   addiu     $s3, $zero, 0x1
    /* 7CA0 800070A0 0C01C09C */  jal        func_80070270
    /* 7CA4 800070A4 24040006 */   addiu     $a0, $zero, 0x6
    /* 7CA8 800070A8 1000003A */  b          .L80007194_7D94
    /* 7CAC 800070AC 00000000 */   nop
  .L800070B0_7CB0:
    /* 7CB0 800070B0 0C001D5C */  jal        func_80007570_8170
    /* 7CB4 800070B4 AE0C0000 */   sw        $t4, 0x0($s0)
    /* 7CB8 800070B8 3C018004 */  lui        $at, %hi(D_800476A0)
    /* 7CBC 800070BC A43176A0 */  sh         $s1, %lo(D_800476A0)($at)
    /* 7CC0 800070C0 0C01C09C */  jal        func_80070270
    /* 7CC4 800070C4 24040002 */   addiu     $a0, $zero, 0x2
    /* 7CC8 800070C8 240400FF */  addiu      $a0, $zero, 0xFF
    /* 7CCC 800070CC 240500FF */  addiu      $a1, $zero, 0xFF
    /* 7CD0 800070D0 0C001595 */  jal        func_80005654_6254
    /* 7CD4 800070D4 240600FF */   addiu     $a2, $zero, 0xFF
    /* 7CD8 800070D8 240400FF */  addiu      $a0, $zero, 0xFF
    /* 7CDC 800070DC 240500FF */  addiu      $a1, $zero, 0xFF
    /* 7CE0 800070E0 0C001595 */  jal        func_80005654_6254
    /* 7CE4 800070E4 240600FF */   addiu     $a2, $zero, 0xFF
    /* 7CE8 800070E8 0C003C64 */  jal        func_8000F190_FD90
    /* 7CEC 800070EC 8FA40040 */   lw        $a0, 0x40($sp)
    /* 7CF0 800070F0 0C0041DA */  jal        destroyThreadIfMessageInQueue
    /* 7CF4 800070F4 00000000 */   nop
    /* 7CF8 800070F8 14400026 */  bnez       $v0, .L80007194_7D94
    /* 7CFC 800070FC 00000000 */   nop
  .L80007100_7D00:
    /* 7D00 80007100 0C001431 */  jal        func_800050C4_5CC4
    /* 7D04 80007104 00000000 */   nop
    /* 7D08 80007108 0C001417 */  jal        func_8000505C_5C5C
    /* 7D0C 8000710C 00000000 */   nop
    /* 7D10 80007110 0C0041DA */  jal        destroyThreadIfMessageInQueue
    /* 7D14 80007114 00000000 */   nop
    /* 7D18 80007118 1040FFF9 */  beqz       $v0, .L80007100_7D00
    /* 7D1C 8000711C 00000000 */   nop
    /* 7D20 80007120 1000001C */  b          .L80007194_7D94
    /* 7D24 80007124 00000000 */   nop
  .L80007128_7D28:
    /* 7D28 80007128 0C001431 */  jal        func_800050C4_5CC4
    /* 7D2C 8000712C 24130001 */   addiu     $s3, $zero, 0x1
    /* 7D30 80007130 0C001417 */  jal        func_8000505C_5C5C
    /* 7D34 80007134 00000000 */   nop
    /* 7D38 80007138 0C001431 */  jal        func_800050C4_5CC4
    /* 7D3C 8000713C 00000000 */   nop
    /* 7D40 80007140 0C001417 */  jal        func_8000505C_5C5C
    /* 7D44 80007144 00000000 */   nop
    /* 7D48 80007148 0C004749 */  jal        func_80011D24_12924
    /* 7D4C 8000714C 00000000 */   nop
    /* 7D50 80007150 0C00457D */  jal        loadFrontendData
    /* 7D54 80007154 00000000 */   nop
    /* 7D58 80007158 3C0D8005 */  lui        $t5, %hi(showDemoText)
    /* 7D5C 8000715C 8DAD8034 */  lw         $t5, %lo(showDemoText)($t5)
    /* 7D60 80007160 122D0007 */  beq        $s1, $t5, .L80007180_7D80
    /* 7D64 80007164 00000000 */   nop
    /* 7D68 80007168 0C01C09C */  jal        func_80070270
    /* 7D6C 8000716C 24040003 */   addiu     $a0, $zero, 0x3
    /* 7D70 80007170 0C001B57 */  jal        setFullResolution
    /* 7D74 80007174 00000000 */   nop
    /* 7D78 80007178 0C01C09C */  jal        func_80070270
    /* 7D7C 8000717C 02E02025 */   or        $a0, $s7, $zero
  .L80007180_7D80:
    /* 7D80 80007180 0C001B57 */  jal        setFullResolution
    /* 7D84 80007184 00000000 */   nop
    /* 7D88 80007188 240E0003 */  addiu      $t6, $zero, 0x3
    /* 7D8C 8000718C AE400030 */  sw         $zero, 0x30($s2)
    /* 7D90 80007190 AE4E0040 */  sw         $t6, 0x40($s2)
  .L80007194_7D94:
    /* 7D94 80007194 1260FF44 */  beqz       $s3, .L80006EA8_7AA8
    /* 7D98 80007198 00000000 */   nop
    /* 7D9C 8000719C 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 7DA0 800071A0 240F0004 */  addiu      $t7, $zero, 0x4
    /* 7DA4 800071A4 3C018007 */  lui        $at, %hi(D_80068080)
    /* 7DA8 800071A8 8FB00018 */  lw         $s0, 0x18($sp)
    /* 7DAC 800071AC 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 7DB0 800071B0 8FB20020 */  lw         $s2, 0x20($sp)
    /* 7DB4 800071B4 8FB30024 */  lw         $s3, 0x24($sp)
    /* 7DB8 800071B8 8FB40028 */  lw         $s4, 0x28($sp)
    /* 7DBC 800071BC 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 7DC0 800071C0 8FB60030 */  lw         $s6, 0x30($sp)
    /* 7DC4 800071C4 8FB70034 */  lw         $s7, 0x34($sp)
    /* 7DC8 800071C8 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 7DCC 800071CC AC2F8080 */  sw         $t7, %lo(D_80068080)($at)
    /* 7DD0 800071D0 03E00008 */  jr         $ra
    /* 7DD4 800071D4 27BD0060 */   addiu     $sp, $sp, 0x60
endlabel func_80006DDC_79DC
