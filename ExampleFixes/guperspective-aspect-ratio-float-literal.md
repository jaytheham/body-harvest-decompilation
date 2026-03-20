### `guPerspective` aspect ratio: use float literal, not hex integer

The aspect ratio constant `1.3333334f` (= 4/3) as a hex bit pattern is `0x3FAAAAAB`. Pass it as a float literal, NOT as an integer literal:
```c
guPerspective(mtx, &perspNorm, fovy, 1.3333334f, near, far, scale);  // CORRECT
guPerspective(mtx, &perspNorm, fovy, 0x3FAAAAAB, near, far, scale);  // WRONG (integer conversion)
```
The integer `0x3FAAAAAB` gets implicitly cast to `float` (≈1.07e9), producing `0x4E7EAAAB` in registers instead of `0x3FAAAAAB`.
