---
allowed-tools: Read, Glob, Grep, Bash(git diff:*)
description: Multi-perspective code review with actionable feedback
argument-hint: [file-or-directory]
---

## Target

Review: $ARGUMENTS

If no target specified, review staged changes: !`git diff --cached --name-only`

## Review Dimensions

### 1. Architecture & Design
- Does this follow project patterns?
- Is the abstraction level appropriate?
- Are dependencies well-managed?
- Is there unnecessary coupling?

### 2. Security
- Input validation present?
- SQL injection / XSS / command injection risks?
- Secrets or credentials exposed?
- Authentication/authorization gaps?

### 3. Performance
- N+1 query patterns?
- Unnecessary allocations or copies?
- Missing caching opportunities?
- Algorithmic complexity concerns?

### 4. Maintainability
- Clear naming and structure?
- Appropriate error handling?
- Sufficient (not excessive) documentation?
- Test coverage adequate?

### 5. Correctness
- Edge cases handled?
- Error states managed?
- Race conditions possible?
- Type safety maintained?

## Output Format

For each issue found:
```
[SEVERITY] Category: Brief description
  Location: file:line
  Problem: What's wrong
  Suggestion: How to fix
```

Severities: 🔴 Critical | 🟠 Major | 🟡 Minor | 🔵 Nitpick
