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
