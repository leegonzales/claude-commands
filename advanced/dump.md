---
allowed-tools: Write, Bash(date:*)
description: Export conversation to timestamped markdown for reference
argument-hint: [filename-hint]
---

## Conversation Dump

### Purpose

Save the current conversation for:
- Handoff to another developer
- Future reference
- Documentation of decisions
- Debugging complex issues

### Output Location

```
.claude/sessions/[YYYY-MM-DD]-[hint-or-timestamp].md
```

### Format

```markdown
# Claude Code Session - [Date]

## Context
- Project: [Project name from pwd]
- Branch: [Current git branch]
- Started: [Session start time if known]

## Summary
[Brief summary of what was accomplished]

## Key Decisions
- [Decision 1 and rationale]
- [Decision 2 and rationale]

## Files Modified
- `path/to/file1.ts` - [What changed]
- `path/to/file2.py` - [What changed]

## Conversation Highlights

### Topic 1
[Relevant exchange]

### Topic 2
[Relevant exchange]

## Next Steps
- [ ] Follow-up task 1
- [ ] Follow-up task 2

## Commands Used
- [Useful commands that were run]

## Links & References
- [Relevant URLs]
- [Documentation links]
```

### Usage

```
/dump                     # Auto-named with timestamp
/dump feature-auth        # Named dump for auth feature
/dump debug-memory-leak   # Named dump for debugging session
```

### Notes

- Dumps are gitignored by default (add to `.gitignore`: `.claude/sessions/`)
- Useful for long/complex sessions
- Can be shared with team for context transfer
