# Body Harvest Mission Data Format

This document describes the byte stream consumed by `func_800756DC_8468C` in `src.us/overlay_gameplay/outside/missions.c`, plus the in-memory records and runtime behavior needed to interpret it. The parser is token-oriented: almost every value is one unsigned byte. No general 16-bit or 32-bit integer reader exists. Where the code reads an apparent “ID” or “value”, it consumes one byte unless stated otherwise.

## Scope and confidence

The top-level order, byte consumption, record widths, and most branch conditions below follow the parser directly. Several game-condition opcodes and object meanings are only observable as values passed to `func_800081D4_8DD4`; they are intentionally described structurally rather than assigned guessed semantics. `docs/missionsInfo.md` is an earlier summary, but some of its interpretations (notably section placement, object sizes, condition type meanings, and limits) are not supported by the reader and should not be used as the format authority.

## Stream and cursor conventions

The input begins at `D_80224680`; the parser stores a cursor in `D_801494B8`. `func_80074558_83508` peeks without advancing. `func_80074500_834B0` and `func_8007452C_834DC` both consume exactly one byte and save it in `D_801494BC`; their difference is only C return type. All values are therefore bytes (`0..255`).

A parser should model each read as `read_u8()` and each lookahead as `peek_u8()`. Tokens such as `0x87` often end the current repeated list and are consumed by the caller afterwards; they are not uniformly consumed by the list reader itself. `0x87` is a structural separator/terminator whose exact role depends on the current section.

## Top-level layout

The parser accepts a file whose first byte is `0xA8`, `0x90`, or `0xB0`. Otherwise it prints “NOT A MISSION FILE” and skips the main parse. The recognized first byte indicates one of the optional initial sections or the first mission's map data; it is not a fixed magic header.

The actual read sequence is:

```text
optional character assignments: repeated 0xA8 <one byte>
optional 0x87 separator: at most one consumed here
optional weighted object tables: repeated 0xB0 <weighted table>
optional 0x87 separator: at most one consumed here
missions: repeated mission records until a 0x87 is next
consume the 0x87 after missions
optional dialogue records: parsed only if next byte is 0xB7
consume one byte unconditionally after dialogue parsing
optional weight/value pairs: read pairs until 0x87 is next
```

The optional separator reads are conditional: each `0x87` is consumed only if it is immediately next. There is no global section directory or length table. The outer parser assumes the sections appear in this order. Dialogue parsing is not initiated by a second generic `0x87`-delimited list; it is initiated by `0xB7` after the mission terminator. Then one byte is consumed before the final pair table, expected in common cases to be the dialogue section's `0x87` separator.

### Character assignments (`0xA8`)

Each entry is exactly:

```text
A8 characterId:u8
```

The prefix is consumed by the outer parser; the following byte is stored in the first byte of a two-byte runtime slot in `D_8004D160`. The other byte later holds a spawned instance index. The count is `D_80149B44`; the reset/parser diagnostics indicate a nominal capacity of 16 slots. This section may be absent. These are byte IDs, not 16-bit IDs.

### Weighted random-object tables (`0xB0`)

Each `0xB0` introduces one weighted choice table. The parser consumes `0xB0`, then reads entries until (but does not consume) `0x87`:

```text
(weight:u8, object-entry)
(weight:u8, object-entry)
...
87
```

Each weight is a single byte. Each following object uses the variable-width object encoding below. The code sums weights, obtains `random() % sum`, and chooses by subtracting each weight until the result is negative. Thus weights are relative unsigned byte weights; a zero total would make the selection operation invalid and should be treated as malformed input. The chosen object is copied into a 3-byte runtime command-object slot. Multiple `0xB0` tables may occur; each one selects an object at parse time. The exact count/capacity is runtime-limited (the selected-object buffer reports 16 entries).

## Mission records

A mission has no explicit start marker or length. The outer loop parses records until it sees `0x87` at the beginning of the next record. For each record, in order:

