# Comet six-joint animation investigation

Current function: `func_802E0588_3246D8`, next `func_802E0B64_324CB4`. Continue this function before earlier NON_MATCHING functions. The terrain function matched in the preceding step (full ROM OK, diff 0) using the split read alias described in comet-terrain-alignment-in-progress.md. Its source remains enabled.

The target updates six linked joints. Existing Unk8014DD50 has signed byte child/sibling indices and unsigned angle union members. Use array/struct indexing throughout. The caller in matched func_802E2B78 ignores the return, supporting void/u8; functions.us.h already declared this signature. Confirmed jal in asm/nonmatchings/overlay_level/comet/318E20/func_802E2B78_326CC8.s at ROM 0x326E08, passing arg0 through lbu at sp+0x43 and ignoring the return.

Historical early candidate (attempt26): `tools/comet-joint-current.txt`, score 6032, frame 0x58 versus target 0x60, full ROM FAILED. Source uses six s32 joint indices, scalar float rotation/three offsets, s16 yaw delta, s32 radius/saved yaw, f64 speed/turn, and natural unsigned-angle compound updates. Keep the seven existing named f64 constants: inlining them merges identical divisors across calculations and changes lifetimes. No dummy logic, compiler flag changes, assembly modifications, or permuter used.

Current working candidate (through attempt322): tools/comet-joint-stack-only.txt, score96. All375 instructions have the target order, registers, constants and frame0x60. Only four stack operands differ: fifth-pointer store/reload currentspC versus targetsp30, first-offset float store/reload currentsp14 versus targetsp8. Yawsp2C, radiussp38 and deltasp3E now match. Source uses an indirect primary-rotation store, first-offset union with one volatile read copied back before the second angle update, and an anonymous second-offset expression. Following terrain score0; full ROMFAILED. Prior compound checkpoint231 remains saved tools/comet-joint-compound-turn-one.txt (2478) and clean152 is saved tools/comet-joint-mixed-arrays-clean.txt (340). All later sections are chronological history.

26 manual build/comparison attempts completed:

1. Enable existing C and fix constant-array reads to [0], align definition with existing u8 prototype: 19283.
2. Remove redundant manual unsigned-conversion branches, use u32 input temporaries and unsigned angle members, remove unnecessary arg0 mask: 11435.
3. Natural scalar joint indices and simplified formulas, inline constants: 6158. CSE merges equal divisors, so target distinct constant loads are missing.
4. Restore named constant arrays: 9224.
5. Reorder locals and name the 65536 scale: 9272; scale still lives in f18, not target f0.
6. Saved speed/turn as f32: 10000; worsens conversions/registers.
7. Float locals first and named scale assigned before speed: 9398.
8. Natural unsigned angle compound assignments: 6368. Automatically generates target unsigned input and output conversion sequences without redundant manual branches.
9. Promote joint indices from s16 to s32: 6178.
10. First offset as a one-element array: unchanged 6178; compiler scalarizes it, no desired spill.
11. Compute rotation before separately saving speed: 6123; changes anonymous conversion to f12, not target f2.
12. Named joint table pointer: 6324, frame 0x60 but base remains a2 rather than s0.
13. Inline saved speed conversions: 9247; anonymous double now f2 but rotation f0, scale f18. Later field reads affect alias lifetimes.
14. Inline rotation and turn arithmetic too: 21933; shared field reads no longer survive joint stores as desired.
15. Reuse final offset float for initial speed conversion: 6375, extra f20 save; initial float uses f0 rather than target f18.
16. Scale as (f64)65536.0f: unchanged 6375; removed.
17. Explicit precision casts, s32 indices, no reused float: 6032. Retained best ordinary candidate.
18. Named alien instance pointer and s16 indices: 6202; no desired base/register improvement.
19. Constant scale initialized in local declaration: 6264, wrong scale register unchanged.
20. Cached integer velocity with shared float expressions inlined: 8795; pushes speed arithmetic later and adds integer move.
21. Signed-byte joint indices with restored saved float intermediates: 6210; stack shrinks but target index registers remain wrong.
22. Scale-first multiplication operands: 6215; does not fix scale register.
23. Compute turn before rotation: 7760; worsens scheduling.
24. Explicit angle-first float additions instead of compound stores: 9240; removed.
25. Restore s32 indices and compound stores, arithmetic in extra lexical block: 6048; block gives no useful ordering change.
26. Remove extra block and restore best declaration order: 6032, verified retained candidate.

Target important lifetimes/layout: scale double f0, normalized speed double f2, turn double f12, rotation float f14, second offset f16, third offset f18. First offset is spilled to sp+8 and reloaded before the second joint. Saved table base s0 at sp+4. Target first joint index v1, sibling indices a1/a3/t1/t3/t5, pointers a2/t0/t2/t4, fifth pointer spills at sp+0x30, final pointer generated later in v0. Saved yaw sp+0x2C, radius sp+0x38, signed short delta sp+0x3E. Current base a2, instance v1, scale f18, speed f0, rotation f2, first offset f14, second f16; no first-offset spill.

Search-AsmPattern found no references for 0x3248C0 count8, 0x324738 count7, or 0x324808 count7. Nearest earlier matched function func_802E0104 was read; following terrain function is now matched and was read in full. More work remains; do not treat 25 attempts as completion.

## Further constant and lifetime investigation

27. Multiply by integer 65536 instead of double 65536.0: unchanged6032; reverted.
28. Saved f64 speed as a one-element array: unchanged6032; scalarized, reverted.
29. Separate named root joint index:7100, shifts root load into a3; reverted.
30. Initial speed float converted through first-offset local:6247; reverted.
31. Only pi is inline, other constants remain arrays:9240; reverted.
32. All constants inline, redundant double casts on repeated divisors:5981. Fixes integer table base/initial joint register sequence, but merges equal divisor constants, saves f20 for scale, and loses target separate loads/spill. Rejected despite smaller numeric score.
33. Seven named constants are scalar const f64 objects rather than arrays:5397. Structurally closer scheduling in places, but IDO places scalar constants at the beginning of object rodata (first divisor at0x7A20 instead of expected0x7BA0); base and float registers still wrong. Rejected; scalar definitions and header changes removed.
34. All constants inline, L suffix for one divisor in each identical pair:5981, same assembly as redundant double casts. On this compiler long double does not prevent constant deduplication; reverted.
35. Circumferences expressed via reused integer radius100/64/43 times2*pi:9527, worse scheduling. The double bit patterns of these products exactly equal existing628.3185308/402.123859712/270.176968244 literals. Rejected; mathematical interpretation confirmed.
36. Function-local static const arrays for all seven constants:unchanged6032. Array ownership does not alter instruction generation; reverted.
37. Mixed inline literals and local arrays for repeated divisor values:10234; rejected.
38. Compute all three float offsets before any joint angle updates:8614, extra f20 save and frame0x68. Does not create desired first-offset-only spill; rejected.
39. Cached raw integer velocity, anonymous shared rotation/turn arithmetic and first-offset assignment nested in first angle update:8768. Loads speed and computes division too late; rejected.
40. Named pointers for first five joints and an early saved index for last joint, delaying last pointer calculation:8439. Does not restore target base/register allocation; rejected.
41. Each paired float offset scoped in its own C89 block:6024. Stack changes slightly, but missing spill and core allocation/scheduling remain; rejected.
42. Restored ordinary6032 baseline from tools/comet-joint-current.txt, rebuilt and rechecked:6032, full ROM FAILED.

All provisional scalar constant/header definitions, local static constants, long-double literals, array temporaries, extra blocks, root index, radius constants, and pointer candidates were removed. Seven constant arrays remain as originally declared. The previous target function's successful terrain source/read alias is preserved. Continue joint matching; remaining NON_MATCHING wrappers in this C file:45, plus this enabled unmatched function.

## Literal product breakthrough and remaining spill

