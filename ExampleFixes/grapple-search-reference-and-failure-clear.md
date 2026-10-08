# Grapple search reference and failure clearing

`func_800FC1CC_10B17C` caches D_80052B20 for initializing the grapple points, but its distance comparisons use D_80052B34. Using the cached vehicle for both tasks gave plausible logic with substantially different global pointer caching and register allocation.

When no nearby target exists, clearing D_80158F8C belongs after the cooldown conditional, so it also executes during the cooldown. Moving this write outside the conditional reproduces the target branch-likely store and gives IDO the correct long-lived global pointer.

Use one s16 post-decrement counter for both searches and inline the index byte in vehicleInstances[D_80158E80[i]]. These changes produced an exact function match and passing whole-ROM checksum.
