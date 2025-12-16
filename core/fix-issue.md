---
allowed-tools: Bash(gh:*), Bash(git:*), Read, Glob, Grep, Edit, Write
description: Analyze and fix a GitHub issue end-to-end
argument-hint: <issue-number>
---

## Task

Fix GitHub issue #$ARGUMENTS following this structured approach:

### Phase 1: Understanding
1. Fetch issue details: `gh issue view $ARGUMENTS`
2. Read linked files or error traces mentioned
3. Understand the root cause before coding

### Phase 2: Planning
1. Identify files that need modification
2. Consider test coverage requirements
3. Check for related issues or PRs

### Phase 3: Implementation
1. Create a feature branch: `fix/$ARGUMENTS-<short-description>`
2. Make minimal, focused changes
3. Add or update tests as needed
4. Ensure existing tests pass

### Phase 4: Verification
1. Run the test suite
2. Manual verification if applicable
3. Check for regressions

### Phase 5: Documentation
1. Update relevant docs if behavior changes
2. Add inline comments for complex logic

**Output:** Summary of changes made and verification results.
