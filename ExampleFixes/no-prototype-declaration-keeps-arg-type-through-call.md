### A block-scope no-prototype declaration keeps an argument's unsigned type through the call

Follow-on to `int-constant-implicit-type-and-param-type-cse.md`. When a function
needs an *unsigned* constant node at a call site whose callee is declared with a
**signed** parameter in a header you must not edit, do not add a `u32` local and
do not retype the header — give the function a block-scope declaration with **no
parameter list**.

**Symptom** (`func_8000FFC0_10BC0`, `core/loader.c`): the ROM materialises the
`osRecvMesg` recv flag fresh in `$a2` at both call sites
(`addiu a2,zero,1`), i.e. it is an *unsigned* constant node, distinct from the
`case 1:` node that IDO hoists into `$s4`. `include/2.0I/PR/os.h` declares the
flag `s32`, so a plain `1` — or even `1U` — is converted to a signed node at the
call and merges with `case 1:` (`move a2,s4` for a body otherwise
instruction-identical).

**Why the two obvious fixes are wrong here.**

- Retyping the header `s32 -> u32` reaches 0, but it is **not shippable**: it
  retypes the constant at *every* `osRecvMesg(..., 1)` call site, and
  `func_800720F4_810A4` (`outside/7F220.c`, an upstream match) needs the `1`
  hoisted into a shared `$s6` there. The two matches are mutually exclusive
  through that header (measured: `os.h` `s32` -> 7F220 = 0 / 10BC0 = 448+;
  `os.h` `u32` -> 7F220 = 200 / 10BC0 = 0).
- A `u32 one = 1;` local restores `addiu a2,zero,1` at both call sites — the
  variable's type is not coerced and does not merge with the case — but it is
  **charged a stack home** it never writes: the whole local area shifts 4 bytes
  down (`$t7`'s home `0x50 -> 0x4c`, the `OSIoMesg` base `0x58 -> 0x54`), 4 rows
  of stack-offset diff. Declaration position does not move it (measured: first,
  last, before/after `OSIoMesg`, and a `const u32` — all 8 or 18, never 0), and
  adding a pad to compensate grows the frame (`0x80 -> 0x88`, score 132).

**The lever.** Declare the callee inside the function with no parameter list:

```c
    OSMesg sp58;
    extern s32 osRecvMesg();          /* no prototype: args keep their own types */

    ...
    osRecvMesg(arg0, 0, 1U);          /* stays unsigned -> fresh `addiu a2,zero,1` */
```

A declaration with no parameter list applies the default argument promotions and
does *no* conversion, so `1U` reaches the call as an `unsigned int` node — the
same node as the `1U` guard, which IDO rematerialises in the callee's delay slot.
With the guard's `1U` and the `switch` case bodies written in the order IDO emits
them (2,1,4), the body measures **0** and the gate passes. The declaration is
block-scope, so no other function or translation unit is affected.

Triage rule: if a header-declared prototype's *parameter type* is what forces the
wrong constant node, retype nothing — first try a block-scope no-prototype
declaration for that one function. It is local, it is reversible, and it avoids
the stale-header trap entirely (the Makefile tracks no header dependencies, so a
header retype silently alters codegen in every includer).
