### Do not use local pointer variables for struct array entries used across a jal

When a struct array entry pointer is computed and then used both as a `jal` argument and for field accesses after the call, the compiler naturally creates a uopt temp to save/restore the pointer across the call (e.g. `sw v0, 0x1c(sp)` before `jal`, `lw v0, 0x1c(sp)` after). If you declare a named local pointer variable instead, it becomes a user-declared stack slot and lands at a _different_ offset, causing a stack size mismatch.

**Wrong** (user variable shifts the stack slot):

```c
Foo *sp1C = &D_Array[(s32)arg0];
func_call(arg1, arg2, &sp1C->unk6);
arg2[0] += sp1C->unk0;
```

**Correct** (inline access lets the compiler place the uopt temp at the right offset):

```c
func_call(arg1, arg2, &D_Array[(s32)arg0].unk6);
arg2[0] += D_Array[(s32)arg0].unk0;
```

### Removing BOTH named pointer AND named s32 temp fixes frame size and delay slot pattern

When both a named pointer (`Foo *ptr`) and a named `s32` result variable are declared, each creates a phantom stack home — together they inflate the frame by 8 bytes (e.g. 0x20 → 0x28). The named `s32` also changes evaluation order: IDO computes the struct address BEFORE calling the function (saving the pointer in the jal delay slot), whereas the target saves `arg0` in the first delay slot and defers the address computation.

**Wrong** (both named locals → frame 0x28, ptr saved on first jal delay slot):
```c
Unk800311A0 *ptr;
s32 r;
r = func_800038E0_44E0();
ptr = &D_Array[arg0];
ptr->unk0 = (s16)((r % D_Global) * 0x10);
```

**Correct** (no named locals → frame 0x20, first jal saves arg0, subsequent jals save CSE ptr at 0x1c):
```c
D_Array[arg0].unk0 = (s16)((func_800038E0_44E0() % D_Global) * 0x10);
D_Array[arg0].unk2 = 0;
if (condition) {
    D_Array[arg0].unk4 = (s16)((func_800038E0_44E0() % X) + Y);
}
```

IDO at -O2 CSE-lifts `D_Array[arg0]` into a uopt temp (v1) after the first access, then saves/restores that temp (0x1c(sp)) across subsequent jal calls. The first call's delay slot naturally saves `arg0` (a0) since the address is not yet computed.
