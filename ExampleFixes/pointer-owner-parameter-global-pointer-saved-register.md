# Pointer owner parameter controls global pointer register allocation

Matched `func_800EBA54_FAA04` in `src.us/overlay_gameplay/outside/F9230.c` with IDO 5.3 `-O2 -mips2 -32`.

The logic and instruction order already matched, but every access to `D_80052B34` used `v1` instead of target `s0`. This also omitted the saved-register store/load and reduced the stack frame from `0x28` to `0x20`.

The positional sound helper `func_801371B8_146168` had an integer first parameter despite callers passing vehicle and alien pointers as sound owners. Changing that parameter from `s32` to `void *` in both `include/functions.us.h` and the helper definition fixed the target caller without any named vehicle pointer or register-allocation expressions:

```c
func_801371B8_146168(D_80052B34, 0x8D,
    D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, -1.0f);
```

IDO then used `s0` for the global pointer and generated the target frame and scheduling, including the reload after a nested random-number call. The helper's own assembly and all other callers remained matching: the full prescribed ROM build returned `build/bh.us.z64: OK`, and the target function's diff score was zero.

When pointer accesses have the right instruction order but consistently use a caller-save register instead of a saved register, check the called function's pointer parameter type before adding local pointer temporaries. Pointer and integer arguments share the ABI representation but can affect IDO's optimization and register allocation differently.
