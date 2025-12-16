---
allowed-tools: Bash, Read, Glob
description: Run all quality checks - lint, types, tests
---

## Validate All

Run comprehensive quality checks for the project.

### 1. Detect Project Type

Check for config files to determine tooling:
- TypeScript: `tsconfig.json`
- Python: `pyproject.toml`, `setup.py`
- Go: `go.mod`
- Rust: `Cargo.toml`
- Ruby: `Gemfile`

### 2. Run Checks (in order)

#### Formatting
```bash
# JS/TS
npx prettier --check . 2>/dev/null

# Python
black --check . 2>/dev/null || ruff format --check . 2>/dev/null

# Go
gofmt -l . 2>/dev/null

# Rust
cargo fmt --check 2>/dev/null
```

#### Linting
```bash
# JS/TS
npx eslint . 2>/dev/null

# Python
ruff check . 2>/dev/null || flake8 . 2>/dev/null

# Go
golangci-lint run 2>/dev/null

# Rust
cargo clippy 2>/dev/null
```

#### Type Checking
```bash
# TypeScript
npx tsc --noEmit 2>/dev/null

# Python
mypy . 2>/dev/null || pyright 2>/dev/null

# Go (built-in)
go vet ./... 2>/dev/null
```

#### Tests
```bash
# JS/TS
npm test 2>/dev/null || yarn test 2>/dev/null

# Python
pytest 2>/dev/null

# Go
go test ./... 2>/dev/null

# Rust
cargo test 2>/dev/null
```

### 3. Output

```markdown
## Validation Results

| Check      | Status | Issues |
|------------|--------|--------|
| Format     | ✅/❌   | N      |
| Lint       | ✅/❌   | N      |
| Types      | ✅/❌   | N      |
| Tests      | ✅/❌   | N      |

### Issues Found
[List of specific issues to fix]

### Commands to Fix
[Auto-fix commands where available]
```
