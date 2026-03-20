### Final return 0/1 branch direction: if (var_v1 != -1) vs if (var_v1 == -1)

When a function returns 0 or 1 based on whether a "scan result" variable equals -1,
IDO uses **branch-over** style: it generates a branch for the FALSE condition to skip
the if-body. So the C condition direction determines the generated branch instruction:

| C code | Generated branch | Notes |
|--------|-----------------|-------|
| `if (var_v1 != -1) { return 1; } return 0;` | `beq v1, at` | Branch when NOT (!=) = branch when equal |
| `if (var_v1 == -1) { return 0; } return 1;` | `bne v1, at` | Branch when NOT (==) = branch when not-equal |

Target assembly pattern `beq v1, at, ep; move v0, zero; b ep; li v0, 1` maps to:
`c
if (var_v1 != -1) {
    return 1;
}
return 0;
`

The `move v0, zero` in the beq delay slot covers the taken path (var_v1 == -1 → return 0).
The `li v0, 1` in the b delay slot covers the not-taken path (var_v1 != -1 → return 1).
