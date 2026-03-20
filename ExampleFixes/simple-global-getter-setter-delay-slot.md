### Simple global getter/setter with delay slot

IDO often places the memory access in the delay slot of `jr ``:
`
jr $ra
sw $a0, %lo(GLOBAL_VAR)($at) ; setter delay slot
`or`
lui $v0, %hi(GLOBAL_VAR)
jr $ra
lw $v0, %lo(GLOBAL_VAR)($v0) ; getter delay slot
`C decompilation for setter:`void func(s32 arg0) { D_ADDR = arg0; }`C decompilation for getter:`s32 func(void) { return D_ADDR; }`
