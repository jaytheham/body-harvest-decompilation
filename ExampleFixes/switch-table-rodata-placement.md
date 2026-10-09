# IDO switch tables and rodata ordering

When enabling a C `switch` whose placeholder table sits between globals in an overlay, IDO may emit the compiler-generated jump table after the translation unit's globals. The table can therefore reference the wrong ROM address even when the switch control flow matches.

For `func_8008B1A8_173268`, deleting the placeholder table let IDO place its 9-entry table at the target address. A neighboring assembly function still needed the `1.2` double that followed the placeholder, so that constant was moved to the next translation unit's rodata immediately after the current object's rodata. An 8-byte zero pad preserved the next named symbol's target address. Check the linker map and compare ROM bytes around both the generated table and the moved data; function assembly diff alone does not show table contents.

Also inspect table entries against the target before trusting source case labels. The target's final three entries showed that mode 6 is empty, mode 7 calls one handler, and mode 8 calls the next. A `%d` in a default warning format can reveal a missing variadic argument that also needs to remain live in the switch register.

## When the table sits mid-rodata, the function is a batch dependency

`func_80086D88_16EE48` (`overlay_gameplay/inside/16AF30.c`, 66 instr, `// CURRENT(5)`) is the case where the table cannot be moved by deleting one placeholder. The TU declares f64 constants, then `jtbl_800A5488_18D548` (this function), then `jtbl_800A54AC_18D56C` (a *different*, still-unmatched function in the same file) and an `f64 1.2`. With the guard off and the two body fixes below the function is **instruction-identical** to the target (`ins_diff.py` delta +0, 66 vs 66) and asm-differ reports **5**, but `gate` still fails: the only remaining difference is the table address.

IDO emits a compiled function's generated jump table after **all** declared rodata in the TU. ROM bytes prove it - ours lands at the end, the target's is in the middle:

    target 0x18D540: 406fe000 00000000 | 80086ddc..80086e5c (jtbl_800A5488) | 8008b3b0.. (jtbl_800A54AC) | 3ff33333..
    ours   0x18D540: 406fe000 00000000 | 8008b3b0..8008b420 (jtbl_800A54AC) | 3ff33333.. | 80086ddc.. (generated, last)

So the `lw t8,%lo(jtbl)(at)` immediate can only match once the *other* rodata after it in the target is also compiler-generated - i.e. the still-unmatched function owning `jtbl_800A54AC` and the owner of the `1.2` double must be matched too. Deleting this function's placeholder does not help (still 5); it just removes 36 declared bytes. Treat a mid-rodata switch table as a batch dependency and check the ROM bytes before sinking attempts into the body.

Two body fixes are required to reach the 5 at all (both cost instructions otherwise): the struct field is `unk0`, not `pad0` (`UnkFB6F8Entry`, `structs.us.h`), and the five `handler(i & 0xFF)` calls must read `handler((u8)i)` so IDO emits a single `andi a0,s0,0xFF` in the jal delay slot; `i & 0xFF` makes IDO build the mask in a fresh temp plus two `move`s for cases 1, 2 and 8 (+6 instructions). `func_80089834_1718F4` also needs a prototype in `functions.us.h` because it is defined later in the same TU.

## Matching instructions can still hide incorrect case labels

For `func_802D4F74_18DA84`, enabling the C implementation and removing the placeholder table produced an exact instruction match, but the full ROM checksum still failed. The source assigned labels 0 through 8 to physically ordered handler blocks. The original table instead mapped those blocks to cases `0, 1, 2, 8, 3, 4, 5, 6, 7`.

Relabeling the cases while preserving the order of their bodies fixed the compiler-generated table and yielded `build/bh.us.z64: OK`. Read the original jump table before trusting the case labels in unmatched C. Function instruction diffs compare dispatch code and handler bodies, but do not validate the table entries in rodata; the full ROM build catches this difference.

## Second instance: a 14-case frontend dispatcher table shifted 0x760

