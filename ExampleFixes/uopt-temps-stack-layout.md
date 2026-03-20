#### uopt temps:

uopt creates temporary stack slots at the bottom of the stack, below cfe's temps. It seems to create temps for these kinds of expressions (non-exhaustive):

- indirect loads, including global variable accesses
- loop variable expressions (`i * 4`, `array[i]`, etc)
- floating point sometimes

Unlike cfe, uopt temps can store any type.

Often, stack problems involve moving a uopt temp into a specific stack offset, such as before a local variable's offset. This requires making enough user temps to free up one of the temp slots.
