### Direct global-array access with an anonymous struct for matching layout

For a function that repeatedly accesses a global struct array, removing the local
pointer can produce the compiler-generated base-address temporary expected by the
target. If a byte result and a halfword local must occupy specific stack offsets,
place them in an anonymous struct; struct members preserve their declared layout.

Keep scalar declarations in the order needed for the remaining spill slots. In
this case, using direct `alienInstances[arg0].field` access, a struct containing
the path byte and node halfword, and declaring the distance local between the
other arithmetic locals matched both the stack offsets and the generated base
temporary.

Finally, source statement order can affect only register coloring even when the
instruction sequence is already correct. Moving the flag update before the other
independent stores in the final branch produced the target temporary-register
assignment without changing control flow.
