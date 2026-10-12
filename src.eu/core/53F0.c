#include <ultra64.h>
#include "common.h"
// --- PAL differs from NTSC here ---
// These functions are rewritten in PAL. Do NOT copy the NTSC body;
// they need their own decomp. Regenerate with:
//     python tools/pal_us_diff.py --mark
// NTSC rom / PAL rom / bytes / name
//   0x0079DC  0x0079DC   1020  func_80006DDC_79DC
//   0x007DD8  0x007DD8    148  func_800071D8_7DD8
//   0x007E6C  0x007E9C     96  func_8000726C_7E6C
//   0x007ECC  0x007EFC    236  func_800072CC_7ECC
//   0x007FB8  0x007FE8     88  func_800073B8_7FB8
//   0x008010  0x008040    172  func_80007410_8010
//   0x0080BC  0x0080EC     56  func_800074BC_80BC
//   0x0080F4  0x008124     84  func_800074F4_80F4
//   0x008148  0x008178     40  func_80007548_8148
//   0x008170  0x0081A0    288  func_80007570_8170
//   0x008290  0x0082C0     68  func_80007690_8290
//   0x0082D4  0x008304     84  func_800076D4_82D4
//   0x008328  0x008358    372  func_80007728_8328
//   0x00849C  0x0084CC     28  func_8000789C_849C
//   0x0084B8  0x0084E8     20  func_800078B8_84B8
//   0x0084CC  0x0084FC     24  func_800078CC_84CC
//   0x0084E4  0x008514     28  func_800078E4_84E4
//   0x008500  0x008530    288  func_80007900_8500
//   0x008620  0x008650    600  func_80007A20_8620
//   0x008878  0x0088A8    204  func_80007C78_8878
//   0x008944  0x008974    156  func_80007D44_8944
//   0x0089E0  0x008A10    384  func_80007DE0_89E0
//   0x008B60  0x008B90    284  func_80007F60_8B60
//   0x008C7C  0x008CAC    344  func_8000807C_8C7C
//   0x008DD4  0x008E04    676  func_800081D4_8DD4
//   0x009078  0x0090A8    164  func_80008478_9078
//   0x00911C  0x00914C    344  func_8000851C_911C
//   0x009274  0x0092A4    708  func_80008674_9274
//   0x009538  0x009568    736  func_80008938_9538
//   0x009818  0x009848     44  func_80008C18_9818
//   0x009844  0x009874    100  func_80008C44_9844
//   0x0098A8  0x0098D8   1552  func_80008CA8_98A8
//   0x009EB8  0x009EE8   3168  func_800092B8_9EB8
//   0x00AB18  0x00AB48    268  func_80009F18_AB18
//   0x00AC24  0x00AC54    316  func_8000A024_AC24


#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800047F0_53F0.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800047FC_53FC.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80004818_5418.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800048B8_54B8.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800048E8_54E8.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80004918_5518.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80004948_5548.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800049D4_55D4.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80004A38_5638.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80004AEC_56EC.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80004C24_5824.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80004C34_5834.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80004C8C_588C.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80004CC8_58C8.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80004D38_5938.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80004DDC_59DC.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80004F64_5B64.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_8000505C_5C5C.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800050C4_5CC4.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80005110_5D10.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800053A0_5FA0.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80005654_6254.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800056A8_62A8.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800056D0_62D0.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_8000577C_637C.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80005844_6444.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80005AEC_66EC.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80005B30_6730.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80005B84_6784.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80005C5C_685C.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80006520_7120.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800065A4_71A4.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80006654_7254.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80006710_7310.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800067B4_73B4.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800069FC_75FC.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80006C4C_784C.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80006D5C_795C.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80006D84_7984.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80006DAC_79AC.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80006DDC_79DC.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80007210_7E10.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800072A4_7EA4.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80007304_7F04.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800073F0_7FF0.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80007448_8048.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800074F4_80F4.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_8000752C_812C.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80007580_8180.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800075A8_81A8.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800076C8_82C8.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_8000770C_830C.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80007760_8360.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800078D4_84D4.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800078F0_84F0.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80007904_8504.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_8000791C_851C.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80007938_8538.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80007A58_8658.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80007CB0_88B0.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80007D7C_897C.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80007E18_8A18.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80007F98_8B98.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800080B4_8CB4.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_8000820C_8E0C.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800084B0_90B0.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80008554_9154.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800086AC_92AC.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80008970_9570.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80008C50_9850.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80008C7C_987C.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80008CE0_98E0.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_800092F0_9EF0.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_80009F50_AB50.s")

#pragma GLOBAL_ASM("asm.eu/nonmatchings/core/53F0/func_8000A05C_AC5C.s")
