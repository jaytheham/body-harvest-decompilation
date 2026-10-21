`incorrect ASM` (`func_80103308_1122B8`, final endpoint): the X midpoint uses `cvt.s.d f18,f10` and the Z midpoint uses `cvt.s.d f22,f10`, reversing their target result registers.

-> `code changed`: capture the old neighbor coordinates in `oldX`, `oldY`, and `oldZ`. Before the actual XYZ midpoint assignments, initialize `lastZ = oldZ; lastY = oldY; lastX = oldX;` and add the empty comparisons `lastZ < lastY`, `lastY < lastX`, and `lastX < lastZ`. These initialized uses establish the variable ordering; the copies and comparisons emit no instructions.

-> `correct ASM`: the XYZ midpoint results use `f22`, `f20`, and `f18`; the old neighbor coordinates remain in `f0`, `f14`, and `f16`. The final floating-point sequence matches this region of the target. The complete function is still unmatched.
