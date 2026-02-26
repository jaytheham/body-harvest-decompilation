# Body Harvest Decompilation Tasks

This file tracks ongoing and upcoming tasks for the Body Harvest decompilation project. Tasks are organized by priority and category to help contributors find suitable work.

## High Priority Tasks

These tasks are critical for project progress and should be tackled first.

### Core System Functions
- [ ] Decompile memory management functions
- [ ] Decompile controller input handling functions
- [ ] Decompile save/load system functions
- [ ] Decompile graphics initialization functions
- [ ] Decompile audio system functions

### Foundation Functions
- [ ] Decompile math utility functions (sin/cos, vector operations)
- [ ] Decompile string handling functions
- [ ] Decompile file I/O functions
- [ ] Decompile random number generation functions

## Medium Priority Tasks

These tasks are important but not blocking other work.

### Gameplay Functions
- [ ] Decompile player movement functions
- [ ] Decompile enemy AI functions
- [ ] Decompile collision detection functions
- [ ] Decompile physics simulation functions
- [ ] Decompile weapon/item system functions

### UI/System Functions
- [ ] Decompile menu system functions
- [ ] Decompile HUD rendering functions
- [ ] Decompile text rendering functions
- [ ] Decompile camera system functions

## Low Priority Tasks

These tasks can be worked on when higher priority tasks are blocked or complete.

### Miscellaneous Functions
- [ ] Decompile debug/logging functions
- [ ] Decompile cheat system functions
- [ ] Decompile demo playback functions
- [ ] Decompile configuration functions

## Tooling and Infrastructure Tasks

Tasks related to improving the development environment and tools.

### Build System Improvements
- [ ] Improve Docker build performance
- [ ] Add automated testing for decompiled functions
- [ ] Create better progress tracking scripts
- [ ] Optimize Makefile for faster incremental builds

### Development Tools
- [ ] Create function dependency analyzer
- [ ] Build symbol cross-reference tool
- [ ] Develop pattern matching helper tool
- [ ] Create decompilation template generator

## Documentation Tasks

Tasks related to improving project documentation.

### Guides and Tutorials
- [ ] Create beginner's guide to N64 decompilation
- [ ] Document common IDO 5.3 optimization patterns
- [ ] Write guide for using mips_to_c effectively
- [ ] Create tutorial for using decomp-permuter

### Reference Materials
- [ ] Expand DecompHints.md with new patterns
- [ ] Document struct layouts and relationships
- [ ] Create function call graph documentation
- [ ] Build glossary of project-specific terms

## Research Tasks

Investigative tasks that require analysis and experimentation.

### Reverse Engineering
- [ ] Analyze custom compression formats
- [ ] Document proprietary data structures
- [ ] Reverse engineer custom file formats
- [ ] Identify and document engine subsystems

### Pattern Analysis
- [ ] Study register allocation patterns in matched functions
- [ ] Analyze control flow transformation patterns
- [ ] Document struct access optimization techniques
- [ ] Research IDO 5.3 code generation quirks

## Completed Tasks

Tasks that have been successfully completed.

### January 2026
- [x] Set up Docker development environment
- [x] Configure asm-differ for function comparison
- [x] Create initial AGENTS.md documentation
- [x] Establish coordination guidelines

### February 2026
- [x] Create FUNCTION_ASSIGNMENT.md tracking system
- [x] Set up automated progress reporting
- [x] Document decompilation workflow
- [x] Create this TASKS.md file

## Task Status Legend

- `[ ]` - Not started
- `[-]` - In progress
- `[?]` - Blocked/paused
- `[x]` - Completed

## Contributing to Tasks

1. **Finding a Task**: Look for unassigned tasks that match your skill level and interests
2. **Claiming a Task**: Comment on the relevant GitHub issue or coordinate with team members
3. **Working on a Task**: Create a feature branch and make regular commits
4. **Completing a Task**: Submit a pull request and update this file when merged

## Task Prioritization Guidelines

### Priority Levels
1. **Critical**: Blocks other work or is required for project stability
2. **High**: Important for near-term goals or frequently used functions
3. **Medium**: Useful enhancements or moderately important functions
4. **Low**: Nice-to-have improvements or rarely used functions

### Factors for Prioritization
- Number of functions that depend on this work
- Frequency of use in the final game
- Difficulty/estimated time to complete
- Availability of reference material or documentation
- Impact on overall project progress percentage

## Task Size Estimation

### Small Tasks (1-2 hours)
- Single function decompilation (under 20 lines)
- Simple documentation updates
- Minor tool configuration changes

### Medium Tasks (1-4 days)
- Multiple related function decompilations
- Tool development with clear specifications
- Documentation section creation

### Large Tasks (1-2 weeks)
- Complex subsystem decompilation
- Major tool development projects
- Comprehensive documentation overhauls

## Task Dependencies

Some tasks cannot be started until others are completed. Dependencies are noted in task descriptions when applicable.

## Review Process

All completed tasks should go through a review process:
1. Self-review by the contributor
2. Peer review by another contributor
3. Final approval by project maintainers

## Task Maintenance

This task list should be updated regularly:
- Move completed tasks to the "Completed Tasks" section
- Add new tasks as they are identified
- Update priorities based on project needs
- Remove obsolete tasks

Last Updated: February 25, 2026