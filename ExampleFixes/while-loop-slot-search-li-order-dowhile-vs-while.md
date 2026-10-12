### `while(a1--)` with `a1=0x10` (fold) gives `li a0,-1` BEFORE `li a1,0xf`; `do{}while(a1--)` with `a1=0xF` gives reversed order

When a function has a backward scan loop (pointer walks a s16 array from the end) that:
- Initialises pointer at the last element: `s16 *v1 = &D_last_element`
- Compares each slot against `-1` using `bnel a0, t6`
- Calls an output function (e.g. osSyncPrintf) in the found arm and breaks
- Has `move a2, a0` at the function prologue (saving the s32 arg before overwriting a0 with format string)

**`do{}while(a1--)` with `a1=0xF`** generates:
```
li  a1, 0xF    ; counter FIRST
li  a0, -1     ; comparison constant SECOND (wrong order if target has reversed)
```

**`while (a1--)` with `a1=0x10` (fold)** generates:
```
li  a0, -1     ; comparison constant FIRST  ← matches target
li  a1, 0xF    ; folded counter SECOND       ← matches target
```

The fold (`0x10 → 0xF`) shifts when the counter is processed relative to the loop-body constant, making the comparison constant load first.

**Also key**: without an explicit `return` in the found arm (just `break`), the compiler does NOT emit `move v0, zero` at function exit. The return value in the `break` (found) path is whatever osSyncPrintf left in `v0`; in the not-found path `v0` naturally holds `0` from the last `move v0, a1` (when `a1==0`).

**Matched function**: `func_80008C44_9844` in `src.us/core/53F0.c`

```c
s32 func_80008C44_9844(s32 arg0) {
    s16 *v1 = &D_80047F7E;
    s32 a1 = 0x10;
    while (a1--) {
        if (*v1 == -1) {
            *v1 = arg0;
            osSyncPrintf(D_80037100_37D00, arg0);
            break;
        }
        v1--;
    }
}
```
