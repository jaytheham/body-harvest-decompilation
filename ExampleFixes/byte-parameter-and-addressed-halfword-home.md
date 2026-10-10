# Byte parameters and a distinct cached halfword home

These observations are verified against sections of `func_802DDFF0_2C0420`, which is still unmatched as a whole.

## Do not infer a word parameter solely from the argument spill

The target begins with `sw a0,0xC0(sp)` followed by `lbu t6,0xC3(sp)`. A native `u8 arg0` parameter reproduces this sequence when the joint traversal has sufficient register pressure. The same parameter in a simpler body can instead produce `andi` at entry. The spill width alone does not establish the source parameter type.

Replacing a word parameter and `((u8 *)&arg0)[3]` accesses with `u8 arg0` removed redundant index loads and an entire repeated alien-address calculation in the tested body. It also reproduced the ordinary `bltz` guard, saved-register scheduling, and the initial joint traversal. Verify this in the complete translation unit: isolated compilation previously hid the effect.

## Prevent a cached halfword from merging with an earlier temporary

A root joint is copied from an initial traversal temporary into an `s16` cache used by two later calls. IDO can merge those value webs, choose the temporary's home, and spill a widened call argument with an extra `sw` before the first call. The target instead loads the cached halfword independently for each call.

In the test, taking the cache's address with `(void)&spBC;` keeps its distinct memory home without emitting an address computation. This removes the extra word spill and restores the target argument-load scheduling. This is a diagnostic observation, not yet a finalized source idiom: seek an appropriate source expression that naturally requires that home, and confirm the full match before retaining it.

## Score only the selected function from a full build

With this version of objdump, `-drz --disassemble=<function>` still prints earlier relocations from the entire text section. Feeding that output directly to the permuter produced misleading scores. The experimental harness now exports only the selected function and substitutes its bytes from the ROM produced by `tools/make.ps1`, with relocation output removed. The reference bytes come from the instruction words in the read-only target assembly. This preserves full-translation-unit code generation and the actual linked comparison.
