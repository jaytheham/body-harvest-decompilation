### Integer constant implicit type (and the parameter it is passed to) controls CSE

IDO merges integer constants of the same **implicit type** into one register
(DecompHints: "constants have implicit types; an unsigned 1 differs from a signed
1"). When the ROM keeps the *same value* in several registers, the constants must
have had different implicit types in the original source.

**Symptom** (`func_8000FFC0_10BC0`, `core/loader.c`): the target materialises the
constant `1` three times — `li at,1` for an `if (x == 1)` guard, `addiu a2,zero,1`
for `osRecvMesg(..., 1)` and `li s4,1` for `switch { case 1: }`. The naive source
(all `1`) merged all three: the guard's constant was hoisted into a callee-saved
register (`li s5,1` in the prologue), the switch reused it, and every following
`$s` register was shifted down one — `asm-differ` 1707 for a body that was
otherwise instruction-for-instruction identical.

**Levers, each measured:**

1. **Write the guard's literal unsigned** — `if (x == 1U)`. That gives the guard a
   distinct (unsigned) constant node, so it stays in `$at` and the switch's signed
   `1` takes `$s4`. 1707 -> 448.
2. **The parameter type of the call the constant is passed to counts too.** The
   remaining difference was `osRecvMesg(..., 1)`: the target rematerialises
   `addiu a2,zero,1`, ours copied the switch's `$s4`. An unsigned argument
   (`1U`) had no effect while `osRecvMesg`'s third parameter was declared `s32` —
   the prototype coerced the constant back to a signed node and it merged with the
   case again. Retyping the parameter `s32 -> u32` makes the flag constant share
   the guard's unsigned node instead; IDO then rematerialises it in the call's
   delay slot. 448 -> 0.

So before reaching for register-allocation tricks, check whether the ROM keeps one
value in several registers: that is a constant-typing difference, and the type of
both the literal and the parameter it is passed to are the two places to fix it.
The prototype change is evidence-driven (the asm proves the constant is typed
unsigned) and `gate` re-verifies the whole ROM.

**Related, same function:** the *order of `case` bodies in the source* sets the
order the blocks are emitted in. The target had `case 2`'s body before `case 1`'s
(dispatch order is still 1,2,4), so the source listed the cases as 2,1,4. Writing
them 1,2,4 swapped two bodies and cost ~40 points.
