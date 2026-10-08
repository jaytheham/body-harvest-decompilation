# Indexed iteration and an instruction-free block boundary

`func_80115A74_124A24` iterates over vehicles 115 through 120. An indexed `for` loop with `D_80158BD0[i]` lets IDO strength-reduce the vehicle and status array accesses into the target pointer loop. Hand-written pointer iteration produced the right operations but initialized the pointers in the wrong order. One cached `VehicleInstance *` inside the loop preserves the target saved-register layout.

After this change, all instructions and stack slots matched except the temporary registers for the final flag updates. Placing `do {} while (0);` immediately after the random-angle call emits no instructions but changes IDO’s temporary allocation, matching those registers. Moving it before the call or merely adding braces does not have the same effect. The complete ROM checksum confirms the match.
