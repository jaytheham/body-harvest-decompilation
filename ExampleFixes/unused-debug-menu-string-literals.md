`incorrect ASM`: Dropping the unused debug-menu strings in `A40B0.c` would remove the span beginning at ROM offset `0x151170` and move the compiler-generated tables that follow it.

-> `code changed`: Inline the property labels and format strings where they are used. Put the unused menu strings in the stub as `(void)` string literal expressions in their original order.

-> `correct ASM`: IDO emits the original string bytes in read-only data and keeps the stub instruction sequence unchanged.
