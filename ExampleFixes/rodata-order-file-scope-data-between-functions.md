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

#### Refinement: the split is "all strings first, then non-string data"

`53F0.c` shows the sharper version of the rule. Non-string literals that belong to a function body (float/double constants, jump tables) are **not** in that leading source-ordered block — they are emitted later, at the function's position in the code stream. So the layout of a TU is:

1. every string literal of the TU (file-scope and in function bodies), in source order, with non-string *file-scope* data inserted at its declaration position;
2. then, per function in order, that function's non-string literals and jump tables.

That means a non-string file-scope const that has to follow the strings must sit **after the last string literal of the TU but before the first function that owns a non-string literal**. Better still, inline it and let it become one of those function literals:

```c
// 53F0.c target rodata: "Frontend" ... "Remember to give power up %d\n",
//                       then -10000.0f/10000.0f (0x37D20/0x37D24), then 319.0f and the jump tables.
// func_800053A0_5FA0 is the first function of the TU that owns a non-string literal,
// so its float arguments are the first entries of block 2 -> exactly 0x37D20/0x37D24.
guOrtho(D_8005BB38, 0.0f, 320.0f, 240.0f, 0.0f, -10000.0f, 10000.0f, 1.0f);   // was D_80037120_37D20_R, D_80037124_37D24_R
```

(the `0.0f`/`320.0f`/`240.0f`/`1.0f` arguments are materialised as immediates, so only `-10000.0f`/`10000.0f` reach `.rodata`.) Deleting the `const f32 D_80037120_37D20[]` / `D_80037124_37D24[]` declarations also means removing their `_R` scalar aliases from `undefined_syms.us.txt` / `undefined_syms.eu.txt`, otherwise ld fails with `undefined symbol ... referenced in expression`.

Keeping the arrays as file-scope declarations at the top of the file instead would have emitted them *before* the level-name strings that the pointer tables now produce, shifting the whole .rodata. Verified on `src.us/core/53F0.c` (`bh.us.z64: OK` and `bh.eu.z64: OK`).


