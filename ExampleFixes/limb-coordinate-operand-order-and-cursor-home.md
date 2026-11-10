`incorrect ASM`: In `func_800F842C_1073DC`, the sine conversion for `spB8[2]` starts with `mtc1 v0,$f6; cvt.s.w $f16,$f6`, and later floating-point temporaries differ. Putting the length factor first on its own fixes those floating-point registers but moves the loop cursor home from `0x5C(sp)` to `0x60(sp)`.

-> `code changed`: Write `spB8[2]` as the length times the normalized sine, matching the corresponding cosine expression. Declare `phase` after `sp80` and place a `u16 padding` local between `reach` and `trig`.

-> `correct ASM`: The sine conversion starts with `mtc1 v0,$f4; cvt.s.w $f8,$f4`. Later operations include the target `mul.d $f4,$f16,$f10` and `trunc.w.d $f4,$f16`. The cursor uses `0x5C(sp)` in the unchanged `0xD8` frame. The enabled C draft has 99 differing instruction words, down from 122, and retains its assembly fallback.
