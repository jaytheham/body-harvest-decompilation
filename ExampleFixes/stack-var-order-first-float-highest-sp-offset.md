### Stack variable ordering: first float declared gets HIGHEST sp offset

For matching `sp30` (or any local float) at a specific stack position with non-spilled floats also declared:
- The **first** declared float variable gets the **highest** sp offset in the local variable area (just below $ra save).
- Declare a register-allocated (non-spilled) float variable BEFORE the spilled one to push the spilled one to a lower address.

Example: target has `sp30` at `sp+0x30`, but `sp30` declared first gives `sp+0x34`. Fix: declare a float variable that won't be spilled FIRST, then `sp30`:
```c
f32 var_f0;   // declared first → gets sp+0x34 (non-spilled, slot allocated but unused)
f32 sp30;     // declared second → gets sp+0x30 (spilled here, matches target)
```
