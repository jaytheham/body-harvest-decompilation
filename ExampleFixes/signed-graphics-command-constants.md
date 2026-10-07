### Signed graphics command constants: renderer investigation

In `func_800D978C_E873C`, the usual display-list and pop-matrix macros caused IDO to hoist graphics opcodes into saved registers. The target instead keeps the viewing-angle constant 0x4000 in FP and rematerializes graphics opcodes inside the loop.

Writing the loop opcodes through signed word lvalues (`0x06000000` and `-0x43000000`) stopped the unwanted commoning with the unsigned macro constants in the prelude. The pop command must write its zero parameter before its opcode. A named `s32` linked-entry index also restored the visibility call's argument-store order.

These changes produced a structural match, but the function still has register differences (current diff score 270) and has not passed full ROM verification. Declaration-order variants did not resolve those remaining registers. Do not treat this as a complete function match.
