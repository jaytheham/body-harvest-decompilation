`incorrect ASM`: The case 2 comparison in `func_800ED78C_FC73C` loaded the double-precision zero into `$f5` and `$f4` at `0xFC970` and `0xFC974`.

-> `code changed`: Assign `D_8015EA30` to the existing `f64 temp_f0` before comparing `temp_f0` with `0.0`.

-> `correct ASM`: The two instructions emit `mtc1 zero,$f7` and `mtc1 zero,$f6`, matching both target words.
