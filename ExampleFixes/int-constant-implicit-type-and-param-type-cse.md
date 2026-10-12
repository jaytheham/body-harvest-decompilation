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

**Trap (measured on this very retype): a shared prototype is global.** Flipping `osRecvMesg`'s
third parameter to `u32` retyped the flag constant in **every** caller. In
`overlay_gameplay/outside/7F220.c:858` (`func_800720F4_810A4`, an upstream match) the target keeps its
`1` hoisted in `$s6` and passes it as `or a2,s6,zero`; with the `u32` prototype our build emitted a
fresh materialisation (`li a2,1`) instead - 4 bytes of ROM at file offset `0x811D8` and a failed gate,
while that function still reported `check` = 0.

The call-site alternative to a header change is a **u32 local**: `u32 one = 1;` and pass `one`. It
rematerialises the constant in the call's delay slot (measured: the delay slot becomes `li a2,1`, the
target's bytes) without retyping anyone else's constant - but the extra local reserves a stack home,
which shifted another local of the same function from `0x50($sp)` to `0x4C($sp)` (2 bytes), so it is
not free either. A suffix alone does not work: `(u32)1`, `1U + 0` and `1U` all still merged.

**The gate cannot see a header change.** The Makefile tracks no header dependencies, so editing a
prototype rebuilds no caller: the stale (and correct) objects stay in `build/` and the ROM keeps
matching. After touching a shared header, delete the affected `.o` files (or `build/`) before trusting
`check` or `gate` - a one- or two-instruction ROM diff in a function that scores clean is the
signature.

**Related, same function:** the *order of `case` bodies in the source* sets the
order the blocks are emitted in. The target had `case 2`'s body before `case 1`'s
(dispatch order is still 1,2,4), so the source listed the cases as 2,1,4. Writing
them 1,2,4 swapped two bodies and cost ~40 points.

### The mirror case: a caller needs the parameter *wider* than the matched callee

The same lever has a reverse form, and there it is blocked. `func_8007290C_15A9CC`
(`overlay_gameplay/inside/158330.c`, 351 instr) is instruction-for-instruction identical to the ROM
except **one row**: its call `func_80011858_12458(currentLevel, D_800A5720)` loads the argument with
`lbu` (the low byte of the 4-byte `Level` enum, `lbu a0,3(a0)`), where the ROM passes the whole word
(`lw a0,%lo(currentLevel)(a0)`). The prototype is `void func_80011858_12458(u8 arg0, s32 arg1);`
(`include/functions.us.h:146`), so IDO only needs the low byte and narrows the load.

Measured: retyping the prototype to `s32 arg0` takes the *caller* to **score 0** - it is otherwise
exact. But the callee definition (`core/loader.c:697`) is a matched body whose first two instructions
(`sw a0,0x20(sp)` / `lbu t6,0x23(sp)`) prove the narrow parameter; with the definition retyped to
`s32` as well the callee scores **718** and the ROM gate fails, and rebuilding the body with an
explicit `u8 idx = arg0;` first (so it still truncates) also does not reproduce it. One prototype
cannot be wide for the caller and narrow for the callee, so this is a **shared-signature batch item**,
not solo work.

Call-site workarounds all fail and were measured: `*(u32 *)&currentLevel` (200 - IDO still folds to
`lbu`), `*(volatile s32 *)&currentLevel` (1760), the function-pointer cast
`((void (*)(s32, s32))func_80011858_12458)(...)` (1420), and an `s32` local copy (495 - the extra home
changes the frame). Do not re-tread them.
