incorrect ASM: Enabling func_80074FF0_15D0B0 with explicit global double constants placed those constants before generated jump tables. Its guarded do-loop also moved the object-array base setup behind the count test and changed the invariant floating-register order. func_8007568C_15D74C similarly delayed its entry-base initialization.

-> code changed: Use the double literal 180.0 for the renderer angle divisor and for the preceding matched floor renderer, allowing IDO to generate each literal in function order. Remove the corresponding double entries from the attached late-rodata placeholder. Use a direct indexed for-loop and assign the angle divisor inside its body; remove the discarded invariant tests from the old guarded do-loop.

-> correct ASM: func_8007453C_15C5FC remains byte-identical, all literal-pool bytes retain their target locations, and the first 150 instructions of func_80074FF0_15D0B0 match exactly. The corresponding loop form gives func_8007568C_15D74C its first 144 exact instructions, including lui/addiu of the entry array before blez and the target f20/f22/f24/f26/f28 initialization. Both larger renderer bodies still have separate scheduling differences.

incorrect ASM: The room renderer combined one of its three 64 scale loads and one of its three 256 scale loads, making its body eight bytes shorter than the target.

-> code changed: Assign scale[1] before position[1], and assign scale[4] after position[4]. Preserve the other independent initialization statements.

-> correct ASM: Both independent LI/SH pairs are retained and func_8007568C_15D74C has its target 0xEAC-byte body and 0x138-byte frame. The loop prefix remains exact; separate instruction-order and register differences remain (native diff score 3916).
