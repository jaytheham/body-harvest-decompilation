```asm
/* func_8007E12C_4E5DC: byte-pointer table casts evaluate the base first. */
lbu     t4,5(v1)
lui     t3,0x800d
lw      t3,0x7a20(t3)
sll     t5,t4,3
addu    t0,t3,t5
```
->
```c
/* Use the actual eight-byte animation binding and typed table globals.
   Keep the animation, object-selection, and audio descriptor locals separate. */
typedef struct {
    FrontendStreamHeader* stream;
    u8 objectIndex;
    u8 flags;
    u8 pad6[2];
} FrontendMovieResource;
extern FrontendMovieResource* D_800D7A20;
extern FrontendCamEntry* D_800D7A30;
argEntry = &D_800D7A20[entry->unk5];
dst = &D_800D7A1C[argEntry->objectIndex];
dst->unk8 = func_800809DC_50E8C(argEntry->stream->frameCount);
```
->
```asm
lbu     t3,5(v1)
lui     t5,0x800d
lw      t5,0x7a20(t5)
sll     t4,t3,3
addu    t0,t4,t5
```

```asm
/* Reusing the loop byte i for the constant gives the right branch,
   but puts the saved opcode in the wrong temporary stack slot. */
sw      v0,0x4c(sp)
/* ... */
beq     a3,s8,mode_update
/* ... */
lw      t3,0x4c(sp)
```
->
```c
/* Declare the dedicated byte after the other locals. A word-sized one
   reverses the BEQ operands; using the loop iterator changes spill allocation. */
s32 op;
u8 one;
/* Event 3: */
arg = entry->unk5;
one = 1;
if ((one == arg) || (arg == 2)) {
    func_8007FBC8_50078(arg);
    arg = ((Unk8007E12CEntry8*)D_800D7A54)[D_800D7A5C].unk5;
}
D_800D7970 = arg;
```
->
```asm
sw      v0,0x48(sp)
/* ... */
beq     a3,s8,mode_update
/* ... */
lw      t3,0x48(sp)
/* Full US and EU ROM checksums match. */
```

```asm
/* Keeping all explicit constants in the interpreter's translation unit
   places the generated jump table after its following constants. */
lw      t2,-0x1448(at)
```
->
```c
/* Keep the five diagnostics shared in 40720.c. Generate the two floats
   immediately after its switch table; move the following 512 bytes to
   shared data_7EEF0.c. Both linker layouts use four-byte input alignment,
   with the new constant file beginning on its original 16-byte boundary. */
D_800D7974 = 1.33333337f;
D_800AC0E4_7C594 = 0.00999999978f;
/* US: table 0x7EE5C, floats 0x7EEE8, data file 0x7EEF0.
   EU: table 0x7F9BC, floats 0x7FA48, data file 0x7FA50. */
```
->
```asm
lw      t2,-0x1654(at)
/* Table entries, diagnostics, and following constants match byte-for-byte
   in both complete ROMs; no original target assembly is modified. */
```
