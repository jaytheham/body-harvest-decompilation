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
**exactly one differing row** - the generated tables

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
