### Spec pointer computed before condition check: `blez` vs `blezl` and delay-slot scheduling

**Pattern**: A function loads a struct element (e.g. `buildingType`) to compute a secondary pointer (e.g. `BuildingSpec *spec`) and the target assembly schedules:
1. `lbu tN, offset(v0)` – load the index
2. `lb  tM, 0xF(v0)` – load the signed condition field (hitPoints / health)
3. Load base address of secondary array
4. `sll tK, tN, stride` – shift for pointer multiply
5. `blez tM, epilogue` – non-likely branch on condition
6. `addu v1, tK, base` – **delay slot**: complete the secondary pointer

If your C code checks the condition first (before referencing the secondary pointer), the compiler emits `blezl` (branch-likely) with `lw $ra` in the delay slot instead of the clean `blez` + pointer-in-delay-slot.

**Fix**: Declare `BuildingSpec *spec = &buildingSpecs[inst->buildingType]` **before** the condition check. The compiler will eagerly compute `spec` and schedule it in the `blez` delay slot.

```c
// CORRECT
BuildingInstance *inst = &buildingInstances[arg0];
BuildingSpec *spec = &buildingSpecs[inst->buildingType]; // declared before check
if ((s8)inst->hitPoints <= 0) return;                    // → blez with spec pointer in delay slot

// WRONG
BuildingInstance *inst = &buildingInstances[arg0];
if ((s8)inst->hitPoints <= 0) return;                    // → blezl with lw ra in delay slot
BuildingSpec *spec = &buildingSpecs[inst->buildingType]; // too late
```

### Frame size: named pointer phantoms

With `inst` (spilled around a call) + `spec` (register-only, phantom) declared,
the frame stays at the correct size (e.g. 0x38) and `inst` lands at the correct
stack slot (e.g. sp+0x2C).

Adding extra named `u32` locals (e.g. `unk8`, `flags`) inflates the frame by 8
bytes per pair (0x38 → 0x40) even if they are kept entirely in registers.

**Fix**: Remove named temporaries for pre/post-call bit-manipulation values.
Let the compiler CSE the repeated `inst->unk8 >> 12` expressions and inline the
final XOR directly:

```c
inst->hitPoints = 1;
inst->unk8 = (((inst->unk8 >> 12 | 0x10) ^ (inst->unk8 >> 12)) << 12) ^ inst->unk8;
```

IDO hoists the single `lw v1, 8(v0)` load, stores hitPoints, then reuses v1 for
all three `inst->unk8` occurrences — producing the exact XOR sequence in the target.
