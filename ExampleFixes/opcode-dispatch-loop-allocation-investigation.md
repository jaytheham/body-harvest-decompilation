# Opcode dispatch and a preserved true constant

`func_80075E50_84E00` in `missions.c` matched with these changes.

## Breakthrough: one-case switch with a continue edge

A for loop with the command cursor increment in the header and a one-case switch whose default executes continue recovers the target's cold command loop without extra no-op cases:

    for (; count--; cmd++) {
        switch (cmd->opcode) {
        case 0x9C:
            /* Vehicle conditional and call or flag clearing. */
            break;
        default:
            continue;
        }
    }

Use post-decrement while loops for all subsequent fixed-count scans. Replacing the explicit info cursor and the two intersection cursors with indexed array accesses recovers the target address scheduling. A named u8 vehicleId inside the active case eliminates a frontend temporary and recovers the call spill slots. A named s32 bitId, reused only by the two bitset scans, recovers their v0 loads and the local mask offset. A byte bitId instead changes several registers and instruction positions. Keep the final scan's u8 val independent.

Best current declarations, in order: u8 vehicleId; s32 count; MissionCommand *cmd; s32 bitId; u8 *stream; s32 has83After82; u8 val; u32 bitmask[8]. This yields the target frame 0x70, command spill sp64, counter spill sp68, and mask base sp34.

## Matched: empty condition preserves the true constant

Cleanup now matches (diff score 0 and full build/bh.us.z64: OK). Keep the final scan as:

    if (val == 0x83) {
        if (has83After82 == 1) {
            /* Keep the true constant live through IDO register allocation. */
        }
        if (!has83After82) {
            has83After82 = 1;
        }
    }

The empty condition is removed by ugen after uopt register allocation. Its reference to 1 keeps the shared true value in s2, including the early vehicle-state comparison and the li s2,1 in the cleanup call delay slot. The real update uses the zero-state branch, matching bnez s1 exactly. This follows the existing struct-copy-register-skip-switch-if-optimizations.md note about empty conditions extending value lifetimes without emitted instructions.