1. Map/tile bytes: if the next byte is `0x90`, parse map chunks; otherwise call the empty/default map initializer.
2. Zero or more mission-info entries beginning with `0xAC` or `0xAE`.
3. A mission-condition header and its game-condition bytecode, if present. Headers are `0xB7`, `0x82`, or `0x83`.
4. Optionally, an activation command list prefixed `0x84`, then failure list `0x85`, then success list `0x86`, in that order. Each is only read if it is the next byte.

The runtime mission index starts at zero and increments once per outer record. The code increments `D_80149470` as a separate mission counter. The documented nominal maximum is 24 records; the overflow check fires once the incremented index reaches `0x19`, so a robust parser should reject more than 24 rather than rely on the game's overflow behavior.

### Map and tile data (`0x90`)

Map data is a sequence of chunks. Each chunk starts with `0x90`, which is consumed; the following bytes are copied in order into the current mission/chunk buffer. A byte equal to `0x80` or `0x81` is followed by one additional payload byte that is also copied as part of that chunk. Other bytes occupy one byte. Chunk data ends when the reader encounters a recognized section boundary (`0xB7`, `0xAC`, or `0xAE`); those boundary bytes are left for the next parser.

The destination is `D_80149B60[missionIndex][chunkIndex][byteIndex]`, with storage for 11 chunks of 50 bytes per mission. The parser initializes `chunkIndex` to -1 and advances it on every `0x90`. The code has a special map validation call once the index is at least 4 (i.e. five or more chunks); this is not the same as a four-chunk count. The byte grammar does not provide an explicit chunk length, so chunk boundaries are the next `0x90` (recognized as a marker within the loop) or one of the section-start tokens. A practical decoder should treat each chunk as bytes up to the next `0x90` or mission section marker, retaining the extra-byte rule for `0x80/0x81`.

The source has a subtle dependency on `D_801494BC`, the last byte read/looked at, while peeking updates it too. Parse using the current stream byte, not a cached previous token. Payload bytes equal to marker values may be ambiguous; the code's token grammar determines whether they are interpreted as boundaries.

### Mission info entries (`0xAC`, `0xAE`)

These tokens introduce one variable-width object entry each:

```text
AC object-entry
AE object-entry
```

The 4-byte runtime record at `D_8014CEF0` is:

```text
missionAndContinuation:u16 (native runtime field; low 7 bits mission index,
                            high bit continuation flag)
object[0]:u8
object[1]:u8
object[2]:u8
```

In the file, the mission index/flag are not separately encoded: the parser synthesizes them from the current mission and token (`AC` clears bit 7, `AE` sets it). `0xAE` also increments a per-mission continuation count. Object data is parsed after the prefix. `0xAC`/`0xAE` entries are consumed consecutively before the condition header.

### Mission condition headers (`0xB7`, `0x82`, `0x83`)

Each header starts a mission-condition record. The parser synthesizes `type` and binds the record to the current mission and current game-condition index:

| Input | Runtime `type` (`MissionCondEntry.unk0`) |
|---|---:|
| `B7` | 1 |
| `82` | 2 |
| `83` | 3 |

Each six-byte runtime `MissionCondEntry` is:

