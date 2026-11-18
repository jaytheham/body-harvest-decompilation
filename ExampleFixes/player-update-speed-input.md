`incorrect ASM`: In `func_800ED78C_FC73C`, the speed decay converted the subtraction result with `cvt.s.d $f2,$f18` at `0xFD688`.

-> `code changed`: Load the speed into the existing `f32` temporary `xDelta` before widening it for the subtraction by `0.1`.

-> `correct ASM`: The conversion emits `cvt.s.d $f2,$f8`, matching the target word. The ROM comparison has four fewer mismatched words overall.
