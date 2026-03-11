nonmatching func_800C2B90_D1B40, 0x1C0

glabel func_800C2B90_D1B40
    /* D1B40 800C2B90 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* D1B44 800C2B94 AFA40028 */  sw         $a0, 0x28($sp)
    /* D1B48 800C2B98 308E00FF */  andi       $t6, $a0, 0xFF
    /* D1B4C 800C2B9C 240100FB */  addiu      $at, $zero, 0xFB
    /* D1B50 800C2BA0 01C02025 */  or         $a0, $t6, $zero
    /* D1B54 800C2BA4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* D1B58 800C2BA8 AFB00018 */  sw         $s0, 0x18($sp)
    /* D1B5C 800C2BAC 11C10063 */  beq        $t6, $at, .L800C2D3C_D1CEC
    /* D1B60 800C2BB0 AFA5002C */   sw        $a1, 0x2C($sp)
    /* D1B64 800C2BB4 3C0F8015 */  lui        $t7, %hi(D_80156ED8)
    /* D1B68 800C2BB8 91EF6ED8 */  lbu        $t7, %lo(D_80156ED8)($t7)
    /* D1B6C 800C2BBC 24010002 */  addiu      $at, $zero, 0x2
    /* D1B70 800C2BC0 51E1005F */  beql       $t7, $at, .L800C2D40_D1CF0
    /* D1B74 800C2BC4 8FBF001C */   lw        $ra, 0x1C($sp)
    /* D1B78 800C2BC8 0C0305ED */  jal        func_800C17B4_D0764
    /* D1B7C 800C2BCC 00002825 */   or        $a1, $zero, $zero
    /* D1B80 800C2BD0 00021C00 */  sll        $v1, $v0, 16
    /* D1B84 800C2BD4 2401FFFD */  addiu      $at, $zero, -0x3
    /* D1B88 800C2BD8 10410058 */  beq        $v0, $at, .L800C2D3C_D1CEC
    /* D1B8C 800C2BDC 0003C403 */   sra       $t8, $v1, 16
    /* D1B90 800C2BE0 0C000E38 */  jal        func_800038E0_44E0
    /* D1B94 800C2BE4 A7B80022 */   sh        $t8, 0x22($sp)
    /* D1B98 800C2BE8 87A30022 */  lh         $v1, 0x22($sp)
    /* D1B9C 800C2BEC 3C098015 */  lui        $t1, %hi(D_80154318)
    /* D1BA0 800C2BF0 25294318 */  addiu      $t1, $t1, %lo(D_80154318)
    /* D1BA4 800C2BF4 0003C8C0 */  sll        $t9, $v1, 3
    /* D1BA8 800C2BF8 0323C823 */  subu       $t9, $t9, $v1
    /* D1BAC 800C2BFC 0019C880 */  sll        $t9, $t9, 2
    /* D1BB0 800C2C00 27280008 */  addiu      $t0, $t9, 0x8
    /* D1BB4 800C2C04 01098021 */  addu       $s0, $t0, $t1
    /* D1BB8 800C2C08 04410004 */  bgez       $v0, .L800C2C1C_D1BCC
    /* D1BBC 800C2C0C 304A0003 */   andi      $t2, $v0, 0x3
    /* D1BC0 800C2C10 11400002 */  beqz       $t2, .L800C2C1C_D1BCC
    /* D1BC4 800C2C14 00000000 */   nop
    /* D1BC8 800C2C18 254AFFFC */  addiu      $t2, $t2, -0x4
  .L800C2C1C_D1BCC:
    /* D1BCC 800C2C1C 0C000E38 */  jal        func_800038E0_44E0
    /* D1BD0 800C2C20 A20A0001 */   sb        $t2, 0x1($s0)
    /* D1BD4 800C2C24 2401000A */  addiu      $at, $zero, 0xA
    /* D1BD8 800C2C28 0041001A */  div        $zero, $v0, $at
    /* D1BDC 800C2C2C 00005810 */  mfhi       $t3
    /* D1BE0 800C2C30 256C0001 */  addiu      $t4, $t3, 0x1
    /* D1BE4 800C2C34 0C000E38 */  jal        func_800038E0_44E0
    /* D1BE8 800C2C38 A20C0002 */   sb        $t4, 0x2($s0)
    /* D1BEC 800C2C3C 04410004 */  bgez       $v0, .L800C2C50_D1C00
    /* D1BF0 800C2C40 304D0007 */   andi      $t5, $v0, 0x7
    /* D1BF4 800C2C44 11A00002 */  beqz       $t5, .L800C2C50_D1C00
    /* D1BF8 800C2C48 00000000 */   nop
    /* D1BFC 800C2C4C 25ADFFF8 */  addiu      $t5, $t5, -0x8
  .L800C2C50_D1C00:
    /* D1C00 800C2C50 25AE0008 */  addiu      $t6, $t5, 0x8
    /* D1C04 800C2C54 0C000E38 */  jal        func_800038E0_44E0
    /* D1C08 800C2C58 A20E0003 */   sb        $t6, 0x3($s0)
    /* D1C0C 800C2C5C 04410004 */  bgez       $v0, .L800C2C70_D1C20
    /* D1C10 800C2C60 304F0001 */   andi      $t7, $v0, 0x1
    /* D1C14 800C2C64 11E00002 */  beqz       $t7, .L800C2C70_D1C20
    /* D1C18 800C2C68 00000000 */   nop
    /* D1C1C 800C2C6C 25EFFFFE */  addiu      $t7, $t7, -0x2
  .L800C2C70_D1C20:
    /* D1C20 800C2C70 24010001 */  addiu      $at, $zero, 0x1
    /* D1C24 800C2C74 15E10004 */  bne        $t7, $at, .L800C2C88_D1C38
    /* D1C28 800C2C78 00000000 */   nop
    /* D1C2C 800C2C7C 82180003 */  lb         $t8, 0x3($s0)
    /* D1C30 800C2C80 0018C823 */  negu       $t9, $t8
    /* D1C34 800C2C84 A2190003 */  sb         $t9, 0x3($s0)
  .L800C2C88_D1C38:
    /* D1C38 800C2C88 0C000E38 */  jal        func_800038E0_44E0
    /* D1C3C 800C2C8C 00000000 */   nop
    /* D1C40 800C2C90 2401000F */  addiu      $at, $zero, 0xF
    /* D1C44 800C2C94 0041001A */  div        $zero, $v0, $at
    /* D1C48 800C2C98 00004010 */  mfhi       $t0
    /* D1C4C 800C2C9C 2509000A */  addiu      $t1, $t0, 0xA
    /* D1C50 800C2CA0 A2090004 */  sb         $t1, 0x4($s0)
    /* D1C54 800C2CA4 93AA002F */  lbu        $t2, 0x2F($sp)
    /* D1C58 800C2CA8 2941001A */  slti       $at, $t2, 0x1A
    /* D1C5C 800C2CAC 5420000F */  bnel       $at, $zero, .L800C2CEC_D1C9C
    /* D1C60 800C2CB0 93AE002F */   lbu       $t6, 0x2F($sp)
    /* D1C64 800C2CB4 0C000E38 */  jal        func_800038E0_44E0
    /* D1C68 800C2CB8 00000000 */   nop
    /* D1C6C 800C2CBC 04410004 */  bgez       $v0, .L800C2CD0_D1C80
    /* D1C70 800C2CC0 304B0001 */   andi      $t3, $v0, 0x1
    /* D1C74 800C2CC4 11600002 */  beqz       $t3, .L800C2CD0_D1C80
    /* D1C78 800C2CC8 00000000 */   nop
    /* D1C7C 800C2CCC 256BFFFE */  addiu      $t3, $t3, -0x2
  .L800C2CD0_D1C80:
    /* D1C80 800C2CD0 24010001 */  addiu      $at, $zero, 0x1
    /* D1C84 800C2CD4 55610005 */  bnel       $t3, $at, .L800C2CEC_D1C9C
    /* D1C88 800C2CD8 93AE002F */   lbu       $t6, 0x2F($sp)
    /* D1C8C 800C2CDC 820C0004 */  lb         $t4, 0x4($s0)
    /* D1C90 800C2CE0 000C6823 */  negu       $t5, $t4
    /* D1C94 800C2CE4 A20D0004 */  sb         $t5, 0x4($s0)
    /* D1C98 800C2CE8 93AE002F */  lbu        $t6, 0x2F($sp)
  .L800C2CEC_D1C9C:
    /* D1C9C 800C2CEC 0C000E38 */  jal        func_800038E0_44E0
    /* D1CA0 800C2CF0 A20E0000 */   sb        $t6, 0x0($s0)
    /* D1CA4 800C2CF4 240100C8 */  addiu      $at, $zero, 0xC8
    /* D1CA8 800C2CF8 0041001A */  div        $zero, $v0, $at
    /* D1CAC 800C2CFC 00007810 */  mfhi       $t7
    /* D1CB0 800C2D00 25F80019 */  addiu      $t8, $t7, 0x19
    /* D1CB4 800C2D04 0C000E38 */  jal        func_800038E0_44E0
    /* D1CB8 800C2D08 A2180005 */   sb        $t8, 0x5($s0)
    /* D1CBC 800C2D0C 24010014 */  addiu      $at, $zero, 0x14
    /* D1CC0 800C2D10 0041001A */  div        $zero, $v0, $at
    /* D1CC4 800C2D14 0000C810 */  mfhi       $t9
    /* D1CC8 800C2D18 2728FFF6 */  addiu      $t0, $t9, -0xA
    /* D1CCC 800C2D1C A2080006 */  sb         $t0, 0x6($s0)
    /* D1CD0 800C2D20 82030006 */  lb         $v1, 0x6($s0)
    /* D1CD4 800C2D24 04610004 */  bgez       $v1, .L800C2D38_D1CE8
    /* D1CD8 800C2D28 246A0005 */   addiu     $t2, $v1, 0x5
    /* D1CDC 800C2D2C 2469FFFB */  addiu      $t1, $v1, -0x5
    /* D1CE0 800C2D30 10000002 */  b          .L800C2D3C_D1CEC
    /* D1CE4 800C2D34 A2090006 */   sb        $t1, 0x6($s0)
  .L800C2D38_D1CE8:
    /* D1CE8 800C2D38 A20A0006 */  sb         $t2, 0x6($s0)
  .L800C2D3C_D1CEC:
    /* D1CEC 800C2D3C 8FBF001C */  lw         $ra, 0x1C($sp)
  .L800C2D40_D1CF0:
    /* D1CF0 800C2D40 8FB00018 */  lw         $s0, 0x18($sp)
    /* D1CF4 800C2D44 27BD0028 */  addiu      $sp, $sp, 0x28
    /* D1CF8 800C2D48 03E00008 */  jr         $ra
    /* D1CFC 800C2D4C 00000000 */   nop
endlabel func_800C2B90_D1B40
