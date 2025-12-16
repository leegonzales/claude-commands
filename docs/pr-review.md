---
allowed-tools: Bash(gh:*), Bash(git:*), Read, Grep
description: Review pull request with actionable feedback
argument-hint: <pr-number>
---

## PR Review: #$ARGUMENTS

### Fetch PR Information

```bash
gh pr view $ARGUMENTS
gh pr diff $ARGUMENTS
gh pr checks $ARGUMENTS
```

### Review Checklist

#### Code Quality
- [ ] Code follows project style guidelines
- [ ] No unnecessary complexity
- [ ] Appropriate error handling
- [ ] No hardcoded values that should be configurable

#### Functionality
- [ ] Implements requirements correctly
- [ ] Edge cases handled
- [ ] No regressions to existing functionality

#### Testing
- [ ] New tests for new functionality
- [ ] Tests are meaningful (not just coverage)
- [ ] All tests pass

#### Security
- [ ] No secrets committed
- [ ] Input validation present
- [ ] No injection vulnerabilities

#### Documentation
- [ ] Code comments where needed
- [ ] README updated if applicable
- [ ] API docs updated if applicable

#### Performance
- [ ] No obvious performance issues
- [ ] No N+1 queries
- [ ] Appropriate caching

### Review Output

```markdown
## PR #$ARGUMENTS Review

### Summary
[1-2 sentence summary of what this PR does]

### Approval Status
🟢 Approve / 🟡 Request Changes / 🔴 Block

### Feedback

#### Must Fix
- [ ] [Critical issue that blocks merge]

#### Should Fix
- [ ] [Important issue, but not blocking]

#### Consider
- [ ] [Suggestions for improvement]

#### Praise
- [What was done well]

### Testing Verification
- [ ] Tested locally
- [ ] CI passes
- [ ] Verified [specific functionality]
```

### Post Review

If changes requested:
```bash
gh pr review $ARGUMENTS --request-changes --body "..."
```

If approved:
```bash
gh pr review $ARGUMENTS --approve --body "..."
```