`func_80070270_40720` (`overlay_gameplay/frontend/40720.c`, 72 instr, `// CURRENT(5)`) is the frontend overlay entry dispatcher. Unwrapped it compiles and the marker is honest: `asm-differ` reports **5** and the whole stream is instruction-identical to the target apart from **one row** — the generated table's base address.

    target 40740: lw t6,%lo(jtbl_800AE4E0_7E990)($at)   -> 0x800AE4E0
    ours   40740: lw t6,-0x13c0($at)                     -> 0x800AEC40   (0x760 later)

The prologue dispatch (`sltiu`/`beqz`/`sll`/`lui at,%hi(jtbl)`/`addu at,at,t6`/`lw`/`jr`), all fourteen case bodies and the shared `move v0,zero`/`lw ra,0x14`/`addiu sp,sp,0x18` epilogue match exactly; `ins_diff.py -noregs` reports 72 vs 72, delta +0.

The target table sits inside a generated-table cluster (`jtbl_800AE4E0_7E990` at ROM 0x7E990, then `D_800AE518_7E9C8`, then `jtbl_800AE528_7E9D8` — that last one belongs to `func_800731A8_43658`, still unmatched); ours lands beside a *different* cluster (0x800AEC40, near `jtbl_800AEC88_7F138`). This is the same diagnosis as `func_80086D88_16EE48`: the TU's compiler-generated tables can only land at the target addresses once the co-tenant switch functions are compiled too, so the function is a **batch dependency**, not solo work. Add `func_80070270_40720` to the batch list — it depends on `func_800731A8_43658` (itself a DESIRED "High" entry) and the file's other switch owners. Before sinking attempts into such a body, check whether the only diff is the `lw %lo(jtbl)` immediate.

## Third and fourth instances: deleting the placeholder moves the table the *wrong* way (worker B, seam run 19)

`func_802D9B08_2BBF38` (siberia `2B7100.c`, 61 instr, `// CURRENT(5)`) and `func_80079330_1613F0`
(`overlay_gameplay/inside/158330.c`, `// CURRENT(5)`) are the same class as the two above, and each is
**exactly one differing row** - the generated table's base address:

    func_802D9B08: target lw t5,0x300c(at) -> 0x802E300C ; ours 0x3058 -> 0x802E3058
    func_80079330: target lw t3,0x4b78(at) -> 0x800A4B78 ; ours 0x4bb0 -> 0x800A4BB0

Measured, on `func_802D9B08_2BBF38`: **deleting the `jtbl_802E300C_2C543C[13]` placeholder made the
score worse (5 -> 10)**, not better - the generated table moved but not to the target address, and a
second row diverged. The target-vs-ours delta (0x4C on siberia, 0x38 on 158330) equals exactly the
declared rodata block sitting between the two table addresses (the placeholder plus the doubles/floats
that follow it), which is the positive evidence for the batch diagnosis: the generated table can only
land at the target address once every datum between is itself compiler-generated. Confirm by summing
the declared items in `asm/data/<module>/<file>.rodata.s` over that address span before spending a
body attempt. Do **not** re-tread placeholder deletion on these two.

## Fifth instance (worker B, seam run 38): the delta equals the declared block, exactly

`func_802D7980_1F0690` (java `1ED9E0.c` 1347, 122 instr, `// CURRENT(5)`) is the same class, and it
confirms the arithmetic rule above on a clean measurement:

    target 1f06b4: lw t6,%lo(jtbl_802E0F20_1F9C30)($at) -> 0x802E0F20
    ours   1f06b4: lw t6,0xfa8($at)                     -> 0x802E0FA8   (0x88 later, placeholder kept)
    ours   1f06b4: lw t6,0xf70($at)                     -> 0x802E0F70   (0x50 later, placeholder deleted)
    ours   1f06b4: lw t6,0xf70($at)                     -> 0x802E0F70   (0x50 later, consts moved after the function)

The 0x50 is exactly the eleven declared `const f64/f32` initialisers sitting between the target table
and the end of the file's rodata (`D_802E0F58_1F9C68` .. `D_802E0FA0_1F9CB0`, 76 bytes aligned to 80),
and the 0x88 includes the 0x38 placeholder as well. Two negative results worth not repeating:
deleting the placeholder and **moving the trailing const declarations to after the function** (to test
a source-order hypothesis) both leave the address unchanged - IDO emits declared data in source order
first and appends every generated table after **all** of it, so the table's position is independent of
where the switch's function sits in the file. The only lever that moves it is a co-tenant datum being
compiler-generated rather than declared, i.e. the batch dependency.

