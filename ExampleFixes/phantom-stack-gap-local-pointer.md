### Phantom stack gap for local pointer with `AlienSpec *spec`

When a function has a "gap" in the stack frame (e.g., sp+0x20 never written in target assembly), this is typically caused by a named local pointer variable like `AlienSpec *spec` placed between the float variables and before the integer variables in the declaration order. IDO allocates a 4-byte "home" slot for the pointer even if it's kept in a register across the jal calls.

The specific declaration order `f32 sp24; AlienSpec *spec; f32 sp1C; s32 sp18;` (last declared = lowest address) produces: sp18→sp+0x18, sp1C→sp+0x1C, spec→sp+0x20 (phantom gap), sp24→sp+0x24. This exactly matches the target's stack layout when the function also saves sp24 at 0x24 and sp1C at 0x1C for the function call.

**Displacing a cfe temp from 0x1c to 0x18 with a dummy variable (declare dummy FIRST):** When a single register needs to be saved across a JAL call (e.g., sp18 in a 0x20 frame) and it spills to offset 0x1c (but the target uses 0x18), declare an UNUSED dummy variable BEFORE the real variable. The dummy being first in declaration order takes the higher slot (0x1c), forcing IDO to allocate the cfe temp at the lower slot (0x18). The real variable comes SECOND (last in declaration order, can be register-allocated → its slot is removed by the not-last rule), while the dummy (first, not-last) keeps its slot at the higher address, blocking the cfe from using 0x1c. Pattern:
```c
s32 sp1c;   // dummy — first declared, not-last → keeps slot at 0x1c (blocks cfe from using 0x1c)
s32 sp18;   // real — second declared, last, register-allocated → slot removed; cfe falls to 0x18
```
