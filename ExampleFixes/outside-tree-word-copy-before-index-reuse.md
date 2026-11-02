incorrect ASM (`func_8007764C_865FC`, streaming loops):

```asm
lb      v1,2(s1)
sll     v0,v1,24
sra     t7,v0,24
```

-> code changed:

```c
s32 value;
s32 group;

value = obj->unk2;
group = value;
group = (s8)group;
value = i;
if (group == -1) {
    continue;
}
if (group == 4 || group == 9 || group == 14 || group == 19 || group == 24) {
    func_80076868_85818(value);
} else {
    obj->unk2++;
}
```

-> correct ASM:

```asm
lb      v0,2(s1)
sll     v1,v0,24
sra     t7,v1,24
```

The word copy keeps the old byte value when its source is reused for the loop index. The index copy coalesces with the existing saved index register; it emits no move. Updating the field directly preserves the original byte-load value for the increment. All four streaming loops now match, while the function remains guarded for its graphics suffix differences. Reusing `group` for the renderer row cache avoids linking that row cache to the index carrier.
