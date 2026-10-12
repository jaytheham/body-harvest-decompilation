# Mission System — Data Format & Control Values

Derived from `src.us/overlay_gameplay/outside/missions.c`.

---

## Overall Mission File Structure

The mission data is a binary blob loaded into memory (starting at `D_80224680`) and parsed sequentially by `func_800756DC_8468C`. The top-level layout is:

```
[ Header Section ]
[ Character Assignments ]   (optional, prefix 0xA8)
[ 0x87 separator ]
[ Random Object Tables ]    (optional, prefix 0xB0)
[ 0x87 separator ]
[ Mission Definitions ]     (one per mission, terminated by 0x87)
[ 0x87 separator ]
[ Dialogue Conditions ]     (0xB7-prefixed blocks)
[ 0x87 separator ]
[ Random Object Weight Pairs ]
```

---

## Section 1 — Header Validation

The file must start with one of:

| Byte | Meaning |
|------|---------|
| `0xA8` | Character assignment section follows |
| `0x90` | Mission has tile data |
| `0xB0` | Mission has random objects |

If none are present: `"**** ERROR: NOT A MISSION FILE ****"` and parsing is skipped entirely.

---

## Section 2 — Character Assignments (`0xA8`)

```
while (next byte == 0xA8) {
    read 0xA8           // prefix byte (consumed)
    read u16 characterId // stored in D_8004D160[slot*2]
}
```

- Each mission can assign up to **16** characters (`D_80149B44` max).
- Characters stored as a pair `[id, spawnedInstanceIndex]` in `D_8004D160[]`.

---

## Section 3 — Random Object Tables (`0xB0`)

```
while (next byte == 0xB0) {
    read 0xB0                   // prefix byte (consumed)
    read weightedEntryBlock()
}
```

The weighted entry block (parsed by `func_800747A8_83758`):

```
sum = 0
while (next != 0x87) {
    weight  = readByte()        // weight value
    sum    += weight
    object  = readObject()      // 3-byte mission object entry
}
randomValue = rand() % sum
// Walk the entries subtracting weights until randomValue < 0
// Store the selected entry
```

---

## Section 4 — Per-Mission Definitions

Each mission is parsed in a loop until `0x87` terminator. Max **24** (`0x18`) missions.

```
[ Tile Data ]         (0x90-prefixed, or implicit empty)
[ Mission Info ]      (0xAC/0xAE-prefixed entries)
[ Mission Conditions ] (0xB7/0x82/0x83-prefixed)
[ Condition Type ]     (0x84, 0x85, or 0x86 — optional)
[ End of mission ]
```

### 4a. Tile/Map Data (`0x90`)

Parsed by `func_80074970_83920`.

```
chunkCount = 0
while (next != 0xB7 && next != 0xAC && next != 0xAE) {
    if (next == 0x90) {
        chunkCount++
        read 0x90       // consumed
        i = 0
    }
    tileData[i++] = readByte()
    if (tileByte == 0x80 || tileByte == 0x81) {
        tileData[i++] = readByte()  // extra coordinate byte
    }
}
```

- Stored in `D_80149B60[missionId][chunk][i]`.
- If `chunkCount >= 4`, the tile data is considered "complete" and the mission is validated.

### 4b. Mission Info Entries (`0xAC` / `0xAE`)

Parsed by `func_80074B2C_83ADC`.

```
while (next == 0xAC || next == 0xAE) {
    flag = (next == 0xAE) ? setBit7 : clearBit7
    read flag byte (consumed)
    entryIndex++
    store: entry[0] = (missionId & 0x7F) | (flag & 0x80)
    entry[1..2] = readObject()
}
```

| Prefix | Meaning |
|--------|---------|
| `0xAC` | Mission info **start** (bit 7 = 0) |
| `0xAE` | Mission info **continuation** (bit 7 = 1) |

- Each entry is **4 bytes** in `D_8014CEF0[]`.
- Max **64** (`0x40`) entries.

### 4c. Mission Conditions (`0xB7` / `0x82` / `0x83`)

Parsed by `func_80074FA8_83F58`. Condition types stored in `MissionCondEntry.unk0`:

| Prefix | `unk0` | Meaning |
|--------|--------|---------|
| `0xB7` | 1 | **Always-active** — unconditional check |
| `0x82` | 2 | **Failure** — mission fails when conditions met |
| `0x83` | 3 | **Success** — mission completes when conditions met |

**`MissionCondEntry` structure** (6 bytes):

```c
typedef struct {
    u8 unk0;  // condition type (1=always, 2=fail, 3=success, 4=dialogue)
    u8 unk1;  // mission ID
    u8 unk2;  // game condition index reference
    u8 unk3;  // sub-condition count
    u8 unk4;  // command index to execute on trigger
    u8 unk5;  // dialogue format type (for dialogue conditions)
} MissionCondEntry;
```

