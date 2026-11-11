`incorrect ASM`: In `func_80124D60_133D10`, writing the fade scale as a shift and subtraction moves the fade decrement ahead of the display-list cursor load. Masking the inverse fade before the prim-color macro assigns the subtraction to a scratch register and rotates scratch registers through the render-state restore.

-> `code changed`: Compute the fade as `ticks * 64 - 1` and the scale as `fade * 3`. Pass `0xFF - fade` through the signed inverse-fade local and let `gDPSetPrimColor` mask its channels.

-> `correct ASM`: IDO loads the display-list cursor before decrementing the shifted fade in `t1`. The inverse subtraction uses `t0`, the scale uses `v1`, and the fade loop and render-state restore match the ROM.
