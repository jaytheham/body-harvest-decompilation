nonmatching func_802E4ACC_328C1C, 0x1E8

glabel func_802E4ACC_328C1C
    /* 328C1C 802E4ACC 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 328C20 802E4AD0 AFA40048 */  sw         $a0, 0x48($sp)
    /* 328C24 802E4AD4 93AE004B */  lbu        $t6, 0x4B($sp)
    /* 328C28 802E4AD8 240A0050 */  addiu      $t2, $zero, 0x50
    /* 328C2C 802E4ADC 3C098005 */  lui        $t1, %hi(alienInstances)
    /* 328C30 802E4AE0 01CA0019 */  multu      $t6, $t2
    /* 328C34 802E4AE4 25298198 */  addiu      $t1, $t1, %lo(alienInstances)
    /* 328C38 802E4AE8 3C0B802E */  lui        $t3, %hi(D_802E7A18)
    /* 328C3C 802E4AEC AFBF0024 */  sw         $ra, 0x24($sp)
    /* 328C40 802E4AF0 256B7A18 */  addiu      $t3, $t3, %lo(D_802E7A18)
    /* 328C44 802E4AF4 27B90038 */  addiu      $t9, $sp, 0x38
    /* 328C48 802E4AF8 240700C8 */  addiu      $a3, $zero, 0xC8
    /* 328C4C 802E4AFC 00007812 */  mflo       $t7
    /* 328C50 802E4B00 012F4021 */  addu       $t0, $t1, $t7
    /* 328C54 802E4B04 91180025 */  lbu        $t8, 0x25($t0)
    /* 328C58 802E4B08 A3B80047 */  sb         $t8, 0x47($sp)
    /* 328C5C 802E4B0C 8D610000 */  lw         $at, 0x0($t3)
    /* 328C60 802E4B10 AF210000 */  sw         $at, 0x0($t9)
    /* 328C64 802E4B14 95610004 */  lhu        $at, 0x4($t3)
    /* 328C68 802E4B18 A7210004 */  sh         $at, 0x4($t9)
    /* 328C6C 802E4B1C 93AF0047 */  lbu        $t7, 0x47($sp)
    /* 328C70 802E4B20 8D0B0020 */  lw         $t3, 0x20($t0)
    /* 328C74 802E4B24 3C01FFFE */  lui        $at, (0xFFFEFFFF >> 16)
    /* 328C78 802E4B28 01EA0019 */  multu      $t7, $t2
    /* 328C7C 802E4B2C 000B72C0 */  sll        $t6, $t3, 11
    /* 328C80 802E4B30 3421FFFF */  ori        $at, $at, (0xFFFEFFFF & 0xFFFF)
    /* 328C84 802E4B34 0000C012 */  mflo       $t8
    /* 328C88 802E4B38 01386821 */  addu       $t5, $t1, $t8
    /* 328C8C 802E4B3C 91AC0025 */  lbu        $t4, 0x25($t5)
    /* 328C90 802E4B40 240D00FF */  addiu      $t5, $zero, 0xFF
    /* 328C94 802E4B44 018A0019 */  multu      $t4, $t2
    /* 328C98 802E4B48 340CFFFF */  ori        $t4, $zero, 0xFFFF
    /* 328C9C 802E4B4C 0000C812 */  mflo       $t9
    /* 328CA0 802E4B50 01391821 */  addu       $v1, $t1, $t9
    /* 328CA4 802E4B54 05C00026 */  bltz       $t6, .L802E4BF0_328D40
    /* 328CA8 802E4B58 241900F0 */   addiu     $t9, $zero, 0xF0
    /* 328CAC 802E4B5C 8C6F0020 */  lw         $t7, 0x20($v1)
    /* 328CB0 802E4B60 A06D0002 */  sb         $t5, 0x2($v1)
    /* 328CB4 802E4B64 240B0078 */  addiu      $t3, $zero, 0x78
    /* 328CB8 802E4B68 01E1C024 */  and        $t8, $t7, $at
    /* 328CBC 802E4B6C AC780020 */  sw         $t8, 0x20($v1)
    /* 328CC0 802E4B70 AFA80030 */  sw         $t0, 0x30($sp)
    /* 328CC4 802E4B74 AFA30040 */  sw         $v1, 0x40($sp)
    /* 328CC8 802E4B78 AFA0001C */  sw         $zero, 0x1C($sp)
    /* 328CCC 802E4B7C AFAB0018 */  sw         $t3, 0x18($sp)
    /* 328CD0 802E4B80 AFB90014 */  sw         $t9, 0x14($sp)
    /* 328CD4 802E4B84 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 328CD8 802E4B88 85060004 */  lh         $a2, 0x4($t0)
    /* 328CDC 802E4B8C 85050002 */  lh         $a1, 0x2($t0)
    /* 328CE0 802E4B90 0C030EF6 */  jal        func_800C3BD8_D2B88
    /* 328CE4 802E4B94 85040000 */   lh        $a0, 0x0($t0)
    /* 328CE8 802E4B98 8FA80030 */  lw         $t0, 0x30($sp)
    /* 328CEC 802E4B9C 8FA30040 */  lw         $v1, 0x40($sp)
    /* 328CF0 802E4BA0 3C098005 */  lui        $t1, %hi(alienInstances)
    /* 328CF4 802E4BA4 A5020038 */  sh         $v0, 0x38($t0)
    /* 328CF8 802E4BA8 8C640020 */  lw         $a0, 0x20($v1)
    /* 328CFC 802E4BAC 25298198 */  addiu      $t1, $t1, %lo(alienInstances)
    /* 328D00 802E4BB0 3C050002 */  lui        $a1, (0x20000 >> 16)
    /* 328D04 802E4BB4 00047380 */  sll        $t6, $a0, 14
    /* 328D08 802E4BB8 05C1000B */  bgez       $t6, .L802E4BE8_328D38
    /* 328D0C 802E4BBC 240A0050 */   addiu     $t2, $zero, 0x50
    /* 328D10 802E4BC0 906F0000 */  lbu        $t7, 0x0($v1)
    /* 328D14 802E4BC4 3C01FFBF */  lui        $at, (0xFFBFFFFF >> 16)
    /* 328D18 802E4BC8 3421FFFF */  ori        $at, $at, (0xFFBFFFFF & 0xFFFF)
    /* 328D1C 802E4BCC 01EA0019 */  multu      $t7, $t2
    /* 328D20 802E4BD0 0000C012 */  mflo       $t8
    /* 328D24 802E4BD4 01381021 */  addu       $v0, $t1, $t8
    /* 328D28 802E4BD8 8C4D0020 */  lw         $t5, 0x20($v0)
    /* 328D2C 802E4BDC 01A16024 */  and        $t4, $t5, $at
    /* 328D30 802E4BE0 AC4C0020 */  sw         $t4, 0x20($v0)
    /* 328D34 802E4BE4 8C640020 */  lw         $a0, 0x20($v1)
  .L802E4BE8_328D38:
    /* 328D38 802E4BE8 0085C825 */  or         $t9, $a0, $a1
    /* 328D3C 802E4BEC AC790020 */  sw         $t9, 0x20($v1)
  .L802E4BF0_328D40:
    /* 328D40 802E4BF0 93A40047 */  lbu        $a0, 0x47($sp)
    /* 328D44 802E4BF4 0C0B7FC1 */  jal        func_802DFF04_324054
    /* 328D48 802E4BF8 AFA80030 */   sw        $t0, 0x30($sp)
    /* 328D4C 802E4BFC 3C048015 */  lui        $a0, %hi(D_8014DD50)
    /* 328D50 802E4C00 8FA80030 */  lw         $t0, 0x30($sp)
    /* 328D54 802E4C04 2484DD50 */  addiu      $a0, $a0, %lo(D_8014DD50)
    /* 328D58 802E4C08 00027100 */  sll        $t6, $v0, 4
    /* 328D5C 802E4C0C 008E7821 */  addu       $t7, $a0, $t6
    /* 328D60 802E4C10 81E6000C */  lb         $a2, 0xC($t7)
    /* 328D64 802E4C14 8D030020 */  lw         $v1, 0x20($t0)
    /* 328D68 802E4C18 00022C00 */  sll        $a1, $v0, 16
    /* 328D6C 802E4C1C 0006C100 */  sll        $t8, $a2, 4
    /* 328D70 802E4C20 00055C03 */  sra        $t3, $a1, 16
    /* 328D74 802E4C24 00986821 */  addu       $t5, $a0, $t8
    /* 328D78 802E4C28 306C2000 */  andi       $t4, $v1, 0x2000
    /* 328D7C 802E4C2C 01602825 */  or         $a1, $t3, $zero
    /* 328D80 802E4C30 81A6000D */  lb         $a2, 0xD($t5)
    /* 328D84 802E4C34 1580000F */  bnez       $t4, .L802E4C74_328DC4
    /* 328D88 802E4C38 01801825 */   or        $v1, $t4, $zero
    /* 328D8C 802E4C3C 8519002C */  lh         $t9, 0x2C($t0)
    /* 328D90 802E4C40 93A4004B */  lbu        $a0, 0x4B($sp)
    /* 328D94 802E4C44 27A70038 */  addiu      $a3, $sp, 0x38
    /* 328D98 802E4C48 2B210003 */  slti       $at, $t9, 0x3
    /* 328D9C 802E4C4C 14200009 */  bnez       $at, .L802E4C74_328DC4
    /* 328DA0 802E4C50 00000000 */   nop
    /* 328DA4 802E4C54 A7A60034 */  sh         $a2, 0x34($sp)
    /* 328DA8 802E4C58 0C0B8D61 */  jal        func_802E3584_3276D4
    /* 328DAC 802E4C5C AFA80030 */   sw        $t0, 0x30($sp)
    /* 328DB0 802E4C60 8FA80030 */  lw         $t0, 0x30($sp)
    /* 328DB4 802E4C64 87A60034 */  lh         $a2, 0x34($sp)
    /* 328DB8 802E4C68 8D030020 */  lw         $v1, 0x20($t0)
    /* 328DBC 802E4C6C 306B2000 */  andi       $t3, $v1, 0x2000
    /* 328DC0 802E4C70 01601825 */  or         $v1, $t3, $zero
  .L802E4C74_328DC4:
    /* 328DC4 802E4C74 10600007 */  beqz       $v1, .L802E4C94_328DE4
    /* 328DC8 802E4C78 00062C00 */   sll       $a1, $a2, 16
    /* 328DCC 802E4C7C 850E000A */  lh         $t6, 0xA($t0)
    /* 328DD0 802E4C80 85180008 */  lh         $t8, 0x8($t0)
    /* 328DD4 802E4C84 25CF0BB8 */  addiu      $t7, $t6, 0xBB8
    /* 328DD8 802E4C88 270D03E8 */  addiu      $t5, $t8, 0x3E8
    /* 328DDC 802E4C8C A50F000A */  sh         $t7, 0xA($t0)
    /* 328DE0 802E4C90 A50D0008 */  sh         $t5, 0x8($t0)
  .L802E4C94_328DE4:
    /* 328DE4 802E4C94 00056403 */  sra        $t4, $a1, 16
    /* 328DE8 802E4C98 01802825 */  or         $a1, $t4, $zero
    /* 328DEC 802E4C9C 0C0B90FF */  jal        func_802E43FC_32854C
    /* 328DF0 802E4CA0 93A4004B */   lbu       $a0, 0x4B($sp)
    /* 328DF4 802E4CA4 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 328DF8 802E4CA8 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 328DFC 802E4CAC 03E00008 */  jr         $ra
    /* 328E00 802E4CB0 00000000 */   nop
endlabel func_802E4ACC_328C1C
