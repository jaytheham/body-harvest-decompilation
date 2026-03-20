### s16 arg with sw a0, 0(sp) delay slot issue

When a function takes `s16 arg0` and stores result via `sh`, IDO 5.3 generates a `sw a0, 0(sp)` (saves original 32-bit arg to the caller's argument home area). The correct C form is:

```c
void func(s16 arg0) { D_s16_GLOBAL = CONST - arg0; }
```

However IDO's scheduler may put `sh` vs `sw a0, 0(sp)` in the delay slot in either order depending on context. If the delay slot ordering doesn't match after trying once, accept NON_MATCHING. The correct function signature is `s16 arg0` (not `s32`) -- using `lh` at call sites and `sh` for the result confirms this.
