---
allowed-tools: Bash(git status:*), Bash(git diff:*), Bash(git add:*), Bash(git commit:*)
description: Create a conventional commit with smart message generation
argument-hint: [optional-message]
---

## Current State

- Status: !`git status --short`
- Staged: !`git diff --cached --stat`
- Recent commits: !`git log --oneline -5`

## Task

Analyze the staged changes (or all changes if nothing staged) and create a conventional commit.

**Commit Format:**
- `feat:` - New feature
- `fix:` - Bug fix
- `docs:` - Documentation only
- `style:` - Formatting, no code change
- `refactor:` - Code restructuring
- `perf:` - Performance improvement
- `test:` - Adding/updating tests
- `chore:` - Maintenance tasks

If a message hint is provided: $ARGUMENTS

**Rules:**
1. Keep subject line under 72 characters
2. Use imperative mood ("Add feature" not "Added feature")
3. Focus on WHY, not just WHAT
4. If changes are unrelated, suggest splitting into multiple commits
