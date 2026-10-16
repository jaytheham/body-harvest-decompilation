`func_802E0234_324384`: initial X/Z differences used `s1/v1` instead of `v1/a0`; after separating the coordinate lifetimes, the instance address and heading/target-X/type-pointer webs used `s1/s0` instead of `s0/s1`.

-> Keep separate `s32` X/Z differences and target coordinates. Replace the cached instance pointer with indexed `alienInstances[arg0]` access. After computing the heading, add `if (alienInstances[arg0].unk0) {}`: this emits no instructions but raises the instance-address web's allocation priority. Set `trigger.unk8` before `trigger.unk0` and `trigger.unk4` to reproduce the trigger setup's temporary-register order.

-> Initial differences use `subu v1,t3,t4; subu a0,t5,t6; mtc1 a0,f6; mtc1 v1,f4`. The instance address remains in `s0`, while the heading, target X, and later type pointer reuse `s1`; the trigger setup uses `t6` for the alien index, `t7` for 2, and `t8/t9` for the timer. Function diff is zero and the US ROM checksum matches.
