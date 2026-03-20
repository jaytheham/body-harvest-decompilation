### Struct padding for alignment

When defining structs based on assembly access patterns, remember to add explicit padding for alignment:

**Without padding (incorrect):**

```c
typedef struct {
    u8 unk0;
    s32 unk4;    // Misaligned!
    void* unk8;
} Unk;
```

**With padding (correct):**

```c
typedef struct {
    u8 unk0;
    u8 pad1[3];  // Explicit padding for alignment
    s32 unk4;
    void* unk8;
} Unk;
```

The assembly will show `lbu` at offset 0x0, `sw` at offset 0x4, and `sw` at offset 0x8. The padding bytes ensure field offsets match the assembly exactly.