### 4d. Condition Command Linkers (`0x84` / `0x85` / `0x86`)

| Byte | Function | Purpose |
|------|----------|---------|
| `0x84` | `func_80075148_840F8` | Links **success** conditions (type 1) to commands |
| `0x85` | `func_80075210_841C0` | Links **failure** conditions (type 2) to commands |
| `0x86` | `func_800752D8_84288` | Links **special** conditions (type 3) to commands |

Each linker:
1. Finds all conditions for current mission matching its type
2. Sets their `unk4` field to the current command index
3. Reads command opcodes (`0x9C`–`0xA5` range) via `func_8007463C_835EC`
4. Writes a `0xA9` terminator

---

## Section 5 — Dialogue Conditions

Parsed by `func_800753A0_84350`. Max **64** (`0x40`) entries in `D_8004D1C8[]`.

```
while (next == 0xB7) {
    read 0xB7
    entry->unk0 = 4             // dialogue type
    entry->unk2 = gameCondIndex

    formatByte = readByte()
    if (formatByte == 0xB9) {
        entry->unk1 = readU16()     // dialogue ID
        if (next == 0x94) {
            // Timer/seconds data
            read 0x94 + 3 bytes
            entry->unk5 = readU16() // displayed time
        } else {
            entry->unk5 = 3         // default format
        }
        func_80074CA0_83C50()       // read game conditions
    } else {
        read 5 bytes + readU16()
        entry->unk1 = readU16()
        func_80074CA0_83C50()
    }
    read 2 bytes
    entry->unk4 = readU16() - 1
}
```

---

## Section 6 — Random Object Weight Pairs

Parsed by `func_80075574_84524`. Stored in `D_8014CFF0[]`.

```
if (next != 0x87) {
    while (next != 0x87) {
        read weightByte
        read valueByte
    }
}
```

---

## Command Opcodes

Commands are **3-byte entries**: `[opcode, arg1, arg2]`. The stream is terminated by `0xA9`. Executed by `func_80073DC0_82D70`.

| Opcode | Case | Purpose |
|--------|------|---------|
| **`0x9C`** | 0 | Call `func_800FD858_10C808(arg1)` — operate on vehicle/object |
| **`0x9D`** | 1 | Call `func_80073B30_82AE0(arg1)` — unknown spawn/action |
| **`0x9E`** | 2 | **Wave/rotation command.** If wave entry type is `0x99` (building), rotates it; otherwise spawns an alien at the wave position. `arg1` = character slot, `arg2` = wave entry index. If next stream byte is `0xB4`, reads an additional random object index. |
| **`0x9F`** | 3 | Call `func_800AF764_BE714(arg1)` — unknown action |
| **`0xA0`** | 4 | **Spawn random object near the player.** Uses player position + random offset within 511-unit spread. `arg1` = object type. |
| **`0xA1`** | 5 | **Score/money modification.** If `arg1` is `0xA5–0xAB`, calls reward function with specific amounts (10, 100, 5, 3, 8, etc.). If `arg1 < 0x65`, adds `arg1 * 100` to score; if `>= 0x65`, triggers failure. |
| **`0xA2`** | 6 | **Mission completion trigger.** Calls func with level-relative mission ID. |
| **`0xA3`** | 7 | **Flag clear.** Clears `D_8004D1B0[arg1]`. If `arg1 == 1`, resets mission state. |
| **`0xA4`** | 8 | **Cutscene trigger.** Calls func with level-relative cutscene ID. |
| **`0xA5`** | 9 | Same as `0xA4` (cutscene trigger). |
| **`0xA9`** | — | **Command terminator.** Stops execution. |

---

## Game Conditions

Parsed by `func_80074CA0_83C50`. Each entry is **9 bytes** in `D_8004D348[]`. Max **255** (`0xFF`).

```
entry[0..2] = readObject()     // subject to check
entry[8]    = condition type byte
```

### Condition Type Bytes (entry[8])

| Byte | Meaning | Extra Fields |
|------|---------|-------------|
| `0x88` | Prefix consumed before object read | — |
| `0x89` | **Tiles-from comparator** (distance to tiles) | `entry[6]` = u16 value; followed by `0x8B` expected; then target object |
| `0x8A` | Alternate tiles-from comparator | Same as above |
| `0x91` | Comparator variant | Followed by object target |
| `0x92` | Comparator variant | Followed by object target |
| `0x94` | **Timer/seconds condition** | `entry[6]` = u16; followed by `0x89`/`0x8A` comparator, then `0x97` expected |
| `0xB2` | Simple condition (no object) | Just the type byte |
| `0xB3` | Simple condition (no object) | Just the type byte |

### Expected Byte Sequence for Timer Conditions

