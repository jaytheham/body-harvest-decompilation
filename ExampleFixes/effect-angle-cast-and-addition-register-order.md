### Effect angle narrowing and addition register order

func_802E1CC0_325E10 requires `(u16)(alienInstances[arg0].unk6 + 0x4000)` in both trigonometric calls. Replacing that cast with a mask removes an intermediate argument move and changes the scheduling of the addition and narrowing. The cast reproduces the target instructions and downstream register allocation.

For the orientation sum, put the instance angle first: `alienInstances[arg0].unkA + D_8014DD50[alienInstances[arg0].unkC].unkAUnsigned`. Reversing these operands swaps the two load destination registers, even though the arithmetic instruction itself is unchanged. The callee's halfword parameter provides the final narrowing without an explicit sum cast.
