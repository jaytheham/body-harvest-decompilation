`incorrect ASM`: In `func_801358E8_144898`, the two completed-transition branches store their new rates through `swc1 f14,lo(at)`, omitting the target's repeated LUI/ADDIU setup in a0. A volatile pointer cast on the scalar position rate still folds its address into AT.

-> `code changed`: Use the existing `CameraInterpolationStep` union for `D_8016012C`, updating its declaration in variables.us.h and ordinary accesses to `.value`. Store both completed-transition rates through `.reload`, matching the union already used by `D_80160134`.

-> `correct ASM`: Both branches rematerialize the rate address with `lui a0; addiu a0; swc1 f14,0(a0)`, and every instruction in the toggle function matches. The restored code size also puts the generated constant pool at its target addresses: vehicle orbit, culling, interpolation, and toggling all have diff score zero.
