#include <ultra64.h>
#include "common.h"

ALGlobals *alGlobals = NULL;

#pragma GLOBAL_ASM("asm/matchings/libultra/sl/alUnlink.s")
#pragma GLOBAL_ASM("asm/matchings/libultra/sl/alLink.s")
#pragma GLOBAL_ASM("asm/nonmatchings/libultra/sl/alClose.s")
#pragma GLOBAL_ASM("asm/nonmatchings/libultra/sl/alInit.s")
