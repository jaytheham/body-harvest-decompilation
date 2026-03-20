#### Converting do-while to for loops

When m2c generates a simple counter-based do-while loop that increments a variable until it reaches a limit, converting it to a for loop often matches perfectly:

**m2c output (do-while):**

```c
var_s0 = 2;
do {
    if (func(var_s0) != 0) {
        // body
    }
    var_s0 += 1;
} while (var_s0 != 0xB);
```

**Matching C (for loop):**

```c
for (i = 2; i < 11; i++) {
    if (func(i) != 0) {
        // body
    }
}
```

- Replace `var_s0 = start; ... var_s0 += 1; ... while (var_s0 != limit)` with `for (i = start; i < limit; i++)`
- Use `<` instead of `!=` for the loop condition (mathematically equivalent for incrementing loops)
