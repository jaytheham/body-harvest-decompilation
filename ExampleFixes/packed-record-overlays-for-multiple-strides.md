### Overlapping views for packed records with multiple index strides

When one packed record contains several different indexed regions, indexing the record array directly can select the wrong stride. For the Body Harvest route records, the enclosing path record is `0x40` bytes, while the routine indexes coordinate triples every `0x0C` bytes and adjacent heading/frame words every `4` bytes.

Keep the record's real `0x40`-byte layout for data declarations, then define a union view for the routine's indexed subregions:

```c
typedef union {
    struct { s16 points[2][6]; } coordinates;
    struct { u8 pad[0x14]; s32 headings[2]; } heading;
    struct { u8 pad[0x20]; s32 frames[2]; } animation;
} PathView;
```

Use the view over the same record pointer. This lets IDO compile `points[index][axis]` with a `0x0C` row stride, `headings[index]` with a `4`-byte stride from offset `0x14`, and `frames[index]` with a `4`-byte stride from offset `0x20`, without changing the serialized record size or initializer layout.

Confirm each view against the target's actual data words and indexed load instructions. A union view is appropriate only when the accesses intentionally overlap the same bytes; it should not be used to paper over an unknown record layout.
