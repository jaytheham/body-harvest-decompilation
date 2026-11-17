`incorrect ASM`: The first building model lookup in `func_8011694C_1258FC` allocates the door-model load first. IDO subsequently schedules the building model load ahead of it, but keeps the wrong temporaries and branch operand order.

-> `code changed`: Express the equality as `!((u32)type[lookupId].model - (u32)D_800522C0[count].unkC)`. Unsigned subtraction keeps the zero test equivalent for all 32-bit values.

-> `correct ASM`: IDO folds the subtraction into the branch, assigns `t7` to the index shift, and emits the model loads into `t9` and `t6` in that order before `bnel t9,t6`.

`incorrect ASM`: Reading the building type directly at both points in the centering loop rematerializes its address ahead of the loop and keeps it in a separate register.

-> `code changed`: Read both values through the existing byte pointer used by the preceding level checks. Reuse the cursor storage for the door-map pointer, the center scan, and the initial zone count, whose lifetimes do not overlap.

-> `correct ASM`: The center scan uses `a0` for its cursor and emits both target `lui/lbu` pairs. The entire centering loop matches byte for byte.
