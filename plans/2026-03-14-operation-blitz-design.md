# Operation Blitz — Micro-Zone Sweep Design

**Date:** 2026-03-14
**Branch:** `reclaim/blitz-micro-zones`
**PR:** Single — "Operation Blitz: micro-zone sweep (8 zones cleared)"
**Operator:** Harvester

---

## Goal

Clear all zones with ≤10 hostiles to 0% hostile in a single PR. Maximise matched function
count toward Siberian Analyst rank threshold (167 matched; current: 62; gap: 105).

Estimated yield: ~32 functions. Post-blitz matched count: ~94.

---

## Zones In Scope

Priority order — trivial first, builds confidence and early commits before harder zones.

| Zone | Hostiles | Notes |
|------|----------|-------|
| `core/1B060.c` | 1 | Single function — fastest possible win |
| `core/53D0.c` | 2 | Fast pair |
| `gameplay/outside/145D70.c` | 2 | Already 12 bare C; 2 remaining |
| `gameplay/outside/A40B0.c` | 3 | Fast triple |
| `gameplay/outside/F6A50.c` | 4 | 2 NON_MATCHING (C bodies exist — diff first) |
| `core/FB00.c` | 4 | Standard GLOBAL_ASM sweep |
| `gameplay/outside/cheats.c` | 6 | Already 22 bare C; 6 remaining |
| `core/E830.c` | 10 | Slightly above threshold; included for clean cluster |

**Total hostiles: ~32**

---

## Execution Protocol Per Zone

### Phase 1 — Translation (parallel scouts)
- Dispatch `bh-m2c-scout` for all functions in zone simultaneously
- For zones with existing NON_MATCHING blocks: skip translation, go straight to diff

### Phase 2 — Insertion
- `bh-wrapper` WRAP per function
- Read-back verify after every wrap (agent silent-failure mitigation)

### Phase 3 — Verification (parallel)
- ROM byte comparison on all functions in zone simultaneously
- Primary: reloc-aware Python ROM byte comparison
- Secondary: `bh_batch_diff.py` as sanity check only

### Phase 4 — Match/Stubborn branch
**MATCHING:**
- `bh-wrapper` STRIP
- Commit: `reclaim: func_XXXXXXXX in zone/file [MATCHING]`
- Push every 2 matched functions

**NOT MATCHING — full send protocol:**
1. `decomp-permuter` — register allocation search (up to 30 min per function)
2. `coddog match` — structural similarity against existing matched functions
3. Manual ASM analysis — read instruction-by-instruction, identify IDO pattern
4. If still stubborn after all three: wrap in NON_MATCHING, note in sprint YAML,
   zone does NOT clear — document and move on

### Phase 5 — Zone Clear
- All functions matched or exhausted → zone marked clear in sprint YAML
- Verify zone file compiles clean
- Commit: `reclaim: zone-clear zone/file [N/N matched]`

### Phase 6 — Final Verification Before PR
- Full `make --jobs` build
- SHA1 check: `make verify` must output `build/bh.us.z64: OK`
- If SHA1 fails: ROM byte comparison on every bare C function to find the culprit

---

## Commit & Push Cadence

- **Commit:** per function cleared (one commit per MATCHING hostile)
- **Push:** every 2 matched functions
- **Zone-clear commit:** additional commit when zone reaches 0 hostiles
- All commits to `reclaim/blitz-micro-zones` branch

### Commit message format
```
reclaim: func_XXXXXXXX in zone/file [MATCHING]
reclaim: zone-clear core/1B060 [1/1 matched]
```

---

## PR Policy

Single PR — all 8 zones in one sweep.

- Title: `reclaim: Operation Blitz — 8 micro-zones cleared (~32 functions)`
- Body: zone-by-zone breakdown, total matched count, SHA1 verification confirmed
- Requires: `build/bh.us.z64: OK` on CI before opening

---

## Success Criteria

| Criterion | Target |
|-----------|--------|
| Zones fully cleared | 8 / 8 |
| Functions matched | ~32 (max possible) |
| SHA1 | OK |
| CI | PASS |
| Stubborn functions | 0 (ideally) — full send exhausts all options first |
| Matched total post-blitz | ~94 |

---

## Risk Mitigation

| Risk | Mitigation |
|------|------------|
| bh-wrapper silent failure | Read-back verify after every Edit |
| False MATCHING from batch diff | ROM byte comparison is primary — always |
| Stubborn function blocks zone-clear | Full send: permuter → coddog → manual before conceding |
| SHA1 failure before PR | Full build verification gate before opening PR |
| Float constants as hex | Decode all `0xXXXXXXXX` args to float params via `struct.unpack` |

---

*Design approved 2026-03-14. Proceeding to sprint scaffold.*
