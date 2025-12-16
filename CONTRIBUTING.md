# Contributing to Claude Commands

Thank you for your interest in contributing! This document provides guidelines for adding new slash commands to the collection.

## Getting Started

1. Fork the repository
2. Clone your fork locally
3. Create a feature branch: `git checkout -b feat/add-command-name`

## Adding a New Command

### File Location

Place your command in the appropriate category directory:

| Directory | Purpose |
|-----------|---------|
| `core/` | Essential daily workflow commands |
| `dev/` | Development and coding tasks |
| `project/` | Project management |
| `quality/` | Testing, security, accessibility |
| `docs/` | Documentation generation |
| `advanced/` | Power user and specialized tools |

### Command Structure

Every command file should include:

```markdown
---
description: One-line description shown in autocomplete
argument-hint: <required-arg> [optional-arg]
allowed-tools: Read, Bash(git:*)
---

## Task Description

Clear explanation of what this command does.

### Steps

1. Step one
2. Step two

### Usage Examples

```bash
# With only the required argument
/your-command arg1

# With both required and optional arguments
/your-command arg1 arg2
```

### Output

Describe expected output format.
```

### Using Arguments

Your command body can reference user-provided arguments:

| Variable | Description |
|----------|-------------|
| `$ARGUMENTS` | Full argument string as provided |
| `$1`, `$2`, etc. | Individual positional arguments |

Example usage in your command:
```markdown
Analyze file: $1
With options: $2
Full input was: $ARGUMENTS
```

### Frontmatter Fields

| Field | Required | Description |
|-------|----------|-------------|
| `description` | Yes | Brief description for help/autocomplete |
| `argument-hint` | If args used | Shows usage pattern in autocomplete, e.g. `<file> [options]` |
| `allowed-tools` | Recommended | Restrict tools for safety |
| `model` | No | Specific model override |

### Best Practices

1. **Single Responsibility**: One command = one task
2. **Clear Naming**: Command name should indicate purpose
3. **Safe Defaults**: Restrict tools when possible
4. **Universal**: Should work across different project types
5. **Documented**: Include usage examples in the command

### Tool Restrictions

When specifying `allowed-tools`, use patterns:

```yaml
# Specific commands only
allowed-tools: Bash(git status:*), Bash(git diff:*)

# All git commands
allowed-tools: Bash(git:*)

# Multiple tool types
allowed-tools: Read, Write, Edit, Bash(npm:*)
```

## Testing Your Command

1. Install locally (replace `<category>` and `your-command`): `mkdir -p "$HOME/.claude/commands" && ln -sf "$(pwd)/<category>/your-command.md" "$HOME/.claude/commands/"`
2. Test in Claude Code: `/your-command`
3. Verify it works as expected
4. Test edge cases

## Submitting a PR

1. Ensure your command follows the guidelines above
2. **Important**: Update [README.md](README.md#commands) to add your command to the appropriate table (and add the category if new)
3. Commit with conventional format: `feat: add command-name command`
4. Push and create a PR
5. Describe what the command does and why it's useful

## Code of Conduct

- Be respectful and constructive
- Focus on improving the collection
- Welcome feedback on your contributions

## Questions?

Open an issue for discussion before starting large contributions.
