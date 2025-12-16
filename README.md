# Claude Code Slash Commands

A curated collection of production-ready slash commands for [Claude Code](https://claude.ai/code).

## Overview

This repository contains **25 canonical slash commands** organized into categories for maximum productivity with Claude Code. Each command is designed to be:

- **Focused**: Single responsibility
- **Reusable**: Works across projects
- **Safe**: Appropriate tool restrictions
- **Well-documented**: Clear usage instructions

## Installation

### Quick Install (Personal Commands)

```bash
# Clone the repo
git clone https://github.com/yourusername/claude-commands.git ~/.claude-commands

# Run the installer
~/.claude-commands/install.sh
```

### Manual Install

```bash
# Create commands directory if needed
mkdir -p ~/.claude/commands

# Symlink all commands
ln -sf ~/.claude-commands/core/* ~/.claude/commands/
ln -sf ~/.claude-commands/dev/* ~/.claude/commands/
ln -sf ~/.claude-commands/project/* ~/.claude/commands/
ln -sf ~/.claude-commands/quality/* ~/.claude/commands/
ln -sf ~/.claude-commands/docs/* ~/.claude/commands/
ln -sf ~/.claude-commands/advanced/* ~/.claude/commands/
```

### Project-Specific Install

Copy commands to your project's `.claude/commands/` directory:

```bash
cp -r ~/.claude-commands/core .claude/commands/
```

## Commands

### Core (Essential)

| Command | Description |
|---------|-------------|
| `/commit` | Smart git commits with conventional format |
| `/pr` | Full PR workflow automation |
| `/fix-issue <n>` | Analyze and fix GitHub issues |
| `/code-review` | Multi-perspective code review |
| `/checkpoint` | Save/restore git checkpoints |

### Development

| Command | Description |
|---------|-------------|
| `/tdd` | Test-driven development cycle |
| `/refactor` | Intelligent code refactoring |
| `/debug` | Systematic debugging with RCA |
| `/explain` | Explain code in simple terms |
| `/optimize` | Performance analysis |

### Project Management

| Command | Description |
|---------|-------------|
| `/prime` | Load project context |
| `/todo` | Quick task management |
| `/standup` | Generate standup notes |
| `/task-breakdown` | Break features into tasks |
| `/next-task` | Get next prioritized task |

### Quality & Security

| Command | Description |
|---------|-------------|
| `/security-scan` | OWASP vulnerability scan |
| `/deps-audit` | Dependency security audit |
| `/validate` | Run all quality checks |
| `/accessibility` | WCAG accessibility audit |

### Documentation

| Command | Description |
|---------|-------------|
| `/docs` | Generate documentation |
| `/changelog` | Update changelog |
| `/pr-review` | Review pull requests |

### Advanced

| Command | Description |
|---------|-------------|
| `/research` | Deep parallel research |
| `/spec` | Generate specifications |
| `/dump` | Export conversation |

## Usage Examples

```bash
# Start a session with context
claude
> /prime

# Fix a GitHub issue
> /fix-issue 123

# Create a conventional commit
> /commit

# Review your changes
> /code-review src/auth/

# Create a PR
> /pr "Add user authentication"
```

## Customization

### Adding Your Own Commands

Create a markdown file in `~/.claude/commands/`:

```markdown
---
description: My custom command
argument-hint: <required-arg> [optional-arg]
allowed-tools: Read, Write, Edit
---

Your prompt template here with $ARGUMENTS or $1, $2, etc.
```

### Command Frontmatter Options

| Field | Description |
|-------|-------------|
| `description` | Shown in help/autocomplete |
| `argument-hint` | Usage hint for arguments |
| `allowed-tools` | Restrict available tools |
| `model` | Specific model for command |

## Directory Structure

```
claude-commands/
├── README.md
├── install.sh
├── core/           # Essential daily commands
├── dev/            # Development workflow
├── project/        # Project management
├── quality/        # Quality & security
├── docs/           # Documentation tools
└── advanced/       # Power user commands
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Add your command with proper documentation
4. Submit a PR

### Command Guidelines

- One purpose per command
- Include `description` frontmatter
- Restrict `allowed-tools` when possible
- Test across different project types
- Follow existing formatting conventions

## Credits

Inspired by and incorporating ideas from:
- [wshobson/commands](https://github.com/wshobson/commands)
- [hesreallyhim/awesome-claude-code](https://github.com/hesreallyhim/awesome-claude-code)
- [qdhenry/Claude-Command-Suite](https://github.com/qdhenry/Claude-Command-Suite)
- [carlrannaberg/claudekit](https://github.com/carlrannaberg/claudekit)
- [Anthropic Claude Code Best Practices](https://www.anthropic.com/engineering/claude-code-best-practices)

## License

MIT License - See [LICENSE](LICENSE) for details.
