`func_802DE7C4_322914` at ROM `0x322AE4`: the float load preceded the child load, and the call's delay slot stored the child instead of the float. Adding a child read with a scalar event byte corrected those instructions but moved the event-byte store from `0x322AFC` to `0x322B18`.

-> Change the local event byte from `u8 event` to `SignedWord event`, assign and switch on `event.bytes[3]`, and put `if (chain.child) {}` between the animation-event call and `func_802D997C_31DACC`.

-> The argument setup now has `lui at; lh child; lwc1 f4`, the event uses `sb v0,0xC7(sp)` at ROM `0x322AFC` and `lbu event,0xC7(sp)` after the next call, the child uses `sw child,0x10(sp)` before the call, and `swc1 f4,0x20(sp)` occupies its delay slot. Register allocation and later instructions remain unmatched.

The sine result in cases 5, 6 and 9 used `swc1/lwc1` at `sp+0xA8`; the target uses `sp+0xAC`, while the four geometry buffers already had the correct stack homes.

-> Remove the unused `Unk8014DD50 *nodeA` declaration before `spAC`, and replace its four bytes with `s32 pad98` immediately before the geometry buffers.

-> The six sine-result stores and reloads use `sp+0xAC`, and the geometry buffers retain their matching offsets.