Check the class **before** spending attempts: `grep -l "jtbl_" asm/nonmatchings/<module>/<file>/*.s`
lists the file's switch owners, and `CURRENT(5)` plus `diff` of the ROM bytes around the two table
addresses over that span is the whole diagnosis. See also the same-file test: if the delta equals the
declared items in the span, stop and batch the file's switch owners together.

## Overlay layout: a file's `.text` size decides where its `.data` lands

The overlay linker script lays a file's sections out **consecutively** inside the overlay segment (`bh.ld`, per-overlay blocks — `.text`, then `. = ALIGN(., 16)`, then each file's `.data`):

```
_overlay_gameplay_insideSegmentTextStart = .;
build/src.us/overlay_gameplay/inside/16AF30.c.o(.text);
. = ALIGN(., 16);
_overlay_gameplay_insideSegmentTextEnd = .;
_overlay_gameplay_insideSegmentDataStart = .;
overlay_gameplay_inside_16AF30_c = .;
build/src.us/overlay_gameplay/inside/16AF30.c.o(.data);
...
```

So **the size of a file's `.text` decides the address of everything in its `.data` and of every data block that follows it in that overlay.** Unwrapping a function (turning its `#pragma GLOBAL_ASM` into compiled C) changes `.text` by the alignment-quantised delta, and every data symbol then resolves to a different address than the ROM's.

Measured on `func_80083014_16B0D4` (`overlay_gameplay/inside/16AF30.c`, 31 instr):

| build | `16AF30.c.o` `.text` | ROM bytes at file `0x18d000` |
|---|---|---|
| guard restored (`GLOBAL_ASM`) | `0x8c30` | `4066c16c16c16c17 4036800000000000` (= baserom, whole ROM byte-identical) |
| committed guess unwrapped (32 instr) | `0x8c40` (+0x10) | `4060400000000000 4056c16c16c16c17` — the doubles that belong at `0x18cff0` |

The ROM's `0x18d030` is the string `"ieNormVecF3()  {0,0,0} -> {0,0,0}\n"`; with the guard unwrapped the whole block sits `0x10` higher, so `D_800A4F70_18D030` resolves to `0x800A4F80` and the `osSyncPrintf` call emits `addiu $a0,$a0,0x4f80` where the target has `0x4f70`. `.rodata` was **unchanged in size** (`0x570` both ways) — the delta came entirely from `.text` + `ALIGN`.

### Rule

- While an unwrapped function's **code size differs from the ROM's**, `check`/`asm-differ` shows `%hi`/`%lo` differences on *every data reference in that file* (and in files after it). Those rows are **layout noise, not source differences** — do not chase them. They vanish only when the function's code size matches the ROM's.
- Corollary: such a function cannot be matched while its length is wrong — the data it reads has moved. Fix the instruction count first, then re-read the data rows.
- Rebuild and compare the two builds' sections when a data-immediate row appears for no obvious reason:

```sh
mips-linux-gnu-objdump -h build/src.us/<path>.c.o | grep -E 'text|rodata|data'
python3 -c "b=open('baserom.us.z64','rb').read(); u=open('build/bh.us.z64','rb').read(); print(b==u, b[o:o+16].hex(), u[o:o+16].hex())"
```

### The residual is one duplicated load, not a source shape

Re-measured (seam2 run 37): with the guard off the body compiles to **32** instructions against the
target 31, and the only difference is a duplicated `lw $a1,0x18(sp)`:

    target: c.eq.d f4,f6 | lui a0,%hi | lw a1,0x18(sp) | bc1f | nop | jal osSyncPrintf | addiu a0,a0,%lo | lw t7,0x18(sp)
    ours:   c.eq.d f4,f6 | mov.s f12,f0 | lui a0,%hi | addiu a0,a0,%lo | lw a1,0x18(sp) | bc1f | nop | jal | lw a1,0x18(sp) | lw t7,0x18(sp)

The target keeps the `%lo` half in the `jal` delay slot; our compile hoists it before the branch and
fills the delay slot with a redundant reload of `$a1`. Every other row is an encoding alias, so the
asm-differ score is pinned at **702** by the layout noise above regardless of the body.

