# Reused trig local and unsigned addition operand order

Matched Java `func_802E01A0_1F8EB0` with an exact assembly diff and full ROM checksum `OK`.

Two inline sine/cosine calls created separate implicit halfword temporaries. Declaring one `s16 trigResult` and reusing it for both calls reduced the hidden stack extent by one halfword. The frame stayed at 0x78, but the compiler's cached narrowed X/Z values moved from sp+0x40/0x3C to the target sp+0x44/0x40. Separate named sine and cosine locals did not fix the offsets.

For the final Z offset, both orders of signed addition generated `addu t7,t5,t6`; swapping the C operands did not help. Promoting the base coordinate to unsigned produced the target `addu t7,t6,t5` without changing other instructions:

```c
(u32)sp6C + (s32)(-((f32)trigResult / 32768.0) * (f64)sp68)
```

An explicit `u8 parentId` also mattered: it put the parent ID in a3 and the shared invincibility mask in t2. Direct indexing through `self->unk25` produced the same logic but shifted temporary register allocation throughout the function.

Use the existing `AlienInstance.alienIds` union for child IDs stored in coordinate bytes. This function reads child IDs at offsets 1 and 2, rather than the usual instance fields at 0x1B and 0x26.
