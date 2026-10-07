# Parameter type is part of the statement shape

Solved with `func_802D95F8_31D748` (comet `318E20.c`), whose matched twin is `func_802D5CA8_2553E8`
(america `254410.c`). The two are level-overlay copies of the same alien-type callback, and their
compiled code is identical except for two constants:

    target  func_802D95F8_31D748     donor  func_802D5CA8_2553E8
    addiu   $a1, $zero, 0x1FB        addiu  $a1, $zero, 0x130
    jal     func_8008735C_9630C      jal    func_8008064C_8F5FC

Everything else, all 24 instructions, is byte-identical. The donor was already matched, so its C was
the answer - and the previous attempt at the target did **not** match, even though it had the right
constants and the right calls. The difference was the parameter type.

The previous guess:

    void func_802D95F8_31D748(s32 arg0) {
        u8 saved_index;

        alienInstances[arg0 & 0xFF].unk20 &= ~ALIEN_FLAG_UNK5;
        saved_index = arg0 & 0xFF;
        func_80137468_146418(arg0 & 0xFF, 0x1FB);
        func_8008735C_9630C(saved_index);
    }

An `s32` parameter with explicit `& 0xFF` masking recomputes the mask at each use. A `u8` parameter
does something else entirely - it masks **once** and gives the byte its own stack home:

    andi  $a2, $a0, 0xFF          ; the single mask IDO inserts for a u8 parameter
    sw    $a0, 0x18($sp)          ; the incoming argument still gets spilled
    sb    $a2, 0x1B($sp)          ; the masked byte's own stack home
    lbu   $a0, 0x1B($sp)          ; and re-read for the second call

The matched form is therefore the donor's shape verbatim, with the target's two constants:

    void func_802D95F8_31D748(u8 arg0) {
        alienInstances[arg0].unk20 &= ~ALIEN_FLAG_UNK5;
        func_80137468_146418(arg0, 0x1FB);
        func_8008735C_9630C(arg0);
    }

Two rules follow.

**The parameter type is part of the statement shape.** When copying a twin, take its parameter types
as well as its statements - a type difference is not cosmetic, it changes the mask, the stack home and
the reload. A guess with explicit `& 0xFF` masking is the tell that someone typed the parameter too
wide and then compensated in the body.

**The prototype has to agree, and the neighbouring declarations are a hint.** `318E20.h` declared
`s32 arg0`, so the `u8` definition would not compile until the header was corrected; every other
declaration around it in the same header was already `u8 arg0`. A header edit also moves codegen in
every caller, so it is worth looking at the declarations already there before inventing a type.

Found with the chunk-level matcher, which reported 75% `lift` (coverage from matched functions) with
an 18-instruction identical run against this donor - the highest-lift small target on the board.

## Second instance: the same lever, and no header to move

`func_8009C4F8_AB4A8` (`AAA70.c`) was wrapped at `CURRENT(1737)`, its guess already in its twin's
statement shape but declaring `(s32 arg0, s32 arg1)` where the matched twin `func_8009BDB8_AAD68`
(same file, a 72-instruction identical run) declares `(u8 arg0, u8 arg1)`. The target's own `.s` masks
both arguments - `andi $t6,$a0,0xFF` and `andi $t7,$a1,0xFF` - identical to the twin's opening, which is
the evidence that the guess's types were wrong rather than unlucky. Changing the definition alone took
the score from **1737 to 1224**, a 30% cut, committed as an `imp`. This overlay has no `AAA70.h`, so no
prototype had to move.

The remaining two deltas were the target's own computed arguments (`(D_80068088 - 0x24) * 4` where the
twin writes the literal `0xA0`). Those are deliberate, not shape errors - a delta list cannot know
that, and reporting them is still correct.

**Read the twin's parameter types before anything else.** They are the cheapest lever available, and a
guess that types a parameter wide and then compensates inside the body is the signature of the mistake.
