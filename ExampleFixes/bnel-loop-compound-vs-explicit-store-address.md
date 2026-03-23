### bnel-loop compound-assignment vs explicit: store address vs register ordering

When a loop body does: **jal**, then **reload global**, then **modify and store global**, two
 competing issues arise with `D_Global &= ~bit` vs the two-step explicit form.

#### Compound `D_Global &= ~bit` (score ~210 non-matching)
- IDO correctly schedules `nor t0,s1,zero` *before* `lw t9,0(s2)` (latency hiding)
- Correct register allocation: t9=reload, t0=~bit, t1=AND result, tail t2/t3/t4/t5
- BUT: generates `lui at,0x8016; sw t1,0x1e8(at)` for the store (fresh address, NOT s2)
- Extra `lui at` instruction inserted between `nor t0` and `and t1` (scheduler fills latency)

#### Explicit two-step `bit = D_Global & ~bit; D_Global = bit` (score ~70)
- IDO evaluates LW first → `lw t0,0(s2)`, then `nor t9,s1,zero` (registers SWAPPED)
- After jal, compiler recycles v0 (return register) for intermediate → `and v0,t9,t0`
- v0 assigned as AND result shifts tail registers: t1/t2/t3/t4 instead of t2/t3/t4/t5
- BUT: store correctly uses `sw v0,0(s2)` (no `lui at`)

#### Root cause
The compound `&=` causes IDO to schedule `~bit` early (latency hiding for upcoming lw), giving
t0=nor, t9=lw, t1=AND. But the store generates a *fresh* address (`lui at; sw imm(at)`) because
IDO's UOPT doesn't propagate "s2 is cached address" through the compound assignment operator.

The explicit form `D_Global = D_Global & ~bit` or two-step forces IDO to see the *same* s2
register was just used for the RHS load, so it uses `0(s2)` for the store. But left-to-right
RHS evaluation gives lw→t0 (not t9) and the assignment triggers v0 recycling.

#### For-loop fixes prologue ordering
`for (i = 2; i != 0xB; i++)` correctly orders `addiu s2,s2,lo(D_Global)` before `li s0,2`
in the prologue (do-while orders them backwards).

#### Status
No known C construct satisfies both: (1) `nor t0` before `lw t9` AND (2) `sw 0(s2)`.
Mark `NON_MATCHING` with the compound form (`D_Global &= ~bit`) as it is cleaner C and
has the correct register allocation — only the store address optimization differs.
