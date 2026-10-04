# Opcode dispatch shape affects IDO loop allocation (investigation)

Observed while matching `func_80075E50_84E00` in `missions.c`; this function is not yet matched.

A single `if (cmd->opcode == 0x9C)` or one-case switch leads IDO to hoist the vehicle array base, stride 0x5C, and opcode comparison constant into saved registers. The command pointer and countdown also occupy saved registers. The target instead loads the counter into a2, keeps the command pointer in v1, spills them across the call, and computes the vehicle offset with shifts inside the loop.

An experimental switch with active case 0x9C and grouped no-op cases 0x9D, 0x9E, 0x9F recovers the target counter load, pointer allocation, and in-loop shift sequence. It still emits unwanted opcode comparisons and does not match. Ten contiguous cases also trigger an unwanted jump table. This is evidence that dispatch structure affects loop allocation, not a proposed final implementation.

Variations that did not recover the target allocation: while versus guarded do/while versus for; reversed if/else; an opcode continue guard; typed command cursor versus byte cursor with typed accesses; named opcode/index locals; native int, s32, u32 countdown; byte/halfword/word state flags; separate current/next pointers; local vehicle base and pointer; signed local bitmask; explicit counter storage arrays; volatile cursor spills. Avoid repeating these alone without new evidence.

The source retains the straightforward typed command scan and the cleanup wrapper is removed. The two subsequent functions, func_8007643C_853EC and func_800765C4_85574, are verified matches. A temporary assembly fallback for cleanup yielded `build/bh.us.z64: OK` after the latest header and formatting changes, then the fallback was removed again.

A length difference in cleanup shifts later symbols. Name-based diff output can consequently start the target comparison at a shifted address for later functions. Do not interpret that artifact as a regression without checking the function's actual target start or isolating the preceding unmatched function.
Additional unsuccessful variants: flattening the opcode and vehicle predicates into an if/else-if duplicates the opcode and vehicle offset tests; nested one-case switches retain the hot-loop allocation; a closed range test (opcode >= 0x9C && opcode <= 0x9C) retains two range branches; native long 1L constants and assigning the vehicle pointer inside the condition do not recover target allocation. Moving grouped no-op switch cases before the active case also retains extra comparisons.

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

The current implementation is ONE instruction away (score 200): target final guard is bnez s1, while current guard is beq s1,s2. Source has83After82 != 1 retains the target saved true constant s2, including its first-loop initialization and the li s2,1 in the cleanup call delay slot. Source has83After82 == 0 gives the desired final branch but loses s2 throughout the function and changes the frame/offsets. Both guards have equivalent behavior because the state only takes 0 or 1; this is still not a match.

Other unsuccessful final-guard variants: unsigned state < 1U (including consistent unsigned first comparison/assignment), redundant zero-and-not-one tests (retains both branches), conditional state assignment, assigning a duplicated opcode predicate, continue guards, and a two-value state enum. Moving the mask to a nested scope after the call did not affect codegen. Reusing the final byte val in the bitset loops changes registers and control flow; use a separate s32 bitId.

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
