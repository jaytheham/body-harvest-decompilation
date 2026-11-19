`incorrect ASM`: In `func_800F1134_1000E4`, passing the sine conversion inline in the radial effect update produced a 0x90-byte frame and changed the temporary register sequence after `jal sins`.

-> `code changed`: Calculate the cosine and sine offsets in separate signed halfword locals before passing the summed coordinates to the update. Declare the ring Y value before the cosine offset to place the cosine spill at `sp+0x76`.

-> `correct ASM`: The frame is 0x88 bytes. The cosine halfword stores at `sp+0x76` in the sine call's delay slot and reloads from the same slot afterward. The sine feeds `addu a2,s2,t5`; the target function matches byte for byte.
