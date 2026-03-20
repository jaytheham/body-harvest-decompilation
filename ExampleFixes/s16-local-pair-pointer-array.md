### s16 local pair passed as pointer: use array not two separate vars

When assembly stores two adjacent `s16` locals and passes a pointer to the first:
`asm
sh t7, 0x24(sp)   # arr[0] = arg1
sh t8, 0x26(sp)   # arr[1] = arg2 (delay slot)
addiu a3, sp, 0x24
jal callee
`
Use `s16 arr[2]` in C instead of two separate variables. With two named s16 vars, IDO may allocate them in wrong stack order or optimize away the second (written-but-not-read).