43. Move final offset calculation before fourth angle update:7887; rejected.
44. Group rotation/offset locals into a local struct:6032, scalarized; rejected.
45. Integer circumferenceScale variable assigned200/128/86 before multiplication by pi:7978. Runtime double multiplies remain; rejected.
46. Named f32 normalized speed with external array constants:6306; rejected.
47. Restore ordinary baseline, replace speed divisors with literal products200.0*pi,128.0*pi,86.0*pi; keep turn divisors as their decimal literals, inline pi, remove seven placeholder arrays:2611. Significant retained improvement. Initial integer register layout and first71 instruction structure match. Distinct generated constants survive unlike using identical decimal literals everywhere.
48. All three offsets in a float array:4100, initial arithmetic scheduling changes; rejected.
49. Initialize normalized speed through offset2 then convert to named f64 speed:5188; rejected.
50. f32 speed with literal products:4490; initial conversion uses desired f18, but float allocation and frame worsen; rejected.
51. Also make turn f32:4482, still wrong spill/frame; rejected.
52. Float declarations ordered speed,turn,rotation,offset1,offset2,offset0:4450; rejected.
53. Reuse f32 speed as final offset after saving third rotation:6061; rejected.
54. Scope only first offset in a block with literal products:2587. Slight stack scoring improvement, but same missing first-offset spill; retain ordinary scalar product version for clarity.
55. First offset alone in one-element array:4100; rejected.
56. Separate named normalized f32 before f64 speed, declared before rotation:2554. Adds an unwanted store of normalized speed atsp+0x44; rejected despite lower score.
57. Move normalized declaration after f64 turn:2556; unwanted store remains; rejected.
58. Restore literal-product candidate from tools/comet-joint-products.txt; remove now-unused seven external constant declarations, rebuild/recheck:2611. Full ROM FAILED.

CURRENT authoritative candidate has scalar f64 speed and turn, scalar f32 rotation/offset0/offset1/offset2, and no seven constant arrays or their extern declarations. tools/comet-joint-products.txt contains this complete function; tools/comet-joint-current.txt contains the old6032 array-constant baseline (restoring it requires restoring the seven definitions and externs).

Remaining current versus target: frame0x58 versus0x60; target first offset spills atsp+8 and reloads before second update, current offset0 staysf18. Target initial normalized conversionf18, current scratchf6. Target later rotationf14 matches current. Scratch floating registers rotate differently; target fifth pointer spillsp+0x30 versus currentsp+8. Constants are generated separately, but addresses shift with function length. Do not mistake address shifts for merged constants: current first divisor7B90, pi7B98, first turn divisor7BA0 correspond to target7BA0/7BA8/7BB0. Current function ends8 bytes early. Continue this function before proceeding to earlier wrappers.

59. f64 speed, f32 turn with products:2603; minor scoring change, no desired spill. Rejected.
60. Express turn denominators as100/64/43 times(2*pi) while speed uses200/128/86*pi:5981; both expression forms merge constants. Rejected. Retain decimal turn denominators.
61. Restore ordinary literal-product2611 candidate; rebuilt and checked again. Goal remains active and joint function remains unmatched.

## Anonymous expression and copy storage tests

62. Inline first offset expression in both angle updates, remove offset0 local:2635; no spill, rejected.
63. Inline all three offset expressions and remove their locals:2643; no spill, rejected. Saved diagnostic function tools/comet-joint-anonymous-offsets.txt.
64. f32 speed and turn with anonymous offsets:4448; rejected.
65. Also inline repeated rotation expression:4456; rejected.
66. Nest first offset assignment in first angle update:2553; frame0x60 but still keeps offset0f18 and lacks store/reload. Rejected.
67. Compute all three offsets before first update with literal-product candidate:2611, unchanged assembly; rejected as an unnecessary source ordering change.
68. Named middle/last rotations computed before first angle update:2593, no spill; rejected.
69. Volatile first offset declared last, nested assignment in first update:4541. Creates store/reload but changes expression/constant order and uses wrong registers. Rejected.
70. Move main rotation assignment immediately after normalized speed:2553, no first-offset spill; rejected.
71. f32 speed, f64 turn, anonymous first offset, named later offsets:4506; rejected.
72. Explicit angle assignments with (f32)(u32) field conversion and explicit u32 result conversion:2611, identical to compound stores; rejected as unnecessary casts.
73. Reinspect earlier offset2 reuse test49 in full: normalized float storesp+0x30, double speed storesp+0x18, rotation storesp+0x3C, scale becomesf12. Clearly wrong despite superficially plausible reuse hypothesis. Rejected again.
74. Initialize normalized speed through rotation then convert to f64 speed before overwriting rotation:4662; rejected.
75. Named f64 scale assigned65536.0, shared by six products:2561; no spill, rejected.
76. Named table base pointer with product candidate:2627, no improvement; rejected.
77. Separate single-use firstOffset and saved offset0 float copy:2627; optimizer keeps value in register, rejected.
78. Saved offset0 copy volatile, first update reads firstOffset:4609, wrong ordering; rejected.
79. Shared f32 angle local reused for six unsigned angle conversions:8895; rejected.
80. Shared u32 angle local loaded then assigned through float sums for all six joints:4336; rejected.
81. Restore clean ordinary product2611 candidate from tools/comet-joint-products.txt; rebuild and compare again.

New supporting evidence: target double bits at32BCF0..32BD20 were read directly from baserom.us.z64 and compared with generated circumference/pi constants. Bits match; product expressions do not introduce a hidden arithmetic constant mismatch. The volatile diagnostic rearranged first circumference and pi, which was visible in the raw bytes as well as disassembly; it was removed.

Search-AsmPattern at324734 count4 returned several nominally nonmatching functions and the already-matched terrain function, but no new matching source reference for the spill. At324814 count4 no matches. Relevant notes read: ugen-temps-stack-register-allocation, uopt-temps-stack-layout, float-register-allocation-expression-order, float-register-allocation-statement-order, float-literal-cast-prevents-double-constant-dedup, stack-var-order-first-float-highest-sp-offset, unsigned-halfword-angle-store-forwarding. Anonymous CSE versus named float storage alone does not explain the spill. All provisional volatile, angle, normalized, copy, pointer, scale, extra rotation, and anonymous-expression candidates removed.

## Precision, divisor locality, and initial float lifetime

82. f64 first offset with float-rounded assignment and explicit f32 operands:2353. Adds cvt.d.s and cvt.s.d round trip, lacks desired store/reload; rejected despite lower score.
83. Compute first rotation from normalized field expression before assigning shared f64 speed with same normalized expression:4767. GVN expression-order hint does not yield target; rejected.
84. Reinspect clean f32-speed candidate50 in full. Initial instructions through main rotation conversion structurally and physically match (aside from frame/spill addresses), including f18 normalized float and f2 promoted double. Main rotation isf16 rather thanf14, first offsetf14 rather than spilledf4, frame0x70. This is not just the first scratch register needing a rename. Rejected again.
85. f32 speed overwritten as final turn offset, reuse dead first offset to hold third speed rotation:6077. Main rotation becomesf12 and is storedsp+0x4C, turnf14, first offsetf16. Wrong float lifetimes; rejected.
86. Address-taken scalar first offset accessed through named f32 pointer:4116. Like array candidates, changes expression scheduling; no useful matching spill. Rejected.
87. Only first circumference remains an external const double array, all other constants retain product/literal form:2611, same assembly as clean product candidate; rejected as needless placeholder.
88. First circumference and pi both external const double arrays:8837; pi load form seriously changes scheduling. Rejected. Both definitions and extern declarations removed.
89. Reused f64 circumference local assigned folded200/128/86*pi products before each speed division:2561; no desired spill, rejected.
90. Named fifth-joint pointer alone, declared between radius and yaw and used for its angle plus last index lookup:4947; rejected.
91. f32 speed (f64 turn unchanged), declarations speed/rotation/offset1/offset2/offset0 before delta/radius/yaw:4474; no fix, rejected.
92. Restore authoritative clean2611 product candidate and rebuild/recheck. Full ROM stillFAILED. No new function is matched in these tests.

The header was rewritten during temporary constant tests, adding trailing blank lines after removing externs; no provisional constant declarations remain. The separate terrain read alias and matched terrain body remain intact. Continue joint matching before processing earlier functions.

## Cached integer conversion, signed stores, and remaining expression forms

93. Cached s32 speed already divided by32, repeat double-of-float conversion inside all three speed divisions:5407; rejected.
94. Signed angle field stores with explicit u32 conversion, unsigned halfword reads:2611, identical to compound unsigned field stores. Rejected as unnecessary casts.
95. f32 turn with the f32 speed/final-offset and first-offset/last-rotation reuse from85:6043; wrong main rotation stores remain, rejected.
96. Separate firstOffset calculation and savedOffset[1] copy, first update reads scalar and second reads array:6820; rejected.
97. Reuse offset1 for final offset2 calculation, remove offset2 declaration:2635; no required spill, rejected.
98. Nested f64 speed assignment inside first rotation calculation at function start:2553. Avoids duplicated normalized field expression in83, but still lacks first offset store/reload. Rejected.
99. f32 speed, f64 turn, anonymous repeated main rotation formula, named offset locals:4362; rejected.
100. Reverse equivalent denominator forms: raw decimal speed circumferences, folded product turn circumferences:2611, identical assembly. Product/literal forms preserve separate constants in either direction, but do not determine the spill.
101. Cached raw s16 speed, repeat signed division32 and double-of-float conversion within three speed formulas:8848; rejected.
102. Restore2611 product candidate from tools/comet-joint-products.txt, rebuild and verify score. Full ROMFAILED; goal incomplete.

