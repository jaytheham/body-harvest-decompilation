# Body Harvest Decompilation Strategic Plan

This document outlines a strategic approach for systematically decompiling the Body Harvest N64 game. The plan is designed to maximize efficiency while ensuring quality and coordination between multiple contributors.

## Phase 1: Project Setup and Initial Assessment

### 1.1 Environment Setup
- [ ] Obtain and place the US ROM file as `baserom.us.z64`
- [ ] Install required packages from `packages.txt`
- [ ] Install Python dependencies from `requirements.txt`
- [ ] Build Docker image for consistent compilation environment
- [ ] Verify successful extraction with `make extract`

### 1.2 Baseline Assessment
- [ ] Generate initial progress report
- [ ] Identify total number of functions to decompile
- [ ] Categorize functions by complexity and dependencies
- [ ] Establish baseline metrics for tracking progress

## Phase 2: Foundation Functions (Week 1-2)

Focus on core system functions that other code depends on.

### 2.1 Memory and System Functions
Priority targets from `src.us/core/`:
- Controller input handling
- Memory allocation functions
- Basic system initialization
- Save/load system foundations

### 2.2 Math and Utility Functions
- Vector/matrix operations
- Trigonometry functions (sin/cos)
- Random number generation
- String manipulation utilities

Success criteria: 20-30 core functions matched with clean, readable C code.

## Phase 3: Gameplay Systems (Week 3-6)

Decompile the core gameplay functionality in logical subsystems.

### 3.1 Player Systems
- Player movement and controls
- Player state management
- Weapon/vehicle interaction systems

### 3.2 World and Environment
- Level loading and management
- Physics simulation
- Collision detection systems

### 3.3 AI and Enemies
- Basic enemy behavior
- Pathfinding systems
- AI decision making

Success criteria: 100-150 gameplay functions matched with emphasis on readability.

## Phase 4: UI and Presentation (Week 7-8)

Focus on user interface and presentation systems.

### 4.1 Menu Systems
- Main menu navigation
- Options screens
- Save selection interface

### 4.2 HUD and Display
- Health/ammo displays
- Mission objectives
- Minimap systems

### 4.3 Audio Systems
- Sound effect playback
- Music management
- Audio settings

Success criteria: 50-80 UI/presentation functions matched.

## Phase 5: Advanced Features (Week 9-12)

Work on complex systems and polish remaining functions.

### 5.1 Mission and Game Logic
- Mission scripting systems
- Game state management
- Progress tracking

### 5.2 Special Effects
- Particle systems
- Screen effects
- Visual enhancements

### 5.3 Polish and Cleanup
- Remaining unmatched functions
- Code quality improvements
- Documentation updates

Success criteria: All functions matched with 100% accuracy.

## Parallel Work Strategy

### Team Member A (Focus: Core Systems)
- Weeks 1-2: Foundation functions
- Weeks 3-4: Player systems
- Weeks 5-6: World/environment systems
- Weeks 7-8: Mission/game logic
- Weeks 9-12: Polish and remaining tasks

### Team Member B (Focus: Gameplay Features)
- Weeks 1-2: Math/utility functions
- Weeks 3-4: AI/enemy systems
- Weeks 5-6: UI/HUD systems
- Weeks 7-8: Audio systems
- Weeks 9-12: Special effects and remaining tasks

## Coordination Protocols

### Daily Standups
- Brief sync on progress
- Identify blockers
- Share discoveries

### Weekly Reviews
- Assess progress against timeline
- Adjust priorities if needed
- Plan upcoming week's work

### Knowledge Sharing
- Document new patterns in `DecompHints.md`
- Add examples to `ExampleFixes.md`
- Update coordination files regularly

## Quality Assurance Measures

### Code Standards
- All functions must build with `build/bh.us.z64: OK`
- Code must follow style guidelines in `AGENTS.md`
- Comments should explain non-obvious logic

### Review Process
- Each matched function reviewed by other team member
- Focus on readability and maintainability
- Verify assembly matches exactly

### Testing
- Regular full builds to ensure no regressions
- Manual testing of gameplay elements when possible
- Automated validation where feasible

## Risk Mitigation

### Technical Risks
- **Complex functions**: Allocate extra time, collaborate on difficult functions
- **Compiler quirks**: Document patterns, reference `DecompHints.md`
- **Dependencies**: Prioritize foundation functions first

### Coordination Risks
- **Duplicate work**: Use `FUNCTION_ASSIGNMENT.md` to track ownership
- **Conflicts**: Follow branching strategy in `COORDINATION.md`
- **Communication gaps**: Daily syncs and shared documentation

## Success Metrics

### Quantitative Measures
- Percentage of functions matched (target: 100%)
- Lines of matched C code
- Build success rate

### Qualitative Measures
- Code readability and maintainability
- Documentation completeness
- Team collaboration effectiveness

## Tools and Automation

### Development Workflow
1. Select function from `FUNCTION_ASSIGNMENT.md`
2. Generate initial C with `mips_to_c`
3. Clean up and match assembly
4. Run full build verification
5. Submit PR for review
6. Update tracking files

### Scripts to Develop
- Function complexity analyzer
- Progress visualization dashboard
- Pattern detection helpers
- Automated regression testing

## Timeline Summary

| Week | Focus Area | Target Functions | Milestone |
|------|------------|------------------|-----------|
| 1-2 | Foundation | 20-30 | Core systems functional |
| 3-4 | Player/AI | 50-70 | Basic gameplay operational |
| 5-6 | World/UI | 50-70 | Visual systems working |
| 7-8 | Audio/Misc | 30-50 | Complete presentation layer |
| 9-12 | Polish | Remaining | 100% completion |

## Next Steps

1. Complete Phase 1 setup tasks
2. Begin Phase 2 foundation work
3. Update coordination files as work progresses
4. Hold daily sync to track progress

Last Updated: February 25, 2026