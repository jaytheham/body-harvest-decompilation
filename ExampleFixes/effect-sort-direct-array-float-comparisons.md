`incorrect ASM`: In `func_800DBE20_EADD0`, copying `distances[i]` into a local `f32 distance` and comparing sentinel literals against that local produces `c.eq.s f0,f24` and `c.eq.s f0,f22`.

-> `code changed`: Remove the local distance copy and compare the array element directly: `if (-1 == distances[i])` and `if (-2 == distances[i])`.

-> `correct ASM`: The comparisons become `c.eq.s f24,f0` and `c.eq.s f22,f0`, matching the target without named float sentinel locals.