Reference audit: all remaining candidates returned for324734 count4 were checked at source definitions and are NON_MATCHING (except previously matched terrain). No usable new reference. Shorter search32481C count2 found8 matching references. Read matched functions8000E3DC_EFDC,8009EC90_ADC40,800FA690_109640,80135380_144330. Their float stores are named global/struct fields, output parameters, or values surviving calls, rather than this leaf-function spill. The full first-offset sequence search324814 count4 had no match. Do not use the wrapped functions as source evidence.

All integer speed caches, signed stores, shared float offsets, nested assignments, anonymous rotation, array copies, and reversed divisor-form candidates were removed. Authoritative C remains the ordinary scalar product2611 candidate with scalar f64 speed/turn and scalar f32 rotation/three offsets.

## Const locals, basic-block boundaries, and anonymous input conversion

103. const f32 normalized initializer, then named f64 speed assignment:2556. Same unwanted normalized-float store as57; rejected.
104. Reverse operands of final float angle addition, explicit u32 cast/store:2611, identical assembly; rejected as unnecessary casts.
105. if(1) around first offset assignment only:8459. Strongly changes FP allocation and schedule; adds delta reload, frame0x78. Rejected.
106. if(1) around first two angle updates only, first offset computed outside:4091, frame0x68 and initial scheduling changes. Rejected.
107. if(1) around whole body after declarations:2671; no required spill, rejected.
108. const AlienInstance pointer, no named speed double, repeat normalized field conversion in three speed formulas; main rotation assigned immediately after pointer initialization:2649. No speed-field reloads through joint writes; normalized floatf6, promoted speedf2, main rotationf14, first offsetf16, frame0x58. Rejected because spill remains absent.
109. Same pointer form with named f32 speed cache declared after turn:2562. Adds normalized-float store atsp+0x1C, main rotationf18, first offsetf14. Rejected.
110. Clean f32-speed candidate with turn calculation before main rotation:4346. Initial physical conversion still matches, but turn becomesf2 and rotationf16; rejected.
111. Precompute all three offsets before if(1) block containing all six angle updates:7045; rejected.
112. First offset in one-element array declared last, nested assignment inside first angle addition, second update reads array:6828; rejected.
113. Shared u32 result temporary after each float-to-unsigned conversion, then write halfword:4321; rejected. This differs from80, where temporary held input angle.
114. Restore ordinary2611 candidate from tools/comet-joint-products.txt, rebuild and recheck; ROMFAILED. Function and overall goal remain incomplete.

All const normalized locals, explicit angle conversion/result temps, basic-block wrappers, instance pointers, named float speed caches, array storage, and reordered turn candidates were removed. Body remains the retained ordinary scalar product candidate. Basic-block placement demonstrably changes IDO allocation, but these placements do not reproduce the target spill. Repeated conversion through a const instance pointer can cache the input without a named speed double; however it still colors the first offset into a register, rather than the target stack slot.

## Diagnostic listing investigation and large expression tests

Compiler diagnostics investigation (not a C-source attempt): temporarily added target-specific CFLAGS -Wo,-zdbug,-l,tools/comet-uopt-list.txt to Makefile, rebuilt only through tools/make.ps1. uopt warns of an unrecognized option, emits pass timings, then crashes at final statistics formatting with libc_impl.c:1022 wrapper_ecvt Assertion0. Listing includes complete optimization/reemission timings for target but no register graph. Makefile was restored byte-for-byte from a temporary backup; normal make/diff again verifies retained2611. No compiler settings remain changed. Avoid relying on this unsupported listing mode for further matching. Original diagnostic string data in recompiled tools is readable by reversing each four-byte group before ASCII decoding.

115. Remove named f64 turn, inline double-of-float turn expression in each of three offset calculations, keep named speed/rotation/offsets:2651; rejected.
116. All floating expressions inline, const AlienInstance pointer, cached integer radius/delta/yaw:11016. Inspect assembly: speed field is read at32477C,324B10,324C28. Main rotation repeated input reads cross joint writes; const pointer does not prevent invalidation. Rejected.
117. Fully inline floating expressions from116, cache raw speed into s32 at function start:8722; rejected. Preventing speed-field rereads alone does not restore allocation.
118. register f32 normalized local declared last, then assign named f64 speed from it:2556. Same unwanted normalized store as57/103; register hint has no effect here. Rejected.
119. Restore ordinary2611 product candidate and rebuild/recheck. Full ROMFAILED; matching remains incomplete.

All diagnostic build options and provisional expression/normalization candidates removed. No new functions matched in this investigation. Continue current joint function before earlier wrappers. The persistent obstacle is the target's spilled first offset plus initial scratch conversion register, rather than constant value mismatch.

## Comma statements and promotion-class tests

120. Comma sequence normalized double speed assignment and first joint index lookup:2611, identical assembly; rejected.
121. Comma sequence main rotation, turn, first offset, first angle update:2611, identical assembly; rejected.
122. Named normalized f32 plus f64 speed copy used for first rotation, direct normalized float promotions used for second/third speed rotations:4586; rejected.
123. Revalidated float offsets[3] candidate48 at actual store/reload instructions, not just total score. It emits no swc1/lwc1 for any offsets; all array elements promoted to registers. First offsetf18, secondf16, thirdf18, initial FP scheduling changes. It does not fix the missing spill; rejected again.
124. Named f64 working value copied from speed, compound /=200*pi and *=65536, then cast to main rotation:2561. No new float-rounding steps, but no target first-offset spill; rejected.
125. Restore ordinary2611 product candidate, rebuild and compare. Full ROMFAILED. No new function matched.

The comma hints do not alter this candidate's instructions. The earlier array score was explicitly audited: its failure is not merely extra allocation differences hiding a correct first-offset spill. No comma expressions, array-offsets, mixed speed caches, or double working variables remain in authoritative C. Continue the joint function; reverse-order scope unchanged.

## Normalized motion array and first-offset spill

126. f64 motion[2] replaces separate speed/turn doubles:2508; rejected.
127. f32 motion[2] stores normalized speed and turn; formulas promote each to double:686, retained. This finally emits the target first-offset swc1/lwc1 sequence. Frame0x50, rotation copied f14 to f18, extra normalized-turn store, first-offset spillsp30.
128. Inline/repeat rotation formulas in127:5795; rejected.
129. Reverse motion element indices:686, unchanged except local store slot; rejected as unnecessary.
130. f32 motion[1] speed plus scalar f64 turn:5810; rejected.
131. Copy normalized turn to scalar double, overwrite array turn cell with first offset:2988; introduces saved FP register; rejected.
132. motion[3] with rotation in element2:4479; rejected.
133. Vec3f x/y for normalized speed/turn:4490; rejected. Struct fields scalarize differently from array elements.
134. Array speed and rotation, scalar f64 turn:2612; loses first-offset spill; rejected.
135. motion[5], anonymous first-offset expression, named fifth pointer, padding:4864; rejected.
136. Only increase motion length2 to5:620. Correct frame0x60, yawsp2C; retain as intermediate. Extra move/store remain.
137. motion[5] speed with scalar f32 turn:5882; rejected.
138. Cache speed double, overwrite motion[0] with rotation:5233; rejected.
139. Initialize rotation with normalized speed, then copy to motion[0]:620, identical; rejected as unnecessary.
140. Initialize first offset with normalized speed, then copy to motion[0]:1883; rejected.
141. Cache speed double, overwrite motion[0] with turn:6799; rejected.
142. Declare rotation after motion[5]:628; rejected.
143. Remove offset0 local and repeat its expression with motion[5]:5978; rejected; spill is not retained in the useful allocation.
144. Move offset0 declaration after motion[5]:540, retained. First-offset spill/reload nowsp18 rather than40; frame60. Still two extra instructions (mov.s f18,f14 and swc1 normalized turn), initial normalized floatf16 vs target18. Other FP scratch sequencing and all integer register choices match target until shifts caused by the extras. Fifth pointer spillspC vs target30, yaw30 vs2C, radius34 vs38, delta3A vs3E. Saved in tools/comet-joint-motion-last-offset.txt.
145. Named fifthJoint pointer before yaw, used for sibling and fifth angle:3918. Removes both extra float instructions and rotation staysf14, but moves yaw read/store, eliminates target pointer spill and changes scratch schedule. First-offset spillspC. Saved for investigation in tools/comet-joint-motion-fifth-pointer.txt.
146. Same pointer used only for sibling lookup; fifth angle stays array indexed:2813. Saved in tools/comet-joint-motion-fifth-lookup.txt; rejected for overall mismatch.
147. Restore144 (score540) and rebuild/compare. Full ROM remains FAILED; goal incomplete.

