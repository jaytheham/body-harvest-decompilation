# Water-spray loop scopes and payload addresses

`func_800CA848_D97F8` matches all 224 instructions and passes full-ROM verification.

- Use a guarded `do` loop and read the next links through `D_80154318[currentUnitId].unk4`. This removes the extra entry-pointer copy and loop-back branch produced by the infinite loop with a break.
- Remove the redundant `arg0 &= 0xFF` for the byte parameter. Its extra frontend temporaries shift the first stride calculation from t6/t7 to t8/t9 even when the extra masking instructions disappear.
- Name the root and leader indices. They restore v0/v1 for the two initial link loads and the effect/root pointers in s6/s7.
- Access the payload through a typed conversion of `&entry->unk8`. Converting the typed payload address through an integer instead changes the initial Y load to use the payload pointer, eliminates the repeated payload address, and reuses that Y load in the velocity update. The existing union member address retains the target alias behavior while subsequent accesses use struct fields and arrays.
- Keep the `if (1)` scope around the guarded do loop. With identical operations, removing it assigns the shared 28-byte stride to a2 rather than t1. That changes the temporary pool from eight registers to nine and shifts temporary registers throughout the function.
- In the ground-impact call, read the radius through `D_80154318[currentUnitId].unk2`. Reading `current->unk2` instead moves the LHU six instructions earlier. Both use the same entry, but the indexed expression retains the target scheduling.

The position array added to `EffectInterpolationState` overlaps its existing 14-byte payload and leaves the entry stride unchanged.

A zero function score must still be followed by full-ROM verification. A whole-file experiment replacement can accidentally change an already matched function. Restrict edits to the selected function; if the checksum differs, locate the differing ROM bytes and map them back to the assembly symbols.

## Partial chain simulation: test the cursor before decrementing

func_80103308_1122B8 remains NON_MATCHING after 20 source variants. Its carried position starts at cursor[1], while the current position and velocity belong to cursor[0]. The midpoint reads cursor[-1]. A do loop with the unsigned condition on cursor-- includes the final point below the lower-bound symbol, as the target does: the branch tests the original cursor before decrementing. Moving the decrement earlier and updating cursor[0] instead writes the wrong element.

The retained candidate corrects those accesses and uses the existing double constants. Its score is 8828; the target spills loop midpoint values and uses different floating registers. Separate scalar groups, arrays, vector fields, literal constants, and conditional scopes did not resolve that layout. The wrapped full ROM passes verification.

### Partial companion chain updater

func_80102FA4_111F54 remains NON_MATCHING after 20 compiled variants; retained score 9396. Like func_80103308, the cursor points at the point being updated: read the neighbor from cursor[-1], update cursor[0] velocity and position, carry the new position, and compare the old cursor against the lower boundary before decrementing. A reverse-order three-float carry array preserves the three stack stores and reloads absent from scalar versions. Reusing the midpoint scalars for the new position improves allocation over three separate output scalars. The final terrain loop returns the current index when terrain height is below point Y, otherwise continues through index zero and clears the global high bit. Original code inverted that test and returned early. Read point Y after the helper call, and reuse the same cursor in both loops. Constant placement and floating register allocation remain unresolved; no new file was created.
