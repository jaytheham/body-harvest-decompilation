`incorrect ASM`: In `func_8007C428_1644E8`, inline sine projections in the comparisons loaded the heading into `t3` instead of `a1`, changed subsequent temporary registers, and spilled the radius argument at `sp+0x1C` instead of `sp+0x18`.

-> `code changed`: Assign both cosine and sine projections to the existing integer coordinate locals before comparing. Keep the first cosine projection even though its value is overwritten, and update `angle -= arg8` between the two pairs. Pass the angle directly to `coss` and `sins`, allowing their parameter types to narrow it.

-> `correct ASM`: The first sine call reloads the heading into `a1`, the reduced heading uses `subu a1,a1,t7`, and the radius argument spills at `sp+0x18`. All instructions match and `build/bh.us.z64: OK`.