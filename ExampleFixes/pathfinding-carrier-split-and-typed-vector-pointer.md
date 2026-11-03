incorrect ASM: Reusing one word for the initial route index, X distance, height, and heading created a phantom global t0 reservation. UGEN removed t0 before its first temporary allocation, shifting the initializer ring and delaying the alien-type address calculation.
-> code changed: Reuse the existing X/Z words for distance, retain a separate scalar height word, and use the existing absolute-value word for the initial route index and shifted X input. Give the old-pitch short and late path-node short independent carriers.
-> correct ASM: The first 146 instructions match exactly, and the joint pointer and unsigned yaw occupy a2 and a3 respectively.

incorrect ASM: Direct scalar normalization updates colored products in f0/f2 and the scale in f12, or generated scratch products and redundant vector reloads.
-> code changed: Use a typed pointer to a local Vec3f for the normalization inputs and ordinary vector scaling/projection. Use the z/y/x fields in that order to preserve the target descending component homes; replace the obsolete named alien pointer with direct alienInstances access to preserve the frame.
-> correct ASM: The 120.0f scale occupies f0; normalized loads and in-place products occupy f2/f12; all float instructions, projection conversions, and effect calls match. The first 271 instructions are exact.
