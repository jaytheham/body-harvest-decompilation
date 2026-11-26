`incorrect ASM` The endpoint green and blue halfword loads precede the zero texture-coordinate stores. At ROM 0x1071F4 the target materializes the third triangle word with `li t8,0x402`, while the C reconstruction materializes it in the following packet setup.

-> `code changed` Capture each endpoint color in the corresponding first vertex color store. Narrow the direction-Z product directly from signed word to halfword. Keep the two middle palette channels live in the existing discarded test of the raw sine and cosine products.

-> `correct ASM` Each endpoint color load follows its vertex-pointer load and immediately precedes its byte store. The triangle word is loaded at 0x1071F4. The enabled draft keeps the exact 0x138 frame and function size, and its linked diff score falls from 7658 to 6973. Other spill and packet scheduling differences remain, so the original assembly fallback is retained.
