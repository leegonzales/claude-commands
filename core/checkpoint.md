---
allowed-tools: Bash(git:*)
description: Create or restore git checkpoints for safe experimentation
argument-hint: <create|restore|list> [message-or-number]
---

## Command: $ARGUMENTS

### checkpoint create [message]
Save current state before risky changes:
```bash
git stash push -m "checkpoint: [message or timestamp]"
git stash apply
```

### checkpoint restore [n]
Restore to a previous checkpoint:
```bash
# List checkpoints first
git stash list | grep "checkpoint:"
# Restore specific one (n = stash number)
git stash pop stash@{n}
```

### checkpoint list
Show all saved checkpoints:
```bash
git stash list | grep "checkpoint:"
```

## Safety Notes
- Always create a checkpoint before major refactors
- Checkpoints are local only (not pushed)
- Use descriptive messages for easy identification
- Clean up old checkpoints periodically: `git stash drop stash@{n}`
