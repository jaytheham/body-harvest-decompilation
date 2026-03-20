### UP-counting outer loop: register save order (s1 before ra)

When a nested loop function counts UP (var_s1 = 0; ... var_s1++) and the outer counter uses s1, IDO may save ra before s1 in the prologue - wrong save order.

Root cause: IDO saves registers as first used. If var_s1 = 0 is inside the if body, IDO only encounters s1 after the branch, so ra (first clobbered by jal calls inside the loop) is saved first.

Fix: Move var_s1 = 0 BEFORE the if-check and change the condition to if (var_s1 < D_bound) instead of if (D_bound > 0):

    // WRONG (ra saved before s1):
    if (D_800E6460 > 0) {
        var_s1 = 0;
        do { ... } while (var_s1 < D_800E6460);
    }

    // CORRECT (s1 saved first):
    var_s1 = 0;
    if (var_s1 < D_800E6460) {
        do { ... } while (var_s1 < D_800E6460);
    }

IDO -O2 optimises the if (0 < D_bound) check to blez v0, end (same instruction), while the earlier var_s1 = 0 assignment makes s1 the first live saved register, fixing the prologue save order.
