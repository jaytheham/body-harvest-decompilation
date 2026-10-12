### Payload pointer lifetime and sine angle casts

`func_800D9FF8_E8FA8` matched after removing a separate full-entry pointer for its moving effect. The full-entry pointer kept the address live across the first call and made IDO spill and reload it before adding eight. Using only a payload pointer from `(s16 *)(s32)D_80154318[index].coordinates` let IDO keep the address in S0 and adjust it before the call, as in the target. A padding word retained the original local layout.

The last differences were temporary registers around `sins`. Replacing `(angle << 12) & 0xFFFF` with `(u16)(angle << 12)` preserved the mask instruction but changed the compiler's temporary values and restored the target registers throughout the rest of the function.

The unused twelve-byte constant snapshot can use the existing `Vec3i` type instead of a local three-word struct. Direct access to `entry->coordinates` also preserves the target code. Full ROM verification returned `build/bh.us.z64: OK`.
