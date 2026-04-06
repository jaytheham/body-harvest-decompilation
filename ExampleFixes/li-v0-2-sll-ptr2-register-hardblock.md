### `li v0,2; sll t9,v0,3` two-pointer pattern — register hardblock on stride→a1

When a function reads two groups of save-slot bytes at slot_base and slot_base+0x10, and the target assembly shows:
- `li v0,2` early in the body (inside ptr1 accumulation)
- `sll t9,v0,3` → gives t9=16
- `addu t0,a1,t9` → stride + 16
- `addu a0,a3,t0` → ptr2 = base + (stride + 16) in $a0

This means the target register layout is: **stride→$a1, base→$a3, ptr1→$a2, ptr2→$a0, accum→$v1**.

**Source pattern that gives score 2610 (best achievable):**
```c
s32 stride = arg0 * 0x7A;
u8 *ptr1 = (u8*)&D_800431C0 + stride;
s32 idx = 2;
u8 *ptr2 = (u8*)&D_800431C0 + stride + (idx << 3);
s32 v1;
// reads from ptr1[0x53..0x5E] and ptr2[0x53..0x6E]
```

**What this gives:** ptr1→$v0, ptr2→$v1(=ptr1+0x10), accum→$a1. Instruction pattern for ptr1 and ptr2 reads matches the target (wrong registers though).

**Root cause of the hardblock:** IDO -O2 constant-folds `idx = 2` → `idx << 3 = 16` → `ptr2 = D_800431C0 + stride + 16 = (D_800431C0 + stride) + 16 = ptr1 + 16`. This makes `stride` dead after `ptr1` is computed → stride gets a temp register ($t6/$v0), not $a1.

**Multiple attempts failed to fix stride→$a1:**
- Named integer variables (`s32 stride; s32 srcIdx2 = stride + 0x10; ptr2 = base + srcIdx2;`) — GVN algebraically folds to ptr1+0x10
- Integer cast (`(u8*)((s32)&D_800431C0 + stride + 0x10)`) — makes base→$a3 (✓) but stride→$v0 (✗), score 2740
- Struct pointer type (`SaveSlot *ptr1`) — no effect on stride register
- Permuter 10,000 iterations — no improvement found
- Various declaration orders and dummy variables — no effect

**Key insight:** `li v0,2; sll t9,v0,3` in the target is pure IDO instruction-scheduler behavior. The scheduler splits constant-16 computation into two instructions (`li 2; sll 3`) to fill pipeline gaps, NOT because the C source had a named `idx=2` variable. The target register layout (stride→$a1) requires stride to be long-lived, which only happens if GVN does NOT fold ptr2 = ptr1+0x10 — and this cannot be prevented in standard C89 without semantic changes.

The **integer-cast approach** (`score 2740`) at least gets the base address (D_800431C0) into $a3 (correct), but the load ordering for the ptr2 section uses single-pointer with large offsets rather than the two-pointer pattern.

The **idx=2 approach** (`score 2610`) produces the correct two-pointer load pattern (ptr1 reads 2 groups at 0x53/0x5B, ptr2 reads 4 groups at 0x53/0x5B/0x63/0x6B) and is the closest structural match.
