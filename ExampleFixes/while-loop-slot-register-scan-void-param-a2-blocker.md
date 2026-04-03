### void-1-param s32 slot-scan: `move a2, a0` requires competing pointer in a0 from second section

**Context**: A function takes one `void *arg0` parameter and:
1. Scans a small array descending (`while(i--) D_arr[i] == arg0: return`)
2. Finds an empty slot in the same array (second loop, indexed access)
3. Stores arg0 into the found slot

**Target register layout:**
- `v1` = loop counter (from `while(i--)` dead-code pattern)
- `a1` = strength-reduced scan pointer (from `while(i--) D_arr[i]` pattern, same as `func_800074BC_80BC`)
- `a2` = arg0 copy (`move a2, a0` at prologue)
- `a0` = D_arr base (rematerialised via `lui a0; addiu a0` before second loop and at store point)
- Comparison: `beql a2, t6` (uses a2=arg0)
- Store: `sw a2, 0(t2)` where t2 = a0 + j*4

**Pattern that works (almost, score 2035):**
```c
void func_scan_and_register(void *arg0) {
    s32 i = 4;
    s32 j;
    while (i--) {
        if (arg0 == (void *)D_arr[i]) return;
    }
    j = 3;
    if (D_arr_tail != 0) {   // D_arr_tail = D_arr[3], declared as separate extern symbol
        while (j) {
            j--;
            if (D_arr[j] != 0) continue;
            break;
        }
        if (j == -1) {
            osSyncPrintf(&format_string);
        } else {
            D_arr[j] = (s32)arg0;
        }
    }
}
```
This generates `a1` for the scan pointer and `v1` for the counter (matching target), but arg0 stays in `a0` (gives `beql a0, t6` not `beql a2, t6`).

**The blocker:** `move a2, a0` requires IDO to globally determine that `a0` will be needed for `D_arr` base in the second section while `arg0` must persist. IDO would do this IF there's an explicit pointer variable allocated to `a0`, but the circular dependency prevents it:
- For `p = D_arr` to get a0: arg0 must move to a2
- For arg0 to move to a2: p must be in a0
- IDO should resolve this globally but doesn't in observed tests

**What TRIGGERS `move a2, a0` in nearby functions** (like `func_80008C44_9844`): osSyncPrintf is called with arg0 as a SECOND argument (`osSyncPrintf(fmt, arg0)`), requiring a1=arg0 at the call site. Since a1 is the counter, arg0 must be pre-saved to a2. This does NOT apply to functions where osSyncPrintf has only the format string.

**Score achievable:** 2035 with the pattern above. The remaining 2035 points of difference cascade from the single missing `move a2, a0`.
