# Comet terrain alignment investigation

`func_802E0B64_324CB4` is the current function, processed after exact matches for `func_802E14F4_325644` and `func_802E1274_3253C4`. Both earlier matches passed full ROM verification OK and diff 0 before this function was enabled.

Target frame 0x70, saved f20 at 0x10, s0 at 0x1C, s1 at 0x20, ra at 0x24. Saved type byte 0x6F, yaw 0x6C, pitch 0x6A, roll 0x68. Offset floats 0x64/60/5C/58. Sample heights: back 0x54, front 0x50, left 0x4C, right normally s0 (reserved home 0x48), center 0x44. Interpolated heights 0x40/3C. Normalized yaw and pitch/roll compiler temporaries at 0x2C/28, used via lhu of low halfwords at 0x2E/2A.

Initial NON_MATCHING code had incorrect zero-angle calls and interpolation constants. Correct angle inputs: four paired calls use coss(yaw), sins(yaw), coss(yaw), sins(yaw), each paired with coss(pitch). Repeat for yaw + 0x4000 paired with coss(roll). All angles narrowed to u16. Interpolations are `(back * 173 - front * -360) / 533` and `(right * 197 - left * -197) / 394`. Signed negative coefficients reproduce the target negu/subu sequence. Explicit constants remain existing const f64 arrays, read through [0]. No placeholder constants were deleted (there is no switch).

Target retains the second func_80003824 return in v0 for final roll adjustment, while storing its low halfword to D_802E7C3A. Current ordinary s32 targetRoll captures this return and is used for that comparison and final assignment. Added the function's u8/void prototype to functions.us.h.

Eight build attempts so far:
1. Enabled source, corrected most zero-angle calls, provisional explicit angle words and descending declarations: score 10738, frame 0x90.
2. Repeated casts instead of angle words, signed coefficients (provisional wrong 1384), score 7216, frame 0x80, unwanted s2.
3. Five-sample height array, coefficient corrected to 360: score 6499, frame 0x78; first 176 instructions structurally agree, but array member stores alter conditional clamping. Removed array.
4. Scalar samples, correct coss(yaw) for the third sample in each pass: score 7363, frame 0x80. Saved pitch and later center height use s2.
5. int instead of s32 samples: identical score 7363, removed.
6. Explicit 0xFFFF angle masks: score 7332 but extra moves, removed.
7. Unsigned saved pitch: score 7870, unwanted s2 and reloads, removed.
8. Captured targetRoll as s32 (correct logical lifetime): score 6900, frame 0x88. Current candidate. Full ROM FAILED; not matched.

Backups are complete function bodies in tools/comet-terrain-attempt-1.txt, attempt-2.txt, scalar-corrected.txt, current.txt. The scalar-corrected backup has correct trig/coefficients but reloads the D_802E7C3A global instead of retaining targetRoll.

Search-AsmPattern at 0x324F38 count 12 found no reference. Closest matched earlier functions should still be read before further tuning (the nearby 0588 function is unmatched). Prior matched timer patterns provided useful examples but do not cover floating-point behavior here.

9. Replaced the ten f64 placeholder arrays with ordinary floating literals and removed their extern declarations: score 5645 (from 6900), float registers improve; retained.
10. Saved orientation as a three-element s16 array: score 7812, shrinks frame to 0x68 but introduces repeated array loads and loses normalized-angle spills. Removed; ordinary scalar literal candidate restored.
Current source therefore uses natural floating literals, scalar saved angles and targetRoll; score 5645, not matched.

11. Reused dead center height sp44 to hold the final roll result instead of a separate targetRoll local: score 5269, frame 0x80 (down from 0x88). Retained, backup tools/comet-terrain-reuse-5269.txt.
12. Cached normalized angles in an ordinary two-word array: score 7900, frame 0x78, extra stores/conversions. Removed.
13. Identified D_802566D8 as an array of 0x68-byte records, with s16 unk0 followed by 0x66 unknown bytes. Added Unk802566D8 in structs.us.h, changed variables.us.h declaration, replaced all four other accesses in this C file plus current access with struct indexing. Score remains 5269; retained as required removal of pointer/stride arithmetic. Current candidate is scalar angles, floating literals, reused sp44, typed record table. Full ROM FAILED.

