# Shared priority and counter local in a sorted list insertion

`func_800121B4_12DB4` matches with a shared `s16 value` for the node priority and sound ID counter, plus block-local `s16 id` return values.

Load `value = node->unk2` inside the traversal loop immediately before `diff = src->unk2 - value`. IDO hoists the invariant priority load to the loop entry while preserving the target register lifetimes. Loading the priority before the loop instead changes the source pointer from a0 to v1, hoists the previous-node initialization into the struct copy, and shifts other allocations.

In each insertion path, load `value = *counter` before changing the links, then use `node->unk10 = id = ++value` after the links. Finally write `*counter = id` and return `id`. Computing `id = *counter + 1` before the link writes schedules the signed narrowing too early in the middle and head insertion paths. Moving the increment into the chained assignment fixes that scheduling; sharing the priority local fixes the remaining counter allocation.

The saved pool index is preserved around a whole-struct assignment. No empty conditional probes are needed. Verified with the full project build: `build/bh.us.z64: OK` and function diff score 0.
