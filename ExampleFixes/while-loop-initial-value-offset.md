### while loop initial value offset

If a while loop begins by adding or subtracting from its counter var, the initial value set in code may be one off from the asm value:
`li      v1,0x29`
becomes:
```c
	i = 0x2A;
	while (i--) {
```