14. Explicit if/else for the second clamp (`if (sp50 < sp44) sp4C_2 = sp44; else sp4C_2 = sp50;`) drops score 5269 to 1298, removes s2, frame 0x78. This is decisive: the earlier assignment followed by conditional overwrite changed global register allocation. Retained. First 211 and later 203 instructions agree structurally. Most remaining differences are upper local slots +8, an extra move on yaw+0x4000, and missing reload of D_802E7C38 in final pitch else branch.
15. Swapping inst/temp_s0 declarations scores 1370 and moves second-phase normalized yaw spill from 0x2C to 0x30. Removed; score1298 candidate restored. Backup tools/comet-terrain-clamp-1298.txt.

16. Update saved yaw once with `sp6C += 0x4000` before side samples, then use `(u16)sp6C` for all four trig calls. This removes the extra move and reproduces the target addiu/andi/store sequence; score 963. Retained. Backup tools/comet-terrain-yaw-963.txt.
17. Reusing sp50 as a temporary for the final pitch difference gives identical score963 assembly; unnecessary temporary removed. Current remaining structural differences: frame 0x78 vs0x70 and missing final else global pitch reload (lui/lh). First420 instructions otherwise structurally match.

18. Removed the named instance pointer and replaced all accesses with alienInstances[arg0]. Frame now exactly0x70, score585. Retained; ordinary source also avoids the unnecessary local. Backup tools/comet-terrain-direct-585.txt.
19. Volatile pitch global plus one cached difference scores2465: extra addiu/base-register addresses, different store scheduling. Target uses AT-relative initial store and does not support that qualifier. Restored nonvolatile s16 declaration and direct difference expressions. Current score585 candidate restored.

20. Saved final pitch into reused s16 sp6A: score1812, adds halfword normalization and alters early pitch register allocation. Removed.
21. Saved final pitch into reused s32 sp50: unchanged score585; removed.
22. Adjacent pitch/roll globals as s16 D_802E7C38[2], both elements used: score2140, holds array base and changes stores/load ordering. Removed.
23. Pitch array element0 with separately labeled roll store: unchanged585. Array declaration restored to scalar; no evidence supports combining them.
24. Explicit if for selecting maximum interpolated height into sp3C before table addition: score4651 and reintroduces s2; removed.
25. Reverse the upper pitch comparison and exchange its branches: score780, produces beqz instead of target bnez, still no reload. Removed.
At least25 attempts now completed. Best ordinary scalar candidate remains585, framecorrect, missing final global pitch reload; this function is not matched and work must continue.

26. Final pitch assignment expressed as an angle correction (`angle += desired - angle`): score505 and target instruction count, but generates addu/subu in place of the target lui/lh. Removed because it does not fix the actual instructions.
27. Removed the unnecessary intermediate s32 casts from floating coordinate conversions, leaving direct s16 casts: unchanged585. Retained as ordinary source simplification.
28. Explicit s32 conversion of the desired pitch in the comparisons: unchanged585; removed.
29. Cached unsigned word subtraction into signed sp50 before comparisons: unchanged585; removed.
30. Ternary upper pitch assignment inside the outer else: unchanged585; restored direct if/else.
31. Equivalent inclusive angle bounds (`<= -0x200`, `> 0x1FF`): unchanged585; restored original bounds.
Read nearest matched earlier func_802E0104_324254; it clears parent/alien flags and provides no terrain math reference. The prior note saying this remains unread is superseded.
Current source is best585 with simplified coordinate casts, ordinary direct pitch assignment, scalar globals and no address-taking tricks. Still missing the final desired-pitch global reload; full ROM FAILED. Eleven later functions have matched; continue this twelfth function before moving earlier.

32. Reused sp54 to cache the current pitch and used it for both update branches: score610; still missing desired-pitch reload. Removed.
33. Desired pitch copied to sp50 followed by in-place subtraction of current angle: unchanged585; removed.
34. Assigned final roll directly to D_802E7C3A and read that global for roll adjustment: score1135, introduces an unwanted global base and reload after pitch stores. Removed. This supports retaining a local copy of the roll result.
35. Chained `sp44 = D_802E7C3A = atan(...)`: score4810, halfword conversion changes register allocation and instructions. Removed.
36. Complete pitch clamp as nested conditional assignment: score980; removed.
37. New dedicated s32 pitchDelta local: score943, frame0x78 and still missing the reload. Removed.
38. Reversed height addition operands to `(sp3C < sp40 ? sp40 : sp3C) + D_802566D8[sp6F].unk0`: score575, fixes target addu operand order at0x325330 without changing logic. Retained. Backup tools/comet-terrain-height-order-575.txt and current.txt.
Current best ordinary C score575; full ROM FAILED. Remaining primary issue remains missing final desired-pitch reload; do not move to earlier unmatched functions until this matches.

