# Global address and constant materialisation

**Shared rule.** IDO decides, per expression, whether a constant/global address is **materialised once into a (callee-saved) register** or **rematerialised (`lui $at,%hi`) at every access**. The *spelling* controls it: a named pointer local forces rematerialisation while direct/array access lets the base fold into a register, and a literal float/double becomes a literal-pool entry while a read of the file's **own declared constant** names the mapped ROM symbol. The tell is `lui $at,%hi(sym)` immediately before each store/load with `%lo(sym)($at)` as the offset, where the target uses `0($sN)` with a base built once by `lui`+`addiu`.

## A constant global address rematerialised per access (`lui $at` per load)

Symptom: `bh.sh check` reports a score in the thousands while `ins_diff.py -noregs` shows an **instruction-count surplus** (target N / ours N+k); the surplus is one `lui $at,%hi(sym)` per access through a pointer to a global struct:

    CURRENT:  lui   $at,%hi(D_8014F618)
              lwc1  $f6,%lo(D_8014F618+0x18)($at)
    TARGET:   lwc1  $f6,0x18($v1)          ; $v1 = &D_8014F618, materialised once at the top

Count it directly, no differ needed:

    mips-linux-gnu-objdump -d --no-show-raw-insn build/src.us/<rel>.c.o \
      | awk '/<func>:/{f=1;next} f&&/^$/{exit} f' | grep -c 'lui\s*at,0x0'

Measured case: `func_800A2260_B1210` (`overlay_gameplay/outside/AAA70.c`, target 522 instr / ours 552, delta **+30**, asm-differ **9730**). Ours emits **31** `lui $at,0x0` and the base register `$a1` is dead after instruction 161; the target builds `&D_8014F618` once into `$v1` and keeps it for all ~31 accesses. The +30 is exactly those extra `lui`s - not a logic or frame difference (frame `0x70` agrees). **What did not work (measured):** spelling the same accesses as an f32 pointer index (`f32 *hp = (f32 *)&D_8014F618; hp[0] ... hp[8]`) measured **9760** (up from 9730) and still **31** `lui $at` - the access spelling is not the lever; cfe folds the constant address either way.

Triage rule: when a function's score is a large multiple of its instruction-count surplus and every extra instruction is a `lui $at`, the residual is **which constant address the allocator keeps in a register** - the `global-store-at-vs-materialised-address.md` family. It is an allocation decision, so do not spend the attempt budget on pointer/array/member spellings for the same address; a shape that gives the address a genuine second use is the only untried lever.

## Direct global access vs a pointer local controls address rematerialisation

When a function writes several fields of one global through a named pointer local, IDO may **rematerialise** the address at every use instead of keeping it in a register, which costs an extra `lui` per use and can change the whole callee-saved allocation. Measured on `func_80088B9C_170C5C` (`overlay_gameplay/inside/16AF30.c`, 152 instr), whose matched chunk donor is `func_800D9294_E8244`:

```c
// pointer-local form: IDO rematerialises the address at each store
Vec3f *pos; s8 **color; f32 *scale; Unk84EECEffect *effectBase;
...
pos = &D_800FB6D0;
color = &D_800FB6DC;
scale = &D_800FB6E0;
effectBase = (Unk84EECEffect *)&D_800FB7B0;
...
pos->x = entry->unk8;   // lui $at,%hi(D_800FB6D0); swc1 $f6,%lo(...)($at)
```

compiled to a `0x38` frame with **nine** callee-saved registers and a fresh `lui $at` before every store. `asm-differ` **5284**.

```c
// direct access form: each base is materialised once into a callee-saved register
D_800FB6D0.x = entry->unk8;     // lui $s0,%hi; addiu $s0,$s0,%lo ... swc1 $f6,0($s0)
D_800FB6DC = &entry->unkE;
D_800FB6E0 = entry->unk2;
...
```

compiled to the target's exact `0x40` frame and full ten-register save set (`s0..s7, fp, ra`). `asm-differ` **5284 -> 3376** on that edit alone; with the target's loop-body store order (`x, color, y, z, scale, alpha`) a further **3376 -> 3176**.

The tell for the wrong form: the same symbol appears as a `lui $at, %hi(sym)` immediately before each store/load, with `%lo(sym)($at)` as the offset - i.e. absolute addressing - where the target uses `0($sN)` with a base built once by `lui`+`addiu`. The frame is then one callee-saved register short. This is the inverse of `function-pointer-vs-array-symbol-rematerialization.md`: there the fix was to *force* rematerialisation (function-typed symbol -> `u8[]`); here the fix is to *suppress* it by removing the pointer local and letting IDO CSE the direct base address into a register. Related: `direct-instance-access-removes-pointer-local-frame-slots.md` (same family - named pointers reserving frame slots that direct accesses do not).

