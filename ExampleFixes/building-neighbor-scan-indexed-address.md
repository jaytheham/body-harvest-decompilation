`incorrect ASM`: In `func_8011694C_1258FC`, reusing a named descending building pointer across both orientation cases hoists the last array element into `t5`. The case-0 setup then emits `move a0,t5`.

-> `code changed`: Index `buildingInstances[count]` directly for both directional scans and retain a descending counter.

-> `correct ASM`: Each scan materializes its own initial address with `lui a0,%hi(D_800522A8)` and `addiu a0,a0,%lo(D_800522A8)`, and the loop still decrements its pointer by 0x18 in the generated code.
