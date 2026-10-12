# Nested byte masks can preserve IDO temporary register numbering

Matched `func_80074B2C_83ADC` using IDO 5.3 -O2 -mips2 -32.

When the instruction sequence already matched, the flag-setting branch and subsequent packed mission-index merge used temporary registers one or two positions earlier than the target. The following forms reproduced the target:

```c
entry->flags = (entry->flags & 0xFF7F) | 0x80;
entry->flags = (D_80149B48 & 0xFF & 0x7F) | (entry->flags & 0xFF80);
```

The first mask is optimized out when setting bit 7, but affects temporary numbering: `lbu t9; ori t0; sb t0`, rather than `lbu t8; ori t9; sb t9` from plain `|= 0x80`.

The nested `& 0xFF & 0x7F` emits a single `andi 0x7F`, while shifting the merge temporaries to the target `t2` through `t6`. Plain `& 0x7F` leaves them one register earlier. Casting the global halfword to `u8` instead changes the load to `lbu` at offset 1 and does not match the target `lh`.

The entry is a four-byte `MissionInfo` structure with a flags byte followed by a three-byte command. Struct indexing reproduces the original four-byte stride without manual pointer arithmetic. The complete ROM verified `build/bh.us.z64: OK`.