incorrect ASM: Cached heading/status words changed the geometry helper argument registers, delayed the status-byte load until after a joint store, and shifted subsequent temporaries.
-> code changed: Store heading-helper returns directly in the joint fields and read the status byte directly, following the already matched adjacent fall/jump handler. Keep the outer ground conditional and its first assignments on one physical source line.
-> correct ASM: All ground joint setup and status instructions match, including the speculative type/path reload order; the first 502 instructions are exact.

incorrect ASM: The clamp used unsigned value v0, signed comparison v1, and pointer a0, while the target used signed v0 and unsigned v1.
-> code changed: Read the signed halfword view in a discarded condition before the ordinary signed clamp; use the unsigned field directly for the final joint copy.
-> correct ASM: Every clamp instruction and register matches.

incorrect ASM: The final level selector occupied v1 and its node pointer occupied v0.
-> code changed: Capture currentLevel in the existing unused word and apply a compound multiply by one before the comparisons; form the typed node pointer through a signed-word address view.
-> correct ASM: The selector occupies v0, the node pointer v1, and the next node a0. The first 601 instructions match; six register differences remain in the alternate-child lookup, so the function remains NON_MATCHING.
