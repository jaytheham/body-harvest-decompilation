# Indexed bounds checks and three-byte object copies

`func_800747A8_83758` matched using one signed index for both the parse loop and weighted selection. Parse with `while (peek() != 0x87)`, store the weight in `weights[index]`, and pass `&objects[index++].opcode` to the object parser. IDO reduces both indexed arrays to pointer walks and spills the initial index before the first call.

Use `if (index >= 16)` for the scratch overflow check. IDO strength-reduces it to `sltu` against the scratch end pointer. Writing an explicit comparison against `&objects[16]` produced the same loop instructions but initialized the two array pointers in the wrong order (score 450). The integer comparison recovered the exact setup.

For weighted selection, `index = -1; while (randomValue >= 0) randomValue -= weights[++index];` generates the target preincrement and branch-likely tail. Direct assignment of a three-byte `MissionCommand` struct produces the target byte copy using `$at` for bytes zero and two. Index the destination by the global count and increment that count afterward, allowing IDO to keep the count write in the epilogue. Full ROM OK verified.
