---
allowed-tools: Read, Edit, Bash(git log:*)
description: Add changelog entry maintaining consistent format
argument-hint: <version> [description]
---

## Changelog Update

Version: $ARGUMENTS

### Gather Changes

Since last release:
!`git log --oneline $(git describe --tags --abbrev=0 2>/dev/null || echo HEAD~20)..HEAD 2>/dev/null || git log --oneline -20`

### Changelog Format (Keep a Changelog)

```markdown
# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [X.Y.Z] - YYYY-MM-DD

### Added
- New features

### Changed
- Changes in existing functionality

### Deprecated
- Soon-to-be removed features

### Removed
- Removed features

### Fixed
- Bug fixes

### Security
- Vulnerability fixes
```

### Categories

Map commits to categories:
- `feat:` → Added
- `fix:` → Fixed
- `docs:` → Changed (if user-facing)
- `refactor:` → Changed
- `perf:` → Changed
- `security:` → Security
- `deprecate:` → Deprecated
- `remove:` → Removed

### Output

1. Read existing `CHANGELOG.md`
2. Add new version section after `[Unreleased]`
3. Categorize commits appropriately
4. Use past tense, user-focused language
5. Include issue/PR references where applicable
