# Pointer assignment result in printf preserves CFE temporaries

`loadLevelCode` in `src.us/core/loader.c` matched with a `0x38` frame by passing
the converted result of a pointer assignment directly to `osSyncPrintf`:

```c
osSyncPrintf(&D_8003802C_38C2C,
    (s32)(D_8006AA68 = &D_80031C40_32840[(s32)arg0 - 1]
        [D_80031C50_32850[(s32)arg0] - D_80031C40_32840[(s32)arg0 - 1]]));
__printfunc = (void (*)(s32, s32))D_8006AA68;
```

The RAM address tables and `D_8006AA68` are declared as `u8 *`, while the ROM
offset tables remain `s32`. The pointer-to-`s32` conversion on the assignment
result is significant: it lets the printed value remain in `a1` and creates
the compiler temporaries needed for the stack layout and final `t8` load.

The original code used separate named `s32` locals for the promoted level and
calculated address. It generated the correct instruction sequence, but a
`0x40` frame and a final `t7` load. Removing the level local and explicitly
using `(s32)arg0` in every table index retained the scaled index across calls.
Removing the address local and using the converted assignment result in the
call then matched the spills at `sp+0x24` through `sp+0x34`, the `0x38` frame,
and the final register allocation.

Simply storing the address and then printing the global generated an extra
reload. Capturing the assignment result in a named local fixed register
allocation but left the spills four bytes too low. Adding padding grew the
frame again. Prefer the assignment-result expression when this combination
of differences appears.

Verified with `tools/make.ps1`: `build/bh.us.z64: OK`, and no differences from
`tools/diff.ps1 loadLevelCode func_800117D8_123D8`.
