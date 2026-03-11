nonmatching func_800DA7CC_E977C, 0x1C8

glabel func_800DA7CC_E977C
    /* E977C 800DA7CC 00057400 */  sll        $t6, $a1, 16
    /* E9780 800DA7D0 000E7C03 */  sra        $t7, $t6, 16
    /* E9784 800DA7D4 000FC0C0 */  sll        $t8, $t7, 3
    /* E9788 800DA7D8 030FC023 */  subu       $t8, $t8, $t7
    /* E978C 800DA7DC 3C198015 */  lui        $t9, %hi(D_80154318)
    /* E9790 800DA7E0 27394318 */  addiu      $t9, $t9, %lo(D_80154318)
    /* E9794 800DA7E4 0018C080 */  sll        $t8, $t8, 2
    /* E9798 800DA7E8 03191821 */  addu       $v1, $t8, $t9
    /* E979C 800DA7EC 84690008 */  lh         $t1, 0x8($v1)
    /* E97A0 800DA7F0 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* E97A4 800DA7F4 240100FB */  addiu      $at, $zero, 0xFB
    /* E97A8 800DA7F8 AFBF003C */  sw         $ra, 0x3C($sp)
    /* E97AC 800DA7FC AFA40050 */  sw         $a0, 0x50($sp)
    /* E97B0 800DA800 1121001A */  beq        $t1, $at, .L800DA86C_E981C
    /* E97B4 800DA804 AFA50054 */   sw        $a1, 0x54($sp)
    /* E97B8 800DA808 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* E97BC 800DA80C 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* E97C0 800DA810 24680008 */  addiu      $t0, $v1, 0x8
    /* E97C4 800DA814 91040001 */  lbu        $a0, 0x1($t0)
    /* E97C8 800DA818 84460002 */  lh         $a2, 0x2($v0)
    /* E97CC 800DA81C 84450000 */  lh         $a1, 0x0($v0)
    /* E97D0 800DA820 84470004 */  lh         $a3, 0x4($v0)
    /* E97D4 800DA824 24C60050 */  addiu      $a2, $a2, 0x50
    /* E97D8 800DA828 00065400 */  sll        $t2, $a2, 16
    /* E97DC 800DA82C 000A3403 */  sra        $a2, $t2, 16
    /* E97E0 800DA830 0C03774C */  jal        func_800DDD30_ECCE0
    /* E97E4 800DA834 AFA80040 */   sw        $t0, 0x40($sp)
    /* E97E8 800DA838 87AC0052 */  lh         $t4, 0x52($sp)
    /* E97EC 800DA83C 3C058015 */  lui        $a1, %hi(D_80154324)
    /* E97F0 800DA840 8FA80040 */  lw         $t0, 0x40($sp)
    /* E97F4 800DA844 000C68C0 */  sll        $t5, $t4, 3
    /* E97F8 800DA848 01AC6823 */  subu       $t5, $t5, $t4
    /* E97FC 800DA84C 000D6880 */  sll        $t5, $t5, 2
    /* E9800 800DA850 00AD2821 */  addu       $a1, $a1, $t5
    /* E9804 800DA854 84A54324 */  lh         $a1, %lo(D_80154324)($a1)
    /* E9808 800DA858 91040001 */  lbu        $a0, 0x1($t0)
    /* E980C 800DA85C 00057080 */  sll        $t6, $a1, 2
    /* E9810 800DA860 01C57023 */  subu       $t6, $t6, $a1
    /* E9814 800DA864 0C037779 */  jal        func_800DDDE4_ECD94
    /* E9818 800DA868 31C500FF */   andi      $a1, $t6, 0xFF
  .L800DA86C_E981C:
    /* E981C 800DA86C 87B80052 */  lh         $t8, 0x52($sp)
    /* E9820 800DA870 3C028015 */  lui        $v0, %hi(D_80154324)
    /* E9824 800DA874 24010003 */  addiu      $at, $zero, 0x3
    /* E9828 800DA878 0018C8C0 */  sll        $t9, $t8, 3
    /* E982C 800DA87C 0338C823 */  subu       $t9, $t9, $t8
    /* E9830 800DA880 0019C880 */  sll        $t9, $t9, 2
    /* E9834 800DA884 00591021 */  addu       $v0, $v0, $t9
    /* E9838 800DA888 84424324 */  lh         $v0, %lo(D_80154324)($v0)
    /* E983C 800DA88C 0041001A */  div        $zero, $v0, $at
    /* E9840 800DA890 00004810 */  mfhi       $t1
    /* E9844 800DA894 2841000A */  slti       $at, $v0, 0xA
    /* E9848 800DA898 5520003B */  bnel       $t1, $zero, .L800DA988_E9938
    /* E984C 800DA89C 8FBF003C */   lw        $ra, 0x3C($sp)
    /* E9850 800DA8A0 1020001E */  beqz       $at, .L800DA91C_E98CC
    /* E9854 800DA8A4 3C028005 */   lui       $v0, %hi(D_80052B34)
    /* E9858 800DA8A8 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* E985C 800DA8AC 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* E9860 800DA8B0 240C000A */  addiu      $t4, $zero, 0xA
    /* E9864 800DA8B4 240D003C */  addiu      $t5, $zero, 0x3C
    /* E9868 800DA8B8 84450002 */  lh         $a1, 0x2($v0)
    /* E986C 800DA8BC 84440000 */  lh         $a0, 0x0($v0)
    /* E9870 800DA8C0 84460004 */  lh         $a2, 0x4($v0)
    /* E9874 800DA8C4 24A5003C */  addiu      $a1, $a1, 0x3C
    /* E9878 800DA8C8 00055400 */  sll        $t2, $a1, 16
    /* E987C 800DA8CC 000A2C03 */  sra        $a1, $t2, 16
    /* E9880 800DA8D0 240A00FF */  addiu      $t2, $zero, 0xFF
    /* E9884 800DA8D4 240E00FF */  addiu      $t6, $zero, 0xFF
    /* E9888 800DA8D8 240F0028 */  addiu      $t7, $zero, 0x28
    /* E988C 800DA8DC 2418001E */  addiu      $t8, $zero, 0x1E
    /* E9890 800DA8E0 241900C8 */  addiu      $t9, $zero, 0xC8
    /* E9894 800DA8E4 240900C8 */  addiu      $t1, $zero, 0xC8
    /* E9898 800DA8E8 AFA9002C */  sw         $t1, 0x2C($sp)
    /* E989C 800DA8EC AFB90028 */  sw         $t9, 0x28($sp)
    /* E98A0 800DA8F0 AFB80024 */  sw         $t8, 0x24($sp)
    /* E98A4 800DA8F4 AFAF0020 */  sw         $t7, 0x20($sp)
    /* E98A8 800DA8F8 AFAE001C */  sw         $t6, 0x1C($sp)
    /* E98AC 800DA8FC AFAA0030 */  sw         $t2, 0x30($sp)
    /* E98B0 800DA900 AFAD0018 */  sw         $t5, 0x18($sp)
    /* E98B4 800DA904 AFA00014 */  sw         $zero, 0x14($sp)
    /* E98B8 800DA908 AFAC0010 */  sw         $t4, 0x10($sp)
    /* E98BC 800DA90C 0C031507 */  jal        func_800C541C_D43CC
    /* E98C0 800DA910 00003825 */   or        $a3, $zero, $zero
    /* E98C4 800DA914 1000001C */  b          .L800DA988_E9938
    /* E98C8 800DA918 8FBF003C */   lw        $ra, 0x3C($sp)
  .L800DA91C_E98CC:
    /* E98CC 800DA91C 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* E98D0 800DA920 240D000A */  addiu      $t5, $zero, 0xA
    /* E98D4 800DA924 240E0028 */  addiu      $t6, $zero, 0x28
    /* E98D8 800DA928 84450002 */  lh         $a1, 0x2($v0)
    /* E98DC 800DA92C 84440000 */  lh         $a0, 0x0($v0)
    /* E98E0 800DA930 84460004 */  lh         $a2, 0x4($v0)
    /* E98E4 800DA934 24A5003C */  addiu      $a1, $a1, 0x3C
    /* E98E8 800DA938 00055C00 */  sll        $t3, $a1, 16
    /* E98EC 800DA93C 000B2C03 */  sra        $a1, $t3, 16
    /* E98F0 800DA940 240B00FF */  addiu      $t3, $zero, 0xFF
    /* E98F4 800DA944 240F00FF */  addiu      $t7, $zero, 0xFF
    /* E98F8 800DA948 24180001 */  addiu      $t8, $zero, 0x1
    /* E98FC 800DA94C 24190014 */  addiu      $t9, $zero, 0x14
    /* E9900 800DA950 240900C8 */  addiu      $t1, $zero, 0xC8
    /* E9904 800DA954 240A00C8 */  addiu      $t2, $zero, 0xC8
    /* E9908 800DA958 AFAA002C */  sw         $t2, 0x2C($sp)
    /* E990C 800DA95C AFA90028 */  sw         $t1, 0x28($sp)
    /* E9910 800DA960 AFB90024 */  sw         $t9, 0x24($sp)
    /* E9914 800DA964 AFB80020 */  sw         $t8, 0x20($sp)
    /* E9918 800DA968 AFAF001C */  sw         $t7, 0x1C($sp)
    /* E991C 800DA96C AFAB0030 */  sw         $t3, 0x30($sp)
    /* E9920 800DA970 AFAE0018 */  sw         $t6, 0x18($sp)
    /* E9924 800DA974 AFA00014 */  sw         $zero, 0x14($sp)
    /* E9928 800DA978 AFAD0010 */  sw         $t5, 0x10($sp)
    /* E992C 800DA97C 0C031507 */  jal        func_800C541C_D43CC
    /* E9930 800DA980 00003825 */   or        $a3, $zero, $zero
    /* E9934 800DA984 8FBF003C */  lw         $ra, 0x3C($sp)
  .L800DA988_E9938:
    /* E9938 800DA988 27BD0050 */  addiu      $sp, $sp, 0x50
    /* E993C 800DA98C 03E00008 */  jr         $ra
    /* E9940 800DA990 00000000 */   nop
endlabel func_800DA7CC_E977C
