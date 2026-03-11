nonmatching func_802DDE04_1F6B14, 0x2C4

glabel func_802DDE04_1F6B14
    /* 1F6B14 802DDE04 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 1F6B18 802DDE08 AFA40050 */  sw         $a0, 0x50($sp)
    /* 1F6B1C 802DDE0C 93AE0053 */  lbu        $t6, 0x53($sp)
    /* 1F6B20 802DDE10 3C058005 */  lui        $a1, %hi(alienInstances)
    /* 1F6B24 802DDE14 24A58198 */  addiu      $a1, $a1, %lo(alienInstances)
    /* 1F6B28 802DDE18 000E7880 */  sll        $t7, $t6, 2
    /* 1F6B2C 802DDE1C 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F6B30 802DDE20 000F7900 */  sll        $t7, $t7, 4
    /* 1F6B34 802DDE24 00AF1821 */  addu       $v1, $a1, $t7
    /* 1F6B38 802DDE28 90620025 */  lbu        $v0, 0x25($v1)
    /* 1F6B3C 802DDE2C AFBF001C */  sw         $ra, 0x1C($sp)
    /* 1F6B40 802DDE30 0002C080 */  sll        $t8, $v0, 2
    /* 1F6B44 802DDE34 0302C021 */  addu       $t8, $t8, $v0
    /* 1F6B48 802DDE38 0018C100 */  sll        $t8, $t8, 4
    /* 1F6B4C 802DDE3C 00B84021 */  addu       $t0, $a1, $t8
    /* 1F6B50 802DDE40 8D190020 */  lw         $t9, 0x20($t0)
    /* 1F6B54 802DDE44 24050261 */  addiu      $a1, $zero, 0x261
    /* 1F6B58 802DDE48 332A6000 */  andi       $t2, $t9, 0x6000
    /* 1F6B5C 802DDE4C 5540001D */  bnel       $t2, $zero, .L802DDEC4_1F6BD4
    /* 1F6B60 802DDE50 846C000C */   lh        $t4, 0xC($v1)
    /* 1F6B64 802DDE54 8C6B0020 */  lw         $t3, 0x20($v1)
    /* 1F6B68 802DDE58 3401F000 */  ori        $at, $zero, 0xF000
    /* 1F6B6C 802DDE5C 316CF000 */  andi       $t4, $t3, 0xF000
    /* 1F6B70 802DDE60 51810018 */  beql       $t4, $at, .L802DDEC4_1F6BD4
    /* 1F6B74 802DDE64 846C000C */   lh        $t4, 0xC($v1)
    /* 1F6B78 802DDE68 846D001E */  lh         $t5, 0x1E($v1)
    /* 1F6B7C 802DDE6C 55A00015 */  bnel       $t5, $zero, .L802DDEC4_1F6BD4
    /* 1F6B80 802DDE70 846C000C */   lh        $t4, 0xC($v1)
    /* 1F6B84 802DDE74 846F002C */  lh         $t7, 0x2C($v1)
    /* 1F6B88 802DDE78 01C02025 */  or         $a0, $t6, $zero
    /* 1F6B8C 802DDE7C 51E00011 */  beql       $t7, $zero, .L802DDEC4_1F6BD4
    /* 1F6B90 802DDE80 846C000C */   lh        $t4, 0xC($v1)
    /* 1F6B94 802DDE84 24050800 */  addiu      $a1, $zero, 0x800
    /* 1F6B98 802DDE88 AFA30030 */  sw         $v1, 0x30($sp)
    /* 1F6B9C 802DDE8C 0C0213FA */  jal        func_80084FE8_93F98
    /* 1F6BA0 802DDE90 AFA8002C */   sw        $t0, 0x2C($sp)
    /* 1F6BA4 802DDE94 8FA30030 */  lw         $v1, 0x30($sp)
    /* 1F6BA8 802DDE98 10400087 */  beqz       $v0, .L802DE0B8_1F6DC8
    /* 1F6BAC 802DDE9C 8FA8002C */   lw        $t0, 0x2C($sp)
    /* 1F6BB0 802DDEA0 8D180020 */  lw         $t8, 0x20($t0)
    /* 1F6BB4 802DDEA4 37192000 */  ori        $t9, $t8, 0x2000
    /* 1F6BB8 802DDEA8 AD190020 */  sw         $t9, 0x20($t0)
    /* 1F6BBC 802DDEAC 846A002C */  lh         $t2, 0x2C($v1)
    /* 1F6BC0 802DDEB0 A0600036 */  sb         $zero, 0x36($v1)
    /* 1F6BC4 802DDEB4 254BFFFF */  addiu      $t3, $t2, -0x1
    /* 1F6BC8 802DDEB8 1000007F */  b          .L802DE0B8_1F6DC8
    /* 1F6BCC 802DDEBC A46B002C */   sh        $t3, 0x2C($v1)
    /* 1F6BD0 802DDEC0 846C000C */  lh         $t4, 0xC($v1)
  .L802DDEC4_1F6BD4:
    /* 1F6BD4 802DDEC4 3C078015 */  lui        $a3, %hi(D_8014DD50)
    /* 1F6BD8 802DDEC8 24E7DD50 */  addiu      $a3, $a3, %lo(D_8014DD50)
    /* 1F6BDC 802DDECC 000C6900 */  sll        $t5, $t4, 4
    /* 1F6BE0 802DDED0 00ED7821 */  addu       $t7, $a3, $t5
    /* 1F6BE4 802DDED4 81EE000C */  lb         $t6, 0xC($t7)
    /* 1F6BE8 802DDED8 8466002C */  lh         $a2, 0x2C($v1)
    /* 1F6BEC 802DDEDC A7AE0040 */  sh         $t6, 0x40($sp)
    /* 1F6BF0 802DDEE0 87B80040 */  lh         $t8, 0x40($sp)
    /* 1F6BF4 802DDEE4 0018C900 */  sll        $t9, $t8, 4
    /* 1F6BF8 802DDEE8 00F95021 */  addu       $t2, $a3, $t9
    /* 1F6BFC 802DDEEC 814B000C */  lb         $t3, 0xC($t2)
    /* 1F6C00 802DDEF0 000B6100 */  sll        $t4, $t3, 4
    /* 1F6C04 802DDEF4 00EC6821 */  addu       $t5, $a3, $t4
    /* 1F6C08 802DDEF8 81AF000C */  lb         $t7, 0xC($t5)
    /* 1F6C0C 802DDEFC A7AB0042 */  sh         $t3, 0x42($sp)
    /* 1F6C10 802DDF00 000F7100 */  sll        $t6, $t7, 4
    /* 1F6C14 802DDF04 00EEC021 */  addu       $t8, $a3, $t6
    /* 1F6C18 802DDF08 8319000C */  lb         $t9, 0xC($t8)
    /* 1F6C1C 802DDF0C A7AF0044 */  sh         $t7, 0x44($sp)
    /* 1F6C20 802DDF10 00195100 */  sll        $t2, $t9, 4
    /* 1F6C24 802DDF14 00EA5821 */  addu       $t3, $a3, $t2
    /* 1F6C28 802DDF18 816C000C */  lb         $t4, 0xC($t3)
    /* 1F6C2C 802DDF1C A7B90046 */  sh         $t9, 0x46($sp)
    /* 1F6C30 802DDF20 24CB0064 */  addiu      $t3, $a2, 0x64
    /* 1F6C34 802DDF24 A7AC0048 */  sh         $t4, 0x48($sp)
    /* 1F6C38 802DDF28 8D0E0020 */  lw         $t6, 0x20($t0)
    /* 1F6C3C 802DDF2C 000C6900 */  sll        $t5, $t4, 4
    /* 1F6C40 802DDF30 00ED7821 */  addu       $t7, $a3, $t5
    /* 1F6C44 802DDF34 31D82000 */  andi       $t8, $t6, 0x2000
    /* 1F6C48 802DDF38 13000003 */  beqz       $t8, .L802DDF48_1F6C58
    /* 1F6C4C 802DDF3C 81E9000C */   lb        $t1, 0xC($t7)
    /* 1F6C50 802DDF40 10000009 */  b          .L802DDF68_1F6C78
    /* 1F6C54 802DDF44 24022710 */   addiu     $v0, $zero, 0x2710
  .L802DDF48_1F6C58:
    /* 1F6C58 802DDF48 8C790020 */  lw         $t9, 0x20($v1)
    /* 1F6C5C 802DDF4C 3401F000 */  ori        $at, $zero, 0xF000
    /* 1F6C60 802DDF50 00001025 */  or         $v0, $zero, $zero
    /* 1F6C64 802DDF54 332AF000 */  andi       $t2, $t9, 0xF000
    /* 1F6C68 802DDF58 15410003 */  bne        $t2, $at, .L802DDF68_1F6C78
    /* 1F6C6C 802DDF5C 00000000 */   nop
    /* 1F6C70 802DDF60 10000001 */  b          .L802DDF68_1F6C78
    /* 1F6C74 802DDF64 24021D4C */   addiu     $v0, $zero, 0x1D4C
  .L802DDF68_1F6C78:
    /* 1F6C78 802DDF68 00C2082A */  slt        $at, $a2, $v0
    /* 1F6C7C 802DDF6C 10200004 */  beqz       $at, .L802DDF80_1F6C90
    /* 1F6C80 802DDF70 00096900 */   sll       $t5, $t1, 4
    /* 1F6C84 802DDF74 A46B002C */  sh         $t3, 0x2C($v1)
    /* 1F6C88 802DDF78 10000006 */  b          .L802DDF94_1F6CA4
    /* 1F6C8C 802DDF7C 8466002C */   lh        $a2, 0x2C($v1)
  .L802DDF80_1F6C90:
    /* 1F6C90 802DDF80 0046082A */  slt        $at, $v0, $a2
    /* 1F6C94 802DDF84 10200003 */  beqz       $at, .L802DDF94_1F6CA4
    /* 1F6C98 802DDF88 24CCFF9C */   addiu     $t4, $a2, -0x64
    /* 1F6C9C 802DDF8C A46C002C */  sh         $t4, 0x2C($v1)
    /* 1F6CA0 802DDF90 8466002C */  lh         $a2, 0x2C($v1)
  .L802DDF94_1F6CA4:
    /* 1F6CA4 802DDF94 00ED1021 */  addu       $v0, $a3, $t5
    /* 1F6CA8 802DDF98 944F0008 */  lhu        $t7, 0x8($v0)
    /* 1F6CAC 802DDF9C 93A40053 */  lbu        $a0, 0x53($sp)
    /* 1F6CB0 802DDFA0 AFA30030 */  sw         $v1, 0x30($sp)
    /* 1F6CB4 802DDFA4 01E67021 */  addu       $t6, $t7, $a2
    /* 1F6CB8 802DDFA8 A44E0008 */  sh         $t6, 0x8($v0)
    /* 1F6CBC 802DDFAC 0C04DD1A */  jal        func_80137468_146418
    /* 1F6CC0 802DDFB0 AFA8002C */   sw        $t0, 0x2C($sp)
    /* 1F6CC4 802DDFB4 8FA30030 */  lw         $v1, 0x30($sp)
    /* 1F6CC8 802DDFB8 8FA8002C */  lw         $t0, 0x2C($sp)
    /* 1F6CCC 802DDFBC 8478002C */  lh         $t8, 0x2C($v1)
    /* 1F6CD0 802DDFC0 2B0126AD */  slti       $at, $t8, 0x26AD
    /* 1F6CD4 802DDFC4 5420003D */  bnel       $at, $zero, .L802DE0BC_1F6DCC
    /* 1F6CD8 802DDFC8 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 1F6CDC 802DDFCC 8D020020 */  lw         $v0, 0x20($t0)
    /* 1F6CE0 802DDFD0 24050005 */  addiu      $a1, $zero, 0x5
    /* 1F6CE4 802DDFD4 24060004 */  addiu      $a2, $zero, 0x4
    /* 1F6CE8 802DDFD8 30592000 */  andi       $t9, $v0, 0x2000
    /* 1F6CEC 802DDFDC 13200036 */  beqz       $t9, .L802DE0B8_1F6DC8
    /* 1F6CF0 802DDFE0 344A1000 */   ori       $t2, $v0, 0x1000
    /* 1F6CF4 802DDFE4 AD0A0020 */  sw         $t2, 0x20($t0)
    /* 1F6CF8 802DDFE8 3C0B802E */  lui        $t3, %hi(D_802E0B08)
    /* 1F6CFC 802DDFEC 256B0B08 */  addiu      $t3, $t3, %lo(D_802E0B08)
    /* 1F6D00 802DDFF0 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 1F6D04 802DDFF4 AFA8002C */  sw         $t0, 0x2C($sp)
    /* 1F6D08 802DDFF8 AFA30030 */  sw         $v1, 0x30($sp)
    /* 1F6D0C 802DDFFC 93A40053 */  lbu        $a0, 0x53($sp)
    /* 1F6D10 802DE000 0C0207C6 */  jal        func_80081F18_90EC8
    /* 1F6D14 802DE004 27A70040 */   addiu     $a3, $sp, 0x40
    /* 1F6D18 802DE008 24010002 */  addiu      $at, $zero, 0x2
    /* 1F6D1C 802DE00C 8FA30030 */  lw         $v1, 0x30($sp)
    /* 1F6D20 802DE010 14410020 */  bne        $v0, $at, .L802DE094_1F6DA4
    /* 1F6D24 802DE014 8FA8002C */   lw        $t0, 0x2C($sp)
    /* 1F6D28 802DE018 93A40053 */  lbu        $a0, 0x53($sp)
    /* 1F6D2C 802DE01C 00002825 */  or         $a1, $zero, $zero
    /* 1F6D30 802DE020 00003025 */  or         $a2, $zero, $zero
    /* 1F6D34 802DE024 0C021C62 */  jal        func_80087188_96138
    /* 1F6D38 802DE028 AFA30030 */   sw        $v1, 0x30($sp)
    /* 1F6D3C 802DE02C 8FA30030 */  lw         $v1, 0x30($sp)
    /* 1F6D40 802DE030 3401F000 */  ori        $at, $zero, 0xF000
    /* 1F6D44 802DE034 8C640020 */  lw         $a0, 0x20($v1)
    /* 1F6D48 802DE038 308CF000 */  andi       $t4, $a0, 0xF000
    /* 1F6D4C 802DE03C 1181001E */  beq        $t4, $at, .L802DE0B8_1F6DC8
    /* 1F6D50 802DE040 308D6000 */   andi      $t5, $a0, 0x6000
    /* 1F6D54 802DE044 11A0000A */  beqz       $t5, .L802DE070_1F6D80
    /* 1F6D58 802DE048 00000000 */   nop
    /* 1F6D5C 802DE04C 0C000E38 */  jal        func_800038E0_44E0
    /* 1F6D60 802DE050 AFA30030 */   sw        $v1, 0x30($sp)
    /* 1F6D64 802DE054 24010046 */  addiu      $at, $zero, 0x46
    /* 1F6D68 802DE058 0041001A */  div        $zero, $v0, $at
    /* 1F6D6C 802DE05C 8FA30030 */  lw         $v1, 0x30($sp)
    /* 1F6D70 802DE060 00007810 */  mfhi       $t7
    /* 1F6D74 802DE064 25EE001E */  addiu      $t6, $t7, 0x1E
    /* 1F6D78 802DE068 10000013 */  b          .L802DE0B8_1F6DC8
    /* 1F6D7C 802DE06C A46E001E */   sh        $t6, 0x1E($v1)
  .L802DE070_1F6D80:
    /* 1F6D80 802DE070 0C000E38 */  jal        func_800038E0_44E0
    /* 1F6D84 802DE074 AFA30030 */   sw        $v1, 0x30($sp)
    /* 1F6D88 802DE078 24010064 */  addiu      $at, $zero, 0x64
    /* 1F6D8C 802DE07C 0041001A */  div        $zero, $v0, $at
    /* 1F6D90 802DE080 8FA30030 */  lw         $v1, 0x30($sp)
    /* 1F6D94 802DE084 0000C010 */  mfhi       $t8
    /* 1F6D98 802DE088 27190032 */  addiu      $t9, $t8, 0x32
    /* 1F6D9C 802DE08C 1000000A */  b          .L802DE0B8_1F6DC8
    /* 1F6DA0 802DE090 A479001E */   sh        $t9, 0x1E($v1)
  .L802DE094_1F6DA4:
    /* 1F6DA4 802DE094 00025600 */  sll        $t2, $v0, 24
    /* 1F6DA8 802DE098 000A5E03 */  sra        $t3, $t2, 24
    /* 1F6DAC 802DE09C 24010004 */  addiu      $at, $zero, 0x4
    /* 1F6DB0 802DE0A0 55610006 */  bnel       $t3, $at, .L802DE0BC_1F6DCC
    /* 1F6DB4 802DE0A4 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 1F6DB8 802DE0A8 8D0C0020 */  lw         $t4, 0x20($t0)
    /* 1F6DBC 802DE0AC 2401CFFF */  addiu      $at, $zero, -0x3001
    /* 1F6DC0 802DE0B0 01816824 */  and        $t5, $t4, $at
    /* 1F6DC4 802DE0B4 AD0D0020 */  sw         $t5, 0x20($t0)
  .L802DE0B8_1F6DC8:
    /* 1F6DC8 802DE0B8 8FBF001C */  lw         $ra, 0x1C($sp)
  .L802DE0BC_1F6DCC:
    /* 1F6DCC 802DE0BC 27BD0050 */  addiu      $sp, $sp, 0x50
    /* 1F6DD0 802DE0C0 03E00008 */  jr         $ra
    /* 1F6DD4 802DE0C4 00000000 */   nop
endlabel func_802DDE04_1F6B14