Array-backed normalized values change allocation classes enough to produce a first-offset spill without volatile storage. This is different from an array of offsets (48/123), which did not spill. Named-pointer form145 independently removes the two extra instructions, making it a useful structural candidate despite a worse overall score. Do not discard it based only on score. No pointer arithmetic, extra const definitions, or compiler flags were added. The motion array length5 is a provisional layout experiment, not an established source reconstruction.
## Separate normalized arrays: remove the extra turn store

148. Unused fifthJoint declaration between radius and yaw in144:532. Only stack offsets change; extra move/store remain. Rejected as padding-only.
149. Named AlienInstance pointer in144:6010; rejected.
150. Nest motion[1] assignment inside first-offset division:7332; rejected.
151. Split motion[5] into f32 speed[1] and f32 turn[4]:540, identical to144; rejected as no improvement.
152. Split into f32 speed[1] and f64 turn[2]:340, retained. Removes extra normalized-turn swc1 while keeping first-offset spill/reload. Correct frame60, all arithmetic order and scratch f4/f6/f8/f10 sequencing. Initial normalized speedf16 vs target18; extra mov.s f18,f14 serves first two angle updates only; later rotation references alreadyf14. Fifth pointer spilledsp8 vs target30, first offsetsp14 vs target8, yawsp30 vs target2C, radius34 vs38, delta3A vs3E. Saved tools/comet-joint-mixed-arrays.txt. One instruction longer than target.
153. f32 normalized[1], f64 speed[1], f64 turn[2]:374. Same remaining move, frame68; rejected.
154. Remove named rotation and repeat its formula in all rotation uses in152:5645; rejected, calculation order changes.
155. Replace rotation scalar with rotation[1] array:4335; rejected.
156. if(1) around speed initialization only:9510; rejected.
157. Scalar f32 speed plus f64 turn[2]:5646; rejected.
158. f64 speed[1] directly initialized through float cast, f64 turn[2]:2516; missing first-offset spill, rejected.
159. First two rotation references repeat formula, keep named rotation for later updates:5646; rejected.
160. Named firstJoint pointer for first sibling, radius and first angle:6047; rejected.
161. if(1) around main rotation assignment:9935; rejected.
162. Group rotation and offsets1/2 in angles[3], keep mixed speed/turn arrays:4488; rejected.
163. f64 speed[1] initialized through offset2 temporary, f64 turn[2]:385. Keeps spill, initial conversionf14, main rotationf16, copyf18; wrong allocation, rejected.
164. Same double arrays, initialize speed through offset0 temporary:1951; rejected.
165. Move offset2 declaration after offset0 in163:443; rejected.
166. Restore152 and rebuild/recheck. Full ROM FAILED; no additional function matched.

Pattern search target3247C4 count6 found no references. Separate f32 speed and f64 turn array storage removes the normalized-turn store produced by the all-float array. The stored turn value still rounds through float before promotion, so this is not a numerical behavior change. All-double arrays lose the desired first-offset spill; replacing arrays with scalar values is also not equivalent for allocation. Remaining mov.s is not used throughout the function: only the first two rotation users read the copied register; the fourth/sixth angles use f14 directly. This distinction is useful for the next register-class investigation. No if(1), named pointers, redundant normalized arrays or padding declarations remain in authoritative C; array turn[2] length is still a provisional stack-layout experiment.
## Rotation lifetime and the first two angle updates

167. Mixed-array152, main rotation declared f64 with explicit float reads:5162; rejected, adds conversions.
168. Main rotation const f32 initializer in nested lexical block after radius calculation:348. Same extra move, minor layout changes; rejected.
169. Explicit signed32 final casts on first two angle assignments:12315; rejected. These remove the required unsigned conversion paths; not a useful source reconstruction.
170. Cache speed as f64 normalized, overwrite speed[0] with base rotation, remove named rotation; double turn[2] remains:2905. Removes mov.s and target initial normalization/base-rotation registers are recovered. First 71 instructions have target structural order. First offset staysf16 (missing spill); second offsetf18 spills instead. Saved tools/comet-joint-reuse-speed-array.txt for further analysis.
171. Swap offset0/offset1 declaration positions in170:2905, unchanged assembly; rejected.
172. Inline second-offset formula at both uses in170, remove offset1 local:2012. No first-offset spill; no second spill. Saved tools/comet-joint-reuse-speed-inline-second.txt.
173. Make first offset volatile, nested assignment in first addition, based172:1842. Generates first-offset store/reload, exact instruction count; moves integer->float angle conversion before first division, emits first-offset conversionf18 and late volatile reload. Frame68; rejected. Volatile does not recover the target scheduling.
174. Cache normalized speed, keep rotation scalar, copy rotation into speed array used only by first two angle updates:4479; rejected.
175. Mixed-array152 plus fifthJoint pointer used for sibling/fifth angle:4844; rejected. Combining the previous pointer improvement with double turn storage does not retain the useful FP schedule.
176. Restore mixed-array152 (score340), rebuild and compare. Full ROM FAILED; goal incomplete.

The no-move array-reuse candidate170 is useful even though its score is worse: its initial float conversion uses targetf18 and main rotation uses targetf14. Its obstacle is specifically which offset spills, rather than an initial extra instruction. Declaration-order swap alone did not change that. Candidate172 removes the wrong second-offset spill by making that offset anonymous. All volatile storage, signed angle casts, nested blocks, and pointer experiments removed from authoritative source.
## Offset array reuse and cast cleanup

177. Remove redundant explicit float cast on rotation assignment in152:340, identical assembly. Retained as cleanup basis.
178. Cache normalized double speed, overwrite initial float speed array with third offset, keep named rotation:6074; rejected.
179. Cache normalized double speed, overwrite initial float speed array with first offset, keep named rotation:5223; rejected.
180. Candidate170 with offset0 changed to offset0[1]:2905, unchanged. Changing this scalar to an array does not move the spill from second to first offset.
181. Mixed152 with speed[2] holding normalized speed and base rotation, remove named rotation:4351; rejected.
182. Remove redundant casts on float speed/rotation/offset0/offset1/offset2 assignments and the redundant radius*2-to-double cast before multiplication by a double literal:340, identical assembly. Retained authoritative source, saved tools/comet-joint-mixed-arrays-clean.txt. Explicit float rounding on turn[0] (double destination) and inline speed rotations remains necessary and preserved. Full ROMFAILED.

The local float destination already supplies the required rounding; these redundant assignment casts do not influence this candidate's IDO code generation. This cleanup satisfies the source-quality requirement without sacrificing the current instruction match. Both first/third offset reuse were tested with the normalized speed cached as double, not by rereading its overwritten float cell. No new function matched. Continue investigating first-offset spill and the first-two-user rotation copy before moving to earlier wrappers.
## First-two-user expression and rotation definition placement

183. Explicit assignment of (rotation +/- offset0) + unsigned joint angle rather than compound +=, first two updates only:340, identical assembly; rejected as unnecessary rewrite.
184. f64 speed[1] initialized through offset1 float temporary, then later offset1 reused for second offset:370. Extra move remains; rejected.
185. if(1) around entire mixed-array body:400. Same extra move, changes frame/layout; rejected.
186. Compute main rotation first from inline normalized field cast, then assign speed[0] from same field expression, both before joint lookups:5356; rejected.
187. Nest initial speed[0] assignment in main rotation calculation after radius/lookup setup:8473; rejected.
188. Compute main rotation immediately after speed initialization, before joint lookups:446. Same extra mov.s f18,f14, frame70; rejected.
189. Keep rotation as unrounded f64, round at all four uses:5246; rejected. Unlike167, this does not first round rotation and promote back to double, but allocation/scheduling still diverges.
190. Restore cleaned152/182, rebuild and compare. Score340, full ROMFAILED; goal incomplete.