13 body variants all measured **32** instructions (score 702 for every one): struct copy vs three field
copies, copy-before-print, `const char`/`(void *)` casts on the format arg, a pointer local
`Vec3f *src`, `f64 d`/`f64 z` compare temps, reversed `0.0 == (f64)t`, `if (0.0 == ...)`, if/else with
and without `return`, and inlining the magnitude call into the `if`. The count is therefore not
reachable by body shape - the divergence is cfe scheduling of the `%hi`/`%lo` split. The function
stays a park while its length is 32; do not re-tread these variants.

## Sixth and seventh instances (seam2 run 13): both land on the declared-block delta

Two more mid-rodata switch owners in `overlay_gameplay/inside/`, each measured by unwrapping only (no
body edits), and each confirming the arithmetic rule above:

    func_80072E88_15AF48  (158330.c, 6-entry `jtbl_800A4A88_18CB48`, recorded marker CURRENT(0))
      target 15af68: lw t7,0x4a88(at)  -> 0x800A4A88
      ours   15af68: lw t7,0x4bb0(at)  -> 0x800A4BB0   (+0x128, placeholder kept)
      ours   15af68: lw t7,0x4b98(at)  -> 0x800A4B98   (+0x110, placeholder deleted)
      unwrap check = 5 (one row). Deleting the 24-byte `jtbl_800A4A88_18CB48[]` placeholder moved ours
      the *wrong* way by exactly 24 bytes, the same signature as the siberia pair - do not re-tread it.
      The recorded `CURRENT(0)` (a decomp.me scratch claim) is stale: the on-tree score is 5.

    func_8007FC74_167D34  (167C90.c, 6-entry `jtbl_800A4F08_18CFC8`, recorded marker CURRENT(30), honest)
      target 167e54: lw t8,%lo(jtbl_800A4F08_18CFC8)(at) -> 0x800A4F08
      ours   167e54: lw t8,0x4f70(at)                     -> 0x800A4F70   (+0x68)
      unwrap check = 30; the only non-branch diff row is this `lw` immediate.

Both are batch dependencies - the declared items after the table address must be compiler-generated
before the table can land (six `f64` doubles plus the next `jtbl` placeholder follow `0x800A4F08` on
167C90; strings/doubles/floats follow `0x800A4A88` on 158330). Add both to their file's switch-owner
batch list. Cheap triage before any body attempt: `grep -l "jtbl_" asm/nonmatchings/overlay_gameplay/inside/<file>/*.s`.

## The case count sets the table extent - empty cases are not optional

`func_80077A5C_15FB1C` (`overlay_gameplay/inside/158330.c`, 57 instr, `// CURRENT(170)`) is a
four-handler dispatcher (`D_800E65BC[arg1].unkC`, cases 1-4). The wrapped guess listed only
cases 1-4 and measured **2435**: IDO emitted a **compare chain** (`li`/`beq` per case) instead of a
jump table, because the target's dispatch is `sltiu at,t9,8` - an **eight**-entry table. Adding the
empty cases 5-8 (`case 5: case 6: case 7: case 8: break;`) switched IDO to the table and took the
score **2435 -> 210** in one edit; nothing else in that edit moved it.

Two further levers on the same function: the selector must be the **struct field**
(`switch (D_800E65BC[arg1].unkC)`, `Unk80070F7CObj`, `structs.us.h`) rather than the raw
`*(s16 *)((u8 *)&D_800E65BC[arg1] + 0xC)` - the typed read fixes the head's temp assignment
(`$t6` global / `$t7` index) and took **210 -> 170**.

The residual at 170 is this note's batch class plus a one-slot temp rotation, and it is not
reachable by source shape: the table lands at **0x4BB0** where the target's is at **0x4AE8**
(delta **0xC8**), because `jtbl_800A4B08_18CBC8`/`jtbl_800A4B5C_18CC1C` and their consumers earlier
in the same TU are still unmatched; deleting this function's own placeholder made it worse (225).
Do not re-tread the case-extent or the selector spelling - they are settled; the file needs its
remaining switch owners matched together.
