# Sharing a flags expression across distant sections changes register allocation

Verified in the fully matched `func_801052E8_114298` with IDO 5.3 -O2.
Using direct `type->unk4C` tests only in the early movement section cached flags
in v1 and vehicle height in a0. The target has flags in a0 and height in v1.
This also changed the first jump-helper call's instruction scheduling.

Use the same direct field expression in the later terrain and steering sections.
Removing the later `flags = type->unk4C` assignments and testing the field itself
extends the shared expression's allocation span. The measured flags priority
changes from 12/7 = 1.714286 to 17/14 = 1.214286, below the height cache's
4/3 = 1.333333. Height then receives v1 before flags receives a0.

A shared named flags local also fixes the early registers, but changes stack
allocation: it removes a word spill-pool entry belonging to the field cache.
Keeping the shared value as a field expression retains that entry, even though
the emitted early field reloads already satisfy the calls. With compact local
declarations and inline trig calls, CFE reserves 68 bytes; the first optimizer
word slot is -72 and the later double slot is -96. In the 0x90 frame these
become the target sp+0x48 argument spill and sp+0x30 double spill. The cosine
halfword occupies sp+0x50.

The final source needs no explicit trig locals or unused flags/padding local.
Its useful word-sized alignment local precedes the halfword angle, preserving
the existing coordinate and angle homes. Explicit s16 truncation on alignment
updates preserves the original sign-extension instructions.

The official full ROM build reports `build/bh.us.z64: OK`; all ROM bytes match.
