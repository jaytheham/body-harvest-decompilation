# A `#ifdef NON_MATCHING` body with no `CURRENT(n)` marker is unmeasured - sweep it

## Symptom

An area feels "dry": every near-copy pair is a refinement, every low-marker body is a
recorded park. But `grep -c '#ifdef NON_MATCHING'` over the area still shows many wrapped
bodies, and a large fraction of them carry **no** `// CURRENT(n)` comment at all.

## Why it matters

The `CURRENT(n)` marker is a *record* of the best score reached so far, written by whoever
last worked the function. A body that has **never been worked** has no marker - and therefore
has never been measured, and may never have been compiled at all. It is not "hard"; it is
simply uncounted, and it is invisible to any ranking that sorts by marker.

A body with no marker can be **byte-exact**: the only change it needs is deleting the
`#ifdef NON_MATCHING` guard.

## The procedure

Sweep the unmeasured tier before declaring a tier exhausted:

```bash
BH_TREE_WSL=/home/builder/<tree> python3 <skill>/scripts/sweep_wrapped_bodies.py \
    --cap 600 --limit 70 src.us/overlay_gameplay/<area> [more areas]
```

It unwraps each body, runs the ordinary `check`, and restores the file from git after every
probe. ~12 s per candidate on a warm build; ~40-70 candidates fit one run. Results stream to
`~/sweep_all_out.txt` and a hit prints `*** HIT score 0: <func>` inline. Order is by function
name, so `--start N` resumes.

## Worked instance

`func_8007FBD0_167C90` (`overlay_gameplay/inside/167C90.c`, "reset all camera state"): a 38
instruction function of pure global stores plus one `jal`. It carried **no marker**, so the
marker census never listed it. A 70-candidate sweep returned `check` **0** on the unwrapped
body - the entire fix was removing the guard.

## Prove the 0 before committing

The guard-removal path is exactly where a phantom `0` can appear, so:

1. `rm build/<rel>.c.o` and rebuild (`check`'s own make only rebuilds when the `.c` mtime moved).
2. `check` must print `MATCHED (score 0)` with **no** "still wrapped" warning, and
   `nm build/<rel>.c.o` must show `T <func>`.
3. `gate` must print `build/bh.us.z64: OK`.
4. **Control:** change one literal in the body, rebuild, and confirm the ROM sha1 moves
   (`build/bh.us.z64: FAILED`). A body that is genuinely byte-exact fails the gate the moment a
   value changes; a stale object would not.
