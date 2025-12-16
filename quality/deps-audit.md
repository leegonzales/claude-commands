---
allowed-tools: Bash, Read, Glob
description: Dependency security and freshness audit
---

## Dependency Audit

### 1. Identify Package Manager

Check for:
- `package.json` → npm/yarn/pnpm
- `requirements.txt` / `pyproject.toml` → pip/poetry
- `Cargo.toml` → cargo
- `go.mod` → go
- `Gemfile` → bundler

### 2. Security Vulnerabilities

**Node.js:**
```bash
npm audit --json 2>/dev/null || yarn audit --json 2>/dev/null
```

**Python:**
```bash
pip-audit 2>/dev/null || safety check 2>/dev/null
```

**Rust:**
```bash
cargo audit 2>/dev/null
```

**Go:**
```bash
govulncheck ./... 2>/dev/null
```

### 3. Outdated Dependencies

**Node.js:**
```bash
npm outdated 2>/dev/null
```

**Python:**
```bash
pip list --outdated 2>/dev/null
```

**Rust:**
```bash
cargo outdated 2>/dev/null
```

### 4. License Compliance

Check for incompatible licenses:
- GPL in MIT/Apache projects
- Proprietary dependencies
- License conflicts

### Output

```markdown
## Dependency Audit Results

### Security Vulnerabilities
| Package | Severity | CVE | Fix Version |
|---------|----------|-----|-------------|
| xxx     | High     | CVE-... | x.y.z  |

### Outdated Packages
| Package | Current | Latest | Breaking? |
|---------|---------|--------|-----------|
| xxx     | 1.0.0   | 2.0.0  | Yes       |

### License Issues
- [Package]: [License] - [Concern]

### Recommendations
1. [Priority updates]
2. [Security patches]
3. [Technical debt items]
```
