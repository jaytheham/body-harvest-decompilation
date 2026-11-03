`incorrect ASM`: In `func_8008F0BC_9E06C`, copying `alienInstances[id].unk25` into a byte local after the parent-pointer lookup emits one unconditional `sb` before the building comparison, omitting the target's conditional save/reload around the first helper and second save before the next helper.

-> `code changed`: Use a byte parent ID belonging only to the building-target branch. Assign it before indexing the parent instance, and access the parent directly through `alienInstances[parentId]`. The later movement branch reads `alienInstances[id].unk25` directly instead of reusing that byte local.

-> `correct ASM`: The parent ID stays in a3. IDO emits `sb a3,0x5e(sp)` only on the helper-call paths and `lbu a3,0x5e(sp)` after the first helper, exactly matching the target.

`incorrect ASM`: Extra instance/type/parent pointer locals and a separate maximum-distance local enlarge the frame from 0x60 to 0x78 and displace call-crossing values.

-> `code changed`: Use direct typed instance/type-array accesses, preserving the initial byte type index. Reuse the Z delta for `MAX(MAX(distX, -distX), MAX(distZ, -distZ))`. Declare the building byte, parent byte, signed parent-type byte, type-index byte, speed halfword, flags word, X word, Z word, step word, and zone pointer in that order.

-> `correct ASM`: The frame is 0x60. The speed occupies sp+0x5a, step sp+0x48, cached instance pointer sp+0x30, cached type pointer sp+0x2c, and cached parent pointer sp+0x20.

`incorrect ASM`: Refreshing the flags local inside the close-to-parent branch emits `and v0,t1,at; sw v0,0x20(t0); move t1,v0`, with a subsequent register rotation.

-> `code changed`: Store `instance.unk20 = flags & ~0x2020` inside the branch and refresh `flags = instance.unk20` after the complete if/else chain. Remove redundant s16 casts around the final acceleration products.

-> `correct ASM`: The flag update becomes `and t7,t1,at; sw t7,0x20(t0); move t1,t7`. The acceleration uses `mflo t7; addu t5,v0,t7; sh t5,0x12(t0)`. Every instruction matches and the complete US ROM checksum passes.
