Incorrect ASM: signed-state conversion emits `lh; andi ...,0xFFFF`, result if/else chains emit different branch layouts, and scalar options accesses merge intermediate stores.

-> Code changed: read the state through an unsigned halfword view for switch dispatch, use result switches with cases in target block order, and access the options word through a one-element `u32` array. Keep file-select result 1 as choose-name and result 0 as press-start.

-> Correct ASM: dispatch uses `lhu; sltiu ...,0x19; beqz; sll; ...; jr`, option updates retain both stores through `s1`, and all three generated jump tables match. Both complete ROMs match.

Incorrect ASM: assigning the replay state before updating the easy-mode flags allocates the flags byte to `t0`, the state value to `t9`, and the OR result to `t1`.

-> Code changed: write `D_80052ACD |= 0x11` before assigning `FE_STATE_START_GAMEPLAY`.

-> Correct ASM: `lbu t9,0(v0); li t1,7; sh t1,0(s0); ori t0,t9,0x11; b loop; sb t0,0(v0)`.
