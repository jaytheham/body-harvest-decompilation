# Direct array access changes effect-call scheduling

Matched `func_800ADB4C_BCAFC` in `B8290.c` by consistently using
`alienInstances[arg0].field` for field accesses while retaining an
`AlienInstance *alien` for calls that accept the instance pointer.

With `alien->field` throughout, the particle call to
`func_800CA5EC_D959C` loaded X and Z early, delayed constants 6 and 8,
and reordered the outgoing zero argument stores. Replacing just that
call's accesses with array accesses did not help. Replacing field accesses
throughout the function produced the target schedule and a verified ROM.
The emitted address still uses the same saved register. This is a codegen
effect of the surrounding expressions, rather than a change in logic.

Other necessary changes:

- Combine the initial zero-state and target-flag checks into one condition,
  followed by the state-one/state-two `else if` chain.
- Compute the maximum of the two absolute coordinate differences, using
  explicit absolute-value locals followed by repeated ternaries.
- Set the proximity flag for `distance < 800 && visible`, then clear it
  in an `else if (distance > 1000 || !visible)`.
- Declare the instance pointer before the reused state/distance local to
  put the distance spill at `sp+0x48` within a `0x50` frame.
- Compare the selected instance against `&alienInstances[arg0]` to get
  the target operand order, rather than comparing against the local pointer.

Verification: `tools/make.ps1` reported `build/bh.us.z64: OK` and
`tools/diff.ps1 func_800ADB4C_BCAFC func_800ADFC0_BCF70 --show-score`
reported zero differences.

The same direct-array replacement fixed the state-three/state-four store
scheduling in `func_800AD814_BC7C4`. In its case `0x11`, write the flags
before assigning `unk38 = 0x100` to obtain the target temporary registers.

That function initially reached a zero assembly diff while the ROM still
failed verification: its original C case labels were incorrect. The jump
table itself must be checked, not just the instruction stream. The recovered
states are: 2 snaps to the grid; 1 follows the player; 5/7/9/13 share the
player-follow setup; 11 follows a vehicle; 15 changes speed; 17 targets an
object; 19 stops; 20 changes speed; 25 resets direction; 26 configures the
special player target; 27 sets the target index. Correcting the labels gave
a verified ROM without changing the already matching function instructions.
