In `func_802DE7C4_322914`, an instance pointer initialized at function entry scheduled the case-9 coordinate loads before outgoing argument stores. The `func_800DF038_EDFE8` call put its effect-type store in the delay slot, the following particle call loaded coordinates before its constants, and the final random-effect call delayed its zero argument store.

-> Use `alienInstances[arg0].field` throughout the function before the final random-effect branch. Declare the instance pointer without initializing it, then initialize it inside that branch before the random-number calls and use it for that branch only. Use direct `D_8014DD50` accesses rather than a cached table pointer.

-> At `0x322F1C`, the effect-type store precedes the radius shift and mask; Y/Z loads follow the mask, and the null-pointer store fills the call delay slot. At `0x322F74`, the particle call reloads X/Y/Z after its constant argument stores, followed by `move a3,zero`, `jal`, and `sw zero,0x14(sp)`. The random effect stores its zero argument at `0x3231A0`, and its Y-coordinate addition remains after the remainder checks. The final sound call initializes `a0` and `a1` before the X/Y loads. The function remains unmatched.

With indexed instance access, reading `chain.child` directly as the helper argument loads the float before the child and stores the child in the helper call delay slot.

-> Copy `chain.child` into the existing `s32 spawnZ`, retain `if (spawnZ) {}`, and pass `spawnZ` as the helper argument. Keep the animation event in `SignedWord.bytes[3]`.

-> The child halfword load precedes the float load at `0x322AE8`, the event-byte store remains at `0x322AFC`, and `swc1 f4,0x20(sp)` fills the helper call delay slot at `0x322B24`. Reusing the initial child or root temporary instead also changes the initial chain-store order, so those alternatives do not reproduce this sequence.
