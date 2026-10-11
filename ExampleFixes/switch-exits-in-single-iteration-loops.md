# Switch exits in single-iteration loops

During matching of `func_801052E8_114298`, special weapon cases had to skip the
generic weapon code and join a common vehicle-flag check. Representing these
exits as `continue` inside `do { switch (...) { ... } ... } while (0)` preserved
the behavior but changed IDO's branch chaining.

A temporary diagnostic using a direct jump to the common check reproduced the
target's switch exit stubs and its 1232-instruction function length. The loop
version was four instructions shorter. In particular, IDO collapsed a
conditional branch followed by an exit branch into a branch-likely instruction
with the vehicle-flag load in its delay slot.

The final special case also distinguished these source shapes:

```c
if (condition) helperA();
else if (helperB()) vehicle->unk1E = 20;
/* shared exit */
```

```c
if (condition) {
    helperA();
    /* separate exit */
}
if (helperB()) vehicle->unk1E = 20;
/* exit */
```

The structured fix was an explicit `break` after the generic weapon code,
immediately before `} while (0)`. This separates the normal loop exit from its
`continue` target in CFE's control-flow representation. IDO then preserves the
target's exit stubs and function length without any `goto`.

With that trailing `break` present, giving `helperA` its own `continue` also
recovers the target's branch and flag-load delay slot. Without the trailing
`break`, IDO merges these exits despite the separate `continue` statements.

The final complete function passes the normal full-ROM checksum. Do not assume
a single-iteration loop is assembly-equivalent to a direct exit; verify its
branch stubs, branch-likely selection, and function length in the normal build.
