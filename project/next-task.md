---
allowed-tools: Read, Bash(git:*), Bash(gh:*)
description: Get the next prioritized task and set up for work
---

## Next Task

### 1. Check Current State

**Git status:**
!`git status --short`

**Current branch:**
!`git branch --show-current`

### 2. Find Next Task

Check sources in priority order:

1. **Assigned GitHub Issues**
   !`gh issue list --assignee=@me --state=open --limit=5 2>/dev/null`

2. **Project TODO.md**
   Look for highest priority uncompleted task

3. **Recent PR comments needing attention**
   !`gh pr list --author=@me --state=open --limit=3 2>/dev/null`

### 3. Set Up for Work

Once task is identified:

1. **Create feature branch** (if not exists)
   ```bash
   git checkout -b <type>/<issue-id>-<short-description>
   ```

2. **Load context**
   - Read related files
   - Understand acceptance criteria
   - Identify test requirements

3. **Output**
   - Task summary
   - Files likely to change
   - Suggested approach
   - First step to take

### Ready to Start

Confirm understanding and begin implementation.
