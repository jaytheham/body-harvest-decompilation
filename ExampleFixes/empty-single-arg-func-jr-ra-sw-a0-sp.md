### Empty single-arg function `jr $ra; sw $a0, 0($sp)`

IDO -O2 with a single argument and empty body produces:
`asm
jr $ra
sw $a0, 0x0($sp)   ; delay slot: arg save (ABI compliance)
`
C decompilation: `void func(s32 arg0) {}`
