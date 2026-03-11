nonmatching func_802D59BC_319B0C, 0x240

glabel func_802D59BC_319B0C
    /* 319B0C 802D59BC 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 319B10 802D59C0 AFB5005C */  sw         $s5, 0x5C($sp)
    /* 319B14 802D59C4 AFB40058 */  sw         $s4, 0x58($sp)
    /* 319B18 802D59C8 F7B40040 */  sdc1       $f20, 0x40($sp)
    /* 319B1C 802D59CC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 319B20 802D59D0 AFBE0068 */  sw         $fp, 0x68($sp)
    /* 319B24 802D59D4 AFB70064 */  sw         $s7, 0x64($sp)
    /* 319B28 802D59D8 AFB60060 */  sw         $s6, 0x60($sp)
    /* 319B2C 802D59DC AFB30054 */  sw         $s3, 0x54($sp)
    /* 319B30 802D59E0 3C14802E */  lui        $s4, %hi(D_802E4F44)
    /* 319B34 802D59E4 3C15802E */  lui        $s5, %hi(D_802E4ED8)
    /* 319B38 802D59E8 4481A000 */  mtc1       $at, $f20
    /* 319B3C 802D59EC AFBF006C */  sw         $ra, 0x6C($sp)
    /* 319B40 802D59F0 AFB20050 */  sw         $s2, 0x50($sp)
    /* 319B44 802D59F4 AFB1004C */  sw         $s1, 0x4C($sp)
    /* 319B48 802D59F8 AFB00048 */  sw         $s0, 0x48($sp)
    /* 319B4C 802D59FC 26B54ED8 */  addiu      $s5, $s5, %lo(D_802E4ED8)
    /* 319B50 802D5A00 26944F44 */  addiu      $s4, $s4, %lo(D_802E4F44)
    /* 319B54 802D5A04 00009825 */  or         $s3, $zero, $zero
    /* 319B58 802D5A08 2416000C */  addiu      $s6, $zero, 0xC
    /* 319B5C 802D5A0C 24170001 */  addiu      $s7, $zero, 0x1
    /* 319B60 802D5A10 241E0001 */  addiu      $fp, $zero, 0x1
    /* 319B64 802D5A14 2665000A */  addiu      $a1, $s3, 0xA
  .L802D5A18_319B68:
    /* 319B68 802D5A18 0C001C9B */  jal        func_8000726C_7E6C
    /* 319B6C 802D5A1C 000527C3 */   sra       $a0, $a1, 31
    /* 319B70 802D5A20 10400006 */  beqz       $v0, .L802D5A3C_319B8C
    /* 319B74 802D5A24 00134880 */   sll       $t1, $s3, 2
    /* 319B78 802D5A28 02760019 */  multu      $s3, $s6
    /* 319B7C 802D5A2C 00007812 */  mflo       $t7
    /* 319B80 802D5A30 02AF8021 */  addu       $s0, $s5, $t7
    /* 319B84 802D5A34 10000005 */  b          .L802D5A4C_319B9C
    /* 319B88 802D5A38 A217000A */   sb        $s7, 0xA($s0)
  .L802D5A3C_319B8C:
    /* 319B8C 802D5A3C 02760019 */  multu      $s3, $s6
    /* 319B90 802D5A40 0000C012 */  mflo       $t8
    /* 319B94 802D5A44 02B88021 */  addu       $s0, $s5, $t8
    /* 319B98 802D5A48 A200000A */  sb         $zero, 0xA($s0)
  .L802D5A4C_319B9C:
    /* 319B9C 802D5A4C 9219000A */  lbu        $t9, 0xA($s0)
    /* 319BA0 802D5A50 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* 319BA4 802D5A54 02895021 */  addu       $t2, $s4, $t1
    /* 319BA8 802D5A58 17D90053 */  bne        $fp, $t9, .L802D5BA8_319CF8
    /* 319BAC 802D5A5C 00000000 */   nop
    /* 319BB0 802D5A60 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* 319BB4 802D5A64 86110000 */  lh         $s1, 0x0($s0)
    /* 319BB8 802D5A68 86120004 */  lh         $s2, 0x4($s0)
    /* 319BBC 802D5A6C 84680000 */  lh         $t0, 0x0($v1)
    /* 319BC0 802D5A70 84690004 */  lh         $t1, 0x4($v1)
    /* 319BC4 802D5A74 3C01001E */  lui        $at, (0x1E8480 >> 16)
    /* 319BC8 802D5A78 01111023 */  subu       $v0, $t0, $s1
    /* 319BCC 802D5A7C 00420019 */  multu      $v0, $v0
    /* 319BD0 802D5A80 01322023 */  subu       $a0, $t1, $s2
    /* 319BD4 802D5A84 34218480 */  ori        $at, $at, (0x1E8480 & 0xFFFF)
    /* 319BD8 802D5A88 00113400 */  sll        $a2, $s1, 16
    /* 319BDC 802D5A8C 00066C03 */  sra        $t5, $a2, 16
    /* 319BE0 802D5A90 01A03025 */  or         $a2, $t5, $zero
    /* 319BE4 802D5A94 2405017F */  addiu      $a1, $zero, 0x17F
    /* 319BE8 802D5A98 00005012 */  mflo       $t2
    /* 319BEC 802D5A9C 00000000 */  nop
    /* 319BF0 802D5AA0 00000000 */  nop
    /* 319BF4 802D5AA4 00840019 */  multu      $a0, $a0
    /* 319BF8 802D5AA8 02002025 */  or         $a0, $s0, $zero
    /* 319BFC 802D5AAC 00005812 */  mflo       $t3
    /* 319C00 802D5AB0 014B6021 */  addu       $t4, $t2, $t3
    /* 319C04 802D5AB4 0181082A */  slt        $at, $t4, $at
    /* 319C08 802D5AB8 50200008 */  beql       $at, $zero, .L802D5ADC_319C2C
    /* 319C0C 802D5ABC 860E0008 */   lh        $t6, 0x8($s0)
    /* 319C10 802D5AC0 86070002 */  lh         $a3, 0x2($s0)
    /* 319C14 802D5AC4 AFB20010 */  sw         $s2, 0x10($sp)
    /* 319C18 802D5AC8 0C04DC6E */  jal        func_801371B8_146168
    /* 319C1C 802D5ACC E7B40014 */   swc1      $f20, 0x14($sp)
    /* 319C20 802D5AD0 86110000 */  lh         $s1, 0x0($s0)
    /* 319C24 802D5AD4 86120004 */  lh         $s2, 0x4($s0)
    /* 319C28 802D5AD8 860E0008 */  lh         $t6, 0x8($s0)
  .L802D5ADC_319C2C:
    /* 319C2C 802D5ADC 26650064 */  addiu      $a1, $s3, 0x64
    /* 319C30 802D5AE0 30ACFFFF */  andi       $t4, $a1, 0xFFFF
    /* 319C34 802D5AE4 15C0001A */  bnez       $t6, .L802D5B50_319CA0
    /* 319C38 802D5AE8 32E400FF */   andi      $a0, $s7, 0xFF
    /* 319C3C 802D5AEC 26650064 */  addiu      $a1, $s3, 0x64
    /* 319C40 802D5AF0 00113400 */  sll        $a2, $s1, 16
    /* 319C44 802D5AF4 0006C403 */  sra        $t8, $a2, 16
    /* 319C48 802D5AF8 30AFFFFF */  andi       $t7, $a1, 0xFFFF
    /* 319C4C 802D5AFC 24190028 */  addiu      $t9, $zero, 0x28
    /* 319C50 802D5B00 240800AA */  addiu      $t0, $zero, 0xAA
    /* 319C54 802D5B04 24090148 */  addiu      $t1, $zero, 0x148
    /* 319C58 802D5B08 AFA90028 */  sw         $t1, 0x28($sp)
    /* 319C5C 802D5B0C AFA80024 */  sw         $t0, 0x24($sp)
    /* 319C60 802D5B10 AFB90020 */  sw         $t9, 0x20($sp)
    /* 319C64 802D5B14 01E02825 */  or         $a1, $t7, $zero
    /* 319C68 802D5B18 03003025 */  or         $a2, $t8, $zero
    /* 319C6C 802D5B1C 32E400FF */  andi       $a0, $s7, 0xFF
    /* 319C70 802D5B20 86070002 */  lh         $a3, 0x2($s0)
    /* 319C74 802D5B24 AFB20010 */  sw         $s2, 0x10($sp)
    /* 319C78 802D5B28 AFA00014 */  sw         $zero, 0x14($sp)
    /* 319C7C 802D5B2C AFA00018 */  sw         $zero, 0x18($sp)
    /* 319C80 802D5B30 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 319C84 802D5B34 AFA0002C */  sw         $zero, 0x2C($sp)
    /* 319C88 802D5B38 0C04B5C0 */  jal        func_8012D700_13C6B0
    /* 319C8C 802D5B3C AFA00030 */   sw        $zero, 0x30($sp)
    /* 319C90 802D5B40 00135080 */  sll        $t2, $s3, 2
    /* 319C94 802D5B44 028A5821 */  addu       $t3, $s4, $t2
    /* 319C98 802D5B48 10000019 */  b          .L802D5BB0_319D00
    /* 319C9C 802D5B4C AD620000 */   sw        $v0, 0x0($t3)
  .L802D5B50_319CA0:
    /* 319CA0 802D5B50 00113400 */  sll        $a2, $s1, 16
    /* 319CA4 802D5B54 00066C03 */  sra        $t5, $a2, 16
    /* 319CA8 802D5B58 240E00AA */  addiu      $t6, $zero, 0xAA
    /* 319CAC 802D5B5C 240F0028 */  addiu      $t7, $zero, 0x28
    /* 319CB0 802D5B60 24180148 */  addiu      $t8, $zero, 0x148
    /* 319CB4 802D5B64 AFB80028 */  sw         $t8, 0x28($sp)
    /* 319CB8 802D5B68 AFAF0024 */  sw         $t7, 0x24($sp)
    /* 319CBC 802D5B6C AFAE0020 */  sw         $t6, 0x20($sp)
    /* 319CC0 802D5B70 01A03025 */  or         $a2, $t5, $zero
    /* 319CC4 802D5B74 01802825 */  or         $a1, $t4, $zero
    /* 319CC8 802D5B78 86070002 */  lh         $a3, 0x2($s0)
    /* 319CCC 802D5B7C AFB20010 */  sw         $s2, 0x10($sp)
    /* 319CD0 802D5B80 AFA00014 */  sw         $zero, 0x14($sp)
    /* 319CD4 802D5B84 AFA00018 */  sw         $zero, 0x18($sp)
    /* 319CD8 802D5B88 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 319CDC 802D5B8C AFA0002C */  sw         $zero, 0x2C($sp)
    /* 319CE0 802D5B90 0C04B5C0 */  jal        func_8012D700_13C6B0
    /* 319CE4 802D5B94 AFA00030 */   sw        $zero, 0x30($sp)
    /* 319CE8 802D5B98 0013C880 */  sll        $t9, $s3, 2
    /* 319CEC 802D5B9C 02994021 */  addu       $t0, $s4, $t9
    /* 319CF0 802D5BA0 10000003 */  b          .L802D5BB0_319D00
    /* 319CF4 802D5BA4 AD020000 */   sw        $v0, 0x0($t0)
  .L802D5BA8_319CF8:
    /* 319CF8 802D5BA8 0C04B602 */  jal        func_8012D808_13C7B8
    /* 319CFC 802D5BAC 8D440000 */   lw        $a0, 0x0($t2)
  .L802D5BB0_319D00:
    /* 319D00 802D5BB0 26730001 */  addiu      $s3, $s3, 0x1
    /* 319D04 802D5BB4 00135C00 */  sll        $t3, $s3, 16
    /* 319D08 802D5BB8 000B9C03 */  sra        $s3, $t3, 16
    /* 319D0C 802D5BBC 2A610009 */  slti       $at, $s3, 0x9
    /* 319D10 802D5BC0 5420FF95 */  bnel       $at, $zero, .L802D5A18_319B68
    /* 319D14 802D5BC4 2665000A */   addiu     $a1, $s3, 0xA
    /* 319D18 802D5BC8 8FBF006C */  lw         $ra, 0x6C($sp)
    /* 319D1C 802D5BCC D7B40040 */  ldc1       $f20, 0x40($sp)
    /* 319D20 802D5BD0 8FB00048 */  lw         $s0, 0x48($sp)
    /* 319D24 802D5BD4 8FB1004C */  lw         $s1, 0x4C($sp)
    /* 319D28 802D5BD8 8FB20050 */  lw         $s2, 0x50($sp)
    /* 319D2C 802D5BDC 8FB30054 */  lw         $s3, 0x54($sp)
    /* 319D30 802D5BE0 8FB40058 */  lw         $s4, 0x58($sp)
    /* 319D34 802D5BE4 8FB5005C */  lw         $s5, 0x5C($sp)
    /* 319D38 802D5BE8 8FB60060 */  lw         $s6, 0x60($sp)
    /* 319D3C 802D5BEC 8FB70064 */  lw         $s7, 0x64($sp)
    /* 319D40 802D5BF0 8FBE0068 */  lw         $fp, 0x68($sp)
    /* 319D44 802D5BF4 03E00008 */  jr         $ra
    /* 319D48 802D5BF8 27BD0070 */   addiu     $sp, $sp, 0x70
endlabel func_802D59BC_319B0C
