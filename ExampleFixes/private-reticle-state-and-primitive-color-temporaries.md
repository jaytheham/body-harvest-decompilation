# Private reticle state and primitive-color temporaries

`func_800A3490_B2440` in `outside/AAA70.c` matches with three initialized
function-local static words, in this data order: `D_8013D76C_14C71C = 0`,
`D_8013D770_14C720 = 10`, and `D_8013D774_14C724 = 0`. Remove their file-scope
data placeholders and unused external declarations. None has another caller
or consumer elsewhere in the game code.

Function-private storage lets IDO use self-clobbering global loads and separate
`$at` stores. A file-scope definition, even moved after the functions, keeps
the distance address in a register instead. Named pointers can change some
address decisions but do not reproduce all three private variables. The lower
clamp is `MAX(0, value)`; the upper clamp and countdown access the statics
directly. The resulting clamp and distance instructions match without aliases
or compiler overrides.

## Let the primitive-color macro perform its byte masks

For the grayscale command, pass `(fade * 0xFF) / 140` directly as each of the
four color arguments. An extra `& 0xFF`, or an explicit byte cast, produces
the same instruction shapes but changes the temporary-register sequence
starting at the division result. The macro already masks each field to eight
bits. Naming the grayscale result does not substitute for the repeated,
unmasked expression in this function.

The final fading alpha needs a different source shape:

```c
gDPSetPrimColor(D_8005BB2C++, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
               (u32)(0xFF - (D_8013D5C0_14C570[0] * 0xC)));
```

The unsigned word cast reproduces the remaining temporary-register events.
Replacing it with `& 0xFF` or a byte/halfword cast leaves all instruction shapes
correct but changes the integer temporary sequence from the subtraction
through the final display-list commands. Unsigned literal suffixes on the
subtraction or multiplication did not reproduce the cast's effect.

## Keep the word and byte working values separate

Use a signed word for the initial Boolean result, the old smoothed distance,
and the loop's distance quotient; their lifetimes do not overlap. Use a
separate byte for the flashing pulse. Sharing the byte with the Boolean
changes the early Boolean register from `v0` to `a1`. A word pulse changes the
final color allocation and puts the quotient spill at `sp+0x18` instead of the
target's `sp+0x1C`.

Declaration order also matters: type pointer, distance word, loop counter,
X/Z shorts, working word, alpha short, RGB/fade bytes, and pulse byte. This
reproduces the `0x70` frame and the target's coordinate and color homes.

The successful candidate was checked against the next function
`func_800A3CD0_B2C80`: diff score zero and `tools/make.ps1` reported
`build/bh.us.z64: OK`.
