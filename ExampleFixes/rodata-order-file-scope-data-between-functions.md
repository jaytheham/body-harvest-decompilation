### IDO .rodata order: file-scope data is emitted at its source position, so non-string consts must be moved when strings are inlined

`tools/windows/ido/cc.exe -S` shows the rule directly: every `.rdata` item (file-scope consts **and** each function's string literals) is emitted in source order, in one block before `.text`. Within a single function all of its string literals are emitted as one group (in source order), followed by that function's other constants.

```c
int f(void) { os_stub("func1 string\n"); }
const struct S midTop = { 0x11111111 };   // file-scope data declared between two functions
int g(void) { os_stub("func2 string\n"); }
```
emits
```asm
$$6:     .ascii "func1 string\X0A\X00"
midTop:  .word  286331153
$$11:    .ascii "func2 string\X0A\X00"
```

#### Consequence when inlining string consts

If a TU has non-string rodata (e.g. `const Unk80154082 D_800378CC_384CC = {'O','K',0};`) sitting **between** string consts in the target rodata, you cannot simply move the strings into the calls: all file-scope consts would then be emitted *before* every inlined literal. Move the non-string const down to the exact point in the source where it is needed — between the two function definitions that bracket it in the target rodata:

```c
// loader.c: target rodata is
//   "  Start of anim data: %x\n" ... "                Size: %x (%.2fK)\n"   <- loadLevel()
//   "OK", "**** ERROR ****"                                                <- the two structs
//   "         postData:" ...                                               <- loadLevelData()
void loadLevel(s32 arg0) { ... }

/* declared here, not at the top of the file, to keep its place in .rodata */
const Unk80154082 D_800378CC_384CC = {'O', 'K', 0};
const Unk80378D0 D_800378D0_384D0 = {0x2A2A2A2A, 0x20455252, 0x4F52202A, 0x2A2A2A00};

void loadLevelData(u8 arg0) { ... }
```

A `static const` declared inside the function does **not** work: function-local statics are emitted after all of that function's string literals.

Verified on `src.us/core/loader.c` (~90 strings, `build/bh.us.z64: OK` and `build.eu/bh.eu.z64: OK`). Duplicated literals are never merged by IDO, so repeated texts such as `"------------------------------\n"` keep one rodata entry per call site.
