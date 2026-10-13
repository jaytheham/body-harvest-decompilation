# Function-private display-list state and BSS placement

`func_800E88C0_F7870` (StripModelToBones) caches three function-local
static variables: the advancing display-list pointer, its start pointer,
and the command count. Replacing them with extern globals or automatic
variables changes IDO's register priorities and store elimination.

With only the count made function-private, IDO reproduces the `s0` save
and the two count stores around the overflow diagnostic, but assigns the
destination pointer too early. Making both pointers function-private too
reproduces the target's `v1` command address, `a0` end-command constant,
`a1` source pointer, and `a2` destination pointer. Keep a separate local
source pointer rather than reusing the model parameter.

The local declaration order also matters: command, source pointer, signed
opcode, returned pointer. It places the command at `sp + 0x30` and the
returned pointer's diagnostic-call spill at `sp + 0x24` in a 0x38-byte
frame. `ShadowModelCommand` overlays `Gwords` and signed bytes, allowing
the first command byte to be read without pointer casts or bitfields.

Anonymous static relocations need actual input-section placement, rather
than absolute aliases for their old symbol names. The translation unit
first supplies its existing `D_801575A0` and `D_801575A4` globals through
`OUTSIDE_F7870_BSS` in `variables.us.h`. The existing `.fixed_bss` Splat
extension anchors that unit at 0x801575A0. Its private destination, start,
and count then occupy 0x801575A8, 0x801575AC, and 0x801575B0 respectively.

The standard `tools/make.ps1` build and full ROM SHA1 comparison pass;
the function's assembly diff score is zero.
