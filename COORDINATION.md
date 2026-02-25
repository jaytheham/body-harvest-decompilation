# Body Harvest Decompilation Coordination Guide

This document provides guidelines for coordinating decompilation work between multiple agents/users working on the Body Harvest N64 decompilation project in parallel.

## Overview

When multiple agents work on the same decompilation project simultaneously, coordination is essential to avoid conflicts, duplicate work, and ensure efficient progress. This guide outlines best practices for collaborative decompilation.

## Communication Channels

### Git-Based Coordination
- Use git branches for experimental work
- Create feature branches for significant function decompilation efforts
- Regularly sync with the main branch to avoid divergence
- Use descriptive commit messages indicating which functions were worked on

### Issue Tracking
- Use GitHub issues to claim functions or areas of work
- Tag issues with labels like "claimed", "in-progress", "needs-review"
- Comment on issues when starting work on a function
- Close issues when functions are successfully matched

## Work Assignment Strategy

### Function Claiming Process
1. Browse `asm/nonmatchings/` to identify functions to work on
2. Check if the function is already claimed by searching GitHub issues
3. Create a new GitHub issue to claim the function if it's not already claimed
4. Include the function name and estimated complexity in the issue
5. Assign the issue to yourself

### Prioritization Guidelines
1. **High Priority**: Core functions that other functions depend on
2. **Medium Priority**: Medium-sized functions with clear assembly patterns
3. **Low Priority**: Very small or very complex functions that may be time-consuming

### Complexity Assessment
- **Small (10-30 minutes)**: 5-20 lines of C, simple control flow
- **Medium (1-3 hours)**: 20-100 lines, moderate complexity
- **Large (3+ hours)**: 100+ lines, complex control flow or math

## Conflict Resolution

### Git Conflicts
- Pull the latest changes before starting work each day
- If merge conflicts occur, communicate with other contributors
- When in doubt, defer to the contributor who started work first

### Technical Disagreements
- Use GitHub PR reviews for discussing implementation approaches
- Respect the project maintainer's final decision on implementation
- Focus on achieving matching assembly rather than personal coding preferences

## Branching Strategy

### Main Branch
- `main` - Stable branch with matching functions only
- Should always build successfully

### Feature Branches
- Use descriptive names: `decomp/func_800XXXXX` or `feature/function-name`
- Keep branches focused on specific goals
- Delete branches after merging

### Experimentation
- For experimental approaches, use temporary branches
- Prefix with `experiment/` to indicate temporary nature

## Code Review Process

### Before Submitting PRs
1. Ensure the build succeeds completely (`build/bh.us.z64: OK`)
2. Verify no unintended changes to other functions
3. Check that all new symbols are properly declared
4. Confirm adherence to code style guidelines

### PR Requirements
- One function per PR for easier review
- Include diff output showing matching assembly
- Reference the GitHub issue that tracks this function
- Request review from project maintainers

## Synchronization Practices

### Daily Sync
- Pull latest changes each morning
- Check for any new guidelines or updates to AGENTS.md
- Review recently merged PRs to learn from others' approaches

### Weekly Sync
- Review overall project progress
- Identify any blocking issues
- Plan upcoming work based on dependencies

## Shared Resources

### Documentation Updates
- Update `DecompHints.md` with new patterns discovered
- Add to `ExampleFixes.md` for common solutions
- Keep `AGENTS.md` updated with new workflows

### Tool Configuration
- Share effective permuter configurations
- Document useful diff settings
- Exchange tips for specific tool usage

## Emergency Procedures

### Build Failures
1. Immediately notify other contributors
2. Identify the commit that caused the failure
3. Work together to resolve the issue quickly

### Major Conflicts
1. Communicate immediately via GitHub or Discord
2. Temporarily pause work on conflicting areas
3. Coordinate to resolve conflicts systematically

## Best Practices

### Communication
- Over-communicate rather than under-communicate
- Share discoveries that might help other contributors
- Ask for help when stuck on difficult functions

### Efficiency
- Focus on functions in the same source file to minimize context switching
- Group related functions together when possible
- Share insights about similar assembly patterns

### Quality
- Never sacrifice matching status for code cleanliness
- Take time to understand why changes are needed
- Document unusual approaches in comments

## Contact Information

For urgent coordination needs, contact the project owner (@jaytheham) on Discord.