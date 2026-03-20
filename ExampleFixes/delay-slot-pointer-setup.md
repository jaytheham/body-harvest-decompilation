### Delay-slot pointer setup

For patterns like:

- compare index against sentinel
- branch delay slot does `addu baseReg, baseReg, index`
- then `lbu` from that pointer
- then increment/store index

use an explicit pointer plus temp byte value in C:
