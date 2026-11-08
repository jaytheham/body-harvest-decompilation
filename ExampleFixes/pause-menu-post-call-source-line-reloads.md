## incorrect ASM

In `func_8008CF2C_174FEC`, separate source lines for a callback and the following state read placed display-list address rematerialization before that read:

```mips
lui     ra,0x8006
lui     v0,0x8010
addiu   ra,ra,-0x44d4
b       language_join
lh      v0,-0x356e(v0)
```

->

## code changed

Keep the callback and its immediately following state read on the same source line:

```c
func_8001A54C_Menu((u8 *)D_800A428C_18C34C[slotValue], slotValue); fade = D_800FCA92_Lang0;
```

Apply the same grouping to the other language cases and to navigation sound calls followed by stick reloads. This fixes those instruction schedules only; the complete function remains unmatched.

->

## correct ASM

```mips
lui     ra,0x8006
lui     v0,0x8010
lh      v0,-0x356e(v0)
b       language_join
addiu   ra,ra,-0x44d4
```

The navigation reload likewise precedes the final `addiu ra,ra,-0x44d4`, as in the target.
