# Float constant stores, conditional values, and data order

These observations come from the still-unmatched
`func_800F1DDC_100D8C` in `FEC70.c`, using IDO 5.3 with the project build.
They describe experiments, not a complete matching solution.

With a float temporary assigned in both branches and stored after the
conditional, IDO uses `$f0` for both literal loads. It emits one shared
store. Moving the store into each branch lets the compiler propagate the
literal into that store; the loads use `$f4` and `$f6`, occur after the
halfword height stores, and shift subsequent floating temporary registers.

A conditional expression assigned directly to the global also emits both
stores with `$f4`/`$f6`. Chaining that expression through the float local,
in either assignment order, restores `$f0` but emits one shared store.
An explicit assignment to the global inside each conditional arm restores
the per-branch stores and again uses `$f4`/`$f6`. A cached Boolean adds
another conditional sequence instead of combining the two decisions.

Named readonly float arrays prevented literal propagation and reproduced
the desired branch loads and stores. However, their data preceded the
compiler-generated switch table, whereas the target float literals follow
it. This changed load addresses despite a much lower instruction diff
score. Such a result is not a match: check literal addresses and the full
ROM checksum before retaining it.

## Empty condition preserves the branch temporary

A later experiment added an empty `if (speed) {}` after the two branches,
with the global speed store inside each branch. IDO removed the empty
condition's comparison and branch, but retained the named float value for
the two initial stores. The literal loads then preceded the height stores,
and each branch retained its own speed store. The instruction count,
constant addresses, and stack layout matched the target.

This form also worked with an empty `if (speed == speed) {}` or
`if ((s32)speed) {}`. An empty comparison against `0.0f` shifted other
floating registers and changed zero-argument setup instead. Declaring the
speed local as `register` did not fix the remaining allocation difference.

The resulting function had only four `$f2` versus `$f0` differences in the
initial speed loads/stores, plus two differently ordered address loads
before the impact call (diff score 40). The project checksum still failed;
this is a matching source pattern for the branch structure, not a complete
function match.


## Reusing a different existing float local fixes the remaining register

For this function, reusing the existing `temp` local (also used for the
terrain height in case 4) for the initial speed, its two stores, and the
empty condition changed those four `$f2` instructions to the target's
`$f0`. Reusing `speed`, the local used for case 1's subtraction, had kept
`$f2` in case 0 despite that same local using `$f0` in case 1. Both forms
had the target stack layout. Moving the declaration of `speed` after the
other float locals instead shrank the frame and did not fix the register.

The retained initialization is:

```c
if (currentLevel == LEVEL_GREECE) {
    temp = 15.9f;
    D_80159DE2 = 0x28F;
    D_80157FE4_Write = temp;
} else {
    temp = 13.7f;
    D_80159DE2 = 0x1F4;
    D_80157FE4_Write = temp;
}
if (temp) {
}
```

The resulting instruction diff score was 20, with only two address-load
instructions in the opposite order before the impact call. The full ROM
checksum still failed. Giving the impact value a named float temporary,
using a local pointer for the speed clear, putting that clear in the first
call argument, and adding a separate zero-write alias did not change those
two instructions. These are observations for further work, not a claim of
a complete match.


A full byte comparison of the retained score-20 build against
`baserom.us.z64` found equal ROM sizes (12,582,912 bytes) and exactly six
different bytes: `0x101475..0x101477` and `0x101479..0x10147B`. They are
entirely within the two swapped `lui` instructions. No other bytes,
including generated readonly data, differed in that build.

Further experiments left the two `lui` instructions unchanged: an array
view of the write alias; an unsuffixed double literal for the impact
argument; an assignment expression for that argument; a separate read
alias with the original symbol used for the zero store; and a named float
zero assigned to the global. Moving the named height read ahead of the
offset clear reordered `lh` and `sh`. Moving it after the speed clear
reordered the call's delay-slot store. An empty condition on the named
impact argument increased the frame instead of solving the scheduling.


Native `int` for the height local or the called function's coordinate
parameters, a separate signed-halfword height local, a De Morgan form of
the range condition, and `D_80159DE2 &= 0` each left the same two swapped
instructions. A volatile declaration on the speed-write alias introduced
additional address setup. An unsuffixed double zero changed other float
registers and the call sequence; it did not reverse those address loads.
All these experiments were reverted to the retained score-20 version.


Negating `speed == 0.0f` instead of using `speed != 0.0f`, a const local
impact value, forwarding a cleared local float into the impact argument,
a tentative definition of the height offset, and struct-member views of
the speed write all left the same two swapped loads. Using a comma
expression as the function designator produced `jalr` and extra address
setup. Reading the cleared globals into call arguments added instructions.
These variants were reverted after comparison with the target.
