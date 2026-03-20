### Increment temporary registers via chained assignments

When target is using `t8` for example and current is using `t6`, performing chained variable assignments can "use up" the lower temporary registers so the higher one will be used:
```c
    D_8028AA84 = 0;
    D_8028AA8C = 0;
    D_8028AA80 = 0;
```
changed to ```D_8028AA80 = D_8028AA8C = D_8028AA84 = 0;``` results in the later use of t8 instead of t6.
