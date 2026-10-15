# Overlay clone and twin source changes

## Java handler: callee and constant substitutions

`func_802D7FCC_1F0CDC` matched by copying the C body of the matched Greece handler `func_802D775C_19026C`, changing `jal func_802D763C_19014C` to `func_802D7EAC_1F0BBC`, and replacing `0x49`/`0x48` with `0x4B`/`0x4A` at the three differing sites. The target definition and prototype use the donor's `u8 arg0` type. The result was score 0 and a passing ROM check.

## Cross-overlay effect callback

`func_800C8C7C_D7C2C` matched the frontend donor `func_800891F8_596A8` after these substitutions:

- `func_80083A58_53F08(4)` to `func_800C14D4_D0484(3)`.
- `func_80083B7C_5402C(i)` to `func_800C17B4_D0764(i, 0)`.
- `func_80083B14_53FC4` to `func_800C1384_D0334`.
- `D_800DE840`/`D_800DE130` to `D_80154318`/`D_80154088`.
- `idx == 0xFB` to `idx == -3`.

Replacing `sfx = &D_80154088[effect]; sfx->unk2 = arg3;` with the donor's direct indexed store retained the target address in `$at` for `sh $t2,%lo(D_8015408A)($at)` and hoisted the four halfword argument reloads ahead of the shift chain. Score 0 and ROM verification passed.

## Alien death handlers: direct fields and overlay-specific guards

Java `func_802DBF34_1F4C44` matched by copying Greece `func_802D8898_1913A8`. Direct `alienInstances[arg0].field` accesses replaced the named `AlienInstance *alien` and cached flags. The Java body also needed the donor's missing `if (alienInstances[arg0].unk20 & 0x40000000)` guard.

Comet `func_802D9658_31D7A8` matched the same body with two additional calls to `func_80137468_146418`: `(arg0, 0xF)` after the inner `func_800DF848_EE7F8` block before returning, and `(arg0, 0x66)` in the range test's else branch. Both functions reached score 0.

## Same-file rectangle renderer: declaration removal and shift spelling

`func_8009C4F8_AB4A8` matched its `func_8009BDB8_AAD68` twin's source shape. Removing the unused `Gfx *dl` and ten unused word locals restored the target `0x30` frame from `0x60` and argument homes at `0x30/0x34`.

Writing rectangle arguments as `(s32)arg0 * 4` and `(X - k) << 2` restored `addiu; sll` rather than distributing multiplication over the subtraction. It also prevented commoning `arg0 * 4` with `(arg0 + 0xB) * 4`: the target computes XH first and spills the raw parameter at `sp+0`. The resulting 117 instructions matched, score 0 and ROM OK.

## Frontend interpolation: function-scope declarations and byte field

`func_800870AC_5755C` matched using the declaration set and statement order of `func_800C6558_D5508`. Moving typed `EffectInterpolationState *` views and `s16 idx` to function scope in the donor's order restored the target `0x40` frame from `0x60` and the 510-instruction body.

The donor's `Unk80154318Entry.unk14` is a byte, while the target's `Unk800DE840.unk14` is a halfword. Reading offset `0x14` through `entryBytes->bytes[0xC]` instead of the halfword field replaced `lh` with the target `lbu`, closing score 200 to 0. The target retains its own loop guard and `func_80083F8C_5443C(idx, 0x95)` call. ROM verification passed.

## Nested table initializer

`func_8008EDB4_5F264` matched `func_800DFA98_EEA48` after substituting `D_800AA688_7AB38` for `D_8013DF84_14CF34`. Replacing the flattened counter/pointer loop with the donor's nested `for` loops, `arg0[i][j]`, and `table[(i * 3) + j]` restored the target two-loop structure and `sll`/`subu` index sequence. Its parameter is `s8 arg0[][3]`, and the table is declared `extern u8 D_800AA688_7AB38[];`. All 75 instructions matched and ROM verification passed.

## Effect renderer: move the second lookup after setup

In `func_80089764_59C14`, keep `index = D_800DE130[arg0].unk6` before the initial GBI setup, then move `index = D_800DE840[index].unk4` after both the GBI block and the `D_800DE12D = 0x20; D_800DE12E = 0x20;` stores. This places `lh $s1,0x4($t9)` after the final GBI store and interleaves its `multu` into tile-size setup. That statement move took score 2161 to 0, matching all 163 instructions and passing ROM verification.