Re-read float expression/statement allocation notes before the placement tests. Neither explicit angle addition ordering nor moving the dependent rotation computation changes the first-two-user copy in a useful way. The nested speed assignment moves initial speed work too far in the instruction schedule. No explicit angle reassignments, reused offset1 initialization, if(1), inline repeated speed read, nested initialization or double rotation remain in authoritative source.
## Scalar identity, pointer identity and early-rounding checks

191. First two updates repeat main-rotation formula, assign named rotation again after them (initial assignment kept to preserve literal ordering):5661; rejected. Separate named live range does not recover target.
192. Candidate172 with firstOffset pointer to local offset0 used for assignment/first two reads:2012, identical to scalar. Address-taking alone is fully optimized here; rejected as unnecessary indirection.
193. Clean152 rotation as union { f32 value; s32 bits; } field:340, identical to scalar; rejected.
194. First folded divisor uses 200.0f * double PI:340, identical; rejected as unnecessary literal change.
195. Unrounded f64 rotation with float casts at four uses, plus early offset0=(f32)rotation assignment before turn/offset0 replacement:5246, identical to189. Dead early assignment does not preserve an early shared conversion; rejected.
196. Restore cleaned152/182 and rebuild/diff. Score340, full ROMFAILED; no additional match.

Read compiler-file inventory (only executable compiler stages available), and register/lifetime notes. No compiler invocation flags changed. The local union field is scalarized just like a plain float, and a pointer to the local first-offset value is optimized to the same assembly as its direct scalar use. The dead early-round assignment is eliminated, so it cannot change the float-conversion schedule. All duplicated assignments, pointers, union fields and literal variants removed from authoritative C.
## Offset sharing, joint index array and split quotient

197. Reuse one scalar offset0 for all three offsets in170:2204. Loses desired first spill and adds later mov.s between offset registers; rejected.
198. Reassign rotation inside first angle addition, retaining earlier initialization:5669; rejected.
199. Six s32 joint indices grouped in joints[6], based cleaned152:5777. Keeps integer lookup shape but adds normalized-speed swc1 and removes first-offset spill; rejected. Local-array classification changes floating storage as well as stack layout.
200. First two stores use signed unkA field with unsigned unkAUnsigned input, no explicit u32 output cast:12315; rejected. Removes required unsigned conversion sequences (unlike94, which retained unsigned output conversion).
201. Scalar f32 speed; raw f64 rotation and all offsets rounded only at their angle uses; f64 turn[2] unchanged:7947; rejected.
202. do/while(0) around entire cleaned body:400. Same as whole-body if(1) allocation; rejected.
203. Explicit scalar f64 normalized cache assigned from speed[0], used for all three speed formulas, retain scalar rotation:8109; rejected.
204. Scalar f32 speed plus rotation[1] array, f64 turn[2]:4335; rejected. Same score as155 where speed remained an array; changing speed alone does not fix the primary array form.
205. Compute scalar f64 baseQuotient immediately after speed initialization, then assign rotation=baseQuotient*65536 after turn normalization:7787; rejected.
206. Restore cleaned152/182 and rebuild/diff. Score340, ROMFAILED. No additional function matched.

The joint-index array unexpectedly adds a normalized-speed store despite equivalent linked-joint logic, so it is not a stack-only change. Shared offset variables also introduce a later float copy rather than moving the desired spill. The explicit double normalization cache and split base quotient do not recover the target FP classes. No shared offsets, nested rotation assignment, joint index array, signed stores, raw-double offsets, constant loops, normalization cache, or split quotient remain in authoritative C.
## Compound double working value: correct instruction count and following function

207. Main rotation stored as an unrounded f64 rotation[1] array, float casts at four uses:5469; rejected.
208. Clean152 plus scalar f64 working; working=speed[0], working/=(200*PI), working*=65536, rotation=working:2518. Removes extra mov.s and retains first-offset swc1/lwc1, with no extra instructions. All structural differences after initial turn normalization are gone (except frame adjustment). Early normalization/load scheduling differs, and the working quotient/product occupy doublef18 rather than temporaryf8/f10, delaying the base rotation conversion. Frame70. Saved tools/comet-joint-compound-working.txt.
209. Same compound working stored in working[1] array:4111. Adds rotation swc1/lwc1 and shifts constant addresses; rejected.
210. Scalar working assigned the full quotient*scale expression once, then rotation=working:5345; rejected.
211. Nested working assignment in rotation assignment:5345, same as210; rejected.
212. Redundant explicit f64 cast on original rotation expression in cleaned152:340, identical; rejected.
213. Restore208 as working candidate; build ROMFAILED. Count target instructions directly in target .s (375) and current disassembly through diff --show=current (375). Both function sizes are0x5DC. Diff target joint=2518; following func_802E0B64_324CB4 against func_802E1324_325474=0. This candidate preserves the matched terrain byte-for-byte, including addresses/constant loads. Retained for scheduling investigation; lower-score340 remains saved.

The compound scalar-double staging is a new useful direction: it avoids both the unwanted rotation copy and the offset-store loss of170/172, while preserving the complete target instruction set and function size. It does not match yet: quotient/product stay in one persistent double register, and early loads/conversions are reordered. Do not claim a match from equal instruction count or the following function match. Next work should address that initial schedule and release the persistent working register; then finish register/stack placement. No compiler flags, asm, or generated build files were manually changed.
## Compound-working scope and type checks

214. Separate scalar f64 quotient/scaled values in place of compound working updates:7803; rejected.
215. Working declaration/calculation scoped inside if(1), rotation declared outside:8290; rejected.
216. Same scoped working block without if(1):2518, identical to208. Lexical scope alone does not release the persistent working register; rejected as unnecessary block.
217. Scalar working changed to f32, compound division/multiplication retained:5867; rejected.
218. Clean152 main rotation expressed as (joint0==joint0) ? formula : 0.0:9935; rejected. Same score as the earlier if(1) around that calculation; no useful expression-temporary effect.
219. Compound208 with scalar f32 speed rather than speed[1]:5686; rejected.
220. Block-local const f64 working initialized with the full quotient*scale expression, then rotation=working:5345. Same as plain single-assignment working210/211; rejected.
221. Restore208, rebuild and compare:2518, ROMFAILED. Source unchanged from the375-instruction compound checkpoint. Following terrain remained byte-for-byte matched when this identical checkpoint was tested in213.

Confirmed f32/f64 typedefs are ordinary float/double in PR/ultratypes.h. A lexical block leaves compound-working allocation unchanged, while an actual constant conditional block changes it substantially. Const qualification of a single double initializer does not differ from an ordinary double temporary here. Keep208 as the working version and clean152 as the lower-score comparison; no scoped blocks, conditional expressions, scalar speed, const working initializer, split double temporaries or f32 working remain in authoritative source.
## Working-value expression and local storage checks

222. Initialize scalar working from speed[0], then assign rotation with one quotient/product expression:7863; rejected.
223. Initialize compound working immediately after normalized speed rather than after joint lookups:2574; rejected.
224. Nested division assignment inside rotation=(working/=divisor)*65536:4179. Duplicates a divisor load and changes scheduling; rejected.
225. Working=speed/divisor then rotation=(working*=65536):2518, same as208; rejected as unnecessary nesting.
226. Recheck219 scalar speed with compound working:5686. Initial normalized float uses f18, but base division/product move past turn normalization and first-offset spill disappears; rejected.
227. Replace speed[1]/turn[2] with one local struct containing f32 speed and f64 turn, retaining compound working:4586. Opening71 structural instructions agree, but first-offset spill is lost and second offset spills instead. Saved tools/comet-joint-motion-struct.txt; rejected.
228. Same struct, direct rotation formula without compound working:4538; rejected.
229. Reuse turn[0] for compound primary quotient/product before overwriting with actual turn:4046. Loses two instructions and changes floating allocation; rejected.
230. Declare scalar compound working as register f64:2518, unchanged; rejected.
231. Compound208 with turn[1] instead of turn[2]:2478. Same instruction count and opening schedule; frame shrinks from70 to68, not60. Saved tools/comet-joint-compound-turn-one.txt and retained as simpler storage candidate.
232. Clean152 speed[1] changed from f32 to s32, explicitly round to float at the three speed divisions:5545. Adds integer copy and changes lookup/conversion scheduling; rejected.
233. One-element turn candidate, ordinary rotation=working*65536 instead of working*=65536; rotation=working:4147. Opening scheduling changes; rejected.
234. Restore231, normal build ROMFAILED; joint score2478 and following terrain score0. Current function still ends at324CB0, matching target size5DC; full current disassembly confirms frame68. No new function matched.

