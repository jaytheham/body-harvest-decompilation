### Avoid declaring local pointer for global arrays to match cfe temp layout

When a function accesses a global array like `alienInstances[arg0]` repeatedly, avoid declaring a local pointer `AlienInstance *inst = &alienInstances[arg0]`. Instead, access the array inline each time (e.g., `alienInstances[arg0].field`).

**Problem**: Declaring `AlienInstance *inst` creates a user-level local variable stack slot for the pointer (e.g., at sp+0x18). This shifts subsequent variables by 4 bytes, often breaking the target's stack layout.

**Solution**: Access `alienInstances[arg0]` directly in every read/write. The compiler then:
- Creates a **cfe temporary** (compiler-generated, not user-declared) for the base address computation
- Places cfe temps at the *end* of the local variable area (highest addresses), matching the target layout
- Avoids consuming a user-level stack slot for the intermediate pointer

This also applies to other globals like `alienSpecs[specIndex]` — avoid declaring `AlienSpec *spec = &alienSpecs[specIndex]`.

Even when the stack size is unchanged, the named pointer can change callee-saved register allocation and prevent stores from moving into `jal` delay slots. Inline repeated indexed accesses when matching those instruction-level details.

**Example** (from `func_802D92A8_31D3F8`):

```c
// WRONG — creates extra stack slots, shifts layout:
void func(u8 arg0) {
    AlienInstance *inst = &alienInstances[arg0];  // bad: takes a stack slot
    s32 mult;
    u8 specIndex;
    s16 speedLimit;
    // ...
    if (inst->unk4B == 0) { ... }
}

// RIGHT — no local pointer, cfe temp handles it:
void func(u8 arg0) {
    u8 specIndex;        // declared FIRST
    s32 mult;            // declared SECOND
    s16 speedLimit;      // declared THIRD
    
    specIndex = alienInstances[arg0].specIndex;  // direct array access
    // ...
    if (alienInstances[arg0].unk4B == 0) { ... }  // direct array access
}
```

### Capture modulo results to steer IDO temporary registers

In `func_80085D40_16DE00`, direct indexed accesses fixed the threshold branch and delay slot, but the inline expressions `field = field + (func() % 2) + 2` still assigned the loaded field and remainder to opposite temporary registers from the target. Store each remainder in a reusable `s32` local first, then combine it with the field:

```c
rand2 = func_800038E0_44E0() % 2;
tail->pad2 = (tail->pad2 + rand2) + 2;
rand2 = func_800038E0_44E0() % 2;
D_800FB7B0[effect].unk2 = (D_800FB7B0[effect].unk2 + rand2) + 2;
```

This causes IDO to allocate the loaded halfword and remainder to the same registers as the matching assembly. The complete function then matches byte for byte.

**Key rule**: Only declare local variables for values that *wouldn't normally exist as cfe temps* (scalars like `u8`, `s32`, `s16`). Let the compiler generate temporaries for pointer computations from global arrays.

See also: `func_802DA910_2BCD40` for a nearly identical pattern.

### Direct indexed accesses can fix scheduling without changing registers or frame size

In `func_802E2390_3264E0`, a named `AlienInstance *alien` left a diff score of 180. The frame size and registers already matched, but the parent-pointer reload occurred after the cooldown store instead of between `div` and `mfhi`, and the invincibility constant loaded too early. Removing the local pointer and replacing **every** `alien->field` access with `alienInstances[arg0].field` matched the whole function (score 0 and `build/bh.us.z64: OK`). Replacing only the cooldown field access did not fix it. Test removal across the entire function even when the remaining differences are confined to one block.

### Direct indexed field accesses can preserve the array base across a branch

In `func_80086A34_16EAF4`, a named `Unk84EECEffect *entry` caused IDO to copy the computed element address from `$v0` into `$a1` before the threshold branch. That changed the branch form and the byte-load delay slot, and the update path later loaded the next link through `$a1`. Removing `entry` and spelling each field access as `D_800FB7B0[effect].field` let IDO retain the element base in `$v0`, schedule the threshold byte load in the target `beql` delay slot, and match the complete function.

```c
// Mismatched register/branch scheduling:
Unk84EECEffect *entry = &D_800FB7B0[effect];
if (entry->unk12 < 9) {
    nextEffect = entry->unk4;
    // ...
} else {
    // entry->unk2, tail bytes, and entry->unk4
}

// Matched: leave indexed struct bases as compiler temporaries:
if (D_800FB7B0[effect].unk12 < 9) {
    nextEffect = D_800FB7B0[effect].unk4;
    // ...
} else {
    // D_800FB7B0[effect].unk2, tail bytes, and D_800FB7B0[effect].unk4
}
```

In Siberia `func_802E0B08_2C2F38`, declare only the grandparent pointer and a `u8` parent index. Access the alien and parent through `alienInstances[arg0]` and `alienInstances[index]`. IDO caches both addresses automatically. Explicit alien or parent pointer locals enlarge the frame from 0x38 to 0x40. The named parent index also places its initial load in v0, aligning register allocation throughout the function. Inline the type radius in both double multiplications instead of caching it in a signed halfword local. Whole-ROM checksum passed.

`func_800C8C7C_D7C2C` also needs direct `D_80154318[idx]` accesses.
Keeping the destination in a local entry pointer matched the color-copy branches,
but interleaved the final position stores with argument reloads and effect-index
address calculation. Removing that pointer lets IDO load the four halfword
arguments before the stores, matching the reference `func_800891F8_596A8`.
Raw byte accesses can still be replaced by the entry's existing `payload` array
without changing those instructions. Full ROM checksum and diff score 0 pass.


### Siberia respawn helper

func_802DD514_2BF944 matches with u8 arg0 and direct alienInstances[arg0] accesses. A named AlienInstance pointer adds eight bytes to the frame and puts its spill at sp+0x1C instead of the target sp+0x18. Direct accesses let IDO cache and spill the array element address itself. The target's initial sw/lbu argument sequence does not require byte pointer arithmetic on an s32 parameter. Full ROM checksum verified OK.
