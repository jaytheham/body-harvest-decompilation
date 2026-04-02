### Linked list traversal: `bnel` operand order and splitting compound conditions

When decompiling a linked list search function with a `bnel` (branch not equal likely) instruction, both the comparison operand order and the structure of conditions matter for register allocation.

#### Symptom
- Wrong registers in `subu` and `slt` instructions (e.g., `t0` instead of `a0`)
- OR wrong operand order in `bnel` instruction (e.g., `bnel v0,t8` instead of `bnel t8,v0`)

#### Target Pattern
```asm
lhu     t8,0(v1)          # load struct->unk0 (u16)
bnel    t8,v0,label       # if t8 != v0, branch (skip to next node)
lw      v1,0x34(v1)       # [delay slot] advance to next node
lw      t9,0x28(v1)       # load struct->unk28
subu    a0,a1,t9          # subtract using a0 register
slt     at,a0,a2          # compare using a0 register
```

#### Solution

**1. Split compound && condition into nested if statements**

Instead of:
```c
while (node != NULL) {
    if (arg0 == node->unk0 && arg1 - node->unk28 < 0x30D40) {
        return node;
    }
    node = node->unk34;
}
```

Use nested ifs with separate temp variable:
```c
if (node != NULL) {
    do {
        if (arg0 == node->unk0) {
            temp = arg1 - node->unk28;
            if (temp < 0x30D40) {
                return node;
            }
        }
        node = node->unk34;
    } while (node != NULL);
}
```

**2. Swap comparison operands to match bnel order**

The operand order in the C comparison affects the bnel instruction operands:
- `node->unk0 == arg0` → `bnel v0,t8,label` (WRONG)
- `arg0 == node->unk0` → `bnel t8,v0,label` (CORRECT)

**3. Avoid intermediate variables for the parameter**

Don't create a `key` variable from the parameter - use the parameter directly so the a0/v0 registers can be reused.

#### Why This Works

- **Nested ifs**: Separating the conditions creates a natural point for the subtraction temp to be computed and stored in `a0`, which is then reused for `slt`
- **Operand order**: The left operand of == becomes the left operand in bnel, so swapping the comparison swaps the bnel operands
- **do-while with outer NULL check**: Matches the target's branch structure (initial beqz, then do-while with bnel)
- **Direct parameter use**: Avoids extra `move` instructions and keeps arg0 value accessible in the correct register

#### Example: func_80012638_13238

Function searches a linked list for a node matching a u16 key where the time difference is within a threshold.

Fixed by applying all three techniques above.
