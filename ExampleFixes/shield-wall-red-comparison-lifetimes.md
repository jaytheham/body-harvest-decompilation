## Incorrect ASM

Using one short for the red comparison and result gives the compiler the wrong register for the comparison. The second remainder is narrowed before the red comparison has finished narrowing.

## Code changed

Keep the red remainder in a word. Copy it into separate comparison and result shorts. Use the comparison short in the reflection test and in the zero multiplier added to the initial blue comparison value.

## Correct ASM

IDO narrows the red remainder through `a3` and `a0`, shifts the comparison value back through `t9`, and then starts narrowing blue. The red comparison, result copy, and reflection use the target registers.
