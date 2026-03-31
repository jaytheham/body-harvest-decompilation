### uopt temp spill vs user-declared variable for stack offset

When a value needs to survive across multiple function calls but there are no free saved registers, the compiler spills it to the stack. Whether this is a **user-declared variable** or a **uopt temp** affects the stack offset.

**Pattern:** A return value from a function call is stored, then used several function calls later.

**Wrong approach:** Declaring an explicit `s16 sp34` variable and assigning `sp34 = temp_v0_2`. This places sp34 as a cfe (user) variable, which gets a different stack offset than a uopt temp.

**Correct approach:** Don't declare a separate variable for the spill. Instead, reuse the same variable (e.g., `temp_v0_2`) across the function calls. The compiler will automatically spill it to a uopt temp slot on the stack when it can't keep it in a register.

Example:
```c
// WRONG: explicit stack variable at wrong offset
s16 sp34;
...
sp34 = temp_v0_2;
func_800D9A8C_E8A3C(temp_v0, 0, temp_v0_2);
...
func_800D9754_E8704(sp34);

// CORRECT: let compiler spill temp_v0_2 as uopt temp
func_800D9A8C_E8A3C(temp_v0, 0, temp_v0_2);
...
func_800D9754_E8704(temp_v0_2);
```

Also relevant: when `func_800D99F4_E89A4` (returns s32) result needs to be compared against -3 without double sign-extension, use a separate `s32 result` variable for the raw return value and cast to `s16` separately:
```c
s32 result;
s16 temp_v0;
result = func_800D99F4_E89A4(...);
temp_v0 = (s16)result;
if (result != -3) {
```
This generates `beq v0, at` (compare raw v0) instead of `beq t9, at` (compare sign-extended copy).
