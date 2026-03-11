nonmatching func_80097B74_A6B24, 0x140

glabel func_80097B74_A6B24
    /* A6B24 80097B74 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* A6B28 80097B78 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* A6B2C 80097B7C 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* A6B30 80097B80 8C620000 */  lw         $v0, 0x0($v1)
    /* A6B34 80097B84 AFA5002C */  sw         $a1, 0x2C($sp)
    /* A6B38 80097B88 00057400 */  sll        $t6, $a1, 16
    /* A6B3C 80097B8C 000E2C03 */  sra        $a1, $t6, 16
    /* A6B40 80097B90 AFA60030 */  sw         $a2, 0x30($sp)
    /* A6B44 80097B94 0006C400 */  sll        $t8, $a2, 16
    /* A6B48 80097B98 00183403 */  sra        $a2, $t8, 16
    /* A6B4C 80097B9C 244E0008 */  addiu      $t6, $v0, 0x8
    /* A6B50 80097BA0 AFBF0024 */  sw         $ra, 0x24($sp)
    /* A6B54 80097BA4 AFA40028 */  sw         $a0, 0x28($sp)
    /* A6B58 80097BA8 AFA70034 */  sw         $a3, 0x34($sp)
    /* A6B5C 80097BAC AC6E0000 */  sw         $t6, 0x0($v1)
    /* A6B60 80097BB0 3C188016 */  lui        $t8, %hi(D_801592A0)
    /* A6B64 80097BB4 3C0F0384 */  lui        $t7, (0x3840010 >> 16)
    /* A6B68 80097BB8 35EF0010 */  ori        $t7, $t7, (0x3840010 & 0xFFFF)
    /* A6B6C 80097BBC 271892A0 */  addiu      $t8, $t8, %lo(D_801592A0)
    /* A6B70 80097BC0 AC580004 */  sw         $t8, 0x4($v0)
    /* A6B74 80097BC4 AC4F0000 */  sw         $t7, 0x0($v0)
    /* A6B78 80097BC8 8C620000 */  lw         $v0, 0x0($v1)
    /* A6B7C 80097BCC 00076400 */  sll        $t4, $a3, 16
    /* A6B80 80097BD0 000C3C03 */  sra        $a3, $t4, 16
    /* A6B84 80097BD4 24590008 */  addiu      $t9, $v0, 0x8
    /* A6B88 80097BD8 AC790000 */  sw         $t9, 0x0($v1)
    /* A6B8C 80097BDC 3C0C0382 */  lui        $t4, (0x3820010 >> 16)
    /* A6B90 80097BE0 3C0D8016 */  lui        $t5, %hi(D_801592B0)
    /* A6B94 80097BE4 25AD92B0 */  addiu      $t5, $t5, %lo(D_801592B0)
    /* A6B98 80097BE8 358C0010 */  ori        $t4, $t4, (0x3820010 & 0xFFFF)
    /* A6B9C 80097BEC AC4C0000 */  sw         $t4, 0x0($v0)
    /* A6BA0 80097BF0 AC4D0004 */  sw         $t5, 0x4($v0)
    /* A6BA4 80097BF4 8C620000 */  lw         $v0, 0x0($v1)
    /* A6BA8 80097BF8 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* A6BAC 80097BFC 240C2000 */  addiu      $t4, $zero, 0x2000
    /* A6BB0 80097C00 244E0008 */  addiu      $t6, $v0, 0x8
    /* A6BB4 80097C04 AC6E0000 */  sw         $t6, 0x0($v1)
    /* A6BB8 80097C08 AC400004 */  sw         $zero, 0x4($v0)
    /* A6BBC 80097C0C AC4F0000 */  sw         $t7, 0x0($v0)
    /* A6BC0 80097C10 8C620000 */  lw         $v0, 0x0($v1)
    /* A6BC4 80097C14 3C19B700 */  lui        $t9, (0xB7000000 >> 16)
    /* A6BC8 80097C18 3C0D8004 */  lui        $t5, %hi(currentLevel)
    /* A6BCC 80097C1C 24580008 */  addiu      $t8, $v0, 0x8
    /* A6BD0 80097C20 AC780000 */  sw         $t8, 0x0($v1)
    /* A6BD4 80097C24 AC4C0004 */  sw         $t4, 0x4($v0)
    /* A6BD8 80097C28 AC590000 */  sw         $t9, 0x0($v0)
    /* A6BDC 80097C2C 8DAD7F90 */  lw         $t5, %lo(currentLevel)($t5)
    /* A6BE0 80097C30 87AE002A */  lh         $t6, 0x2A($sp)
    /* A6BE4 80097C34 24010002 */  addiu      $at, $zero, 0x2
    /* A6BE8 80097C38 15A1000B */  bne        $t5, $at, .L80097C68_A6C18
    /* A6BEC 80097C3C 000E7880 */   sll       $t7, $t6, 2
    /* A6BF0 80097C40 01EE7823 */  subu       $t7, $t7, $t6
    /* A6BF4 80097C44 000F78C0 */  sll        $t7, $t7, 3
    /* A6BF8 80097C48 01EE7823 */  subu       $t7, $t7, $t6
    /* A6BFC 80097C4C 000F7880 */  sll        $t7, $t7, 2
    /* A6C00 80097C50 3C188005 */  lui        $t8, %hi(D_8004DCEA)
    /* A6C04 80097C54 030FC021 */  addu       $t8, $t8, $t7
    /* A6C08 80097C58 9318DCEA */  lbu        $t8, %lo(D_8004DCEA)($t8)
    /* A6C0C 80097C5C 24010012 */  addiu      $at, $zero, 0x12
    /* A6C10 80097C60 53010011 */  beql       $t8, $at, .L80097CA8_A6C58
    /* A6C14 80097C64 8FBF0024 */   lw        $ra, 0x24($sp)
  .L80097C68_A6C18:
    /* A6C18 80097C68 87B9002A */  lh         $t9, 0x2A($sp)
    /* A6C1C 80097C6C 87AE003A */  lh         $t6, 0x3A($sp)
    /* A6C20 80097C70 3C048005 */  lui        $a0, %hi(D_8004DCEA)
    /* A6C24 80097C74 00196080 */  sll        $t4, $t9, 2
    /* A6C28 80097C78 01996023 */  subu       $t4, $t4, $t9
    /* A6C2C 80097C7C 000C60C0 */  sll        $t4, $t4, 3
    /* A6C30 80097C80 01996023 */  subu       $t4, $t4, $t9
    /* A6C34 80097C84 000C6080 */  sll        $t4, $t4, 2
    /* A6C38 80097C88 008C2021 */  addu       $a0, $a0, $t4
    /* A6C3C 80097C8C 240D4000 */  addiu      $t5, $zero, 0x4000
    /* A6C40 80097C90 AFAD0014 */  sw         $t5, 0x14($sp)
    /* A6C44 80097C94 9084DCEA */  lbu        $a0, %lo(D_8004DCEA)($a0)
    /* A6C48 80097C98 AFA00010 */  sw         $zero, 0x10($sp)
    /* A6C4C 80097C9C 0C0407BD */  jal        func_80101EF4_110EA4
    /* A6C50 80097CA0 AFAE0018 */   sw        $t6, 0x18($sp)
    /* A6C54 80097CA4 8FBF0024 */  lw         $ra, 0x24($sp)
  .L80097CA8_A6C58:
    /* A6C58 80097CA8 27BD0028 */  addiu      $sp, $sp, 0x28
    /* A6C5C 80097CAC 03E00008 */  jr         $ra
    /* A6C60 80097CB0 00000000 */   nop
endlabel func_80097B74_A6B24