39. Separate height assignment followed by `unk2 += typeHeight`: score1667; extra work rather than folding to the single target store. Removed.
40. Scoped s32 pitchDelta initialized immediately before the final pitch if/else: score933, adds stack space and still does not restore the desired-pitch reload. Removed.
Retained score575 candidate restored after these trials. Verified caller search finds only dispatcher func_802E2B78_326CC8, which ignores the return value; existing void/u8 prototype remains supported. No return-type change was made.

41. Direct assignments for pitch +/-0x200 instead of compound updates: unchanged575; restored concise compound form.
42. Explicit s16 casts on all final pitch stores: unchanged575; removed redundant casts.
43. Pattern search at0x325370 count2 found matched funcs, including func_8009490C_A38BC and func_802D7FC0_190AD0, which access the terrain record using alienTypes[index].unk40. The height alias address0x802566D8 equals alienTypes base0x80256680 plus0x58. Existing AlienType.unk58 is s16 ground/body height, recordsize0x68. Replaced all four D_802566D8 accesses in comet C with alienTypes[index].unk58, removed redundant Unk802566D8 and its extern. Build successful through verification, score575 unchanged. Retained proper established struct access; old D_802566D8 backups require updating if restored. New baseline tools/comet-terrain-alien-type-575.txt and current.txt.
44. Reused sp4C rather than sp44 for the final roll result: unchanged575; restored baseline.
45. Defined s16 D_802E7C38/D_802E7C3A in the C file to test defined versus extern global optimization: unchanged575. Removed provisional definitions; existing absolute BSS mapping restored.
46. Refreshed sp6A from the current instance pitch and used that halfword for both update branches: score1470; removed.
47. Reused sp40 and sp3C for final pitch/roll differences: score590, no recovery of missing pitch reload; removed.
Current retained source uses established AlienType.unk58, direct scalar globals, ordinary field compound assignments, local roll result and direct coordinate casts. Score575, not matched; full ROM FAILED. Do not advance to earlier functions yet.

48. Separate out-of-range updates and in-range snapping, with cached word delta: score1335. Adds two range checks and still retains global desired pitch instead of reloading. Removed.
49. Pitch/roll scratch globals represented as two signed-halfword struct members: score2130 (same issues as the previous two-element array after height operand correction). Creates shared-base addressing, so scalar declarations restored and provisional struct removed.
50. Evaluate pitch delta by negating current angle into sp50 then adding desired global: score775, additional arithmetic; removed.
51. Dedicated s16 desired-pitch snapshot used only in the two comparisons, with direct global final assignment: score1056. Produces unwanted sll/sra normalization and frame0x78, still no final reload. Removed.
52. Compact unbraced pitch if/else statements following the repository hint about line layout: unchanged575. Restored braced baseline.
53. s32 instead of s16 trig temporary: score4890; removed. Target supports the original narrow temporary.
54. u16 saved yaw with direct trig arguments: score2726; removed. Keep signed saved angle plus unsigned argument conversion.
Pattern search at0x325340 count4 found no matching reference. Best575 retained; all provisional type/declaration changes removed. Missing final desired-pitch reload remains unresolved, full goal stays active.

55. Explicit s32 casts on both subtraction operands in final pitch comparisons: unchanged575. Removed redundant casts. Reference Ucode enum confirms Jdt is single-word integer, Idt double-word integer, and Hdt is a heap-only address (not a halfword type); do not confuse those names with C short/int/long.
56. Swap sp54/sp50 declarations: score607. Swaps their stack slots0x54/0x50 but leaves longitudinal registers reversed. Removed; declaration order is not the source of that register mismatch.
57. First side fallback expressed as initial assignment followed by conditional clamp, leaving the second explicit if/else: score4935; removed. Target first fallback has explicit branch/move alternatives, consistent with baseline.
58. Compute second longitudinal sample into sp4C_2, interpolate, then copy into sp54 before first clamp: score830. Does not fix longitudinal registers and removes/relocates target copy; removed.
59. Reuse sp4C/sp4C_2 for first-pass samples, then preserve clamped values in sp50/sp54 before pitch atan call: score1781. Removed; baseline sample lifetimes remain closer.
Best ordinary scalar candidate575 restored. All59 attempts documented. Still unresolved final global pitch reload; function and full-file goal incomplete.

