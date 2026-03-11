nonmatching func_800E77B4_F6764, 0xE0

glabel func_800E77B4_F6764
    /* F6764 800E77B4 3C0A8006 */  lui        $t2, %hi(D_8005BB2C)
    /* F6768 800E77B8 254ABB2C */  addiu      $t2, $t2, %lo(D_8005BB2C)
    /* F676C 800E77BC 8D430000 */  lw         $v1, 0x0($t2)
    /* F6770 800E77C0 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
    /* F6774 800E77C4 3C18BA00 */  lui        $t8, (0xBA001402 >> 16)
    /* F6778 800E77C8 246E0008 */  addiu      $t6, $v1, 0x8
    /* F677C 800E77CC AD4E0000 */  sw         $t6, 0x0($t2)
    /* F6780 800E77D0 AC600004 */  sw         $zero, 0x4($v1)
    /* F6784 800E77D4 AC6B0000 */  sw         $t3, 0x0($v1)
    /* F6788 800E77D8 8D430000 */  lw         $v1, 0x0($t2)
    /* F678C 800E77DC 37181402 */  ori        $t8, $t8, (0xBA001402 & 0xFFFF)
    /* F6790 800E77E0 3C190010 */  lui        $t9, (0x100000 >> 16)
    /* F6794 800E77E4 246F0008 */  addiu      $t7, $v1, 0x8
    /* F6798 800E77E8 AD4F0000 */  sw         $t7, 0x0($t2)
    /* F679C 800E77EC AC790004 */  sw         $t9, 0x4($v1)
    /* F67A0 800E77F0 AC780000 */  sw         $t8, 0x0($v1)
    /* F67A4 800E77F4 8D430000 */  lw         $v1, 0x0($t2)
    /* F67A8 800E77F8 3C0EFFFE */  lui        $t6, (0xFFFE7838 >> 16)
    /* F67AC 800E77FC 3C0DFCFF */  lui        $t5, (0xFCFFFFFF >> 16)
    /* F67B0 800E7800 246C0008 */  addiu      $t4, $v1, 0x8
    /* F67B4 800E7804 AD4C0000 */  sw         $t4, 0x0($t2)
    /* F67B8 800E7808 35ADFFFF */  ori        $t5, $t5, (0xFCFFFFFF & 0xFFFF)
    /* F67BC 800E780C 35CE7838 */  ori        $t6, $t6, (0xFFFE7838 & 0xFFFF)
    /* F67C0 800E7810 AC6E0004 */  sw         $t6, 0x4($v1)
    /* F67C4 800E7814 AC6D0000 */  sw         $t5, 0x0($v1)
    /* F67C8 800E7818 8D430000 */  lw         $v1, 0x0($t2)
    /* F67CC 800E781C 3C18B900 */  lui        $t8, (0xB900031D >> 16)
    /* F67D0 800E7820 3C19C811 */  lui        $t9, (0xC8112078 >> 16)
    /* F67D4 800E7824 246F0008 */  addiu      $t7, $v1, 0x8
    /* F67D8 800E7828 AD4F0000 */  sw         $t7, 0x0($t2)
    /* F67DC 800E782C 37392078 */  ori        $t9, $t9, (0xC8112078 & 0xFFFF)
    /* F67E0 800E7830 3718031D */  ori        $t8, $t8, (0xB900031D & 0xFFFF)
    /* F67E4 800E7834 AC780000 */  sw         $t8, 0x0($v1)
    /* F67E8 800E7838 AC790004 */  sw         $t9, 0x4($v1)
    /* F67EC 800E783C 8D430000 */  lw         $v1, 0x0($t2)
    /* F67F0 800E7840 3C0DBA00 */  lui        $t5, (0xBA000E02 >> 16)
    /* F67F4 800E7844 35AD0E02 */  ori        $t5, $t5, (0xBA000E02 & 0xFFFF)
    /* F67F8 800E7848 246C0008 */  addiu      $t4, $v1, 0x8
    /* F67FC 800E784C AD4C0000 */  sw         $t4, 0x0($t2)
    /* F6800 800E7850 340E8000 */  ori        $t6, $zero, 0x8000
    /* F6804 800E7854 AC6E0004 */  sw         $t6, 0x4($v1)
    /* F6808 800E7858 AC6D0000 */  sw         $t5, 0x0($v1)
    /* F680C 800E785C 8D430000 */  lw         $v1, 0x0($t2)
    /* F6810 800E7860 3C190003 */  lui        $t9, (0x32000 >> 16)
    /* F6814 800E7864 37392000 */  ori        $t9, $t9, (0x32000 & 0xFFFF)
    /* F6818 800E7868 246F0008 */  addiu      $t7, $v1, 0x8
    /* F681C 800E786C AD4F0000 */  sw         $t7, 0x0($t2)
    /* F6820 800E7870 3C18B700 */  lui        $t8, (0xB7000000 >> 16)
    /* F6824 800E7874 AC780000 */  sw         $t8, 0x0($v1)
    /* F6828 800E7878 AC790004 */  sw         $t9, 0x4($v1)
    /* F682C 800E787C 8D430000 */  lw         $v1, 0x0($t2)
    /* F6830 800E7880 246C0008 */  addiu      $t4, $v1, 0x8
    /* F6834 800E7884 AD4C0000 */  sw         $t4, 0x0($t2)
    /* F6838 800E7888 AC600004 */  sw         $zero, 0x4($v1)
    /* F683C 800E788C 03E00008 */  jr         $ra
    /* F6840 800E7890 AC6B0000 */   sw        $t3, 0x0($v1)
endlabel func_800E77B4_F6764
