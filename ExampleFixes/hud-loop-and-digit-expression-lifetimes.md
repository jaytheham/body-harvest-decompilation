### HUD loops and repeated digit-position expressions

In `148000.c`, canonical indexed `for` loops match IDO's peeled and unrolled inventory scans. Write the single iteration in C, including incrementing the output count immediately after assigning its slot; manually expanded iterations obscure the optimizer's original loop transformations.

`func_8013A4C8_149478` needs a signed 16-bit second argument and three `u8` digit locals declared in hundreds, tens, ones order. Repeat `arg1 + 4` directly in each call to the digit renderer. IDO creates a word-sized expression spill followed by halfword reloads; naming a short local introduces a different store and register lifetime.

For `func_8013A218_1491C8`, repeat `arg1 * 4` inside the rectangle and clipping expressions rather than assigning it to a separate local. That preserves the macro's temporary stack homes and matches the target's 0x48-byte frame. An explicit coordinate local changes the offsets even when every computed command is correct.
