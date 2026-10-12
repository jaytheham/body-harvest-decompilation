# Reused skeleton index and six-byte struct copy

The initial instruction sequence of `func_802DE5E8_25DD28` was reproduced by reusing one scalar for a node index and then the alien ID:

```c
s16 temp;

temp = alienInstances[id].unkC;
{
    s8 node = D_8014DD50[temp].unkC;
    firstLimb = D_8014DD50[node].unkD;
}
temp = id;
```

This lets IDO use v0 for the halfword load, v1 for the signed-byte node load, then emit move v0,t9 for the ID. Assigning the ID to a separate scalar from the beginning moves that instruction earlier and changes the array base registers. Preserve the signed child index: an unnecessary u8 cast changes lb to lbu.

For the target's six-byte constant copy through `$at`, use a six-byte struct such as Vec3s and a struct assignment or initializer. Manually copying a word and a halfword instead uses normal temporary registers and changes scheduling. If replacing an eight-byte padded data representation, verify subsequent symbol alignment remains correct.

The complete function matched with diff score 0 and `build/bh.us.z64: OK`.

For stack placement, declare the signed-byte node in the outer function scope before the two limb indices. Move the child-ID byte locals from the initialization block into the existing padding above the copied vector, reducing the s16 padding array from four elements to three. This removes their former lower stack reservation without moving the vector or coordinate array.

The last two cached spills initially occupied the correct pair of slots in reverse order. Compute the limb pointer and second limb index before assigning `temp = id` and the promoted sound ID. Moving only the sound-ID assignment did not help; moving both ID assignments after the lookup changed the compiler spill order while retaining every instruction and register. The pointer then spilled at 0x54 and the promoted ID at 0x50, as required. Source assignment order can therefore affect spill allocation even when optimized instruction scheduling is unchanged.

In Java's matched func_802DF7BC_1F84CC, the two Vec3s locals must be declared before the parent-ID byte, in copy order. This places the first vector at sp+0x28, the second at sp+0x20, and the byte at sp+0x1F. Converting the padded constants to Vec3s preserved their eight-byte symbol spacing through alignment and passed the full ROM checksum.
