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
    java/                  Java-specific level events (not yet split)
    siberia/               Siberia-specific level events (not yet split)
    america/               America-specific level events (not yet split)
    comet/                 Comet-specific level events (not yet split)
```

### What Overlays Are

Body Harvest uses a segmented memory model. The `overlay_gameplay` code loads over
a fixed memory region when gameplay is active. The `overlay_level` segments contain
per-zone code that loads for each world area. `core/` is always resident.

Function addresses encode their overlay: suffixed functions like `func_8007C7E0_1648A0`
belong to overlay address `0x1648A0`. Unsuffixed functions live in core.

### Where Things Are Declared

- **Structs and types**: `include/` — check `types.h`, `bh_types.h`, and subdirectories
- **Function declarations**: `include/functions.h` (or per-file headers)
- **Symbol addresses**: `symbol_addrs.us.txt` — canonical addresses for named symbols
- **Linker definitions**: `undefined_syms.us.txt` — symbols that resolve across overlays

---

## Subsystem Groups

The contaminated files (those with `NON_MATCHING` functions) are grouped by subsystem
for parallel work assignment. Claim at the file level using `CLAIMED.md`.

### AI — Entity Behaviour and NPC Logic
Alien animation state machines, group command propagation, pathfinding, attack
modulation, damage state, flight/height transitions.

| File | Functions | NON_MATCHING |
|------|-----------|--------------|
| overlay_gameplay/outside/884C0.c | 14 | 19 |
| overlay_gameplay/outside/B2CB0.c | 8 | 10 |
| overlay_gameplay/outside/B8290.c | 9 | 5 |

### UI/Frontend — Menus, HUD, Cutscenes
File select, mission screens, score display, cheats, pause menu, HUD rendering,
animation sequencing, player cutscenes, debug camera.

| File | Functions | NON_MATCHING |
|------|-----------|--------------|
| overlay_gameplay/frontend/40720.c | 87+ | 18 |
| overlay_gameplay/inside/173B60.c | 20 | 4 |
| overlay_gameplay/outside/13DA70.c | 10 | 5 |
| overlay_gameplay/outside/AAA70.c | 27 | 9 |
| overlay_gameplay/outside/cheats.c | 25 | 1 |
| overlay_gameplay/outside/F6A50.c | 3 | 2 |
| overlay_gameplay/outside/F9230.c | 23 | 6 |
| overlay_gameplay/outside/missions.c | 19 | 3 |

### World — Environment, Buildings, Map, Triggers
Camera systems, map rendering, building projection, outdoor collision grid, tree
animation, alien pathfinding grid, triggers, world event scheduling, audio integration.

| File | Functions | NON_MATCHING |
|------|-----------|--------------|
| overlay_gameplay/frontend/52690.c | 107+ | 15 |
| overlay_gameplay/inside/158330.c | 65+ | 12 |
| overlay_gameplay/inside/1648A0.c | 27 | 8 |
| overlay_gameplay/inside/167C90.c | 34 | 8 |
| overlay_gameplay/outside/1416E0.c | 70+ | 12 |
| overlay_gameplay/outside/857E0.c | 28 | 11 |
| overlay_gameplay/outside/A49A0.c | 56+ | 13 |
| overlay_gameplay/outside/BF9C0.c | 10 | 10 |
| overlay_gameplay/outside/buildings.c | 11 | 11 |
| overlay_gameplay/outside/trigger.c | 16 | 6 |

### Core/Engine — Low-Level Systems and Math
Boot, rumble pak, controller I/O, save/load, random numbers, gameplay initialisation,
rendering dispatch, vector math library (cross product, dot product, normalisation).

| File | Functions | NON_MATCHING |
|------|-----------|--------------|
| core/1000.c | 43 | 11 |
| overlay_gameplay/outside/7F220.c | 25 | 7 |
| overlay_gameplay/inside/16AF30.c | 92+ | 19 |
| overlay_gameplay/outside/CFE30.c | 28 | 28 |

### Level — Per-Zone Event Logic
Zone-specific event handlers, building destruction sequences, cutscene triggers,
story-critical callbacks.

| File | Functions | NON_MATCHING |
|------|-----------|--------------|
| overlay_level/greece/18D7E0.c | 9 | 3 |

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

- Build must pass before a PR is opened: `make --jobs` must complete without errors
- Every reclaimed function must be byte-identical to the ROM (asm-differ shows clean diff)
- `NON_MATCHING` annotation must be removed when a function is confirmed matching
- Commit messages: imperative mood, lowercase, reference the function name
- Pre-function AI-generated comments should be reviewed and corrected or removed —
  they may be inaccurate

---

*See `WORKFLOW.md` for the end-to-end reclamation process.*
*See `CLAIMED.md` for current ownership status.*
