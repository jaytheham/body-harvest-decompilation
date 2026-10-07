# Declaration order of existing locals moves a stack home; an added pad is charged

Symptom: the compiled body is instruction-for-instruction identical to the target except one
stored/reloaded local sits one 4-byte slot lower (measured on `func_802D9128_31D278`,
`overlay_level/comet/318E20.c`, 96 instr, score **8**): target `sh/lh $t9/$v1,0x4e($sp)`,
ours `0x4a($sp)`.

Two levers, measured on that frame (frame `0x50` in both):

| lever | result |
|---|---|
| add a declared-but-unused padding local (tried `s32` first; `s16` first; `s16`+`s16` first; `s32`/`u8` last) | the scalar home does move to the target slot `0x4e`, but the frame grows `0x50 -> 0x58` (score 34) |
| **reorder the two existing declarations** (`s16 parentId;` before `AlienInstance *inst;`) | **0** - the slot lands at `0x4e`, frame stays `0x50`, no instruction changes |

So when only one scalar home is off and register allocation is otherwise identical, try
**declaration order of the existing locals first**: IDO homes locals top-down, so the first-declared
local gets the highest offset. Adding a *new* local to chase the slot is charged 8 bytes of frame on
this shape, and a pad declared last reserves nothing at all.

Do not reach for the phantom-pad recipe (`ExampleFixes/phantom-s16-slot-between-array-and-scalar.md`)
until reordering the existing declarations has been measured.
