nonmatching func_80091E70_A0E20, 0x250

glabel func_80091E70_A0E20
    /* A0E20 80091E70 308E00FF */  andi       $t6, $a0, 0xFF
    /* A0E24 80091E74 000E7880 */  sll        $t7, $t6, 2
    /* A0E28 80091E78 01EE7821 */  addu       $t7, $t7, $t6
    /* A0E2C 80091E7C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* A0E30 80091E80 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* A0E34 80091E84 000F7900 */  sll        $t7, $t7, 4
    /* A0E38 80091E88 01F81821 */  addu       $v1, $t7, $t8
    /* A0E3C 80091E8C 9062001A */  lbu        $v0, 0x1A($v1)
    /* A0E40 80091E90 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* A0E44 80091E94 AFA40038 */  sw         $a0, 0x38($sp)
    /* A0E48 80091E98 0002C880 */  sll        $t9, $v0, 2
    /* A0E4C 80091E9C 01C02025 */  or         $a0, $t6, $zero
    /* A0E50 80091EA0 0322C823 */  subu       $t9, $t9, $v0
    /* A0E54 80091EA4 84680000 */  lh         $t0, 0x0($v1)
    /* A0E58 80091EA8 84690004 */  lh         $t1, 0x4($v1)
    /* A0E5C 80091EAC 846E002E */  lh         $t6, 0x2E($v1)
    /* A0E60 80091EB0 0019C880 */  sll        $t9, $t9, 2
    /* A0E64 80091EB4 3C0B8025 */  lui        $t3, %hi(alienSpecs)
    /* A0E68 80091EB8 0322C821 */  addu       $t9, $t9, $v0
    /* A0E6C 80091EBC 0019C8C0 */  sll        $t9, $t9, 3
    /* A0E70 80091EC0 256B6680 */  addiu      $t3, $t3, %lo(alienSpecs)
    /* A0E74 80091EC4 032B3021 */  addu       $a2, $t9, $t3
    /* A0E78 80091EC8 00086203 */  sra        $t4, $t0, 8
    /* A0E7C 80091ECC 00096A03 */  sra        $t5, $t1, 8
    /* A0E80 80091ED0 000E7A03 */  sra        $t7, $t6, 8
    /* A0E84 80091ED4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* A0E88 80091ED8 00002825 */  or         $a1, $zero, $zero
    /* A0E8C 80091EDC 84CA0040 */  lh         $t2, 0x40($a2)
    /* A0E90 80091EE0 01804025 */  or         $t0, $t4, $zero
    /* A0E94 80091EE4 158F0005 */  bne        $t4, $t7, .L80091EFC_A0EAC
    /* A0E98 80091EE8 01A04825 */   or        $t1, $t5, $zero
    /* A0E9C 80091EEC 84780032 */  lh         $t8, 0x32($v1)
    /* A0EA0 80091EF0 0018CA03 */  sra        $t9, $t8, 8
    /* A0EA4 80091EF4 51B90003 */  beql       $t5, $t9, .L80091F04_A0EB4
    /* A0EA8 80091EF8 AFA30024 */   sw        $v1, 0x24($sp)
  .L80091EFC_A0EAC:
    /* A0EAC 80091EFC 24050001 */  addiu      $a1, $zero, 0x1
    /* A0EB0 80091F00 AFA30024 */  sw         $v1, 0x24($sp)
  .L80091F04_A0EB4:
    /* A0EB4 80091F04 A3A4003B */  sb         $a0, 0x3B($sp)
    /* A0EB8 80091F08 A3A50034 */  sb         $a1, 0x34($sp)
    /* A0EBC 80091F0C AFA60020 */  sw         $a2, 0x20($sp)
    /* A0EC0 80091F10 AFA8002C */  sw         $t0, 0x2C($sp)
    /* A0EC4 80091F14 AFA90028 */  sw         $t1, 0x28($sp)
    /* A0EC8 80091F18 0C024670 */  jal        func_800919C0_A0970
    /* A0ECC 80091F1C A7AA0030 */   sh        $t2, 0x30($sp)
    /* A0ED0 80091F20 93A50034 */  lbu        $a1, 0x34($sp)
    /* A0ED4 80091F24 8FA30024 */  lw         $v1, 0x24($sp)
    /* A0ED8 80091F28 8FA8002C */  lw         $t0, 0x2C($sp)
    /* A0EDC 80091F2C 8FA90028 */  lw         $t1, 0x28($sp)
    /* A0EE0 80091F30 10A0001E */  beqz       $a1, .L80091FAC_A0F5C
    /* A0EE4 80091F34 87AA0030 */   lh        $t2, 0x30($sp)
    /* A0EE8 80091F38 00083E00 */  sll        $a3, $t0, 24
    /* A0EEC 80091F3C 00075E03 */  sra        $t3, $a3, 24
    /* A0EF0 80091F40 000B2600 */  sll        $a0, $t3, 24
    /* A0EF4 80091F44 00092E00 */  sll        $a1, $t1, 24
    /* A0EF8 80091F48 00056E03 */  sra        $t5, $a1, 24
    /* A0EFC 80091F4C 00046603 */  sra        $t4, $a0, 24
    /* A0F00 80091F50 01802025 */  or         $a0, $t4, $zero
    /* A0F04 80091F54 01A02825 */  or         $a1, $t5, $zero
    /* A0F08 80091F58 AFAD0018 */  sw         $t5, 0x18($sp)
    /* A0F0C 80091F5C 01603825 */  or         $a3, $t3, $zero
    /* A0F10 80091F60 AFAB001C */  sw         $t3, 0x1C($sp)
    /* A0F14 80091F64 24060800 */  addiu      $a2, $zero, 0x800
    /* A0F18 80091F68 AFA30024 */  sw         $v1, 0x24($sp)
    /* A0F1C 80091F6C 0C02CC97 */  jal        func_800B325C_C220C
    /* A0F20 80091F70 A7AA0030 */   sh        $t2, 0x30($sp)
    /* A0F24 80091F74 8FA30024 */  lw         $v1, 0x24($sp)
    /* A0F28 80091F78 8FA7001C */  lw         $a3, 0x1C($sp)
    /* A0F2C 80091F7C 1040000B */  beqz       $v0, .L80091FAC_A0F5C
    /* A0F30 80091F80 87AA0030 */   lh        $t2, 0x30($sp)
    /* A0F34 80091F84 00072E00 */  sll        $a1, $a3, 24
    /* A0F38 80091F88 00057603 */  sra        $t6, $a1, 24
    /* A0F3C 80091F8C 01C02825 */  or         $a1, $t6, $zero
    /* A0F40 80091F90 93A4003B */  lbu        $a0, 0x3B($sp)
    /* A0F44 80091F94 83A6001B */  lb         $a2, 0x1B($sp)
    /* A0F48 80091F98 AFA30024 */  sw         $v1, 0x24($sp)
    /* A0F4C 80091F9C 0C0246B0 */  jal        func_80091AC0_A0A70
    /* A0F50 80091FA0 A7AA0030 */   sh        $t2, 0x30($sp)
    /* A0F54 80091FA4 8FA30024 */  lw         $v1, 0x24($sp)
    /* A0F58 80091FA8 87AA0030 */  lh         $t2, 0x30($sp)
  .L80091FAC_A0F5C:
    /* A0F5C 80091FAC 8C620020 */  lw         $v0, 0x20($v1)
    /* A0F60 80091FB0 00027900 */  sll        $t7, $v0, 4
    /* A0F64 80091FB4 05E0002D */  bltz       $t7, .L8009206C_A101C
    /* A0F68 80091FB8 30581000 */   andi      $t8, $v0, 0x1000
    /* A0F6C 80091FBC 1300001D */  beqz       $t8, .L80092034_A0FE4
    /* A0F70 80091FC0 30592000 */   andi      $t9, $v0, 0x2000
    /* A0F74 80091FC4 1720001B */  bnez       $t9, .L80092034_A0FE4
    /* A0F78 80091FC8 93AB003B */   lbu       $t3, 0x3B($sp)
    /* A0F7C 80091FCC 3C0D8005 */  lui        $t5, %hi(D_80052A8C)
    /* A0F80 80091FD0 8DAD2A8C */  lw         $t5, %lo(D_80052A8C)($t5)
    /* A0F84 80091FD4 316C001C */  andi       $t4, $t3, 0x1C
    /* A0F88 80091FD8 240A1000 */  addiu      $t2, $zero, 0x1000
    /* A0F8C 80091FDC 31AE001C */  andi       $t6, $t5, 0x1C
    /* A0F90 80091FE0 158E0022 */  bne        $t4, $t6, .L8009206C_A101C
    /* A0F94 80091FE4 24060800 */   addiu     $a2, $zero, 0x800
    /* A0F98 80091FE8 84640014 */  lh         $a0, 0x14($v1)
    /* A0F9C 80091FEC 84650018 */  lh         $a1, 0x18($v1)
    /* A0FA0 80091FF0 AFA30024 */  sw         $v1, 0x24($sp)
    /* A0FA4 80091FF4 00047A03 */  sra        $t7, $a0, 8
    /* A0FA8 80091FF8 00055A03 */  sra        $t3, $a1, 8
    /* A0FAC 80091FFC 000B6E00 */  sll        $t5, $t3, 24
    /* A0FB0 80092000 000FC600 */  sll        $t8, $t7, 24
    /* A0FB4 80092004 00182603 */  sra        $a0, $t8, 24
    /* A0FB8 80092008 000D2E03 */  sra        $a1, $t5, 24
    /* A0FBC 8009200C 0C02CC97 */  jal        func_800B325C_C220C
    /* A0FC0 80092010 A7AA0030 */   sh        $t2, 0x30($sp)
    /* A0FC4 80092014 8FA30024 */  lw         $v1, 0x24($sp)
    /* A0FC8 80092018 14400014 */  bnez       $v0, .L8009206C_A101C
    /* A0FCC 8009201C 87AA0030 */   lh        $t2, 0x30($sp)
    /* A0FD0 80092020 8C6E0020 */  lw         $t6, 0x20($v1)
    /* A0FD4 80092024 2401EEFF */  addiu      $at, $zero, -0x1101
    /* A0FD8 80092028 01C17824 */  and        $t7, $t6, $at
    /* A0FDC 8009202C 1000000F */  b          .L8009206C_A101C
    /* A0FE0 80092030 AC6F0020 */   sw        $t7, 0x20($v1)
  .L80092034_A0FE4:
    /* A0FE4 80092034 30582000 */  andi       $t8, $v0, 0x2000
    /* A0FE8 80092038 5300000D */  beql       $t8, $zero, .L80092070_A1020
    /* A0FEC 8009203C 84620012 */   lh        $v0, 0x12($v1)
    /* A0FF0 80092040 8479002C */  lh         $t9, 0x2C($v1)
    /* A0FF4 80092044 240AFF80 */  addiu      $t2, $zero, -0x80
    /* A0FF8 80092048 272BFFFC */  addiu      $t3, $t9, -0x4
    /* A0FFC 8009204C A46B002C */  sh         $t3, 0x2C($v1)
    /* A1000 80092050 846D002C */  lh         $t5, 0x2C($v1)
    /* A1004 80092054 5DA00006 */  bgtzl      $t5, .L80092070_A1020
    /* A1008 80092058 84620012 */   lh        $v0, 0x12($v1)
    /* A100C 8009205C 8C6C0020 */  lw         $t4, 0x20($v1)
    /* A1010 80092060 2401DFFF */  addiu      $at, $zero, -0x2001
    /* A1014 80092064 01817024 */  and        $t6, $t4, $at
    /* A1018 80092068 AC6E0020 */  sw         $t6, 0x20($v1)
  .L8009206C_A101C:
    /* A101C 8009206C 84620012 */  lh         $v0, 0x12($v1)
  .L80092070_A1020:
    /* A1020 80092070 8FAF0020 */  lw         $t7, 0x20($sp)
    /* A1024 80092074 004A082A */  slt        $at, $v0, $t2
    /* A1028 80092078 50200007 */  beql       $at, $zero, .L80092098_A1048
    /* A102C 8009207C 0142082A */   slt       $at, $t2, $v0
    /* A1030 80092080 85F8003E */  lh         $t8, 0x3E($t7)
    /* A1034 80092084 0018C880 */  sll        $t9, $t8, 2
    /* A1038 80092088 00595821 */  addu       $t3, $v0, $t9
    /* A103C 8009208C 10000008 */  b          .L800920B0_A1060
    /* A1040 80092090 A46B0012 */   sh        $t3, 0x12($v1)
    /* A1044 80092094 0142082A */  slt        $at, $t2, $v0
  .L80092098_A1048:
    /* A1048 80092098 10200005 */  beqz       $at, .L800920B0_A1060
    /* A104C 8009209C 8FAD0020 */   lw        $t5, 0x20($sp)
    /* A1050 800920A0 85AC003E */  lh         $t4, 0x3E($t5)
    /* A1054 800920A4 000C7080 */  sll        $t6, $t4, 2
    /* A1058 800920A8 004E7823 */  subu       $t7, $v0, $t6
    /* A105C 800920AC A46F0012 */  sh         $t7, 0x12($v1)
  .L800920B0_A1060:
    /* A1060 800920B0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* A1064 800920B4 27BD0038 */  addiu      $sp, $sp, 0x38
    /* A1068 800920B8 03E00008 */  jr         $ra
    /* A106C 800920BC 00000000 */   nop
endlabel func_80091E70_A0E20
