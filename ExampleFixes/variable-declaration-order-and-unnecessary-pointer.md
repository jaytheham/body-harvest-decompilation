#### Variable Declaration Order Affects Stack Layout

In IDO 5.3, local variables are allocated in **reverse declaration order** — the first variable declared gets the highest stack offset, and the last declared gets the lowest. This directly affects which addresses the compiler assigns to each variable.

If your stack variable offsets don't match the target, try reordering the declarations so they appear in the reverse order of the desired layout.

**Example:** To get this target layout:
```
sp+0x34: sp34 (s32, 4 bytes)    → lowest offset, declared last
sp+0x3B: sp3B (u8, 1 byte)      → middle
sp+0x3C: buf (s16[2], 4 bytes)  → highest offset, declared first
```

Declare in this order:
```c
s16 buf[2];    // declared first → highest offset (0x3C)
u8 sp3B;       // declared second → middle offset (0x3B)
s32 sp34;      // declared last  → lowest offset (0x34)
```

**Wrong order** (e.g. `s16 buf[2]; s32 sp34; u8 sp3B;`) would place `buf` at 0x3C, `sp34` at 0x38, and `sp3B` at 0x37 — not matching the target.

#### Avoid Unnecessary Pointer Variables

Declaring a local pointer variable like `AlienInstance *inst = &alienInstances[arg0]` can increase the frame size by 8 bytes (0x48 vs 0x40 in this case), even though the compiler keeps the pointer in a register (`$s0`). 

Using `alienInstances[arg0]` directly (without an explicit pointer variable) produces the same register-based access but with a smaller stack frame. The compiler is smart enough to compute the address once and keep it in `$s0` regardless.

### Frontend sprite allocator: pointer elimination and remaining stack difference

`func_8008DC34_5E0E4` remains NON_MATCHING at score 82. Recover the parameters as three signed 16-bit coordinates, an unsigned byte effect ID, and an unsigned 16-bit lifetime. Replace the local slot pointer with direct `D_800E1980[D_800E1D69]` field accesses. Besides eliminating a pointer home, this restores the target coordinate promotion and register allocation. Access the configuration and color tables through eight-byte and four-byte array rows.

Assign the randomized phase directly to the indexed slot, then capture the free-slot index separately for the return value and the search loop. Capturing it before the random-number call creates extra values live across the call. A named random-result local also adds stack space; the direct assignment avoids that home.

The retained version matches every non-stack instruction, including both byte masks. Its frame is still 0x28 instead of 0x20, while the configuration pointer spills at the correct sp+0x18. Declaration permutations, packed byte locals, nested scopes, register qualifiers, and a wider return type did not remove the excess frame. Reusing coordinate/effect parameters for the two byte locals changed the instruction sequence substantially. Treat this as an unresolved frame difference, not an achieved match.

Further full-TU probes retained the same score 82: disjoint pointer/index scopes, direct table indexing, single-return control flow, identifier-list parameter declarations, native-int return, prefix/compound byte increments, pointer qualifications, unused-home placement, expression type casts, and symbol renaming. A local union overlaying the dead configuration pointer with the later byte indices does reduce the frame to 0x20, but forces index stores/reloads and changes allocation (score 6941), so it is not a solution. Restore the original guarded candidate after these probes; the baseline full ROM verifies OK.
