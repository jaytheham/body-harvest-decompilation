# Mission dispatcher: indexed cursor and jump-table verification

Matched `func_80073DC0_82D70` in `missions.c`, verified with `build/bh.us.z64: OK`.

A named advancing pointer and current-record pointer let IDO coalesce the initial cursor into `s0`, dropping the target's `move s0,s2`. Separating the initial increment into the guarded loop restored the instruction but left the initial cursor in `v1`. An indexed traversal lets IDO eliminate the integer induction variable and retain both target pointers:

```c
opcode = (entry = &commands[index++])->opcode;
while (opcode ^ 0xA9) {
    switch (entry->opcode - 0x9C) {
        /* handlers */
    }
    opcode = (entry = &commands[index++])->opcode;
}
```

Keep the opcode assignment outside the while condition. Putting it in the condition added hidden front-end temporaries and enlarged the frame. Group the four halfword locals in declaration order `s16 variant`, `u16 random`, `s16 x`, `s16 z` before the integer locals to place x/z at `sp+0x5C`/`sp+0x5A` while preserving the 0x68 frame.

For the final message expression, `level * 50 - (50 - argument)` gave the target temporary-register and addu-operand order; equivalent addition forms did not.

A zero instruction diff does not verify a switch's opcode mapping. Here all instructions matched while six ROM bytes still differed in the generated jump table. The target indices were 0, 1, 2, 3, 4, then a default hole at 5, the reward handler at 6, the level event at 7, message at 8, and reset flag at 9. Keep the handler bodies in their target instruction order, even when case labels are not numerically ordered. Check the full ROM before declaring a match.

The packed building rotation is a four-bit field at bits 2..5 of byte 0x0B. A bitfield assignment generates the target skipped temporary register; the equivalent raw byte mask expression does not. The flag routine takes a u64 argument: pass the signed `command - 100` directly so IDO sign-extends into a0/a1. Shifting it first changes both behavior and assembly.
