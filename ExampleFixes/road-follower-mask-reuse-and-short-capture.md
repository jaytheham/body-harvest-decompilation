`lbu $a3, table($a3)` with no original-flags spill, and reused mask temporaries at the wrong stack slots -> reuse the selected-direction byte for the initial table flags, then overwrite it from the separate candidate byte after applying tile flips; keep one final padding word rather than two -> `lbu $t1, table($t1)`, `sw $t1, 0x3c($sp)` in the unflipped branch, and candidate/selected word caches at `0x40`/`0x3c`.

Missing `sb $a2, 0x6b($sp)` before the random junction query -> retain an empty `if (moveMask) {}` in that query's fallback branch -> the candidate byte is spilled alongside its promoted word cache, without an additional reload.

First tile extraction starts with `$t3` instead of `$t2`, followed by wrong temporary registers in the bit updates -> capture tile metadata in `u16 tileWord` rather than the signed steering-angle short; use `moveMask |= 8`, `|= 2`, and `|= 1` rather than explicit assignment expressions masked with `0xff` -> the first 515 instructions match, including the original temporary-register sequence.

A shared `li $v1, 1` and late coordinate shifts/loads -> compare the stored direction byte against `1U`, and assign `unk44` before assigning the two grid-coordinate bytes -> separate `li $at, 1` comparisons and the exact coordinate load/store scheduling, reducing the residual to two instructions.

`sra $t2, $s0, 16` before `sra $t5, $a0, 16` -> sequence the first signed angle capture inside the condition: `if ((steerDelta = angleDelta(heading, vehicleHeading), -angleDelta(heading, vehicleHeading) < steerDelta))` -> `sra $t5, $a0, 16` precedes `sra $t2, $s0, 16`; zero function diff and full US ROM checksum OK.