60. Cache pitch delta before the terrain-height assignment: score2703. Retains desired global value, adds field reloads and moves comparison/calculation too early. Removed. This supports keeping the pitch calculation after height update.
61. Removed the outer f32 casts from all eight offset assignments; assignment to f32 already performs that conversion. Assembly score unchanged575, retained as ordinary source simplification. Necessary inner integer-to-f32-to-f64 conversions remain. New baseline tools/comet-terrain-simple-float-575.txt and current.txt; prefer these for further trials.
Global pitch remains declared plain scalar s16; no volatile, alias symbols, scalar address tricks, provisional struct/global definitions, or dummy arithmetic introduced. Current verified full ROM FAILED and terrain score575; still not matched.

62. Two-axis for loop with conditional desired value (global pitch versus local roll), using a position/orientation array union view of the existing AlienInstance prefix: score9309. IDO leaves the loop back edge (bne) in generated code and adds registers/frame space; removed.
63. Simpler two-axis loop over s16 desired-angle array, removing per-axis ternary: score9472; also fails to match target straight-line adjustments. Removed. Provisional orientation union view and global array declaration restored to their original definitions. No compiler flags changed.
These experiments reject the small-unrolled-loop hypothesis under the required compiler settings. Retained source remains the score575 simple-float baseline, with explicit pitch/roll if chains.

64. Longitudinal interpolation as sequential sp40 multiplication/subtraction/division: unchanged575; reverted to the single formula.
65. First-pass sample clamps changed to `sp54 = sp54 < sp44 ? sp44 : sp54; sp50 = sp50 < sp44 ? sp44 : sp50;`: score540, fixes longitudinal sample register swap (first sample a3, second sample a2). Retained; backup tools/comet-terrain-max-clamps-540.txt. Function length/frame and structural mismatch unchanged: final pitch else still lacks lui/lh.
66. Reuse sp54 for cached final pitch difference on improved baseline: unchanged540; reverted unnecessary temporary.
67. Side fallback clamps also expressed as maximum ternaries: unchanged540. Retained for consistent ordinary source. This supersedes the earlier inference that the target's explicit branches required explicit C if/else; the max ternaries generate the same side fallback assembly. Backup tools/comet-terrain-all-max-540.txt and current.txt.
Current verified best score540, full ROM FAILED. Source uses max expressions, proper AlienType.unk58, scalar scratch globals, local roll value, and simplified float casts. Continue this function before earlier ones.

68. Terrain function returns int sp44 explicitly, with consistent prototypes in both headers: score4735, substantial allocation changes. Removed; void signature restored.
69. Angle helper func_80003824_4424 changed consistently from s16 to int in its definition and prototype, retaining signed-short value conversions in its body: terrain score unchanged540. Removed experimental API change; helper definition/prototype restored to s16.
70. TerrainAngles struct pitch member used for pitch accesses, while existing separate D_802E7C3A scalar still receives the roll store: unchanged540. Removed provisional aggregate declaration; no advantage over scalar.
71. Volatile pitch member in the nonvolatile TerrainAngles aggregate, with a cached word delta: score2430. Still adds wrong address computations; rejected and struct/type changes removed.
72. Global stored pitch u16 with explicit s16 conversions in comparisons: score660, worse than signed baseline. Removed.
73. Also explicitly convert that unsigned pitch on final assignment: unchanged660. Removed; plain signed s16 remains the supported baseline.
Current retained source is all-max-540 with void/u8 terrain prototype and original s16 angle-helper signature, scalar signed pitch/roll globals, and no provisional aliases/types/qualifiers. Full-file goal remains active; final pitch global reload still unresolved.

74. Negated reversed subtraction in final pitch comparisons: score495 but introduces extra negu and wrong subtraction operand order; rejected despite lower numeric score because structural instructions worsen.
75. Qualify both desired-pitch reads as volatile through pointer casts, leaving global stores ordinary: score1295, produces the second read but shared-base addiu and incorrect scheduling; rejected.
76. Qualify only the final desired-pitch read after a normal cached difference: unchanged1295; rejected.
User requested restoring best version and stopping. Restored tools/comet-terrain-all-max-540.txt, the structurally closest ordinary C candidate (score540), preserving the eleven previously matched functions. No further matching work is authorized under the revised goal.
