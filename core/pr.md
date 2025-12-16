---
allowed-tools: Bash(git:*), Bash(gh:*)
description: Create a pull request with full workflow automation
argument-hint: [optional-title]
---

## Current State

- Branch: !`git branch --show-current`
- Status: !`git status --short`
- Ahead/behind: !`git status -sb | head -1`
- Recent commits on branch: !`git log --oneline main..HEAD 2>/dev/null || git log --oneline -5`

## Task

Create a pull request following these steps:

1. **Verify Changes**
   - Check for uncommitted changes (commit or stash first)
   - Ensure we're not on main/master

2. **Push Branch**
   - Push to origin with upstream tracking if needed

3. **Create PR**
   - Use provided title or generate from commits: $ARGUMENTS
   - Write a clear description with:
     - Summary of changes (2-3 bullet points)
     - Test plan or verification steps
     - Any breaking changes or migration notes

4. **Output**
   - Return the PR URL

**PR Description Format:**
```
## Summary
- [Key change 1]
- [Key change 2]

## Test Plan
- [ ] Manual testing steps
- [ ] Automated tests pass

## Notes
[Any additional context]
```
