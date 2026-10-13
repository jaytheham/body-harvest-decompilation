### Precompute the grandparent pointer before a timer test

In func_802E1C34_325D84, capture the grandparent as an AlienInstance pointer before incrementing the instance timer. Saving only the grandparent byte index lets IDO delay its final multiply and address addition until after the first timer branch, unlike the target.

Use parent->alienIds[2] for the child byte, rather than a raw byte-pointer cast. An explicit instance pointer, byte parent index, and grandparent pointer reproduce the target register allocation and multiply scheduling. Keep the existing int return type from functions.us.h.
