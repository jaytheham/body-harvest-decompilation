# Contributing to Body Harvest Decompilation

This document covers how the codebase is organised and how to collaborate without
stepping on other contributors' work. It is intended for both human contributors
and AI agents.

---

## Codebase Map

### Directory Structure

```
src.us/
  core/                    Boot, init, OS integration, shared utilities
  overlay_gameplay/
    frontend/              Menus, HUD, file select, mission screens
    inside/                Indoor/interior game logic
    outside/               Outdoor game logic, world systems, AI
  overlay_level/
    greece/                Greece-specific level events
    java/                  Java-specific level events
    siberia/               Siberia-specific level events
    america/               America-specific level events
    comet/                 Comet-specific level events
```

### What Overlays Are

Body Harvest uses a segmented memory model. The `overlay_gameplay` code loads over
a fixed memory region when gameplay is active. The `overlay_level` segments contain
per-level code. `core/` is always resident.

### Where Things Are Declared

- **Structs and types**: `include/`
- **Function declarations**: `include/functions.h`
- **Symbol addresses**: `symbol_addrs.us.txt` — canonical addresses for named symbols
- **Linker definitions**: `undefined_syms.us.txt`

---

## Claiming Work

Work is tracked at the **file level** in `CLAIMED.md`.

**To claim a file:**
1. Open `CLAIMED.md`
2. Find the row for your target file — confirm it is `unclaimed`
3. Set your name/handle in the Contributor column and status to `in-progress`
4. Commit the change to your branch: `git commit -m "claim: <filename>"`

**To release a file** (if you abandon it):
- Set status back to `unclaimed`, clear contributor field, commit.

**To complete a file:**
- Set status to `complete`, commit alongside your reclamation field report.

One contributor per file at a time. If you want to split a large file, coordinate
in the issue tracker or Discord before claiming.

---

## Branch and PR Flow

1. **Create a branch** per work block:
   ```
   git checkout -b reclaim/<filename-without-extension>
   ```
   Example: `reclaim/cheats`, `reclaim/884C0`

2. **Work** — reclaim functions, iterate with asm-differ until clean.

3. **Commit field reports** — one commit per function or logical group:
   ```
   git commit -m "reclaim: func_800734AC_8245C — matching"
   ```

4. **Open a PR** to `master` when the file is fully reclaimed or at a stable
   checkpoint. Include the asm-differ output confirming clean diffs.

5. **Rebase policy** — rebase onto current `master` before requesting review.
   Do not merge `master` into your branch; rebase only.

6. **No force-push to master** — ever.

---

## Standards

- Build must pass before a PR is opened: `make --jobs` must complete without errors and return `build/bh.us.z64: OK`
- Every reclaimed function must be byte-identical to the ROM (asm-differ shows clean diff)
- `NON_MATCHING` annotation must be removed when a function is confirmed matching
- Commit messages: imperative mood, lowercase, reference the function name
- Pre-function AI-generated comments should be reviewed and corrected or removed —
  they may be inaccurate

---

*See `WORKFLOW.md` for the end-to-end reclamation process.*
*See `CLAIMED.md` for current ownership status.*
