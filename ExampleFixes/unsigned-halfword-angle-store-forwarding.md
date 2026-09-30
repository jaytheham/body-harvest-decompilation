# Unsigned halfword angle store forwarding

Matched `func_802D738C_18FE9C` with IDO 5.3, `-O2 -mips2 -32`.

The target copies an alien's signed angle into a root joint and stores its
negation in the child joint. It loads the source once, then emits `negu` and
two `sh` instructions. Reading back the signed joint field introduced an
extra `lh`, even when using explicit joint pointers:

```c
D_8014DD50[root].unk6 = alienInstances[id].unk6;
D_8014DD50[body].unk6 = -D_8014DD50[root].unk6;
```

Use the existing unsigned halfword view for both the root store and readback:

```c
D_8014DD50[root].unk6Unsigned = alienInstances[id].unk6;
D_8014DD50[body].unk6 = -D_8014DD50[root].unk6Unsigned;
```

This lets IDO reuse the source value without reloading the root angle. The
stored angle bits and their negation modulo 65536 are preserved. It also
produces the target's pointer register allocation (`v1` for the root, `a2`
for the child) and instruction scheduling. A nested signed assignment
avoided the reload but allocated those pointers differently.

An unused `s16` between the two-element joint array and the final cooldown
local places the cooldown at `sp+0x34`. With the unsigned field accesses,
the complete stack frame is the target's `0x60` bytes.

Validation: the function diff has no differences and the full ROM build
reports `build/bh.us.z64: OK`.
