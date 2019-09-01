#include <ultra64.h>

OSViMode ViModes[42];

void ModifyPalViMode()
{
	ViModes[16].fldRegs[0].vStart = (u32)0x00330251;
	ViModes[16].fldRegs[0].yScale = (u32)0x0000036d;
}
