`incorrect ASM`

In `func_80121128_1300D8`, the initial `unk8 & 1` test loaded t6 rather than t7 and shifted scratch registers throughout the renderer. Four named mask-bit locals increased the frame from 0xB0 to 0xC0. Three matrix commands expanded the physical-address AND through at instead of the target a3, and the third command restored the door mask before forming its command word.

-> `code changed`

Use the existing `lowFlags & 1` bitfield view. Test `doorMask & bit` directly at each draw and collision-registration branch; remove the four cached bit locals. Use the declared byte `unk15` for the opening offset and implicit u16 conversion for collision IDs. Replace the four trailing sound-volume placeholders with `0.333f`. Put an empty `if (1) {}` before each of the last three door-matrix commands. For the third door draw, keep the transform call, empty block, and matrix macro on the same source line.

-> `correct ASM`

The first flag load uses t7 and the scratch-register sequence matches throughout. The frame is 0xB0, the opening offset spills at sp+0xAC, and the signed mask at sp+0xAA. The three physical masks use `lui a3; ori a3; and ...,a3`. At ROM 0x130424, the command-word ORI precedes the display-list advance and mask reload. Function diff is zero and `tools/make.ps1` reports `build/bh.us.z64: OK`.