| Offset | Field | Meaning from use |
|---:|---|---|
| 0 | `unk0` | synthesized type above; 4 is used for dialogue records |
| 1 | `unk1` | mission index for types 1–3; dialogue ID for type 4 |
| 2 | `unk2` | first game-condition record index (or dialogue's condition start) |
| 3 | `unk3` | number of game-condition records associated with this entry |
| 4 | `unk4` | command-sequence start index for mission entries; dialogue-specific value for type 4 |
| 5 | `unk5` | dialogue format/time metadata for type 4; otherwise not set by this parser |

For each `B7`/`82`/`83`, the parser consumes the prefix, records the current mission index and game-condition count, then consumes the associated game-condition expressions until a boundary. Those boundaries are `B7`, `82`, `83`, `84`, `85`, `86`, `87`, `90`, `AC`, and `AE`. Therefore adjacent condition headers each create a record, and the condition bytecode between headers belongs to the preceding header. An empty condition list is possible in the parser representation (count stays zero), though runtime evaluation only checks conditions inside a nonzero-count loop.

The parser stops the per-mission condition section when the next byte is `84`, `85`, `86`, `87`, `90`, `AC`, or `AE` (as well as a new `B7/82/83`, handled as another condition header). Other tokens are parsed as game-condition expressions.

### Command lists (`0x84`, `0x85`, `0x86`)

The outer parser recognizes at most one list of each kind, and only in this order:

```text
84 command*   activation-linked list (runtime type 1 / B7)
85 command*   failure-linked list (runtime type 2 / 82)
86 command*   success-linked list (runtime type 3 / 83)
```

A list ends when the next byte is outside `0x9C..0xA5`; the list reader leaves the non-command token for the outer parser. Each ordinary command starts with opcode and one argument byte. Runtime storage is three bytes per entry `[opcode, arg1, arg2]`. For all commands other than `0x9E`, `arg2` is stored as zero. `0x9E` has an optional extension described below. Every list gets a synthetic `0xA9` terminator in the command buffer; the terminator itself has no two encoded argument bytes.

The linker searches already-parsed mission-condition records associated with the current mission and matching condition type, and stores the command-buffer start index in `unk4`. Despite the input list prefixes named success/failure/special, the implementation maps `0x84` to runtime type 1, `0x85` to type 2, and `0x86` to type 3. Runtime type 1 also represents the `B7` “always/activation” condition. Treat this as a code-derived linkage rule, not a semantic label for the original bytes.

#### Command encoding and observed effects

| Opcode | Encoded arguments | Observed runtime effect |
|---:|---|---|
| `9C` | one byte | Calls vehicle/object operation with arg1. |
| `9D` | one byte | Calls mission action/spawn routine with arg1. |
| `9E` | one byte, optionally extension | Uses arg1 as a character slot. Normally uses an existing wave/object reference; when the source stream has `B4`, the parser consumes `B4` and a variable-width object entry and stores its selected-object index in arg2. Runtime checks the referenced wave entry: `99` rotates a building; otherwise it spawns an alien at its position and updates the character slot. |
| `9F` | one byte | Calls another action routine with arg1. |
| `A0` | one byte | Spawns the selected object/action near the player with a random offset. |
| `A1` | one byte | Score/reward/failure action. Certain args `A5..AB` select reward variants; lower values add `arg1 * 100`; other values take a failure-related path. |
| `A2` | one byte | Calls a level-relative mission/action routine. |
| `A3` | one byte | Clears a mission flag; arg1 value 1 also resets a related mission-state pointer. |
| `A4` | one byte | Calls level-relative event/cutscene routine. |
| `A5` | one byte | Same called routine family as `A4`, with same argument transform. |
| `A9` | none in file | Runtime command terminator, synthesized by parser. |

For `9E`, the code tests whether the byte immediately after arg1 is `B4`. If so it consumes `B4`, then reads an object entry and stores its index. Otherwise arg2 remains zero. The runtime buffer always uses three bytes per command, but this does not mean the file encodes fixed three-byte commands.

## Game-condition expression encoding

Game conditions are variable-width expressions stored in fixed 9-byte runtime slots at `D_8004D348`. A condition parser call reads expressions until one of the mission/section boundary bytes listed above. Before expression parsing, an optional `0x88` byte is consumed if present.

Object-leading forms start with one of `98`, `99`, `9A`, `9B`, `AD`, or `AF`; the parser reads the object into bytes 0–2 of the runtime slot, then reads a condition/operator byte into byte 8. Additional payload depends on that byte:

- `89` or `8A`: read one byte into slot byte 6; require/consume `8B`; then read a second object into slot bytes 3–5.
- `91` or `92`: read a second object into bytes 3–5.
- Other operator bytes: no additional bytes are consumed by this branch.

Non-object-leading forms:

- `B2` or `B3`: store that byte as slot byte 8; no other bytes are read by this branch.
- Otherwise, read operator byte into slot byte 8 and one parameter byte into slot byte 6. If operator is `94`, consume a following comparator byte: `89` rewrites stored op to `A6`, `8A` rewrites it to `A7`; then read one byte into slot byte 7. The next byte is expected to be `97` and is consumed. Missing expected `89/8A` or `97` triggers a diagnostic.

All of the above are one-byte parameters. `89`, `8A`, `91`, `92`, `94`, `B2`, `B3`, `A6`, `A7`, `8B`, and `97` names are parser observations; their exact gameplay meanings require the condition evaluator or game data and are not inferred here. Slot bytes not explicitly written by a branch may retain/reset to zero depending on the surrounding reset path; a standalone parser should initialize each slot to zero before decoding.

At runtime, `func_80075AA4_84A54` takes the condition start index/count from the six-byte mission-condition record and calls `func_800081D4_8DD4` for each 9-byte game-condition record. Conditions are processed as a conjunction: any false result skips the mission-condition entry; all passing results trigger its type-specific behavior. Type 1 is skipped if the mission is already in active/completed, failed, or succeeded bit sets; when its conditions pass, the mission is marked active and its linked commands execute. Types 2/3 are only considered after the mission is active and lead to failure/success handlers. These observations describe runtime flow, not every side effect inside those handlers.

## Dialogue-condition section (`0xB7` records)

After the mission-list terminator, the parser checks for a `B7` dialogue section. While the next byte is `B7`, it creates a type-4 six-byte record and reads the dialogue header. The code shows two layouts:

```text
B7 ... B9 dialogueId:u8 ... [optional 94-formatted time bytes] game-conditions ...
B7 ... non-B9-form dialogue header bytes ... dialogueId:u8 game-conditions ...
```

This function uses fixed counts of consumed bytes around the markers, rather than a general length field. For the `B9` form it consumes `B7`, `B9`, one-byte dialogue ID, and one more byte; if the next byte is `94`, it consumes three bytes, stores the next byte as `unk5`, then consumes one more byte. Otherwise `unk5` is set to 3. For the non-`B9` form it consumes five bytes after the first post-`B7` byte, then reads the dialogue ID byte. It then reads game conditions using the same game-condition parser.

After the condition expressions, the parser consumes two bytes, reads one byte, and stores that byte minus one as `unk4`. It repeats if the next byte is `B7`. Dialogue records live in a separate 64-entry runtime array (`D_8004D1C8`) and runtime polling is implemented by `guess_checkMissions` in `src.us/core/53F0.c`: it filters type-4 records and dialogue IDs in the observed `0x46..0x47` range, checks the associated game conditions, and uses `unk4`/`unk5` in its timer/output handling. The fixed header bytes' full semantic names are not recoverable from this parser alone; preserve them exactly when decoding.

After dialogue parsing, the top-level parser consumes one byte unconditionally. The expected file layout uses this as the separator before the final section.

## Final weight/value pairs

After that one-byte separator, pairs are consumed until the next `0x87`:

```text
weight:u8 value:u8
weight:u8 value:u8
...
87
```

They are copied verbatim into `D_8014CFF0` as two-byte pairs. The reader does not consume the terminating `0x87`, and the top-level function does not read beyond this table afterward. There is no explicit count in this section.

## Object-entry encoding

`func_80074578_83528` is the common variable-width object reader:

| First byte | Bytes consumed | Runtime bytes written |
|---:|---:|---|
| `98` | 1 | `[98, 0, 0]` logically; it writes only byte 0, so zeroing depends on destination initialization |
| `99` | 2 | `[99, arg1]` |
| `9A` | 2 | `[9A, arg1]` |
| `9B` | 2 | `[9B, arg1]` |
| `AF` | 2 | `[AF, arg1]` |
| `AD` | 3 | `[AD, arg1, arg2]` |

Unrecognized lead bytes consume only the lead byte and leave the other destination bytes untouched. Validating parsers should reject unsupported object tags unless intentionally emulating this permissive behavior. These object tags are not length-prefixed. `98` is particularly important: it is a one-byte encoding, despite the fixed three-byte runtime slot. The slot's unused bytes should not be interpreted as file data.

## Runtime tables and limits

The parser expands the compact input into fixed-size runtime arrays. These capacities are diagnostics/limits visible in this implementation:

| Runtime data | Capacity reported/checked | Storage |
|---|---:|---|
| Missions | 24 | mission index/counters and associated map data |
| Mission-condition records | 127 usable before overflow diagnostic at 127 | 6-byte records |
| Game-condition records | 254 usable before diagnostic at 254 | 9-byte records |
| Commands | 253 usable before diagnostic at 254 | 3-byte runtime records plus terminators |
| Mission info | 63 usable before diagnostic at 63 | 4-byte records |
| Selected random objects | 16 | 3-byte records |
| Command object scratch entries | 16 | 3-byte records |
| Character assignments | 16 | two-byte ID/instance pairs |
| Dialogue records | 64 | 6-byte records |
| Input blob | 0x800 bytes is reported as expected size in overflow/status print |
| Map data | 11 chunks x 50 bytes per mission | byte arrays |

These are not all clean hard bounds: some counters are checked after or at particular increments, and some buffers have no local check in the shown routine. A format parser should independently enforce bounds before writing.

## Suggested parser model

A safe standalone decoder should:

1. Keep one cursor and implement byte reads/peeks exactly.
2. Parse sections in the top-level order above; do not search globally for marker bytes because marker-valued bytes can also be payload in context.
3. Represent objects as `(tag, args[])` with tag-dependent arity (1/2/3 encoded bytes total).
4. Parse commands as variable-width input records into fixed three-byte conceptual records; handle the special `9E B4 object` extension.
5. Treat game conditions as variable-width expressions until a recognized boundary, preserving raw operator and parameter bytes.
6. Preserve unknown dialogue header bytes and unknown condition operators instead of assigning unverified names.
7. Check each runtime capacity and all chunk lengths before storing.
8. Record byte offsets for every decoded node. This makes malformed or version-specific data much easier to diagnose.

## Source references

- Top-level parser and section order: `func_800756DC_8468C`.
- Cursor and object decoding: `func_80074500_834B0`, `func_80074558_83508`, `func_80074578_83528`.
- Weighted tables: `func_800747A8_83758`; final pairs: `func_80075574_84524`.
- Map data: `func_80074970_83920`.
- Mission info and conditions: `func_80074B2C_83ADC`, `func_80074FA8_83F58`, `func_80074CA0_83C50`.
- Command linkage/execution: `func_80075148_840F8`, `func_80075210_841C0`, `func_800752D8_84288`, `func_80073DC0_82D70`.
- Runtime condition checks: `func_80075AA4_84A54`; dialogue polling: `guess_checkMissions` in `src.us/core/53F0.c`.

## Concrete interpretation: the supplied Greece entry

The sample is a sequence of byte offsets and byte values. Reading the values (the final two hex digits on each line) gives:

```text
Offset  Bytes        Parser role
00      B7           type-1 mission activation header
01      B3           game-condition opcode
02      82           type-2 failure header
03      AB 00        game-condition opcode plus one-byte parameter
05      83           type-3 success header
06      B2           game-condition opcode
07      84           command-list prefix; links to type 1
08      A2 00        command opcode plus one-byte argument
0A      85           command-list prefix; links to type 2
0B      A5 04        command opcode plus one-byte argument
```

These are byte offsets, not token indexes. The compact stream shown is `B7 B3 82 AB 00 83 B2 84 A2 00 85 A5 04`.

### `B7 B3`: activation is unconditional

`B7` creates a runtime mission-condition record of type 1 for the current mission. `B3` is a game-condition expression with no object or payload. `func_800081D4_8DD4` returns true for `B3` unconditionally. So the activation condition passes on the first runtime evaluation (subject to normal mission state checks).

When it passes, the runtime marks the mission active and executes the command sequence linked to this type-1 record. This is what the `84` section below links.

### `82 AB 00`: fail when wave 0 fails

`82` creates a type-2 (failure) record. The bytes `AB 00` form one game-condition expression: operator `AB`, parameter 0. The evaluator implements `AB` as `func_8000789C_849C(0) == 3`; that helper reads `D_80048038[0]`.

The trigger code establishes the status values: a wave gets status 1 when spawned, status 2 when successful, and status 3 when failed. Therefore `AB 00` means **wave index 0 has failed**. The `00` is the wave index, one byte wide.

Type-2 conditions are considered only once this mission is active. When this expression becomes true, the failure handler runs the command list linked by `85`, removes the mission from the active bit set, and adds it to the failed bit set. It also performs mission failure effects based on that mission's map/state data.

### `83 B2`: success condition that never passes

`83` creates a type-3 (success) record. `B2` is a payload-free game-condition opcode, and the evaluator returns false for `B2`. It does not mean “no condition” or “condition passed”. As written, this success record cannot trigger. No `86` command list appears in the supplied sample, either.

### Important linker mapping: `84` is activation, `85` is failure

Although it is tempting to read `84` as a success list, the code does not link it that way. `func_80075148_840F8` links `84` commands to records whose type is 1 (`B7`). `func_80075210_841C0` links `85` commands to type 2 (`82`). `func_800752D8_84288` links `86` commands to type 3 (`83`). So the sample's comments should be read as:

- `84`: activation command list
- `85`: failure command list
- `86`: success/special command list

### `84 A2 00`: Greece dispatcher entry 0, run on activation

`A2 00` is an encoded two-byte command: opcode `A2`, argument 0. The command executor transforms the argument as `(arg1 - currentLevel * 20) + 20`. Greece is `LEVEL_GREECE == 1`, so the value passed to `func_802D4CD0_18D7E0` is `(0 - 20) + 20 = 0`.

The Greece dispatcher routes values below `0x14` through `D_802DDBF4_196704`. Entry 0 is `func_802D4ECC_18D9DC`. That routine registers/checks a Greece callback involving flag `0x0B` and a nearby positional trigger, and can start dialogue 0x100. Thus this command is not a “mission complete” marker: it starts Greece-specific action 0 when the activation condition passes.

### `85 A5 04`: dialogue index 4, run on failure

`A5 04` encodes opcode `A5`, argument 4. Both command opcodes `A4` and `A5` route to `func_80018D7C_1997C`, using `(currentLevel * 50 + arg1) - 50`. For Greece (`currentLevel == 1`), this is `(50 + 4) - 50 = 4`.

So, if wave 0 fails, the failure command requests dialogue index 4. `func_80018D7C_1997C(4)` looks up the dialogue through the separate dialogue index/data tables and starts it when the dialogue system is available. The text itself is not embedded in these mission bytes.

### Resulting behavior for this entry

1. `B7/B3` passes unconditionally. Mission activation runs `A2 00`, invoking Greece dispatcher entry 0.
2. The mission's failure watcher checks whether wave 0 has status 3.
3. If wave 0 fails, `85/A5/04` requests dialogue index 4, then the game marks this mission failed and applies the failure handler's map/effect behavior.
4. The apparent success record `83/B2` never passes, so this byte sequence has no working success route as shown.

This interpretation identifies the condition and action semantics from `func_800081D4_8DD4`, the wave status writes in `trigger.c`, the three command linkers and executor in `missions.c`, and the Greece dispatcher in `18D7E0.c`. The precise contents of dialogue index 4 are stored separately.

