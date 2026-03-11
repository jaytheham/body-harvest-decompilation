nonmatching func_802D6768_2B8B98, 0x284

glabel func_802D6768_2B8B98
    /* 2B8B98 802D6768 3C098015 */  lui        $t1, %hi(D_80157F8C)
    /* 2B8B9C 802D676C 25297F8C */  addiu      $t1, $t1, %lo(D_80157F8C)
    /* 2B8BA0 802D6770 85240000 */  lh         $a0, 0x0($t1)
    /* 2B8BA4 802D6774 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 2B8BA8 802D6778 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 2B8BAC 802D677C 2C810006 */  sltiu      $at, $a0, 0x6
    /* 2B8BB0 802D6780 10200095 */  beqz       $at, .L802D69D8_2B8E08
    /* 2B8BB4 802D6784 00047080 */   sll       $t6, $a0, 2
    /* 2B8BB8 802D6788 3C01802E */  lui        $at, %hi(jtbl_802E2FBC_overlay_level_siberia)
    /* 2B8BBC 802D678C 002E0821 */  addu       $at, $at, $t6
    /* 2B8BC0 802D6790 8C2E2FBC */  lw         $t6, %lo(jtbl_802E2FBC_overlay_level_siberia)($at)
    /* 2B8BC4 802D6794 01C00008 */  jr         $t6
    /* 2B8BC8 802D6798 00000000 */   nop
    /* 2B8BCC 802D679C 3C088015 */  lui        $t0, %hi(D_80157F8E)
    /* 2B8BD0 802D67A0 25087F8E */  addiu      $t0, $t0, %lo(D_80157F8E)
    /* 2B8BD4 802D67A4 85020000 */  lh         $v0, 0x0($t0)
    /* 2B8BD8 802D67A8 24980001 */  addiu      $t8, $a0, 0x1
    /* 2B8BDC 802D67AC 28430002 */  slti       $v1, $v0, 0x2
    /* 2B8BE0 802D67B0 244F0001 */  addiu      $t7, $v0, 0x1
    /* 2B8BE4 802D67B4 14600088 */  bnez       $v1, .L802D69D8_2B8E08
    /* 2B8BE8 802D67B8 A50F0000 */   sh        $t7, 0x0($t0)
    /* 2B8BEC 802D67BC A5000000 */  sh         $zero, 0x0($t0)
    /* 2B8BF0 802D67C0 10000085 */  b          .L802D69D8_2B8E08
    /* 2B8BF4 802D67C4 A5380000 */   sh        $t8, 0x0($t1)
    /* 2B8BF8 802D67C8 3C088015 */  lui        $t0, %hi(D_80157F8E)
    /* 2B8BFC 802D67CC 25087F8E */  addiu      $t0, $t0, %lo(D_80157F8E)
    /* 2B8C00 802D67D0 85190000 */  lh         $t9, 0x0($t0)
    /* 2B8C04 802D67D4 2401003C */  addiu      $at, $zero, 0x3C
    /* 2B8C08 802D67D8 3C058005 */  lui        $a1, %hi(D_8004DE00)
    /* 2B8C0C 802D67DC 17210007 */  bne        $t9, $at, .L802D67FC_2B8C2C
    /* 2B8C10 802D67E0 00000000 */   nop
    /* 2B8C14 802D67E4 84AADE00 */  lh         $t2, %lo(D_8004DE00)($a1)
    /* 2B8C18 802D67E8 3C048005 */  lui        $a0, %hi(D_8004DDE4)
    /* 2B8C1C 802D67EC 2484DDE4 */  addiu      $a0, $a0, %lo(D_8004DDE4)
    /* 2B8C20 802D67F0 000A5C40 */  sll        $t3, $t2, 17
    /* 2B8C24 802D67F4 0C049046 */  jal        func_80124118_1330C8
    /* 2B8C28 802D67F8 000B2C03 */   sra       $a1, $t3, 16
  .L802D67FC_2B8C2C:
    /* 2B8C2C 802D67FC 3C0D802E */  lui        $t5, %hi(D_802E0E6C)
    /* 2B8C30 802D6800 25AD0E6C */  addiu      $t5, $t5, %lo(D_802E0E6C)
    /* 2B8C34 802D6804 3C058015 */  lui        $a1, %hi(D_8014D17C)
    /* 2B8C38 802D6808 240E0005 */  addiu      $t6, $zero, 0x5
    /* 2B8C3C 802D680C 240F0028 */  addiu      $t7, $zero, 0x28
    /* 2B8C40 802D6810 24180001 */  addiu      $t8, $zero, 0x1
    /* 2B8C44 802D6814 AFB8001C */  sw         $t8, 0x1C($sp)
    /* 2B8C48 802D6818 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 2B8C4C 802D681C AFAE0014 */  sw         $t6, 0x14($sp)
    /* 2B8C50 802D6820 84A5D17C */  lh         $a1, %lo(D_8014D17C)($a1)
    /* 2B8C54 802D6824 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 2B8C58 802D6828 24040071 */  addiu      $a0, $zero, 0x71
    /* 2B8C5C 802D682C 240600C8 */  addiu      $a2, $zero, 0xC8
    /* 2B8C60 802D6830 0C0B5937 */  jal        func_802D64DC_2B890C
    /* 2B8C64 802D6834 24070018 */   addiu     $a3, $zero, 0x18
    /* 2B8C68 802D6838 3C088015 */  lui        $t0, %hi(D_80157F8E)
    /* 2B8C6C 802D683C 25087F8E */  addiu      $t0, $t0, %lo(D_80157F8E)
    /* 2B8C70 802D6840 3C048015 */  lui        $a0, %hi(D_8014D17C)
    /* 2B8C74 802D6844 85020000 */  lh         $v0, 0x0($t0)
    /* 2B8C78 802D6848 2484D17C */  addiu      $a0, $a0, %lo(D_8014D17C)
    /* 2B8C7C 802D684C 84990000 */  lh         $t9, 0x0($a0)
    /* 2B8C80 802D6850 3C098015 */  lui        $t1, %hi(D_80157F8C)
    /* 2B8C84 802D6854 284300C9 */  slti       $v1, $v0, 0xC9
    /* 2B8C88 802D6858 244B0001 */  addiu      $t3, $v0, 0x1
    /* 2B8C8C 802D685C 272A0001 */  addiu      $t2, $t9, 0x1
    /* 2B8C90 802D6860 25297F8C */  addiu      $t1, $t1, %lo(D_80157F8C)
    /* 2B8C94 802D6864 A48A0000 */  sh         $t2, 0x0($a0)
    /* 2B8C98 802D6868 1460005B */  bnez       $v1, .L802D69D8_2B8E08
    /* 2B8C9C 802D686C A50B0000 */   sh        $t3, 0x0($t0)
    /* 2B8CA0 802D6870 852C0000 */  lh         $t4, 0x0($t1)
    /* 2B8CA4 802D6874 A5000000 */  sh         $zero, 0x0($t0)
    /* 2B8CA8 802D6878 258D0001 */  addiu      $t5, $t4, 0x1
    /* 2B8CAC 802D687C 10000056 */  b          .L802D69D8_2B8E08
    /* 2B8CB0 802D6880 A52D0000 */   sh        $t5, 0x0($t1)
    /* 2B8CB4 802D6884 3C088015 */  lui        $t0, %hi(D_80157F8E)
    /* 2B8CB8 802D6888 25087F8E */  addiu      $t0, $t0, %lo(D_80157F8E)
    /* 2B8CBC 802D688C 85020000 */  lh         $v0, 0x0($t0)
    /* 2B8CC0 802D6890 24010005 */  addiu      $at, $zero, 0x5
    /* 2B8CC4 802D6894 54410021 */  bnel       $v0, $at, .L802D691C_2B8D4C
    /* 2B8CC8 802D6898 00025880 */   sll       $t3, $v0, 2
    /* 2B8CCC 802D689C 3C028005 */  lui        $v0, %hi(buildingInstances)
    /* 2B8CD0 802D68A0 24420AD8 */  addiu      $v0, $v0, %lo(buildingInstances)
    /* 2B8CD4 802D68A4 84460A9C */  lh         $a2, 0xA9C($v0)
    /* 2B8CD8 802D68A8 84440A98 */  lh         $a0, 0xA98($v0)
    /* 2B8CDC 802D68AC 00062C00 */  sll        $a1, $a2, 16
    /* 2B8CE0 802D68B0 00057403 */  sra        $t6, $a1, 16
    /* 2B8CE4 802D68B4 01C02825 */  or         $a1, $t6, $zero
    /* 2B8CE8 802D68B8 A7A6002A */  sh         $a2, 0x2A($sp)
    /* 2B8CEC 802D68BC 0C02E134 */  jal        func_800B84D0_C7480
    /* 2B8CF0 802D68C0 A7A4002E */   sh        $a0, 0x2E($sp)
    /* 2B8CF4 802D68C4 3C088015 */  lui        $t0, %hi(D_80157F8E)
    /* 2B8CF8 802D68C8 3C098015 */  lui        $t1, %hi(D_80157F8C)
    /* 2B8CFC 802D68CC 25297F8C */  addiu      $t1, $t1, %lo(D_80157F8C)
    /* 2B8D00 802D68D0 25087F8E */  addiu      $t0, $t0, %lo(D_80157F8E)
    /* 2B8D04 802D68D4 87A4002E */  lh         $a0, 0x2E($sp)
    /* 2B8D08 802D68D8 87A6002A */  lh         $a2, 0x2A($sp)
    /* 2B8D0C 802D68DC 04410003 */  bgez       $v0, .L802D68EC_2B8D1C
    /* 2B8D10 802D68E0 00022A03 */   sra       $a1, $v0, 8
    /* 2B8D14 802D68E4 244100FF */  addiu      $at, $v0, 0xFF
    /* 2B8D18 802D68E8 00012A03 */  sra        $a1, $at, 8
  .L802D68EC_2B8D1C:
    /* 2B8D1C 802D68EC 00A0C025 */  or         $t8, $a1, $zero
    /* 2B8D20 802D68F0 27050064 */  addiu      $a1, $t8, 0x64
    /* 2B8D24 802D68F4 0005CC00 */  sll        $t9, $a1, 16
    /* 2B8D28 802D68F8 00192C03 */  sra        $a1, $t9, 16
    /* 2B8D2C 802D68FC 0C035AB7 */  jal        func_800D6ADC_E5A8C
    /* 2B8D30 802D6900 24070007 */   addiu     $a3, $zero, 0x7
    /* 2B8D34 802D6904 3C088015 */  lui        $t0, %hi(D_80157F8E)
    /* 2B8D38 802D6908 25087F8E */  addiu      $t0, $t0, %lo(D_80157F8E)
    /* 2B8D3C 802D690C 3C098015 */  lui        $t1, %hi(D_80157F8C)
    /* 2B8D40 802D6910 25297F8C */  addiu      $t1, $t1, %lo(D_80157F8C)
    /* 2B8D44 802D6914 85020000 */  lh         $v0, 0x0($t0)
    /* 2B8D48 802D6918 00025880 */  sll        $t3, $v0, 2
  .L802D691C_2B8D4C:
    /* 2B8D4C 802D691C 01625823 */  subu       $t3, $t3, $v0
    /* 2B8D50 802D6920 000B5880 */  sll        $t3, $t3, 2
    /* 2B8D54 802D6924 3C018014 */  lui        $at, %hi(D_8013E344)
    /* 2B8D58 802D6928 A02BE344 */  sb         $t3, %lo(D_8013E344)($at)
    /* 2B8D5C 802D692C 28430015 */  slti       $v1, $v0, 0x15
    /* 2B8D60 802D6930 244C0001 */  addiu      $t4, $v0, 0x1
    /* 2B8D64 802D6934 14600028 */  bnez       $v1, .L802D69D8_2B8E08
    /* 2B8D68 802D6938 A50C0000 */   sh        $t4, 0x0($t0)
    /* 2B8D6C 802D693C 852D0000 */  lh         $t5, 0x0($t1)
    /* 2B8D70 802D6940 A5000000 */  sh         $zero, 0x0($t0)
    /* 2B8D74 802D6944 25AE0001 */  addiu      $t6, $t5, 0x1
    /* 2B8D78 802D6948 10000023 */  b          .L802D69D8_2B8E08
    /* 2B8D7C 802D694C A52E0000 */   sh        $t6, 0x0($t1)
    /* 2B8D80 802D6950 3C088015 */  lui        $t0, %hi(D_80157F8E)
    /* 2B8D84 802D6954 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 2B8D88 802D6958 3C018014 */  lui        $at, %hi(D_8013E344)
    /* 2B8D8C 802D695C 25087F8E */  addiu      $t0, $t0, %lo(D_80157F8E)
    /* 2B8D90 802D6960 A02FE344 */  sb         $t7, %lo(D_8013E344)($at)
    /* 2B8D94 802D6964 85020000 */  lh         $v0, 0x0($t0)
    /* 2B8D98 802D6968 24990001 */  addiu      $t9, $a0, 0x1
    /* 2B8D9C 802D696C 28430006 */  slti       $v1, $v0, 0x6
    /* 2B8DA0 802D6970 24580001 */  addiu      $t8, $v0, 0x1
    /* 2B8DA4 802D6974 14600018 */  bnez       $v1, .L802D69D8_2B8E08
    /* 2B8DA8 802D6978 A5180000 */   sh        $t8, 0x0($t0)
    /* 2B8DAC 802D697C A5000000 */  sh         $zero, 0x0($t0)
    /* 2B8DB0 802D6980 10000015 */  b          .L802D69D8_2B8E08
    /* 2B8DB4 802D6984 A5390000 */   sh        $t9, 0x0($t1)
    /* 2B8DB8 802D6988 3C088015 */  lui        $t0, %hi(D_80157F8E)
    /* 2B8DBC 802D698C 25087F8E */  addiu      $t0, $t0, %lo(D_80157F8E)
    /* 2B8DC0 802D6990 85020000 */  lh         $v0, 0x0($t0)
    /* 2B8DC4 802D6994 3C018014 */  lui        $at, %hi(D_8013E344)
    /* 2B8DC8 802D6998 248E0001 */  addiu      $t6, $a0, 0x1
    /* 2B8DCC 802D699C 00025023 */  negu       $t2, $v0
    /* 2B8DD0 802D69A0 000A5880 */  sll        $t3, $t2, 2
    /* 2B8DD4 802D69A4 016A5823 */  subu       $t3, $t3, $t2
    /* 2B8DD8 802D69A8 000B5880 */  sll        $t3, $t3, 2
    /* 2B8DDC 802D69AC 256C00F0 */  addiu      $t4, $t3, 0xF0
    /* 2B8DE0 802D69B0 A02CE344 */  sb         $t4, %lo(D_8013E344)($at)
    /* 2B8DE4 802D69B4 28430015 */  slti       $v1, $v0, 0x15
    /* 2B8DE8 802D69B8 244D0001 */  addiu      $t5, $v0, 0x1
    /* 2B8DEC 802D69BC 14600006 */  bnez       $v1, .L802D69D8_2B8E08
    /* 2B8DF0 802D69C0 A50D0000 */   sh        $t5, 0x0($t0)
    /* 2B8DF4 802D69C4 A5000000 */  sh         $zero, 0x0($t0)
    /* 2B8DF8 802D69C8 10000003 */  b          .L802D69D8_2B8E08
    /* 2B8DFC 802D69CC A52E0000 */   sh        $t6, 0x0($t1)
    /* 2B8E00 802D69D0 10000002 */  b          .L802D69DC_2B8E0C
    /* 2B8E04 802D69D4 24020001 */   addiu     $v0, $zero, 0x1
  .L802D69D8_2B8E08:
    /* 2B8E08 802D69D8 00001025 */  or         $v0, $zero, $zero
  .L802D69DC_2B8E0C:
    /* 2B8E0C 802D69DC 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 2B8E10 802D69E0 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 2B8E14 802D69E4 03E00008 */  jr         $ra
    /* 2B8E18 802D69E8 00000000 */   nop
endlabel func_802D6768_2B8B98