## A literal where the original read the file's own declared constant

Symptom: `asm-differ` reports a small odd score (5 = one row) on a large function whose every other row already agrees - a single `%lo` difference on a `lui`/`ldc1` (or `lui`/`lwc1`) pair, with the `%hi` halves identical.

Measured on `func_802D8D68_1F1A78` (java `1ED9E0.c`, 315 instructions, 1F1A78):

    TARGET:  lui at,%hi(D_802E0F58_1F9C68) ; ldc1 $f18,%lo(D_802E0F58_1F9C68)(at)   -> 0x802E0F58
    OURS:    lui at,0x802e                  ; ldc1 $f18,0xfa8(at)                    -> 0x802E0FA8

The C read the **literal** `4000.0`; IDO emits a float/double literal as a literal-pool entry and places it wherever the translation unit's rodata lands (`0x802E0FA8` here - beside `D_802E0FA0_1F9CB0`). The original source instead read the file's **own declared constant**:

```c
const f64 D_802E0F58_1F9C68[] = { 4000.0 };   /* 1ED9E0.c:341, extern in variables.us.h */
```

so the target's instruction names that symbol and lands on its mapped address. Writing `D_802E0F58_1F9C68[0]` in place of the literal moved the score **5 -> 0** (one edit, gate PASSED). **Rule.** When a small score is exactly one `%lo(...)` difference inside an otherwise identical function, and the translation unit declares a constant holding that same value, replace the literal with a read of the declared symbol (`X[0]` for the `f64[]` / array form used here). Do **not** try to move the pool entry: the pool address is a function of the whole TU's rodata layout, and the declared symbol already sits at the ROM's address. Where it comes from: a sibling-overlay donor body uses a literal where the target overlay reads its own constant, so a mechanical transplant carries this one row with it (here the greece donor's slot is `D_802DE400_196F10`, the java target's is `D_802E0F58_1F9C68`); substituting the *name* is not enough when the donor spells the value as a literal, because then there is no name in the donor's C to substitute.

### Counter-case: a literal read *inside a loop across calls* cannot simply become the symbol (measured)

Measured on `func_8008F1E0_5F690` (`overlay_gameplay/frontend/52690.c:4625`, 213 instructions) the guess stood at **10** - exactly the two rows of one double:

    TARGET:  lui at,%hi(D_800AECE0_7F190) ; ldc1 $f24,%lo(D_800AECE0_7F190)(at)   -> 0x800AECE0
    OURS:    lui at,0x800b                ; ldc1 $f24,0x130(at)                    -> 0x800B0130 (the TU pool)

The source wrote `(temp_a0 * 3.14159265358979323846) / 180.0`; the ROM reads `const f64 D_800AECE8_7F198[1] = { 6.2831853070000001 }` and `D_800AECE0_7F190[1] = { 360 }` (mathematically the same conversion - `x*2pi/360` - but two named doubles instead of two literals). Both measure attempts, each after `make extract`:

| variant | score |
|---|---|
| committed guess (literals) | **10** |
| literals replaced by inline `D_800AECE8_7F198[0]` / `D_800AECE0_7F190[0]` reads | **10542** |
| + hoist both into declared `f64` locals before the loop | **1075** |
| + return twoPi/deg360 to the target's registers (assign in the target's order) | **355** |
| (best) committed guess, unchanged | **10** |

The two obstacles, both measured:

1. **The read is inside the loop and a call (`cosf`/`sinf`) sits between uses**, so IDO cannot keep the symbol load hoisted: the inline form reloads the double in every `if` arm and breaks the whole register map (10542). The symbol load must be hoisted into a local *by hand*.
2. **A hoisted `f64` local is charged a phantom 8-byte home each** - the frame goes `0xA0 -> 0xB0` (two locals, +16) with no `sdc1`/`ldc1` ever touching those slots, exactly the phantom-home family. The target keeps both doubles in the already-saved `$f22`/`$f24` with a `0xA0` frame, so its source did not pay for them. The preheader order also flips (`-500.0f`/`500.0f` are materialised *before* the two `ldc1`s in the target, after them in ours).

**Rule.** The declared-symbol substitution is only free when the value is read **once** (or inside a straight-line expression). If the literal sits inside a loop that makes calls, the substitution buys the correct `%lo` address but costs a hoisted local, and the local's phantom home changes the frame: that is a worse trade than the 2-row residual. Check the frame and the callee-saved save set before applying the rule - `%lo`-only residuals in this shape are **rodata-layout batch items**, not solo work.
