# A constant global address rematerialised per access (`lui $at` per load) instead of held in a register

## Symptom

`bh.sh check` reports a score in the thousands while `ins_diff.py -noregs` shows an **instruction-count
surplus** (`target N / ours N+k`). In the compiled object the surplus is one `lui $at,%hi(sym)` per
access through a pointer to a global struct, e.g.

```
CURRENT:  lui   $at,%hi(D_8014F618)
          lwc1  $f6,%lo(D_8014F618+0x18)($at)
TARGET:   lwc1  $f6,0x18($v1)          ; $v1 = &D_8014F618, materialised once at the top
```

Count it directly, no differ needed:

```
mips-linux-gnu-objdump -d --no-show-raw-insn build/src.us/<rel>.c.o \
  | awk '/<func>:/{f=1;next} f&&/^$/{exit} f' | grep -c 'lui\s*at,0x0'
```

Measured case: `func_800A2260_B1210` (`overlay_gameplay/outside/AAA70.c`, target 522 instr / ours 552,
delta **+30**, asm-differ **9730**). Ours emits **31** `lui $at,0x0` and the base register `$a1` is dead
after instruction 161; the target builds `&D_8014F618` once into `$v1` and keeps it for all ~31 accesses.
The +30 is exactly those extra `lui`s - not a logic or frame difference (the frame `0x70` agrees).

## What did not work (measured)

Spelling the same accesses as an f32 pointer index (the head is 9 consecutive f32 at 0x0..0x20), so the
base is a plain `f32 *` rather than a pointer-to-struct:

```c
f32 *hp;  hp = (f32 *)&D_8014F618;  ...  hp[0] ... hp[8]
```
measured **9760** (up from 9730) and still **31** `lui $at` - the access spelling is not the lever; cfe
folds the constant address either way.

## Triage rule

When a function's score is a large multiple of its instruction-count surplus and every extra instruction
is a `lui $at`, the residual is **which constant address the allocator keeps in a register** - the
`global-store-at-vs-materialised-address.md` family. It is an allocation decision, so do not spend the
attempt budget on pointer/array/member spellings for the same address; a shape that gives the address a
genuine second use is the only untried lever.

