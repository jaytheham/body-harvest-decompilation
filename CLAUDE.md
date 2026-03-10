# Body Harvest Decompilation — Project Directives

Working repo for Body Harvest (N64) decompilation.
Branch convention: `reclaim/<zone>-<FILE>` (e.g. `reclaim/java-1ED9E0`)

## Build

```bash
make --jobs                                          # Full build
make build/src.us/overlay_level/<zone>/<file>.c.o  # Single zone
```

Compiler: IDO 5.3 (C89). `SHA1 FAILED` is expected while NON_MATCHING blocks exist.

## Agents

Use these agents for all reclamation work — do not run tools manually.

| Agent | Purpose |
|-------|---------|
| `bh-m2c-scout` | ASM → C translation via m2c, fix patterns applied |
| `bh-wrapper` | NON_MATCHING wrap/strip/verify |
| `bh-asm-diff` | Compile and diff against target ASM |
| `bh-error-fixer` | Fix IDO compile errors |

Skill `bh-reclaim` orchestrates the full cycle.

## Key Docs

- `WORKFLOW.md` — end-to-end reclamation workflow
- `DecompHints.md` — IDO/m2c parameter type rules, regalloc patterns
- `ExampleFixes.md` — worked examples of common decompilation fixes

## Commit Convention

```
reclaim: func_802DXXXX in zone/file [N matched]
fix: describe compilation error fixes
```

Always push to `harvester` remote after each commit.