Temporary target-specific compiler diagnostics -Wo,-zaloc, then -Wo,-zaloc,-zvref,-dowhyuncolor produced no allocation listing or additional stdout. Restored Makefile byte-for-byte and rebuilt with normal flags. Diagnostics are not matching attempts and provide no allocation evidence. Register keyword alone leaves compound-working code unchanged. Reducing unused array capacity changes stack size without fixing the initial schedule; do not mistake a lower numeric score or unchanged instruction count for matching.
## Struct-field offsets and debug-option validation

235. Local motion struct holds f32 speed, f32 rotation and f64 turn; direct primary formula, remove scalar rotation/working:4554. Opening71 structural instructions agree; primaryf16 and first-offsetf14 remain, first-offset spill missing and second offset spills. Saved tools/comet-joint-struct-rotation.txt; rejected.
236. Same struct, inline repeated first-offset formula, remove offset0 local:4522. Same first-offset scheduling and missing spill; rejected.
237. Same235, offset1[1] in place of scalar offset1:4506. Still missing first spill; rejected.
238. Restore231 and normal build: joint2478, following terrain0, full ROMFAILED. No new match.

Pattern search ROM324754 count3 returned six NON_MATCHING references and no matched references, so none supplied a reliable source pattern.

Correction to prior diagnostic conclusions: QUIET=1 discards successful compiler stdout/stderr. Temporarily overriding RUN only for this object reveals that uopt rejects -zdbug, -zaloc and -zvref as unrecognized options. Therefore the earlier silent successful diagnostic builds did not establish accepted allocation flags. Trying unprefixed zdbug,zaloc,zvref instead causes uopt to treat zdbug as a filename and fail before producing an allocation report. Normal Makefile restored byte-for-byte after these checks and ordinary make.ps1 build completed. Do not pursue those option spellings again. Output saved tools/comet-uopt-debug-allocation.log records the unsuccessful unprefixed attempt. The earlier timing output should not be taken as evidence that -zdbug is accepted by this recompiled compiler.
## Direct-formula use sites with mixed arrays

239. Clean152 speed[1] replaced by scalar f32 speed, direct rotation formula and turn[2] retained:5646. Opening scheduling changes and frame70; rejected.
240. Clean152 keeps initial named rotation assignment, but first two angle updates repeat its exact rounded speed formula; later updates use rotation:5646. Broad opening scheduling changes, not an isolated removal of mov.s; rejected.
241. Clean152 third offset expression repeated inline at its two uses; offset2 local removed:358. Required first spill remains and structural order is otherwise unchanged, but extra mov.s persists and frame58; rejected.
242. Clean152 second offset expression repeated inline at its two uses; offset1 local removed:358. Same structural result as241: extra mov.s persists, frame58; rejected.
243. Clean152 first offset expression repeated inline at its two uses; offset0 local removed:5853. Loses required first spill and adds primary rotation spill, changes opening math ordering; rejected.
244. Clean152 primary rotation, turn[0] normalization and offset0 assignments nested together in first angle compound update:8377. Broad scheduling/FP changes and frame80; rejected.
245. Restore231 and ordinary make/diff: joint2478, following terrain0, ROMFAILED. No new function matched. Retained source unchanged from238.

Pattern search32481C count3 returned one NON_MATCHING reference and no matched implementation. Re-read floating expression/statement allocation notes. Anonymous later offsets alone do not affect the first-two-use rotation copy in the mixed-array candidate. Anonymous first offset is materially different: it changes the computation schedule and which value spills. Keeping first offset named remains necessary in the retained checkpoint. No inline repeated rotation/offset expressions or nested initial compound assignments remain in authoritative source.
## Explicit angle input and joint-pointer forms

246. Candidate170 (reuse speed array, double normalized cache), explicit u32 angle0 loaded before offset0 formula, first angle assigned angle0+(speed[0]+offset0):2546. Adds integer spill sw t8,sp14; offset0 remains f16 without desired float spill. Rejected.
247. Clean152 named sixthJoint pointer, initialized immediately before final angle and used there:382. Structural differences remain extra mov.s and frame68; rejected.
248. Clean152 named thirdJoint pointer used for next sibling and third angle:4652. Opening71 structural instructions agree, but turnf16/primaryf12/offset0f18 and first spill disappears; rejected.
249. Clean152 named secondJoint pointer used for next sibling and second angle:5923. Adds primary rotation spill and changes radius/delta/turn schedule; rejected.
250. Clean152 all six joints as named struct pointers chained through sibling indices:10739. Removes saved s0 table base, adds speed store and changes opening load/math schedule; rejected.
251. Clean152 speed array initialized at declaration with runtime integer speed/32: compilation fails, cfe Invalid constant expression (runtime automatic aggregate initializer unsupported). The following diff is stale250 and is not evidence for this source. Rejected.
252. Restore231, normal make completed ROMFAILED; joint2478, following terrain0. No new match.

Pattern search324810 count5 returned no matches. Explicit unsigned input caching and named joint pointers affect live ranges but do not recover both the target primary register and first-offset spill. The saved-s0 table base in the target is naturally preserved by index-based source; all-pointer source colors it differently and does not retain the target schedule. Keep index-based body and plain runtime speed assignment. No explicit angle input, extra named joint pointers, or runtime aggregate initializer remains in authoritative source.
## Compound working identity and promoted-speed cache

253. Candidate231 compound updates written as working=working/divisor; working=working*scale:2478, unchanged score; rejected as unnecessary rewrite.
254. Candidate231 scalar working replaced with local struct { f64 value; } working, all compound operations use field:2478. Opening structural differences unchanged; rejected.
255. Candidate231 explicit f64 normalized cache assigned from speed[0] immediately after its initialization, used for working initialization and both later speed formulas:8109. Opening schedule/stack changes and scale uses f2 instead of targetf0; rejected. Same score as earlier direct-formula cache203; cache does not improve compound staging.
256. Restore231; normal build ROMFAILED, joint2478 and following terrain0. No new match.

Pattern search3247C4 count4 returned no matched or unmatched references. Compound versus explicit ordinary updates and single-field struct storage do not change this candidate's score or initial structural schedule. Explicit promotion caching remains unhelpful even when main rotation uses compound double staging. Remove experimental struct/cache and keep scalar working checkpoint.
## Reused speed cell: normalization type and storage

257. Candidate170 normalized cache changed from f64 to f32; speed array is still overwritten by rounded main rotation:4179. Opening71 structural instructions agree, but first offset stays f16 without spill and conversion/division scheduling at32480C differs; rejected.
258. Candidate170 normalized cache changed from scalar f64 to normalized[1] f64 array, all three speed computations use element0:2905, same score and first-offset differences as170. No desired spill; rejected.
259. Restore231 and ordinary make/diff: joint2478, following terrain0, ROMFAILED. No new match.

Reviewed opening target directly and prior order changes before these tests. Reused speed cell remains useful for the exact opening schedule, but neither float normalization cache nor array double normalization cache changes its wrong first-offset allocation into the target spill. Single-element double cache is equivalent to scalar cache for this candidate; avoid repeating it. Authoritative source remains compound checkpoint231.
## First circumference source identity with mixed arrays

260. Clean152 first speed divisor expressed as raw628.3185308 and first turn divisor as folded200.0*pi, other two pairs unchanged:340. Structural diff still only extra rotation mov.s; reversing the first pair does not change its allocation. Rejected.
261. Clean152 first speed divisor uses local const f64 circumference initialized200.0*pi:438. Extra rotation mov.s remains; frame70. No first-pair constant merge apparent in structural diff. Rejected.
262. Restore231 and ordinary make/diff: joint2478, following terrain0, ROMFAILED. No new match.

Constant source identity preserves the two distinct loads but does not explain the first-two-use rotation copy in the mixed-array candidate. Naming the first folded divisor changes local storage/frame without removing the copy; remove the additional local constant. Original inline folded speed divisors and decimal turn divisors retained.
## Rotation address exposure: indirect versus direct accesses

