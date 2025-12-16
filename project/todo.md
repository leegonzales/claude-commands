---
allowed-tools: Read, Write, Edit
description: Quick task management with priorities and due dates
argument-hint: <add|list|done|remove> [task-details]
---

## Todo: $ARGUMENTS

Manage project tasks in a `TODO.md` file at project root.

### Commands

**add [priority] [task] [due:date]**
```
/todo add P1 Fix login bug due:2024-01-15
/todo add P2 Update documentation
/todo add P3 Refactor utils module
```

**list [filter]**
```
/todo list          # All tasks
/todo list P1       # High priority only
/todo list overdue  # Past due date
```

**done [task-number-or-text]**
```
/todo done 3
/todo done "Fix login"
```

**remove [task-number]**
```
/todo remove 5
```

### TODO.md Format

```markdown
# Project Tasks

## High Priority (P1)
- [ ] Fix login bug (due: 2024-01-15)
- [x] ~~Setup CI pipeline~~ (completed: 2024-01-10)

## Medium Priority (P2)
- [ ] Update documentation
- [ ] Add integration tests

## Low Priority (P3)
- [ ] Refactor utils module
- [ ] Update dependencies
```

### Sorting

Tasks are sorted by:
1. Priority (P1 > P2 > P3)
2. Due date (earliest first)
3. Creation order
