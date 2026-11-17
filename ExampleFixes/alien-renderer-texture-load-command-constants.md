incorrect ASM (`func_8007C044_8AFF4`): The initial texture load emitted `0x0707F400` instead of `0x071FF200`. Three load-tile commands emitted `0xF5080000` instead of `0xF5080040`; IDO incorrectly shared that word with the later tile resets and repeatedly rematerialized `0xFD08000F`.

-> code changed: Set the initial `gDPLoadBlock` to 511 texels with DXT 512, matching the later loads. Set TMEM to `0x40` in the three `gDPSetTile` calls immediately before `gDPLoadSync`; retain TMEM zero in the reset calls after `gDPTileSync`.

-> correct ASM: Every load-block word is `0x071FF200`; load-tile words are `0xF5080040` and reset words are `0xF5080000`. The loop retains the target tile descriptor and texture-image opcode. The completed function has diff score zero and the native US ROM checksum is OK.