263. Clean152 pointer rotationPtr=&rotation, indirect assignment and all four indirect reads:4319. Removes primary copy, opening71 structural instructions agree, but first offset remains register colored; missing first spill. Rejected.
264. Clean152 rotationPtr used only for assignment, all reads direct scalar rotation:1996. Opening primary f14, turnf12 and full structural opening order recovered; first-offset conversionf18, spill absent. Function ends8 bytes early, constant addresses shift with size; first-turn divisor7BA0 is not evidence of a merged constant. Saved tools/comet-joint-rotation-indirect-store.txt; diagnostic alternative, not retained.
265. Add offsetPtr=&offset0 to264 and store first offset indirectly, keeping direct scalar reads:2006. Same first-offset structural differences; extra local pointer changes stack scoring, no spill recovered. Rejected.
266. Restore231, ordinary make/diff: joint2478, following terrain0, ROMFAILED. No new match.

Pattern search3247E0 count4 returned no references. Taking the primary rotation address has a material effect: indirect reads and direct reads after the same indirect store differ in allocation. Neither form reproduces first-offset swc1/lwc1. Pointer-to-offset indirect store adds no benefit. No local float pointers remain in authoritative C; keep264 only as a reference for an exact opening calculation with primaryf14 and without mov.s.
## First-offset address exposure at individual use sites

267. Candidate264 indirect rotation store, direct offset0 assignment, offsetPtr=&offset0 used for both offset reads:4327. Opening71 structural instructions agree, but primaryf16 and first-offsetf14, spill absent; rejected.
268. Same264 with indirect offset read only at second joint, first read direct:4327. Same first-offset differences as267; rejected.
269. Same264 with indirect offset read only at first joint, second read direct:4327. Same score as267/268; rejected.
270. Restore231, ordinary make/diff: joint2478, following terrain0, ROMFAILED. No new match.

Pattern search3248C8 count4 returned one NON_MATCHING reference, no matched reference. One indirect first-offset read is enough to change the allocation seen with only an indirect rotation store, and selecting its use before or after the first joint write does not recover the spill. The equivalent scores and inspected267/268 opening sections do not support an alias-invalidation explanation for the target reload. No offset-address experiment remains in authoritative source.
## Scalar float normalization and raw-double first offset

271. Clean152 speed and turn replaced by scalar f32 speed/turn, named three offsets retained:4498. Opening71 structural instructions agree, but mainf16/offset0f14 and spill absent; rejected.
272. Same271 first offset held raw f64, float casts at both angle uses:4506. Same first-offset scheduling and missing spill; rejected.
273. Clean152 mixed arrays retained, first offset held raw f64 and cast to float at its two uses:590. Target first-offset swc1 f4,sp8 occurs, but adds sdc1 f8,sp28 before float conversion, retains extra primary mov.s f18,f14. Saved tools/comet-joint-double-first-offset.txt as diagnostic; rejected for extra instructions.
274. Same273 raw first offset changed to f64 offset0[1] array:5838. Adds normalized-speed float store and changes opening math schedule/FP registers; rejected.
275. Restore231, ordinary make/diff: joint2478, following terrain0, ROMFAILED. No new match.

Pattern search324804 count4 returned no references. Scalar float speed/turn is not the missing source form. The raw-double first-offset form273 provides the target float spill address and rounded-value sharing, but adds a double store absent from target; converting its storage to an array is not a fix. Investigate the extra double store or combine this float-spill result with the exact-opening candidates, without assuming equal roundoff behavior proves a match. No scalar normalization change, raw-double offset or extra casts remain in authoritative source.
## Raw-double offset storage and combined indirect rotation store

276. Candidate273 raw offset0 declared const f64 with initializer in lexical block enclosing its two angle uses:590. Extra sdc1 f8,sp28 and mov.s remain; rejected.
277. Candidate273 raw offset consumed once into new f32 roundedOffset; two angle uses reference roundedOffset:5870. Adds normalized-speed float store and changes opening schedule; rejected.
278. Candidate273 plus rotationPtr=&rotation used only for primary assignment:1587. Removes both original extra mov.s and double sdc1; primaryf14/turnf12 and initial71 structural instructions agree. First offset held doublef18, convertedf8, spilledspC and immediately reloaded before first use (extra lwc1 absent target); angle input conversion moves ahead of first division, frame78. Saved tools/comet-joint-indirect-rotation-double-offset.txt as diagnostic. Not retained.
279. Candidate278 raw offset consumed once into f32 roundedOffset before angle updates:4894. Adds normalized-speed float store, alters early FP schedule and turn normalization; rejected.
280. Restore231, ordinary make/diff: joint2478, following terrain0, ROMFAILED. No new match.

Pattern search324818 count4 returned no references. Const lexical initialization does not remove the273 double store. Combined indirect rotation store and raw-double first offset removes the copy and double store independently present in273, but the shared float cache now emits an immediate reload after spilling, which target lacks. Explicit named rounding is not a fix and changes normalization elsewhere. Keep278 for investigation of that extra load and conversion order; no scoped const offset, rounding helper or local pointer remains in authoritative C.
## Combined variant: early rounding and first-angle expression order

281. Candidate278 offset0 double assignment explicitly rounds expression through f32 before implicit promotion, uses still cast to float:1692. Adds cvt.d.s f18,f4 and cvt.s.d f10,f18 plus immediate float reload; rejected.
282. Candidate278 raw offset consumed once into existing offset1 float before first two angle updates, offset1 later reassigned for second offset:4862. Adds normalized-speed float store and changes early math schedule, just like a new rounding local; rejected.
283. Candidate278 first angle explicitly assigned (rotation+(f32)offset0)+(f32)(u32)old angle:1587. Score and structural opening differences unchanged, including immediate float reload; rejected.
284. Restore231, ordinary make/diff: joint2478, following terrain0, ROMFAILED. No new match.

Pattern search324824 count4 returned no references. Early float rounding in a double destination is not simplified back to the original single conversion: both promotion and inverse conversion remain. Reusing an existing rounding local does not avoid the unwanted normalized-speed store. Explicit first-angle operand order alone does not control the early input conversion schedule in278. No early double rounding, shared rounding local or explicit angle assignment remains in authoritative C.
## Selective volatile reload: complete instruction and register match

285. Candidate264 first offset normal local, volatile f32 pointer view read only for second angle:3054. First85 structural instructions agree, but emits addiu t7,sp34 and late lwc1 through t7 in second update; rejected.
286. Same285 direct pointer cast at second read, no pointer variable:3046. Same explicit address and late load; rejected.
287. Candidate264 offset0 union {f32 value; volatile f32 reload}, normal first assignment/use and volatile second use:2142. Removes explicit pointer address; first118 structural instructions agree, load direct from sp24 but too late. Saved tools/comet-joint-union-reload.txt.
288. Same287 offset0.value=offset0.reload as separate statement before second compound angle update; second update uses nonvolatile value:1850. First168 structural instructions agree, correct reload placement. Remaining structural differences are unwanted second-offset spill/reload and its scheduling. Saved tools/comet-joint-union-explicit-reload.txt.
289. Same288 second-offset formula inline at both uses, remove named offset1:112. All375 instructions structurally match, all registers match, frame60 and constant addresses match. Remaining eight stack operands: pointerspC, offsetsp14, yawsp30, radiussp34, deltasp3A. Saved tools/comet-joint-structural-match.txt; new retained direction.
290. Move offset2 declaration after radius, then put speed array before yaw:96. Fix yaw2C, radius38, delta3E; only four stack operands differ (pointer store/reloadC instead30 and first-offset store/reload14 instead8). Saved tools/comet-joint-stack-only.txt and retained source.
291. Current290 structural diff suppresses all369 intermediate matching instructions; full diff shows only the four stack offsets. Following terrain0. Last ordinary make ROMFAILED, so still not matched.

Pattern search3248C8 count5 returned one NON_MATCHING reference, no matched implementation. Selective volatile union read is a code-generation diagnostic; this is not evidence that original source used volatile. It produces the needed local memory dependency without a pointer-address instruction. Copying that volatile view into its nonvolatile view before the compound update puts reload before the unsigned input conversion. Inlining the second-offset expression removes an otherwise unwanted spill. Full target register assignments and arithmetic order are now proven by the four-stack-operand full diff, not just the structural score. Next work is exclusively stack placement, and must preserve this checkpoint. Earlier compound231 remains available for comparison but is no longer authoritative.
## Stack-only checkpoint: cached pointer and object alignment tests

