nonmatching func_802DBBBC_1946CC, 0x1EC

glabel func_802DBBBC_1946CC
    /* 1946CC 802DBBBC 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1946D0 802DBBC0 000E7880 */  sll        $t7, $t6, 2
    /* 1946D4 802DBBC4 01EE7821 */  addu       $t7, $t7, $t6
    /* 1946D8 802DBBC8 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1946DC 802DBBCC 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 1946E0 802DBBD0 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1946E4 802DBBD4 000F7900 */  sll        $t7, $t7, 4
    /* 1946E8 802DBBD8 01F84021 */  addu       $t0, $t7, $t8
    /* 1946EC 802DBBDC 91190025 */  lbu        $t9, 0x25($t0)
    /* 1946F0 802DBBE0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1946F4 802DBBE4 AFA40048 */  sw         $a0, 0x48($sp)
    /* 1946F8 802DBBE8 01C02025 */  or         $a0, $t6, $zero
    /* 1946FC 802DBBEC A3AE004B */  sb         $t6, 0x4B($sp)
    /* 194700 802DBBF0 AFA8001C */  sw         $t0, 0x1C($sp)
    /* 194704 802DBBF4 2405FF78 */  addiu      $a1, $zero, -0x88
    /* 194708 802DBBF8 24060032 */  addiu      $a2, $zero, 0x32
    /* 19470C 802DBBFC 240700D4 */  addiu      $a3, $zero, 0xD4
    /* 194710 802DBC00 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 194714 802DBC04 A3B90043 */   sb        $t9, 0x43($sp)
    /* 194718 802DBC08 8FA8001C */  lw         $t0, 0x1C($sp)
    /* 19471C 802DBC0C 93AE0043 */  lbu        $t6, 0x43($sp)
    /* 194720 802DBC10 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 194724 802DBC14 850C000C */  lh         $t4, 0xC($t0)
    /* 194728 802DBC18 000E7880 */  sll        $t7, $t6, 2
    /* 19472C 802DBC1C 01EE7821 */  addu       $t7, $t7, $t6
    /* 194730 802DBC20 3C018015 */  lui        $at, %hi(D_8014DD54)
    /* 194734 802DBC24 000F7900 */  sll        $t7, $t7, 4
    /* 194738 802DBC28 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 19473C 802DBC2C 000C6900 */  sll        $t5, $t4, 4
    /* 194740 802DBC30 002D0821 */  addu       $at, $at, $t5
    /* 194744 802DBC34 240BFF6A */  addiu      $t3, $zero, -0x96
    /* 194748 802DBC38 01F8C821 */  addu       $t9, $t7, $t8
    /* 19474C 802DBC3C A42BDD54 */  sh         $t3, %lo(D_8014DD54)($at)
    /* 194750 802DBC40 AFB90018 */  sw         $t9, 0x18($sp)
    /* 194754 802DBC44 8F2C0020 */  lw         $t4, 0x20($t9)
    /* 194758 802DBC48 24011000 */  addiu      $at, $zero, 0x1000
    /* 19475C 802DBC4C 93A4004B */  lbu        $a0, 0x4B($sp)
    /* 194760 802DBC50 318B1000 */  andi       $t3, $t4, 0x1000
    /* 194764 802DBC54 1161000B */  beq        $t3, $at, .L802DBC84_194794
    /* 194768 802DBC58 3C05802E */   lui       $a1, %hi(D_802DE0C0)
    /* 19476C 802DBC5C 3C05802E */  lui        $a1, %hi(D_802DE0A8)
    /* 194770 802DBC60 3C06802E */  lui        $a2, %hi(D_802DE0B4)
    /* 194774 802DBC64 24C6E0B4 */  addiu      $a2, $a2, %lo(D_802DE0B4)
    /* 194778 802DBC68 24A5E0A8 */  addiu      $a1, $a1, %lo(D_802DE0A8)
    /* 19477C 802DBC6C 0C0B6C5B */  jal        func_802DB16C_193C7C
    /* 194780 802DBC70 AFA8001C */   sw        $t0, 0x1C($sp)
    /* 194784 802DBC74 8FA8001C */  lw         $t0, 0x1C($sp)
    /* 194788 802DBC78 240A1000 */  addiu      $t2, $zero, 0x1000
    /* 19478C 802DBC7C 10000009 */  b          .L802DBCA4_1947B4
    /* 194790 802DBC80 24090320 */   addiu     $t1, $zero, 0x320
  .L802DBC84_194794:
    /* 194794 802DBC84 3C06802E */  lui        $a2, %hi(D_802DE0B4)
    /* 194798 802DBC88 24C6E0B4 */  addiu      $a2, $a2, %lo(D_802DE0B4)
    /* 19479C 802DBC8C 24A5E0C0 */  addiu      $a1, $a1, %lo(D_802DE0C0)
    /* 1947A0 802DBC90 0C0B6C5B */  jal        func_802DB16C_193C7C
    /* 1947A4 802DBC94 AFA8001C */   sw        $t0, 0x1C($sp)
    /* 1947A8 802DBC98 8FA8001C */  lw         $t0, 0x1C($sp)
    /* 1947AC 802DBC9C 240A4000 */  addiu      $t2, $zero, 0x4000
    /* 1947B0 802DBCA0 240907D0 */  addiu      $t1, $zero, 0x7D0
  .L802DBCA4_1947B4:
    /* 1947B4 802DBCA4 5440003D */  bnel       $v0, $zero, .L802DBD9C_1948AC
    /* 1947B8 802DBCA8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1947BC 802DBCAC AFA8001C */  sw         $t0, 0x1C($sp)
    /* 1947C0 802DBCB0 AFA90034 */  sw         $t1, 0x34($sp)
    /* 1947C4 802DBCB4 0C000E38 */  jal        func_800038E0_44E0
    /* 1947C8 802DBCB8 AFAA0038 */   sw        $t2, 0x38($sp)
    /* 1947CC 802DBCBC 24010064 */  addiu      $at, $zero, 0x64
    /* 1947D0 802DBCC0 0041001A */  div        $zero, $v0, $at
    /* 1947D4 802DBCC4 00006810 */  mfhi       $t5
    /* 1947D8 802DBCC8 8FA8001C */  lw         $t0, 0x1C($sp)
    /* 1947DC 802DBCCC 8FA90034 */  lw         $t1, 0x34($sp)
    /* 1947E0 802DBCD0 15A00031 */  bnez       $t5, .L802DBD98_1948A8
    /* 1947E4 802DBCD4 8FAA0038 */   lw        $t2, 0x38($sp)
    /* 1947E8 802DBCD8 3C068005 */  lui        $a2, %hi(D_80052B34)
    /* 1947EC 802DBCDC 8CC62B34 */  lw         $a2, %lo(D_80052B34)($a2)
    /* 1947F0 802DBCE0 850F0000 */  lh         $t7, 0x0($t0)
    /* 1947F4 802DBCE4 8FAC0018 */  lw         $t4, 0x18($sp)
    /* 1947F8 802DBCE8 84CE0000 */  lh         $t6, 0x0($a2)
    /* 1947FC 802DBCEC 01CF1023 */  subu       $v0, $t6, $t7
    /* 194800 802DBCF0 00022023 */  negu       $a0, $v0
    /* 194804 802DBCF4 0082082A */  slt        $at, $a0, $v0
    /* 194808 802DBCF8 10200003 */  beqz       $at, .L802DBD08_194818
    /* 19480C 802DBCFC 00803825 */   or        $a3, $a0, $zero
    /* 194810 802DBD00 10000001 */  b          .L802DBD08_194818
    /* 194814 802DBD04 00403825 */   or        $a3, $v0, $zero
  .L802DBD08_194818:
    /* 194818 802DBD08 84D80004 */  lh         $t8, 0x4($a2)
    /* 19481C 802DBD0C 85190004 */  lh         $t9, 0x4($t0)
    /* 194820 802DBD10 03191823 */  subu       $v1, $t8, $t9
    /* 194824 802DBD14 00032823 */  negu       $a1, $v1
    /* 194828 802DBD18 00A3082A */  slt        $at, $a1, $v1
    /* 19482C 802DBD1C 10200003 */  beqz       $at, .L802DBD2C_19483C
    /* 194830 802DBD20 00A03025 */   or        $a2, $a1, $zero
    /* 194834 802DBD24 10000001 */  b          .L802DBD2C_19483C
    /* 194838 802DBD28 00603025 */   or        $a2, $v1, $zero
  .L802DBD2C_19483C:
    /* 19483C 802DBD2C 00C7082A */  slt        $at, $a2, $a3
    /* 194840 802DBD30 10200007 */  beqz       $at, .L802DBD50_194860
    /* 194844 802DBD34 0082082A */   slt       $at, $a0, $v0
    /* 194848 802DBD38 10200003 */  beqz       $at, .L802DBD48_194858
    /* 19484C 802DBD3C 00801825 */   or        $v1, $a0, $zero
    /* 194850 802DBD40 1000000A */  b          .L802DBD6C_19487C
    /* 194854 802DBD44 0049082A */   slt       $at, $v0, $t1
  .L802DBD48_194858:
    /* 194858 802DBD48 10000007 */  b          .L802DBD68_194878
    /* 19485C 802DBD4C 00601025 */   or        $v0, $v1, $zero
  .L802DBD50_194860:
    /* 194860 802DBD50 00A3082A */  slt        $at, $a1, $v1
    /* 194864 802DBD54 10200003 */  beqz       $at, .L802DBD64_194874
    /* 194868 802DBD58 00A02025 */   or        $a0, $a1, $zero
    /* 19486C 802DBD5C 10000001 */  b          .L802DBD64_194874
    /* 194870 802DBD60 00602025 */   or        $a0, $v1, $zero
  .L802DBD64_194874:
    /* 194874 802DBD64 00801025 */  or         $v0, $a0, $zero
  .L802DBD68_194878:
    /* 194878 802DBD68 0049082A */  slt        $at, $v0, $t1
  .L802DBD6C_19487C:
    /* 19487C 802DBD6C 5020000B */  beql       $at, $zero, .L802DBD9C_1948AC
    /* 194880 802DBD70 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 194884 802DBD74 898B0045 */  lwl        $t3, 0x45($t4)
    /* 194888 802DBD78 998B0048 */  lwr        $t3, 0x48($t4)
    /* 19488C 802DBD7C 316D8000 */  andi       $t5, $t3, 0x8000
    /* 194890 802DBD80 55A00006 */  bnel       $t5, $zero, .L802DBD9C_1948AC
    /* 194894 802DBD84 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 194898 802DBD88 8D0E0020 */  lw         $t6, 0x20($t0)
    /* 19489C 802DBD8C A1000036 */  sb         $zero, 0x36($t0)
    /* 1948A0 802DBD90 01CA7825 */  or         $t7, $t6, $t2
    /* 1948A4 802DBD94 AD0F0020 */  sw         $t7, 0x20($t0)
  .L802DBD98_1948A8:
    /* 1948A8 802DBD98 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802DBD9C_1948AC:
    /* 1948AC 802DBD9C 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 1948B0 802DBDA0 03E00008 */  jr         $ra
    /* 1948B4 802DBDA4 00000000 */   nop
endlabel func_802DBBBC_1946CC