```
0x94  <u16 value>  0x89|0x8A  <target object>  0x97
```

If `0x89`/`0x8A` is missing: `"**** ERROR: TIMER COMPARATOR EXPECTED ****"`
If `0x97` is missing: `"**** ERROR: SECONDS EXPECTED ****"`

---

## Object Entry Format

Parsed by `func_80074578_83528`. A mission object is read from the stream:

| First Byte | Size | Fields |
|------------|------|--------|
| `0x98` | 2 bytes | `[type, arg]` — building instance reference |
| `0x99` | 2 bytes | `[type, arg]` — alien wave entry reference |
| `0x9A` | 2 bytes | `[type, arg]` — unknown object type |
| `0x9B` | 2 bytes | `[type, arg]` — unknown object type |
| `0xAF` | 2 bytes | `[type, arg]` — unknown object type |
| `0xAD` | 3 bytes | `[type, arg1, arg2]` — extended object reference |

---

## Key Constants & Limits

| Constant | Value | Purpose |
|----------|-------|---------|
| Max missions | 24 (`0x18`) | `D_80149B48` limit |
| Max mission conditions | 128 (`0x80`) | `D_80149B28` limit |
| Max game conditions | 255 (`0xFF`) | `D_80149B2C` limit |
| Max commands | 254 (`0xFE`) | `D_80149B30` limit |
| Max mission info entries | 64 (`0x40`) | `D_80149B34` limit |
| Max random objects | 16 (`0x10`) | `D_80149B38` limit |
| Max command objects | 16 (`0x10`) | `D_80149B40` limit |
| Max characters | 16 (`0x10`) | `D_80149B44` limit |
| Max dialogue conditions | 64 (`0x40`) | `D_80149B3C` limit |
| Max mission data size | 2048 (`0x800`) bytes | Stream from `D_80224680` |
| Command entry size | 3 bytes | `[opcode, arg1, arg2]` |
| Random object entry size | 3 bytes | `[type, arg1, arg2]` |
| Game condition entry size | 9 bytes | `D_8004D348[]` |
| Mission info entry size | 4 bytes | `D_8014CEF0[]` |
| `MissionCondEntry` size | 6 bytes | `D_801494C0[]` / `D_8004D1C8[]` |

---

## Level-to-Mission-ID Mapping

From `D_8013BAC0_14AA70[5][4]`:

| Level | Mission IDs |
|-------|-------------|
| 1 (Java) | 3, 9, 18, — |
| 2 (Greece) | 4, 8, 9, 16 |
| 3 (Indonesia) | 6, 12, 18, — |
| 4 (USA 1955) | 1, 6, 9, 38 |
| 5 (USA 2017) | (none) |

The `D_8013BA90_14AA40` array `{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 0}` likely maps mission indices to internal IDs or completion order.

---

## Runtime Condition Checking

Each frame, `func_80075AA4_84A54` iterates all mission conditions in reverse order:

1. **Type 1 (always-active):** If the mission is NOT in the completed set (`D_8004D150`), NOT in the failure set (`D_8004D154`), AND NOT in the success set (`D_8004D158`), it evaluates all sub-conditions. If all pass:
   - Executes the linked command sequence via `func_80073DC0_82D70`
   - Marks the mission as completed

2. **Type 2 (failure):** If the mission IS in the completed set, evaluates conditions. On pass, calls `func_8007643C_853EC` which plays failure effects/music and executes failure commands.

3. **Type 3 (success):** Same pattern as failure, but calls `func_800765C4_85574` which plays success effects/music and executes completion commands.

After condition checking, any registered callbacks (`D_80149478[]`, max 16) are invoked.

---

## Error Messages Reference

| Error String | Trigger Condition |
|---|---|
| `MISSION COMMANDS OVERFLOW` | Command buffer exceeds 254 entries |
| `SCRATCH SPACE OVERFLOW` | Random object scratch space exhausted |
| `RANDOM OBJECT OVERFLOW` | Random object buffer exceeds 16 entries |
| `MISSION INFO OVERFLOW` | Mission info entries exceed 64 |
| `GAME CONDITION OVERFLOW` | Game conditions exceed 255 |
| `TILES_FROM EXPECTED` | Expected `0x8B` after tiles-from comparator |
| `TIMER COMPARATOR EXPECTED` | Expected `0x89`/`0x8A` after `0x94` |
| `SECONDS EXPECTED` | Expected `0x97` after seconds value |
| `MISSION CONDITION OVERFLOW` | Mission conditions exceed 128 |
| `UNKNOWN MESSAGE FORMAT IN MISSION %d` | Dialogue format ID outside valid range |
| `NOT A MISSION FILE` | Missing `0xA8`/`0x90`/`0xB0` header |
| `TOO MANY MISSIONS` | More than 24 missions defined |