292. Candidate290 primary rotation changed to rotation[1], speed array moved into old rotationPtr declaration position, replace lower speed declaration with fifth-pointer union normal value/volatile reload. Cache pointer before sixth sibling lookup, use volatile pointer view for fifth angle:5119. Adds normalized-speed/primary stores and changes FP schedule/registers; rejected.
293. Candidate290 rotation pointer unchanged, extra fifth-pointer union with two ordinary pointer views. Cache value for sibling lookup and read other view for fifth angle:4824. Removes required pointer store/reload, holds fifth pointer in t5, moves yaw load/store; rejected.
294. Candidate290 first-offset union enlarged/aligned by f64 doubleValues[2] member:146. Entire instruction order/register logic retained, but frame grows68; pointer spill8, offset10, yaw34, radius40, delta46. Extra object capacity changes both bottom spill allocation and frame size, not just float slot. Rejected; unused member removed.
295. Restore290, normal make/diff: joint96, following terrain0, ROMFAILED. Four stack operands remain; no new match.

User pointer caching is not an isolated stack-placement change: both ordinary and volatile pointer cache forms alter earlier scheduling or allocation. Preserve the anonymous fifth-address expression of290 while investigating stack layout. Enlarging the first-offset union does change where the pointer spills but does not place it at target30, and breaks the correct frame/other locals. No additional pointer union, rotation array or alignment member remains in authoritative source.

## Stack placement: alignment and explicit rotation address

296. Candidate290 first-offset union adds f64 member (size8/alignment8):96. Frame60 and instruction/register order remain exact; pointer spill8 and offset10 still differ from target30 and8. Rejected unused member.
297. Candidate290 first-offset union adds f32 words[3] (size12/alignment4):146. Frame68, pointerC, offset14; yaw34/radius40/delta46 move eight bytes. Rejected unused capacity.
298. Candidate290 removes rotationPtr local, writes primary through (&rotation)[0]:130. All375 instructions/registers still agree, but frame58 and stack operands differ. Saved tools/comet-joint-direct-rotation-store.txt as diagnostic source without pointer local.
299. Candidate298 speed moved into removed pointer slot, former speed slot becomes pointer/integer union caching fifth pointer. Fifth update reads pointer through integer member cast:4820. Required spill disappears, pointer held in t5 and yaw read/store change; rejected.
300. Candidate290 joint4 declaration replaced by speed array; old speed slot becomes index/pointer union joint4. Convert index to pointer before sixth sibling read and use cached pointer for fifth update:6166. Adds normalized-speed store and changes early FP scheduling; rejected.
301. Restore290 and ordinary build: joint96, following instructions retain four stack-offset differences; ROMFAILED. Retained checkpoint unchanged.

The explicit rotation address expression preserves the primary-store alias behavior without a pointer local, but removing that local changes frame layout. Pointer/integer union representations do not force the target spill. No alignment member, extra array capacity or cached fifth pointer remains in retained source.

## Further storage-class and pointer-lifetime checks

302. Candidate290 turn[2] reduced to turn[1]: instruction/register order remains exact, frame58; pointerC/offset14 unchanged, yaw24/radius30/delta36 move eight bytes. Full score not captured. Rejected.
303. Candidate290 joint4 replaced by speed declaration, old speed slot holds pointer union normal value/volatile reload. Initialize pointer instead of fifth index, use for sixth sibling lookup, separately copy reload into value before offset2: broad scheduling differences, early yaw and normalized-speed float store. Full score not captured. Rejected.
304. Candidate298 adds pointer union before yaw, caches fifth pointer after all sibling lookups, separately reloads before offset2 and uses pointer for fifth angle:3034. Early integer traversal remains close, but emits both anonymous pointer spill8 and additional user pointer store48, frame78, altered FP assignments. Rejected.
305. Same304 with both pointer views ordinary:2549. Additional user pointer store disappears; anonymous pointer still spillsC, normalized speed14/primary16/turn18 differ from target. Rejected.
306. Candidate298 primary rotation union with two ordinary float views, write one/read other:3477. Adds mov.s f14,f18, frame68 and wrong FP assignments/stack. Rejected.
307. Candidate290 speed[1] replaced by single-field struct speed.value:96, identical four stack differences. No benefit; retained original array form.
308. Candidate290 offset0 union explicitly register-qualified:96, identical four stack differences. No benefit; qualifier removed.
309. Candidate290 speed[1] changed to f64[1], explicit f32 rounding on initial integer division:1130. Frame68 and normalized-speed scratch6, primary schedule/registers differ. Rejected.
310. Candidate298 adds pointer union before yaw, volatile store of fifth pointer before sixth sibling lookup, ordinary view used only for sibling read, fifth angle remains anonymous array expression:5075. Adds immediate pointer reload after store and normalized-speed float store; frame58, broad register/schedule changes. Rejected.
311. Restore290, normal build and comparison: joint96, terrain0, full ROMFAILED. No new function matched in this batch.

The later cache preserves more of the integer traversal, but its volatile read adds a second storage location rather than replacing the anonymous pointer spill. A volatile pointer store instead adds an immediate reload for the ordinary view. A single-field speed struct is code-generation equivalent to the one-element float array; register qualification of the first-offset union is also ineffective. Keep the four-stack-operand checkpoint rather than any of these candidates.

## Natural spill, lexical scope and pointer-array alias checks

312. Candidate290 first-offset union replaced by raw f64 offset with f32 casts at its two uses, explicit volatile reload removed; second offset remains inline:1603. Like278, adds immediate float reload after swc1, raw offset uses double18/float8, frame78; second-offset inlining does not fix the first reload. Rejected.
313. Candidate290 offset0 union moved into first-two-angle block, offset2 into final-two-angle block, both removed from top declarations:146. All375 instruction/register order remain exact, but frame58, pointer spill8, offset14, yaw28/radius30/delta36. Scope separation does not place first float at8. Rejected.
314. Candidate290 rotationPtr local replaced by speed declaration, old speed slot becomes union of rotation/fifth pointers. Use union rotation pointer for primary store, then overwrite with fifth pointer; fifth angle read through pointer and write through indexed array:3721. Normalized float14/primary16/turn18, pointer remains anonymous spillC. This candidate also mistakenly reassociated the fifth addition as (old+speed)+offset; this invalid experiment is rejected, and315 restores old+(speed+offset).
315. Candidate298 speed moved to former helper slot, pointer union at old speed slot. Initialize cache before sixth sibling lookup, separately reload before offset2; fifth angle reads pointer and indexed array is destination, with correct float association:6426. Adds normalized-speed store, early constant loads and broad register/schedule changes. Read-only pointer use does not avoid those changes when a volatile pointer view is read. Rejected.
316. Candidate298 ordinary fifth-pointer array[1] before yaw, cache after sibling traversal; fifth angle read through array pointer and destination remains indexed:4543. Emits original anonymous pointer spillC and additional pointer store30. Normalized14/primary16/turn18 and other scheduling differ. Rejected.
317. Same316 final angle update becomes compound write through fifth[0]:3034. Emits anonymous pointer spill8 plus user store48, frame78. Same score/initial spill pattern as304; ordinary pointer array is not a substitute for the anonymous spill. Rejected.
318. Same317 initialize fifth[0] before sixth sibling lookup and use fifth[0] for that lookup:3946. Removes duplicate anonymous pointer store; single pointer store28 before lb agrees in opcode/registers there. But normalized-speed float store and earlier constant loads remain, frame58 and broad FP changes. Rejected.
319. Same318 speed array replaced by ordinary scalar:3704. Removes the normalized-speed float store, but early constant loads and normalized14/primary16 remain; pointer store28/frame58. Rejected.
320. Same319 primary assigned directly to scalar rotation (remove address expression), turn array replaced by scalar:3143. Frame50, pointer20, first offsetC. Normalized18/primary14/turn12 can appear, but main divide/convert now occurs much later; earlier GPR loads/stores and FP schedule differ. Rejected.
321. Same320 restore turn[2] array only:4786. Direct primary remains late, frame58 and broad FP scheduling/register differences. Rejected.
322. Restore290, ordinary build: joint96, following terrain0, full ROMFAILED. No new match in this batch.

A pointer array creates an actual user-area store, unlike the ordinary two-view pointer union; when initialized after anonymous traversal it adds a second store instead of replacing the anonymous spill. Using the pointer array for traversal removes that duplicate, but produces an unwanted normalized-speed float store. Changing speed to a scalar removes that float store while changing other scheduling. This supports investigating address exposure/alias treatment rather than assuming declaration order alone will solve the cached pointer. It does not prove the original source used arrays, unions or volatile. Retain290; none of these forms is a matching replacement.
