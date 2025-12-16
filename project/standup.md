---
allowed-tools: Bash(git log:*), Bash(git diff:*), Bash(gh:*), Read
description: Generate standup notes from recent activity
argument-hint: [days-back]
---

## Standup Report

Days to look back: $ARGUMENTS (default: 1)

### What I Did

!`git log --since="$ARGUMENTS days ago" --author="$(git config user.name)" --oneline 2>/dev/null || git log --oneline -10`

### Detailed Changes

!`git diff --stat HEAD~5 2>/dev/null || echo "No recent changes"`

### Open PRs

!`gh pr list --author=@me --state=open 2>/dev/null || echo "Unable to fetch PRs"`

### Generate Report

Format the standup as:

```markdown
## Standup - [DATE]

### Yesterday
- [Completed work items based on commits]
- [PRs merged or updated]

### Today
- [Inferred next steps from recent work]
- [Open PRs needing attention]

### Blockers
- [Any blocked PRs or failed CI]
- [Dependencies on others]
```

Keep it concise - 3-5 bullet points per section max.
